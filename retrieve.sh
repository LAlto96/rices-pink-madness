#!/bin/sh
if [ -d ".config/" ]
then
    rm -r .config/
    echo ".config removed"
fi

if [ -d ".obsidian/" ]
then
    rm -r .obsidian/
    echo ".obsidian removed"
fi

if [ -d "vscode/" ]
then
    rm -r vscode/
    echo "vscode removed"
fi
echo
echo "Creating directory..."
mkdir .config/
mkdir .config/waybar
mkdir .config/kitty
mkdir .config/river
mkdir .obsidian
mkdir .obsidian/snippets
mkdir vscode
echo "Success !"
echo

echo "Copying waybar config..."
cp ~/.config/waybar/config .config/waybar/config
cp ~/.config/waybar/style.css .config/waybar/style.css
echo "Success !"
echo

echo "Copying kitty config..."
cp ~/.config/kitty/kitty.conf .config/kitty/kitty.conf
echo "Success !"
echo

echo "Copying obsidian snippets..."
cp ~/Documents/'Obisidian Main Vault'/.obsidian/snippets/font.css .obsidian/snippets/font.css
cp ~/Documents/'Obisidian Main Vault'/.obsidian/snippets/text.css .obsidian/snippets/text.css
echo "Success !"
echo

echo "Copying river config..."
cp ~/.config/river/init .config/river/init
echo "Success !"
echo

echo "Copying VSCode Theme Extension..."
cp ~/Documents/Rices/pink_madness/vscode/pink-madness/pink-madness-0.0.1.vsix vscode/pink-madness-0.0.1.vsix
echo "Success !"