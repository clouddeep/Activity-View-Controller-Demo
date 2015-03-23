This is for demo that display ActivityViewController.

If you have nil parameter for applicationActivities:

```
self.activityViewController = [[UIActivityViewController alloc] initWithActivityItems:@[self.textField.text] applicationActivities:nil];
```

You will just have "Email" and "Copy" option in emulator.

