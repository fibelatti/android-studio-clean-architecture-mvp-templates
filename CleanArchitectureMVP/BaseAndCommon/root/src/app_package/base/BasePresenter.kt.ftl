package ${mainSourceSetPackage}.presentation.base

import android.support.annotation.CallSuper
import ${mainSourceSetPackage}.presentation.common.SchedulerProvider
import io.reactivex.Completable
import io.reactivex.Observable
import io.reactivex.Single
import io.reactivex.disposables.CompositeDisposable
import io.reactivex.disposables.Disposable

abstract class BasePresenter<in V : BaseContract.View>(protected val schedulerProvider: SchedulerProvider) :
    BaseContract.Presenter<V> {

    private lateinit var viewDisposables: CompositeDisposable

    //region protected Observable, Single & Completable extensions
    protected fun <T> Observable<T>.subscribeUntilDetached(onNext: (T) -> Unit):
        Disposable = subscribe(onNext).apply { disposeOnDetach(disposable = this) }

    protected fun <T> Observable<T>.subscribeUntilDetached(onNext: (T) -> Unit,
                                                           onError: (Throwable) -> Unit):
        Disposable = subscribe(onNext, onError).apply { disposeOnDetach(disposable = this) }

    protected fun <T> Observable<T>.subscribeUntilDetached(onNext: (T) -> Unit,
                                                           onError: (Throwable) -> Unit,
                                                           onComplete: () -> Unit):
        Disposable = subscribe(onNext, onError, onComplete).apply { disposeOnDetach(disposable = this) }

    protected fun <T> Single<T>.subscribeUntilDetached(onComplete: (T) -> Unit):
        Disposable = subscribe(onComplete).apply { disposeOnDetach(disposable = this) }

    protected fun <T> Single<T>.subscribeUntilDetached(onComplete: (T) -> Unit,
                                                       onError: (Throwable) -> Unit):
        Disposable = subscribe(onComplete, onError).apply { disposeOnDetach(disposable = this) }

    protected fun Completable.subscribeUntilDetached(onComplete: () -> Unit,
                                                     onError: (Throwable) -> Unit):
        Disposable = subscribe(onComplete, onError).apply { disposeOnDetach(disposable = this) }
    //endregion

    @CallSuper
    override fun bind(view: V) {
        viewDisposables = CompositeDisposable()
    }

    override fun unbind() {
        viewDisposables.dispose()
    }

    private fun disposeOnDetach(disposable: Disposable) {
        viewDisposables.add(disposable)
    }
}
