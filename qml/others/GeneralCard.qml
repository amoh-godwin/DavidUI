import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12

Rectangle {
    Layout.fillWidth: true
    Layout.fillHeight: true
    property url bg_image: ""
    property string title: ""

    signal click()

    Label {
        anchors.centerIn: parent
        text: qsTr(title)
        horizontalAlignment: Text.AlignHCenter
        //color: "white"

    }

    MouseArea {
        anchors.fill: parent

        hoverEnabled: true

        onEntered: cursorShape = Qt.PointingHandCursor

        onPressed: click()

    }

}
