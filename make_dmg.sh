xcodebuild ARCHS=x86_64 ONLY_ACTIVE_ARCH=NO clean build -destination 'platform=macOS' -project "launcher.xcodeproj"

rm -rf build/Release/Mysterium\ Launcher.app.dSYM
mv build/Release/ build/MysteriumLauncher
ln -s /Applications build/MysteriumLauncher/Applications

#hdiutil create -format UDZO -srcfolder build/MysteriumLauncher mysterium_launcher_macos_amd64.dmg

