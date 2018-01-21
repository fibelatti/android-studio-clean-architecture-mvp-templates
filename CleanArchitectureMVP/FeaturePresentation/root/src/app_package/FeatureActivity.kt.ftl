package ${packageName?replace('.debug|.staging|.systest', '', 'r')}.presentation.${packName?replace('_', '')}

import android.content.Context
import android.os.Bundle
import android.widget.FrameLayout
import ${packageName?replace('.debug|.staging|.systest', '', 'r')}.di.component.BaseFeatureComponent
import ${packageName?replace('.debug|.staging|.systest', '', 'r')}.presentation.base.BaseActivity
import ${packageName?replace('.debug|.staging|.systest', '', 'r')}.presentation.base.BaseIntentBuilder
import kotlinx.android.synthetic.main.${activityLayoutName}.*

//region Top level declarations
//endregion

class ${activityName} : 
    BaseActivity() {
    //region Companion objects and interfaces
    companion object {
        val TAG: String = ${activityName}::class.java.simpleName
    }
    //endregion
    
    //region Public properties
    //endregion
    
    //region Private properties
    //endregion
    
    //region Override properties
    override val rootLayout: FrameLayout?
        get() = layoutRoot
    //endregion
    
    //region Override Lifecycle methods
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        TODO("setContentView")

        getComponent(this).inject(this)
    }
    //endregion
    
    //region Override methods
    override fun getComponent(activity: BaseActivity): BaseFeatureComponent =
        TODO("YourApplicationFile.appComponent.plus(YourFeatureModule()")

    override fun handleError(errorMessage: String?) {
        TODO("not implemented")
    }
    //endregion
    
    //region Public methods
    //endregion
    
    //region Private methods
    //endregion
    
    class IntentBuilder(context: Context) : BaseIntentBuilder<${activityName}>(context, ${activityName}::class.java) {
        
    }
}