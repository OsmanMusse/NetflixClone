/*
 * Copyright 2019 Google
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

/** The class represents a result of the auth token request. */
NS_SWIFT_NAME(InstallationsAuthTokenResult)
@interface FIRInstallationsAuthTokenResult : NSObject

/** The authorization token string. */
@property(nonatomic, readonly) NSString *authToken;

/** The auth token expiration date. */
@property(nonatomic, readonly) NSDate *expirationDate;

@end

NS_ASSUME_NONNULL_END
