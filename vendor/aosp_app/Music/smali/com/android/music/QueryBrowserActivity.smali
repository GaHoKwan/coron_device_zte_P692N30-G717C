.class public Lcom/android/music/QueryBrowserActivity;
.super Landroid/app/ListActivity;
.source "QueryBrowserActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Lcom/android/music/MusicUtils$Defs;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/music/QueryBrowserActivity$QueryListAdapter;
    }
.end annotation


# static fields
.field private static final ADD_TO_QUEUE:I = 0x1

.field private static final EMPTY_SHOW:I = 0x8

.field private static final EXPLORE_ALBUM:I = 0x6

.field private static final EXPLORE_ARTIST:I = 0x4

.field private static final LIST_SHOW:I = 0x7

.field private static final PLAY_ALBUM:I = 0x5

.field private static final PLAY_ARTIST:I = 0x3

.field private static final PLAY_NEXT:I = 0x2

.field private static final PLAY_NOW:I = 0x0

.field private static final REQUERY:I = 0x3

.field private static final RESCAN:I = 0x9

.field private static final TAG:Ljava/lang/String; = "QueryBrowser"


# instance fields
.field private mAdapter:Lcom/android/music/QueryBrowserActivity$QueryListAdapter;

.field private mAdapterSent:Z

.field private final mCursorCols:[Ljava/lang/String;

.field private mEmptyView:Landroid/widget/TextView;

.field private mFilterString:Ljava/lang/String;

.field private mIsMounted:Z

.field private mQueryCursor:Landroid/database/Cursor;

.field private mReScanHandler:Landroid/os/Handler;

.field private mResetSdStatus:Z

.field private mScanListener:Landroid/content/BroadcastReceiver;

.field private mToken:Lcom/android/music/MusicUtils$ServiceToken;

.field private mTrackList:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 123
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 100
    const-string v0, ""

    iput-object v0, p0, Lcom/android/music/QueryBrowserActivity;->mFilterString:Ljava/lang/String;

    .line 107
    iput-boolean v2, p0, Lcom/android/music/QueryBrowserActivity;->mResetSdStatus:Z

    .line 108
    iput-boolean v3, p0, Lcom/android/music/QueryBrowserActivity;->mIsMounted:Z

    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/music/QueryBrowserActivity;->mEmptyView:Landroid/widget/TextView;

    .line 113
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "mime_type"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "artist"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "album"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "data1"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "data2"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/music/QueryBrowserActivity;->mCursorCols:[Ljava/lang/String;

    .line 278
    new-instance v0, Lcom/android/music/QueryBrowserActivity$1;

    invoke-direct {v0, p0}, Lcom/android/music/QueryBrowserActivity$1;-><init>(Lcom/android/music/QueryBrowserActivity;)V

    iput-object v0, p0, Lcom/android/music/QueryBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    .line 305
    new-instance v0, Lcom/android/music/QueryBrowserActivity$2;

    invoke-direct {v0, p0}, Lcom/android/music/QueryBrowserActivity$2;-><init>(Lcom/android/music/QueryBrowserActivity;)V

    iput-object v0, p0, Lcom/android/music/QueryBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    .line 124
    return-void
.end method

.method static synthetic access$002(Lcom/android/music/QueryBrowserActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/android/music/QueryBrowserActivity;->mResetSdStatus:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/music/QueryBrowserActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/music/QueryBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/music/QueryBrowserActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/android/music/QueryBrowserActivity;->mIsMounted:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/music/QueryBrowserActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/music/QueryBrowserActivity;->mTrackList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/music/QueryBrowserActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/music/QueryBrowserActivity;->mEmptyView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/music/QueryBrowserActivity;)Lcom/android/music/QueryBrowserActivity$QueryListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/music/QueryBrowserActivity;->mAdapter:Lcom/android/music/QueryBrowserActivity$QueryListAdapter;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/music/QueryBrowserActivity;Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Lcom/android/music/QueryBrowserActivity;->getQueryCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/music/QueryBrowserActivity;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/music/QueryBrowserActivity;->mQueryCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/music/QueryBrowserActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/music/QueryBrowserActivity;->mQueryCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method private getQueryCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 12
    .parameter "async"
    .parameter "filter"

    .prologue
    const/4 v2, 0x0

    .line 424
    if-nez p2, :cond_0

    .line 425
    const-string p2, ""

    .line 429
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://media/external/audio/search/fancy/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 432
    .local v3, search:Landroid/net/Uri;
    const/4 v10, 0x0

    .line 433
    .local v10, ret:Landroid/database/Cursor;
    if-eqz p1, :cond_2

    .line 434
    const/4 v1, 0x0

    iget-object v4, p0, Lcom/android/music/QueryBrowserActivity;->mCursorCols:[Ljava/lang/String;

    move-object v0, p1

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    :goto_0
    if-eqz v10, :cond_1

    .line 439
    const-string v0, "QueryBrowser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ret != null  getQueryCursor: Count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " search="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/music/MusicLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_3

    const/16 v11, 0x8

    .line 444
    .local v11, what:I
    :goto_1
    iget-object v0, p0, Lcom/android/music/QueryBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/music/QueryBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    invoke-virtual {v1, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 447
    .end local v11           #what:I
    :cond_1
    return-object v10

    .line 436
    :cond_2
    iget-object v6, p0, Lcom/android/music/QueryBrowserActivity;->mCursorCols:[Ljava/lang/String;

    move-object v4, p0

    move-object v5, v3

    move-object v7, v2

    move-object v8, v2

    move-object v9, v2

    invoke-static/range {v4 .. v9}, Lcom/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    goto :goto_0

    .line 443
    :cond_3
    const/4 v11, 0x7

    goto :goto_1
.end method


# virtual methods
.method public init(Landroid/database/Cursor;)V
    .locals 5
    .parameter "c"

    .prologue
    const/16 v0, 0x8

    .line 347
    iget-object v1, p0, Lcom/android/music/QueryBrowserActivity;->mAdapter:Lcom/android/music/QueryBrowserActivity$QueryListAdapter;

    if-nez v1, :cond_0

    .line 375
    :goto_0
    return-void

    .line 350
    :cond_0
    iget-object v1, p0, Lcom/android/music/QueryBrowserActivity;->mAdapter:Lcom/android/music/QueryBrowserActivity$QueryListAdapter;

    invoke-virtual {v1, p1}, Lcom/android/music/QueryBrowserActivity$QueryListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 352
    iget-object v1, p0, Lcom/android/music/QueryBrowserActivity;->mQueryCursor:Landroid/database/Cursor;

    if-nez v1, :cond_3

    .line 354
    iget-boolean v1, p0, Lcom/android/music/QueryBrowserActivity;->mResetSdStatus:Z

    if-eqz v1, :cond_1

    .line 355
    invoke-static {}, Lcom/android/music/MusicUtils;->resetSdStatus()V

    .line 356
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/music/QueryBrowserActivity;->mResetSdStatus:Z

    .line 359
    :cond_1
    iget-object v1, p0, Lcom/android/music/QueryBrowserActivity;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 360
    iget-object v1, p0, Lcom/android/music/QueryBrowserActivity;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 363
    :cond_2
    iget-boolean v1, p0, Lcom/android/music/QueryBrowserActivity;->mIsMounted:Z

    invoke-static {p0, v1}, Lcom/android/music/MusicUtils;->displayDatabaseError(Landroid/app/Activity;Z)V

    .line 364
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/app/ListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 365
    iget-object v1, p0, Lcom/android/music/QueryBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/music/QueryBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 368
    :cond_3
    invoke-static {p0}, Lcom/android/music/MusicUtils;->hideDatabaseError(Landroid/app/Activity;)V

    .line 369
    const-string v1, "QueryBrowser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "c.getCount() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "getListView().getCount()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/AdapterView;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/music/MusicLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_4

    .line 373
    .local v0, what:I
    :goto_1
    iget-object v1, p0, Lcom/android/music/QueryBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/music/QueryBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 372
    .end local v0           #what:I
    :cond_4
    const/4 v0, 0x7

    goto :goto_1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 334
    packed-switch p1, :pswitch_data_0

    .line 343
    :goto_0
    return-void

    .line 336
    :pswitch_0
    if-nez p2, :cond_0

    .line 337
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/android/music/QueryBrowserActivity;->mAdapter:Lcom/android/music/QueryBrowserActivity$QueryListAdapter;

    invoke-virtual {v0}, Lcom/android/music/QueryBrowserActivity$QueryListAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/music/QueryBrowserActivity;->getQueryCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    goto :goto_0

    .line 334
    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 129
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 130
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 131
    invoke-virtual {p0}, Landroid/app/Activity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/music/QueryBrowserActivity$QueryListAdapter;

    iput-object v0, p0, Lcom/android/music/QueryBrowserActivity;->mAdapter:Lcom/android/music/QueryBrowserActivity$QueryListAdapter;

    .line 132
    invoke-static {p0, p0}, Lcom/android/music/MusicUtils;->bindToService(Landroid/app/Activity;Landroid/content/ServiceConnection;)Lcom/android/music/MusicUtils$ServiceToken;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/QueryBrowserActivity;->mToken:Lcom/android/music/MusicUtils$ServiceToken;

    .line 134
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 254
    iget-object v0, p0, Lcom/android/music/QueryBrowserActivity;->mToken:Lcom/android/music/MusicUtils$ServiceToken;

    invoke-static {v0}, Lcom/android/music/MusicUtils;->unbindFromService(Lcom/android/music/MusicUtils$ServiceToken;)V

    .line 255
    iget-object v0, p0, Lcom/android/music/QueryBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 260
    iget-boolean v0, p0, Lcom/android/music/QueryBrowserActivity;->mAdapterSent:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/music/QueryBrowserActivity;->mAdapter:Lcom/android/music/QueryBrowserActivity$QueryListAdapter;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/android/music/QueryBrowserActivity;->mAdapter:Lcom/android/music/QueryBrowserActivity$QueryListAdapter;

    invoke-virtual {v0, v1}, Lcom/android/music/QueryBrowserActivity$QueryListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 266
    :cond_0
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 267
    invoke-virtual {p0, v1}, Landroid/app/ListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 269
    :cond_1
    iput-object v1, p0, Lcom/android/music/QueryBrowserActivity;->mAdapter:Lcom/android/music/QueryBrowserActivity$QueryListAdapter;

    .line 270
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 271
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 7
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v6, 0x0

    .line 382
    iget-object v3, p0, Lcom/android/music/QueryBrowserActivity;->mQueryCursor:Landroid/database/Cursor;

    invoke-interface {v3, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 383
    iget-object v3, p0, Lcom/android/music/QueryBrowserActivity;->mQueryCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/music/QueryBrowserActivity;->mQueryCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 409
    :cond_0
    :goto_0
    return-void

    .line 386
    :cond_1
    iget-object v3, p0, Lcom/android/music/QueryBrowserActivity;->mQueryCursor:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/android/music/QueryBrowserActivity;->mQueryCursor:Landroid/database/Cursor;

    const-string v5, "mime_type"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 389
    .local v2, selectedType:Ljava/lang/String;
    const-string v3, "artist"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 390
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.PICK"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 393
    .local v0, intent:Landroid/content/Intent;
    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v4, "vnd.android.cursor.dir/album"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 394
    const-string v3, "artist"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 395
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 396
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    const-string v3, "album"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 397
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.PICK"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 400
    .restart local v0       #intent:Landroid/content/Intent;
    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v4, "vnd.android.cursor.dir/track"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 401
    const-string v3, "album"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 402
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 403
    .end local v0           #intent:Landroid/content/Intent;
    :cond_3
    if-ltz p3, :cond_4

    const-wide/16 v3, 0x0

    cmp-long v3, p4, v3

    if-ltz v3, :cond_4

    .line 404
    const/4 v3, 0x1

    new-array v1, v3, [J

    aput-wide p4, v1, v6

    .line 405
    .local v1, list:[J
    invoke-static {p0, v1, v6}, Lcom/android/music/MusicUtils;->playAll(Landroid/content/Context;[JI)V

    goto :goto_0

    .line 407
    .end local v1           #list:[J
    :cond_4
    const-string v3, "QueryBrowser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid position/id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/music/MusicLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 413
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 420
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 416
    :pswitch_0
    iget-object v0, p0, Lcom/android/music/QueryBrowserActivity;->mTrackList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getSelectedItemId()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/android/music/MusicUtils;->setRingtone(Landroid/content/Context;J)V

    .line 417
    const/4 v0, 0x1

    goto :goto_0

    .line 413
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 247
    const-string v0, "QueryBrowser"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object v0, p0, Lcom/android/music/QueryBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 249
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 250
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 241
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/music/QueryBrowserActivity;->mAdapterSent:Z

    .line 242
    iget-object v0, p0, Lcom/android/music/QueryBrowserActivity;->mAdapter:Lcom/android/music/QueryBrowserActivity$QueryListAdapter;

    return-object v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 21
    .parameter "name"
    .parameter "service"

    .prologue
    .line 138
    new-instance v12, Landroid/content/IntentFilter;

    invoke-direct {v12}, Landroid/content/IntentFilter;-><init>()V

    .line 139
    .local v12, f:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v12, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 140
    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v12, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 142
    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v12, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 144
    const-string v2, "file"

    invoke-virtual {v12, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 145
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/music/QueryBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v12}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 147
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v16

    .line 148
    .local v16, intent:Landroid/content/Intent;
    if-eqz v16, :cond_0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    .line 150
    .local v9, action:Ljava/lang/String;
    :goto_0
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 152
    invoke-virtual/range {v16 .. v16}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v20

    .line 153
    .local v20, uri:Landroid/net/Uri;
    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v18

    .line 154
    .local v18, path:Ljava/lang/String;
    const-string v2, "content://media/external/audio/media/"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 156
    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v15

    .line 157
    .local v15, id:Ljava/lang/String;
    const/4 v2, 0x1

    new-array v0, v2, [J

    move-object/from16 v17, v0

    const/4 v2, 0x0

    invoke-static {v15}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    aput-wide v3, v17, v2

    .line 158
    .local v17, list:[J
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1, v2}, Lcom/android/music/MusicUtils;->playAll(Landroid/content/Context;[JI)V

    .line 159
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    .line 233
    .end local v15           #id:Ljava/lang/String;
    .end local v17           #list:[J
    .end local v18           #path:Ljava/lang/String;
    .end local v20           #uri:Landroid/net/Uri;
    :goto_1
    return-void

    .line 148
    .end local v9           #action:Ljava/lang/String;
    :cond_0
    const/4 v9, 0x0

    goto :goto_0

    .line 161
    .restart local v9       #action:Ljava/lang/String;
    .restart local v18       #path:Ljava/lang/String;
    .restart local v20       #uri:Landroid/net/Uri;
    :cond_1
    const-string v2, "content://media/external/audio/albums/"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 163
    new-instance v14, Landroid/content/Intent;

    const-string v2, "android.intent.action.PICK"

    invoke-direct {v14, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 164
    .local v14, i:Landroid/content/Intent;
    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v3, "vnd.android.cursor.dir/track"

    invoke-virtual {v14, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 165
    const-string v2, "album"

    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 167
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 169
    .end local v14           #i:Landroid/content/Intent;
    :cond_2
    const-string v2, "content://media/external/audio/artists/"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 171
    new-instance v14, Landroid/content/Intent;

    const-string v2, "android.intent.action.PICK"

    invoke-direct {v14, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 172
    .restart local v14       #i:Landroid/content/Intent;
    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v3, "vnd.android.cursor.dir/album"

    invoke-virtual {v14, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 173
    const-string v2, "artist"

    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 175
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 180
    .end local v14           #i:Landroid/content/Intent;
    .end local v18           #path:Ljava/lang/String;
    .end local v20           #uri:Landroid/net/Uri;
    :cond_3
    const-string v2, "query"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/music/QueryBrowserActivity;->mFilterString:Ljava/lang/String;

    .line 181
    const-string v2, "android.intent.action.MEDIA_SEARCH"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 182
    const-string v2, "android.intent.extra.focus"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 183
    .local v13, focus:Ljava/lang/String;
    const-string v2, "android.intent.extra.artist"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 184
    .local v11, artist:Ljava/lang/String;
    const-string v2, "android.intent.extra.album"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 185
    .local v10, album:Ljava/lang/String;
    const-string v2, "android.intent.extra.title"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 186
    .local v19, title:Ljava/lang/String;
    if-eqz v13, :cond_4

    .line 187
    const-string v2, "audio/"

    invoke-virtual {v13, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    if-eqz v19, :cond_5

    .line 188
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/QueryBrowserActivity;->mFilterString:Ljava/lang/String;

    .line 204
    .end local v10           #album:Ljava/lang/String;
    .end local v11           #artist:Ljava/lang/String;
    .end local v13           #focus:Ljava/lang/String;
    .end local v19           #title:Ljava/lang/String;
    :cond_4
    :goto_2
    const v2, 0x7f030010

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setContentView(I)V

    .line 205
    invoke-virtual/range {p0 .. p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/music/QueryBrowserActivity;->mTrackList:Landroid/widget/ListView;

    .line 206
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/music/QueryBrowserActivity;->mTrackList:Landroid/widget/ListView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/AbsListView;->setTextFilterEnabled(Z)V

    .line 207
    const v2, 0x7f0c003c

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/music/QueryBrowserActivity;->mEmptyView:Landroid/widget/TextView;

    .line 208
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/music/QueryBrowserActivity;->mAdapter:Lcom/android/music/QueryBrowserActivity$QueryListAdapter;

    if-nez v2, :cond_8

    .line 209
    new-instance v2, Lcom/android/music/QueryBrowserActivity$QueryListAdapter;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v3

    const v5, 0x7f030015

    const/4 v6, 0x0

    const/4 v4, 0x0

    new-array v7, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    new-array v8, v4, [I

    move-object/from16 v4, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/music/QueryBrowserActivity$QueryListAdapter;-><init>(Landroid/content/Context;Lcom/android/music/QueryBrowserActivity;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/music/QueryBrowserActivity;->mAdapter:Lcom/android/music/QueryBrowserActivity$QueryListAdapter;

    .line 216
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/music/QueryBrowserActivity;->mAdapter:Lcom/android/music/QueryBrowserActivity$QueryListAdapter;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/ListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 217
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/music/QueryBrowserActivity;->mFilterString:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 218
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/music/QueryBrowserActivity;->mAdapter:Lcom/android/music/QueryBrowserActivity$QueryListAdapter;

    invoke-virtual {v2}, Lcom/android/music/QueryBrowserActivity$QueryListAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/music/QueryBrowserActivity;->getQueryCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    goto/16 :goto_1

    .line 189
    .restart local v10       #album:Ljava/lang/String;
    .restart local v11       #artist:Ljava/lang/String;
    .restart local v13       #focus:Ljava/lang/String;
    .restart local v19       #title:Ljava/lang/String;
    :cond_5
    const-string v2, "vnd.android.cursor.item/album"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 190
    if-eqz v10, :cond_4

    .line 191
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/music/QueryBrowserActivity;->mFilterString:Ljava/lang/String;

    .line 192
    if-eqz v11, :cond_4

    .line 193
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/music/QueryBrowserActivity;->mFilterString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/music/QueryBrowserActivity;->mFilterString:Ljava/lang/String;

    goto/16 :goto_2

    .line 196
    :cond_6
    const-string v2, "vnd.android.cursor.item/artist"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 197
    if-eqz v11, :cond_4

    .line 198
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/music/QueryBrowserActivity;->mFilterString:Ljava/lang/String;

    goto/16 :goto_2

    .line 220
    .end local v10           #album:Ljava/lang/String;
    .end local v11           #artist:Ljava/lang/String;
    .end local v13           #focus:Ljava/lang/String;
    .end local v19           #title:Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/music/QueryBrowserActivity;->mTrackList:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/music/QueryBrowserActivity;->mFilterString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/AbsListView;->setFilterText(Ljava/lang/String;)V

    .line 221
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/music/QueryBrowserActivity;->mFilterString:Ljava/lang/String;

    goto/16 :goto_1

    .line 224
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/music/QueryBrowserActivity;->mAdapter:Lcom/android/music/QueryBrowserActivity$QueryListAdapter;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/android/music/QueryBrowserActivity$QueryListAdapter;->setActivity(Lcom/android/music/QueryBrowserActivity;)V

    .line 225
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/music/QueryBrowserActivity;->mAdapter:Lcom/android/music/QueryBrowserActivity$QueryListAdapter;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/ListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 226
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/music/QueryBrowserActivity;->mAdapter:Lcom/android/music/QueryBrowserActivity$QueryListAdapter;

    invoke-virtual {v2}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/music/QueryBrowserActivity;->mQueryCursor:Landroid/database/Cursor;

    .line 227
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/music/QueryBrowserActivity;->mQueryCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_9

    .line 228
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/music/QueryBrowserActivity;->mQueryCursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/music/QueryBrowserActivity;->init(Landroid/database/Cursor;)V

    goto/16 :goto_1

    .line 230
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/music/QueryBrowserActivity;->mAdapter:Lcom/android/music/QueryBrowserActivity$QueryListAdapter;

    invoke-virtual {v2}, Lcom/android/music/QueryBrowserActivity$QueryListAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/music/QueryBrowserActivity;->mFilterString:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/music/QueryBrowserActivity;->getQueryCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    goto/16 :goto_1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 237
    return-void
.end method
