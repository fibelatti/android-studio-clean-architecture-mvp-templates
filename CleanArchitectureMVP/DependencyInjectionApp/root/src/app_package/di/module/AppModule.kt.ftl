package ${mainSourceSetPackage}.di.module

import android.app.Application
import android.content.Context
import android.content.SharedPreferences
import android.preference.PreferenceManager
import ${mainSourceSetPackage}.di.qualifier.AppQualifier
import dagger.Module
import dagger.Provides
import java.util.*

@Module
class AppModule(private var app: Application) {

    @Provides
    fun provideApplication(): Application = app

    @Provides
    @AppQualifier
    fun provideContext(): Context = app.applicationContext

    @Provides
    fun provideSharedPreferences(): SharedPreferences = PreferenceManager.getDefaultSharedPreferences(app)

    @Provides
    fun provideLocaleDefault(): Locale = Locale.getDefault()
}
