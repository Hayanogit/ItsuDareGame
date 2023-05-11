//
//  ViewController.swift
//  ItsuDareGame
//
//  Created by HAYATO OI on 2023/05/12.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var itsuLabel: UILabel!
    @IBOutlet var dokodeLabel: UILabel!
    @IBOutlet var daregaLabel: UILabel!
    @IBOutlet var dousitaLabel: UILabel!
    
    @IBOutlet var changeButton: UIButton!
    @IBOutlet var resetButton: UIButton!
    @IBOutlet var randomButton: UIButton!
    
    var itsuArray: [String] = ["５年前", "１週間前", "昨日", "たった今"]
    var dokodeArray: [String] = ["海で", "ハワイで", "ホテルで", "あそこで"]
    var daregaArray: [String] = ["僕が", "先輩が", "両親が", "友達が"]
    var dousitaArray: [String] = ["泳いだ", "写真を撮った", "泊まった", "変顔した"]
    var index: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        changeButton.layer.cornerRadius = 35
        resetButton.layer.cornerRadius = 35
        randomButton.layer.cornerRadius = 35
        
        itsuLabel.layer.cornerRadius = 12
        dokodeLabel.layer.cornerRadius = 12
        daregaLabel.layer.cornerRadius = 12
        dousitaLabel.layer.cornerRadius = 12
        
        itsuLabel.clipsToBounds = true
        dokodeLabel.clipsToBounds = true
        daregaLabel.clipsToBounds = true
        dousitaLabel.clipsToBounds = true
    }

    @IBAction func change(){
        itsuLabel.text = itsuArray[index]
        dokodeLabel.text = dokodeArray[index]
        daregaLabel.text = daregaArray[index]
        dousitaLabel.text = dousitaArray[index]
        if index == 3{
            index = 0
        }else{
            index += 1
        }
    }

    @IBAction func reset(){
        itsuLabel.text = "----"
        dokodeLabel.text = "----"
        daregaLabel.text = "----"
        dousitaLabel.text = "----"
        index = 0
    }
    
    @IBAction func random(){
        let itsuIndex = Int.random(in: 0...3)
        let dokodeIndex = Int.random(in: 0...3)
        let daregaIndex = Int.random(in: 0...3)
        let dousitaIndex = Int.random(in: 0...3)
        
        print("いつ: \(itsuIndex)")
        print("どこで: \(dokodeIndex)")
        print("だれが: \(daregaIndex)")
        print("どうした: \(dousitaIndex)")
        
        itsuLabel.text = itsuArray[itsuIndex]
        dokodeLabel.text = dokodeArray[dokodeIndex]
        daregaLabel.text = daregaArray[daregaIndex]
        dousitaLabel.text = dousitaArray[dousitaIndex]
        
    }
    
}

