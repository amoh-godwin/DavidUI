import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12

Rectangle {
    width: 200
    height: 200

    property url bg_image: ""
    property string title: ""

    signal click()

    Image {
        anchors.fill: parent
        source: bg_image
    }

    Label {
        anchors.bottom: parent.bottom
        text: qsTr(title)
        horizontalAlignment: Text.AlignHCenter
        color: "white"

        background: Rectangle {
            width: parent.width
            color: "#44000000"
        }

    }

    MouseArea {
        anchors.fill: parent

        hoverEnabled: true

        onEntered: cursorShape = Qt.PointingHandCursor

        onPressed: click()

    }

}
