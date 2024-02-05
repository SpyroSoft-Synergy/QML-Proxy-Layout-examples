import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import QtQuick.Controls.Material 2.12

ExamplePage {
    id: root

    signal exampleRequested(int exampleType)

    Material.theme: Material.Light
    Material.accent: Material.Indigo

    title: qsTr("Proxy layouts examples")
    backButtonVisible: false

    enum Pages {
        ButtonExample,
        NavigationExample
    }

    ListView {
        id: contentList

        topMargin: 30
        bottomMargin: 30

        anchors {
            fill: parent
            leftMargin: 80
            rightMargin: 80
        }

        model: ListModel {
            ListElement {
                text: qsTr("Button example")
                type: MenuPage.ButtonExample
            }
            ListElement {
                text: qsTr("Navigation example")
                type: MenuPage.NavigationExample
            }
        }

        delegate: Button {
            width: ListView.view.width
            text: model.text

            onClicked: {
                root.exampleRequested(model.type)
            }
        }
    }
}
