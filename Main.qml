import QtQuick
import QtQuick.Controls

Window {
    id: root
    width: 800
    height: 640
    visible: true
    title: qsTr("Hello World")

    StackView {
        id: mainStack
        anchors.fill: parent
        initialItem: menuPageComponent
    }

    Component {
        id: menuPageComponent
        MenuPage {
            onExampleRequested: function (exampleType) {
                switch (exampleType) {
                case MenuPage.ButtonExample:
                    mainStack.push(buttonExampleComponent)
                    break
                }
            }
        }
    }

    Component {
        id: buttonExampleComponent

        ButtonExample {
            onBackButtonPressed: {
                mainStack.pop()
            }
        }
    }
}
