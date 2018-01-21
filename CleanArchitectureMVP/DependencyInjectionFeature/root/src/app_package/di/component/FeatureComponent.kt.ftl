package ${packageName?replace('.debug|.staging|.systest', '', 'r')}.di.component

import ${packageName?replace('.debug|.staging|.systest', '', 'r')}.di.module.${moduleName}
import ${packageName?replace('.debug|.staging|.systest', '', 'r')}.di.scope.${scopeName}
import dagger.Subcomponent

@Subcomponent(
        modules = [${moduleName}::class]
)
@${scopeName}
interface ${componentName} : BaseFeatureComponent
