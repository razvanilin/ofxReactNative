# oFReactNative
**openFrameworks + React Native allowing you to use RN to make beautiful interfaces without native code while allowing you to make oF views for more fancy stuff.**

**NOTE:** This only works on iOS at the moment. Android support coming soonish.

## Set it up

Download openFrameworks for iOS (this is made with v0.9.8): http://openframeworks.cc/versions/v0.9.8/of_v0.9.8_osx_release.zip

Make sure you have NodeJS and npm installed.

```
cd of_v0.9.8_ios_release/apps/myApps
git clone https://github.com/razvanilin/oFReactNative.git
cd oFReactNative
npm install
```

Now open the project in Xcode and run it. The process should start the terminal to bundle the JS application and once both building and bundling process are done you should see the RN view from where you can switch to an OF view.
