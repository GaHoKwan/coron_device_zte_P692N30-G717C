.class public Lcom/mediatek/contacts/calllog/CallLogSearchFragment;
.super Landroid/app/ListFragment;
.source "CallLogSearchFragment.java"

# interfaces
.implements Lcom/android/contacts/calllog/CallLogAdapter$CallFetcher;
.implements Lcom/android/contacts/calllog/CallLogQueryHandler$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/contacts/calllog/CallLogSearchFragment$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CallLogSearchFragment"


# instance fields
.field private mAdapter:Lcom/android/contacts/calllog/CallLogAdapter;

.field private mCallLogQueryHandler:Lcom/android/contacts/calllog/CallLogQueryHandler;

.field private mListener:Lcom/mediatek/contacts/calllog/CallLogSearchFragment$Listener;

.field private mSearchString:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 61
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    .line 62
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 188
    const-string v0, "CallLogSearchFragment"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    return-void
.end method


# virtual methods
.method public fetchCalls()V
    .locals 4

    .prologue
    .line 116
    iget-object v1, p0, Lcom/mediatek/contacts/calllog/CallLogSearchFragment;->mSearchString:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    iget-object v1, p0, Lcom/mediatek/contacts/calllog/CallLogSearchFragment;->mCallLogQueryHandler:Lcom/android/contacts/calllog/CallLogQueryHandler;

    const/16 v2, 0x4e21

    const/16 v3, 0x4e2b

    invoke-virtual {v1, v2, v3}, Lcom/android/contacts/calllog/CallLogQueryHandler;->fetchCallsJionDataView(II)V

    .line 123
    :goto_0
    return-void

    .line 120
    :cond_0
    sget-object v1, Lcom/android/contacts/util/Constants;->CALLLOG_SEARCH_URI_BASE:Landroid/net/Uri;

    iget-object v2, p0, Lcom/mediatek/contacts/calllog/CallLogSearchFragment;->mSearchString:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 121
    .local v0, uri:Landroid/net/Uri;
    iget-object v1, p0, Lcom/mediatek/contacts/calllog/CallLogSearchFragment;->mCallLogQueryHandler:Lcom/android/contacts/calllog/CallLogQueryHandler;

    invoke-virtual {v1, v0}, Lcom/android/contacts/calllog/CallLogQueryHandler;->fetchSearchCalls(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public onCallsDeleted()V
    .locals 0

    .prologue
    .line 127
    return-void
.end method

.method public onCallsFetched(Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " CallLogSearchResultActivity onCallsFetched(), cursor = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/contacts/calllog/CallLogSearchFragment;->log(Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogSearchFragment;->mAdapter:Lcom/android/contacts/calllog/CallLogAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/calllog/CallLogAdapter;->setLoading(Z)V

    .line 136
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogSearchFragment;->mAdapter:Lcom/android/contacts/calllog/CallLogAdapter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/calllog/CallLogAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 137
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 67
    new-instance v0, Lcom/android/contacts/calllog/CallLogQueryHandler;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/contacts/calllog/CallLogQueryHandler;-><init>(Landroid/content/ContentResolver;Lcom/android/contacts/calllog/CallLogQueryHandler$Listener;)V

    iput-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogSearchFragment;->mCallLogQueryHandler:Lcom/android/contacts/calllog/CallLogQueryHandler;

    .line 68
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 78
    const-string v1, "onCreateView()"

    invoke-direct {p0, v1}, Lcom/mediatek/contacts/calllog/CallLogSearchFragment;->log(Ljava/lang/String;)V

    .line 79
    const v1, 0x7f040019

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 80
    .local v0, view:Landroid/view/View;
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 101
    const-string v0, "onDestroy()"

    invoke-direct {p0, v0}, Lcom/mediatek/contacts/calllog/CallLogSearchFragment;->log(Ljava/lang/String;)V

    .line 102
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 104
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogSearchFragment;->mAdapter:Lcom/android/contacts/calllog/CallLogAdapter;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogSearchFragment;->mAdapter:Lcom/android/contacts/calllog/CallLogAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/calllog/CallLogAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 107
    :cond_0
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 7
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 161
    invoke-super/range {p0 .. p5}, Landroid/app/ListFragment;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 162
    if-eqz p2, :cond_0

    instance-of v0, p2, Lcom/mediatek/contacts/calllog/CallLogListItemView;

    if-nez v0, :cond_2

    .line 163
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "CallLogFragment exception"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 179
    :cond_1
    :goto_0
    return-void

    .line 166
    :cond_2
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/contacts/ExtensionManager;->getCallLogSearchResultActivityExtension()Lcom/android/contacts/ext/CallLogSearchResultActivityExtension;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/ext/CallLogSearchResultActivityExtension;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)Z

    move-result v0

    if-nez v0, :cond_1

    .line 170
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/contacts/calllog/IntentProvider;

    if-nez v0, :cond_3

    .line 171
    const-string v0, "onListItemClick(), v.getTag() is not instance of IntentProvider, just return"

    invoke-direct {p0, v0}, Lcom/mediatek/contacts/calllog/CallLogSearchFragment;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 174
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/calllog/IntentProvider;

    .line 175
    .local v6, intentProvider:Lcom/android/contacts/calllog/IntentProvider;
    if-eqz v6, :cond_1

    .line 176
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/android/contacts/calllog/IntentProvider;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "follow_sim_management"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 144
    const-string v1, "onOptionsItemSelected"

    invoke-direct {p0, v1}, Lcom/mediatek/contacts/calllog/CallLogSearchFragment;->log(Ljava/lang/String;)V

    .line 145
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 146
    .local v0, itemId:I
    const v1, 0x102002c

    if-ne v0, v1, :cond_1

    .line 147
    iget-object v1, p0, Lcom/mediatek/contacts/calllog/CallLogSearchFragment;->mListener:Lcom/mediatek/contacts/calllog/CallLogSearchFragment$Listener;

    if-eqz v1, :cond_0

    .line 148
    iget-object v1, p0, Lcom/mediatek/contacts/calllog/CallLogSearchFragment;->mListener:Lcom/mediatek/contacts/calllog/CallLogSearchFragment$Listener;

    invoke-interface {v1}, Lcom/mediatek/contacts/calllog/CallLogSearchFragment$Listener;->onHomeInActionBarSelected()V

    .line 150
    :cond_0
    const/4 v1, 0x1

    .line 152
    :goto_0
    return v1

    :cond_1
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 72
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 73
    invoke-virtual {p0}, Lcom/mediatek/contacts/calllog/CallLogSearchFragment;->fetchCalls()V

    .line 74
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 85
    invoke-super {p0, p1, p2}, Landroid/app/ListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 86
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/contacts/ContactsUtils;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, currentCountryIso:Ljava/lang/String;
    new-instance v2, Lcom/android/contacts/calllog/CallLogAdapter;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lcom/android/contacts/calllog/ContactInfoHelper;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lcom/android/contacts/calllog/ContactInfoHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {v2, v3, p0, v4}, Lcom/android/contacts/calllog/CallLogAdapter;-><init>(Landroid/content/Context;Lcom/android/contacts/calllog/CallLogAdapter$CallFetcher;Lcom/android/contacts/calllog/ContactInfoHelper;)V

    iput-object v2, p0, Lcom/mediatek/contacts/calllog/CallLogSearchFragment;->mAdapter:Lcom/android/contacts/calllog/CallLogAdapter;

    .line 89
    iget-object v2, p0, Lcom/mediatek/contacts/calllog/CallLogSearchFragment;->mAdapter:Lcom/android/contacts/calllog/CallLogAdapter;

    invoke-virtual {p0, v2}, Landroid/app/ListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 91
    invoke-virtual {p0}, Landroid/app/ListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 92
    .local v1, listView:Landroid/widget/ListView;
    if-eqz v1, :cond_0

    .line 93
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 94
    iget-object v2, p0, Lcom/mediatek/contacts/calllog/CallLogSearchFragment;->mAdapter:Lcom/android/contacts/calllog/CallLogAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 95
    invoke-virtual {p0, v1}, Landroid/app/Fragment;->registerForContextMenu(Landroid/view/View;)V

    .line 97
    :cond_0
    return-void
.end method

.method public onVoicemailStatusFetched(Landroid/database/Cursor;)V
    .locals 0
    .parameter "statusCursor"

    .prologue
    .line 140
    return-void
.end method

.method public setDataSetChangedNotifyEnable(Z)V
    .locals 1
    .parameter "dataSetChangeNotifyFlag"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogSearchFragment;->mAdapter:Lcom/android/contacts/calllog/CallLogAdapter;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogSearchFragment;->mAdapter:Lcom/android/contacts/calllog/CallLogAdapter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/calllog/CallLogAdapter;->setUpdateFlagForContentChange(Z)V

    .line 185
    :cond_0
    return-void
.end method

.method public setListener(Lcom/mediatek/contacts/calllog/CallLogSearchFragment$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 156
    iput-object p1, p0, Lcom/mediatek/contacts/calllog/CallLogSearchFragment;->mListener:Lcom/mediatek/contacts/calllog/CallLogSearchFragment$Listener;

    .line 157
    return-void
.end method

.method public setSearchString(Ljava/lang/String;)V
    .locals 1
    .parameter "searchString"

    .prologue
    .line 110
    iput-object p1, p0, Lcom/mediatek/contacts/calllog/CallLogSearchFragment;->mSearchString:Ljava/lang/String;

    .line 111
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogSearchFragment;->mAdapter:Lcom/android/contacts/calllog/CallLogAdapter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/calllog/CallLogAdapter;->setQueryString(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0}, Lcom/mediatek/contacts/calllog/CallLogSearchFragment;->fetchCalls()V

    .line 113
    return-void
.end method
