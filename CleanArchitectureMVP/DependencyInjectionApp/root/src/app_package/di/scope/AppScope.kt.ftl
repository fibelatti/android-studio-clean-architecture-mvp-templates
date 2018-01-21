package ${packageName?replace('.debug|.staging|.systest', '', 'r')}.di.scope

import javax.inject.Scope

@Scope
@Retention(AnnotationRetention.RUNTIME)
annotation class AppScope
