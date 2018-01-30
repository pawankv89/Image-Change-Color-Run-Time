//
//  ViewController.m
//  ImageChangeColorRunTime
//
//  Created by Pawan kumar on 1/30/18.
//  Copyright © 2018 Pawan Kumar. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *appleImageView;
@property (weak, nonatomic) IBOutlet UIButton *updateColorButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)updateColorButton:(id)sender {
 
    [self spawnBadge];
    
}

- (void)spawnBadge{
    
    //generate random values for color and x/y position
    CGFloat red = (arc4random() % 99767) / 32767.0f;
    CGFloat green = (arc4random() % 99767) / 32767.0f;
    CGFloat blue = (arc4random() % 99767) / 32767.0f;
    CGFloat x = [UIScreen mainScreen].bounds.size.width * (arc4random() % 32767) / 32767.0f;//320
    CGFloat y = [UIScreen mainScreen].bounds.size.height * (arc4random() % 32767) / 32767.0f;//480
    
    UIColor *randomColor = [UIColor colorWithRed:red green:green blue:blue alpha:1.0];
    
    [UIView animateWithDuration:0.3 animations:^{
       
        self.appleImageView.center = CGPointMake(x, y);
        
        self.appleImageView.image = [self.appleImageView.image imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
        [self.appleImageView setTintColor:randomColor];
        
    }];
}

@end
