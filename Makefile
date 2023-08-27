# Filename: Makefile
# Copyright (C) 2012 Olivier Sirol <czo@free.fr>
# License: GPL (http://www.gnu.org/copyleft/gpl.html)
# Started: Jan 2012
# Last Change: mardi 28 mars 2017, 22:14
# Edit Time: 2:49:36
# Description:
#               Makefile is the best (i know) 
# $Id: $
#

APK = flashweb
GRADLE = ./gradlew
#GRADLE = gradle

release:
	$(GRADLE) assembleRelease
	cp app/build/outputs/apk/app-release.apk ../$(APK)-release-`date +%Y%m%d`.apk
	@echo "<- done!"

debug:
	$(GRADLE) assembleDebug
	@echo "<- done!"

clean:
	$(GRADLE) clean
	rm -fr build app/build
	rm -fr captures
	rm -fr .idea/workspace.xml .idea/libraries
	@echo "<- done!"

realclean: clean
	rm -fr .gradle gradle
	rm -fr local.properties
	@echo "<- done!"
