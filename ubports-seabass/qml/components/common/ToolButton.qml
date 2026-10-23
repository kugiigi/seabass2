import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Controls.Suru 2.2
import QtQuick.Layouts 1.3

import '.' as CustomComponents

ToolButton {
  id: root
  focusPolicy: Qt.NoFocus
  property string iconName
  hoverEnabled: true
  display: AbstractButton.IconOnly

  CustomComponents.Icon {
    anchors.centerIn: parent
    name: root.iconName
  }

  ToolTip.delay: 1000
  ToolTip.visible: root.text && hovered
  ToolTip.text: root.text
}
