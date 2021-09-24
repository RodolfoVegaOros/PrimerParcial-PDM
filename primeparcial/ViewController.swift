//
//  ViewController.swift
//  ProyectoPrimerParcial
//
//  Created by Alumno on 9/10/21.
//  Copyright © 2021 Alumno. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var playerFondo = AVAudioPlayer ()
    var playerAnimal = AVAudioPlayer()
    
    let urlPerro = Bundle.main.url(forResource: "perro", withExtension: "wav")
    
    let urlGato = Bundle.main.url(forResource: "gato", withExtension: "wav")
    
    let urlRabbit = Bundle.main.url(forResource: "rabbit", withExtension: "mp3")
    
    let urlFondo = Bundle.main.url(forResource: "fondo", withExtension: "wav")
    
    
    let rabbit  = [
                 UIImage(named: "rabbit1")!,
                 UIImage(named: "rabbit2")!,
                 UIImage(named: "rabbit3")!,
                 UIImage(named: "rabbit4")!,
                 UIImage(named: "rabbit5")!,
                 UIImage(named: "rabbit6")!,
                 UIImage(named: "rabbit7")!,
                 UIImage(named: "rabbit8")!            ]
      
    
         
      
    let perrito = [
          
                  UIImage(named: "dog1")!,
                  UIImage(named: "dog2")!,
                  UIImage(named: "dog3")!,
                  UIImage(named: "dog4")!,
                  UIImage(named: "dog5")!,
                  UIImage(named: "dog6")!,
                  UIImage(named: "dog7")!,
                  UIImage(named: "dog8")!,
          ]
      
      
      
      let Gato = [
          
                  UIImage(named: "cat1")!,
                  UIImage(named: "cat2")!,
                  UIImage(named: "cat3")!,
                  UIImage(named: "cat4")!,
                  UIImage(named: "cat5")!,
                  UIImage(named: "cat6")!,
                  UIImage(named: "cat7")!,
                  UIImage(named: "cat8")!
      ]
      
     
    
    override func viewDidLoad() {
        super.viewDidLoad()
            do{
                try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
                try AVAudioSession.sharedInstance().setActive(true)
                
                playerFondo = try AVAudioPlayer(contentsOf: urlFondo!, fileTypeHint: AVFileType.wav.rawValue)
                playerFondo.numberOfLoops = -1
                playerFondo.volume = 0.2
                
                imgConejo.animationImages = rabbit
                imgConejo.animationDuration = 2.0
                imgConejo.startAnimating()
                
                imgGato.animationImages = Gato
                imgGato.animationDuration = 2.0
                imgGato.startAnimating()
                
                imgPerro.animationImages = perrito
                imgPerro.animationDuration = 2.0
                imgPerro.startAnimating()
                
                
                
                playerFondo.play()
                
            } catch let error{
                print(error.localizedDescription)
        }
    }
    
  
    
    
   
    
       
  @IBOutlet weak var lblAnimal: UILabel!
  @IBOutlet weak var imgMain: UIImageView!
    
  @IBOutlet weak var imgPerro: UIImageView!
    @IBAction func TapAnimal1(_ sender: Any) {
        do{
            playerAnimal = try AVAudioPlayer(contentsOf: urlPerro!, fileTypeHint: AVFileType.mp3.rawValue)
            playerAnimal.play()
            
            
            imgMain.animationImages = perrito
            imgMain.animationDuration = 2.0
            imgMain.startAnimating()
            
            lblAnimal.text = "Dog"
            
            
        }catch let error{
            print(error.localizedDescription)
        }
        
        
    }
    
    
    
    @IBOutlet weak var imgGato: UIImageView!
    @IBAction func TapAnimal2(_ sender: Any) {
        do{
                playerAnimal = try AVAudioPlayer(contentsOf: urlGato!, fileTypeHint: AVFileType.mp3.rawValue)
                playerAnimal.play()
                
                
                imgMain.animationImages = Gato
                imgMain.animationDuration = 2.0
                imgMain.startAnimating()
            
                lblAnimal.text = "Kitten"
               
            
                  
              }catch let error{
                  print(error.localizedDescription)
              }
        
        
        
    }
    
    
    
    @IBOutlet weak var imgConejo: UIImageView!
    @IBAction func TapAnimal3(_ sender: Any) {
        do{
                playerAnimal = try AVAudioPlayer(contentsOf: urlRabbit!, fileTypeHint: AVFileType.mp3.rawValue)
                playerAnimal.play()
            
                
            
                imgMain.animationImages = rabbit
                imgMain.animationDuration = 2.0
                imgMain.startAnimating()
            
                lblAnimal.text = "Rabbit"
            
                        
                    }catch let error{
                        print(error.localizedDescription)
                    }
        
               
        
    }
    
}

