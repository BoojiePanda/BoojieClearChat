# BoojieClearChat

BoojieClearChat is a lightweight World of Warcraft addon that clears the currently selected chat tab. When ElvUI is installed, it also removes the cleared messages from ElvUI's saved chat history so they do not return after reloading the UI or logging back in.

## Installation

1. Download `BoojieClearChat-1.2.1.zip` from the [latest release](https://github.com/BoojiePanda/BoojieClearChat/releases/latest).
2. Extract the ZIP into your World of Warcraft `_retail_/Interface/AddOns` directory.
3. Confirm the resulting folder is named `BoojieClearChat`.
4. Restart World of Warcraft or enable **BoojieClearChat** from the AddOns menu.

The release ZIP already contains the correctly named addon folder, so no renaming is required.

## Commands

Use either slash command to clear the selected chat tab:

```text
/clearchat
/clear
```

## ElvUI Support

If ElvUI chat history is enabled, BoojieClearChat removes saved entries matching the message types shown in the selected chat tab. Other chat tabs and unrelated message types are left alone.

ElvUI is optional. Without ElvUI, the addon still clears the selected chat tab normally.

## Compatibility

- World of Warcraft: Retail
- Interface version: `120100`
- Addon version: `1.2.1`

## Author

Created by **BoojiePanda (SilverRavyn)**.
