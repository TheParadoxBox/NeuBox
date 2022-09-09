# NeuBox Roadmap

NeuBox is not done. For as long as Shak is making updates to BeepBox and the source code is still accessible, NeuBox will never be done. Besides maintenance, though, there's other things I want to implement in the future, too. Here's a roadmap so that you can know where NeuBox has gone and where it is going. Everything here is subject to change.

## Milestone 0: Making the Damn Thing Work
### Major version 0 (alpha) will focus on making NeuBox fully usuable.

- [X] Port BeepBox to Neutralino
- [X] Automatic build process
- [ ] WIP: Clean up unneeded parts of code (mobile, browser, etc.)
- [ ] Change branding to NeuBox
- [ ] Save preferences
- [ ] File saving component not based on WebKit implementation
- [ ] Link sharing giving beepbox.co link, not localhost
- [ ] Song library? (Possibly save for Update 1)

## Milestone 1: Full release
### Major version 1 will focus on making NeuBox less like a website and more like an app.

- [ ] Clean up `website` folder (separate into `assets`, `build`)
- [ ] Song library if not done in v0
- [ ] Long as default layout
- [ ] Move description and help to separate view
- [ ] NeuBox-specific in-app docs

## Milestone 2: NeuBox J
### Major version 2 will add the popular mod [JummBox](https://jummbus.bitbucket.io) to NeuBox!

- [ ] Mod selector GUI
- [ ] Port JummBox to NeuBox as beta (á la NeuBox 0.1)
- [ ] Clean up JB as in v0 steps 3 through 7
- [ ] Figure out what to do with the song library: shared or separate?
- [ ] Implement v0 step 8 for JummBox

When this is implemented, BeepBox on NeuBox will be called NeuBox B.

## Milestone 3: Future goals
### Ideas for milestones past M2.
- NeuBox G: [GoldBox](https://aurysystem.github.io/goldbox/) in NeuBox
- NeuBox P: [Pandora's Box](https://paandorasbox.github.io/) in NeuBox<br>
	Thurm's [Pandora's BeepBox](https://pandoras-box.thurm64.repl.co/) and [Pandora's JummBox](https://pandoras-box.thurm64.repl.co/pandoras-jummbox.html) probably won't be coming due to the different architecture (they store samples in a database on a server). If there is going to be a custom sample version of NeuBox P, it will use locally stored samples. I'll probably make it myself, based on the original Pandora's Box.
- Web version of NeuBox<br>	
	Yes, weird idea, I know. However, a unified BeepBox home page of sorts would be a nice thing to have. This could actually be implemented as a separate sister project, providing a NeuBox-style interface to store and play your songs that is lighter than playing them on the website.
- NeuBox W: [WackyBox](https://bluecatgamer.github.io/Wackybox/) in NeuBox<br>
	😮
- Tell Shak to put a link to the BeepBox Discord on https://beepbox.co/