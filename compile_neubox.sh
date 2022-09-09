#!/bin/bash
# set -e # Disabled for manual error catching

# Compile app
{ # try
	echo "Building synth..."
	npm run build-synth
	echo "Building player..."
	npm run build-player
	echo "Building client..."
	npm run build-client
} || { # catch
	echo "[ERROR] An error occurred while building."
	exit 1
}

echo ""
{
echo "Formatting Unix executables..."
mv ./dist/NeuBox/NeuBox-mac_x64 ./dist/NeuBox/NeuBox-mac_x64.app
} || {
	echo "[NOTICE] Mac executable could not be renamed due to being missing or already renamed."
}
{
	chmod +x ./dist/NeuBox/NeuBox-mac_x64.app
	chmod +x ./dist/NeuBox/NeuBox-linux_x64
} || {
	echo "[WARNING] An error occurred while marking binaries as executables."
}



# Package app for all platforms
userInput="?"
while [ $userInput == "?" ]
do
	echo "Package app? (Requires extra software; Creates archive distributables as seen on GitHub) [Y/n/?]"
	read userInput
	userInput=$(echo "$userInput" | tr '[:upper:]' '[:lower:]')
	echo ""
	if [[ $userInput == "?" ]]
	then
		echo "NeuBox's build process can automatically pacakge binaries and assets for distribution."
		echo "This requires 7-Zip to be installed to make archives for Windows and Mac. Linux archives are built with tar."
		echo "On Windows with Git Bash, 7-Zip is looked for in C:\\Program Files\\7-zip\\ and C:\\Program Files (x86)\\7-zip."
		echo "On Unix systems (Linux and MacOS), a 7z executable (p7zip or 7-Zip Linux) is expected to be in your PATH."
		echo ""
	fi
done

if [ $userInput == "n" ]
then
	echo "Archives not built."
else
	echo "Building archives..."
	if [ "/c/Program Files/7-Zip/7z.exe" ]
	then
		sevenZPath="/c/Program Files/7-Zip/7z.exe"
	elif [ "/c/Program Files/7-Zip/7z.exe" ]
	then
		sevenZPath="/c/Program Files/7-Zip/7z.exe"
	elif [ "7z" ]
	then
		sevenZPath="7z"
	else
		sevenZPath="none"
		echo "[ERROR] 7-Zip not found. Please install 7-Zip or p7zip to build archivess."
	fi
	if [ "$sevenZPath" == "none" ]
	then
		echo "Archives not built."
	else
		echo "Building archives in ./dist/NeuBox/archives..."
		{
			"$sevenZPath" a -tzip ./dist/NeuBox/archives/NeuBox-win_x64.zip ./dist/NeuBox/NeuBox-win_x64.exe ./dist/NeuBox/WebView2Loader.dll ./dist/NeuBox/resources.neu
			"$sevenZPath" a -tzip ./dist/NeuBox/archives/NeuBox-mac_x64.zip ./dist/NeuBox/NeuBox-mac_x64.app ./dist/NeuBox/resources.neu
			"$sevenZPath" a -ttar ./dist/NeuBox/archives/NeuBox-linux_x64.tar ./dist/NeuBox/NeuBox-linux_x64 ./dist/NeuBox/resources.neu
			"$sevenZPath" a -tgzip ./dist/NeuBox/archives/NeuBox-linux_x64.tar.gz ./dist/NeuBox/archives/NeuBox-linux_x64.tar
			rm ./dist/NeuBox/archives/NeuBox-linux_x64.tar
			echo "Archives built."
		} || {
			echo "[ERROR] An error occurred while building archives. Archives not built."
		}
	fi
fi

echo "Build completed successfully."
exit 0