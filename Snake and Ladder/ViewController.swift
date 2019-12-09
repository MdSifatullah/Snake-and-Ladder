//
//  ViewController.swift
//  Snake and Ladder
//
//  Created by Md Sifat on 12/8/19.
//  Copyright © 2019 Md Sifat. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Img1: UIImageView!
    
    @IBOutlet weak var Img2: UIImageView!
    @IBOutlet weak var Img3: UIImageView!
    @IBOutlet weak var Img4: UIImageView!
    @IBOutlet weak var Img5: UIImageView!
    @IBOutlet weak var Img6: UIImageView!
    @IBOutlet weak var Img7: UIImageView!
    @IBOutlet weak var Img8: UIImageView!
    @IBOutlet weak var Img9: UIImageView!
    @IBOutlet weak var Img10: UIImageView!
    @IBOutlet weak var Img11: UIImageView!
    @IBOutlet weak var Img12: UIImageView!
    @IBOutlet weak var Img13: UIImageView!
    @IBOutlet weak var Img14: UIImageView!
    @IBOutlet weak var Img15: UIImageView!
    @IBOutlet weak var Img16: UIImageView!
    @IBOutlet weak var Img17: UIImageView!
    @IBOutlet weak var Img18: UIImageView!
    @IBOutlet weak var Img19: UIImageView!
    @IBOutlet weak var Img20: UIImageView!
    @IBOutlet weak var Img21: UIImageView!
    @IBOutlet weak var Img22: UIImageView!
    @IBOutlet weak var Img23: UIImageView!
    @IBOutlet weak var Img24: UIImageView!
    @IBOutlet weak var Img25: UIImageView!
    @IBOutlet weak var Img26: UIImageView!
    @IBOutlet weak var Img27: UIImageView!
    @IBOutlet weak var Img28: UIImageView!
    @IBOutlet weak var Img29: UIImageView!
    @IBOutlet weak var Img30: UIImageView!
    @IBOutlet weak var Img31: UIImageView!
    @IBOutlet weak var Img32: UIImageView!
    @IBOutlet weak var Img33: UIImageView!
    @IBOutlet weak var Img34: UIImageView!
    @IBOutlet weak var Img35: UIImageView!
    @IBOutlet weak var Img36: UIImageView!
    
    
    @IBOutlet weak var PlayerTurn: UILabel!
    @IBOutlet weak var DiceImageView: UIImageView!
    var score = 0
    var rollValue = 0
    var previousScore = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func RollDice(_ sender: UIButton) {
         previousScore = score
        rollValue = Int(arc4random_uniform(6))
       
        print(rollValue)
        
        if rollValue == 1{
            DiceImageView.image = UIImage(named: "1")
        } else if rollValue == 2{
            DiceImageView.image = UIImage(named: "2")
        } else if rollValue == 3{
            DiceImageView.image = UIImage(named: "3")
        } else if rollValue == 4{
            DiceImageView.image = UIImage(named: "4")
        } else if rollValue  == 5{
            DiceImageView.image = UIImage(named: "5")
        } else if rollValue == 0{
            DiceImageView.image = UIImage(named: "6")
        }
        if rollValue == 0{
            rollValue = 6
        }
        
        
      let active = IsAlive()
        if active == true{
           Update()
        }else{
            if rollValue == 1{
                Update()
            }else{
                score = 0
            }
            
        }
         
        
        print("Score: \(score)")
        print("Previous Score: \(previousScore)")
    }
    
    func IsAlive() -> Bool{
        if score > 0{
                return true
        }
        else{
             return false
        }
    }
    
    
    @objc func Update(){
       
        setImage()
            score += rollValue
        //for Snake
        if score == 8{
            score = 3
        }else if score == 23{
            score = 16
        }else if score == 25{
            score = 20
        }else if score == 35{
            score = 28
        }else if score == 6{
            score = 18
        }else if score == 12{
            score = 19
        }else if score == 15{
            score = 27
        }
            removeImage()
          setImage()
   
    }
    
    @objc func setImage()-> Void {
        
        let ImageName = "p1"
        if score < 36 {
        switch score{
            
        case 1:
            Img1.image = UIImage(named: ImageName)
        case 2:
            Img2.image = UIImage(named: ImageName)
        case 3:
            Img3.image = UIImage(named: ImageName)
        case 4:
            Img4.image = UIImage(named: ImageName)
        case 5:
            Img5.image = UIImage(named: ImageName)
        case 6:
            Img6.image = UIImage(named: ImageName)
        case 7:
            Img7.image = UIImage(named: ImageName)
        case 8:
            Img8.image = UIImage(named: ImageName)
        case 9:
            Img9.image = UIImage(named: ImageName)
        case 10:
            Img10.image = UIImage(named: ImageName)
        case 11:
            Img11.image = UIImage(named: ImageName)
        case 12:
            Img12.image = UIImage(named: ImageName)
        case 13:
            Img13.image = UIImage(named: ImageName)
        case 14:
            Img14.image = UIImage(named: ImageName)
        case 15:
            Img15.image = UIImage(named: ImageName)
        case 16:
            Img16.image = UIImage(named: ImageName)
        case 17:
            Img17.image = UIImage(named: ImageName)
        case 18:
            Img18.image = UIImage(named: ImageName)
        case 19:
            Img19.image = UIImage(named: ImageName)
        case 20:
            Img20.image = UIImage(named: ImageName)
        case 21:
            Img21.image = UIImage(named: ImageName)
        case 22:
            Img22.image = UIImage(named: ImageName)
        case 23:
            Img23.image = UIImage(named: ImageName)
        case 24:
            Img24.image = UIImage(named: ImageName)
        case 25:
            Img25.image = UIImage(named: ImageName)
        case 26:
            Img26.image = UIImage(named: ImageName)
        case 27:
            Img27.image = UIImage(named: ImageName)
        case 28:
            Img28.image = UIImage(named: ImageName)
        case 29:
            Img29.image = UIImage(named: ImageName)
        case 30:
            Img30.image = UIImage(named: ImageName)
        case 31:
            Img31.image = UIImage(named: ImageName)
        case 32:
            Img32.image = UIImage(named: ImageName)
        case 33:
            Img33.image = UIImage(named: ImageName)
        case 34:
            Img34.image = UIImage(named: ImageName)
        case 35:
            Img35.image = UIImage(named: ImageName)
        default:
            return
        }
        }else if score == 36 {
            Img36.image = UIImage(named: ImageName)
            PlayerTurn.text = "You Win"
        }else {
            score = previousScore
        }
    }
    
    @objc func removeImage()-> Void {
    
        
        switch previousScore{
            
        case 1:
            Img1.image = nil
        case 2:
            Img2.image = nil
        case 3:
            Img3.image = nil
        case 4:
            Img4.image = nil
        case 5:
            Img5.image = nil
        case 6:
            Img6.image = nil
        case 7:
            Img7.image = nil
        case 8:
            Img8.image = nil
        case 9:
            Img9.image = nil
        case 10:
            Img10.image = nil
        case 11:
            Img11.image = nil
        case 12:
            Img12.image = nil
        case 13:
            Img13.image = nil
        case 14:
            Img14.image = nil
        case 15:
            Img15.image = nil
        case 16:
            Img16.image = nil
        case 17:
            Img17.image = nil
        case 18:
            Img18.image = nil
        case 19:
            Img19.image = nil
        case 20:
            Img20.image = nil
        case 21:
            Img21.image = nil
        case 22:
            Img22.image = nil
        case 23:
            Img23.image = nil
        case 24:
            Img24.image = nil
        case 25:
            Img25.image = nil
        case 26:
            Img26.image = nil
        case 27:
            Img27.image = nil
        case 28:
            Img28.image = nil
        case 29:
            Img29.image = nil
        case 30:
            Img30.image = nil
        case 31:
            Img31.image = nil
        case 32:
            Img32.image = nil
        case 33:
            Img33.image = nil
        case 34:
            Img34.image = nil
        case 35:
            Img35.image = nil
        case 36:
            Img36.image = nil
        default:
            return
        }
    }
}

