//
//  main.m
//  Small Mad-Lib 3
//
//  Created by Andrew Barber on 8/28/16.
//  Copyright © 2016 Invictus. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
    Bright = 1,
    Big,
    Strange
}Adjectives;

typedef enum {
    House = 1,
    Car,
    Shoe
}Nouns;

typedef enum {
    Run = 1,
    Tumble,
    Spew
}Verbs;

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
        

        NSLog(@"Pick an adjective!\n");
        NSLog(@"1: Bright\n2: Big\n3: Strange\n");
        Adjectives userChoiceAdjective = -1;
        scanf("%d", &userChoiceAdjective);
        
        NSString *stringChoiceAdjectives = @"";
        
        switch (userChoiceAdjective) {
            case Bright: {
                stringChoiceAdjectives = @"Bright";
                break;
            }
            case Big: {
                stringChoiceAdjectives = @"Big";
                break;
            }
            case Strange: {
                stringChoiceAdjectives = @"Strange";
                break;
            }
            default:
                NSLog(@"Oh no!");
                break;
        }
        
        NSLog(@"You chose %@!\n", stringChoiceAdjectives);
        NSLog(@"Now, pick a noun\n");
        NSLog(@"1: House\n2: Car\n3: Shoe\n");
        Nouns userChoiceNoun = -1;
        scanf("%d", &userChoiceNoun);
        
        NSString *stringChoiceNouns = @"";
        
        switch (userChoiceNoun) {
            case House:
                stringChoiceNouns = @"House";
                break;
            case Car:
                stringChoiceNouns = @"Car";
                break;
            case Shoe:
                stringChoiceNouns = @"Shoe";
                break;
            default:
                NSLog(@"Oh no!");
                break;
        }
        NSLog(@"You chose %@!\n", stringChoiceNouns);
        NSLog(@"Now pick a verb\n");
        NSLog(@"1: Run\n2: Tumble\n3: Spew\n");
        Verbs userChoiceVerb = -1;
        scanf("%d", &userChoiceVerb);
        
        NSString *stringChoiceVerbs = @"";
        
        switch (userChoiceVerb) {
            case Run:
                stringChoiceVerbs = @"Run";
                break;
            case Tumble:
                stringChoiceVerbs= @"Tumble";
                break;
            case Spew:
                stringChoiceVerbs = @"Spew";
                break;
            default:
                NSLog(@"Oh no!");
                break;
        }
        NSLog(@"You chose %@!\n", stringChoiceVerbs);
        NSLog(@"Here is your story\n");
        NSLog(@"Once upon a time, %s was a mighty warrior. They were known for their %@ demeanor. A particular thing that helped their heroic deeds was a %@ though no one knew why. When they became relentless they could not help but use their %@ abiliy.", user.name, stringChoiceAdjectives, stringChoiceNouns, stringChoiceVerbs);
    }
    return 0;
}

bool getStringFromUser(char name[], int nameLength, const char *prompt) {
    
    char *result = NULL;
    while (result != name) {
        fpurge(stdin);
        printf("%s", prompt);
        result = fgets(name, nameLength, stdin);
    }
    
    
    // we will change this
    return true;
}








