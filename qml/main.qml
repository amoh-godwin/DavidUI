import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.5
import "Components"

ApplicationWindow {
    visible: true
    width: 800
    height: 600
    title: qsTr('Study Bible App')

    StackView {
        anchors.fill: parent
        initialItem: frontPage
    }

    GeneralSelection {
        id: frontPage
    }

}
