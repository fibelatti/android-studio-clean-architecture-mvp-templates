package ${mainSourceSetPackage}.presentation.base

interface BaseContract {
    interface View {
        fun handleError(errorMessage: String?)
    }

    interface Presenter<in V : View> {
        fun bind(view: V)

        fun unbind()
    }
}
