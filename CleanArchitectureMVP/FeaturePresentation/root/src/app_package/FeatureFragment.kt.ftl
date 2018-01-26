package ${mainSourceSetPackage}.presentation.${packName?replace('_', '')}

import android.content.Context
import ${mainSourceSetPackage}.presentation.base.BaseFragment

//region Top level declarations
//endregion

class ${fragmentName} : 
    BaseFragment() {
    //region Companion objects and interfaces
    companion object {
        val TAG: String = ${fragmentName}::class.java.simpleName
        
        fun newInstance() = ${fragmentName}()
    }
    
    interface Callback
    //endregion
    
    //region Public properties
    //endregion
    
    //region Private properties
    private var callback: Callback? = null
    //endregion
    
    //region Override properties
    //endregion
    
    //region Override Lifecycle methods
    override fun onAttach(context: Context?) {
        super.onAttach(context)

        activity?.let {
            TODO("YourApplicationFile.instance.plusYourComponent(activity = it)")
        }
    }

    override fun onResume() {
        super.onResume()
        TODO("presenter.bind(this)")
    }

    override fun onPause() {
        TODO("presenter.unbind()")
        super.onPause()
    }

    override fun onDetach() {
        TODO("YourApplicationFile.instance.clearYourComponent()")
        super.onDetach()
    }
    //endregion
    
    //region Override methods
    override fun handleError(errorMessage: String?) {
        TODO("not implemented")
    }
    //endregion
    
    //region Public methods
    //endregion
    
    //region Private methods
    //endregion
}
