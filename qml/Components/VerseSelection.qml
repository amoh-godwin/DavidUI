import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12
import "../others"

Component {

    Rectangle {

        Rectangle {
            anchors.fill: parent
        }

        NavBar {

            RowLayout {
                //width: parent.width
                height: parent.height

                ToolButton {
                    text: qsTr("<-")

                    onClicked: stack.pop()

                }

                Text {
                    text: qsTr("Books")
                }

            }

        }

    }

}
