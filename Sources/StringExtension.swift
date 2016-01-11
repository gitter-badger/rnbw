// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this
// file, You can obtain one at http://mozilla.org/MPL/2.0/.

public extension String {
    public func setTextColor(textColor: Color) -> String {
        return paint(self, textColor: textColor)
    }

    public func setBackgroundColor(backgroundColor: Color) -> String {
        return paint(self, backgroundColor: backgroundColor)
    }

    public func setStyle(style: Style) -> String {
        return paint(self, style: style)
    }
}
