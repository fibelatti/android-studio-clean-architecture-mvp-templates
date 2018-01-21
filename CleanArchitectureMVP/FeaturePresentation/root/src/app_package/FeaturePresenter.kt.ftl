package ${packageName?replace('.debug|.staging|.systest', '', 'r')}.presentation.${packName?replace('_', '')}

import ${packageName?replace('.debug|.staging|.systest', '', 'r')}.presentation.base.BasePresenter
import ${packageName?replace('.debug|.staging|.systest', '', 'r')}.presentation.common.SchedulerProvider

class ${presenterName}(
    schedulerProvider: SchedulerProvider
) : ${contractName}.Presenter, BasePresenter<${contractName}.View>(schedulerProvider) {
    
}
