//
//  JTAppDelegate.m
//  XIBFontReplace
//
//  Created by Jason Terhorst on 8/17/14.
//  Copyright (c) 2014 Jason Terhorst. All rights reserved.
//

#import "JTAppDelegate.h"

#import "JTFontReplacer.h"

@implementation JTAppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
	// Insert code here to initialize your application
}

- (IBAction)selectDirectory:(id)sender
{
	NSOpenPanel * directoryPanel = [NSOpenPanel openPanel];
	[directoryPanel setCanChooseDirectories:YES];
	[directoryPanel setCanChooseFiles:NO];
	[directoryPanel setAllowsMultipleSelection:NO];

	if ([directoryPanel runModal] == NSFileHandlingPanelOKButton)
	{
		NSURL * selectedURL = [directoryPanel URL];
		NSDirectoryEnumerator * directoryEnumerator = [[NSFileManager defaultManager] enumeratorAtURL:selectedURL includingPropertiesForKeys:@[NSURLNameKey, NSURLIsDirectoryKey] options:NSDirectoryEnumerationSkipsHiddenFiles errorHandler:nil];
		for (NSURL * fileURL in directoryEnumerator)
		{
			if ([[fileURL.absoluteString pathExtension] isEqualToString:@"xib"])
			{
				NSLog(@"file: %@", fileURL);
				JTFontReplacer * fontReplacer = [[JTFontReplacer alloc] init];
				[fontReplacer replaceSystemFontWithFontString:@"AvenirNext-DemiBold" familyName:@"Avenir Next" inFileAtURL:fileURL];
				[fontReplacer replaceBoldSystemFontWithFontString:@"AvenirNext-Bold" familyName:@"Avenir Next" inFileAtURL:fileURL];
				[fontReplacer replaceItalicSystemFontWithFontString:@"AvenirNext-DemiBoldItalic" familyName:@"Avenir Next" inFileAtURL:fileURL];
			}
		}
	}
}

@end
