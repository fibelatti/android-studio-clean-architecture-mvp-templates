
# Android Studio Clean Architecture Templates

This is an Android Studio template for apps written in Kotlin, using Clean Architecture, MVP and packaging by feature

## Generated Files Hierarchy

```
src/
├── com.my.package/
│   ├── di/
│   │   ├── component/
│   │   │   ├── AppComponent.kt
│   │   │   ├── BaseFeatureComponent.kt
│   │   │   ├── YourFeatureComponent.kt
│   │   │   └── ...
│   │   ├── module/
│   │   │   ├── AppModule.kt
│   │   │   ├── YourFeatureModule.kt
│   │   │   └── ...
│   │   ├── qualifier/
│   │   │   └── AppQualifier.kt
│   │   └── scope/
│   │   │   ├── AppScope.kt
│   │   │   ├── YourFeatureScope.kt
│   │   │   └── ...
│   └── presentation/
│       ├── base/
│       │   ├── BaseActivity.kt
│       │   ├── BaseContract.kt
│       │   ├── BaseFragment.kt
│       │   ├── BaseIntentBuilder.kt
│       │   ├── BasePresenter.kt
│       │   └── ViewTypeDelegate.kt
│       ├── common/
│       │   ├── AppSchedulerProvider.kt
│       │   ├── ObservableView.kt
│       │   └── SchedulerProvider.kt
│       ├── somefeature/
│       │   ├── YourFeatureActivity.kt
│       │   ├── YourFeatureContract.kt
│       │   ├── YourFeatureFragment.kt
│       │   └── YourFeaturePresenter.kt
│       └── ...
└── res/
    └── layout/
        ├── activity_some_feature.xml
        └── fragment_some_feature.xml

```

## Prerequisites

- Your app **must be** written in Kotlin

- The generated files will be located in the **kotlin source set**
  > app/src/main/kotlin
  
  Add this to your module `build.gradle`
  ```
  sourceSets {
      main.java.srcDirs += 'src/main/kotlin'
  }
  ```

- You must use:
  - `AppCompat` for the base classes
    ```
    implementation "com.android.support:appcompat-v7:$appCompatVersion"
    implementation "com.android.support:design:$designVersion"
    ```
  - **RxJava 2** for the `SchedulerProvider` used in the presenters
    ```
    implementation "io.reactivex.rxjava2:rxjava:$rootProject.ext.rxJavaVersion"
    implementation "io.reactivex.rxjava2:rxandroid:$rootProject.ext.rxAndroidVersion"
    ```
  - **Dagger 2** for dependency injection. `BaseContract`, `BaseActivity` and `BaseFragment` are already implement an easy way of injecting your dependencies
    ```
    implementation "com.google.dagger:dagger:$daggerVersion"
    kapt "com.google.dagger:dagger-compiler:$daggerVersion"
    ```

## Installation

#### For Mac:

1. Copy the `CleanArchitectureMVP` directory to `$ANDROID_STUDIO_FOLDER$/Contents/plugins/android/lib/templates/`
2. Restart Android Studio

#### For Windows:

1. Copy the `CleanArchitectureMVP` directory to `$ANDROID_STUDIO_FOLDER$\plugins\android\lib\templates\`
2. Restart Android Studio

## How to use

#### Generate Base boilerplate

1. In Android Studio, select the `Project` view
2. Right click and select `New` > `Clean + MVP` > `Base and Common`. This will generate the `presentation/base` and `presentation/common` packages and files

#### Generate Dagger2 boilerplate

1. In Android Studio, select the `Project` view
2. Right click and select `New` > `Clean + MVP` > `DependencyInjection - App`. This will generate the `di/component`, `di/module`, `di/qualifier` and `di/scope` packages and files.
3. In you `Application` file create a **companion object**:
  ```
  companion object {
      lateinit var appComponent: AppComponent
  }
  ```
4. In the `onCreate` method add the following:
  ```
  appComponent = DaggerAppComponent.builder()
                    .appModule(AppModule(this))
                    .build()
  ```

#### Generate Dagger2 feature component

1. In Android Studio, select the `Project` view
2. Right click and select `New` > `Clean + MVP` > `DependencyInjection - Feature`. This will generate a `component`, a `module` and a `scope` for the feature
3. In your `AppComponent` interface, add the following method:
  ```
  fun instantiateComponent(module: YourFeatureModule): YourFeatureComponent
  ```

  Where `YourFeatureModule` should be replaced by the generated class in `di/module` and `YourFeatureComponent` should be replaced by the generated class in `di/component`
4. In `YourFeatureComponent` add the `fun inject()` methods required to inject your activities and fragments that depend on that component
5. In your `Application` class, add the following:
5.1 a property to hold the component reference `private var yourFeatureComponent: YourFeatureComponent? = null` 
5.2 the following methods to get and release the component:
  ```
  fun instantiateYourFeatureComponent(activity: FragmentActivity): YourFeatureComponent? {
      if (featureComponent == null) {
          featureComponent = appComponent.instantiateComponent(FeatureModule(activity))
      }

      return featureComponent
  }

  fun releaseFeatureComponent() {
      featureComponent = null
  }
  ```

  Where `YourFeatureComponent` should be replaced by the generated class in `di/component` and the method names should be meaningful, the first starting with `instantiante` and the second one starting with `release`

#### Feature - Presentation

1. In Android Studio, select the `Project` view
2. Right click and select `New` > `Clean + MVP` > `Feature - Presentation`
3. Type in the `Name` of the feature, e.g. `TopUp`, `Checkout`, `PaymentMethods`
4. Everything else is done automatically, following the guidelines and convetions defined by the team
5. You can uncheck the boxes in case you **don't** want to create:
5.1 the `Contract` and the `Presenter`
5.2 the `Activity` with layout
5.3 the `Fragment` with layout
6. If you created an activity **don't forget** to add it to the `AndroidManifest`
7. If you created an activity and/or a fragment, remember to check the `TODO`s. 

## Things you need to know if you're planning on editing this templates

1. **Don't do it**
2. They use `ApacheFreeMarker` (`.ftl` extension)
3. [This](http://www.i-programmer.info/professional-programmer/resources-and-tools/6845-android-adt-template-format-document.html) is probably the best docummentation online. Other than that there are several [github repositories](https://github.com/search?q=android+studio+template), [this tutorial](https://riggaroo.co.za/custom-file-template-group-android-studiointellij/) and [this article](https://medium.com/androidstarters/mastering-android-studio-templates-ed8fdd98cb78)
4. Since `srcDir` and `srcOut` are only mapped to the `java source set`, there is a property in `globals.xml.ftl` named `kotlinMainSourceSet` which does `srcOut?replace('java','kotlin')` and is used in `recipe.xml.ftl`
5. Since `classToResource` would convert `SomeCompositeName` to `some_composite_name` and that doesn't follow the recommended convetion for package names, there are several `?replace('_', '')` in `recipe.xml.ftl` and in `*.kt.ftl` files located at `[TEMPLATE]\root\src\app_package`
6. Since `applicationIdSuffix` in `build.gradle` would afftect where the files are generated there is a property in `globals.xml.ftl` named `kotlinMainSourceSet` which does `srcOut?replace('.debug|.staging|.systest', '', 'r')` that is used in `recipe.xml.ftl` and a property named `mainSourceSetPackage` which does `packageName?replace('.debug|.staging|.systest', '', 'r')` and is used in all `*.kt.ftl` at `[TEMPLATE]\root\src\app_package`
7. In the `?replace()` function the **first argument** can be a regex, and if that's the case than the funcion takes `r` as the **third argument**
