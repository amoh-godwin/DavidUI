import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12
import QtGraphicalEffects 1.12
import "../others"

Component {


    Rectangle {

        Rectangle {
            anchors.fill: parent

            SwipeView {
                anchors.fill: parent
                currentIndex: 0

                Rectangle {
                    color: "teal"
                }

                Rectangle {
                    color: "indigo"
                }

            }

        }

        NavBar {

            RowLayout {
                anchors.fill: parent

                ToolButton {
                    text: qsTr("=")

                    onClicked: drawer.open()
                }

                ToolButton {
                    text: qsTr("v")

                    onClicked: stack.push(verseSelection)

                }

                ToolButton {
                    text: qsTr("v")

                    onClicked: stack.push(verseSelection)

                }

                Rectangle {
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                    color: "transparent"
                }

                Row {
                    ToolButton {
                        text: qsTr("NKJV")
                    }

                    ToolButton {
                        text: qsTr(":")
                    }
                }




            }

        }

    }


}
