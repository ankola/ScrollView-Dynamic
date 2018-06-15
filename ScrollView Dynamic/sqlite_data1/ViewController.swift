
import UIKit

class ViewController: UIViewController {

    
    var arrimg = [#imageLiteral(resourceName: "2"),#imageLiteral(resourceName: "3"),#imageLiteral(resourceName: "0"),#imageLiteral(resourceName: "1")]
    
    @IBOutlet var mainScroll:UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       // self.mainScroll.sizeToFit()
       
        
        // UIButton
        var Xposition = self.view.frame.width/4

        for n in 0...25 {
            
            var yposition = self.view.frame.width/4

            for i in 0...25 {
                
                let btn = UIButton()
                btn.frame = CGRect(x: Xposition, y: yposition, width: self.view.frame.width/2, height: self.view.frame.width/2)
                btn.setBackgroundImage(arrimg[3], for: .normal)
                btn.backgroundColor = UIColor.red
                mainScroll.addSubview(btn)
                yposition = yposition + self.view.frame.width/4 * 3
                mainScroll.contentSize.height = yposition
                print("yposition",yposition)
            }
            
            Xposition = Xposition + self.view.frame.width/4 * 3
            mainScroll.contentSize.width = Xposition
            print("Xposition",Xposition)
        }
        
       
        
        
        // IMageView
//        for i in 0..<arrimg.count {
//            let imageview = UIImageView()
//            imageview.image = arrimg[i]
//            imageview.contentMode = .scaleAspectFit
//
//            var yposition = self.view.frame.height * CGFloat(i)
//           // var xposition = self.view.frame.width * CGFloat(i)
//
//             imageview.frame = CGRect(x: 0, y: Int(yposition), width: Int(self.mainScroll.frame.width), height: Int(self.mainScroll.frame.height))
//
//            mainScroll.contentSize.height = mainScroll.frame.height * CGFloat(i + 1)
//           // mainScroll.contentSize.width = mainScroll.frame.height * CGFloat(i + 1)
//            self.mainScroll.addSubview(imageview)
//        }
    }
}

