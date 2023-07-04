#!/bin/bash
set -ex
git clone git@github.com:Foodvisor/obd-json-downloader.git
xcodebuild -project obd-json-downloader/obd-json-downloader.xcodeproj -configuration Release
obd-json-downloader/build/Release/obd-json-downloader -mail "${mail}" -password "${password}"