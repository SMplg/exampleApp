import QtQuick 2.14
import QtQuick.Controls 2.14


Column {

    ButtonGroup {
        id: childGroup
        exclusive: false
        checkState: parentBox.checkState
    }

    CheckBox {
        id: parentBox
        text: qsTr("ALL")
        checkState: childGroup.checkState
    }

    CheckBox {
        text: qsTr("Child 1")
        ButtonGroup.group: childGroup
    }

    CheckBox {
        text: qsTr("Child 1")
        ButtonGroup.group: childGroup
    }

    CheckBox {
        text: qsTr("Child 1")
        ButtonGroup.group: childGroup
    }

}
