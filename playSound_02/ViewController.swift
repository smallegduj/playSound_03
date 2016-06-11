import UIKit
import MediaPlayer

class ViewController: UIViewController {
    
    // 設定變數為MPMoviePlayerController()的函式
    var audioPlayer = MPMoviePlayerController()

    override func viewDidLoad() {
        super.viewDidLoad()
        do {
            // 設定變數儲存音效網路路徑
            let filePath = "https://a64bd602f65d8c0153dd418797f9dc197bc2a865.googledrive.com/host/0B50Vmg6QH_TMdFJTc3JlN0M1RGs"
            // 將音效變數與路徑做關聯
            audioPlayer.contentURL = NSURL(string: filePath)
        } catch {
            print("Error")
        }
        audioPlayer.prepareToPlay()
        
    }
    
    // 按鈕設定
    @IBAction func playButton(sender: AnyObject) {
        audioPlayer.play()
    }

}

