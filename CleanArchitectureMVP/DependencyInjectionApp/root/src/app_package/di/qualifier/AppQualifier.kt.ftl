package ${packageName?replace('.debug|.staging|.systest', '', 'r')}.di.qualifier

import javax.inject.Qualifier

@Qualifier
@Retention(AnnotationRetention.RUNTIME)
annotation class AppQualifier
