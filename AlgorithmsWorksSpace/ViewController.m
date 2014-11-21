//
//  ViewController.m
//  AlgorithmsWorksSpace
//
//  Created by Deepak Kumar on 16/11/14.
//  Copyright (c) 2014 Deepak Kumar. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //Sorting
    NSArray *stringsArray = @[@"llabcded",@"aboijdju",@"zdhjcdhjsacd",@"kdidsdsaiu",@"aaaaaa",@"12sjd"];
    NSMutableDictionary *finalDict = [NSMutableDictionary new];
    
    NSArray *finalArray = [stringsArray sortedArrayUsingComparator:^NSComparisonResult(id obj1, id obj2) {
        NSRange range = NSMakeRange(0, [obj1 length]);
        NSComparisonResult comparisonResult = [obj1 compare:obj2 options:NSCaseInsensitiveSearch range:range locale:[NSLocale currentLocale]];
        return comparisonResult;
    }];
    
    NSLog(@"Array : %@",finalArray);
    
    //Finding Unique strings
    NSArray *duplicateArray = @[@"Banaglore",@"Mysore",@"Udupi", @"Banaglore",@"Udupi",@"Delhi"];
    [duplicateArray enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        finalDict[obj] = @"1";
    }];
    
    NSLog(@"Final Count : %lu",(unsigned long)[finalDict allKeys].count);
    
    //Reverse a string
    NSString *properStr = @"Deepak Kumar";
    NSMutableString *reversedStr = [[NSMutableString alloc]initWithCapacity:properStr.length];
    [properStr enumerateSubstringsInRange:NSMakeRange(0, properStr.length) options:NSStringEnumerationByComposedCharacterSequences | NSStringEnumerationReverse usingBlock:^(NSString *substring, NSRange substringRange, NSRange enclosingRange, BOOL *stop) {
        [reversedStr appendString:substring];
    }];
    NSLog(@"Reveresed String : %@",reversedStr);
    
    //Fibanocci
    NSInteger fibaCount = 20;
    NSMutableArray *fibanocciNumbers = [NSMutableArray new];
    for (int i = 0; i<fibaCount; i++) {
        if (fibanocciNumbers.count>1) {
            NSInteger newNumber = [fibanocciNumbers[i-2] integerValue]+[fibanocciNumbers[i-1] integerValue];
            [fibanocciNumbers addObject:[NSString stringWithFormat:@"%ld",(long)newNumber]];
        }else{
            [fibanocciNumbers addObject:[NSString stringWithFormat:@"%ld",(long)i]];
        }
    }
    NSLog(@"Fibanocci numbers : %@",fibanocciNumbers);
    
    
    //to find if a string is palindrome
    //Just reverse the string given and compare two strings
    
    /*
     
     */
    int numberToSearch = 4;
    NSArray *searchArray = @[@(1),@(4),@(5),@(7),@(9),@(12)];
    NSOrderedSet *orderedSet = [NSOrderedSet orderedSetWithArray:searchArray];
    NSLog(@"index %lu",(unsigned long)[orderedSet indexOfObject:@(numberToSearch)]);
    
    
    
    
    
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
