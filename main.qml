import QtQuick 2.5
import QtQuick.Window 2.2
import QtGraphicalEffects 1.0
import QtQuick.Controls 2.0
import QtQuick.Controls.Styles 1.4
Window {
    id: mainWindow
    visible: true
    width: 360
    height: 60
    title: qsTr("Hello World")
    flags: Qt.Window | Qt.FramelessWindowHint | Qt.WindowStaysOnTopHint
    color: "#00000000"
    //阴影承载体
    Rectangle{
        id: mainShadow
        x: 5
        y: 5
        width: 350
        height: 50
        //标题栏
        Rectangle{
            id: titleBar
            x: 0
            y: 0
            width: parent.width
            height: 22
            color: "#f0f0f0"
            MouseArea {
                anchors.fill: parent
                acceptedButtons: Qt.LeftButton
                property point clickPosition : "0,0"
                onHoveredChanged: {
                    cursorShape = Qt.SizeAllCursor
                }
                onPressed: {
                    clickPosition = Qt.point(mouse.x,mouse.y)

                }
                onPositionChanged: {
                    var delta = Qt.point(mouse.x - clickPosition.x, mouse.y - clickPosition.y)
                    mainWindow.setX(mainWindow.x + delta.x)
                    mainWindow.setY(mainWindow.y + delta.y)
                }
            }
            //Logo
            Text {
                id: appLogo
                width: 30
                height: 22
                color: "#000000"
                font.family: "FontAwesome"
                font.pixelSize: 14
                text: "\uf0c4"
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }
            //标题
            Text{
                id: appTitle
                width: 160
                height: 22
                color: "#000000"
                font.family: "Microsoft YaHei"
                font.pixelSize: 12
                text: qsTr("Little Capture 截屏大师")
                horizontalAlignment: Text.AlignRight
                verticalAlignment: Text.AlignVCenter
                renderType: Text.NativeRendering
            }
            //最小化按钮
            Button{
                id: miniSizeButton
                x: parent.width - 40
                y: 2
                width: 18
                height: 18
                font.family: "FontAwesome"
                font.pixelSize: 10
                text: "\uf068"
                background: Rectangle{
                    id: miniSizeButtonColor
                    color: "#f0f0f0"
                }
                MouseArea{
                    anchors.fill: parent
                    acceptedButtons: Qt.LeftButton
                    hoverEnabled: true
                    onClicked: {
                        mainWindow.showMinimized()
                    }
                    onEntered: {
                        miniSizeButtonColor.color = "#d0d0d0"
                    }
                    onExited: {
                        miniSizeButtonColor.color = "#f0f0f0"
                    }
                }
            }
            //关闭按钮
            Button{
                id: closeButton
                x: parent.width - 20
                y: 2
                width: 18
                height: 18
                font.family: "FontAwesome"
                font.pixelSize: 10
                text: "\uf00d"
                background: Rectangle{
                    id: closeButtonColor
                    color: "#f0f0f0"
                }
                MouseArea{
                    anchors.fill: parent
                    acceptedButtons: Qt.LeftButton
                    hoverEnabled: true
                    onClicked: {
                        Qt.quit()
                    }
                    onEntered: {
                        closeButtonColor.color = "#d0d0d0"
                    }
                    onExited: {
                        closeButtonColor.color = "#f0f0f0"
                    }
                }
            }
        }
        //工具栏
        Rectangle{
            id: content
            x: 0
            y: 22
            width: parent.width
            height: 28
            color: "#fefefe"
            //打开文件并编辑按钮
            Button{
                id: openFile
                x: 2
                y: 2
                width: 24
                height: 24
                font.family: "FontAwesome"
                font.pixelSize: 14
                text: "\uf07c"
                background: Rectangle{
                    id: openFileColor
                    color: "#fefefe"
                }
                MouseArea{
                    anchors.fill: parent
                    acceptedButtons: Qt.LeftButton
                    hoverEnabled: true
                    onClicked: {

                    }
                    onEntered: {
                        openFileColor.color = "#dedede"
                    }
                    onExited: {
                        openFileColor.color = "#fefefe"
                    }
                }
            }
            //捕获活动窗口
            Button{
                id: activeWindowCapture
                x: 26
                y: 2
                width: 24
                height: 24
                font.family: "FontAwesome"
                font.pixelSize: 14
                text: "\uf2d0"
                background: Rectangle{
                    id: activeWindowCaptureColor
                    color: "#fefefe"
                }
                MouseArea{
                    anchors.fill: parent
                    acceptedButtons: Qt.LeftButton
                    hoverEnabled: true
                    onClicked: {

                    }
                    onEntered: {
                        activeWindowCaptureColor.color = "#dedede"
                    }
                    onExited: {
                        activeWindowCaptureColor.color = "#fefefe"
                    }
                }
            }
            //捕获窗体对象
            Button{
                id: objectWindowCapture
                x: 50
                y: 2
                width: 24
                height: 24
                font.family: "FontAwesome"
                font.pixelSize: 14
                text: "\uf2d2"
                background: Rectangle{
                    id: objectWindowCaptureColor
                    color: "#fefefe"
                }
                MouseArea{
                    anchors.fill: parent
                    acceptedButtons: Qt.LeftButton
                    hoverEnabled: true
                    onClicked: {

                    }
                    onEntered: {
                        objectWindowCaptureColor.color = "#dedede"
                    }
                    onExited: {
                        objectWindowCaptureColor.color = "#fefefe"
                    }
                }
            }
            //捕获矩形区域
            Button{
                id: rectCapture
                x: 74
                y: 2
                width: 24
                height: 24
                font.family: "FontAwesome"
                font.pixelSize: 14
                text: "\uf125"
                background: Rectangle{
                    id: rectCaptureColor
                    color: "#fefefe"
                }
                MouseArea{
                    anchors.fill: parent
                    acceptedButtons: Qt.LeftButton
                    hoverEnabled: true
                    onClicked: {

                    }
                    onEntered: {
                        rectCaptureColor.color = "#dedede"
                    }
                    onExited: {
                        rectCaptureColor.color = "#fefefe"
                    }
                }
            }
            //捕获手绘区域
            Button{
                id: drawCapture
                x: 98
                y: 2
                width: 24
                height: 24
                font.family: "FontAwesome"
                font.pixelSize: 14
                text: "\uf005"
                background: Rectangle{
                    id: drawCaptureColor
                    color: "#fefefe"
                }
                MouseArea{
                    anchors.fill: parent
                    acceptedButtons: Qt.LeftButton
                    hoverEnabled: true
                    onClicked: {

                    }
                    onEntered: {
                        drawCaptureColor.color = "#dedede"
                    }
                    onExited: {
                        drawCaptureColor.color = "#fefefe"
                    }
                }
            }
            //捕获全屏区域
            Button{
                id: fullScreenCapture
                x: 122
                y: 2
                width: 24
                height: 24
                font.family: "FontAwesome"
                font.pixelSize: 14
                text: "\uf0b2"
                background: Rectangle{
                    id: fullScreenCaptureColor
                    color: "#fefefe"
                }
                MouseArea{
                    anchors.fill: parent
                    acceptedButtons: Qt.LeftButton
                    hoverEnabled: true
                    onClicked: {

                    }
                    onEntered: {
                        fullScreenCaptureColor.color = "#dedede"
                    }
                    onExited: {
                        fullScreenCaptureColor.color = "#fefefe"
                    }
                }
            }
            //捕获滚动窗口
            Button{
                id: scrollCapture
                x: 146
                y: 2
                width: 24
                height: 24
                font.family: "FontAwesome"
                font.pixelSize: 14
                text: "\uf149"
                background: Rectangle{
                    id: scrollCaptureColor
                    color: "#fefefe"
                }
                MouseArea{
                    anchors.fill: parent
                    acceptedButtons: Qt.LeftButton
                    hoverEnabled: true
                    onClicked: {

                    }
                    onEntered: {
                        scrollCaptureColor.color = "#dedede"
                    }
                    onExited: {
                        scrollCaptureColor.color = "#fefefe"
                    }
                }
            }
            //捕获固定区域
            Button{
                id: fixedCapture
                x: 170
                y: 2
                width: 24
                height: 24
                font.family: "FontAwesome"
                font.pixelSize: 14
                text: "\uf275"
                background: Rectangle{
                    id: fixedCaptureColor
                    color: "#fefefe"
                }
                MouseArea{
                    anchors.fill: parent
                    acceptedButtons: Qt.LeftButton
                    hoverEnabled: true
                    onClicked: {

                    }
                    onEntered: {
                        fixedCaptureColor.color = "#dedede"
                    }
                    onExited: {
                        fixedCaptureColor.color = "#fefefe"
                    }
                }
            }
            //录制视频
            Button{
                id: videoCapture
                x: 194
                y: 2
                width: 24
                height: 24
                font.family: "FontAwesome"
                font.pixelSize: 14
                text: "\uf03d"
                background: Rectangle{
                    id: videoCaptureColor
                    color: "#fefefe"
                }
                MouseArea{
                    anchors.fill: parent
                    acceptedButtons: Qt.LeftButton
                    hoverEnabled: true
                    onClicked: {

                    }
                    onEntered: {
                        videoCaptureColor.color = "#dedede"
                    }
                    onExited: {
                        videoCaptureColor.color = "#fefefe"
                    }
                }
            }
            //定时捕获
            Button{
                id: timeoutCapture
                x: 218
                y: 2
                width: 24
                height: 24
                font.family: "FontAwesome"
                font.pixelSize: 14
                text: "\uf017"
                background: Rectangle{
                    id: timeoutCaptureColor
                    color: "#fefefe"
                }
                MouseArea{
                    anchors.fill: parent
                    acceptedButtons: Qt.LeftButton
                    hoverEnabled: true
                    onClicked: {

                    }
                    onEntered: {
                        timeoutCaptureColor.color = "#dedede"
                    }
                    onExited: {
                        timeoutCaptureColor.color = "#fefefe"
                    }
                }
            }
            //间歇捕获
            Button{
                id: intervalCapture
                x: 242
                y: 2
                width: 24
                height: 24
                font.family: "FontAwesome"
                font.pixelSize: 14
                text: "\uf248"
                background: Rectangle{
                    id: intervalCaptureColor
                    color: "#fefefe"
                }
                MouseArea{
                    anchors.fill: parent
                    acceptedButtons: Qt.LeftButton
                    hoverEnabled: true
                    onClicked: {

                    }
                    onEntered: {
                        intervalCaptureColor.color = "#dedede"
                    }
                    onExited: {
                        intervalCaptureColor.color = "#fefefe"
                    }
                }
            }
            //间歇捕获
            Button{
                id: getColor
                x: 266
                y: 2
                width: 24
                height: 24
                font.family: "FontAwesome"
                font.pixelSize: 14
                text: "\uf2c7"
                background: Rectangle{
                    id: getColorColor
                    color: "#fefefe"
                }
                MouseArea{
                    anchors.fill: parent
                    acceptedButtons: Qt.LeftButton
                    hoverEnabled: true
                    onClicked: {

                    }
                    onEntered: {
                        getColorColor.color = "#dedede"
                    }
                    onExited: {
                        getColorColor.color = "#fefefe"
                    }
                }
            }
            //屏幕放大
            Button{
                id: enlarge
                x: 290
                y: 2
                width: 24
                height: 24
                font.family: "FontAwesome"
                font.pixelSize: 14
                text: "\uf00e"
                background: Rectangle{
                    id: enlargeColor
                    color: "#fefefe"
                }
                MouseArea{
                    anchors.fill: parent
                    acceptedButtons: Qt.LeftButton
                    hoverEnabled: true
                    onClicked: {

                    }
                    onEntered: {
                        enlargeColor.color = "#dedede"
                    }
                    onExited: {
                        enlargeColor.color = "#fefefe"
                    }
                }
            }
            //屏幕放大
            Button{
                id: menu
                x: 314
                y: 2
                width: 34
                height: 24
                font.family: "FontAwesome"
                font.pixelSize: 14
                text: "\uf0c9"
                background: Rectangle{
                    id: menuColor
                    color: "#fefefe"
                }
                MouseArea{
                    anchors.fill: parent
                    acceptedButtons: Qt.LeftButton
                    hoverEnabled: true
                    onClicked: {

                    }
                    onEntered: {
                        menuColor.color = "#dedede"
                    }
                    onExited: {
                        menuColor.color = "#fefefe"
                    }
                }


            }



        }
    }
    DropShadow{
          anchors.fill: parent
          horizontalOffset: 0
          verticalOffset: 0
          radius: 8
          anchors.rightMargin: -5
          anchors.bottomMargin: -5
          anchors.leftMargin: 5
          anchors.topMargin: 5
          samples: 18
          color: "#000000"
          source: mainShadow
      }
}
