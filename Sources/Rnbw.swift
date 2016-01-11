// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this
// file, You can obtain one at http://mozilla.org/MPL/2.0/.

/// Represents the eight available colours in ANSI escape sequences.
public enum Color {
    case Black
    case Red
    case Green
    case Yellow
    case Blue
    case Magenta
    case Cyan
    case White
    // case Fixed(Int8) For future 256 colour support
}

/// Represents the different types styling that can be used with ANSI escape
/// codes.
public enum Style {
    case Reset
    case Bold
    case Italic
    case Underline
    case Blink
    case Inverse
    case Strikethrough
}

func getEscapeCode(textColor textColor: Color) -> String {
    switch textColor {
    case .Black: return escape + String(textColorCodes["black"]!) + "m"
    case .Red: return escape + String(textColorCodes["red"]!) + "m"
    case .Green: return escape + String(textColorCodes["green"]!) + "m"
    case .Yellow: return escape + String(textColorCodes["yellow"]!) + "m"
    case .Blue: return escape + String(textColorCodes["blue"]!) + "m"
    case .Magenta: return escape + String(textColorCodes["magenta"]!) + "m"
    case .Cyan: return escape + String(textColorCodes["cyan"]!) + "m"
    case .White: return escape + String(textColorCodes["white"]!) + "m"
    }
}

func getEscapeCode(backgroundColor backgroundColor: Color) -> String {
    switch backgroundColor {
    case .Black: return escape + String(backgroundColorCodes["black"]!) + "m"
    case .Red: return escape + String(backgroundColorCodes["red"]!) + "m"
    case .Green: return escape + String(backgroundColorCodes["green"]!) + "m"
    case .Yellow: return escape + String(backgroundColorCodes["yellow"]!) + "m"
    case .Blue: return escape + String(backgroundColorCodes["blue"]!) + "m"
    case .Magenta: return escape + String(backgroundColorCodes["magenta"]!) + "m"
    case .Cyan: return escape + String(backgroundColorCodes["cyan"]!) + "m"
    case .White: return escape + String(backgroundColorCodes["white"]!) + "m"
    }
}

func getEscapeCode(style style: Style) -> String {
    switch style {
    case .Reset: return escape + String(styleCodes["reset"]!) + "m"
    case .Bold: return escape + String(styleCodes["bold"]!) + "m"
    case .Italic: return escape + String(styleCodes["italic"]!) + "m"
    case .Underline: return escape + String(styleCodes["underline"]!) + "m"
    case .Blink: return escape + String(styleCodes["blink"]!) + "m"
    case .Inverse: return escape + String(styleCodes["inverse"]!) + "m"
    case .Strikethrough: return escape + String(styleCodes["strikethrough"]!) + "m"
    }
}

/// Change the colour of the text, background or style in a string.
public func paint(string: String, textColor: Color? = nil,
                  backgroundColor: Color? = nil, style: Style? = nil)
                  -> String {
    var paintedString = string

    if textColor != nil {
        paintedString = getEscapeCode(textColor: textColor!) + string
    }
    if backgroundColor != nil {
        paintedString = getEscapeCode(backgroundColor: backgroundColor!) + paintedString
    }
    if style != nil {
        paintedString = getEscapeCode(style: style!) + paintedString
    }

    return paintedString + getEscapeCode(style: .Reset)
}
