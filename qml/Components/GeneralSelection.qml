import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12
import "../others"

Component {
    //

    ColumnLayout {
        width: parent.width
        height: parent.height

        Rectangle {// banner
            Layout.fillWidth: true
            Layout.preferredHeight: 248

            Image {
                sourceSize.width: parent.width
                sourceSize.height: parent.height
                fillMode: Image.PreserveAspectCrop
                source: "../../images/blueberries.jpg"
            }

            Text {
                anchors.bottom: parent.bottom
                anchors.left: parent.left
                anchors.leftMargin: 12
                anchors.bottomMargin: 12
                text: qsTr("David Study Bible App")
                font.family: "Segoe UI Semilight"
                font.pixelSize: 30
                color: "white"
            }

        }

        Rectangle {
            Layout.fillWidth: true
            Layout.fillHeight: true
            color: "#ffcccc"

            GridLayout {
                anchors.fill: parent
                anchors.margins: 4
                columns: 3
                rowSpacing: 4
                columnSpacing: 4

                GeneralCard {
                    bg_image: "../../images/car.jpg"
                    title: "Rate Us"
                }

                GeneralCard {
                    bg_image: "../../images/car.jpg"
                    title: "Reading Bible"

                    onClick: stack.push(readingBible)

                }

                GeneralCard {
                    bg_image: "../../images/car.jpg"
                    title: "Daily Verse"
                }

                GeneralCard {
                    bg_image: "../../images/car.jpg"
                    title: "Search Bible"
                }

                GeneralCard {
                    bg_image: "../../images/car.jpg"
                    title: "Settings"
                }

                GeneralCard {
                    bg_image: "../../images/car.jpg"
                    title: "Contact Us"
                }

            }

        }

    }

}
