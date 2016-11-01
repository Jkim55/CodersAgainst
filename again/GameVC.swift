//
//  GameVC.swift
//  again
//
//  Created by Ji Kim on 10/31/16.
//  Copyright © 2016 ThunderWhatever. All rights reserved.
//

import UIKit

class GameVC: UIViewController {

    @IBOutlet weak var blackCard: UILabel!
    @IBOutlet weak var whiteCard1: UIButton!
    @IBOutlet weak var whiteCard2: UIButton!
    @IBOutlet weak var whiteCard3: UIButton!
    @IBOutlet weak var whiteCard4: UIButton!
    @IBOutlet weak var whiteCard5: UIButton!
    @IBOutlet weak var whiteCard6: UIButton!
    
    @IBOutlet weak var blabla: UIButton!
    var correctAnswer = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.black
        randomQuestions()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func randomQuestions(){
        var randomNumber = arc4random() % 6
        randomNumber += 1
        
        switch (randomNumber){
        case 1:
            blackCard.text = "Hello, World! What's my name?"
            whiteCard1.setTitle("Jim", for: UIControlState.normal)
            whiteCard2.setTitle("Ji", for: UIControlState.normal)
            whiteCard3.setTitle("Jill", for: UIControlState.normal)
            whiteCard4.setTitle("Jippers", for: UIControlState.normal)
            whiteCard5.setTitle("Jing", for: UIControlState.normal)
            whiteCard6.setTitle("JigglyPuff", for: UIControlState.normal)
            correctAnswer = "2"
            break;
        case 2:
            blackCard.text = "What city do you live in?"
            whiteCard1.setTitle("Los Angeles", for: UIControlState.normal)
            whiteCard2.setTitle("NYC", for: UIControlState.normal)
            whiteCard3.setTitle("Istanbul", for: UIControlState.normal)
            whiteCard4.setTitle("Austin", for: UIControlState.normal)
            whiteCard5.setTitle("Chicago", for: UIControlState.normal)
            whiteCard6.setTitle("Denver", for: UIControlState.normal)
            correctAnswer = "6"
            break;
        case 3:
            blackCard.text = "What's your favorite color?"
            whiteCard1.setTitle("Black", for: UIControlState.normal)
            whiteCard2.setTitle("White", for: UIControlState.normal)
            whiteCard3.setTitle("Coral", for: UIControlState.normal)
            whiteCard4.setTitle("Greige", for: UIControlState.normal)
            whiteCard5.setTitle("Aubergine", for: UIControlState.normal)
            whiteCard6.setTitle("Orange", for: UIControlState.normal)
            correctAnswer = "3"
            break;
        case 4:
            blackCard.text = "What campus are you studying at?"
            whiteCard1.setTitle("Galvanize Platte", for: UIControlState.normal)
            whiteCard2.setTitle("Galvanize San Francisco", for: UIControlState.normal)
            whiteCard3.setTitle("Galvanize Austin", for: UIControlState.normal)
            whiteCard4.setTitle("Galvanize Boulder", for: UIControlState.normal)
            whiteCard5.setTitle("Galvanize Fort Collins", for: UIControlState.normal)
            whiteCard6.setTitle("Galvanize Golden Triangle", for: UIControlState.normal)
            correctAnswer = "1"
            break;
        default:
            break;
        }
    }
    
    
    // ACTION: Return to Login Page
    @IBAction func returnToLoginPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    // ACTION: Next Question Generator
    @IBAction func newQuestion(_ sender: UIButton) {
        randomQuestions()
    }
    
    //    ACTION: Selected Card
    @IBAction func whiteCard1Picked(_ sender: Any) {
        if (correctAnswer == "1"){
            NSLog("Winner, winner. Chicken dinner")
        } else {
            NSLog("Looooooseer")
        }
    }
    @IBAction func whiteCard2Picked(_ sender: Any) {
        if (correctAnswer == "2"){
            NSLog("Winner, winner. Chicken dinner")
        } else {
            NSLog("Looooooseer")
        }
    }
    @IBAction func whiteCard3Picked(_ sender: Any) {
        if (correctAnswer == "3"){
            NSLog("Winner, winner. Chicken dinner")
        } else {
            NSLog("Looooooseer")
        }
    }
    @IBAction func whiteCard4Picked(_ sender: Any) {
        if (correctAnswer == "4"){
            NSLog("Winner, winner. Chicken dinner")
        } else {
            NSLog("Looooooseer")
        }
    }
    @IBAction func whiteCard5Picked(_ sender: Any) {
        if (correctAnswer == "5"){
            NSLog("Winner, winner. Chicken dinner")
        } else {
            NSLog("Looooooseer")
        }
    }
    @IBAction func whiteCard6Picked(_ sender: Any) {
        if (correctAnswer == "6"){
            NSLog("Winner, winner. Chicken dinner")
        } else {
            NSLog("Looooooseer")
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
