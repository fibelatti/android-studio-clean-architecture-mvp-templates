package ${mainSourceSetPackage}.presentation.base

import android.support.v7.widget.RecyclerView
import android.view.ViewGroup

interface BaseDelegateAdapter {
    fun onCreateViewHolder(parent: ViewGroup): RecyclerView.ViewHolder

    fun onBindViewHolder(holder: RecyclerView.ViewHolder, item: BaseViewType)
}

interface BaseViewType {
    fun getViewType(): Int
}
