//
//  main.m
//  Small Mad-Lib 3
//
//  Created by Andrew Barber on 8/28/16.
//  Copyright © 2016 Invictus. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
    Bright,
    Big,
    Strange
}Adjectives;


//--------------------------character name start------------------------------------------------

typedef struct PlayerCharacter {
    char *name;
}PlayerCharacter;

bool getStringFromUser(char name[], int nameLength, const char *prompt);

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
        PlayerCharacter user;
        user.name = malloc(sizeof(char) * 50);
        
        bool haveName = false;
        while (!haveName) {
            haveName = getStringFromUser(user.name, 50, "What is your name?\n");
        }
        
        NSLog(@"Hello %s\n", user.name);
        
//-------------------------character name end---------------------------------------------------
        
        NSLog(@"Pick an adjective!\n");
        NSLog(@"1: Bright\n2: Big\n3: Strange\n");
        Adjectives userChoice = 1;
        
            switch (userChoice) {
                case Bright: {
                    NSLog(@"Bright");
                    break;
            }
                case Big: {
                    NSLog(@"Big");
                    break;
                }
                case Strange: {
                    NSLog(@"Strange");
                    break;
                }
                default:
                    NSLog(@"Oh no!");
                    break;
            }
        
        NSLog(@"You chose %i!\n", userChoice);
        
    }
    return 0;
}
    
    
    
    
    
    
    
    
    
    
