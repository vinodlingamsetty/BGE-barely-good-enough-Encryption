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

@property (strong, nonatomic) IBOutlet UIScrollView *myScrollView;

@end

@implementation ViewController


- (IBAction)algo1Btn:(id)sender {
    
 
    
    NSCharacterSet * set = [[NSCharacterSet characterSetWithCharactersInString:@"1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLKMNOPQRSTUVWXYZ0123456789"] invertedSet];
    NSMutableString *resultString = [NSMutableString string];
    
    userString = _txtField.text;
    
      words = [userString componentsSeparatedByCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
    
    NSLog(@"%@",words);
    
    
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
    userString = _txtField.text;

     words = [userString componentsSeparatedByCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
    
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
    UIScrollView *scroll = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 300, self.view.frame.size.width, self.view.frame.size.height)];
    
    scroll.userInteractionEnabled = YES;
    scroll.showsHorizontalScrollIndicator = YES;
    [self.view addSubview:scroll];
    
    UITextView *myLabel = [[UITextView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 150)];
    
    myLabel.text = @"\nDescription \nAlgorithm 1: \n1) Take the first character from each word.\n2) Use a space character for any commas (“,”).\n3) Concatenate all the characters to form the decrypted text.\n\nSample input: Her elephant lost lettuce often, while others really liked donuts.\nDecrypted text: Hello world\n\n\nAlgorithm 2: \n1) The length of the first word is used as a key (I’ll call it N). \n2) For the remaining words select the character at position N. For words shorter than N print a space character. \n3) Concatenate all the characters to form the decrypted text.\n\nSample Input: Dogs fight able abolish acclaim famous is airwaves favor diary darling handbag. \nDecrypted text: hello world\n\nAnother input for algorithm 2: Four hazy halos abduct an aligned abhors rafters on rabid rants.";
    myLabel.textAlignment = NSTextAlignmentLeft;
    
    [scroll addSubview:myLabel];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
