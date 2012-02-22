//
//  main.m
//  second summary
//
//  Created by Жека Г on 2/12/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


int main(int argc, char *argV[]){
    
    
    
    NSError *error; 
    NSString *path=@"new.txt";
    NSString *new=[NSString stringWithContentsOfFile:path encoding: NSUTF8StringEncoding error:nil];
    
    NSNumber *chars=[NSNumber numberWithInteger:(new).length];
    NSScanner *scanner = [NSScanner scannerWithString:new];
    NSCharacterSet *whiteSpace = [NSCharacterSet whitespaceAndNewlineCharacterSet];
    NSCharacterSet *newline=[NSCharacterSet newlineCharacterSet];
    
    int c = 0;
    while ([scanner scanUpToCharactersFromSet: whiteSpace  intoString: nil]) {
        
        c++;
    }
    int n = 1;
    while ([scanner scanUpToCharactersFromSet: newline  intoString: nil]) {
        
        n++;
    }
    NSLog(@"number of chars: %@",chars);
    NSLog(@"number of words is %i",c);
    NSLog(@"number of lines is %i",n);
    
    NSString *exar=[NSString stringWithContentsOfFile:[NSString stringWithString:@"/Users/mahmood1/Desktop/midtermscores"] encoding:NSUTF8StringEncoding error:&error]; 
    
   
    if (exar == nil) {
        NSLog(@"Error reading file at /Users/mahmood1/Desktop/midtermscores\n%@"
        ,[error localizedFailureReason]);
    }
   
    
    NSArray *exams=[exar componentsSeparatedByString:@"\n"];
    int x=0;
    
    NSString *str;
    for(int j=1;j<=10;j++){
        x=0;
        for(int i=0;i<(exams).count;i++){
            str=[exams objectAtIndex:i];
            if([str intValue]<j*10 && [str intValue]>=j*10-10){
                x++; 
            }
            
        }
        printf("from %d to %d are:",j*10-10,j*10-1);
        for(int i=0;i<x;i++){
            printf("*");
        }
        
        printf("\n");
    
   
    }
        
    
  
 
    return 0;
    
    
}
