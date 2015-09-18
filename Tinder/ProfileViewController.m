//
//  ProfileViewController.m
//  Tinder
//
//  Created by Pankaj Bedse on 9/18/15.
//  Copyright (c) 2015 Pankaj Bedse. All rights reserved.
//

#import "ProfileViewController.h"

@interface ProfileViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *userImage;

@end

@implementation ProfileViewController

-(id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    //self.userImage initWithImage:<#(UIImage *)#>[[[UIImageView alloc] initWithImage:self.imageName]]
    // Do any additional setup after loading the view from its nib.
}
- (IBAction)closeMe:(id)sender {
    [self dismissViewControllerAnimated:YES completion:^{
        NSLog(@"Close me done");
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
