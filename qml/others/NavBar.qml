import QtQuick 2.12
import QtQuick.Controls 2.12
import QtGraphicalEffects 1.12



Rectangle { // NavBar

    property int mainHeight: 48
    property color background: "dodgerblue"

    id: nav
    width: parent.width
    height: mainHeight
    layer.enabled: true
    layer.effect: DropShadow {
        anchors.fill: nav
        verticalOffset: 1
        radius: 8
        samples: 17
        color: "#75000000"
        source:nav
    }

    ToolBar {
        background: Rectangle {
            color: background
        }

        anchors.fill: parent

    }


}
