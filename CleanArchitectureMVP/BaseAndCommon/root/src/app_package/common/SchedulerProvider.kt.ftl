package ${packageName?replace('.debug|.staging|.systest', '', 'r')}.presentation.common

import io.reactivex.Scheduler

interface SchedulerProvider {
    fun mainThread(): Scheduler

    fun computation(): Scheduler

    fun trampoline(): Scheduler

    fun newThread(): Scheduler

    fun io(): Scheduler
}
