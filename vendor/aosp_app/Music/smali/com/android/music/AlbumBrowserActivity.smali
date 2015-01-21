.class public Lcom/android/music/AlbumBrowserActivity;
.super Landroid/app/ListActivity;
.source "AlbumBrowserActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Lcom/android/music/MusicUtils$Defs;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;
    }
.end annotation


# static fields
.field private static final RESCAN_DELAY_TIME:J = 0x3e8L

.field private static final SEARCH:I = 0x10

.field private static final TAG:Ljava/lang/String; = "Album"

.field private static mLastListPosCourse:I

.field private static mLastListPosFine:I


# instance fields
.field private mAdapter:Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;

.field private mAdapterSent:Z

.field private mAlbumCursor:Landroid/database/Cursor;

.field private mArtistId:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCurrentAlbumId:Ljava/lang/String;

.field private mCurrentAlbumName:Ljava/lang/String;

.field private mCurrentArtistNameForAlbum:Ljava/lang/String;

.field private final mCursorCols:[Ljava/lang/String;

.field private mIsInBackgroud:Z

.field private mIsMounted:Z

.field mIsUnknownAlbum:Z

.field mIsUnknownArtist:Z

.field private mListView:Landroid/widget/ListView;

.field private mOrientation:I

.field private mQueryText:Ljava/lang/CharSequence;

.field mQueryTextListener:Landroid/widget/SearchView$OnQueryTextListener;

.field private mReScanHandler:Landroid/os/Handler;

.field private final mRefreshAlbumArtHandler:Landroid/os/Handler;

.field private mScanListener:Landroid/content/BroadcastReceiver;

.field mSearchItem:Landroid/view/MenuItem;

.field private mService:Lcom/android/music/IMediaPlaybackService;

.field private mSubMenu:Landroid/view/SubMenu;

.field private mToken:Lcom/android/music/MusicUtils$ServiceToken;

.field private mTrackListListener:Landroid/content/BroadcastReceiver;

.field private mVisibleItemsCount:I

.field private mWithtabs:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 117
    sput v0, Lcom/android/music/AlbumBrowserActivity;->mLastListPosCourse:I

    .line 118
    sput v0, Lcom/android/music/AlbumBrowserActivity;->mLastListPosFine:I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 160
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 122
    iput-boolean v3, p0, Lcom/android/music/AlbumBrowserActivity;->mIsMounted:Z

    .line 126
    iput-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    .line 127
    iput-boolean v2, p0, Lcom/android/music/AlbumBrowserActivity;->mWithtabs:Z

    .line 132
    iput-boolean v2, p0, Lcom/android/music/AlbumBrowserActivity;->mIsInBackgroud:Z

    .line 138
    iput-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mSubMenu:Landroid/view/SubMenu;

    .line 143
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/music/AlbumBrowserActivity;->mVisibleItemsCount:I

    .line 150
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "artist"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "album"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "album_art"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "album_pinyin_key"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mCursorCols:[Ljava/lang/String;

    .line 321
    new-instance v0, Lcom/android/music/AlbumBrowserActivity$1;

    invoke-direct {v0, p0}, Lcom/android/music/AlbumBrowserActivity$1;-><init>(Lcom/android/music/AlbumBrowserActivity;)V

    iput-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    .line 333
    new-instance v0, Lcom/android/music/AlbumBrowserActivity$2;

    invoke-direct {v0, p0}, Lcom/android/music/AlbumBrowserActivity$2;-><init>(Lcom/android/music/AlbumBrowserActivity;)V

    iput-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    .line 365
    new-instance v0, Lcom/android/music/AlbumBrowserActivity$3;

    invoke-direct {v0, p0}, Lcom/android/music/AlbumBrowserActivity$3;-><init>(Lcom/android/music/AlbumBrowserActivity;)V

    iput-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    .line 1042
    new-instance v0, Lcom/android/music/AlbumBrowserActivity$4;

    invoke-direct {v0, p0}, Lcom/android/music/AlbumBrowserActivity$4;-><init>(Lcom/android/music/AlbumBrowserActivity;)V

    iput-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mQueryTextListener:Landroid/widget/SearchView$OnQueryTextListener;

    .line 1061
    new-instance v0, Lcom/android/music/AlbumBrowserActivity$5;

    invoke-direct {v0, p0}, Lcom/android/music/AlbumBrowserActivity$5;-><init>(Lcom/android/music/AlbumBrowserActivity;)V

    iput-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mRefreshAlbumArtHandler:Landroid/os/Handler;

    .line 161
    return-void
.end method

.method static synthetic access$000(Lcom/android/music/AlbumBrowserActivity;)Lcom/android/music/IMediaPlaybackService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/music/AlbumBrowserActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget v0, p0, Lcom/android/music/AlbumBrowserActivity;->mOrientation:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/music/AlbumBrowserActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget v0, p0, Lcom/android/music/AlbumBrowserActivity;->mVisibleItemsCount:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/music/AlbumBrowserActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    iput p1, p0, Lcom/android/music/AlbumBrowserActivity;->mVisibleItemsCount:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/music/AlbumBrowserActivity;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/music/AlbumBrowserActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/music/AlbumBrowserActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/music/AlbumBrowserActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/music/AlbumBrowserActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/music/AlbumBrowserActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    iput-boolean p1, p0, Lcom/android/music/AlbumBrowserActivity;->mIsMounted:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/music/AlbumBrowserActivity;)Landroid/view/SubMenu;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mSubMenu:Landroid/view/SubMenu;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/music/AlbumBrowserActivity;)Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mAdapter:Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/music/AlbumBrowserActivity;Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 105
    invoke-direct {p0, p1, p2}, Lcom/android/music/AlbumBrowserActivity;->getAlbumCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/music/AlbumBrowserActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mRefreshAlbumArtHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getAlbumCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .parameter "async"
    .parameter "filter"

    .prologue
    .line 693
    const-string v7, "album_pinyin_key"

    .line 694
    .local v7, sortOrder:Ljava/lang/String;
    const/4 v8, 0x0

    .line 695
    .local v8, ret:Landroid/database/Cursor;
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mArtistId:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 696
    const-string v0, "external"

    iget-object v1, p0, Lcom/android/music/AlbumBrowserActivity;->mArtistId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/provider/MediaStore$Audio$Artists$Albums;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v3

    .line 698
    .local v3, uri:Landroid/net/Uri;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 699
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "filter"

    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 701
    :cond_0
    if-eqz p1, :cond_1

    .line 702
    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/music/AlbumBrowserActivity;->mCursorCols:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    :goto_0
    return-object v8

    .line 705
    :cond_1
    iget-object v4, p0, Lcom/android/music/AlbumBrowserActivity;->mCursorCols:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lcom/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    goto :goto_0

    .line 709
    .end local v3           #uri:Landroid/net/Uri;
    :cond_2
    sget-object v3, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 710
    .restart local v3       #uri:Landroid/net/Uri;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 711
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "filter"

    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 713
    :cond_3
    if-eqz p1, :cond_4

    .line 714
    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/music/AlbumBrowserActivity;->mCursorCols:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 718
    :cond_4
    iget-object v4, p0, Lcom/android/music/AlbumBrowserActivity;->mCursorCols:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lcom/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    goto :goto_0
.end method

.method private setTitle()V
    .locals 4

    .prologue
    .line 416
    const-string v0, ""

    .line 417
    .local v0, fancyName:Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 418
    iget-object v1, p0, Lcom/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 419
    iget-object v1, p0, Lcom/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    const-string v3, "artist"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 421
    if-eqz v0, :cond_0

    const-string v1, "<unknown>"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 422
    :cond_0
    const v1, 0x7f070046

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 425
    :cond_1
    iget-object v1, p0, Lcom/android/music/AlbumBrowserActivity;->mArtistId:Ljava/lang/String;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 426
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 429
    :goto_0
    return-void

    .line 428
    :cond_2
    const v1, 0x7f07002a

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setTitle(I)V

    goto :goto_0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 1092
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mSearchItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x52

    if-ne v0, v1, :cond_0

    .line 1093
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mSearchItem:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->isActionViewExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1094
    const/4 v0, 0x1

    .line 1097
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method doSearch()V
    .locals 6

    .prologue
    .line 535
    const/4 v2, 0x0

    .line 536
    .local v2, title:Ljava/lang/CharSequence;
    const-string v1, ""

    .line 538
    .local v1, query:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 539
    .local v0, i:Landroid/content/Intent;
    const-string v3, "android.intent.action.MEDIA_SEARCH"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 540
    const/high16 v3, 0x1000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 542
    const-string v2, ""

    .line 543
    iget-boolean v3, p0, Lcom/android/music/AlbumBrowserActivity;->mIsUnknownAlbum:Z

    if-nez v3, :cond_0

    .line 544
    iget-object v1, p0, Lcom/android/music/AlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    .line 545
    const-string v3, "android.intent.extra.album"

    iget-object v4, p0, Lcom/android/music/AlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 546
    iget-object v2, p0, Lcom/android/music/AlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    .line 548
    :cond_0
    iget-boolean v3, p0, Lcom/android/music/AlbumBrowserActivity;->mIsUnknownArtist:Z

    if-nez v3, :cond_1

    .line 549
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/music/AlbumBrowserActivity;->mCurrentArtistNameForAlbum:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 550
    const-string v3, "android.intent.extra.artist"

    iget-object v4, p0, Lcom/android/music/AlbumBrowserActivity;->mCurrentArtistNameForAlbum:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 551
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/music/AlbumBrowserActivity;->mCurrentArtistNameForAlbum:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 555
    :cond_1
    const-string v3, "android.intent.extra.focus"

    const-string v4, "vnd.android.cursor.item/album"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 556
    const v3, 0x7f070068

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 557
    const-string v3, "query"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 559
    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 560
    return-void
.end method

.method public init(Landroid/database/Cursor;)V
    .locals 4
    .parameter "c"

    .prologue
    .line 388
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mAdapter:Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;

    if-nez v0, :cond_0

    .line 413
    :goto_0
    return-void

    .line 391
    :cond_0
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mAdapter:Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 393
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    if-nez v0, :cond_1

    .line 394
    const-string v0, "Album"

    const-string v1, "mAlbumCursor is null"

    invoke-static {v0, v1}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    iget-boolean v0, p0, Lcom/android/music/AlbumBrowserActivity;->mIsMounted:Z

    invoke-static {p0, v0}, Lcom/android/music/MusicUtils;->displayDatabaseError(Landroid/app/Activity;Z)V

    .line 397
    invoke-virtual {p0}, Landroid/app/Activity;->closeContextMenu()V

    .line 398
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 403
    :cond_1
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/android/music/MusicUtils;->emptyShow(Landroid/widget/ListView;Landroid/app/Activity;)V

    .line 406
    sget v0, Lcom/android/music/AlbumBrowserActivity;->mLastListPosCourse:I

    if-ltz v0, :cond_2

    .line 407
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    sget v1, Lcom/android/music/AlbumBrowserActivity;->mLastListPosCourse:I

    sget v2, Lcom/android/music/AlbumBrowserActivity;->mLastListPosFine:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 408
    const/4 v0, -0x1

    sput v0, Lcom/android/music/AlbumBrowserActivity;->mLastListPosCourse:I

    .line 411
    :cond_2
    invoke-static {p0}, Lcom/android/music/MusicUtils;->hideDatabaseError(Landroid/app/Activity;)V

    .line 412
    invoke-direct {p0}, Lcom/android/music/AlbumBrowserActivity;->setTitle()V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 564
    sparse-switch p1, :sswitch_data_0

    .line 588
    :cond_0
    :goto_0
    return-void

    .line 566
    :sswitch_0
    if-nez p2, :cond_1

    .line 567
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 569
    :cond_1
    iget-object v3, p0, Lcom/android/music/AlbumBrowserActivity;->mAdapter:Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;

    invoke-virtual {v3}, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/android/music/AlbumBrowserActivity;->getAlbumCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    goto :goto_0

    .line 574
    :sswitch_1
    const/4 v3, -0x1

    if-ne p2, v3, :cond_0

    .line 575
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 578
    .local v2, uri:Landroid/net/Uri;
    const-string v3, "add_to_playlist_item_id"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 579
    .local v1, selectAlbumId:Ljava/lang/String;
    const-string v3, "Album"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onActivityResult: selectAlbumId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 581
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {p0, v3, v4}, Lcom/android/music/MusicUtils;->getSongListForAlbum(Landroid/content/Context;J)[J

    move-result-object v0

    .line 582
    .local v0, list:[J
    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {p0, v0, v3, v4}, Lcom/android/music/MusicUtils;->addToPlaylist(Landroid/content/Context;[JJ)V

    goto :goto_0

    .line 564
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0xb -> :sswitch_0
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "newConfig"

    .prologue
    .line 1008
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1009
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/android/music/AlbumBrowserActivity;->mOrientation:I

    .line 1011
    const v1, 0x7f0c003d

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 1012
    const-string v1, "Album"

    const-string v2, "Configuration Changed at database error, return!"

    invoke-static {v1, v2}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    :goto_0
    return-void

    .line 1015
    :cond_0
    iget-object v1, p0, Lcom/android/music/AlbumBrowserActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    if-eqz v1, :cond_1

    .line 1016
    iget v1, p0, Lcom/android/music/AlbumBrowserActivity;->mOrientation:I

    invoke-static {p0, v1}, Lcom/android/music/MusicUtils;->updateNowPlaying(Landroid/app/Activity;I)V

    .line 1019
    :cond_1
    iget-object v1, p0, Lcom/android/music/AlbumBrowserActivity;->mSearchItem:Landroid/view/MenuItem;

    if-eqz v1, :cond_2

    .line 1020
    iget-object v1, p0, Lcom/android/music/AlbumBrowserActivity;->mSearchItem:Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SearchView;

    .line 1021
    .local v0, searchView:Landroid/widget/SearchView;
    invoke-virtual {v0}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/music/AlbumBrowserActivity;->mQueryText:Ljava/lang/CharSequence;

    .line 1022
    const-string v1, "Album"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "searchText:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/music/AlbumBrowserActivity;->mQueryText:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    .end local v0           #searchView:Landroid/widget/SearchView;
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 11
    .parameter "item"

    .prologue
    const/4 v9, 0x4

    const/4 v6, 0x1

    .line 460
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 531
    :pswitch_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v6

    :goto_0
    return v6

    .line 463
    :pswitch_1
    iget-object v7, p0, Lcom/android/music/AlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {p0, v7, v8}, Lcom/android/music/MusicUtils;->getSongListForAlbum(Landroid/content/Context;J)[J

    move-result-object v2

    .line 464
    .local v2, list:[J
    const/4 v7, 0x0

    invoke-static {p0, v2, v7}, Lcom/android/music/MusicUtils;->playAll(Landroid/content/Context;[JI)V

    goto :goto_0

    .line 469
    .end local v2           #list:[J
    :pswitch_2
    iget-object v7, p0, Lcom/android/music/AlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {p0, v7, v8}, Lcom/android/music/MusicUtils;->getSongListForAlbum(Landroid/content/Context;J)[J

    move-result-object v2

    .line 470
    .restart local v2       #list:[J
    invoke-static {p0, v2}, Lcom/android/music/MusicUtils;->addToCurrentPlaylist(Landroid/content/Context;[J)V

    goto :goto_0

    .line 476
    .end local v2           #list:[J
    :pswitch_3
    invoke-virtual {p0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v3

    .line 477
    .local v3, parent:Landroid/app/Activity;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 478
    .local v1, intent:Landroid/content/Intent;
    const-class v7, Lcom/android/music/CreatePlaylist;

    invoke-virtual {v1, p0, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 482
    const-string v7, "add_to_playlist_item_id"

    iget-object v8, p0, Lcom/android/music/AlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 484
    const-string v7, "SAVE_PLAYLIST_FLAG"

    const-string v8, "new_playlist"

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 485
    if-nez v3, :cond_0

    .line 486
    invoke-virtual {p0, v1, v9}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 491
    :cond_0
    const-string v7, "start_activity_tab_id"

    invoke-virtual {v1, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 492
    invoke-virtual {v3, v1, v9}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 499
    .end local v1           #intent:Landroid/content/Intent;
    .end local v3           #parent:Landroid/app/Activity;
    :pswitch_4
    iget-object v7, p0, Lcom/android/music/AlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {p0, v7, v8}, Lcom/android/music/MusicUtils;->getSongListForAlbum(Landroid/content/Context;J)[J

    move-result-object v2

    .line 500
    .restart local v2       #list:[J
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "playlist"

    const-wide/16 v9, 0x0

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 501
    .local v4, playlist:J
    invoke-static {p0, v2, v4, v5}, Lcom/android/music/MusicUtils;->addToPlaylist(Landroid/content/Context;[JJ)V

    goto :goto_0

    .line 505
    .end local v2           #list:[J
    .end local v4           #playlist:J
    :pswitch_5
    iget-object v7, p0, Lcom/android/music/AlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {p0, v7, v8}, Lcom/android/music/MusicUtils;->getSongListForAlbum(Landroid/content/Context;J)[J

    move-result-object v2

    .line 506
    .restart local v2       #list:[J
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 516
    .local v0, b:Landroid/os/Bundle;
    const-string v7, "delete_desc_string_id"

    const v8, 0x7f070021

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 517
    const-string v7, "delete_desc_track_info"

    iget-object v8, p0, Lcom/android/music/AlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    const-string v7, "items"

    invoke-virtual {v0, v7, v2}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 520
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 521
    .restart local v1       #intent:Landroid/content/Intent;
    const-class v7, Lcom/android/music/DeleteItems;

    invoke-virtual {v1, p0, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 522
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 523
    const/4 v7, -0x1

    invoke-virtual {p0, v1, v7}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 527
    .end local v0           #b:Landroid/os/Bundle;
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #list:[J
    :pswitch_6
    invoke-virtual {p0}, Lcom/android/music/AlbumBrowserActivity;->doSearch()V

    goto/16 :goto_0

    .line 460
    nop

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
    .locals 11
    .parameter "icicle"

    .prologue
    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x1

    .line 166
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 168
    const-string v0, "Album"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    .line 170
    .local v9, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mContext:Landroid/content/Context;

    .line 172
    if-eqz p1, :cond_0

    .line 173
    const-string v0, "selectedalbum"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    .line 174
    const-string v0, "artist"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mArtistId:Ljava/lang/String;

    .line 181
    :goto_0
    const-string v0, "withtabs"

    invoke-virtual {v9, v0, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/music/AlbumBrowserActivity;->mWithtabs:Z

    .line 182
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 184
    iget-boolean v0, p0, Lcom/android/music/AlbumBrowserActivity;->mWithtabs:Z

    if-eqz v0, :cond_1

    .line 185
    invoke-virtual {p0, v2}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 194
    :goto_1
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 198
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 199
    .local v8, f:Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 200
    const-string v0, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 201
    const-string v0, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 203
    const-string v0, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 205
    const-string v0, "file"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, v8}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 208
    iget-boolean v0, p0, Lcom/android/music/AlbumBrowserActivity;->mWithtabs:Z

    if-eqz v0, :cond_2

    .line 211
    const v0, 0x7f030009

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 219
    :goto_2
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mListView:Landroid/widget/ListView;

    .line 220
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 221
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->setTextFilterEnabled(Z)V

    .line 222
    invoke-virtual {p0}, Landroid/app/Activity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;

    iput-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mAdapter:Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;

    .line 223
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mAdapter:Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;

    if-nez v0, :cond_3

    .line 224
    const-string v0, "Album"

    const-string v1, "starting query"

    invoke-static {v0, v1}, Lcom/android/music/MusicLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    new-instance v0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const v3, 0x7f030015

    iget-object v4, p0, Lcom/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    new-array v5, v6, [Ljava/lang/String;

    new-array v6, v6, [I

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;-><init>(Landroid/content/Context;Lcom/android/music/AlbumBrowserActivity;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mAdapter:Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;

    .line 232
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mAdapter:Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;

    invoke-virtual {p0, v0}, Landroid/app/ListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 233
    const v0, 0x7f07006a

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(I)V

    .line 234
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mAdapter:Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;

    invoke-virtual {v0}, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v0

    invoke-direct {p0, v0, v10}, Lcom/android/music/AlbumBrowserActivity;->getAlbumCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    .line 247
    :goto_3
    return-void

    .line 177
    .end local v8           #f:Landroid/content/IntentFilter;
    :cond_0
    const-string v0, "selectedalbum"

    invoke-virtual {v9, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    .line 178
    const-string v0, "artist"

    invoke-virtual {v9, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mArtistId:Ljava/lang/String;

    goto/16 :goto_0

    .line 188
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    .line 189
    .local v7, actionBar:Landroid/app/ActionBar;
    invoke-virtual {v7, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 190
    invoke-virtual {v7, v2}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    goto/16 :goto_1

    .line 214
    .end local v7           #actionBar:Landroid/app/ActionBar;
    .restart local v8       #f:Landroid/content/IntentFilter;
    :cond_2
    const v0, 0x7f03000b

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 215
    invoke-static {p0, p0}, Lcom/android/music/MusicUtils;->bindToService(Landroid/app/Activity;Landroid/content/ServiceConnection;)Lcom/android/music/MusicUtils$ServiceToken;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mToken:Lcom/android/music/MusicUtils$ServiceToken;

    .line 216
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/music/AlbumBrowserActivity;->mOrientation:I

    goto/16 :goto_2

    .line 236
    :cond_3
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mAdapter:Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;

    invoke-virtual {v0, p0}, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->setActivity(Lcom/android/music/AlbumBrowserActivity;)V

    .line 238
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mAdapter:Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;

    invoke-virtual {v0}, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->reloadStringOnLocaleChanges()V

    .line 239
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mAdapter:Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;

    invoke-virtual {p0, v0}, Landroid/app/ListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 240
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mAdapter:Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;

    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    .line 241
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_4

    .line 242
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/android/music/AlbumBrowserActivity;->init(Landroid/database/Cursor;)V

    goto :goto_3

    .line 244
    :cond_4
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mAdapter:Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;

    invoke-virtual {v0}, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v0

    invoke-direct {p0, v0, v10}, Lcom/android/music/AlbumBrowserActivity;->getAlbumCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    goto :goto_3
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 6
    .parameter "menu"
    .parameter "view"
    .parameter "menuInfoIn"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 433
    const/4 v1, 0x5

    const v4, 0x7f070050

    invoke-interface {p1, v2, v1, v2, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 434
    const v1, 0x7f070051

    invoke-interface {p1, v2, v3, v2, v1}, Landroid/view/ContextMenu;->addSubMenu(IIII)Landroid/view/SubMenu;

    move-result-object v1

    iput-object v1, p0, Lcom/android/music/AlbumBrowserActivity;->mSubMenu:Landroid/view/SubMenu;

    .line 435
    iget-object v1, p0, Lcom/android/music/AlbumBrowserActivity;->mSubMenu:Landroid/view/SubMenu;

    invoke-static {p0, v1}, Lcom/android/music/MusicUtils;->makePlaylistMenu(Landroid/content/Context;Landroid/view/SubMenu;)V

    .line 436
    const/16 v1, 0xa

    const v4, 0x7f07001d

    invoke-interface {p1, v2, v1, v2, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-object v0, p3

    .line 438
    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 439
    .local v0, mi:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-object v1, p0, Lcom/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    iget v4, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-interface {v1, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 440
    iget-object v1, p0, Lcom/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    const-string v5, "_id"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/music/AlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    .line 441
    iget-object v1, p0, Lcom/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    const-string v5, "album"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/music/AlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    .line 442
    iget-object v1, p0, Lcom/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    const-string v5, "artist"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/music/AlbumBrowserActivity;->mCurrentArtistNameForAlbum:Ljava/lang/String;

    .line 444
    iget-object v1, p0, Lcom/android/music/AlbumBrowserActivity;->mCurrentArtistNameForAlbum:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/music/AlbumBrowserActivity;->mCurrentArtistNameForAlbum:Ljava/lang/String;

    const-string v4, "<unknown>"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_0
    move v1, v3

    :goto_0
    iput-boolean v1, p0, Lcom/android/music/AlbumBrowserActivity;->mIsUnknownArtist:Z

    .line 446
    iget-object v1, p0, Lcom/android/music/AlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/music/AlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    const-string v4, "<unknown>"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_1
    :goto_1
    iput-boolean v3, p0, Lcom/android/music/AlbumBrowserActivity;->mIsUnknownAlbum:Z

    .line 448
    iget-boolean v1, p0, Lcom/android/music/AlbumBrowserActivity;->mIsUnknownAlbum:Z

    if-eqz v1, :cond_6

    .line 449
    const v1, 0x7f070047

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 453
    :goto_2
    iget-boolean v1, p0, Lcom/android/music/AlbumBrowserActivity;->mIsUnknownAlbum:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/music/AlbumBrowserActivity;->mIsUnknownArtist:Z

    if-nez v1, :cond_3

    .line 454
    :cond_2
    const/16 v1, 0x10

    const v3, 0x7f070032

    invoke-interface {p1, v2, v1, v2, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 456
    :cond_3
    return-void

    :cond_4
    move v1, v2

    .line 444
    goto :goto_0

    :cond_5
    move v3, v2

    .line 446
    goto :goto_1

    .line 451
    :cond_6
    iget-object v1, p0, Lcom/android/music/AlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    goto :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 603
    iget-boolean v0, p0, Lcom/android/music/AlbumBrowserActivity;->mWithtabs:Z

    if-eqz v0, :cond_0

    .line 604
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 612
    :goto_0
    return v0

    .line 606
    :cond_0
    const/16 v0, 0x8

    const v1, 0x7f07001b

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 607
    const/16 v0, 0x9

    const v1, 0x7f07001e

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020026

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 609
    const/16 v0, 0xd

    const v1, 0x7f070007

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02001e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 611
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mQueryTextListener:Landroid/widget/SearchView$OnQueryTextListener;

    invoke-static {p0, p1, v0}, Lcom/android/music/MusicUtils;->addSearchView(Landroid/app/Activity;Landroid/view/Menu;Landroid/widget/SearchView$OnQueryTextListener;)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mSearchItem:Landroid/view/MenuItem;

    .line 612
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 267
    const-string v2, "Album"

    const-string v3, "onDestroy"

    invoke-static {v2, v3}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 269
    .local v1, lv:Landroid/widget/ListView;
    if-eqz v1, :cond_0

    .line 270
    invoke-virtual {v1}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v2

    sput v2, Lcom/android/music/AlbumBrowserActivity;->mLastListPosCourse:I

    .line 271
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 272
    .local v0, cv:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 273
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    sput v2, Lcom/android/music/AlbumBrowserActivity;->mLastListPosFine:I

    .line 277
    .end local v0           #cv:Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lcom/android/music/AlbumBrowserActivity;->mToken:Lcom/android/music/MusicUtils$ServiceToken;

    if-eqz v2, :cond_1

    .line 278
    iget-object v2, p0, Lcom/android/music/AlbumBrowserActivity;->mToken:Lcom/android/music/MusicUtils$ServiceToken;

    invoke-static {v2}, Lcom/android/music/MusicUtils;->unbindFromService(Lcom/android/music/MusicUtils$ServiceToken;)V

    .line 280
    iput-object v4, p0, Lcom/android/music/AlbumBrowserActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    .line 287
    :cond_1
    iget-boolean v2, p0, Lcom/android/music/AlbumBrowserActivity;->mAdapterSent:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/music/AlbumBrowserActivity;->mAdapter:Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;

    if-eqz v2, :cond_2

    .line 288
    iget-object v2, p0, Lcom/android/music/AlbumBrowserActivity;->mAdapter:Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;

    invoke-virtual {v2}, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->quitLazyLoadingThread()V

    .line 289
    iget-object v2, p0, Lcom/android/music/AlbumBrowserActivity;->mAdapter:Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;

    invoke-virtual {v2, v4}, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 294
    :cond_2
    invoke-virtual {p0, v4}, Landroid/app/ListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 295
    iput-object v4, p0, Lcom/android/music/AlbumBrowserActivity;->mAdapter:Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;

    .line 296
    iget-object v2, p0, Lcom/android/music/AlbumBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 297
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 298
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 3
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 593
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 594
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v2, "vnd.android.cursor.dir/track"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 595
    const-string v1, "album"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 596
    const-string v1, "artist"

    iget-object v2, p0, Lcom/android/music/AlbumBrowserActivity;->mArtistId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 597
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 598
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .parameter "item"

    .prologue
    const/4 v7, 0x1

    .line 645
    iget-boolean v0, p0, Lcom/android/music/AlbumBrowserActivity;->mWithtabs:Z

    if-eqz v0, :cond_0

    .line 646
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 687
    :goto_0
    return v0

    .line 650
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 687
    :cond_1
    :goto_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    .line 652
    :sswitch_0
    invoke-static {}, Lcom/android/music/MusicUtils;->togglePartyShuffle()V

    goto :goto_1

    .line 656
    :sswitch_1
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v7, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const-string v3, "is_music=1"

    const/4 v4, 0x0

    const-string v5, "title_pinyin_key"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 661
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 662
    invoke-static {p0, v6}, Lcom/android/music/MusicUtils;->shuffleAll(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 663
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move v0, v7

    .line 665
    goto :goto_0

    .line 669
    .end local v6           #cursor:Landroid/database/Cursor;
    :sswitch_2
    invoke-static {p0}, Lcom/android/music/MusicUtils;->startEffectPanel(Landroid/app/Activity;)Z

    move-result v0

    goto :goto_0

    .line 674
    :sswitch_3
    iget-boolean v0, p0, Lcom/android/music/AlbumBrowserActivity;->mIsInBackgroud:Z

    if-nez v0, :cond_1

    .line 675
    invoke-virtual {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_1

    .line 682
    :sswitch_4
    invoke-virtual {p0}, Lcom/android/music/AlbumBrowserActivity;->onSearchRequested()Z

    move v0, v7

    .line 683
    goto :goto_0

    .line 650
    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_0
        0x9 -> :sswitch_1
        0xd -> :sswitch_2
        0x102002c -> :sswitch_3
        0x7f0c0044 -> :sswitch_4
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 376
    const-string v0, "Album"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mSubMenu:Landroid/view/SubMenu;

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mSubMenu:Landroid/view/SubMenu;

    invoke-interface {v0}, Landroid/view/SubMenu;->close()V

    .line 380
    :cond_0
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 381
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 382
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/music/AlbumBrowserActivity;->mIsInBackgroud:Z

    .line 383
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 384
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v1, 0x0

    .line 618
    iget-boolean v2, p0, Lcom/android/music/AlbumBrowserActivity;->mWithtabs:Z

    if-eqz v2, :cond_0

    .line 619
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    .line 638
    :goto_0
    return v1

    .line 622
    :cond_0
    iget-object v2, p0, Lcom/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    if-nez v2, :cond_1

    .line 623
    const-string v2, "Album"

    const-string v3, "Album cursor is null, need not show option menu!"

    invoke-static {v2, v3}, Lcom/android/music/MusicLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 626
    :cond_1
    invoke-static {p1}, Lcom/android/music/MusicUtils;->setPartyShuffleMenuIcon(Landroid/view/Menu;)V

    .line 629
    iget-object v2, p0, Lcom/android/music/AlbumBrowserActivity;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/android/music/MusicUtils;->setEffectPanelMenu(Landroid/content/Context;Landroid/view/Menu;)V

    .line 631
    iget-object v2, p0, Lcom/android/music/AlbumBrowserActivity;->mQueryText:Ljava/lang/CharSequence;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/music/AlbumBrowserActivity;->mQueryText:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 632
    const-string v2, "Album"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setQueryText:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/music/AlbumBrowserActivity;->mQueryText:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/music/MusicLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    iget-object v2, p0, Lcom/android/music/AlbumBrowserActivity;->mSearchItem:Landroid/view/MenuItem;

    invoke-interface {v2}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SearchView;

    .line 634
    .local v0, searchView:Landroid/widget/SearchView;
    iget-object v2, p0, Lcom/android/music/AlbumBrowserActivity;->mQueryText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2, v1}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 635
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/music/AlbumBrowserActivity;->mQueryText:Ljava/lang/CharSequence;

    .line 638
    .end local v0           #searchView:Landroid/widget/SearchView;
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 302
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 303
    const-string v1, "Album"

    const-string v2, "onResume:"

    invoke-static {v1, v2}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 305
    .local v0, f:Landroid/content/IntentFilter;
    const-string v1, "com.android.music.metachanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 306
    const-string v1, "com.android.music.queuechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 307
    iget-object v1, p0, Lcom/android/music/AlbumBrowserActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 308
    iget-object v1, p0, Lcom/android/music/AlbumBrowserActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v3, v3}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 309
    invoke-static {p0}, Lcom/android/music/MusicUtils;->setSpinnerState(Landroid/app/Activity;)V

    .line 310
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/music/AlbumBrowserActivity;->mIsInBackgroud:Z

    .line 312
    iget-object v1, p0, Lcom/android/music/AlbumBrowserActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    if-eqz v1, :cond_0

    .line 313
    iget v1, p0, Lcom/android/music/AlbumBrowserActivity;->mOrientation:I

    invoke-static {p0, v1}, Lcom/android/music/MusicUtils;->updateNowPlaying(Landroid/app/Activity;I)V

    .line 317
    :cond_0
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/android/music/MusicUtils;->emptyShow(Landroid/widget/ListView;Landroid/app/Activity;)V

    .line 318
    const-string v1, "Album"

    const-string v2, "onResume<<<"

    invoke-static {v1, v2}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 251
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/music/AlbumBrowserActivity;->mAdapterSent:Z

    .line 252
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mAdapter:Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;

    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outcicle"

    .prologue
    .line 260
    const-string v0, "selectedalbum"

    iget-object v1, p0, Lcom/android/music/AlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    const-string v0, "artist"

    iget-object v1, p0, Lcom/android/music/AlbumBrowserActivity;->mArtistId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 263
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 1033
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mSearchItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 1034
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mSearchItem:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    .line 1036
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .parameter "name"
    .parameter "service"

    .prologue
    .line 992
    invoke-static {p2}, Lcom/android/music/IMediaPlaybackService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/music/IMediaPlaybackService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    .line 995
    iget v0, p0, Lcom/android/music/AlbumBrowserActivity;->mOrientation:I

    invoke-static {p0, v0}, Lcom/android/music/MusicUtils;->updateNowPlaying(Landroid/app/Activity;I)V

    .line 996
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 999
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    .line 1000
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 1001
    return-void
.end method
