package ${mainSourceSetPackage}.di.component

import ${mainSourceSetPackage}.di.module.${moduleName}
import ${mainSourceSetPackage}.di.scope.${scopeName}
import dagger.Subcomponent

@Subcomponent(
        modules = [${moduleName}::class]
)
@${scopeName}
interface ${componentName}