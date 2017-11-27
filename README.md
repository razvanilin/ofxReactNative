# oFReactNative
**openFrameworks + React Native allowing you to use RN to make beautiful interfaces without native code while allowing you to make oF views for more fancy stuff.**

**NOTE:** This only works on iOS at the moment. Android support coming soonish.

## Set it up

Download openFrameworks for iOS (this is made with v0.9.8): http://openframeworks.cc/versions/v0.9.8/of_v0.9.8_ios_release.zip

Make sure you have NodeJS and npm installed.

```
cd of_v0.9.8_ios_release/apps/myApps
git clone https://github.com/razvanilin/oFReactNative.git
cd oFReactNative
npm install
```

Now open the project in Xcode and run it. The process should start the terminal to bundle the JS application and once both building and bundling process are done you should see the RN view from where you can switch to an OF view.

## Renaming the project

Follow this guide for the iOS native project: https://stackoverflow.com/questions/33370175/how-do-i-completely-rename-an-xcode-project-i-e-inclusive-of-folders

To change the RN project name: (Make sure the react packager is not running in a terminal)

* Change the name in `package.json`
* change the name in `app.json`
* change the component name in both `index.<os>.js`

`AppRegistry.registerComponent('oFReactNative', () => App);`
`AppRegistry.registerComponent('newAppName', () => App);`

* change the name of the module in `AppDelegate.m`:

```
CTRootView *rootView = [[RCTRootView alloc] initWithBundleURL:jsCodeLocation
                                                      moduleName:@"newAppName"
                                               initialProperties:nil
                                                   launchOptions:launchOptions];
```
