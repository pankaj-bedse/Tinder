//
//  CardsViewController.m
//  Tinder
//
//  Created by Pankaj Bedse on 9/18/15.
//  Copyright (c) 2015 Pankaj Bedse. All rights reserved.
//

#import "CardsViewController.h"
#import "ProfileViewController.h"

@interface CardsViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *userImage;
@property (strong, nonatomic) IBOutlet UIPanGestureRecognizer *imageGesture;
@property (nonatomic, assign) CGPoint imageCenter;
@property (strong, nonatomic) IBOutlet UIView *view;

@end

@implementation CardsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.userImage addGestureRecognizer:self.imageGesture];
    self.imageCenter = self.userImage.center;
    //self.imageGesture.delegate = self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)imageGesture:(UIPanGestureRecognizer *)sender {
    NSLog(@"in pan");
    switch (sender.state) {
        case UIGestureRecognizerStateBegan:
            
            break;
         case UIGestureRecognizerStateChanged:
            self.userImage.center = [sender
                                     locationInView:self.view];
            break;
        case UIGestureRecognizerStateEnded:
            self.userImage.center = self.imageCenter;
        default:
            break;
    }
}
- (IBAction)imageTab:(id)sender {
    [self performSegueWithIdentifier:@"profileViewSegue" sender:self];
//    ProfileViewController *pc= [[ProfileViewController alloc] initWithNibName:@"ProfileViewController" bundle:nil];
//    [self.navigationController presentModalViewController:pc animated:YES];
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
