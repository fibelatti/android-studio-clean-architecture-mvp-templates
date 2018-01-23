<?xml version="1.0"?>
<recipe>
    <instantiate
        from="src/app_package/FeatureContract.kt.ftl"
        to="${escapeXmlAttribute(kotlinMainSourceSet)}/presentation/${packName?replace('_', '')}/${contractName}.kt" />

    <instantiate
        from="src/app_package/FeaturePresenter.kt.ftl"
        to="${escapeXmlAttribute(kotlinMainSourceSet)}/presentation/${packName?replace('_', '')}/${presenterName}.kt" />


    <#if createActivity>
        <instantiate
            from="src/app_package/FeatureActivity.kt.ftl"
            to="${escapeXmlAttribute(kotlinMainSourceSet)}/presentation/${packName?replace('_', '')}/${activityName}.kt" />

        <instantiate
                from="res/layout/activity_layout.xml.ftl"
                to="${escapeXmlAttribute(resOut)}/layout/${activityLayoutName}.xml" />
    </#if>

    <#if createFragment>
        <instantiate
            from="src/app_package/FeatureFragment.kt.ftl"
            to="${escapeXmlAttribute(kotlinMainSourceSet)}/presentation/${packName?replace('_', '')}/${fragmentName}.kt" />

        <instantiate
                from="res/layout/fragment_layout.xml.ftl"
                to="${escapeXmlAttribute(resOut)}/layout/${fragmentLayoutName}.xml" />
    </#if>
</recipe>
