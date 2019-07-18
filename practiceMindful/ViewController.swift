//
//  ViewController.swift
//  practiceMindful
//
//  Created by Nicoletta Briscoe on 7/16/19.
//  Copyright © 2019 Nicoletta Briscoe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let numbers = ["1": "awful", "2":"bad", "3":"okay", "4":"good", "5":"amazing"]
    
    let customMessages = ["awful":["It's okay to feel down. Remember that you are an amazing person who is loved and appreciated by so many. YOU ROCK!!","You deserve a cookie. And a bubble bath. And to watch your favorite show, while wrapped in the fuzziest blanket. Take some time for yourself!!","WE THINK YOU'RE GREAT! You are a living breathing organism with so many unique thoughts and can do whatever the heck you want. That's awesome. YOUR awesome."], "bad":["Tomorrow is a new day! Don't fret, go have a dance party in your room. Shaking what your mama gave ya is a great pick me up!", "WOWZA. LOOK. AT. YOU. YOU ARE BEAUTIFUL. don't let anyone or anything bring you down. You deserve to have a fabulous time, go kill it!xx", "sending millions and trillions of positive vibes your way! You are as strong as beyonce, you got this!!"], "okay":["DOG PHOTOS! I promise, go look at a few. They'll make you smile :)","Look out your window! There is inspiration everywhere. You can find joy in the smallest, most peaceful things. The moon smiling down at you, the grass waving hello as it rustles through the wind. Look! A penny! See? Keep smiling, your future is going to be lucky!!","Go shuffle that moody playlist. It's okay to let it all out. Watch the final episode of friends, or listen to that really sad dumbo song. You're not alone, you're feelings are valid."], "good":["Go hit up your camera roll and bless it with millions of selfies. You are gorgeous!","You are utterly uniquely you and that's enough, today and everyday. Keep your head up!","You have the power to completley chnage the world? Isn't that cool? SO? Whatcha going to do? Steal the moon like Gru? Or spread some love? I bet whatever you do will be just as amazing as you!"], "amazing":["You are absolutely killing the game. Look atchu! That smile! That energy! Go spread some love <3","The more smiles you give out, the bigger yours will become. We are thankful to have such a positive light around today! Thanks for being you!","WOW! The sun woke me up this morning just so i could see your bright smiling face. Absolutely gorgeous. WE LOVE YOU!!!! AND YOUR POSITIVE ATTITUDE!!"]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func showMessage(sender: UIButton){
        let selectedEmotion = sender.titleLabel?.text
        let random = Int.random(in: 0 ... 2)
        let emojiMessage = customMessages[numbers[selectedEmotion!]!]?[random]
        let alertController = UIAlertController(title: "Hi!", message: emojiMessage, preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        present(alertController, animated: true, completion: nil
        )
    }
    
}

