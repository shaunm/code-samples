
import UIKit
import MultipeerConnectivity

class ChatViewController: UIViewController, UITextFieldDelegate, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var txtChat: UITextField!
    @IBOutlet weak var txtLabel: UILabel!

    @IBOutlet weak var tblChat: UITableView!
    
    var messagesArray: [Dictionary<String, String>] = []
    
    let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        tblChat.delegate = self
        tblChat.dataSource = self
        
        tblChat.estimatedRowHeight = 60.0
        tblChat.rowHeight = UITableViewAutomaticDimension
        
        txtChat.delegate = self
    
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "handleMPCReceivedDataWithNotification:", name: "receivedMPCDataNotification", object: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func endChat(sender: AnyObject) {
        let messageDictionary: [String: String] = ["message": "_end_chat_"]
        if appDelegate.mpcManager.sendData(dictionaryWithData: messageDictionary, toPeer: appDelegate.mpcManager.session.connectedPeers[0] ){
            self.dismissViewControllerAnimated(true, completion: { () -> Void in
                self.appDelegate.mpcManager.session.disconnect()
            })
        }
    }
    
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return messagesArray.count
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("idCell")! 
        
        let currentMessage = messagesArray[indexPath.row] as Dictionary<String, String>

        if let sender = currentMessage["sender"] {
            var senderLabelText: String
            var align : UIViewContentMode
            var senderColor: UIColor
          //  var image : UIImage
            
            if sender == "self"{
               senderLabelText = "Me"
              align = UIViewContentMode.Right
                senderColor = UIColor.blueColor()
                //image = UIImage(named: "chat.png")!
            }
            else{
                senderLabelText = sender + " said"
                senderColor = UIColor.grayColor()
                align = UIViewContentMode.Left

               // image = UIImage(named: "chat 3.png")!

            }
           
            cell.detailTextLabel?.text = senderLabelText
            cell.detailTextLabel?.textColor = senderColor

            cell.selectionStyle =  UITableViewCellSelectionStyle.None
        }
        
        if let message = currentMessage["message"] {
            cell.textLabel?.text = message

        }
        
        return cell
    }
    
    
    
    // MARK: UITextFieldDelegate method implementation

    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        let messageDictionary: [String: String] = ["message": textField.text!]
        
        if appDelegate.mpcManager.sendData(dictionaryWithData: messageDictionary, toPeer: appDelegate.mpcManager.session.connectedPeers[0] ){
            
            let dictionary: [String: String] = ["sender": "self", "message": textField.text!]
            messagesArray.append(dictionary)
            
            self.updateTableview()
        }
        else{
            print("Could not send data")
        }
        
        textField.text = ""
        
        return true
    }
    
    
    // MARK: Custom method implementation
    
    func updateTableview(){
        tblChat.reloadData()
        
        if self.tblChat.contentSize.height > self.tblChat.frame.size.height {
            tblChat.scrollToRowAtIndexPath(NSIndexPath(forRow: messagesArray.count - 1, inSection: 0), atScrollPosition: UITableViewScrollPosition.Bottom, animated: true)
        }
    }
    
    
    func handleMPCReceivedDataWithNotification(notification: NSNotification) {

        let receivedDataDictionary = notification.object as! Dictionary<String, AnyObject>
        
        let data = receivedDataDictionary["data"] as? NSData
        let fromPeer = receivedDataDictionary["fromPeer"] as! MCPeerID

        let dataDictionary = NSKeyedUnarchiver.unarchiveObjectWithData(data!) as! Dictionary<String, String>
        

        if let message = dataDictionary["message"] {
            // Make sure that the message is other than "_end_chat_".
            if message != "_end_chat_"{
               
                let messageDictionary: [String: String] = ["sender": fromPeer.displayName, "message": message]
                
                // Add this to the messagesArray array.
                messagesArray.append(messageDictionary)
                
                // Reload and scroll to the bottom using the main thread.
                NSOperationQueue.mainQueue().addOperationWithBlock({ () -> Void in
                    self.updateTableview()
                })
            }
            else{
    
                // Show an alert
                let alert = UIAlertController(title: "", message: "\(fromPeer.displayName) left :( ", preferredStyle: UIAlertControllerStyle.Alert)

                let doneAction: UIAlertAction = UIAlertAction(title: "Okay", style: UIAlertActionStyle.Default) { (alertAction) -> Void in
                    self.appDelegate.mpcManager.session.disconnect()
                    self.dismissViewControllerAnimated(true, completion: nil)
                }
                
                alert.addAction(doneAction)
                
                NSOperationQueue.mainQueue().addOperationWithBlock({ () -> Void in
                    self.presentViewController(alert, animated: true, completion: nil)
                })
            }
        }
    }
}
