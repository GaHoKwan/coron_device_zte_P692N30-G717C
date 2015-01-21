.class public Lcom/android/music/ArtistAlbumBrowserActivity;
.super Landroid/app/ExpandableListActivity;
.source "ArtistAlbumBrowserActivity.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Lcom/android/music/MusicUtils$Defs;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;
    }
.end annotation


# static fields
.field private static final RESCAN_DELAY_TIME:J = 0x3e8L

.field private static final SEARCH:I = 0x10

.field private static final TAG:Ljava/lang/String; = "Artist/Album"

.field private static mLastListPosCourse:I

.field private static mLastListPosFine:I


# instance fields
.field private EMPTYSHOW_SPEND:I

.field private mAdapter:Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

.field private mAdapterSent:Z

.field private mArtistCursor:Landroid/database/Cursor;

.field private mCurrentAlbumId:Ljava/lang/String;

.field private mCurrentAlbumName:Ljava/lang/String;

.field private mCurrentArtistId:Ljava/lang/String;

.field private mCurrentArtistName:Ljava/lang/String;

.field private mCurrentArtistNameForAlbum:Ljava/lang/String;

.field private final mCursorCols:[Ljava/lang/String;

.field private mIsMounted:Z

.field mIsUnknownAlbum:Z

.field mIsUnknownArtist:Z

.field public mListHandler:Landroid/os/Handler;

.field private mReScanHandler:Landroid/os/Handler;

.field private mScanListener:Landroid/content/BroadcastReceiver;

.field private mSubMenu:Landroid/view/SubMenu;

.field private mTrackListListener:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 109
    sput v0, Lcom/android/music/ArtistAlbumBrowserActivity;->mLastListPosCourse:I

    .line 110
    sput v0, Lcom/android/music/ArtistAlbumBrowserActivity;->mLastListPosFine:I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 95
    invoke-direct {p0}, Landroid/app/ExpandableListActivity;-><init>()V

    .line 115
    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->EMPTYSHOW_SPEND:I

    .line 117
    iput-boolean v3, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mIsMounted:Z

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mSubMenu:Landroid/view/SubMenu;

    .line 123
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const-string v1, "artist"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "number_of_albums"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "number_of_tracks"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "artist_pinyin_key"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCursorCols:[Ljava/lang/String;

    .line 302
    new-instance v0, Lcom/android/music/ArtistAlbumBrowserActivity$1;

    invoke-direct {v0, p0}, Lcom/android/music/ArtistAlbumBrowserActivity$1;-><init>(Lcom/android/music/ArtistAlbumBrowserActivity;)V

    iput-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    .line 308
    new-instance v0, Lcom/android/music/ArtistAlbumBrowserActivity$2;

    invoke-direct {v0, p0}, Lcom/android/music/ArtistAlbumBrowserActivity$2;-><init>(Lcom/android/music/ArtistAlbumBrowserActivity;)V

    iput-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    .line 339
    new-instance v0, Lcom/android/music/ArtistAlbumBrowserActivity$3;

    invoke-direct {v0, p0}, Lcom/android/music/ArtistAlbumBrowserActivity$3;-><init>(Lcom/android/music/ArtistAlbumBrowserActivity;)V

    iput-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    .line 351
    new-instance v0, Lcom/android/music/ArtistAlbumBrowserActivity$4;

    invoke-direct {v0, p0}, Lcom/android/music/ArtistAlbumBrowserActivity$4;-><init>(Lcom/android/music/ArtistAlbumBrowserActivity;)V

    iput-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mListHandler:Landroid/os/Handler;

    .line 681
    return-void
.end method

.method static synthetic access$000(Lcom/android/music/ArtistAlbumBrowserActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/music/ArtistAlbumBrowserActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mIsMounted:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/music/ArtistAlbumBrowserActivity;)Landroid/view/SubMenu;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mSubMenu:Landroid/view/SubMenu;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/music/ArtistAlbumBrowserActivity;)Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mAdapter:Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/music/ArtistAlbumBrowserActivity;Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Lcom/android/music/ArtistAlbumBrowserActivity;->getArtistCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/music/ArtistAlbumBrowserActivity;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/music/ArtistAlbumBrowserActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method private getArtistCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .parameter "async"
    .parameter "filter"

    .prologue
    .line 664
    const-string v7, "artist_pinyin_key"

    .line 665
    .local v7, sortOrder:Ljava/lang/String;
    sget-object v3, Landroid/provider/MediaStore$Audio$Artists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 666
    .local v3, uri:Landroid/net/Uri;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 667
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "filter"

    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 670
    :cond_0
    const/4 v8, 0x0

    .line 671
    .local v8, ret:Landroid/database/Cursor;
    if-eqz p1, :cond_1

    .line 672
    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCursorCols:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    :goto_0
    return-object v8

    .line 675
    :cond_1
    iget-object v4, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCursorCols:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lcom/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    goto :goto_0
.end method

.method private setTitle()V
    .locals 1

    .prologue
    .line 404
    const v0, 0x7f070028

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(I)V

    .line 405
    return-void
.end method


# virtual methods
.method doSearch()V
    .locals 6

    .prologue
    .line 596
    const/4 v2, 0x0

    .line 597
    .local v2, title:Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .line 599
    .local v1, query:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 600
    .local v0, i:Landroid/content/Intent;
    const-string v3, "android.intent.action.MEDIA_SEARCH"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 601
    const/high16 v3, 0x1000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 603
    iget-object v3, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistId:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 604
    iget-object v2, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistName:Ljava/lang/String;

    .line 605
    iget-object v1, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistName:Ljava/lang/String;

    .line 606
    const-string v3, "android.intent.extra.artist"

    iget-object v4, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistName:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 607
    const-string v3, "android.intent.extra.focus"

    const-string v4, "vnd.android.cursor.item/artist"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 621
    :goto_0
    const v3, 0x7f070068

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 622
    const-string v3, "query"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 624
    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 625
    return-void

    .line 609
    :cond_0
    iget-boolean v3, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mIsUnknownAlbum:Z

    if-eqz v3, :cond_2

    .line 610
    iget-object v1, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistNameForAlbum:Ljava/lang/String;

    move-object v2, v1

    .line 617
    :cond_1
    :goto_1
    const-string v3, "android.intent.extra.artist"

    iget-object v4, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistNameForAlbum:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 618
    const-string v3, "android.intent.extra.album"

    iget-object v4, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 619
    const-string v3, "android.intent.extra.focus"

    const-string v4, "vnd.android.cursor.item/album"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 612
    :cond_2
    iget-object v1, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    move-object v2, v1

    .line 613
    iget-boolean v3, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mIsUnknownArtist:Z

    if-nez v3, :cond_1

    .line 614
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistNameForAlbum:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public init(Landroid/database/Cursor;)V
    .locals 5
    .parameter "c"

    .prologue
    .line 376
    iget-object v1, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mAdapter:Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    if-nez v1, :cond_0

    .line 401
    :goto_0
    return-void

    .line 379
    :cond_0
    iget-object v1, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mAdapter:Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    invoke-virtual {v1, p1}, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 381
    iget-object v1, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    if-nez v1, :cond_1

    .line 382
    const-string v1, "Artist/Album"

    const-string v2, "mArtistCursor is null"

    invoke-static {v1, v2}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    iget-boolean v1, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mIsMounted:Z

    invoke-static {p0, v1}, Lcom/android/music/MusicUtils;->displayDatabaseError(Landroid/app/Activity;Z)V

    .line 384
    invoke-virtual {p0}, Landroid/app/Activity;->closeContextMenu()V

    .line 385
    iget-object v1, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 390
    :cond_1
    invoke-virtual {p0}, Landroid/app/ExpandableListActivity;->getExpandableListView()Landroid/widget/ExpandableListView;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/android/music/MusicUtils;->emptyShow(Landroid/widget/ListView;Landroid/app/Activity;)V

    .line 393
    sget v1, Lcom/android/music/ArtistAlbumBrowserActivity;->mLastListPosCourse:I

    if-ltz v1, :cond_2

    .line 394
    invoke-virtual {p0}, Landroid/app/ExpandableListActivity;->getExpandableListView()Landroid/widget/ExpandableListView;

    move-result-object v0

    .line 395
    .local v0, elv:Landroid/widget/ExpandableListView;
    sget v1, Lcom/android/music/ArtistAlbumBrowserActivity;->mLastListPosCourse:I

    sget v2, Lcom/android/music/ArtistAlbumBrowserActivity;->mLastListPosFine:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 396
    const/4 v1, -0x1

    sput v1, Lcom/android/music/ArtistAlbumBrowserActivity;->mLastListPosCourse:I

    .line 399
    .end local v0           #elv:Landroid/widget/ExpandableListView;
    :cond_2
    invoke-static {p0}, Lcom/android/music/MusicUtils;->hideDatabaseError(Landroid/app/Activity;)V

    .line 400
    invoke-direct {p0}, Lcom/android/music/ArtistAlbumBrowserActivity;->setTitle()V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 629
    sparse-switch p1, :sswitch_data_0

    .line 660
    :cond_0
    :goto_0
    return-void

    .line 631
    :sswitch_0
    if-nez p2, :cond_1

    .line 632
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 634
    :cond_1
    iget-object v4, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mAdapter:Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    invoke-virtual {v4}, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Lcom/android/music/ArtistAlbumBrowserActivity;->getArtistCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    goto :goto_0

    .line 639
    :sswitch_1
    const/4 v4, -0x1

    if-ne p2, v4, :cond_0

    .line 640
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 643
    .local v3, uri:Landroid/net/Uri;
    const-string v4, "add_to_playlist_item_id"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 644
    .local v2, selectItemString:Ljava/lang/String;
    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    .line 645
    const/4 v0, 0x0

    .line 646
    .local v0, list:[J
    const-string v4, "_"

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 647
    .local v1, selectItemId:Ljava/lang/String;
    const-string v4, "Artist/Album"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onActivityResult: selectItemId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    const-string v4, "selectedartist"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 650
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {p0, v4, v5}, Lcom/android/music/MusicUtils;->getSongListForArtist(Landroid/content/Context;J)[J

    move-result-object v0

    .line 654
    :cond_2
    :goto_1
    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {p0, v0, v4, v5}, Lcom/android/music/MusicUtils;->addToPlaylist(Landroid/content/Context;[JJ)V

    goto :goto_0

    .line 651
    :cond_3
    const-string v4, "selectedalbum"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 652
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {p0, v4, v5}, Lcom/android/music/MusicUtils;->getSongListForAlbum(Landroid/content/Context;J)[J

    move-result-object v0

    goto :goto_1

    .line 629
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0xb -> :sswitch_0
    .end sparse-switch
.end method

.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 6
    .parameter "parent"
    .parameter "v"
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "id"

    .prologue
    .line 410
    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    .line 411
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.PICK"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 412
    .local v2, intent:Landroid/content/Intent;
    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v4, "vnd.android.cursor.dir/track"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 413
    const-string v3, "album"

    iget-object v4, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 414
    invoke-virtual {p0}, Landroid/app/ExpandableListActivity;->getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v3

    invoke-interface {v3, p3, p4}, Landroid/widget/ExpandableListAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/Cursor;

    .line 415
    .local v1, c:Landroid/database/Cursor;
    const-string v3, "album"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 416
    .local v0, album:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v3, "<unknown>"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 418
    :cond_0
    iget-object v3, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    invoke-interface {v3, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 419
    iget-object v3, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    const-string v5, "_id"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistId:Ljava/lang/String;

    .line 420
    const-string v3, "artist"

    iget-object v4, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 422
    :cond_1
    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 423
    const/4 v3, 0x1

    return v3
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 12
    .parameter "item"

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x0

    const/4 v6, 0x1

    .line 489
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 592
    :pswitch_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v6

    :goto_0
    return v6

    .line 492
    :pswitch_1
    iget-object v7, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistId:Ljava/lang/String;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistId:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {p0, v7, v8}, Lcom/android/music/MusicUtils;->getSongListForArtist(Landroid/content/Context;J)[J

    move-result-object v2

    .line 497
    .local v2, list:[J
    :goto_1
    invoke-static {p0, v2, v10}, Lcom/android/music/MusicUtils;->playAll(Landroid/content/Context;[JI)V

    goto :goto_0

    .line 492
    .end local v2           #list:[J
    :cond_0
    iget-object v7, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {p0, v7, v8}, Lcom/android/music/MusicUtils;->getSongListForAlbum(Landroid/content/Context;J)[J

    move-result-object v2

    goto :goto_1

    .line 502
    :pswitch_2
    iget-object v7, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistId:Ljava/lang/String;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistId:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {p0, v7, v8}, Lcom/android/music/MusicUtils;->getSongListForArtist(Landroid/content/Context;J)[J

    move-result-object v2

    .line 506
    .restart local v2       #list:[J
    :goto_2
    invoke-static {p0, v2}, Lcom/android/music/MusicUtils;->addToCurrentPlaylist(Landroid/content/Context;[J)V

    goto :goto_0

    .line 502
    .end local v2           #list:[J
    :cond_1
    iget-object v7, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {p0, v7, v8}, Lcom/android/music/MusicUtils;->getSongListForAlbum(Landroid/content/Context;J)[J

    move-result-object v2

    goto :goto_2

    .line 512
    :pswitch_3
    invoke-virtual {p0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v3

    .line 513
    .local v3, parent:Landroid/app/Activity;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 514
    .local v1, intent:Landroid/content/Intent;
    const-class v7, Lcom/android/music/CreatePlaylist;

    invoke-virtual {v1, p0, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 519
    iget-object v7, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistId:Ljava/lang/String;

    if-eqz v7, :cond_3

    .line 520
    const-string v7, "add_to_playlist_item_id"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "selectedartist_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistId:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 526
    :cond_2
    :goto_3
    const-string v7, "SAVE_PLAYLIST_FLAG"

    const-string v8, "new_playlist"

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 527
    if-nez v3, :cond_4

    .line 528
    invoke-virtual {p0, v1, v11}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 521
    :cond_3
    iget-object v7, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    if-eqz v7, :cond_2

    .line 522
    const-string v7, "add_to_playlist_item_id"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "selectedalbum_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3

    .line 533
    :cond_4
    const-string v7, "start_activity_tab_id"

    invoke-virtual {v1, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 534
    invoke-virtual {v3, v1, v11}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 541
    .end local v1           #intent:Landroid/content/Intent;
    .end local v3           #parent:Landroid/app/Activity;
    :pswitch_4
    iget-object v7, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistId:Ljava/lang/String;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistId:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {p0, v7, v8}, Lcom/android/music/MusicUtils;->getSongListForArtist(Landroid/content/Context;J)[J

    move-result-object v2

    .line 545
    .restart local v2       #list:[J
    :goto_4
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "playlist"

    const-wide/16 v9, 0x0

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 546
    .local v4, playlist:J
    invoke-static {p0, v2, v4, v5}, Lcom/android/music/MusicUtils;->addToPlaylist(Landroid/content/Context;[JJ)V

    goto/16 :goto_0

    .line 541
    .end local v2           #list:[J
    .end local v4           #playlist:J
    :cond_5
    iget-object v7, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {p0, v7, v8}, Lcom/android/music/MusicUtils;->getSongListForAlbum(Landroid/content/Context;J)[J

    move-result-object v2

    goto :goto_4

    .line 552
    :pswitch_5
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 555
    .local v0, b:Landroid/os/Bundle;
    iget-object v7, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistId:Ljava/lang/String;

    if-eqz v7, :cond_6

    .line 556
    iget-object v7, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistId:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {p0, v7, v8}, Lcom/android/music/MusicUtils;->getSongListForArtist(Landroid/content/Context;J)[J

    move-result-object v2

    .line 557
    .restart local v2       #list:[J
    const-string v7, "delete_desc_string_id"

    const v8, 0x7f070020

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 558
    const-string v7, "delete_desc_track_info"

    iget-object v8, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistName:Ljava/lang/String;

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    :goto_5
    const-string v7, "items"

    invoke-virtual {v0, v7, v2}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 581
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 582
    .restart local v1       #intent:Landroid/content/Intent;
    const-class v7, Lcom/android/music/DeleteItems;

    invoke-virtual {v1, p0, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 583
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 584
    const/4 v7, -0x1

    invoke-virtual {p0, v1, v7}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 567
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #list:[J
    :cond_6
    iget-object v7, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {p0, v7, v8}, Lcom/android/music/MusicUtils;->getSongListForAlbum(Landroid/content/Context;J)[J

    move-result-object v2

    .line 568
    .restart local v2       #list:[J
    const-string v7, "delete_desc_string_id"

    const v8, 0x7f070021

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 569
    const-string v7, "delete_desc_track_info"

    iget-object v8, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 589
    .end local v0           #b:Landroid/os/Bundle;
    .end local v2           #list:[J
    :pswitch_6
    invoke-virtual {p0}, Lcom/android/music/ArtistAlbumBrowserActivity;->doSearch()V

    goto/16 :goto_0

    .line 489
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "icicle"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 135
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 136
    const-string v0, "Artist/Album"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 138
    invoke-virtual {p0, v4}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 139
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 140
    if-eqz p1, :cond_0

    .line 141
    const-string v0, "selectedalbum"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    .line 142
    const-string v0, "selectedalbumname"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    .line 143
    const-string v0, "selectedartist"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistId:Ljava/lang/String;

    .line 144
    const-string v0, "selectedartistname"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistName:Ljava/lang/String;

    .line 153
    :goto_0
    new-instance v10, Landroid/content/IntentFilter;

    invoke-direct {v10}, Landroid/content/IntentFilter;-><init>()V

    .line 154
    .local v10, f:Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 155
    const-string v0, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 156
    const-string v0, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 158
    const-string v0, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 160
    const-string v0, "file"

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, v10}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 163
    const v0, 0x7f03000a

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 164
    invoke-virtual {p0}, Landroid/app/ExpandableListActivity;->getExpandableListView()Landroid/widget/ExpandableListView;

    move-result-object v12

    .line 165
    .local v12, lv:Landroid/widget/ExpandableListView;
    invoke-virtual {v12, p0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 166
    invoke-virtual {v12, v4}, Landroid/widget/AbsListView;->setTextFilterEnabled(Z)V

    .line 168
    invoke-virtual {p0}, Landroid/app/Activity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    iput-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mAdapter:Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    .line 169
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mAdapter:Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    if-nez v0, :cond_1

    .line 170
    const-string v0, "Artist/Album"

    const-string v1, "starting query"

    invoke-static {v0, v1}, Lcom/android/music/MusicLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    new-instance v0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const v4, 0x7f030018

    new-array v5, v2, [Ljava/lang/String;

    new-array v6, v2, [I

    const v7, 0x7f030016

    new-array v8, v2, [Ljava/lang/String;

    new-array v9, v2, [I

    move-object v2, p0

    invoke-direct/range {v0 .. v9}, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;-><init>(Landroid/content/Context;Lcom/android/music/ArtistAlbumBrowserActivity;Landroid/database/Cursor;I[Ljava/lang/String;[II[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mAdapter:Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    .line 181
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mAdapter:Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    invoke-virtual {p0, v0}, Landroid/app/ExpandableListActivity;->setListAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 182
    const v0, 0x7f070069

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(I)V

    .line 183
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mAdapter:Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    invoke-virtual {v0}, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/android/music/ArtistAlbumBrowserActivity;->getArtistCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    .line 196
    :goto_1
    return-void

    .line 147
    .end local v10           #f:Landroid/content/IntentFilter;
    .end local v12           #lv:Landroid/widget/ExpandableListView;
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v11

    .line 148
    .local v11, intent:Landroid/content/Intent;
    const-string v0, "selectedalbum"

    invoke-virtual {v11, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    .line 149
    const-string v0, "selectedartist"

    invoke-virtual {v11, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistId:Ljava/lang/String;

    goto/16 :goto_0

    .line 185
    .end local v11           #intent:Landroid/content/Intent;
    .restart local v10       #f:Landroid/content/IntentFilter;
    .restart local v12       #lv:Landroid/widget/ExpandableListView;
    :cond_1
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mAdapter:Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    invoke-virtual {v0, p0}, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->setActivity(Lcom/android/music/ArtistAlbumBrowserActivity;)V

    .line 187
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mAdapter:Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    invoke-virtual {v0}, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->reloadStringOnLocaleChanges()V

    .line 188
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mAdapter:Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    invoke-virtual {p0, v0}, Landroid/app/ExpandableListActivity;->setListAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 189
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mAdapter:Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    invoke-virtual {v0}, Landroid/widget/CursorTreeAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    .line 190
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_2

    .line 191
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/android/music/ArtistAlbumBrowserActivity;->init(Landroid/database/Cursor;)V

    goto :goto_1

    .line 193
    :cond_2
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mAdapter:Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    invoke-virtual {v0}, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/android/music/ArtistAlbumBrowserActivity;->getArtistCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    goto :goto_1
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 9
    .parameter "menu"
    .parameter "view"
    .parameter "menuInfoIn"

    .prologue
    .line 428
    const/4 v5, 0x0

    const/4 v6, 0x5

    const/4 v7, 0x0

    const v8, 0x7f070050

    invoke-interface {p1, v5, v6, v7, v8}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 429
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const v8, 0x7f070051

    invoke-interface {p1, v5, v6, v7, v8}, Landroid/view/ContextMenu;->addSubMenu(IIII)Landroid/view/SubMenu;

    move-result-object v5

    iput-object v5, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mSubMenu:Landroid/view/SubMenu;

    .line 430
    iget-object v5, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mSubMenu:Landroid/view/SubMenu;

    invoke-static {p0, v5}, Lcom/android/music/MusicUtils;->makePlaylistMenu(Landroid/content/Context;Landroid/view/SubMenu;)V

    .line 431
    const/4 v5, 0x0

    const/16 v6, 0xa

    const/4 v7, 0x0

    const v8, 0x7f07001d

    invoke-interface {p1, v5, v6, v7, v8}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-object v4, p3

    .line 432
    check-cast v4, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;

    .line 433
    .local v4, mi:Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;
    iget-wide v5, v4, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;->packedPosition:J

    invoke-static {v5, v6}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v3

    .line 434
    .local v3, itemtype:I
    iget-wide v5, v4, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;->packedPosition:J

    invoke-static {v5, v6}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v2

    .line 435
    .local v2, gpos:I
    iget-wide v5, v4, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;->packedPosition:J

    invoke-static {v5, v6}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v1

    .line 436
    .local v1, cpos:I
    if-nez v3, :cond_5

    .line 437
    const/4 v5, -0x1

    if-ne v2, v5, :cond_1

    .line 439
    const-string v5, "Artist/Album"

    const-string v6, "no group"

    invoke-static {v5, v6}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    :cond_0
    :goto_0
    return-void

    .line 442
    :cond_1
    invoke-virtual {p0}, Landroid/app/ExpandableListActivity;->getExpandableListView()Landroid/widget/ExpandableListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v5

    sub-int/2addr v2, v5

    .line 443
    iget-object v5, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    invoke-interface {v5, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 444
    iget-object v5, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    iget-object v6, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    const-string v7, "_id"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistId:Ljava/lang/String;

    .line 445
    iget-object v5, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    iget-object v6, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    const-string v7, "artist"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistName:Ljava/lang/String;

    .line 446
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    .line 447
    iget-object v5, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistName:Ljava/lang/String;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistName:Ljava/lang/String;

    const-string v6, "<unknown>"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    const/4 v5, 0x1

    :goto_1
    iput-boolean v5, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mIsUnknownArtist:Z

    .line 449
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mIsUnknownAlbum:Z

    .line 450
    iget-boolean v5, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mIsUnknownArtist:Z

    if-eqz v5, :cond_4

    .line 451
    const v5, 0x7f070046

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    goto :goto_0

    .line 447
    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    .line 453
    :cond_4
    iget-object v5, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistName:Ljava/lang/String;

    invoke-interface {p1, v5}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 454
    const/4 v5, 0x0

    const/16 v6, 0x10

    const/4 v7, 0x0

    const v8, 0x7f070032

    invoke-interface {p1, v5, v6, v7, v8}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0

    .line 457
    :cond_5
    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    .line 458
    const/4 v5, -0x1

    if-ne v1, v5, :cond_6

    .line 460
    const-string v5, "Artist/Album"

    const-string v6, "no child"

    invoke-static {v5, v6}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 463
    :cond_6
    invoke-virtual {p0}, Landroid/app/ExpandableListActivity;->getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v5

    invoke-interface {v5, v2, v1}, Landroid/widget/ExpandableListAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 464
    .local v0, c:Landroid/database/Cursor;
    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 465
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistId:Ljava/lang/String;

    .line 466
    iget-wide v5, v4, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;->id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    .line 467
    const-string v5, "album"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    .line 468
    invoke-virtual {p0}, Landroid/app/ExpandableListActivity;->getExpandableListView()Landroid/widget/ExpandableListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v5

    sub-int/2addr v2, v5

    .line 469
    iget-object v5, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    invoke-interface {v5, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 470
    iget-object v5, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    iget-object v6, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    const-string v7, "artist"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistNameForAlbum:Ljava/lang/String;

    .line 472
    iget-object v5, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistNameForAlbum:Ljava/lang/String;

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistNameForAlbum:Ljava/lang/String;

    const-string v6, "<unknown>"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    :cond_7
    const/4 v5, 0x1

    :goto_2
    iput-boolean v5, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mIsUnknownArtist:Z

    .line 474
    iget-object v5, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    const-string v6, "<unknown>"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    :cond_8
    const/4 v5, 0x1

    :goto_3
    iput-boolean v5, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mIsUnknownAlbum:Z

    .line 476
    iget-boolean v5, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mIsUnknownAlbum:Z

    if-eqz v5, :cond_c

    .line 477
    const v5, 0x7f070047

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 481
    :goto_4
    iget-boolean v5, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mIsUnknownAlbum:Z

    if-eqz v5, :cond_9

    iget-boolean v5, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mIsUnknownArtist:Z

    if-nez v5, :cond_0

    .line 482
    :cond_9
    const/4 v5, 0x0

    const/16 v6, 0x10

    const/4 v7, 0x0

    const v8, 0x7f070032

    invoke-interface {p1, v5, v6, v7, v8}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 472
    :cond_a
    const/4 v5, 0x0

    goto :goto_2

    .line 474
    :cond_b
    const/4 v5, 0x0

    goto :goto_3

    .line 479
    :cond_c
    iget-object v5, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    invoke-interface {p1, v5}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    goto :goto_4
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 248
    const-string v2, "Artist/Album"

    const-string v3, "onDestroy"

    invoke-static {v2, v3}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    invoke-virtual {p0}, Landroid/app/ExpandableListActivity;->getExpandableListView()Landroid/widget/ExpandableListView;

    move-result-object v1

    .line 250
    .local v1, lv:Landroid/widget/ExpandableListView;
    if-eqz v1, :cond_0

    .line 251
    invoke-virtual {v1}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v2

    sput v2, Lcom/android/music/ArtistAlbumBrowserActivity;->mLastListPosCourse:I

    .line 252
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 253
    .local v0, cv:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 254
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    sput v2, Lcom/android/music/ArtistAlbumBrowserActivity;->mLastListPosFine:I

    .line 262
    .end local v0           #cv:Landroid/view/View;
    :cond_0
    iget-boolean v2, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mAdapterSent:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mAdapter:Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    if-eqz v2, :cond_1

    .line 263
    iget-object v2, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mAdapter:Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    invoke-virtual {v2, v4}, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 268
    :cond_1
    invoke-virtual {p0, v4}, Landroid/app/ExpandableListActivity;->setListAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 269
    iput-object v4, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mAdapter:Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    .line 270
    iget-object v2, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 271
    invoke-virtual {p0, v4}, Landroid/app/ExpandableListActivity;->setListAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 272
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 273
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 360
    const-string v1, "Artist/Album"

    const-string v2, "onPause"

    invoke-static {v1, v2}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iget-object v1, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mSubMenu:Landroid/view/SubMenu;

    if-eqz v1, :cond_0

    .line 362
    iget-object v1, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mSubMenu:Landroid/view/SubMenu;

    invoke-interface {v1}, Landroid/view/SubMenu;->close()V

    .line 364
    :cond_0
    iget-object v1, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 365
    iget-object v1, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 367
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 368
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "selectedalbum"

    iget-object v2, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 369
    const-string v1, "selectedartist"

    iget-object v2, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 370
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 372
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 373
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 277
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 278
    const-string v1, "Artist/Album"

    const-string v2, "onResume>>>"

    invoke-static {v1, v2}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 280
    .local v0, f:Landroid/content/IntentFilter;
    const-string v1, "com.android.music.metachanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 281
    const-string v1, "com.android.music.queuechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 282
    iget-object v1, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 283
    iget-object v1, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v3, v3}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 285
    invoke-virtual {p0}, Lcom/android/music/ArtistAlbumBrowserActivity;->reFreshEmptyView()V

    .line 286
    invoke-static {p0}, Lcom/android/music/MusicUtils;->setSpinnerState(Landroid/app/Activity;)V

    .line 287
    const-string v1, "Artist/Album"

    const-string v2, "onResume<<<"

    invoke-static {v1, v2}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 230
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mAdapterSent:Z

    .line 231
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mAdapter:Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outcicle"

    .prologue
    .line 239
    const-string v0, "selectedalbum"

    iget-object v1, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    const-string v0, "selectedalbumname"

    iget-object v1, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    const-string v0, "selectedartist"

    iget-object v1, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const-string v0, "selectedartistname"

    iget-object v1, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 244
    return-void
.end method

.method public reFreshEmptyView()V
    .locals 4

    .prologue
    .line 293
    invoke-virtual {p0}, Landroid/app/ExpandableListActivity;->getExpandableListView()Landroid/widget/ExpandableListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ExpandableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/ExpandableListActivity;->getExpandableListView()Landroid/widget/ExpandableListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ExpandableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/ExpandableListActivity;->getExpandableListView()Landroid/widget/ExpandableListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mListHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->EMPTYSHOW_SPEND:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 300
    :goto_0
    return-void

    .line 298
    :cond_0
    invoke-virtual {p0}, Landroid/app/ExpandableListActivity;->getExpandableListView()Landroid/widget/ExpandableListView;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/android/music/MusicUtils;->emptyShow(Landroid/widget/ListView;Landroid/app/Activity;)V

    goto :goto_0
.end method
