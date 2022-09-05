# Lists
Include all the lists that you need for the Assembly stuff here.

If there are more than 1 list for a specific category, create a sub directory, add all your lists in there, then create one on the root that includes the lists from the directory.

## Example
Let's take the sound folder as an example:
- We have IDs for the Soundtracks
- We have IDs for the Jingles
- We have IDs for the Samples

So with that, create a folder like `sound`, then add them all with an extension like `.inc` and set them up like this:
```arm
	.set NAME, 0x0
```

Then in the root file just do:
```arm
    .include "data/lists/sound/soundtrack.inc"
	@ ... for all the files inside that directory.
```

***The names should be unique, or it may potentially cause naming conflicts.***