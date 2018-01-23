package ${mainSourceSetPackage}.presentation.common

import io.reactivex.Observable
import io.reactivex.subjects.PublishSubject

class ObservableView<Emits> {
    private val subject = PublishSubject.create<Emits>()

    fun getObservable(): Observable<Emits> = subject

    fun emitNext(value: Emits) = subject.onNext(value)
}
