<?xml version="1.0"?>
<recipe>
    <instantiate
        from="src/app_package/di/component/FeatureComponent.kt.ftl"
        to="${escapeXmlAttribute(srcOut?replace('java','kotlin')?replace('debug|staging|systest', '', 'r'))}/di/component/${componentName}.kt" />

    <instantiate
        from="src/app_package/di/module/FeatureModule.kt.ftl"
        to="${escapeXmlAttribute(srcOut?replace('java','kotlin')?replace('debug|staging|systest', '', 'r'))}/di/module/${moduleName}.kt" />

    <instantiate
        from="src/app_package/di/scope/FeatureScope.kt.ftl"
        to="${escapeXmlAttribute(srcOut?replace('java','kotlin')?replace('debug|staging|systest', '', 'r'))}/di/scope/${scopeName}.kt" />
</recipe>
