package ${mainSourceSetPackage}.presentation.${packName?replace('_', '')}

import android.content.Context
import android.os.Bundle
import ${mainSourceSetPackage}.presentation.base.BaseActivity
import ${mainSourceSetPackage}.presentation.base.BaseIntentBuilder

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
    //endregion
    
    //region Override Lifecycle methods
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        TODO("setContentView")
        TODO("YourApplicationFile.instance.plusYourComponent(activity = this)")
    }

    override fun onResume() {
        super.onResume()
        TODO("presenter.bind(this)")
    }

    override fun onPause() {
        TODO("presenter.unbind()")
        super.onPause()
    }

    override fun onDestroy() {
        TODO("YourApplicationFile.instance.clearYourComponent()")
        super.onDestroy()
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
    class IntentBuilder(context: Context) : BaseIntentBuilder<${activityName}>(context, ${activityName}::class.java)
}
