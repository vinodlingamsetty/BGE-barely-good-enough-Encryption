//
//  ViewController.m
//  Test
//
//  Created by vinod kumar lingamsetty on 5/26/16.
//  Copyright © 2016 vinod kumar lingamsetty. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    
    NSString *userString;
    long strlength;
    char *x;
    long firstObjectLength;
    NSArray *words;
    //NSMutableArray *plaintxt;
   
}
@property (weak, nonatomic) IBOutlet UITextField *txtField;
@property (weak, nonatomic) IBOutlet UILabel *result;


@end

@implementation ViewController


- (IBAction)algo1Btn:(id)sender {
    
//    NSString *str1 = @"Her elephant lost lettuce often, while others really liked donuts";
//    NSArray *components = [str1 componentsSeparatedByString:@","];
//
//    NSMutableArray *trimmedComponents =
//    [NSMutableArray arrayWithCapacity:[components count]];
//    
//    NSCharacterSet *whitespaceCharacterSet = [NSCharacterSet whitespaceCharacterSet];
//    
//    for(NSString *component in components)
//        [trimmedComponents addObject:
//         [component stringByTrimmingCharactersInSet:whitespaceCharacterSet]];
//    NSString *fullAddress = [trimmedComponents componentsJoinedByString:@", "];
//    NSLog(@"%@",components);
    
    NSCharacterSet * set = [[NSCharacterSet characterSetWithCharactersInString:@"1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLKMNOPQRSTUVWXYZ0123456789"] invertedSet];
    NSMutableString *resultString = [NSMutableString string];
    
    
      words = [@"Her elephant lost lettuce often, while others really liked donuts" componentsSeparatedByCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
    
    NSLog(@"%@",words);
    
    userString = _txtField.text;
    strlength = [userString length];
    NSLog(@"User string length = %ld", strlength);
    
    for ( NSString *word in words) {
        if ([word length]>0) {
            NSString *firstletter = [word substringToIndex:1];
            NSString *lastLetter = [word substringFromIndex:[word length]-1 ];
            [resultString appendString:firstletter];
 
          if ([lastLetter rangeOfCharacterFromSet:set].location != NSNotFound) {
               [resultString appendString:@" "];
            }
            
        }
        
    }
    NSLog(@"%@",resultString);
    self.result.text = resultString;

}

- (IBAction)algo2Btn:(id)sender {
    
    NSCharacterSet * set = [[NSCharacterSet characterSetWithCharactersInString:@"1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLKMNOPQRSTUVWXYZ0123456789"] invertedSet];
    NSMutableString *resultString = [NSMutableString string];
    NSMutableArray *plaintxt = [[NSMutableArray alloc]init];
     words = [@"Dogs fight able abolish acclaim famous is airwaves favor diary darling handbag" componentsSeparatedByCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
    
    [plaintxt addObjectsFromArray:words];
    
    NSLog(@"%@",plaintxt);
    NSString *firstobject = [words objectAtIndex:0];
    NSLog(@"%@",firstobject);
    firstObjectLength = [firstobject length];
    NSLog(@"%ld",firstObjectLength);
    
    [plaintxt removeObjectAtIndex:0];
    NSLog(@"%@",plaintxt);
    
    for ( NSString *word in plaintxt) {
        
        if ([word length]>=firstObjectLength) {
//            NSLog(@"%@",word);
            NSString *firstletter = [NSString stringWithFormat:@"%c",[word characterAtIndex:firstObjectLength-1]];
            NSString *lastLetter = [word substringFromIndex:[word length]-1 ];
            [resultString appendString:firstletter];
            
            if ([lastLetter rangeOfCharacterFromSet:set].location != NSNotFound) {
                [resultString appendString:@" "];
                
            }
            
        }
        else
            [resultString appendString:@" "];
        
    }
    NSLog(@"%@",resultString);
    self.result.text = resultString;

}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
