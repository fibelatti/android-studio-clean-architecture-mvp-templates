<?xml version="1.0"?>
<recipe>
    <instantiate
        from="src/app_package/di/component/AppComponent.kt.ftl"
        to="${escapeXmlAttribute(kotlinMainSourceSet)}/di/component/AppComponent.kt" />

    <instantiate
        from="src/app_package/di/module/AppModule.kt.ftl"
        to="${escapeXmlAttribute(kotlinMainSourceSet)}/di/module/AppModule.kt" />

    <instantiate
        from="src/app_package/di/qualifier/AppQualifier.kt.ftl"
        to="${escapeXmlAttribute(kotlinMainSourceSet)}/di/qualifier/AppQualifier.kt" />

    <instantiate
        from="src/app_package/di/scope/AppScope.kt.ftl"
        to="${escapeXmlAttribute(kotlinMainSourceSet)}/di/scope/AppScope.kt" />
</recipe>
