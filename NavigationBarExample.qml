import QtQuick
import QtQuick.Layouts
import QtQuick.Controls
import QtQuick.Controls.Material 2.12

ExamplePage {
    id: root

    title: qsTr("Navigation")

    Material.theme: Material.Light
    Material.accent: Material.Indigo

    Rectangle {
        color: "#4646be"
    }

    RowLayout {
        id: bottomLayout

        Item {
            id: leftSpacer
            Layout.fillWidth: true
        }

        LayoutItemProxy {
            target: homeButton
        }

        LayoutItemProxy {
            target: settingsButton
        }

        Item {
            id: rightSpacer
            Layout.fillWidth: true
        }
    }

    Button {
        id: homeButton
    }

    Button {
        id: settingsButton
    }
}
