This is for demo that display ActivityViewController.

If you have nil parameter for applicationActivities:

```
self.activityViewController = [[UIActivityViewController alloc] initWithActivityItems:@[self.textField.text] applicationActivities:nil];
```

There would be just "Email" and "Copy" option in emulator. The icons of facebook and twitter will show unless you do log-in in "setting" app of your device.
