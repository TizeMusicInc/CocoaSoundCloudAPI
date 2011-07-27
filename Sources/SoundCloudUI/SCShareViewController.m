/*
 * Copyright 2010, 2011 nxtbgthng for SoundCloud Ltd.
 * 
 * Licensed under the Apache License, Version 2.0 (the "License"); you may not
 * use this file except in compliance with the License. You may obtain a copy of
 * the License at
 * 
 * http://www.apache.org/licenses/LICENSE-2.0
 * 
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
 * WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
 * License for the specific language governing permissions and limitations under
 * the License.
 *
 * For more information and documentation refer to
 * http://soundcloud.com/api
 * 
 */


#import "SCRecordingSaveViewController.h"


#import "SCShareViewController.h"

@interface SCShareViewController ()
- (SCRecordingSaveViewController *)recordSaveController;
@end


@implementation SCShareViewController

#pragma mark Class methods

+ (SCShareViewController *)shareViewControllerWithFileURL:(NSURL *)aFileURL
                                        completionHandler:(SCSharingViewControllerComletionHandler)aCompletionHandler;
{
    SCRecordingSaveViewController *recView = [[SCRecordingSaveViewController new] autorelease];
    if (!recView) return nil;
    
    [recView setFileURL:aFileURL];
    [recView setCompletionHandler:aCompletionHandler];
    
    SCShareViewController *shareViewController = [[SCShareViewController alloc] initWithRootViewController:recView];
    if (shareViewController) {
        shareViewController.navigationBarHidden = YES;
    }
    return [shareViewController autorelease];
}

+ (SCShareViewController *)shareViewControllerWithFileData:(NSData *)someData
                                         completionHandler:(SCSharingViewControllerComletionHandler)aCompletionHandler;
{
    SCRecordingSaveViewController *recView = [[SCRecordingSaveViewController new] autorelease];
    if (!recView) return nil;
    
    [recView setFileData:someData];
    [recView setCompletionHandler:aCompletionHandler];
    
    SCShareViewController *shareViewController = [[SCShareViewController alloc] initWithRootViewController:recView];
    if (shareViewController) {
        shareViewController.navigationBarHidden = YES;
    }
    return [shareViewController autorelease];
}


#pragma mark Accessors

- (void)setAccount:(SCAccount *)anAccount;
{
    [self.recordSaveController setAccount:anAccount];
}

- (void)setPrivate:(BOOL)isPrivate;
{
    [self.recordSaveController setPrivate:isPrivate];
}

- (void)setCoverImage:(UIImage *)aCoverImage;
{
    [self.recordSaveController setCoverImage:aCoverImage];
}

- (void)setTitle:(NSString *)aTitle;
{
    [self.recordSaveController setTitle:aTitle];
}

- (SCRecordingSaveViewController *)recordSaveController;
{
    return (SCRecordingSaveViewController *)self.topViewController;
}

#pragma mark Foursquare

- (void)setFoursquareClientID:(NSString *)aClientID
                 clientSecret:(NSString *)aClientSecret;
{
    [self.recordSaveController setFoursquareClientID:aClientID
                                        clientSecret:aClientSecret];
}

@end