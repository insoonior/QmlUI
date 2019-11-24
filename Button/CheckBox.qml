﻿/**********************************************************
 * Author: Qt君
 * 微信公众号: Qt君(首发)
 * Website: qtbig.com(后续更新)
 * Email:  2088201923@qq.com
 * QQ交流群: 732271126
 * LISCENSE: MIT
 ************************************************************/
import QtQuick 2.0
import QtQuick.Controls 2.0

CheckBox {
    id: root

    property color checkedColor: "#0ACF97"

    text: qsTr("CheckBox")

    hoverEnabled: true
    indicator: Rectangle {
        x: root.leftPadding
        anchors.verticalCenter: parent.verticalCenter
        width: 26; height: width
        antialiasing: true
        radius: 5
        border.width: 2
        border.color: root.checkedColor

        Rectangle {
            anchors.centerIn: parent
            width: parent.width*0.7; height: width
            antialiasing: true
            radius: parent.radius * 0.7
            color: {
                if (checked)
                    return checkedColor

                if (hovered)
                    return "#BDC3C7"

                return "#00000000"
            }
            visible: {
                if (checked)
                    return true

                if (hovered)
                    return true

                return false
            }
            opacity: visible

            Behavior on opacity {
                NumberAnimation {
                    duration: 250
                }
            }
        }
    }
}
