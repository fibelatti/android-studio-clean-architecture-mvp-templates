package ${mainSourceSetPackage}.di.component

import android.support.v4.app.Fragment
import android.support.v7.app.AppCompatActivity

interface BaseFeatureComponent {
    fun <T: AppCompatActivity> inject(activity: T)

    fun <T: Fragment> inject(fragment: T)
}
