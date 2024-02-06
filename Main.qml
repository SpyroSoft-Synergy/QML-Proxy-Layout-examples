import QtQuick
import QtQuick.Controls

Window {
    id: root
    width: 800
    height: 640
    visible: true
    title: qsTr("QML Proxy Layouts examples")

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
                case MenuPage.NavigationExample:
                    mainStack.push(navigationExampleComponent)
                    break
                case MenuPage.DynamicCreationExample:
                    mainStack.push(dynamicCreationExampleComponent)
                    break
                case MenuPage.RtlExample:
                    mainStack.push(rtlExampleComponent)
                    break
                case MenuPage.DualLayoutAntiExample:
                    mainStack.push(dualLayoutAntiExampleComponent)
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

    Component {
        id: navigationExampleComponent

        NavigationBarExample {
            onBackButtonPressed: {
                mainStack.pop()
            }
        }
    }

    Component {
        id: dynamicCreationExampleComponent

        DynamicCreationExample {
            onBackButtonPressed: {
                mainStack.pop()
            }
        }
    }

    Component {
        id: rtlExampleComponent

        RtlSupportExample {
            onBackButtonPressed: {
                mainStack.pop()
            }
        }
    }

    Component {
        id: dualLayoutAntiExampleComponent

        DualLayoutExample {
            onBackButtonPressed: {
                mainStack.pop()
            }
        }
    }
}
