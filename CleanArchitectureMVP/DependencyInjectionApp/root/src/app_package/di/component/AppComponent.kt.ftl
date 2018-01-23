package ${mainSourceSetPackage}.di.component

import ${mainSourceSetPackage}.di.module.AppModule
import ${mainSourceSetPackage}.di.scope.AppScope
import dagger.Component

@Component(
        modules = [AppModule::class]
)
@AppScope
interface AppComponent {
    
}
