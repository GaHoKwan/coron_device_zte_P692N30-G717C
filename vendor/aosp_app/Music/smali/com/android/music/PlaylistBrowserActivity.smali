.class public Lcom/android/music/PlaylistBrowserActivity;
.super Landroid/app/ListActivity;
.source "PlaylistBrowserActivity.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Lcom/android/music/MusicUtils$Defs;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;
    }
.end annotation


# static fields
.field public static final ADD_FOLDER_AS_PLAYLIST:I = 0x15

.field private static final ALL_SONGS_PLAYLIST:J = -0x2L

.field private static final CHANGE_WEEKS:I = 0x14

.field private static final DELETE_PLAYLIST:I = 0x11

.field private static final EDIT_PLAYLIST:I = 0x12

.field private static final PODCASTS_PLAYLIST:J = -0x3L

.field private static final RECENTLY_ADDED_PLAYLIST:J = -0x1L

.field private static final RENAME_PLAYLIST:I = 0x13

.field private static final TAG:Ljava/lang/String; = "PlaylistBrowser"

.field private static mLastListPosCourse:I

.field private static mLastListPosFine:I


# instance fields
.field private mAdapter:Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

.field mAdapterSent:Z

.field mCols:[Ljava/lang/String;

.field private mCreateShortcut:Z

.field private mIsMounted:Z

.field private mOrientaiton:I

.field private mPlaylistCursor:Landroid/database/Cursor;

.field mQueryTextListener:Landroid/widget/SearchView$OnQueryTextListener;

.field private mReScanHandler:Landroid/os/Handler;

.field private mScanListener:Landroid/content/BroadcastReceiver;

.field private mSearchItem:Landroid/view/MenuItem;

.field private mSearchView:Landroid/widget/SearchView;

.field private mService:Lcom/android/music/IMediaPlaybackService;

.field private mToast:Landroid/widget/Toast;

.field private mToken:Lcom/android/music/MusicUtils$ServiceToken;

.field private mTrackListListener:Landroid/content/BroadcastReceiver;

.field private mWithtabs:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 116
    sput v0, Lcom/android/music/PlaylistBrowserActivity;->mLastListPosCourse:I

    .line 117
    sput v0, Lcom/android/music/PlaylistBrowserActivity;->mLastListPosFine:I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 137
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 125
    iput-boolean v3, p0, Lcom/android/music/PlaylistBrowserActivity;->mIsMounted:Z

    .line 126
    iput-boolean v2, p0, Lcom/android/music/PlaylistBrowserActivity;->mWithtabs:Z

    .line 128
    iput-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mToast:Landroid/widget/Toast;

    .line 133
    iput-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    .line 331
    new-instance v0, Lcom/android/music/PlaylistBrowserActivity$2;

    invoke-direct {v0, p0}, Lcom/android/music/PlaylistBrowserActivity$2;-><init>(Lcom/android/music/PlaylistBrowserActivity;)V

    iput-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    .line 626
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "name"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mCols:[Ljava/lang/String;

    .line 846
    new-instance v0, Lcom/android/music/PlaylistBrowserActivity$3;

    invoke-direct {v0, p0}, Lcom/android/music/PlaylistBrowserActivity$3;-><init>(Lcom/android/music/PlaylistBrowserActivity;)V

    iput-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    .line 859
    new-instance v0, Lcom/android/music/PlaylistBrowserActivity$4;

    invoke-direct {v0, p0}, Lcom/android/music/PlaylistBrowserActivity$4;-><init>(Lcom/android/music/PlaylistBrowserActivity;)V

    iput-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    .line 902
    new-instance v0, Lcom/android/music/PlaylistBrowserActivity$5;

    invoke-direct {v0, p0}, Lcom/android/music/PlaylistBrowserActivity$5;-><init>(Lcom/android/music/PlaylistBrowserActivity;)V

    iput-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mQueryTextListener:Landroid/widget/SearchView$OnQueryTextListener;

    .line 138
    return-void
.end method

.method static synthetic access$000(Lcom/android/music/PlaylistBrowserActivity;)Lcom/android/music/IMediaPlaybackService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/music/PlaylistBrowserActivity;Lcom/android/music/IMediaPlaybackService;)Lcom/android/music/IMediaPlaybackService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/music/PlaylistBrowserActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/music/PlaylistBrowserActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/android/music/PlaylistBrowserActivity;->playRecentlyAdded()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/music/PlaylistBrowserActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/music/PlaylistBrowserActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput-boolean p1, p0, Lcom/android/music/PlaylistBrowserActivity;->mIsMounted:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/music/PlaylistBrowserActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/android/music/PlaylistBrowserActivity;->playPodcasts()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/music/PlaylistBrowserActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/android/music/PlaylistBrowserActivity;->showUSBInUsingMsg()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/music/PlaylistBrowserActivity;)Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mAdapter:Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/music/PlaylistBrowserActivity;Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 103
    invoke-direct {p0, p1, p2}, Lcom/android/music/PlaylistBrowserActivity;->getPlaylistCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/music/PlaylistBrowserActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/android/music/PlaylistBrowserActivity;->mergedCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/music/PlaylistBrowserActivity;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/music/PlaylistBrowserActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/music/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/music/PlaylistBrowserActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mOrientaiton:I

    return v0
.end method

.method private addFolderAsPlaylist(Ljava/lang/String;)V
    .locals 4
    .parameter "folderPath"

    .prologue
    .line 954
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-wide/16 v1, -0x1

    const/4 v3, 0x0

    invoke-static {v0, p1, v1, v2, v3}, Lcom/android/music/MusicUtils;->addFolderToMusic(Landroid/content/Context;Ljava/lang/String;JZ)V

    .line 955
    return-void
.end method

.method private getPlaylistCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 13
    .parameter "async"
    .parameter "filterstring"

    .prologue
    const/4 v2, 0x0

    const/16 v4, 0x25

    const/4 v1, 0x0

    .line 633
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 634
    .local v12, where:Ljava/lang/StringBuilder;
    const-string v0, "name != \'\'"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 637
    const/4 v6, 0x0

    .line 639
    .local v6, keywords:[Ljava/lang/String;
    const-string v7, "name_pinyin_key"

    .line 640
    .local v7, sortOrder:Ljava/lang/String;
    if-eqz p2, :cond_1

    .line 641
    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 642
    .local v11, searchWords:[Ljava/lang/String;
    array-length v0, v11

    new-array v6, v0, [Ljava/lang/String;

    .line 643
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v9

    .line 644
    .local v9, col:Ljava/text/Collator;
    invoke-virtual {v9, v1}, Ljava/text/Collator;->setStrength(I)V

    .line 645
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    array-length v0, v11

    if-ge v10, v0, :cond_0

    .line 646
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v3, v11, v10

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v10

    .line 645
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 648
    :cond_0
    const/4 v10, 0x0

    :goto_1
    array-length v0, v11

    if-ge v10, v0, :cond_1

    .line 649
    const-string v0, " AND "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 650
    const-string v0, "name LIKE ?"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 648
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 654
    .end local v9           #col:Ljava/text/Collator;
    .end local v10           #i:I
    .end local v11           #searchWords:[Ljava/lang/String;
    :cond_1
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 656
    .local v5, whereclause:Ljava/lang/String;
    if-eqz p1, :cond_2

    .line 657
    sget-object v3, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/music/PlaylistBrowserActivity;->mCols:[Ljava/lang/String;

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    :goto_2
    return-object v2

    .line 661
    :cond_2
    const/4 v8, 0x0

    .line 662
    .local v8, c:Landroid/database/Cursor;
    sget-object v3, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/music/PlaylistBrowserActivity;->mCols:[Ljava/lang/String;

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lcom/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 664
    invoke-direct {p0, v8}, Lcom/android/music/PlaylistBrowserActivity;->mergedCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v2

    goto :goto_2
.end method

.method private mergedCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 13
    .parameter "c"

    .prologue
    .line 668
    if-nez p1, :cond_0

    .line 669
    const/4 p1, 0x0

    .line 704
    .end local p1
    :goto_0
    return-object p1

    .line 671
    .restart local p1
    :cond_0
    instance-of v0, p1, Landroid/database/MergeCursor;

    if-eqz v0, :cond_1

    .line 673
    const-string v0, "PlaylistBrowser"

    const-string v1, "Already wrapped"

    invoke-static {v0, v1}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 676
    :cond_1
    new-instance v7, Landroid/database/MatrixCursor;

    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mCols:[Ljava/lang/String;

    invoke-direct {v7, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 677
    .local v7, autoplaylistscursor:Landroid/database/MatrixCursor;
    iget-boolean v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mCreateShortcut:Z

    if-eqz v0, :cond_2

    .line 678
    new-instance v6, Ljava/util/ArrayList;

    const/4 v0, 0x2

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 679
    .local v6, all:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const-wide/16 v0, -0x2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 680
    const v0, 0x7f07001f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 681
    invoke-virtual {v7, v6}, Landroid/database/MatrixCursor;->addRow(Ljava/lang/Iterable;)V

    .line 683
    .end local v6           #all:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_2
    new-instance v12, Ljava/util/ArrayList;

    const/4 v0, 0x2

    invoke-direct {v12, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 684
    .local v12, recent:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 685
    const v0, 0x7f07003b

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 686
    invoke-virtual {v7, v12}, Landroid/database/MatrixCursor;->addRow(Ljava/lang/Iterable;)V

    .line 689
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "count(*)"

    aput-object v3, v2, v0

    const-string v3, "is_podcast=1"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 691
    .local v9, counter:Landroid/database/Cursor;
    if-eqz v9, :cond_3

    .line 692
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 693
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 694
    .local v10, numpodcasts:I
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 695
    if-lez v10, :cond_3

    .line 696
    new-instance v11, Ljava/util/ArrayList;

    const/4 v0, 0x2

    invoke-direct {v11, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 697
    .local v11, podcasts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const-wide/16 v0, -0x3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 698
    const v0, 0x7f07003d

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 699
    invoke-virtual {v7, v11}, Landroid/database/MatrixCursor;->addRow(Ljava/lang/Iterable;)V

    .line 703
    .end local v10           #numpodcasts:I
    .end local v11           #podcasts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_3
    new-instance v8, Landroid/database/MergeCursor;

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/database/Cursor;

    const/4 v1, 0x0

    aput-object v7, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-direct {v8, v0}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .local v8, cc:Landroid/database/Cursor;
    move-object p1, v8

    .line 704
    goto/16 :goto_0
.end method

.method private playPodcasts()V
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 599
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v1

    .line 600
    .local v2, ccols:[Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v3, "is_podcast=1"

    const/4 v4, 0x0

    const-string v5, "title_pinyin_key"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 606
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 609
    invoke-direct {p0}, Lcom/android/music/PlaylistBrowserActivity;->showUSBInUsingMsg()V

    .line 624
    :goto_0
    return-void

    .line 613
    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 614
    .local v8, len:I
    new-array v9, v8, [J

    .line 615
    .local v9, list:[J
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    if-ge v7, v8, :cond_1

    .line 616
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 617
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    aput-wide v0, v9, v7

    .line 615
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 619
    :cond_1
    const/4 v0, 0x0

    invoke-static {p0, v9, v0}, Lcom/android/music/MusicUtils;->playAll(Landroid/content/Context;[JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 622
    .end local v7           #i:I
    .end local v8           #len:I
    .end local v9           #list:[J
    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 620
    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method private playRecentlyAdded()V
    .locals 13

    .prologue
    const/4 v4, 0x0

    .line 569
    const-string v0, "numweeks"

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Lcom/android/music/MusicUtils;->getIntPref(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const v1, 0x93a80

    mul-int v6, v0, v1

    .line 570
    .local v6, X:I
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v4

    .line 571
    .local v2, ccols:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "date_added>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v11, 0x3e8

    div-long/2addr v4, v11

    int-to-long v11, v6

    sub-long/2addr v4, v11

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 572
    .local v3, where:Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "title_pinyin_key"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 577
    .local v7, cursor:Landroid/database/Cursor;
    if-nez v7, :cond_0

    .line 580
    invoke-direct {p0}, Lcom/android/music/PlaylistBrowserActivity;->showUSBInUsingMsg()V

    .line 595
    :goto_0
    return-void

    .line 584
    :cond_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 585
    .local v9, len:I
    new-array v10, v9, [J

    .line 586
    .local v10, list:[J
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    if-ge v8, v9, :cond_1

    .line 587
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    .line 588
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    aput-wide v0, v10, v8

    .line 586
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 590
    :cond_1
    const/4 v0, 0x0

    invoke-static {p0, v10, v0}, Lcom/android/music/MusicUtils;->playAll(Landroid/content/Context;[JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 593
    .end local v8           #i:I
    .end local v9           #len:I
    .end local v10           #list:[J
    :goto_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .line 591
    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method private setTitle()V
    .locals 1

    .prologue
    .line 363
    const v0, 0x7f07002e

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(I)V

    .line 364
    return-void
.end method

.method private showUSBInUsingMsg()V
    .locals 4

    .prologue
    .line 939
    iget-object v2, p0, Lcom/android/music/PlaylistBrowserActivity;->mToast:Landroid/widget/Toast;

    if-nez v2, :cond_0

    .line 940
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 941
    .local v0, context:Landroid/content/Context;
    const/4 v1, 0x0

    .line 942
    .local v1, duration:I
    const v2, 0x7f070008

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    iput-object v2, p0, Lcom/android/music/PlaylistBrowserActivity;->mToast:Landroid/widget/Toast;

    .line 944
    .end local v0           #context:Landroid/content/Context;
    .end local v1           #duration:I
    :cond_0
    iget-object v2, p0, Lcom/android/music/PlaylistBrowserActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 945
    return-void
.end method


# virtual methods
.method public init(Landroid/database/Cursor;)V
    .locals 4
    .parameter "cursor"

    .prologue
    .line 341
    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mAdapter:Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    if-nez v0, :cond_0

    .line 360
    :goto_0
    return-void

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mAdapter:Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 346
    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    if-nez v0, :cond_1

    .line 347
    iget-boolean v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mIsMounted:Z

    invoke-static {p0, v0}, Lcom/android/music/MusicUtils;->displayDatabaseError(Landroid/app/Activity;Z)V

    .line 348
    invoke-virtual {p0}, Landroid/app/Activity;->closeContextMenu()V

    .line 349
    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 354
    :cond_1
    sget v0, Lcom/android/music/PlaylistBrowserActivity;->mLastListPosCourse:I

    if-ltz v0, :cond_2

    .line 355
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    sget v1, Lcom/android/music/PlaylistBrowserActivity;->mLastListPosCourse:I

    sget v2, Lcom/android/music/PlaylistBrowserActivity;->mLastListPosFine:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 356
    const/4 v0, -0x1

    sput v0, Lcom/android/music/PlaylistBrowserActivity;->mLastListPosCourse:I

    .line 358
    :cond_2
    invoke-static {p0}, Lcom/android/music/MusicUtils;->hideDatabaseError(Landroid/app/Activity;)V

    .line 359
    invoke-direct {p0}, Lcom/android/music/PlaylistBrowserActivity;->setTitle()V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 508
    sparse-switch p1, :sswitch_data_0

    .line 528
    :cond_0
    :goto_0
    return-void

    .line 510
    :sswitch_0
    if-nez p2, :cond_1

    .line 511
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 512
    :cond_1
    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mAdapter:Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    if-eqz v0, :cond_0

    .line 513
    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mAdapter:Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    invoke-virtual {v0}, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/music/PlaylistBrowserActivity;->getPlaylistCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    goto :goto_0

    .line 519
    :sswitch_1
    if-eqz p3, :cond_0

    .line 520
    const-string v0, "download path"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/music/PlaylistBrowserActivity;->addFolderAsPlaylist(Ljava/lang/String;)V

    goto :goto_0

    .line 508
    nop

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_0
        0x15 -> :sswitch_1
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 922
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 923
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mOrientaiton:I

    .line 925
    const v0, 0x7f0c003d

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 926
    const-string v0, "PlaylistBrowser"

    const-string v1, "Configuration Changed at database error, return!"

    invoke-static {v0, v1}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    :cond_0
    :goto_0
    return-void

    .line 929
    :cond_1
    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    if-eqz v0, :cond_0

    .line 930
    iget v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mOrientaiton:I

    invoke-static {p0, v0}, Lcom/android/music/MusicUtils;->updateNowPlaying(Landroid/app/Activity;I)V

    goto :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 10
    .parameter "item"

    .prologue
    const-wide/16 v8, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 466
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v1

    check-cast v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 467
    .local v1, mi:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 503
    :cond_0
    :goto_0
    return v7

    .line 469
    :sswitch_0
    iget-wide v3, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    cmp-long v3, v3, v8

    if-nez v3, :cond_1

    .line 470
    invoke-direct {p0}, Lcom/android/music/PlaylistBrowserActivity;->playRecentlyAdded()V

    goto :goto_0

    .line 471
    :cond_1
    iget-wide v3, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    const-wide/16 v5, -0x3

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    .line 472
    invoke-direct {p0}, Lcom/android/music/PlaylistBrowserActivity;->playPodcasts()V

    goto :goto_0

    .line 474
    :cond_2
    iget-wide v3, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    invoke-static {p0, v3, v4}, Lcom/android/music/MusicUtils;->playPlaylist(Landroid/content/Context;J)V

    goto :goto_0

    .line 478
    :sswitch_1
    sget-object v3, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-wide v4, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 480
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2, v6, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 481
    const v3, 0x7f070039

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 482
    iget-object v3, p0, Lcom/android/music/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 483
    const v3, 0x7f070035

    invoke-virtual {p0, v3}, Landroid/app/Activity;->setTitle(I)V

    goto :goto_0

    .line 487
    .end local v2           #uri:Landroid/net/Uri;
    :sswitch_2
    iget-wide v3, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    cmp-long v3, v3, v8

    if-nez v3, :cond_3

    .line 488
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 489
    .local v0, intent:Landroid/content/Intent;
    const-class v3, Lcom/android/music/WeekSelector;

    invoke-virtual {v0, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 490
    const/16 v3, 0x14

    invoke-virtual {p0, v0, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 493
    .end local v0           #intent:Landroid/content/Intent;
    :cond_3
    const-string v3, "PlaylistBrowser"

    const-string v4, "should not be here"

    invoke-static {v3, v4}, Lcom/android/music/MusicLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 497
    :sswitch_3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 498
    .restart local v0       #intent:Landroid/content/Intent;
    const-class v3, Lcom/android/music/RenamePlaylist;

    invoke-virtual {v0, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 499
    const-string v3, "rename"

    iget-wide v4, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 500
    const/16 v3, 0x13

    invoke-virtual {p0, v0, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 467
    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0x11 -> :sswitch_1
        0x12 -> :sswitch_2
        0x13 -> :sswitch_3
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "icicle"

    .prologue
    .line 144
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 145
    const-string v0, "PlaylistBrowser"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    .line 147
    .local v9, intent:Landroid/content/Intent;
    invoke-virtual {v9}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    .line 148
    .local v7, action:Ljava/lang/String;
    const-string v0, "android.intent.action.CREATE_SHORTCUT"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mCreateShortcut:Z

    .line 150
    invoke-static {}, Lcom/android/music/MusicUtils;->resetSdStatus()V

    .line 153
    :cond_0
    const-string v0, "withtabs"

    const/4 v1, 0x0

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mWithtabs:Z

    .line 155
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 157
    iget-boolean v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mWithtabs:Z

    if-eqz v0, :cond_1

    .line 158
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 159
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 160
    const v0, 0x7f030009

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 208
    :goto_0
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 209
    .local v8, f:Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 210
    const-string v0, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 211
    const-string v0, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 213
    const-string v0, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 215
    const-string v0, "file"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, v8}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 218
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v10

    .line 219
    .local v10, lv:Landroid/widget/ListView;
    invoke-virtual {v10, p0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 220
    const/4 v0, 0x1

    invoke-virtual {v10, v0}, Landroid/widget/AbsListView;->setTextFilterEnabled(Z)V

    .line 222
    invoke-virtual {p0}, Landroid/app/Activity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    iput-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mAdapter:Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    .line 223
    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mAdapter:Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    if-nez v0, :cond_2

    .line 224
    const-string v0, "PlaylistBrowser"

    const-string v1, "starting query"

    invoke-static {v0, v1}, Lcom/android/music/MusicLogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    new-instance v0, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const v3, 0x7f030015

    iget-object v4, p0, Lcom/android/music/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v6, "name"

    aput-object v6, v5, v2

    const/4 v2, 0x1

    new-array v6, v2, [I

    const/4 v2, 0x0

    const v12, 0x1020014

    aput v12, v6, v2

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;-><init>(Landroid/content/Context;Lcom/android/music/PlaylistBrowserActivity;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mAdapter:Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    .line 232
    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mAdapter:Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    invoke-virtual {p0, v0}, Landroid/app/ListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 233
    const v0, 0x7f07006c

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(I)V

    .line 234
    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mAdapter:Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    invoke-virtual {v0}, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/music/PlaylistBrowserActivity;->getPlaylistCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    .line 262
    :goto_1
    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mAdapter:Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    invoke-virtual {v0}, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->storeRecentString()V

    .line 263
    return-void

    .line 163
    .end local v8           #f:Landroid/content/IntentFilter;
    .end local v10           #lv:Landroid/widget/ListView;
    :cond_1
    const v0, 0x7f03000b

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 164
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mOrientaiton:I

    .line 166
    new-instance v0, Lcom/android/music/PlaylistBrowserActivity$1;

    invoke-direct {v0, p0, v7, v9}, Lcom/android/music/PlaylistBrowserActivity$1;-><init>(Lcom/android/music/PlaylistBrowserActivity;Ljava/lang/String;Landroid/content/Intent;)V

    invoke-static {p0, v0}, Lcom/android/music/MusicUtils;->bindToService(Landroid/app/Activity;Landroid/content/ServiceConnection;)Lcom/android/music/MusicUtils$ServiceToken;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mToken:Lcom/android/music/MusicUtils$ServiceToken;

    goto/16 :goto_0

    .line 236
    .restart local v8       #f:Landroid/content/IntentFilter;
    .restart local v10       #lv:Landroid/widget/ListView;
    :cond_2
    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mAdapter:Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    invoke-virtual {v0, p0}, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->setActivity(Lcom/android/music/PlaylistBrowserActivity;)V

    .line 237
    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mAdapter:Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    invoke-virtual {p0, v0}, Landroid/app/ListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 238
    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mAdapter:Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    .line 240
    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mAdapter:Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    invoke-virtual {v0}, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->retrieveRecentString()Ljava/lang/String;

    move-result-object v11

    .line 241
    .local v11, oldRecentString:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_3

    if-eqz v11, :cond_3

    const v0, 0x7f07003b

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 244
    const-string v0, "PlaylistBrowser"

    const-string v1, "old playlist cursor needs to be changed!"

    invoke-static {v0, v1}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 246
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    .line 255
    :cond_3
    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_4

    .line 256
    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/android/music/PlaylistBrowserActivity;->init(Landroid/database/Cursor;)V

    goto :goto_1

    .line 258
    :cond_4
    const v0, 0x7f07006c

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(I)V

    .line 259
    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mAdapter:Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    invoke-virtual {v0}, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/music/PlaylistBrowserActivity;->getPlaylistCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    goto :goto_1
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 8
    .parameter "menu"
    .parameter "view"
    .parameter "menuInfoIn"

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    .line 445
    iget-boolean v1, p0, Lcom/android/music/PlaylistBrowserActivity;->mCreateShortcut:Z

    if-eqz v1, :cond_0

    .line 462
    :goto_0
    return-void

    :cond_0
    move-object v0, p3

    .line 448
    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 449
    .local v0, mi:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    const/4 v1, 0x5

    const v2, 0x7f070050

    invoke-interface {p1, v5, v1, v5, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 450
    iget-wide v1, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    cmp-long v1, v1, v6

    if-ltz v1, :cond_1

    .line 451
    const/16 v1, 0x11

    const v2, 0x7f070036

    invoke-interface {p1, v5, v1, v5, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 453
    :cond_1
    iget-wide v1, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    .line 454
    const/16 v1, 0x12

    const v2, 0x7f070037

    invoke-interface {p1, v5, v1, v5, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 456
    :cond_2
    iget-wide v1, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    cmp-long v1, v1, v6

    if-ltz v1, :cond_3

    .line 457
    const/16 v1, 0x13

    const v2, 0x7f070038

    invoke-interface {p1, v5, v1, v5, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 459
    :cond_3
    iget-object v1, p0, Lcom/android/music/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    iget v2, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 460
    iget-object v1, p0, Lcom/android/music/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/android/music/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    const-string v3, "name"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v4, 0x0

    .line 369
    iget-boolean v2, p0, Lcom/android/music/PlaylistBrowserActivity;->mWithtabs:Z

    if-eqz v2, :cond_0

    .line 370
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    .line 393
    :goto_0
    return v2

    .line 372
    :cond_0
    iget-boolean v2, p0, Lcom/android/music/PlaylistBrowserActivity;->mCreateShortcut:Z

    if-nez v2, :cond_1

    .line 373
    const/16 v2, 0x8

    const v3, 0x7f07001b

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 376
    :cond_1
    const/16 v2, 0xd

    const v3, 0x7f070007

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f02001e

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 379
    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    const v3, 0x7f0b0001

    invoke-virtual {v2, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 380
    const v2, 0x7f0c0044

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iput-object v2, p0, Lcom/android/music/PlaylistBrowserActivity;->mSearchItem:Landroid/view/MenuItem;

    .line 381
    iget-object v2, p0, Lcom/android/music/PlaylistBrowserActivity;->mSearchItem:Landroid/view/MenuItem;

    invoke-interface {v2}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SearchView;

    iput-object v2, p0, Lcom/android/music/PlaylistBrowserActivity;->mSearchView:Landroid/widget/SearchView;

    .line 383
    iget-object v2, p0, Lcom/android/music/PlaylistBrowserActivity;->mSearchView:Landroid/widget/SearchView;

    iget-object v3, p0, Lcom/android/music/PlaylistBrowserActivity;->mQueryTextListener:Landroid/widget/SearchView$OnQueryTextListener;

    invoke-virtual {v2, v3}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 384
    iget-object v2, p0, Lcom/android/music/PlaylistBrowserActivity;->mSearchView:Landroid/widget/SearchView;

    const v3, 0x7f070073

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 385
    iget-object v2, p0, Lcom/android/music/PlaylistBrowserActivity;->mSearchView:Landroid/widget/SearchView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 386
    const-string v2, "search"

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SearchManager;

    .line 388
    .local v1, searchManager:Landroid/app/SearchManager;
    if-eqz v1, :cond_2

    .line 389
    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v0

    .line 390
    .local v0, info:Landroid/app/SearchableInfo;
    iget-object v2, p0, Lcom/android/music/PlaylistBrowserActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2, v0}, Landroid/widget/SearchView;->setSearchableInfo(Landroid/app/SearchableInfo;)V

    .line 393
    .end local v0           #info:Landroid/app/SearchableInfo;
    :cond_2
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 274
    const-string v2, "PlaylistBrowser"

    const-string v3, "onDestroy"

    invoke-static {v2, v3}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 276
    .local v1, lv:Landroid/widget/ListView;
    if-eqz v1, :cond_0

    .line 277
    invoke-virtual {v1}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v2

    sput v2, Lcom/android/music/PlaylistBrowserActivity;->mLastListPosCourse:I

    .line 278
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 279
    .local v0, cv:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 280
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    sput v2, Lcom/android/music/PlaylistBrowserActivity;->mLastListPosFine:I

    .line 284
    .end local v0           #cv:Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lcom/android/music/PlaylistBrowserActivity;->mToken:Lcom/android/music/MusicUtils$ServiceToken;

    if-eqz v2, :cond_1

    .line 285
    iget-object v2, p0, Lcom/android/music/PlaylistBrowserActivity;->mToken:Lcom/android/music/MusicUtils$ServiceToken;

    invoke-static {v2}, Lcom/android/music/MusicUtils;->unbindFromService(Lcom/android/music/MusicUtils$ServiceToken;)V

    .line 287
    iput-object v4, p0, Lcom/android/music/PlaylistBrowserActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    .line 293
    :cond_1
    iget-boolean v2, p0, Lcom/android/music/PlaylistBrowserActivity;->mAdapterSent:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/music/PlaylistBrowserActivity;->mAdapter:Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    if-eqz v2, :cond_2

    .line 294
    iget-object v2, p0, Lcom/android/music/PlaylistBrowserActivity;->mAdapter:Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    invoke-virtual {v2, v4}, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 299
    :cond_2
    invoke-virtual {p0, v4}, Landroid/app/ListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 300
    iput-object v4, p0, Lcom/android/music/PlaylistBrowserActivity;->mAdapter:Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    .line 301
    iget-object v2, p0, Lcom/android/music/PlaylistBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 302
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 303
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 533
    iget-boolean v2, p0, Lcom/android/music/PlaylistBrowserActivity;->mCreateShortcut:Z

    if-eqz v2, :cond_0

    .line 534
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 535
    .local v1, shortcut:Landroid/content/Intent;
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 536
    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v3, "vnd.android.cursor.dir/playlist"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 537
    const-string v2, "playlist"

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 539
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 540
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 541
    const-string v3, "android.intent.extra.shortcut.NAME"

    const v2, 0x7f0c0017

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 542
    const-string v2, "android.intent.extra.shortcut.ICON_RESOURCE"

    const v3, 0x7f02001a

    invoke-static {p0, v3}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 545
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 546
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 565
    .end local v1           #shortcut:Landroid/content/Intent;
    :goto_0
    return-void

    .line 549
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    const-wide/16 v2, -0x1

    cmp-long v2, p4, v2

    if-nez v2, :cond_1

    .line 550
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.PICK"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 551
    .restart local v0       #intent:Landroid/content/Intent;
    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v3, "vnd.android.cursor.dir/track"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 552
    const-string v2, "playlist"

    const-string v3, "recentlyadded"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 553
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 554
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    const-wide/16 v2, -0x3

    cmp-long v2, p4, v2

    if-nez v2, :cond_2

    .line 555
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.PICK"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 556
    .restart local v0       #intent:Landroid/content/Intent;
    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v3, "vnd.android.cursor.dir/track"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 557
    const-string v2, "playlist"

    const-string v3, "podcasts"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 558
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 560
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.EDIT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 561
    .restart local v0       #intent:Landroid/content/Intent;
    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v3, "vnd.android.cursor.dir/track"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 562
    const-string v2, "playlist"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 563
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 423
    iget-boolean v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mWithtabs:Z

    if-eqz v0, :cond_0

    .line 424
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 441
    :goto_0
    return v0

    .line 427
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 441
    :goto_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    .line 429
    :sswitch_0
    invoke-static {}, Lcom/android/music/MusicUtils;->togglePartyShuffle()V

    goto :goto_1

    .line 433
    :sswitch_1
    invoke-static {p0}, Lcom/android/music/MusicUtils;->startEffectPanel(Landroid/app/Activity;)Z

    move-result v0

    goto :goto_0

    .line 437
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/music/PlaylistBrowserActivity;->onSearchRequested()Z

    .line 438
    const/4 v0, 0x1

    goto :goto_0

    .line 427
    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_0
        0xd -> :sswitch_1
        0x7f0c0044 -> :sswitch_2
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 323
    const-string v0, "PlaylistBrowser"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 327
    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 328
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 329
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 399
    iget-boolean v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mWithtabs:Z

    if-eqz v0, :cond_0

    .line 400
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 416
    :goto_0
    return v0

    .line 403
    :cond_0
    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    if-nez v0, :cond_1

    .line 404
    const-string v0, "PlaylistBrowser"

    const-string v1, "Playlist cursor is null, need not show option menu!"

    invoke-static {v0, v1}, Lcom/android/music/MusicLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    const/4 v0, 0x0

    goto :goto_0

    .line 409
    :cond_1
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/music/MusicUtils;->setEffectPanelMenu(Landroid/content/Context;Landroid/view/Menu;)V

    .line 412
    invoke-static {p1}, Lcom/android/music/MusicUtils;->setPartyShuffleMenuIcon(Landroid/view/Menu;)V

    .line 416
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 307
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 310
    const-string v1, "PlaylistBrowser"

    const-string v2, "onResume>>"

    invoke-static {v1, v2}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 312
    .local v0, f:Landroid/content/IntentFilter;
    const-string v1, "com.android.music.metachanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 313
    const-string v1, "com.android.music.queuechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 314
    iget-object v1, p0, Lcom/android/music/PlaylistBrowserActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 315
    iget-object v1, p0, Lcom/android/music/PlaylistBrowserActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v3, v3}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 318
    invoke-static {p0}, Lcom/android/music/MusicUtils;->setSpinnerState(Landroid/app/Activity;)V

    .line 319
    const-string v1, "PlaylistBrowser"

    const-string v2, "onResume>>>"

    invoke-static {v1, v2}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mAdapter:Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    .line 268
    .local v0, a:Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/music/PlaylistBrowserActivity;->mAdapterSent:Z

    .line 269
    return-object v0
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 893
    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mSearchItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 894
    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mSearchItem:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    .line 896
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
