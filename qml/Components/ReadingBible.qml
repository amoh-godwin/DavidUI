import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12
import QtGraphicalEffects 1.12

Component {


    Rectangle {
        width: parent.width
        height: parent.height

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

        Rectangle { // NavBar
            id: nav
            width: parent.width
            height: 48
            color: "dodgerblue"
            layer.enabled: true
            layer.effect: DropShadow {
                anchors.fill: nav
                verticalOffset: 1
                radius: 8
                samples: 17
                color: "#75000000"
                source:nav
            }

        }


    }


}
