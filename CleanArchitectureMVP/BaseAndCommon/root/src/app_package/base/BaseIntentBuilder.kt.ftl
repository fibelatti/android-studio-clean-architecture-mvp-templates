package ${mainSourceSetPackage}.presentation.base

import android.content.Context
import android.content.Intent

abstract class BaseIntentBuilder<in T>(context: Context, clazz: Class<T>) {
    protected val intent: Intent = Intent(context, clazz)

    fun clearTop(): BaseIntentBuilder<T> {
        intent.addFlags(Intent.FLAG_ACTIVITY_CLEAR_TOP)
        return this
    }

    fun clearTask(): BaseIntentBuilder<T> {
        intent.addFlags(Intent.FLAG_ACTIVITY_CLEAR_TASK)
        return this
    }

    fun build(): Intent = intent
}
