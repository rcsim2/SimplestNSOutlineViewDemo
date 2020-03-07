//
//  ViewController.m
//  SimplestNSOutlineViewDemo
//
//  Created by Rik Goossens on 06/03/2020.
//  Copyright © 2020 Rik Goossens. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


// See:
// http://www.cocoasteam.com/?p=41
// http://www.cocoasteam.com/?p=65
// https://stackoverflow.com/questions/29724404/what-to-return-from-tableviewobjectvaluefortablecolumnrow

// Method #1: Entry point
- (NSInteger)outlineView:(NSOutlineView *)outlineView numberOfChildrenOfItem:(id)item {
    return 3;
}

// Method #2
- (id)outlineView:(NSOutlineView *)outlineView child:(NSInteger)index ofItem:(id)item {
    return [NSObject new];
}

// Method #3
- (BOOL)outlineView:(NSOutlineView *)outlineView isItemExpandable:(id)item {
    return YES;
}

// Method #4
// NOTE: this one only gets called for Cell Based outline view
// Attributes Inspector -> Table View -> Content Mode -> Cell Based
// SUCKS: nowhere in Apple's docs is this made clear.
// And of course don't forget to bind dataSource and delegate to View Conroller
- (id)outlineView:(NSOutlineView *)outlineView objectValueForTableColumn:(NSTableColumn *)tableColumn byItem:(id)item {
    return [NSString stringWithFormat:@"Object Addr: %p", item];
}

// Method#4
// NOTE: this one gets called for View Based outline view
//- (id)outlineView:(NSOutlineView *)outlineView viewForTableColumn:(NSTableColumn *)tableColumn item:(id)item {
//    return nil;
//}


@end
