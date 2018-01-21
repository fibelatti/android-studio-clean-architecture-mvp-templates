<?xml version="1.0"?>
<recipe>
    <instantiate
        from="src/app_package/base/BaseActivity.kt.ftl"
        to="${escapeXmlAttribute(srcOut?replace('java','kotlin')?replace('debug|staging|systest', '', 'r'))}/presentation/base/BaseActivity.kt" />

    <instantiate
        from="src/app_package/base/BaseContract.kt.ftl"
        to="${escapeXmlAttribute(srcOut?replace('java','kotlin')?replace('debug|staging|systest', '', 'r'))}/presentation/base/BaseContract.kt" />

    <instantiate
        from="src/app_package/base/BaseFragment.kt.ftl"
        to="${escapeXmlAttribute(srcOut?replace('java','kotlin')?replace('debug|staging|systest', '', 'r'))}/presentation/base/BaseFragment.kt" />

    <instantiate
        from="src/app_package/base/BaseIntentBuilder.kt.ftl"
        to="${escapeXmlAttribute(srcOut?replace('java','kotlin')?replace('debug|staging|systest', '', 'r'))}/presentation/base/BaseIntentBuilder.kt" />

    <instantiate
        from="src/app_package/base/BasePresenter.kt.ftl"
        to="${escapeXmlAttribute(srcOut?replace('java','kotlin')?replace('debug|staging|systest', '', 'r'))}/presentation/base/BasePresenter.kt" />

    <instantiate
        from="src/app_package/base/ViewTypeDelegate.kt.ftl"
        to="${escapeXmlAttribute(srcOut?replace('java','kotlin')?replace('debug|staging|systest', '', 'r'))}/presentation/base/ViewTypeDelegate.kt" />

    <instantiate
        from="src/app_package/common/AppSchedulerProvider.kt.ftl"
        to="${escapeXmlAttribute(srcOut?replace('java','kotlin')?replace('debug|staging|systest', '', 'r'))}/presentation/common/AppSchedulerProvider.kt" />

    <instantiate
        from="src/app_package/common/SchedulerProvider.kt.ftl"
        to="${escapeXmlAttribute(srcOut?replace('java','kotlin')?replace('debug|staging|systest', '', 'r'))}/presentation/common/SchedulerProvider.kt" />
</recipe>
