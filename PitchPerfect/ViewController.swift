//
//  ViewController.swift
//  PitchPerfect
//
//  Created by Matheus da Silva Freire on 15/11/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var recordButton: UIButton!
    @IBOutlet weak var recordingLabel: UILabel!
    @IBOutlet weak var stopRecordingButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("didLoad called")
        disabledButton(button: stopRecordingButton)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("viewWillAppear called")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("didAppearCalled")
    }

    
    @IBAction func recordAudio(_ sender: Any) {
        recordingLabel.text = "Recording in progress"
        enableButton(button: stopRecordingButton)
        disabledButton(button: recordButton)
    }
    
    private func enableButton(button: UIButton) {
        button.isEnabled = true
        button.alpha = 1.0
    }
    
    private func disabledButton(button: UIButton) {
        button.isEnabled = false
        button.alpha = 0.5
    }
    
    @IBAction func stopRecording(_ sender: Any) {
        enableButton(button: recordButton)
        disabledButton(button: stopRecordingButton)
        recordingLabel.text = "Tap to Record"
    }
}
