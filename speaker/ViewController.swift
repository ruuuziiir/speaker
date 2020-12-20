//
//  ViewController.swift
//  speaker
//
//  Created by 7 on 2020/12/18.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextView!
    @IBOutlet weak var speedSlider: UISlider!
    @IBOutlet weak var toneSlider: UISlider!
    @IBOutlet weak var langSeg: UISegmentedControl!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    let synthesizer = AVSpeechSynthesizer()
    
    
    @IBAction func speak(_ sender: Any) {
        
        if langSeg.selectedSegmentIndex == 0 {
            
            let utterance = AVSpeechUtterance(string: textField.text)
            utterance.rate = speedSlider.value
            utterance.pitchMultiplier = toneSlider.value
            utterance.voice = AVSpeechSynthesisVoice(language: "en")
            synthesizer.speak(utterance)
        
        }
        
        if langSeg.selectedSegmentIndex == 1 {
            
            let utterance = AVSpeechUtterance(string: textField.text)
            utterance.rate = speedSlider.value
            utterance.pitchMultiplier = toneSlider.value
            utterance.voice = AVSpeechSynthesisVoice(language: "zh-TW")
            synthesizer.speak(utterance)
        
        }
        
        if langSeg.selectedSegmentIndex == 2 {
            
            let utterance = AVSpeechUtterance(string: textField.text)
            utterance.rate = speedSlider.value
            utterance.pitchMultiplier = toneSlider.value
            utterance.voice = AVSpeechSynthesisVoice(language: "ja")
            synthesizer.speak(utterance)
            
        }
    }
        
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {self.view.endEditing(true)}

}

