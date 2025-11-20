
I simply want to create an app with a sidebar and customizable toolbar, but making a new window or tab crashes the app.

Been a macOS dev since 1988 and it's been buggy since day one and it's only getting worse. I'm attempting to migrate my Cocoa app to swiftUI and can't even get a basic window working

I'm on Tahoe at the moment.

SwiftUI for macOS is a total disaster.

code: https://github.com/sgehrman/SwiftUIAppBugs

Please help.


// -------------------------------------------
// Bug
    
NavigationSplitView crashs if you have a customizable toolbar 

Run the app, make a new window or tab and the app crashes

// Other bugs

I've notice lots of other bugs in the toolbar, but let's get this crash resolved first.
The quality of swiftUI is a huge disappointment.


// -------------------------------------------
// crash

Unable to obtain a task name port right for pid 477: (os/kern) failure (0x5)
*** Assertion failure in -[NSToolbar _insertNewItemWithItemIdentifier:atIndex:propertyListRepresentation:notifyFlags:], NSToolbar.m:1678
FAULT: NSInternalInconsistencyException: NSToolbar 0x8481c5040 already contains an item with the identifier com.apple.SwiftUI.navigationSplitView.toggleSidebar. Duplicate items of this type are not allowed.; {
    NSAssertFile = "NSToolbar.m";
    NSAssertLine = 1678;
}
NSToolbar 0x8481c5040 already contains an item with the identifier com.apple.SwiftUI.navigationSplitView.toggleSidebar. Duplicate items of this type are not allowed.
(
    0   CoreFoundation                      0x000000019d2c98dc __exceptionPreprocess + 176
    1   libobjc.A.dylib                     0x000000019cda2418 objc_exception_throw + 88
    2   Foundation                          0x000000019f40d22c _userInfoForFileAndLine + 0
    3   AppKit                              0x00000001a22b4ec8 -[NSToolbar _insertNewItemWithItemIdentifier:atIndex:propertyListRepresentation:notifyFlags:] + 236
    4   AppKit                              0x00000001a22b6bac __51-[NSToolbar _notifyFamily_InsertedNewItem:atIndex:]_block_invoke + 196
    5   AppKit                              0x00000001a22b67dc _enumerateToolbarsInFamily + 260
    6   AppKit                              0x00000001a22b4a70 -[NSToolbar _insertItem:atIndex:notifyDelegate:notifyView:notifyFamilyAndUpdateDefaults:] + 736
    7   AppKit                              0x00000001a22b4f54 -[NSToolbar _insertNewItemWithItemIdentifier:atIndex:propertyListRepresentation:notifyFlags:] + 376
    8   SwiftUI                             0x00000001d1db2528 $s7SwiftUI21AppKitToolbarStrategyV06updateE033_AD2B7B901055957F5DF53C1A628EFE2DLLSbyFSbAA0E6BridgeCyACG_AA0E0O13UpdateContextVtXEfU_ + 4116
    9   SwiftUI                             0x00000001d1bcbc40 $s7SwiftUI15ToolbarStrategyPAAE10withUpdateyqd__qd__AA0C6BridgeCyxG_AA0C0O0F7ContextVtXElFAA06AppKitcD0V_SbTg5 + 380


// -------------------------------------------
// When running the app in the debugger there is a constant stream of errors and warnings that no one at Apple cared to fix.
// some examples of log messages when debugging
// doing a simple drag and drop when customizing toolbar

Unable to obtain a task name port right for pid 477: (os/kern) failure (0x5)
Ignoring request to entangle context after pre-commit
Ignoring request to entangle context after pre-commit
Ignoring request to entangle context after pre-commit
Entangling fence requested after pre-commit
cannot add handler to 2 from 2 - dropping
Warning: Invalid attempt to open a new transaction during CA commit. This is likely to break AppKit transactional behavior. Break on NSCGSTransactionCreatedDuringCommitError to debug.

