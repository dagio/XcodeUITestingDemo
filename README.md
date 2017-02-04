# XcodeUITestingDemo

Execute the following :

```
bundle install
bundle exec fastlane test
```

You should get...

```
[17:39:20]: ▸ All tests
[17:39:20]: ▸ Test Suite UITests.xctest started
[17:39:20]: ▸ UITests
[17:39:29]: ▸ ✓ test001 (8.090 seconds)
[17:39:35]: ▸ ✓ test002 (6.639 seconds)
[17:39:42]: ▸ ✓ test003 (6.897 seconds)
[17:39:49]: ▸ ✓ test004 (6.552 seconds)
[17:39:56]: ▸ ✓ test005 (7.060 seconds)
[17:40:02]: ▸ ✓ test006 (6.588 seconds)
[17:40:09]: ▸ ✓ test007 (6.554 seconds)
[17:40:16]: ▸ ✓ test008 (6.898 seconds)
[17:40:22]: ▸ ✓ test009 (6.746 seconds)
[17:40:29]: ▸ ✓ test010 (6.798 seconds)
[17:40:36]: ▸ ✓ test011 (6.599 seconds)
[17:40:42]: ▸ ✓ test012 (6.400 seconds)
[17:40:49]: ▸ ✓ test013 (6.450 seconds)
[17:40:55]: ▸ ✓ test014 (6.406 seconds)
[17:41:02]: ▸ ✓ test015 (7.201 seconds)
[17:41:09]: ▸ ✓ test016 (6.439 seconds)
[17:41:15]: ▸ ✓ test017 (6.450 seconds)
[17:41:22]: ▸ ✓ test018 (6.400 seconds)
[17:41:28]: ▸ ✓ test019 (6.401 seconds)
[17:41:35]: ▸ ✓ test020 (6.549 seconds)
[17:41:41]: ▸ ✓ test021 (6.546 seconds)
[17:41:48]: ▸ ✓ test022 (6.550 seconds)
[17:41:54]: ▸ ✓ test023 (6.449 seconds)
[17:42:01]: ▸ ✓ test024 (6.500 seconds)
[17:42:07]: ▸ ✓ test025 (6.454 seconds)
[17:42:14]: ▸ ✓ test026 (6.543 seconds)
[17:42:20]: ▸ ✓ test027 (6.501 seconds)
[17:42:37]: ▸ ✗ test028, UI Testing Failure - Failure attempting to launch <XCUIApplicationImpl: 0x6180000357e0 demo.XcodeUITesting at /Volumes/Develop/GitRepos/dagio/XcodeUITestingDemo/DerivedData/Build/Products/Debug-iphonesimulator/Project.app>: Error Domain=FBSOpenApplicationServiceErrorDomain Code=1 "The request to open "demo.XcodeUITesting" failed." UserInfo={NSLocalizedDescription=The request to open "demo.XcodeUITesting" failed., NSLocalizedFailureReason=The request was denied by service delegate (SBMainWorkspace) for reason: Busy ("Application "demo.XcodeUITesting" is installing or uninstalling, and cannot be launched")., BSErrorCodeDescription=RequestDenied, NSUnderlyingError=0x618000254b20 {Error Domain=FBSOpenApplicationErrorDomain Code=6 "Application "demo.XcodeUITesting" is installing or uninstalling, and cannot be launched." UserInfo={BSErrorCodeDescription=Busy, NSLocalizedFailureReason=Application "demo.XcodeUITesting" is installing or uninstalling, and cannot be launched.}}}
```

😢
