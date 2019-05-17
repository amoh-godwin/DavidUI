import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12
import "Components"

ApplicationWindow {
    visible: true
    width: 800
    height: 600
    title: qsTr('Study Bible App')

    Drawer {
        id: drawer
        width: parent.width * 0.3
        height: parent.height

        background: Rectangle {
            //
        }

    }

    StackView {
        id: stack
        anchors.fill: parent
        initialItem: frontPage
    }

    GeneralSelection {
        id: frontPage
    }

    ReadingBible {
        id: readingBible
    }

    VerseSelection {
        id: verseSelection
    }

    BookSelection {
        id: bookSelection
    }

}
