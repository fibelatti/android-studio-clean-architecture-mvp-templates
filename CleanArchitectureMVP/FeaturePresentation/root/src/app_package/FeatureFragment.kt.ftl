package ${mainSourceSetPackage}.presentation.${packName?replace('_', '')}

import android.content.Context
import ${mainSourceSetPackage}.di.component.BaseFeatureComponent
import ${mainSourceSetPackage}.presentation.base.BaseActivity
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
    private lateinit var callback: Callback
    //endregion
    
    //region Override properties
    //endregion
    
    //region Override Lifecycle methods
    override fun onAttach(context: Context?) {
        super.onAttach(context)

        (activity as? BaseActivity)?.let {
            getComponent(it).inject(this)
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
    //endregion
    
    //region Override methods
    override fun getComponent(activity: BaseActivity): BaseFeatureComponent =
        activity.getComponent(activity)

    override fun handleError(errorMessage: String?) {
        TODO("not implemented")
    }
    //endregion
    
    //region Public methods
    //endregion
    
    //region Private methods
    //endregion
}
