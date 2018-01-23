package ${mainSourceSetPackage}.presentation.base

import android.widget.FrameLayout
import ${mainSourceSetPackage}.di.component.BaseFeatureComponent

interface BaseContract {
    interface View {
        val rootLayout: FrameLayout?

        fun getComponent(activity: BaseActivity): BaseFeatureComponent

        fun handleError(errorMessage: String?)
    }

    interface Presenter<in V : View> {
        fun attachView(view: V)

        fun detachView()
    }
}
