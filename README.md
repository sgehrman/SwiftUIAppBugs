
I simply want to create an app with a sidebar and customizable toolbar, but making a new window or tab crashes the app.  If you remove the id: from .toolbar it works.  But I need a customizable toolbar (I'm updating a popular app that has had a customizable toolbar since 2001). So don't tell me "You'll just have to turn off customization".  Not an option, I need a solution, send undocumented hacks or whatever it takes.

Been a macOS dev since 1988 and it's been buggy since day one and it's only getting worse. I'm attempting to migrate my Cocoa app to swiftUI and can't even get a basic window working

I'm on Tahoe at the moment.

SwiftUI for macOS is a total disaster.

code: https://github.com/sgehrman/SwiftUIAppBugs

Please help.


 # Bug
    
NavigationSplitView crashs if you have a customizable toolbar 

Run the app, make a new window or tab and the app crashes

# Other bugs

I've notice lots of other bugs in the toolbar, but let's get this crash resolved first.
The quality of swiftUI is a huge disappointment.


 # crash

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


# Other
When running the app in the debugger there is a constant stream of errors and warnings that no one at Apple cared to fix.
some examples of log messages when debugging
doing a simple drag and drop when customizing toolbar

Unable to obtain a task name port right for pid 477: (os/kern) failure (0x5)
Ignoring request to entangle context after pre-commit
Ignoring request to entangle context after pre-commit
Ignoring request to entangle context after pre-commit
Entangling fence requested after pre-commit
cannot add handler to 2 from 2 - dropping
Warning: Invalid attempt to open a new transaction during CA commit. This is likely to break AppKit transactional behavior. Break on NSCGSTransactionCreatedDuringCommitError to debug.

# xcode also crashes constantly

Application Specific Signatures:
!editorDocument || ![editorDocument isClosing]

Thread 0 Crashed::  Dispatch queue: com.apple.main-thread
0   libsystem_kernel.dylib                   0x19d1a35b0 __pthread_kill + 8
1   libsystem_pthread.dylib                  0x19d1dd888 pthread_kill + 296
2   libsystem_c.dylib                        0x19d0e2850 abort + 124
3   IDEKit                                   0x10af734c8 +[IDEAssertionHandler _handleAssertionWithLogString:assertionSignature:assertionReason:extraBacktrace:] + 964
4   IDEKit                                   0x10af73938 -[IDEAssertionHandler handleFailureInMethod:object:fileName:lineNumber:assertionSignature:messageFormat:arguments:] + 872
5   DVTFoundation                            0x106bd440c _DVTAssertionHandler + 412
6   DVTFoundation                            0x106bd4570 _DVTAssertionFailureHandler + 196
7   IDEKit                                   0x10b7ecd88 -[IDEDocumentController addDocument:].cold.1 + 48
8   IDEKit                                   0x10af65cf4 -[IDEDocumentController addDocument:] + 876
9   IDEKit                                   0x10af578d0 +[IDEDocumentController retainEditorDocument:] + 464
10  IDEKit                                   0x10b4b6288 IDEEditorTab.document.willset + 568
11  IDEKit                                   0x10b4b5fb0 @objc IDEEditorTab.document.setter + 56
12  IDEKit                                   0x10b4b7f8c IDEEditorTab.update(document:historyItem:isInitializingTab:) + 3392
13  IDEKit                                   0x10b4c7d40 IDEEditorTabViewController.updateSelectedTabWithCurrentHistoryItem() + 660
14  IDEKit                                   0x10b4c5d94 IDEEditorTabViewController.closeEditorTabs(_:behavior:) + 3100
15  IDEKit                                   0x10b4bedf8 IDEEditorTabViewController.willCloseDocument(_:isClosingToRevert:replacementURL:selectedTabHistoryItem:) + 7332
16  IDEKit                                   0x10b4bfba0 @objc IDEEditorTabViewController.willCloseDocument(_:isClosingToRevert:replacementURL:selectedTabHistoryItem:) + 232

