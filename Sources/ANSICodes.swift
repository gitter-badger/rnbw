// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this
// file, You can obtain one at http://mozilla.org/MPL/2.0/.

/// A dictionary assigning each of the colours an ANSI code for foreground
/// colours.
let textColorCodes = [
    "black": 30,
    "red": 31,
    "green": 32,
    "yellow": 33,
    "blue": 34,
    "magenta": 35,
    "cyan": 36,
    "white": 37,
]

/// A dictionary assigning each of the colours an ANSI code for background
/// colours.
let backgroundColorCodes = [
    "black": 40,
    "red": 41,
    "green": 42,
    "yellow": 43,
    "blue": 44,
    "magenta": 45,
    "cyan": 46,
    "white": 47,
]

/// A dictionary assigning each of the styles an ANSI code.
let styleCodes = [
    "reset": 0,
    "bold": 1,
    "italic": 3,
    "underline": 4,
    "blink": 5,
    "inverse": 7,
    "strikethrough": 9,
    "boldOff": 22,
    "italicOff": 23,
    "underlineOff": 24,
    "blinkOff": 25,
    "inverseOff": 27,
    "strikethroughOff": 29,
]

/// The escape prefix for working with ANSI escapes.
let escape = "\u{001B}["
