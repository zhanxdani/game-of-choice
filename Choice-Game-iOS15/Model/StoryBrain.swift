//
//  StoryBrain.swift
//  Choice-Game-iOS15
//
//  Created by Zhantai Dan on 23/04/2022.
//  Copyright © 2022. All rights reserved.
//

import Foundation

struct StoryBrain {
       
       var storyNumber = 0
       
       let stories = [
           Story(
            title: "English psychologist David Lewis claims that it is safe only for women, while for men it can become a source of dangerous diseases. Studies have shown that only a quarter of women had any minor abnormalities, such as heartbeat. Men, on the contrary, reacted extremely negatively to this: their pulse quickened, arrhythmia began to appear, and blood pressure jumped sharply. Call it an English word that has recently penetrated into the Russian language.",
            choice1: "Shopping", choice2: "Purchases", choice1Destination: 2, choice2Destination: 1
                    ),
                    Story(
                        title: "Many do not believe in its existence. However, Kant believed that any human knowledge begins with it. And they say that it brings only those who have it. Name her.",
                        choice1: "Feeling", choice2: "Intuition", choice1Destination: 2, choice2Destination: 3
                    ),
                    Story(
                        title: "Oddly enough, these two have a lot in common. Both have Italian roots. Their patronymics would be the same, if, of course, there were any. But their relations with Russia have developed in different ways. The first visit to Russia brought only troubles, although at first everything turned out very successfully for him. The second is not only known in Russia to everyone, young and old, in fact, here he was born. Name them both.",
                        choice1: "Napoleon Bonaparte and Pinocchio", choice2: "Pinocchio and Dwarf", choice1Destination: 5, choice2Destination: 4
                    ),
                    Story(
                        title: "This substance is the main component of acid rain. In gaseous form, it can cause severe burns. The consequence of this substance entering the stomach may be increased sweating, and in the case of a large dose, vomiting. In case of accidental inhalation, it can also lead to death. Name this substance.",
                        choice1: "Ice", choice2: "H20", choice1Destination: 0, choice2Destination: 0
                    ),
           Story(
                       title: "George Orwell, explaining the choice of topic for one of his essays, wrote: This is very curious. And not only because it is one of the pillars of British civilization, but also because the best way is the subject of fierce debate. The essay provides 11 ways. What?.",
                       choice1: "Soup brewing", choice2: "Tea brewing", choice1Destination: 0, choice2Destination: 0
                   ),
                   Story(
                       title: "In Sparta, after the death of the king, two institutions were closed for 10 days. When the Persian king Xerxes learned about this custom, he declared that such a custom would be impossible in Persia, since it would deprive his subjects of two favorite activities. What were these institutions?'",
                       choice1: "Court and market", choice2: "Store and Factory", choice1Destination: 0, choice2Destination: 0
                   ),
           // Для продолжения нужно добавлять историю через запятую!
           

       ]
       
       func getStoryTitle() -> String {
           return stories[storyNumber].title
       }
       
       func getChoice1() -> String {
           return stories[storyNumber].choice1
       }
       
       func getChoice2() -> String {
           return stories[storyNumber].choice2
       }
       
       mutating func nextStory(userChoice: String) {
           
           let currentStory = stories[storyNumber]
           if userChoice == currentStory.choice1 {
               storyNumber = currentStory.choice1Destination
           } else if userChoice == currentStory.choice2 {
               storyNumber = currentStory.choice2Destination
           }
       }
       
   }
   


