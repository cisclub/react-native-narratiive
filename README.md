# react-native-narratiive

## Getting started

```
yarn add react-native-share
react-native link react-native-share # not needed for react-native >= 0.60.0
```

or if you're using npm

```
npm install react-native-share --save
react-native link react-native-share # not needed for react-native >= 0.60.0
```

## iOS

This will not add the library (libEmTracker.a) to your project. So you will have to add it manually. Also add library search path to target

## Manual install

### iOS Install

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `react-native-narratiive` and add `RNNarratiive.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libRNNarratiive.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)

### Android Install

1. Open up `android/app/src/main/java/[...]/MainApplication.java`

   - Add `import com.shukerullah.narratiive.RNNarratiivePackage;` to the imports at the top of the file
   - Add `new RNNarratiivePackage()` to the list returned by the `getPackages()` method

2. Append the following lines to `android/settings.gradle`:

   ```
   include ':react-native-narratiive'
   project(':react-native-narratiive').projectDir = new File(rootProject.projectDir, '../node_modules/react-native-narratiive/android')
   ```

3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
   ```
     compile project(':react-native-narratiive')
   ```
