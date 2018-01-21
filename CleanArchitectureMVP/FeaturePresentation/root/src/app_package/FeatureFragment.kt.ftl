package ${packageName?replace('.debug|.staging|.systest', '', 'r')}.presentation.${packName?replace('_', '')}

import android.content.Context
import android.widget.FrameLayout
import ${packageName?replace('.debug|.staging|.systest', '', 'r')}.di.component.BaseFeatureComponent
import ${packageName?replace('.debug|.staging|.systest', '', 'r')}.presentation.base.BaseActivity
import ${packageName?replace('.debug|.staging|.systest', '', 'r')}.presentation.base.BaseFragment
import kotlinx.android.synthetic.main.${fragmentLayoutName}.*

//region Top level declarations
//endregion

class ${fragmentName} : 
    BaseFragment() {
    //region Companion objects and interfaces
    companion object {
        val TAG: String = ${fragmentName}::class.java.simpleName
        
        fun newInstance() = ${fragmentName}()
    }
    
    interface Callback {
        
    }
    //endregion
    
    //region Public properties
    //endregion
    
    //region Private properties
    private lateinit var callback: Callback
    //endregion
    
    //region Override properties
    override val rootLayout: FrameLayout?
        get() = layoutRoot
    //endregion
    
    //region Override Lifecycle methods
    override fun onAttach(context: Context?) {
        super.onAttach(context)

        activity?.let {
            getComponent(it as BaseActivity).inject(this)
        }
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
