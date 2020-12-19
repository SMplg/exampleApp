import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.14
import QtQuick.Dialogs 1.3
import "mmmfunc.js" as Fff


Window {
    id: mainWindow
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello New World")

    Column {
        spacing: 15
        padding: 15

        TextField {
            width: mainWindow.width - 30
            placeholderText: "path/folder"
            text: fd.fileUrls[0]
        }



        Button {
            id: btn1
            text: "Open"
            onClicked: {
                fd.open()
                Fff.textFunc("ttt", id1, id2, id3, id4)
            }
        }

        FileDialog {
            id: fd
            selectFolder : true
        }


        TextField {
            id: id1
            width: mainWindow.width - 30
        }

        TextField {
            id: id2
            width: mainWindow.width - 30
        }

        TextField {
            id: id3
            width: mainWindow.width - 30
        }

        Button {
            id: id4
            onClicked: {
                console.log ("open new window")
                modalW.show()
            }
        }

        ApplicationWindow {
            id: modalW
            width: 500
            height: 300
            modality: Qt.ApplicationModal

            MyCheckBoxes {}
        }
    }



}
