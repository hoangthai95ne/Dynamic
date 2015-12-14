//
//  ViewController.m
//  Test01
//
//  Created by Hoàng Thái on 12/13/15.
//  Copyright © 2015 HOANGTHAI. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *enterName; //In use
@property (weak, nonatomic) IBOutlet UIImageView *images;
@property (weak, nonatomic) IBOutlet UIImageView *images1; //In use
@property (weak, nonatomic) IBOutlet UILabel *animalsName;

@end

@interface Tiger : NSObject
@end

@implementation Tiger

- (void) outImage {
    NSLog(@"You did it!");
}

@end

@interface Bear : NSObject
@end

@implementation Bear
- (void) outImage {
    NSLog(@"You did it!");
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.   
    _images1.image = [UIImage imageNamed:@"Nothing.jpg"];
}

- (IBAction)tapConfirm:(UIButton *)sender {
    
    NSString* animalName = self.enterName.text;
   
    Class class = NSClassFromString(animalName);
    if (class == [Tiger class]) {
        _images1.image = [UIImage imageNamed:@"Tiger1.png"];
    }
    else if (class  == [Bear class]) {
        _images1.image = [UIImage imageNamed:@"Bear.jpeg"];
    }
    else {
        _images1.image = [UIImage imageNamed:@"Still_Nothing"];
    }
}


@end