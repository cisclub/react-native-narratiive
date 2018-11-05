
# react-native-narratiive

## Getting started

`$ npm install react-native-narratiive --save`
or
`$ yarn add react-native-narratiive`

### Mostly automatic installation

`$ react-native link react-native-narratiive`

### Manual installation


#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `react-native-narratiive` and add `RNNarratiive.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libRNNarratiive.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<

#### Android

1. Open up `android/app/src/main/java/[...]/MainActivity.java`
  - Add `import com.shukerullah.narratiive.RNNarratiivePackage;` to the imports at the top of the file
  - Add `new RNNarratiivePackage()` to the list returned by the `getPackages()` method
2. Append the following lines to `android/settings.gradle`:
  	```
  	include ':react-native-narratiive'
  	project(':react-native-narratiive').projectDir = new File(rootProject.projectDir, 	'../node_modules/react-native-narratiive/android')
  	```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
  	```
      compile project(':react-native-narratiive')
  	```


## Usage
```javascript
import { Platform } from "react-native";
import Narratiive from "react-native-narratiive";

// Valid top level domain
const domain = "";

// Android application name ([a-z0-9]-) e.g. "em-survey-app".
// There should not be any spaces in the App Name.
const appName = "";

// Content descriptor like news, sport, video, etc.
// If not required an empty string can be used as the method argument.
const content = "";

// SDK Key provided by Narratiive
const key = "";

// Secure (https) measurement required
const isSecureMod = true;

function initialize() {
  if (Platform.OS === "ios") {
    Narratiive.configure(APP_NAME, TLD, PRODUCT_KEY);
    Narratiive.trackDefault();
  } else {
    Narratiive.initialize(TLD, APP_NAME, "news", PRODUCT_KEY, true);
  }
}
```
