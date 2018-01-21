package ${packageName?replace('.debug|.staging|.systest', '', 'r')}.di.component

import ${packageName?replace('.debug|.staging|.systest', '', 'r')}.di.module.AppModule
import ${packageName?replace('.debug|.staging|.systest', '', 'r')}.di.scope.AppScope
import dagger.Component

@Component(
        modules = [AppModule::class]
)
@AppScope
interface AppComponent {
    
}
