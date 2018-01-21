<?xml version="1.0"?>
<recipe>
    <instantiate
        from="src/app_package/di/component/AppComponent.kt.ftl"
        to="${escapeXmlAttribute(srcOut?replace('java','kotlin')?replace('debug|staging|systest', '', 'r'))}/di/component/AppComponent.kt" />

    <instantiate
        from="src/app_package/di/component/BaseFeatureComponent.kt.ftl"
        to="${escapeXmlAttribute(srcOut?replace('java','kotlin')?replace('debug|staging|systest', '', 'r'))}/di/component/BaseFeatureComponent.kt" />

    <instantiate
        from="src/app_package/di/module/AppModule.kt.ftl"
        to="${escapeXmlAttribute(srcOut?replace('java','kotlin')?replace('debug|staging|systest', '', 'r'))}/di/module/AppModule.kt" />

    <instantiate
        from="src/app_package/di/qualifier/AppQualifier.kt.ftl"
        to="${escapeXmlAttribute(srcOut?replace('java','kotlin')?replace('debug|staging|systest', '', 'r'))}/di/qualifier/AppQualifier.kt" />

    <instantiate
        from="src/app_package/di/scope/AppScope.kt.ftl"
        to="${escapeXmlAttribute(srcOut?replace('java','kotlin')?replace('debug|staging|systest', '', 'r'))}/di/scope/AppScope.kt" />
</recipe>
