
Image Change Color Run Time
=========

## Image Change Color Run Time.
------------
 Added Some screens here.
 
 ![](https://github.com/pawankv89/ImageChangeColorRunTime/blob/master/Screens/1.png)
 ![](https://github.com/pawankv89/ImageChangeColorRunTime/blob/master/Screens/2.png)
 ![](https://github.com/pawankv89/ImageChangeColorRunTime/blob/master/Screens/3.png)
 ![](https://github.com/pawankv89/ImageChangeColorRunTime/blob/master/Screens/4.png)

## Usage
------------
 iOS 9 Demo showing Multiple color with default png file on UIImageView  iPhone X Simulator in  Objective-C and Swift 5.0.


```objective-c

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


```

```Swift


import UIKit

class ViewController: UIViewController {

@IBOutlet weak var appleImageView: UIImageView!
@IBOutlet weak var updateColorButton: UIButton!

override func viewDidLoad() {
super.viewDidLoad()
// Do any additional setup after loading the view, typically from a nib.
}

override func didReceiveMemoryWarning() {
super.didReceiveMemoryWarning()
// Dispose of any resources that can be recreated.
}


@IBAction func updateColorButton(_ sender: Any) {

spawnBadge()
}

func spawnBadge() -> Void {

let red : CGFloat = CGFloat((arc4random() % 99767) / 32767)
let green : CGFloat = CGFloat((arc4random() % 99767) / 32767)
let blue : CGFloat = CGFloat((arc4random() % 99767) / 32767)
let x : CGFloat = UIScreen.main.bounds.size.width * CGFloat((arc4random() % 99767) / 32767)
let y : CGFloat = UIScreen.main.bounds.size.height * CGFloat((arc4random() % 99767) / 32767)

let randomColor : UIColor = UIColor.init(red: red, green: green, blue: blue, alpha: 1)

UIView.animate(withDuration: 0.3) {

self.appleImageView.center = CGPoint(x: x, y: y)
self.appleImageView.image = self.appleImageView.image?.withRenderingMode(.alwaysTemplate)
self.appleImageView.tintColor = randomColor
}
}

}

```

## License

This code is distributed under the terms and conditions of the [MIT license](LICENSE).

## Change-log

A brief summary of each this release can be found in the [CHANGELOG](CHANGELOG.mdown). 
