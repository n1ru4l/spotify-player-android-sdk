# spotify-player-android-sdk

## What?

Provides spotify-android-sdk in a maven repository via npm.

## Why?

There is currently no official spotify-android-sdk distribution avaiable via maven.

## How to use with my app

1. add `@n1ru4l/spotify-player-android-sdk` to the `dependencies` of your project

e.g. `yarn add -D -E @n1ru4l/spotify-player-android-sdk`

2. Modify your `build.gradle` file to add a new local maven repository

e.g.

```diff
allprojects {
    repositories {
        mavenLocal()
+       maven {
+           // Local Maven repo containing AARs with JSC library built for Android
+           url "$rootDir/../node_modules/@n1ru4l/spotify-player-android-sdk/dist"
+       }
    }
}
```

3. Add library to your dependencies section in your `build.gradle`

```diff
dependencies {
+ compile 'com.thirdparty.spotify-player:'
}
```

## Additional

The dirstributed binary and all rights associated with it belong to spotify. 
