package ${packageName?replace('.debug|.staging|.systest', '', 'r')}.presentation.${packName?replace('_', '')}

import ${packageName?replace('.debug|.staging|.systest', '', 'r')}.presentation.base.BaseContract

interface ${contractName} {
    interface Presenter : BaseContract.Presenter<View> {
    
    }
    
    interface View : BaseContract.View {
    
    }
}
