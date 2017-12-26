import QtQuick 2.9
import QtQuick.Controls 2.2

import "qrc:/util/qml/"
import "qrc:/strings/CoreStrings.js" as CStr
import "qrc:/settings/strings/SettingsStrings.js" as Str

Rectangle{
    id: mLauncherPillar
    color: CStr.transparent

    FontLoader {
        id: fontRadioSpace
        source: CStr.fontRadioSpace
    }

    Image {
        id: imgSettings
        source: CStr.imgSettings
        sourceSize.width: parent.width/2
        sourceSize.height: parent.height/2
        anchors.horizontalCenter: parent.horizontalCenter
        scale: 1
        antialiasing: true
    }

    ScrollView {
        id: mScrollView
        clip: true
        width: parent.width
        height: parent.height - imgSettings.height
        padding: Str.padding
        anchors.top: imgSettings.bottom
        ScrollBar.vertical.policy: ScrollBar.AsNeeded
        ScrollBar.horizontal.policy: ScrollBar.AlwaysOff
        ScrollBar.vertical.interactive: true
        Text {
            text: Str.settingsStrings
            width: mScrollView.width - Str.padding
            wrapMode: TextArea.Wrap
            font.pixelSize: Str.fontSize
        }
    }
}
