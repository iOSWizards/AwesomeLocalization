# AwesomeLocalization

[![CI Status](http://img.shields.io/travis/eharrison/AwesomeLocalization.svg?style=flat)](https://travis-ci.org/eharrison/AwesomeLocalization)
[![Version](https://img.shields.io/cocoapods/v/AwesomeLocalization.svg?style=flat)](http://cocoapods.org/pods/AwesomeLocalization)
[![License](https://img.shields.io/cocoapods/l/AwesomeLocalization.svg?style=flat)](http://cocoapods.org/pods/AwesomeLocalization)
[![Platform](https://img.shields.io/cocoapods/p/AwesomeLocalization.svg?style=flat)](http://cocoapods.org/pods/AwesomeLocalization)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

AwesomeLocalization is a private pod, only available through the address below.

```ruby
pod 'AwesomeLocalization', git: 'https://github.com/mindvalley/Mobile_iOS_Library_AwesomeLocalization.git', tag: '0.1.4'
```

## Updating the code

As we are installing the Library with CocoaPods, we have to follow a few steps to make sure it will update in our project(s).

### Editing the Library

**Important:** Before beginning, make sure you are working on the **MASTER** branch.

Make sure you open the project in the following path:

```ruby
AwesomeLocalization/Example/AwesomeLocalization.xcworkspace
```

XCode will open with 2 projects:
- **AwesomeLocalization** (your project configuration and usage example)
- **Pods** (your pod file classes)

All of the files that will be imported to our projects with cocoapods are in the following path

```ruby
Pods/Development Pods/AwesomeLocalization/AwesomeLocalization/Classes
```

Pick yours, edit it and be happy. Oh well, before being too happy, move to **Creating a new version for the Pod file** session to create a new version of the code.

### Testing the Library

Sometimes, you need to test your code before deploying a new version.
For any test, you can use the **Example for AwesomeLocalization**.
All of the files created here will not be imported to our projects, so don't worry, be free to test it as if it was one of our projects.

### Creating a new version for the Pod file

Ok, so for starters, you have to work on the changes you wanted to make, right? Otherwise there is no point in creating a new version! ;)
*(Only proceed once you are ready to deploy)*

1 - Navigate to file:

```ruby
AwesomeLocalization/Podspec Metadata/AwesomeLocalization.podspec
```

2 - Change the **s.version** by summing 1 to the end:

```ruby
//if version 0.1.3, the new version should be 0.1.4
//if version 0.1.9, the new version should be 0.2.0
```

3 - Edit the **README.md** file with the new version:

```ruby
//update tag to match the current version
pod 'AwesomeLocalization', git: 'https://github.com/mindvalley/Mobile_iOS_Library_AwesomeLocalization.git', tag: '0.1.0'
```

4 - Commit your changes to **MASTER**

5 - Create a new branch with the new version name. Push the new branch.

6 - In your project, update the Podfile to match the new AwesomeLocalization version.

7 - Run **pod install** and be happy :)

## Author

eharrison, evandro@itsdayoff.com

## License

AwesomeLocalization is available under the MIT license. See the LICENSE file for more info.
