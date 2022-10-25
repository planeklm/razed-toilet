# Toilet by Razed
**Hello FiveM community!👋**\
We have created a simple toilet script for qbcore framework which utilizes interact-sound and dpemotes.
You use your 3rd-eye (qb-target default) to interact with a toilet and you start peeing or pooing. If you finish peeing or pooing you relieve stress, however if you cancel you gain stress.

![RazedsToiletsThumbnail](https://user-images.githubusercontent.com/91488137/197804515-a7143732-861f-4e4e-a8e5-3fc3c3d4581f.png)

**Features:**

* Fully Open-Source
* Customizable
* Custom sounds
* Easy to configure

# Preview
https://user-images.githubusercontent.com/91488137/197402197-9337e2f2-a6a6-44ed-8717-210d2cd87af5.mp4

# How To Install
* Drag and drop `razed-toilet`
* In your `server.cfg` add `ensure razed-toilet`
* In `sounds` drag `Pee.ogg` to `interact-sound/client/html/sounds`
* In `sounds` drag `Poo.ogg` to `interact-sound/client/html/sounds`

# Dependencies
[qb-core](https://github.com/qbcore-framework/qb-core)\
[qb-target](https://github.com/qbcore-framework/qb-target)\
[interact-sound](https://github.com/qbcore-framework/interact-sound)\
[dpemotes](https://github.com/andristum/dpemotes)

# Config
```
Config = {}

Config.Status = '^5Version 1.0 - Up to date!'
Config.TargetDistance = 1.5 -- third eye target distance

Config.relieveStress = 15
Config.gainStress = 10

Config.Toilets = {
    `prop_ld_toilet_01`,
    `prop_toilet_02`,
    `prop_toilet_01`,
}
```


# Credits
FiveToes - Idea and props\
KLM - Coding, etc
