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

#import "SCConstants.h"


#pragma mark OAuth2 Configuration

NSString * const kSCAccountType = @"com.soundcloud.api";

NSString * const kSCConfigurationClientID = @"kSCConfigurationClientID";
NSString * const kSCConfigurationSecret = @"kSCConfigurationSecret";
NSString * const kSCConfigurationRedirectURL = @"kSCConfigurationRedirectURL";
NSString * const kSCConfigurationSandbox = @"kSCConfigurationSandbox";
NSString * const kSCConfigurationAPIURL = @"kSCConfigurationAPIURL";
NSString * const kSCConfigurationAuthorizeURL = @"kSCConfigurationAuthorizeURL";
NSString * const kSCConfigurationCustomHeaders = @"kSCConfigurationCustomHeaders";

NSString * const kSCSoundCloudAPIURL = @"https://api.soundcloud.com/";
NSString * const kSCSoundCloudAccessTokenURL = @"https://api.soundcloud.com/oauth2/token";
NSString * const kSCSoundCloudAuthURL = @"https://soundcloud.com/connect";

NSString * const kSCSoundCloudSandboxAPIURL = @"https://api.sandbox-soundcloud.com/";
NSString * const kSCSoundCloudSandboxAccessTokenURL = @"https://api.sandbox-soundcloud.com/oauth2/token";
NSString * const kSCSoundCloudSandboxAuthURL = @"https://sandbox-soundcloud.com/connect";

NSString * const kTermsOfServiceURL = @"http://pages.soundcloud.com/legal/plain/terms-of-use-ios.html?format=ios";
NSString * const kPrivacyPolicyURL  = @"http://pages.soundcloud.com/legal/plain/privacy-policy.html?format=ios";