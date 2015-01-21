.class public Lcom/mediatek/contacts/activities/CallLogSearchResultActivity;
.super Landroid/app/ListActivity;
.source "CallLogSearchResultActivity.java"

# interfaces
.implements Lcom/android/contacts/calllog/CallLogAdapter$CallFetcher;
.implements Lcom/android/contacts/calllog/CallLogQueryHandler$Listener;


# static fields
.field private static final EMPTY_LOADER_ID:I = 0x0

.field private static final MENU_ITEM_DELETE_ALL:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CallLogSearchResultActivity"


# instance fields
.field private mAdapter:Lcom/android/contacts/calllog/CallLogAdapter;

.field private mCallLogFetched:Z

.field private mCallLogQueryHandler:Lcom/android/contacts/calllog/CallLogQueryHandler;

.field private mData:Ljava/lang/String;

.field private mEmptyLoaderRunning:Z

.field private mEmptyView:Landroid/widget/TextView;

.field private mScrollToTop:Z

.field private mSearchResult:Landroid/view/ViewGroup;

.field private mSearchResultFor:Landroid/widget/TextView;

.field private mSearchResultFound:Landroid/widget/TextView;

.field public mStatusBarMgr:Landroid/app/StatusBarManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 75
    return-void
.end method

.method private destroyEmptyLoaderIfAllDataFetched()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 246
    iget-boolean v0, p0, Lcom/mediatek/contacts/activities/CallLogSearchResultActivity;->mCallLogFetched:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mediatek/contacts/activities/CallLogSearchResultActivity;->mEmptyLoaderRunning:Z

    if-eqz v0, :cond_0

    .line 247
    iput-boolean v1, p0, Lcom/mediatek/contacts/activities/CallLogSearchResultActivity;->mEmptyLoaderRunning:Z

    .line 248
    invoke-virtual {p0}, Landroid/app/Activity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 250
    :cond_0
    return-void
.end method

.method private getQuantityText(III)Ljava/lang/String;
    .locals 4
    .parameter "count"
    .parameter "zeroResourceId"
    .parameter "pluralResourceId"

    .prologue
    .line 305
    if-nez p1, :cond_0

    .line 306
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 309
    :goto_0
    return-object v1

    .line 308
    :cond_0
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p3, p1}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 309
    .local v0, format:Ljava/lang/String;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "log"

    .prologue
    .line 208
    const-string v0, "CallLogSearchResultActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    return-void
.end method

.method private refreshData()V
    .locals 1

    .prologue
    .line 151
    const-string v0, "CallLogSearchResultActivity refreshData()"

    invoke-direct {p0, v0}, Lcom/mediatek/contacts/activities/CallLogSearchResultActivity;->log(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p0}, Lcom/mediatek/contacts/activities/CallLogSearchResultActivity;->startCallsQuery()V

    .line 157
    return-void
.end method


# virtual methods
.method public fetchCalls()V
    .locals 4

    .prologue
    .line 259
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 260
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "user_query"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/contacts/activities/CallLogSearchResultActivity;->mData:Ljava/lang/String;

    .line 261
    sget-object v2, Lcom/android/contacts/util/Constants;->CALLLOG_SEARCH_URI_BASE:Landroid/net/Uri;

    iget-object v3, p0, Lcom/mediatek/contacts/activities/CallLogSearchResultActivity;->mData:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 262
    .local v1, uri:Landroid/net/Uri;
    iget-object v2, p0, Lcom/mediatek/contacts/activities/CallLogSearchResultActivity;->mCallLogQueryHandler:Lcom/android/contacts/calllog/CallLogQueryHandler;

    invoke-virtual {v2, v1}, Lcom/android/contacts/calllog/CallLogQueryHandler;->fetchSearchCalls(Landroid/net/Uri;)V

    .line 264
    return-void
.end method

.method public onCallsDeleted()V
    .locals 0

    .prologue
    .line 214
    return-void
.end method

.method public onCallsFetched(Landroid/database/Cursor;)V
    .locals 5
    .parameter "cursor"

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x0

    .line 221
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " CallLogSearchResultActivity onCallsFetched(), cursor = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/contacts/activities/CallLogSearchResultActivity;->log(Ljava/lang/String;)V

    .line 222
    iget-object v1, p0, Lcom/mediatek/contacts/activities/CallLogSearchResultActivity;->mAdapter:Lcom/android/contacts/calllog/CallLogAdapter;

    invoke-virtual {v1, v3}, Lcom/android/contacts/calllog/CallLogAdapter;->setLoading(Z)V

    .line 223
    iget-object v1, p0, Lcom/mediatek/contacts/activities/CallLogSearchResultActivity;->mAdapter:Lcom/android/contacts/calllog/CallLogAdapter;

    invoke-virtual {v1, p1}, Lcom/android/contacts/calllog/CallLogAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 225
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 227
    if-nez p1, :cond_2

    .line 228
    invoke-virtual {p0, v3}, Lcom/mediatek/contacts/activities/CallLogSearchResultActivity;->setSearchResultCount(I)V

    .line 233
    :goto_0
    iget-boolean v1, p0, Lcom/mediatek/contacts/activities/CallLogSearchResultActivity;->mScrollToTop:Z

    if-eqz v1, :cond_1

    .line 234
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 235
    .local v0, listView:Landroid/widget/ListView;
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v1

    if-le v1, v4, :cond_0

    .line 236
    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setSelection(I)V

    .line 238
    :cond_0
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 239
    iput-boolean v3, p0, Lcom/mediatek/contacts/activities/CallLogSearchResultActivity;->mScrollToTop:Z

    .line 241
    .end local v0           #listView:Landroid/widget/ListView;
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/contacts/activities/CallLogSearchResultActivity;->mCallLogFetched:Z

    .line 242
    invoke-direct {p0}, Lcom/mediatek/contacts/activities/CallLogSearchResultActivity;->destroyEmptyLoaderIfAllDataFetched()V

    .line 243
    return-void

    .line 230
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/mediatek/contacts/activities/CallLogSearchResultActivity;->setSearchResultCount(I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "state"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 79
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 81
    const v6, 0x7f040013

    invoke-virtual {p0, v6}, Landroid/app/Activity;->setContentView(I)V

    .line 85
    new-instance v6, Lcom/android/contacts/calllog/CallLogQueryHandler;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-direct {v6, v7, p0}, Lcom/android/contacts/calllog/CallLogQueryHandler;-><init>(Landroid/content/ContentResolver;Lcom/android/contacts/calllog/CallLogQueryHandler$Listener;)V

    iput-object v6, p0, Lcom/mediatek/contacts/activities/CallLogSearchResultActivity;->mCallLogQueryHandler:Lcom/android/contacts/calllog/CallLogQueryHandler;

    .line 87
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 88
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, action:Ljava/lang/String;
    const-string v6, "android.intent.action.VIEW"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 91
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    .line 92
    .local v5, uri:Landroid/net/Uri;
    new-instance v3, Landroid/content/Intent;

    const-class v6, Lcom/android/contacts/CallDetailActivity;

    invoke-direct {v3, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 93
    .local v3, newIntent:Landroid/content/Intent;
    invoke-virtual {v3, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 94
    invoke-virtual {p0, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 95
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 98
    .end local v3           #newIntent:Landroid/content/Intent;
    .end local v5           #uri:Landroid/net/Uri;
    :cond_0
    const-string v6, "user_query"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/mediatek/contacts/activities/CallLogSearchResultActivity;->mData:Ljava/lang/String;

    .line 99
    const v6, 0x7f07008a

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/mediatek/contacts/activities/CallLogSearchResultActivity;->mSearchResult:Landroid/view/ViewGroup;

    .line 100
    iget-object v6, p0, Lcom/mediatek/contacts/activities/CallLogSearchResultActivity;->mSearchResult:Landroid/view/ViewGroup;

    invoke-virtual {v6, v11}, Landroid/view/View;->setVisibility(I)V

    .line 101
    const v6, 0x7f07008b

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/mediatek/contacts/activities/CallLogSearchResultActivity;->mSearchResultFor:Landroid/widget/TextView;

    .line 102
    iget-object v6, p0, Lcom/mediatek/contacts/activities/CallLogSearchResultActivity;->mSearchResultFor:Landroid/widget/TextView;

    const v7, 0x7f0c0095

    new-array v8, v12, [Ljava/lang/Object;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "<b>"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/mediatek/contacts/activities/CallLogSearchResultActivity;->mData:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "</b>"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-virtual {p0, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c027e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 105
    .local v4, searching:Ljava/lang/String;
    const v6, 0x7f07008c

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/mediatek/contacts/activities/CallLogSearchResultActivity;->mSearchResultFound:Landroid/widget/TextView;

    .line 106
    iget-object v6, p0, Lcom/mediatek/contacts/activities/CallLogSearchResultActivity;->mSearchResultFound:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    invoke-static {p0}, Lcom/android/contacts/ContactsUtils;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 109
    .local v1, currentCountryIso:Ljava/lang/String;
    new-instance v6, Lcom/android/contacts/calllog/CallLogAdapter;

    new-instance v7, Lcom/android/contacts/calllog/ContactInfoHelper;

    invoke-direct {v7, p0, v1}, Lcom/android/contacts/calllog/ContactInfoHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {v6, p0, p0, v7}, Lcom/android/contacts/calllog/CallLogAdapter;-><init>(Landroid/content/Context;Lcom/android/contacts/calllog/CallLogAdapter$CallFetcher;Lcom/android/contacts/calllog/ContactInfoHelper;)V

    iput-object v6, p0, Lcom/mediatek/contacts/activities/CallLogSearchResultActivity;->mAdapter:Lcom/android/contacts/calllog/CallLogAdapter;

    .line 110
    iget-object v6, p0, Lcom/mediatek/contacts/activities/CallLogSearchResultActivity;->mAdapter:Lcom/android/contacts/calllog/CallLogAdapter;

    iget-object v7, p0, Lcom/mediatek/contacts/activities/CallLogSearchResultActivity;->mData:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/android/contacts/calllog/CallLogAdapter;->setQueryString(Ljava/lang/String;)V

    .line 111
    iget-object v6, p0, Lcom/mediatek/contacts/activities/CallLogSearchResultActivity;->mAdapter:Lcom/android/contacts/calllog/CallLogAdapter;

    invoke-virtual {p0, v6}, Landroid/app/ListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 112
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v6

    invoke-virtual {v6, v12}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 114
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 268
    const v0, 0x7f0c000f

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080038

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 270
    return v2
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 186
    const-string v0, "onDestroy()"

    invoke-direct {p0, v0}, Lcom/mediatek/contacts/activities/CallLogSearchResultActivity;->log(Ljava/lang/String;)V

    .line 187
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 189
    iget-object v0, p0, Lcom/mediatek/contacts/activities/CallLogSearchResultActivity;->mAdapter:Lcom/android/contacts/calllog/CallLogAdapter;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/mediatek/contacts/activities/CallLogSearchResultActivity;->mAdapter:Lcom/android/contacts/calllog/CallLogAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/calllog/CallLogAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 192
    :cond_0
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 315
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 316
    if-eqz p2, :cond_0

    instance-of v1, p2, Lcom/mediatek/contacts/calllog/CallLogListItemView;

    if-nez v1, :cond_2

    .line 317
    :cond_0
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "CallLogFragment exception"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 325
    :cond_1
    :goto_0
    return-void

    .line 320
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/calllog/IntentProvider;

    .line 321
    .local v0, intentProvider:Lcom/android/contacts/calllog/IntentProvider;
    if-eqz v0, :cond_1

    .line 322
    invoke-virtual {v0, p0}, Lcom/android/contacts/calllog/IntentProvider;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "follow_sim_management"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 142
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 143
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 144
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 284
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 295
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 286
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mediatek/contacts/activities/CallLogMultipleDeleteActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 287
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "false"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 288
    const-string v1, "user_query"

    iget-object v2, p0, Lcom/mediatek/contacts/activities/CallLogSearchResultActivity;->mData:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 289
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 290
    const/4 v1, 0x1

    goto :goto_0

    .line 284
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 175
    invoke-static {}, Lcom/mediatek/contacts/util/SetIndicatorUtils;->getInstance()Lcom/mediatek/contacts/util/SetIndicatorUtils;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/mediatek/contacts/util/SetIndicatorUtils;->showIndicator(ZLandroid/app/Activity;)V

    .line 176
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 177
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 275
    iget-object v4, p0, Lcom/mediatek/contacts/activities/CallLogSearchResultActivity;->mAdapter:Lcom/android/contacts/calllog/CallLogAdapter;

    invoke-virtual {v4}, Lcom/android/common/widget/GroupingListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 276
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-gtz v4, :cond_2

    :cond_0
    move v1, v3

    .line 277
    .local v1, enable:Z
    :goto_0
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    if-nez v1, :cond_3

    move v4, v3

    :goto_1
    invoke-interface {v5, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 278
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    if-nez v1, :cond_1

    move v2, v3

    :cond_1
    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 279
    return v3

    .end local v1           #enable:Z
    :cond_2
    move v1, v2

    .line 276
    goto :goto_0

    .restart local v1       #enable:Z
    :cond_3
    move v4, v2

    .line 277
    goto :goto_1
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 118
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 120
    invoke-direct {p0}, Lcom/mediatek/contacts/activities/CallLogSearchResultActivity;->refreshData()V

    .line 122
    iget-object v0, p0, Lcom/mediatek/contacts/activities/CallLogSearchResultActivity;->mSearchResultFor:Landroid/widget/TextView;

    const v1, 0x7f0c0095

    new-array v2, v6, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<b>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/contacts/activities/CallLogSearchResultActivity;->mData:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</b>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    invoke-static {}, Lcom/mediatek/contacts/util/SetIndicatorUtils;->getInstance()Lcom/mediatek/contacts/util/SetIndicatorUtils;

    move-result-object v0

    invoke-virtual {v0, v6, p0}, Lcom/mediatek/contacts/util/SetIndicatorUtils;->showIndicator(ZLandroid/app/Activity;)V

    .line 126
    return-void
.end method

.method public onStart()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 134
    iput-boolean v4, p0, Lcom/mediatek/contacts/activities/CallLogSearchResultActivity;->mScrollToTop:Z

    .line 135
    invoke-virtual {p0}, Landroid/app/Activity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance v3, Lcom/android/contacts/util/EmptyLoader$Callback;

    invoke-direct {v3, p0}, Lcom/android/contacts/util/EmptyLoader$Callback;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 136
    iput-boolean v4, p0, Lcom/mediatek/contacts/activities/CallLogSearchResultActivity;->mEmptyLoaderRunning:Z

    .line 137
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 138
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 181
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 182
    return-void
.end method

.method public onVoicemailStatusFetched(Landroid/database/Cursor;)V
    .locals 0
    .parameter "statusCursor"

    .prologue
    .line 255
    return-void
.end method

.method public setSearchResultCount(I)V
    .locals 3
    .parameter "count"

    .prologue
    .line 299
    const v1, 0x7f0c0096

    const/high16 v2, 0x7f0e

    invoke-direct {p0, p1, v1, v2}, Lcom/mediatek/contacts/activities/CallLogSearchResultActivity;->getQuantityText(III)Ljava/lang/String;

    move-result-object v0

    .line 301
    .local v0, text:Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/contacts/activities/CallLogSearchResultActivity;->mSearchResultFound:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 302
    return-void
.end method

.method public startCallsQuery()V
    .locals 4

    .prologue
    .line 160
    const-string v2, "CallLogSearchResultActivity startCallsQuery()"

    invoke-direct {p0, v2}, Lcom/mediatek/contacts/activities/CallLogSearchResultActivity;->log(Ljava/lang/String;)V

    .line 161
    iget-object v2, p0, Lcom/mediatek/contacts/activities/CallLogSearchResultActivity;->mAdapter:Lcom/android/contacts/calllog/CallLogAdapter;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/contacts/calllog/CallLogAdapter;->setLoading(Z)V

    .line 162
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/AdapterView;->getEmptyView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/mediatek/contacts/activities/CallLogSearchResultActivity;->mEmptyView:Landroid/widget/TextView;

    .line 163
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 164
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/mediatek/contacts/activities/CallLogSearchResultActivity;->mEmptyView:Landroid/widget/TextView;

    const v3, 0x7f0c009a

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 165
    const-string v2, "user_query"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/contacts/activities/CallLogSearchResultActivity;->mData:Ljava/lang/String;

    .line 166
    sget-object v2, Lcom/android/contacts/util/Constants;->CALLLOG_SEARCH_URI_BASE:Landroid/net/Uri;

    iget-object v3, p0, Lcom/mediatek/contacts/activities/CallLogSearchResultActivity;->mData:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 167
    .local v1, uri:Landroid/net/Uri;
    iget-object v2, p0, Lcom/mediatek/contacts/activities/CallLogSearchResultActivity;->mCallLogQueryHandler:Lcom/android/contacts/calllog/CallLogQueryHandler;

    invoke-virtual {v2, v1}, Lcom/android/contacts/calllog/CallLogQueryHandler;->fetchSearchCalls(Landroid/net/Uri;)V

    .line 168
    return-void
.end method
