<?xml version="1.0"?>
<recipe>
    <instantiate
        from="src/app_package/di/component/FeatureComponent.kt.ftl"
        to="${escapeXmlAttribute(kotlinMainSourceSet)}/di/component/${componentName}.kt" />

    <instantiate
        from="src/app_package/di/module/FeatureModule.kt.ftl"
        to="${escapeXmlAttribute(kotlinMainSourceSet)}/di/module/${moduleName}.kt" />

    <instantiate
        from="src/app_package/di/scope/FeatureScope.kt.ftl"
        to="${escapeXmlAttribute(kotlinMainSourceSet)}/di/scope/${scopeName}.kt" />
</recipe>
