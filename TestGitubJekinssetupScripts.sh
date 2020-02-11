#!/bin/bash

xcrun simctl shutdown all
xcrun simctl erase all
xcrun simctl list
xcodebuild clean build  -scheme TestGitubJekinssetup -sdk iphonesimulator

xcodebuild clean build  -scheme TestGitubJekinssetup -sdk iphoneos archive -archivePath TestGitubJekinssetup.xcarchive DEVELOPMENT_TEAM=6X2QPMDZB2 

xcodebuild -exportArchive -archivePath TestGitubJekinssetup.xcarchive -exportPath . -TestGitubJekinssetupexportOptions.plist

