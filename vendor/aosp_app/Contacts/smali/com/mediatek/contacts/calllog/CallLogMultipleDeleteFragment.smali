.class public Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteFragment;
.super Landroid/app/ListFragment;
.source "CallLogMultipleDeleteFragment.java"

# interfaces
.implements Lcom/android/contacts/calllog/CallLogAdapter$CallFetcher;
.implements Lcom/android/contacts/calllog/CallLogQueryHandler$Listener;


# static fields
.field private static final SIM_INFO_UPDATE_MESSAGE:I = 0x64

.field private static final TAG:Ljava/lang/String; = "CallLogMultipleDeleteFragment"


# instance fields
.field private mAdapter:Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteAdapter;

.field private mCallLogQueryHandler:Lcom/android/contacts/calllog/CallLogQueryHandler;

.field private mHandler:Landroid/os/Handler;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mScrollToTop:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 305
    new-instance v0, Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteFragment$1;

    invoke-direct {v0, p0}, Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteFragment$1;-><init>(Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteFragment;)V

    iput-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteFragment;)Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteFragment;->mAdapter:Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteAdapter;

    return-object v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "log"

    .prologue
    .line 290
    const-string v0, "CallLogMultipleDeleteFragment"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    return-void
.end method

.method private refreshData()V
    .locals 1

    .prologue
    .line 211
    const-string v0, "refreshData()"

    invoke-direct {p0, v0}, Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteFragment;->log(Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteFragment;->mAdapter:Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteAdapter;

    invoke-virtual {v0}, Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteAdapter;->unSelectAllItems()V

    .line 213
    invoke-virtual {p0}, Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteFragment;->startCallsQuery()V

    .line 214
    return-void
.end method


# virtual methods
.method public deleteSelectedCallItems()V
    .locals 3

    .prologue
    .line 244
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteFragment;->mAdapter:Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteAdapter;

    invoke-virtual {v0}, Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteAdapter;->getSelectedItemCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 245
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, ""

    const v2, 0x7f0c009d

    invoke-virtual {p0, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteFragment;->mCallLogQueryHandler:Lcom/android/contacts/calllog/CallLogQueryHandler;

    iget-object v1, p0, Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteFragment;->mAdapter:Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteAdapter;

    invoke-virtual {v1}, Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteAdapter;->getDeleteFilter()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/calllog/CallLogQueryHandler;->deleteSpecifiedCalls(Ljava/lang/String;)V

    .line 249
    return-void
.end method

.method public fetchCalls()V
    .locals 0

    .prologue
    .line 178
    return-void
.end method

.method public getSelectedItemCount()I
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteFragment;->mAdapter:Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteAdapter;

    invoke-virtual {v0}, Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteAdapter;->getSelectedItemCount()I

    move-result v0

    return v0
.end method

.method public getSelections()Ljava/lang/String;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteFragment;->mAdapter:Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteAdapter;

    invoke-virtual {v0}, Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteAdapter;->getDeleteFilter()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAllSelected()Z
    .locals 2

    .prologue
    .line 298
    invoke-virtual {p0}, Landroid/app/ListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 299
    .local v0, count:I
    invoke-virtual {p0}, Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteFragment;->getSelectedItemCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCallsDeleted()V
    .locals 1

    .prologue
    .line 94
    const-string v0, "onCallsDeleted()"

    invoke-direct {p0, v0}, Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteFragment;->log(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_2

    .line 99
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 102
    :cond_2
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public onCallsFetched(Landroid/database/Cursor;)V
    .locals 5
    .parameter "cursor"

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x0

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCallsFetched(), cursor = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteFragment;->log(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 73
    :cond_0
    if-eqz p1, :cond_1

    .line 74
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 89
    :cond_1
    :goto_0
    return-void

    .line 78
    :cond_2
    iget-object v1, p0, Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteFragment;->mAdapter:Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteAdapter;

    invoke-virtual {v1, v3}, Lcom/android/contacts/calllog/CallLogAdapter;->setLoading(Z)V

    .line 79
    iget-object v1, p0, Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteFragment;->mAdapter:Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteAdapter;

    invoke-virtual {v1, p1}, Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 81
    iget-boolean v1, p0, Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteFragment;->mScrollToTop:Z

    if-eqz v1, :cond_1

    .line 82
    invoke-virtual {p0}, Landroid/app/ListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 83
    .local v0, listView:Landroid/widget/ListView;
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v1

    if-le v1, v4, :cond_3

    .line 84
    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setSelection(I)V

    .line 86
    :cond_3
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 87
    iput-boolean v3, p0, Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteFragment;->mScrollToTop:Z

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 60
    const-string v0, "onCreate()"

    invoke-direct {p0, v0}, Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteFragment;->log(Ljava/lang/String;)V

    .line 61
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 63
    new-instance v0, Lcom/android/contacts/calllog/CallLogQueryHandler;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/contacts/calllog/CallLogQueryHandler;-><init>(Landroid/content/ContentResolver;Lcom/android/contacts/calllog/CallLogQueryHandler$Listener;)V

    iput-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteFragment;->mCallLogQueryHandler:Lcom/android/contacts/calllog/CallLogQueryHandler;

    .line 66
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .parameter "inflater"
    .parameter "container"
    .parameter "savedState"

    .prologue
    .line 107
    const-string v1, "onCreateView()"

    invoke-direct {p0, v1}, Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteFragment;->log(Ljava/lang/String;)V

    .line 108
    const v1, 0x7f040017

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 112
    .local v0, view:Landroid/view/View;
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteFragment;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x64

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/mediatek/phone/SIMInfoWrapper;->registerForSimInfoUpdate(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 114
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 160
    const-string v0, "onDestroy"

    invoke-direct {p0, v0}, Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteFragment;->log(Ljava/lang/String;)V

    .line 161
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 162
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteFragment;->mAdapter:Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 165
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/mediatek/phone/SIMInfoWrapper;->unregisterForSimInfoUpdate(Landroid/os/Handler;)V

    .line 167
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 261
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onListItemClick: position:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteFragment;->log(Ljava/lang/String;)V

    move-object v1, p2

    .line 263
    check-cast v1, Lcom/mediatek/contacts/calllog/CallLogListItemView;

    .line 264
    .local v1, itemView:Lcom/mediatek/contacts/calllog/CallLogListItemView;
    if-eqz v1, :cond_0

    .line 265
    invoke-virtual {v1}, Lcom/mediatek/contacts/calllog/CallLogListItemView;->getCheckBoxMultiSel()Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    .line 266
    .local v0, isChecked:Z
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/mediatek/contacts/activities/CallLogMultipleDeleteActivity;

    iget-object v3, p0, Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteFragment;->mAdapter:Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteAdapter;

    invoke-virtual {v3, p3}, Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteAdapter;->changeSelectedStatusToMap(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/mediatek/contacts/activities/CallLogMultipleDeleteActivity;->updateSelectedItemsView(I)V

    .line 268
    invoke-virtual {v1}, Lcom/mediatek/contacts/calllog/CallLogListItemView;->getCheckBoxMultiSel()Landroid/widget/CheckBox;

    move-result-object v3

    if-nez v0, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v3, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 270
    .end local v0           #isChecked:Z
    :cond_0
    return-void

    .line 268
    .restart local v0       #isChecked:Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 147
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 150
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 141
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 143
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteFragment;->mScrollToTop:Z

    .line 136
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 137
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 154
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 156
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x1

    .line 119
    const-string v1, "onViewCreated()"

    invoke-direct {p0, v1}, Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteFragment;->log(Ljava/lang/String;)V

    .line 120
    invoke-super {p0, p1, p2}, Landroid/app/ListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 121
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/ContactsUtils;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, currentCountryIso:Ljava/lang/String;
    new-instance v1, Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteAdapter;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/android/contacts/calllog/ContactInfoHelper;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lcom/android/contacts/calllog/ContactInfoHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v4, ""

    invoke-direct {v1, v2, p0, v3, v4}, Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteAdapter;-><init>(Landroid/content/Context;Lcom/android/contacts/calllog/CallLogAdapter$CallFetcher;Lcom/android/contacts/calllog/ContactInfoHelper;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteFragment;->mAdapter:Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteAdapter;

    .line 124
    iget-object v1, p0, Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteFragment;->mAdapter:Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteAdapter;

    invoke-virtual {p0, v1}, Landroid/app/ListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 126
    invoke-virtual {p0}, Landroid/app/ListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 127
    invoke-virtual {p0}, Landroid/app/ListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/AdapterView;->setFocusable(Z)V

    .line 128
    invoke-virtual {p0}, Landroid/app/ListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/AdapterView;->setFocusableInTouchMode(Z)V

    .line 129
    invoke-virtual {p0}, Landroid/app/ListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/high16 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 130
    invoke-direct {p0}, Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteFragment;->refreshData()V

    .line 131
    return-void
.end method

.method public onVoicemailStatusFetched(Landroid/database/Cursor;)V
    .locals 0
    .parameter "statusCursor"

    .prologue
    .line 279
    return-void
.end method

.method public selectAllItems()I
    .locals 2

    .prologue
    .line 224
    iget-object v1, p0, Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteFragment;->mAdapter:Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteAdapter;

    invoke-virtual {v1}, Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteAdapter;->selectAllItems()I

    move-result v0

    .line 225
    .local v0, iCount:I
    iget-object v1, p0, Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteFragment;->mAdapter:Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteAdapter;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 226
    return v0
.end method

.method public startCallsQuery()V
    .locals 8

    .prologue
    .line 184
    iget-object v6, p0, Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteFragment;->mAdapter:Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteAdapter;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/contacts/calllog/CallLogAdapter;->setLoading(Z)V

    .line 185
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 186
    .local v2, prefs:Landroid/content/SharedPreferences;
    const-string v6, "calllog_sim_filter"

    const/16 v7, 0x4e21

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 187
    .local v3, simFilter:I
    const-string v6, "calllog_type_filter"

    const/16 v7, 0x4e2b

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 189
    .local v4, typeFilter:I
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 190
    .local v1, intent:Landroid/content/Intent;
    const-string v6, "true"

    const-string v7, "false"

    invoke-virtual {v1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 191
    const-string v6, "Is google search mode"

    invoke-direct {p0, v6}, Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteFragment;->log(Ljava/lang/String;)V

    .line 192
    const-string v6, "user_query"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 193
    .local v0, data:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "startCallsQuery() data=="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteFragment;->log(Ljava/lang/String;)V

    .line 194
    sget-object v6, Lcom/android/contacts/util/Constants;->CALLLOG_SEARCH_URI_BASE:Landroid/net/Uri;

    invoke-static {v6, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 195
    .local v5, uri:Landroid/net/Uri;
    iget-object v6, p0, Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteFragment;->mCallLogQueryHandler:Lcom/android/contacts/calllog/CallLogQueryHandler;

    invoke-virtual {v6, v5}, Lcom/android/contacts/calllog/CallLogQueryHandler;->fetchSearchCalls(Landroid/net/Uri;)V

    .line 199
    .end local v0           #data:Ljava/lang/String;
    .end local v5           #uri:Landroid/net/Uri;
    :goto_0
    return-void

    .line 197
    :cond_0
    iget-object v6, p0, Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteFragment;->mCallLogQueryHandler:Lcom/android/contacts/calllog/CallLogQueryHandler;

    invoke-virtual {v6, v3, v4}, Lcom/android/contacts/calllog/CallLogQueryHandler;->fetchCallsJionDataView(II)V

    goto :goto_0
.end method

.method public unSelectAllItems()V
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteFragment;->mAdapter:Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteAdapter;

    invoke-virtual {v0}, Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteAdapter;->unSelectAllItems()V

    .line 237
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteFragment;->mAdapter:Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 238
    return-void
.end method
