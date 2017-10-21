navSize = 25
padding = 2
navColor = 'black'
closeColor = 'white'
# base background
base = new PageComponent
	size: Screen.size
base.states =
	default:
		backgroundColor: 'white'
	close:
		backgroundColor: 'black'
nav = new Layer
# top
paperTop = new Layer
	x: padding
	y: padding
	width: navSize
	height: 1
	backgroundColor: navColor
	parent: nav
paperTop.states =
	default:
		y: padding
		rotation: 0
		backgroundColor: navColor
		animationOptions:
			time: 0.1
	close:
		y: navSize/2
		rotation: 45
		backgroundColor: closeColor
		animationOptions:
			time: 0.5
# middle
paperMiddle = new Layer
	x: padding
	y: navSize/2
	width: navSize
	height: 1
	backgroundColor: navColor
	parent: nav
paperMiddle.states =
	default:
		x: padding
		width: navSize
		backgroundColor: navColor
		animationOptions:
			time: 0.1
	close:
		x: navSize/2
		width: 0
		backgroundColor: closeColor
		animationOptions:
			time: 0.5
# bottom
paperBottom = new Layer
	x: padding
	y: navSize - padding
	width: navSize
	height: 1
	backgroundColor: navColor
	parent: nav
paperBottom.states =
	default:
		y: navSize - padding
		rotation: 0
		backgroundColor: navColor
		animationOptions:
			time: 0.1
	close:
		y: navSize/2
		rotation: -45
		backgroundColor: closeColor
		animationOptions:
			time: 0.5
# animation
nav.onTap (event) ->
	paperTop.stateCycle()
	paperBottom.stateCycle()
	paperMiddle.stateCycle()
	base.stateCycle()
