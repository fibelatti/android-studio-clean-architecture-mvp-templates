package ${mainSourceSetPackage}.presentation.${packName?replace('_', '')}

import ${mainSourceSetPackage}.presentation.base.BaseContract

interface ${contractName} {
    interface Presenter : BaseContract.Presenter<View>
    
    interface View : BaseContract.View {
    	//region Produces
    	//endregion

    	//region Consumes
    	//endregion
    }
}
