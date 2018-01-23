package ${mainSourceSetPackage}.presentation.base

import android.widget.FrameLayout
import ${mainSourceSetPackage}.di.component.BaseFeatureComponent

interface BaseContract {
    interface View {
        fun getComponent(activity: BaseActivity): BaseFeatureComponent

        fun handleError(errorMessage: String?)
    }

    interface Presenter<in V : View> {
        fun bind(view: V)

        fun unbind()
    }
}
