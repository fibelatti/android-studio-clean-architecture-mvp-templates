package ${mainSourceSetPackage}.presentation.${packName?replace('_', '')}

import ${mainSourceSetPackage}.presentation.base.BasePresenter
import ${mainSourceSetPackage}.presentation.common.SchedulerProvider

class ${presenterName}(
    schedulerProvider: SchedulerProvider
) : ${contractName}.Presenter, BasePresenter<${contractName}.View>(schedulerProvider) {
    
}
