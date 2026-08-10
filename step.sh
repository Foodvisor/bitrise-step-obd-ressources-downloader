#!/bin/bash
set -ex
git clone git@github.com:Foodvisor/obd-json-downloader.git
xcodebuild -project obd-json-downloader/resources-downloader.xcodeproj -configuration Release
obd-json-downloader/build/Release/resources-downloader -command "resources-downloader" -mail "${mail}" -password "${password}" -env "${env}" -version "${version}" -lang "${lang}"
