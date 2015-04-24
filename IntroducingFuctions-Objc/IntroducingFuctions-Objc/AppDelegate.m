//
//  AppDelegate.m
//  IntroducingFuctions-Objc
//
//  Created by Joshua Howland on 8/14/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

/* STEP 1
 - Declare and set a variable called myName to your name
 - Declare two more string variables introduction and japaneseIntroduction both with an NSString type
 - Set introduction using stringWithFormat (or format: in Swift) class method "My name is %@", myName
 - Set japanese introduction using stringByAppendingString instance method by appending " to moushimasu"
 - Print introduction and japanese introduction
 */

/* STEP 2
 - Declare a function called printIntroductions
 - The function should accept an NSString as a parameter called n
 - Cut and paste the introduction and japaneseIntroduction code inside of the new function
 - You should have errors for referencing 'myName'. Change any reference to 'myName' to 'name'.
 * This is an error of scope. You only declared 'myName' in your didFinishLaunching method. Not in your new method.
 In your new method, you declared an argument called 'name' that your function accepts when the method is called
 - In your didFinishLaunching method after you set myName call printIntroductions: and pass in 'myName' as an argument
 - It should print out the introduction and Japanese introduction */

/* STEP 3
 - Add a new function called countDownTillIntroduction: that accepts an integer called numberOfDays as an argument
 - The function should do the following:
 - Check to see if the numberOfDays is 0
 * If the number of days is 0, it should print "The time has come"
 - If numberOfDays is not 0
 * It should print "[numberOfDays] days left until introductions"
 * It should declare and set a variable oneLessDay and set it to numberOfDays - 1
 * It should then call countDownTillIntroduction and pass in oneLessDay
 - In the didFinishLaunching method before you call printIntroductions call countDownTillIntroduction and pass in 4 */

/* Completion
 
 You should see it print "4 days left until introductions", "3 days left until introductions" (down to 1) and then it should print "The time has come" and "My name is [yourName]", "[yourName] to moushimasu"*/
            

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    NSString *myName = @"Parker";
    
    
    [self countDownTillIntroduction:4];
    [self printIntroduction:myName];
    

    
    return YES;
}

// Define new functions here...
- (void) printIntroduction:(NSString *)name{

    NSString *introduction = [NSString stringWithFormat:@"My name is %@", name];
    NSString *japaneseIntro = [name stringByAppendingString:@" to moushimasu"];
    NSLog (@"%@\n%@",introduction, japaneseIntro);
    

}


- (void)countDownTillIntroduction: (NSInteger *)numberOfDays{
    if (numberOfDays == 0) {
        NSLog(@"The time has come");
    }
    if (numberOfDays != 0) {
        NSLog(@" %ld days left until introductions", (long)numberOfDays);
        NSInteger *oneLessDay = numberOfDays - 1;
        [self countDownTillIntroduction:oneLessDay];
    }
}



@end
