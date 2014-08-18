//
//  JTFontReplacer.h
//  XIBFontReplace
//
//  Created by Jason Terhorst on 8/17/14.
//  Copyright (c) 2014 Jason Terhorst. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JTFontReplacer : NSObject

- (void)replaceSystemFontWithFontString:(NSString *)stringFontName familyName:(NSString *)stringFamilyName inFileAtURL:(NSURL *)fileURL;
- (void)replaceBoldSystemFontWithFontString:(NSString *)stringFontName familyName:(NSString *)stringFamilyName inFileAtURL:(NSURL *)fileURL;
- (void)replaceItalicSystemFontWithFontString:(NSString *)stringFontName familyName:(NSString *)stringFamilyName inFileAtURL:(NSURL *)fileURL;

@end
