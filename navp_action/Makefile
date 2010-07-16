
.PHONY: nav_pcontroller_all
nav_pcontroller_all: .genaction all

include $(shell rospack find mk)/cmake.mk

.genaction: action/nav_action.action
	rosrun actionlib genaction.py `rospack find navp_action` nav_action.action
	touch .genaction
