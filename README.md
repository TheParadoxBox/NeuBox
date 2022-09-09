# NeuBox

NeuBox is BeepBox repackaged as a desktop application.

NeuBox is currently in very early development. More awesomeness coming soon.

Go throw money at John Nesky/Shaktool, the incredible creator of BeepBox: [PayPal](https://www.paypal.com/cgi-bin/webscr?cmd=_donations&business=QZJTX9GRYEV9N&currency_code=USD)

BeepBox is developed by [John Nesky](http://www.johnnesky.com/).
NeuBox is developed by TheParadoxBox. I don't have a fancy website.

## Compiling

The source code is available under the MIT license. The code is written in
[TypeScript](https://www.typescriptlang.org/) with the [Neutralino](https://neutralino.js.org)
library, both requiring [node & npm](https://www.npmjs.com/get-npm),
so install those first.
Then to build this project, open the command line and run:

```
git clone https://github.com/TheParadoxBox/NeuBox.git
cd NeuBox
npm install
npm run build
```

## Code

The code is divided into several folders.

The [synth/](synth) folder has just the code you need to be able to play BeepBox
songs out loud, and you could use this code in your own projects, like a web
game. After compiling the synth code, open website/synth_example.html to see a
demo using it. To rebuild just the synth code, run:

```
npm run build-synth
```

The [editor/](editor) folder has additional code to display the song editor
interface. Building the online editor is deprecated, however, and may not work.
If for some reason you still want to build the online editor, run:

```
npm run build-editor
```

To build the desktop editor, run:

```
npm run build-client
```

The [player/](player) folder has a miniature song player interface for embedding
on other sites. To rebuild just the player code, run:

```
npm run build-player
```

The [website/](website) folder contains index.html files to view the interfaces.
The build process outputs JavaScript files into this folder.

## Dependencies

Most of the dependencies are listed in [package.json](package.json), although
I'd like to note that NeuBox also has an indirect, optional dependency on
[lamejs](https://www.npmjs.com/package/lamejs) via
[jsdelivr](https://www.jsdelivr.com/) for exporting .mp3 files. If the user
attempts to export an .mp3 file, BeepBox will direct the browser to download
that dependency on demand.
