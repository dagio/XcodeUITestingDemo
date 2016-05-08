# XcodeUITestingFail

I trusted you Xcode UI Tests, I trusted you and you failed me.

I made a simple project to try out Xcode's UI Test, an empty view controller, embedded in a navigation controller, with a `+` button.

Pressing the `+` button shows an alert view controller with one option. Pressing that option changes something in the controller.

Now I wanted to check if the change in the controller was successfull. Fuck no, you need at least 3 workarounds to make this possible.
