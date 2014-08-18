//
//  JTFontReplacer.m
//  XIBFontReplace
//
//  Created by Jason Terhorst on 8/17/14.
//  Copyright (c) 2014 Jason Terhorst. All rights reserved.
//

#import "JTFontReplacer.h"

@implementation JTFontReplacer

- (void)replaceSystemFontWithFontString:(NSString *)stringFontName familyName:(NSString *)stringFamilyName inFileAtURL:(NSURL *)fileURL
{
	NSString * fileContents = [NSString stringWithContentsOfURL:fileURL encoding:NSUTF8StringEncoding error:nil];
	fileContents = [fileContents stringByReplacingOccurrencesOfString:@"fontDescription key=\"fontDescription\" type=\"system\"" withString:[NSString stringWithFormat:@"fontDescription key=\"fontDescription\" name=\"%@\" family=\"%@\"", stringFontName, stringFamilyName]];
	[fileContents writeToURL:fileURL atomically:YES encoding:NSUTF8StringEncoding error:nil];
}

- (void)replaceBoldSystemFontWithFontString:(NSString *)stringFontName familyName:(NSString *)stringFamilyName inFileAtURL:(NSURL *)fileURL
{
	NSString * fileContents = [NSString stringWithContentsOfURL:fileURL encoding:NSUTF8StringEncoding error:nil];
	fileContents = [fileContents stringByReplacingOccurrencesOfString:@"fontDescription key=\"fontDescription\" type=\"boldSystem\"" withString:[NSString stringWithFormat:@"fontDescription key=\"fontDescription\" name=\"%@\" family=\"%@\"", stringFontName, stringFamilyName]];
	[fileContents writeToURL:fileURL atomically:YES encoding:NSUTF8StringEncoding error:nil];
}

- (void)replaceItalicSystemFontWithFontString:(NSString *)stringFontName familyName:(NSString *)stringFamilyName inFileAtURL:(NSURL *)fileURL
{
	NSString * fileContents = [NSString stringWithContentsOfURL:fileURL encoding:NSUTF8StringEncoding error:nil];
	fileContents = [fileContents stringByReplacingOccurrencesOfString:@"fontDescription key=\"fontDescription\" type=\"italicSystem\"" withString:[NSString stringWithFormat:@"fontDescription key=\"fontDescription\" name=\"%@\" family=\"%@\"", stringFontName, stringFamilyName]];
	[fileContents writeToURL:fileURL atomically:YES encoding:NSUTF8StringEncoding error:nil];
}

@end
