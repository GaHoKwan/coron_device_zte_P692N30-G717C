.class public Lcom/android/music/TrackBrowserActivity;
.super Landroid/app/ListActivity;
.source "TrackBrowserActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/ServiceConnection;
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Lcom/android/music/MusicUtils$Defs;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/music/TrackBrowserActivity$AlbumArtFetcher;,
        Lcom/android/music/TrackBrowserActivity$TrackListAdapter;,
        Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;
    }
.end annotation


# static fields
.field public static final ADD_FOLDER_TO_PLAY:I = 0x18

.field public static final ADD_SONG:I = 0x17

.field public static final ADD_SONG_TO_PLAY:I = 0x19

.field private static final CLEAR_PLAYLIST:I = 0x14

.field private static final PLAY_ALL:I = 0x13

.field private static final Q_ALL:I = 0x11

.field private static final Q_SELECTED:I = 0x10

.field private static final REMOVE:I = 0x15

.field private static final SAVE_AS_PLAYLIST:I = 0x12

.field private static final SEARCH:I = 0x16

.field private static final TAG:Ljava/lang/String; = "TrackBrowser"

.field private static mLastListPosCourse:I

.field private static mLastListPosFine:I


# instance fields
.field private EMPTYSHOW_SPEND:I

.field private mAdapter:Lcom/android/music/TrackBrowserActivity$TrackListAdapter;

.field private mAdapterSent:Z

.field private mAlbumArtBitmap:Landroid/graphics/Bitmap;

.field private mAlbumId:Ljava/lang/String;

.field private mArtistId:Ljava/lang/String;

.field private mAsyncAlbumArtFetcher:Lcom/android/music/TrackBrowserActivity$AlbumArtFetcher;

.field private mCurTrackPos:I

.field private mCurrentAlbumName:Ljava/lang/String;

.field private mCurrentArtistNameForAlbum:Ljava/lang/String;

.field private mCurrentTrackName:Ljava/lang/String;

.field private mCursorCols:[Ljava/lang/String;

.field private mDeletedOneRow:Z

.field private mDrmClient:Lcom/mediatek/drm/OmaDrmClient;

.field private mDropListener:Lcom/android/music/TouchInterceptor$DropListener;

.field private mEditMode:Z

.field private mGenre:Ljava/lang/String;

.field private mIsInBackgroud:Z

.field private mIsMounted:Z

.field public mListHandler:Landroid/os/Handler;

.field private mNowPlayingListener:Landroid/content/BroadcastReceiver;

.field private mOptionMenu:Landroid/view/Menu;

.field private mOrientation:I

.field private mPlayListName:Ljava/lang/String;

.field private mPlaylist:Ljava/lang/String;

.field private mPlaylistMemberCols:[Ljava/lang/String;

.field private mQueryText:Ljava/lang/CharSequence;

.field mQueryTextListener:Landroid/widget/SearchView$OnQueryTextListener;

.field private mReScanHandler:Landroid/os/Handler;

.field private mRemoveListener:Lcom/android/music/TouchInterceptor$RemoveListener;

.field private mResetSdStatus:Z

.field private mScanListener:Landroid/content/BroadcastReceiver;

.field mSearchItem:Landroid/view/MenuItem;

.field private mSelectedId:J

.field private mSelectedPosition:I

.field private mService:Lcom/android/music/IMediaPlaybackService;

.field private mSortOrder:Ljava/lang/String;

.field private mSubMenu:Landroid/view/SubMenu;

.field private mToast:Landroid/widget/Toast;

.field private mToken:Lcom/android/music/MusicUtils$ServiceToken;

.field private mTrackCursor:Landroid/database/Cursor;

.field private mTrackList:Landroid/widget/ListView;

.field private mTrackListListener:Landroid/content/BroadcastReceiver;

.field private mUpgradeAlbumArtListener:Lcom/android/music/TouchInterceptor$UpgradeAlbumArtListener;

.field private mWithtabs:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 156
    sput v0, Lcom/android/music/TrackBrowserActivity;->mLastListPosCourse:I

    .line 157
    sput v0, Lcom/android/music/TrackBrowserActivity;->mLastListPosFine:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 203
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 134
    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/music/TrackBrowserActivity;->EMPTYSHOW_SPEND:I

    .line 140
    iput-boolean v1, p0, Lcom/android/music/TrackBrowserActivity;->mDeletedOneRow:Z

    .line 141
    iput-boolean v1, p0, Lcom/android/music/TrackBrowserActivity;->mEditMode:Z

    .line 148
    iput-boolean v1, p0, Lcom/android/music/TrackBrowserActivity;->mAdapterSent:Z

    .line 161
    iput-object v2, p0, Lcom/android/music/TrackBrowserActivity;->mAlbumArtBitmap:Landroid/graphics/Bitmap;

    .line 164
    iput-object v2, p0, Lcom/android/music/TrackBrowserActivity;->mAsyncAlbumArtFetcher:Lcom/android/music/TrackBrowserActivity$AlbumArtFetcher;

    .line 167
    iput-boolean v1, p0, Lcom/android/music/TrackBrowserActivity;->mResetSdStatus:Z

    .line 171
    iput-object v2, p0, Lcom/android/music/TrackBrowserActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    .line 174
    iput-object v2, p0, Lcom/android/music/TrackBrowserActivity;->mDrmClient:Lcom/mediatek/drm/OmaDrmClient;

    .line 177
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/music/TrackBrowserActivity;->mCurTrackPos:I

    .line 180
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/music/TrackBrowserActivity;->mIsMounted:Z

    .line 183
    iput-boolean v1, p0, Lcom/android/music/TrackBrowserActivity;->mWithtabs:Z

    .line 188
    iput-boolean v1, p0, Lcom/android/music/TrackBrowserActivity;->mIsInBackgroud:Z

    .line 191
    iput-object v2, p0, Lcom/android/music/TrackBrowserActivity;->mSubMenu:Landroid/view/SubMenu;

    .line 193
    iput-object v2, p0, Lcom/android/music/TrackBrowserActivity;->mOptionMenu:Landroid/view/Menu;

    .line 499
    new-instance v0, Lcom/android/music/TrackBrowserActivity$1;

    invoke-direct {v0, p0}, Lcom/android/music/TrackBrowserActivity$1;-><init>(Lcom/android/music/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    .line 536
    new-instance v0, Lcom/android/music/TrackBrowserActivity$2;

    invoke-direct {v0, p0}, Lcom/android/music/TrackBrowserActivity$2;-><init>(Lcom/android/music/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    .line 551
    new-instance v0, Lcom/android/music/TrackBrowserActivity$3;

    invoke-direct {v0, p0}, Lcom/android/music/TrackBrowserActivity$3;-><init>(Lcom/android/music/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mListHandler:Landroid/os/Handler;

    .line 782
    new-instance v0, Lcom/android/music/TrackBrowserActivity$4;

    invoke-direct {v0, p0}, Lcom/android/music/TrackBrowserActivity$4;-><init>(Lcom/android/music/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mDropListener:Lcom/android/music/TouchInterceptor$DropListener;

    .line 808
    new-instance v0, Lcom/android/music/TrackBrowserActivity$5;

    invoke-direct {v0, p0}, Lcom/android/music/TrackBrowserActivity$5;-><init>(Lcom/android/music/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mRemoveListener:Lcom/android/music/TouchInterceptor$RemoveListener;

    .line 848
    new-instance v0, Lcom/android/music/TrackBrowserActivity$6;

    invoke-direct {v0, p0}, Lcom/android/music/TrackBrowserActivity$6;-><init>(Lcom/android/music/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    .line 860
    new-instance v0, Lcom/android/music/TrackBrowserActivity$7;

    invoke-direct {v0, p0}, Lcom/android/music/TrackBrowserActivity$7;-><init>(Lcom/android/music/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mNowPlayingListener:Landroid/content/BroadcastReceiver;

    .line 2341
    new-instance v0, Lcom/android/music/TrackBrowserActivity$8;

    invoke-direct {v0, p0}, Lcom/android/music/TrackBrowserActivity$8;-><init>(Lcom/android/music/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mQueryTextListener:Landroid/widget/SearchView$OnQueryTextListener;

    .line 2425
    new-instance v0, Lcom/android/music/TrackBrowserActivity$9;

    invoke-direct {v0, p0}, Lcom/android/music/TrackBrowserActivity$9;-><init>(Lcom/android/music/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mUpgradeAlbumArtListener:Lcom/android/music/TouchInterceptor$UpgradeAlbumArtListener;

    .line 204
    return-void
.end method

.method static synthetic access$000(Lcom/android/music/TrackBrowserActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/music/TrackBrowserActivity;)Landroid/view/Menu;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mOptionMenu:Landroid/view/Menu;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/music/TrackBrowserActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/android/music/TrackBrowserActivity;->mDeletedOneRow:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/music/TrackBrowserActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/android/music/TrackBrowserActivity;->mDeletedOneRow:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/music/TrackBrowserActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/music/TrackBrowserActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/android/music/TrackBrowserActivity;->removePlaylistItem(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/music/TrackBrowserActivity;)Lcom/android/music/IMediaPlaybackService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/music/TrackBrowserActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget v0, p0, Lcom/android/music/TrackBrowserActivity;->mOrientation:I

    return v0
.end method

.method static synthetic access$1500(Lcom/android/music/TrackBrowserActivity;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mCursorCols:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/music/TrackBrowserActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/android/music/TrackBrowserActivity;->mEditMode:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/android/music/TrackBrowserActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mAlbumId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/music/TrackBrowserActivity;Landroid/database/Cursor;Z)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 116
    invoke-direct {p0, p1, p2}, Lcom/android/music/TrackBrowserActivity;->getDrmRightsStatus(Landroid/database/Cursor;Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/android/music/TrackBrowserActivity;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mAlbumArtBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/music/TrackBrowserActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/music/TrackBrowserActivity;->mAlbumArtBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/music/TrackBrowserActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/android/music/TrackBrowserActivity;->mIsMounted:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/music/TrackBrowserActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/android/music/TrackBrowserActivity;->mIsInBackgroud:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/android/music/TrackBrowserActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/music/TrackBrowserActivity;->setAlbumArtBackground()V

    return-void
.end method

.method static synthetic access$302(Lcom/android/music/TrackBrowserActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/android/music/TrackBrowserActivity;->mResetSdStatus:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/music/TrackBrowserActivity;)Landroid/view/SubMenu;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mSubMenu:Landroid/view/SubMenu;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/music/TrackBrowserActivity;)Lcom/android/music/TrackBrowserActivity$TrackListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mAdapter:Lcom/android/music/TrackBrowserActivity$TrackListAdapter;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/music/TrackBrowserActivity;Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler;Ljava/lang/String;Z)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 116
    invoke-direct {p0, p1, p2, p3}, Lcom/android/music/TrackBrowserActivity;->getTrackCursor(Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler;Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/music/TrackBrowserActivity;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/music/TrackBrowserActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/music/TrackBrowserActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    return-object v0
.end method

.method private addFolderToPlay(Ljava/lang/String;)V
    .locals 3
    .parameter "folderPath"

    .prologue
    .line 2281
    const-wide/16 v0, -0x1

    const/4 v2, 0x1

    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/music/MusicUtils;->addFolderToMusic(Landroid/content/Context;Ljava/lang/String;JZ)V

    .line 2282
    return-void
.end method

.method private addSongToPlay(Landroid/net/Uri;)V
    .locals 14
    .parameter "uri"

    .prologue
    const/4 v4, 0x0

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 2290
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2291
    .local v7, data:Ljava/lang/String;
    if-nez v7, :cond_0

    .line 2325
    :goto_0
    return-void

    .line 2296
    :cond_0
    const-string v0, "TrackBrowser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addFileToPlay: data="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2297
    const-string v0, "\'"

    const-string v1, "\'\'"

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2298
    const-string v0, "file://"

    const-string v1, ""

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_data LIKE \'%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2303
    .local v3, where:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v13, [Ljava/lang/String;

    const-string v5, "_id"

    aput-object v5, v2, v12

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2307
    .local v6, cursor:Landroid/database/Cursor;
    const-wide/16 v9, -0x1

    .line 2308
    .local v9, selectFileId:J
    if-eqz v6, :cond_2

    .line 2309
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2310
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 2312
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2313
    const/4 v6, 0x0

    .line 2315
    :cond_2
    const-wide/16 v0, 0x0

    cmp-long v0, v9, v0

    if-gez v0, :cond_3

    .line 2316
    const-string v0, "TrackBrowser"

    const-string v1, "addFileToPlay: select file is not audio file!"

    invoke-static {v0, v1}, Lcom/android/music/MusicLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2317
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/music/ext/Extensions;->getPluginObject(Landroid/content/Context;)Lcom/mediatek/music/ext/IMusicTrackBrowser;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/music/ext/IMusicTrackBrowser;->getNoneAudioString()Ljava/lang/String;

    move-result-object v11

    .line 2318
    .local v11, toastShow:Ljava/lang/String;
    invoke-static {p0, v11, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 2323
    .end local v11           #toastShow:Ljava/lang/String;
    :cond_3
    const-string v0, "/"

    invoke-virtual {v7, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v7, v12, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 2324
    .local v8, folderPath:Ljava/lang/String;
    invoke-static {p0, v8, v9, v10, v13}, Lcom/android/music/MusicUtils;->addFolderToMusic(Landroid/content/Context;Ljava/lang/String;JZ)V

    goto/16 :goto_0
.end method

.method private addSongToPlaylist(Landroid/net/Uri;)V
    .locals 14
    .parameter "uri"

    .prologue
    const/4 v4, 0x0

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 2235
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2236
    .local v7, data:Ljava/lang/String;
    if-nez v7, :cond_0

    .line 2273
    :goto_0
    return-void

    .line 2241
    :cond_0
    const-string v0, "TrackBrowser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addSongToPlaylist: data="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2242
    const-string v0, "\'"

    const-string v1, "\'\'"

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2243
    const-string v0, "file://"

    const-string v1, ""

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_data LIKE \'%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2248
    .local v3, where:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v13, [Ljava/lang/String;

    const-string v5, "_id"

    aput-object v5, v2, v12

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2251
    .local v6, cursor:Landroid/database/Cursor;
    const-wide/16 v9, -0x1

    .line 2252
    .local v9, selectFileId:J
    if-eqz v6, :cond_2

    .line 2253
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2254
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 2256
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2257
    const/4 v6, 0x0

    .line 2259
    :cond_2
    const-wide/16 v0, 0x0

    cmp-long v0, v9, v0

    if-gez v0, :cond_3

    .line 2260
    const-string v0, "TrackBrowser"

    const-string v1, "addFileToPlay: select file is not audio file!"

    invoke-static {v0, v1}, Lcom/android/music/MusicLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2261
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/music/ext/Extensions;->getPluginObject(Landroid/content/Context;)Lcom/mediatek/music/ext/IMusicTrackBrowser;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/music/ext/IMusicTrackBrowser;->getNoneAudioString()Ljava/lang/String;

    move-result-object v11

    .line 2262
    .local v11, toastShow:Ljava/lang/String;
    invoke-static {p0, v11, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 2267
    .end local v11           #toastShow:Ljava/lang/String;
    :cond_3
    new-array v8, v13, [J

    aput-wide v9, v8, v12

    .line 2268
    .local v8, list:[J
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    const-string v1, "nowplaying"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2269
    invoke-static {p0, v8}, Lcom/android/music/MusicUtils;->addToCurrentPlaylist(Landroid/content/Context;[J)V

    goto/16 :goto_0

    .line 2271
    :cond_4
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    invoke-static {p0, v8, v0, v1}, Lcom/android/music/MusicUtils;->addToPlaylist(Landroid/content/Context;[JJ)V

    goto/16 :goto_0
.end method

.method private canDispalyRingtone(II)Z
    .locals 3
    .parameter "isDrm"
    .parameter "drmMethod"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 2614
    if-eq p1, v0, :cond_0

    .line 2620
    :goto_0
    return v0

    .line 2617
    :cond_0
    if-ne p1, v0, :cond_1

    if-ne p2, v0, :cond_1

    .line 2618
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    iget v2, p0, Lcom/android/music/TrackBrowserActivity;->mSelectedPosition:I

    invoke-direct {p0, v0, v2, v1, v1}, Lcom/android/music/TrackBrowserActivity;->checkDrmRightsForPlay(Landroid/database/Cursor;IZZ)Z

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 2620
    goto :goto_0
.end method

.method private checkDrmRightsForPlay(Landroid/database/Cursor;IZZ)Z
    .locals 11
    .parameter "cursor"
    .parameter "position"
    .parameter "isNowplaying"
    .parameter "showFlInvalidToast"

    .prologue
    .line 2519
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v5

    .line 2520
    .local v5, oldPos:I
    invoke-interface {p1, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2521
    const-string v8, "is_drm"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 2522
    .local v3, isDrm:I
    const-string v8, "TrackBrowser"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "checkDrmRightsForPlay: isDrm="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2524
    if-nez v3, :cond_0

    .line 2525
    const/4 v8, 0x1

    .line 2590
    :goto_0
    invoke-interface {p1, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2588
    return v8

    .line 2527
    :cond_0
    :try_start_0
    iput p2, p0, Lcom/android/music/TrackBrowserActivity;->mCurTrackPos:I

    .line 2528
    const-string v8, "drm_method"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 2529
    .local v2, drmMethod:I
    const-string v8, "TrackBrowser"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "checkDrmRightsForPlay: drmMethod="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2531
    const/4 v8, -0x1

    if-ne v2, v8, :cond_1

    .line 2532
    const v8, 0x7f070064

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/music/TrackBrowserActivity;->showToast(Ljava/lang/CharSequence;)V

    .line 2533
    const/4 v8, 0x0

    goto :goto_0

    .line 2536
    :cond_1
    const/4 v8, 0x1

    invoke-direct {p0, p1, v8}, Lcom/android/music/TrackBrowserActivity;->getDrmRightsStatus(Landroid/database/Cursor;Z)I

    move-result v7

    .line 2537
    .local v7, rightsStatus:I
    packed-switch v7, :pswitch_data_0

    .line 2582
    :pswitch_0
    const-string v8, "TrackBrowser"

    const-string v9, "No such rights status for current DRM file!!"

    invoke-static {v8, v9}, Lcom/android/music/MusicLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2585
    :goto_1
    const/4 v8, 0x0

    goto :goto_0

    .line 2540
    :pswitch_1
    const/4 v8, 0x1

    if-ne v2, v8, :cond_2

    .line 2542
    const/4 v8, 0x1

    goto :goto_0

    .line 2548
    :cond_2
    if-nez p3, :cond_3

    sget-object v8, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    if-eqz v8, :cond_3

    .line 2549
    invoke-static {p1}, Lcom/android/music/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[J

    move-result-object v4

    .line 2550
    .local v4, list:[J
    sget-object v8, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v8}, Lcom/android/music/IMediaPlaybackService;->getQueue()[J

    move-result-object v0

    .line 2551
    .local v0, curPlaylist:[J
    sget-object v8, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v8}, Lcom/android/music/IMediaPlaybackService;->getQueuePosition()I

    move-result v1

    .line 2554
    .local v1, curPos:I
    const-string v8, "TrackBrowser"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "curPos="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", position="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2555
    invoke-static {v4, v0}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v8

    if-eqz v8, :cond_3

    if-ne p2, v1, :cond_3

    sget-boolean v8, Lcom/android/music/MediaPlaybackService;->mTrackCompleted:Z

    if-nez v8, :cond_3

    .line 2560
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 2563
    .end local v0           #curPlaylist:[J
    .end local v1           #curPos:I
    .end local v4           #list:[J
    :cond_3
    const/4 v8, 0x0

    invoke-static {p0, p0, v8}, Lcom/mediatek/drm/OmaDrmUiUtils;->showConsumeDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/Dialog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2586
    .end local v2           #drmMethod:I
    .end local v7           #rightsStatus:I
    :catch_0
    move-exception v6

    .line 2587
    .local v6, re:Landroid/os/RemoteException;
    :try_start_1
    const-string v8, "TrackBrowser"

    const-string v9, "RemoteException in service call!"

    invoke-static {v8, v9}, Lcom/android/music/MusicLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2588
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 2566
    .end local v6           #re:Landroid/os/RemoteException;
    .restart local v2       #drmMethod:I
    .restart local v7       #rightsStatus:I
    :pswitch_2
    :try_start_2
    const-string v8, "TrackBrowser"

    const-string v9, "OmaDrmStore.RightsStatus.RIGHTS_INVALID="

    invoke-static {v8, v9}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2568
    const/4 v8, 0x1

    if-ne v2, v8, :cond_5

    .line 2569
    const/4 v8, 0x1

    if-ne p4, v8, :cond_4

    .line 2570
    const v8, 0x7f070014

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/music/TrackBrowserActivity;->showToast(Ljava/lang/CharSequence;)V

    .line 2572
    :cond_4
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 2575
    :cond_5
    iget-object v8, p0, Lcom/android/music/TrackBrowserActivity;->mDrmClient:Lcom/mediatek/drm/OmaDrmClient;

    invoke-direct {p0, p1}, Lcom/android/music/TrackBrowserActivity;->getUri(Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v8, p0, v9, v10}, Lcom/mediatek/drm/OmaDrmUiUtils;->showRefreshLicenseDialog(Lcom/mediatek/drm/OmaDrmClient;Landroid/content/Context;Landroid/net/Uri;Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/Dialog;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 2590
    .end local v2           #drmMethod:I
    .end local v7           #rightsStatus:I
    :catchall_0
    move-exception v8

    invoke-interface {p1, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    throw v8

    .line 2579
    .restart local v2       #drmMethod:I
    .restart local v7       #rightsStatus:I
    :pswitch_3
    const/4 v8, 0x0

    const/4 v9, 0x0

    :try_start_3
    invoke-static {p0, v8, v9}, Lcom/mediatek/drm/OmaDrmUiUtils;->showSecureTimerInvalidDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/Dialog;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    .line 2537
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private getDrmRightsStatus(Landroid/database/Cursor;Z)I
    .locals 6
    .parameter "cursor"
    .parameter "isForTap"

    .prologue
    .line 2486
    const/4 v2, 0x0

    .line 2487
    .local v2, uri:Landroid/net/Uri;
    const/4 v1, -0x1

    .line 2488
    .local v1, rightsStatus:I
    invoke-direct {p0, p1}, Lcom/android/music/TrackBrowserActivity;->getUri(Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v2

    .line 2491
    if-eqz p2, :cond_0

    .line 2492
    :try_start_0
    iget-object v3, p0, Lcom/android/music/TrackBrowserActivity;->mDrmClient:Lcom/mediatek/drm/OmaDrmClient;

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Lcom/mediatek/drm/OmaDrmClient;->checkRightsStatusForTap(Landroid/net/Uri;I)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2500
    :goto_0
    const-string v3, "TrackBrowser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDrmRightsStatus: rightsStatus="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2501
    return v1

    .line 2494
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/music/TrackBrowserActivity;->mDrmClient:Lcom/mediatek/drm/OmaDrmClient;

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Lcom/mediatek/drm/OmaDrmClient;->checkRightsStatus(Landroid/net/Uri;I)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    goto :goto_0

    .line 2496
    :catch_0
    move-exception v0

    .line 2497
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v3, "TrackBrowser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDrmRightsStatus throw IllegalArgumentException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/music/MusicLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getTrackCursor(Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler;Ljava/lang/String;Z)Landroid/database/Cursor;
    .locals 10
    .parameter "queryhandler"
    .parameter "filter"
    .parameter "async"

    .prologue
    const/4 v4, 0x0

    .line 1497
    if-nez p1, :cond_0

    .line 1498
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1501
    :cond_0
    const/4 v8, 0x0

    .line 1503
    .local v8, ret:Landroid/database/Cursor;
    const-string v0, "title_pinyin_key"

    iput-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mSortOrder:Ljava/lang/String;

    .line 1504
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 1505
    .local v9, where:Ljava/lang/StringBuilder;
    const-string v0, "title != \'\'"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1507
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mGenre:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 1508
    const-string v0, "external"

    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity;->mGenre:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v2, v3}, Landroid/provider/MediaStore$Audio$Genres$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    .line 1510
    .local v1, uri:Landroid/net/Uri;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1511
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "filter"

    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 1513
    :cond_1
    const-string v0, "title_key"

    iput-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mSortOrder:Ljava/lang/String;

    .line 1514
    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity;->mCursorCols:[Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/android/music/TrackBrowserActivity;->mSortOrder:Ljava/lang/String;

    move-object v0, p1

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler;->doQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v8

    .line 1578
    .end local v1           #uri:Landroid/net/Uri;
    :cond_2
    :goto_0
    if-eqz v8, :cond_3

    if-eqz p3, :cond_3

    .line 1579
    const/4 v0, 0x0

    invoke-virtual {p0, v8, v0}, Lcom/android/music/TrackBrowserActivity;->init(Landroid/database/Cursor;Z)V

    .line 1580
    invoke-direct {p0}, Lcom/android/music/TrackBrowserActivity;->setTitle()V

    .line 1582
    :cond_3
    return-object v8

    .line 1516
    :cond_4
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 1517
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    const-string v2, "nowplaying"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1518
    sget-object v0, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    if-eqz v0, :cond_2

    .line 1519
    new-instance v8, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;

    .end local v8           #ret:Landroid/database/Cursor;
    sget-object v0, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity;->mCursorCols:[Ljava/lang/String;

    invoke-direct {v8, p0, v0, v2}, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;-><init>(Lcom/android/music/TrackBrowserActivity;Lcom/android/music/IMediaPlaybackService;[Ljava/lang/String;)V

    .line 1520
    .restart local v8       #ret:Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 1521
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 1526
    :cond_5
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    const-string v2, "podcasts"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1527
    const-string v0, " AND is_podcast=1"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1528
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 1529
    .restart local v1       #uri:Landroid/net/Uri;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1530
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "filter"

    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 1532
    :cond_6
    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity;->mCursorCols:[Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "title_pinyin_key"

    move-object v0, p1

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler;->doQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v8

    .line 1536
    goto :goto_0

    .end local v1           #uri:Landroid/net/Uri;
    :cond_7
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    const-string v2, "recentlyadded"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1538
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 1539
    .restart local v1       #uri:Landroid/net/Uri;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1540
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "filter"

    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 1542
    :cond_8
    const-string v0, "numweeks"

    const/4 v2, 0x2

    invoke-static {p0, v0, v2}, Lcom/android/music/MusicUtils;->getIntPref(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const v2, 0x93a80

    mul-int v7, v0, v2

    .line 1543
    .local v7, X:I
    const-string v0, " AND date_added>"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1544
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v5, 0x3e8

    div-long/2addr v2, v5

    int-to-long v5, v7

    sub-long/2addr v2, v5

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1545
    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity;->mCursorCols:[Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "title_pinyin_key"

    move-object v0, p1

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler;->doQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v8

    .line 1549
    goto/16 :goto_0

    .line 1550
    .end local v1           #uri:Landroid/net/Uri;
    .end local v7           #X:I
    :cond_9
    const-string v0, "external"

    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    .line 1552
    .restart local v1       #uri:Landroid/net/Uri;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1553
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "filter"

    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 1555
    :cond_a
    const-string v0, "play_order"

    iput-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mSortOrder:Ljava/lang/String;

    .line 1556
    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity;->mPlaylistMemberCols:[Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/android/music/TrackBrowserActivity;->mSortOrder:Ljava/lang/String;

    move-object v0, p1

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler;->doQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v8

    .line 1558
    goto/16 :goto_0

    .line 1560
    .end local v1           #uri:Landroid/net/Uri;
    :cond_b
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mAlbumId:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 1561
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " AND album_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity;->mAlbumId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1562
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "track, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity;->mSortOrder:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mSortOrder:Ljava/lang/String;

    .line 1564
    :cond_c
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mArtistId:Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 1565
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " AND artist_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity;->mArtistId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1567
    :cond_d
    const-string v0, " AND is_music=1"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1568
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 1569
    .restart local v1       #uri:Landroid/net/Uri;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 1570
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "filter"

    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 1572
    :cond_e
    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity;->mCursorCols:[Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/android/music/TrackBrowserActivity;->mSortOrder:Ljava/lang/String;

    move-object v0, p1

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler;->doQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v8

    goto/16 :goto_0
.end method

.method private getUri(Landroid/database/Cursor;)Landroid/net/Uri;
    .locals 5
    .parameter "cursor"

    .prologue
    .line 2465
    const/4 v0, -0x1

    .line 2467
    .local v0, colIdx:I
    :try_start_0
    const-string v2, "audio_id"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2471
    :goto_0
    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    return-object v2

    .line 2468
    :catch_0
    move-exception v1

    .line 2469
    .local v1, ex:Ljava/lang/IllegalArgumentException;
    const-string v2, "_id"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method private initAdapter()V
    .locals 12

    .prologue
    const v11, 0x7f07006b

    const/4 v4, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2186
    invoke-virtual {p0}, Landroid/app/Activity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;

    iput-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mAdapter:Lcom/android/music/TrackBrowserActivity$TrackListAdapter;

    .line 2187
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mAdapter:Lcom/android/music/TrackBrowserActivity$TrackListAdapter;

    if-nez v0, :cond_3

    .line 2188
    const-string v0, "TrackBrowser"

    const-string v1, "starting query"

    invoke-static {v0, v1}, Lcom/android/music/MusicLogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2189
    new-instance v0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/music/TrackBrowserActivity;->mEditMode:Z

    if-eqz v2, :cond_2

    const v3, 0x7f030006

    :goto_0
    new-array v5, v8, [Ljava/lang/String;

    new-array v6, v8, [I

    const-string v2, "nowplaying"

    iget-object v7, p0, Lcom/android/music/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    const-string v10, "podcasts"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    const-string v10, "recentlyadded"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v8, v9

    :cond_0
    move-object v2, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;-><init>(Landroid/content/Context;Lcom/android/music/TrackBrowserActivity;ILandroid/database/Cursor;[Ljava/lang/String;[IZZ)V

    iput-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mAdapter:Lcom/android/music/TrackBrowserActivity$TrackListAdapter;

    .line 2199
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mAdapter:Lcom/android/music/TrackBrowserActivity$TrackListAdapter;

    invoke-virtual {p0, v0}, Landroid/app/ListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 2201
    iget-boolean v0, p0, Lcom/android/music/TrackBrowserActivity;->mWithtabs:Z

    if-nez v0, :cond_1

    .line 2202
    invoke-virtual {p0, v11}, Landroid/app/Activity;->setTitle(I)V

    .line 2204
    :cond_1
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mAdapter:Lcom/android/music/TrackBrowserActivity$TrackListAdapter;

    invoke-virtual {v0}, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->getQueryHandler()Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler;

    move-result-object v0

    invoke-direct {p0, v0, v4, v9}, Lcom/android/music/TrackBrowserActivity;->getTrackCursor(Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler;Ljava/lang/String;Z)Landroid/database/Cursor;

    .line 2227
    :goto_1
    return-void

    .line 2189
    :cond_2
    const v3, 0x7f030015

    goto :goto_0

    .line 2206
    :cond_3
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mAdapter:Lcom/android/music/TrackBrowserActivity$TrackListAdapter;

    invoke-virtual {v0, p0}, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->setActivity(Lcom/android/music/TrackBrowserActivity;)V

    .line 2208
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mAdapter:Lcom/android/music/TrackBrowserActivity$TrackListAdapter;

    invoke-virtual {v0}, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->reloadStringOnLocaleChanges()V

    .line 2209
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mAdapter:Lcom/android/music/TrackBrowserActivity$TrackListAdapter;

    invoke-virtual {p0, v0}, Landroid/app/ListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 2210
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mAdapter:Lcom/android/music/TrackBrowserActivity$TrackListAdapter;

    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    .line 2217
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_4

    .line 2218
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0, v8}, Lcom/android/music/TrackBrowserActivity;->init(Landroid/database/Cursor;Z)V

    goto :goto_1

    .line 2221
    :cond_4
    iget-boolean v0, p0, Lcom/android/music/TrackBrowserActivity;->mWithtabs:Z

    if-nez v0, :cond_5

    .line 2222
    invoke-virtual {p0, v11}, Landroid/app/Activity;->setTitle(I)V

    .line 2224
    :cond_5
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mAdapter:Lcom/android/music/TrackBrowserActivity$TrackListAdapter;

    invoke-virtual {v0}, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->getQueryHandler()Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler;

    move-result-object v0

    invoke-direct {p0, v0, v4, v9}, Lcom/android/music/TrackBrowserActivity;->getTrackCursor(Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler;Ljava/lang/String;Z)Landroid/database/Cursor;

    goto :goto_1
.end method

.method private isMusic(Landroid/database/Cursor;)Z
    .locals 10
    .parameter "c"

    .prologue
    const/4 v8, 0x0

    .line 895
    const-string v9, "title"

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 896
    .local v7, titleidx:I
    const-string v9, "album"

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 897
    .local v1, albumidx:I
    const-string v9, "artist"

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 899
    .local v3, artistidx:I
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 900
    .local v6, title:Ljava/lang/String;
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 901
    .local v0, album:Ljava/lang/String;
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 902
    .local v2, artist:Ljava/lang/String;
    const-string v9, "<unknown>"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "<unknown>"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    if-eqz v6, :cond_0

    const-string v9, "recording"

    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 915
    :goto_0
    return v8

    .line 910
    :cond_0
    const-string v9, "is_music"

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 911
    .local v5, ismusic_idx:I
    const/4 v4, 0x1

    .line 912
    .local v4, ismusic:Z
    if-ltz v5, :cond_1

    .line 913
    iget-object v9, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    if-eqz v9, :cond_2

    const/4 v4, 0x1

    :cond_1
    :goto_1
    move v8, v4

    .line 915
    goto :goto_0

    :cond_2
    move v4, v8

    .line 913
    goto :goto_1
.end method

.method private moveItem(Z)V
    .locals 13
    .parameter "up"

    .prologue
    .line 1168
    iget-object v10, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v3

    .line 1169
    .local v3, curcount:I
    iget-object v10, p0, Lcom/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    invoke-virtual {v10}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v4

    .line 1170
    .local v4, curpos:I
    if-eqz p1, :cond_0

    const/4 v10, 0x1

    if-lt v4, v10, :cond_1

    :cond_0
    if-nez p1, :cond_2

    add-int/lit8 v10, v3, -0x1

    if-lt v4, v10, :cond_2

    .line 1211
    :cond_1
    :goto_0
    return-void

    .line 1174
    :cond_2
    iget-object v10, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    instance-of v10, v10, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;

    if-eqz v10, :cond_5

    .line 1175
    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    check-cast v1, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;

    .line 1176
    .local v1, c:Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;
    if-eqz p1, :cond_3

    add-int/lit8 v10, v4, -0x1

    :goto_1
    invoke-virtual {v1, v4, v10}, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->moveItem(II)V

    .line 1177
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v10

    check-cast v10, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;

    invoke-virtual {v10}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 1178
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/AbsListView;->invalidateViews()V

    .line 1179
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/music/TrackBrowserActivity;->mDeletedOneRow:Z

    .line 1180
    if-eqz p1, :cond_4

    .line 1181
    iget-object v10, p0, Lcom/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    add-int/lit8 v11, v4, -0x1

    invoke-virtual {v10, v11}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0

    .line 1176
    :cond_3
    add-int/lit8 v10, v4, 0x1

    goto :goto_1

    .line 1183
    :cond_4
    iget-object v10, p0, Lcom/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    add-int/lit8 v11, v4, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0

    .line 1186
    .end local v1           #c:Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;
    :cond_5
    iget-object v10, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v11, "play_order"

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 1188
    .local v2, colidx:I
    iget-object v10, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v10, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1189
    iget-object v10, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 1190
    .local v5, currentplayidx:I
    const-string v10, "external"

    iget-object v11, p0, Lcom/android/music/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-static {v10, v11, v12}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v0

    .line 1192
    .local v0, baseUri:Landroid/net/Uri;
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 1193
    .local v7, values:Landroid/content/ContentValues;
    const-string v8, "_id=?"

    .line 1194
    .local v8, where:Ljava/lang/String;
    const/4 v10, 0x1

    new-array v9, v10, [Ljava/lang/String;

    .line 1195
    .local v9, wherearg:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 1196
    .local v6, res:Landroid/content/ContentResolver;
    if-eqz p1, :cond_6

    .line 1197
    const-string v10, "play_order"

    add-int/lit8 v11, v5, -0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1198
    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 1199
    invoke-virtual {v6, v0, v7, v8, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1200
    iget-object v10, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v10}, Landroid/database/Cursor;->moveToPrevious()Z

    .line 1207
    :goto_2
    const-string v10, "play_order"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1208
    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 1209
    invoke-virtual {v6, v0, v7, v8, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1202
    :cond_6
    const-string v10, "play_order"

    add-int/lit8 v11, v5, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1203
    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 1204
    invoke-virtual {v6, v0, v7, v8, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1205
    iget-object v10, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_2
.end method

.method private removeItem()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 1125
    iget-object v7, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 1126
    .local v1, curcount:I
    iget-object v7, p0, Lcom/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v2

    .line 1127
    .local v2, curpos:I
    if-eqz v1, :cond_0

    if-gez v2, :cond_1

    .line 1165
    .end local v2           #curpos:I
    :cond_0
    :goto_0
    return-void

    .line 1131
    .restart local v2       #curpos:I
    :cond_1
    const-string v7, "nowplaying"

    iget-object v8, p0, Lcom/android/music/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1137
    :try_start_0
    sget-object v7, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v7}, Lcom/android/music/IMediaPlaybackService;->getQueuePosition()I

    move-result v7

    if-eq v2, v7, :cond_2

    .line 1138
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/music/TrackBrowserActivity;->mDeletedOneRow:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1142
    :cond_2
    :goto_1
    iget-object v7, p0, Lcom/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/AbsListView;->getSelectedView()Landroid/view/View;

    move-result-object v6

    .line 1143
    .local v6, v:Landroid/view/View;
    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1144
    iget-object v7, p0, Lcom/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/AbsListView;->invalidateViews()V

    .line 1145
    iget-object v7, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    check-cast v7, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;

    invoke-virtual {v7, v2}, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->removeItem(I)Z

    .line 1146
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1147
    iget-object v7, p0, Lcom/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/AbsListView;->invalidateViews()V

    goto :goto_0

    .line 1150
    .end local v6           #v:Landroid/view/View;
    :cond_3
    iget-object v7, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v8, "_id"

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 1152
    .local v0, colidx:I
    iget-object v7, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v7, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1153
    iget-object v7, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 1154
    .local v3, id:J
    const-string v7, "external"

    iget-object v8, p0, Lcom/android/music/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v7, v8, v9}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v5

    .line 1156
    .local v5, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-static {v5, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v7, v8, v10, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1158
    add-int/lit8 v1, v1, -0x1

    .line 1159
    if-nez v1, :cond_4

    .line 1160
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 1162
    :cond_4
    iget-object v7, p0, Lcom/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    if-ge v2, v1, :cond_5

    .end local v2           #curpos:I
    :goto_2
    invoke-virtual {v7, v2}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0

    .restart local v2       #curpos:I
    :cond_5
    move v2, v1

    goto :goto_2

    .line 1140
    .end local v0           #colidx:I
    .end local v3           #id:J
    .end local v5           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v7

    goto :goto_1
.end method

.method private removePlaylistItem(I)V
    .locals 10
    .parameter "which"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 816
    iget-object v6, p0, Lcom/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    iget-object v7, p0, Lcom/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v7

    sub-int v7, p1, v7

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 817
    .local v5, v:Landroid/view/View;
    if-nez v5, :cond_0

    .line 818
    const-string v6, "TrackBrowser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No view when removing playlist item "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    :goto_0
    return-void

    .line 822
    :cond_0
    :try_start_0
    sget-object v6, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    if-eqz v6, :cond_1

    sget-object v6, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v6}, Lcom/android/music/IMediaPlaybackService;->getQueuePosition()I

    move-result v6

    if-eq p1, v6, :cond_1

    .line 824
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/music/TrackBrowserActivity;->mDeletedOneRow:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 830
    :cond_1
    :goto_1
    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 831
    iget-object v6, p0, Lcom/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/AbsListView;->invalidateViews()V

    .line 832
    iget-object v6, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    instance-of v6, v6, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;

    if-eqz v6, :cond_2

    .line 833
    iget-object v6, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    check-cast v6, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;

    invoke-virtual {v6, p1}, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->removeItem(I)Z

    .line 844
    :goto_2
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 845
    iget-object v6, p0, Lcom/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/AbsListView;->invalidateViews()V

    goto :goto_0

    .line 826
    :catch_0
    move-exception v1

    .line 828
    .local v1, e:Landroid/os/RemoteException;
    iput-boolean v8, p0, Lcom/android/music/TrackBrowserActivity;->mDeletedOneRow:Z

    goto :goto_1

    .line 835
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_2
    iget-object v6, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v7, "_id"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 837
    .local v0, colidx:I
    iget-object v6, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v6, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 838
    iget-object v6, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 839
    .local v2, id:J
    const-string v6, "external"

    iget-object v7, p0, Lcom/android/music/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v6, v7, v8}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v4

    .line 841
    .local v4, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v4, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7, v9, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_2
.end method

.method private setAlbumArtBackground()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 665
    const-string v1, "TrackBrowser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAlbumArtBackground: mAlbumId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/music/TrackBrowserActivity;->mAlbumId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mAlbumArtBitmap = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/music/TrackBrowserActivity;->mAlbumArtBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/music/MusicLogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mAlbumId:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 686
    :goto_0
    return-void

    .line 672
    :cond_0
    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mAlbumArtBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/music/TrackBrowserActivity;->mIsInBackgroud:Z

    if-nez v1, :cond_1

    .line 673
    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity;->mAlbumArtBitmap:Landroid/graphics/Bitmap;

    invoke-static {v1, v2}, Lcom/android/music/MusicUtils;->setBackground(Landroid/view/View;Landroid/graphics/Bitmap;)V

    .line 674
    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setCacheColorHint(I)V

    goto :goto_0

    .line 677
    :cond_1
    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mAsyncAlbumArtFetcher:Lcom/android/music/TrackBrowserActivity$AlbumArtFetcher;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mAsyncAlbumArtFetcher:Lcom/android/music/TrackBrowserActivity$AlbumArtFetcher;

    invoke-virtual {v1}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 678
    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mAsyncAlbumArtFetcher:Lcom/android/music/TrackBrowserActivity$AlbumArtFetcher;

    invoke-virtual {v1, v5}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 680
    :cond_2
    new-instance v1, Lcom/android/music/TrackBrowserActivity$AlbumArtFetcher;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/music/TrackBrowserActivity$AlbumArtFetcher;-><init>(Lcom/android/music/TrackBrowserActivity;Lcom/android/music/TrackBrowserActivity$1;)V

    iput-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mAsyncAlbumArtFetcher:Lcom/android/music/TrackBrowserActivity$AlbumArtFetcher;

    .line 682
    :try_start_0
    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mAsyncAlbumArtFetcher:Lcom/android/music/TrackBrowserActivity$AlbumArtFetcher;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Long;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/music/TrackBrowserActivity;->mAlbumId:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 683
    :catch_0
    move-exception v0

    .line 684
    .local v0, ex:Ljava/lang/IllegalStateException;
    const-string v1, "TrackBrowser"

    const-string v2, "Exception while fetching album art!!"

    invoke-static {v1, v2, v0}, Lcom/android/music/MusicLogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private setTitle()V
    .locals 15

    .prologue
    .line 690
    const/4 v12, 0x0

    .line 691
    .local v12, fancyName:Ljava/lang/CharSequence;
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mAlbumId:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 692
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v14

    .line 693
    .local v14, numresults:I
    :goto_0
    if-lez v14, :cond_3

    .line 694
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 695
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v1, "album"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 696
    .local v13, idx:I
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 704
    const-string v3, "album_id=?  AND artist_id=? "

    .line 706
    .local v3, where:Ljava/lang/String;
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mAlbumId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v5, "artist_id"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 710
    .local v4, whereArgs:[Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v5, "album"

    aput-object v5, v2, v0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 713
    .local v11, cursor:Landroid/database/Cursor;
    if-eqz v11, :cond_1

    .line 714
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eq v0, v14, :cond_0

    .line 716
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 719
    :cond_0
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 721
    :cond_1
    if-eqz v12, :cond_2

    const-string v0, "<unknown>"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 722
    :cond_2
    const v0, 0x7f070047

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 773
    .end local v3           #where:Ljava/lang/String;
    .end local v4           #whereArgs:[Ljava/lang/String;
    .end local v11           #cursor:Landroid/database/Cursor;
    .end local v13           #idx:I
    .end local v14           #numresults:I
    :cond_3
    :goto_1
    iget-boolean v0, p0, Lcom/android/music/TrackBrowserActivity;->mWithtabs:Z

    if-nez v0, :cond_4

    .line 774
    if-eqz v12, :cond_f

    .line 775
    invoke-virtual {p0, v12}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 780
    :cond_4
    :goto_2
    return-void

    .line 692
    :cond_5
    const/4 v14, 0x0

    goto :goto_0

    .line 725
    :cond_6
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 726
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    const-string v1, "nowplaying"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 727
    invoke-static {}, Lcom/android/music/MusicUtils;->getCurrentShuffleMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    .line 728
    const v0, 0x7f070027

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    .line 753
    :cond_7
    :goto_3
    if-eqz v12, :cond_3

    .line 754
    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mPlayListName:Ljava/lang/String;

    goto :goto_1

    .line 730
    :cond_8
    const v0, 0x7f070026

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    goto :goto_3

    .line 732
    :cond_9
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    const-string v1, "podcasts"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 733
    const v0, 0x7f07003e

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    goto :goto_3

    .line 734
    :cond_a
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    const-string v1, "recentlyadded"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 735
    const v0, 0x7f07003c

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    goto :goto_3

    .line 737
    :cond_b
    const/4 v0, 0x1

    new-array v7, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "name"

    aput-object v1, v7, v0

    .line 740
    .local v7, cols:[Ljava/lang/String;
    sget-object v0, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, p0

    invoke-static/range {v5 .. v10}, Lcom/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 743
    .restart local v11       #cursor:Landroid/database/Cursor;
    if-eqz v11, :cond_7

    .line 744
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_c

    .line 745
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 746
    const/4 v0, 0x0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 749
    :cond_c
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 756
    .end local v7           #cols:[Ljava/lang/String;
    .end local v11           #cursor:Landroid/database/Cursor;
    :cond_d
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mGenre:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 757
    const/4 v0, 0x1

    new-array v7, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "name"

    aput-object v1, v7, v0

    .line 760
    .restart local v7       #cols:[Ljava/lang/String;
    sget-object v0, Landroid/provider/MediaStore$Audio$Genres;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mGenre:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, p0

    invoke-static/range {v5 .. v10}, Lcom/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 763
    .restart local v11       #cursor:Landroid/database/Cursor;
    if-eqz v11, :cond_3

    .line 764
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_e

    .line 765
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 766
    const/4 v0, 0x0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 769
    :cond_e
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 777
    .end local v7           #cols:[Ljava/lang/String;
    .end local v11           #cursor:Landroid/database/Cursor;
    :cond_f
    const v0, 0x7f07002c

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(I)V

    goto/16 :goto_2
.end method

.method private showToast(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "toastText"

    .prologue
    .line 2600
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 2601
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mToast:Landroid/widget/Toast;

    .line 2603
    :cond_0
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 2604
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2605
    return-void
.end method

.method private unregisterReceiverSafe(Landroid/content/BroadcastReceiver;)V
    .locals 1
    .parameter "receiver"

    .prologue
    .line 427
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 431
    :goto_0
    return-void

    .line 428
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 1101
    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v0

    .line 1102
    .local v0, curpos:I
    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    const-string v3, "recentlyadded"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    .line 1104
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 1116
    :cond_0
    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity;->mSearchItem:Landroid/view/MenuItem;

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x52

    if-ne v2, v3, :cond_1

    .line 1117
    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity;->mSearchItem:Landroid/view/MenuItem;

    invoke-interface {v2}, Landroid/view/MenuItem;->isActionViewExpanded()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1121
    :goto_0
    return v1

    .line 1106
    :sswitch_0
    invoke-direct {p0, v1}, Lcom/android/music/TrackBrowserActivity;->moveItem(Z)V

    goto :goto_0

    .line 1109
    :sswitch_1
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/music/TrackBrowserActivity;->moveItem(Z)V

    goto :goto_0

    .line 1112
    :sswitch_2
    invoke-direct {p0}, Lcom/android/music/TrackBrowserActivity;->removeItem()V

    goto :goto_0

    .line 1121
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 1104
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_1
        0x43 -> :sswitch_2
    .end sparse-switch
.end method

.method doSearch()V
    .locals 6

    .prologue
    .line 1072
    const/4 v2, 0x0

    .line 1073
    .local v2, title:Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .line 1075
    .local v1, query:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1076
    .local v0, i:Landroid/content/Intent;
    const-string v3, "android.intent.action.MEDIA_SEARCH"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1077
    const/high16 v3, 0x1000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1079
    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity;->mCurrentTrackName:Ljava/lang/String;

    .line 1080
    const-string v3, "<unknown>"

    iget-object v4, p0, Lcom/android/music/TrackBrowserActivity;->mCurrentArtistNameForAlbum:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1081
    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mCurrentTrackName:Ljava/lang/String;

    .line 1086
    :goto_0
    const-string v3, "<unknown>"

    iget-object v4, p0, Lcom/android/music/TrackBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1087
    const-string v3, "android.intent.extra.album"

    iget-object v4, p0, Lcom/android/music/TrackBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1089
    :cond_0
    const-string v3, "android.intent.extra.focus"

    const-string v4, "audio/*"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1090
    const v3, 0x7f070068

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1091
    const-string v3, "query"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1093
    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1094
    return-void

    .line 1083
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/music/TrackBrowserActivity;->mCurrentArtistNameForAlbum:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/music/TrackBrowserActivity;->mCurrentTrackName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1084
    const-string v3, "android.intent.extra.artist"

    iget-object v4, p0, Lcom/android/music/TrackBrowserActivity;->mCurrentArtistNameForAlbum:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public init(Landroid/database/Cursor;Z)V
    .locals 10
    .parameter "newCursor"
    .parameter "isLimited"

    .prologue
    const/4 v9, 0x0

    .line 575
    iget-object v6, p0, Lcom/android/music/TrackBrowserActivity;->mAdapter:Lcom/android/music/TrackBrowserActivity$TrackListAdapter;

    if-nez v6, :cond_0

    .line 644
    :goto_0
    return-void

    .line 578
    :cond_0
    iget-object v6, p0, Lcom/android/music/TrackBrowserActivity;->mAdapter:Lcom/android/music/TrackBrowserActivity$TrackListAdapter;

    invoke-virtual {v6, p1}, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 580
    iget-object v6, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    if-nez v6, :cond_2

    .line 582
    iget-boolean v6, p0, Lcom/android/music/TrackBrowserActivity;->mResetSdStatus:Z

    if-eqz v6, :cond_1

    .line 583
    invoke-static {}, Lcom/android/music/MusicUtils;->resetSdStatus()V

    .line 584
    iput-boolean v9, p0, Lcom/android/music/TrackBrowserActivity;->mResetSdStatus:Z

    .line 588
    :cond_1
    iget-boolean v6, p0, Lcom/android/music/TrackBrowserActivity;->mIsMounted:Z

    invoke-static {p0, v6}, Lcom/android/music/MusicUtils;->displayDatabaseError(Landroid/app/Activity;Z)V

    .line 589
    invoke-virtual {p0}, Landroid/app/Activity;->closeContextMenu()V

    .line 590
    iget-object v6, p0, Lcom/android/music/TrackBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    const-wide/16 v7, 0x3e8

    invoke-virtual {v6, v9, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 595
    :cond_2
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v6

    invoke-static {v6, p0}, Lcom/android/music/MusicUtils;->emptyShow(Landroid/widget/ListView;Landroid/app/Activity;)V

    .line 596
    invoke-static {p0}, Lcom/android/music/MusicUtils;->hideDatabaseError(Landroid/app/Activity;)V

    .line 599
    invoke-direct {p0}, Lcom/android/music/TrackBrowserActivity;->setTitle()V

    .line 603
    sget v6, Lcom/android/music/TrackBrowserActivity;->mLastListPosCourse:I

    if-ltz v6, :cond_3

    iget-boolean v6, p0, Lcom/android/music/TrackBrowserActivity;->mWithtabs:Z

    if-eqz v6, :cond_3

    .line 604
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v5

    .line 607
    .local v5, lv:Landroid/widget/ListView;
    invoke-virtual {v5}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 608
    sget v6, Lcom/android/music/TrackBrowserActivity;->mLastListPosCourse:I

    sget v7, Lcom/android/music/TrackBrowserActivity;->mLastListPosFine:I

    invoke-virtual {v5, v6, v7}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 609
    if-nez p2, :cond_3

    .line 610
    const/4 v6, -0x1

    sput v6, Lcom/android/music/TrackBrowserActivity;->mLastListPosCourse:I

    .line 616
    .end local v5           #lv:Landroid/widget/ListView;
    :cond_3
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 617
    .local v2, f:Landroid/content/IntentFilter;
    const-string v6, "com.android.music.metachanged"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 618
    const-string v6, "com.android.music.queuechanged"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 619
    const-string v6, "nowplaying"

    iget-object v7, p0, Lcom/android/music/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 621
    :try_start_0
    sget-object v6, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v6}, Lcom/android/music/IMediaPlaybackService;->getQueuePosition()I

    move-result v1

    .line 622
    .local v1, cur:I
    invoke-virtual {p0, v1}, Landroid/app/ListActivity;->setSelection(I)V

    .line 623
    iget-object v6, p0, Lcom/android/music/TrackBrowserActivity;->mNowPlayingListener:Landroid/content/BroadcastReceiver;

    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7, v2}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    invoke-virtual {p0, v6, v7}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 624
    iget-object v6, p0, Lcom/android/music/TrackBrowserActivity;->mNowPlayingListener:Landroid/content/BroadcastReceiver;

    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.android.music.metachanged"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0, v7}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 625
    .end local v1           #cur:I
    :catch_0
    move-exception v6

    goto/16 :goto_0

    .line 628
    :cond_4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "artist"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 629
    .local v3, key:Ljava/lang/String;
    if-eqz v3, :cond_5

    .line 630
    iget-object v6, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v7, "artist_id"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 631
    .local v4, keyidx:I
    iget-object v6, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 632
    :goto_1
    iget-object v6, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v6

    if-nez v6, :cond_5

    .line 633
    iget-object v6, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 634
    .local v0, artist:Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 635
    iget-object v6, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->getPosition()I

    move-result v6

    invoke-virtual {p0, v6}, Landroid/app/ListActivity;->setSelection(I)V

    .line 641
    .end local v0           #artist:Ljava/lang/String;
    .end local v4           #keyidx:I
    :cond_5
    iget-object v6, p0, Lcom/android/music/TrackBrowserActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7, v2}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    invoke-virtual {p0, v6, v7}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 642
    iget-object v6, p0, Lcom/android/music/TrackBrowserActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.android.music.metachanged"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0, v7}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 638
    .restart local v0       #artist:Ljava/lang/String;
    .restart local v4       #keyidx:I
    :cond_6
    iget-object v6, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 12
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    const/4 v7, -0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 1427
    sparse-switch p1, :sswitch_data_0

    .line 1492
    :cond_0
    :goto_0
    return-void

    .line 1429
    :sswitch_0
    if-nez p2, :cond_1

    .line 1430
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 1432
    :cond_1
    iget-object v7, p0, Lcom/android/music/TrackBrowserActivity;->mAdapter:Lcom/android/music/TrackBrowserActivity$TrackListAdapter;

    invoke-virtual {v7}, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->getQueryHandler()Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {p0, v7, v8, v10}, Lcom/android/music/TrackBrowserActivity;->getTrackCursor(Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler;Ljava/lang/String;Z)Landroid/database/Cursor;

    goto :goto_0

    .line 1437
    :sswitch_1
    if-ne p2, v7, :cond_0

    .line 1438
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    .line 1441
    .local v6, uri:Landroid/net/Uri;
    const-string v7, "add_to_playlist_item_id"

    invoke-virtual {p3, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1442
    .local v5, selectAudioId:Ljava/lang/String;
    const-string v7, "TrackBrowser"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onActivityResult: selectAudioId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1443
    if-eqz v6, :cond_0

    if-eqz v5, :cond_0

    .line 1444
    new-array v1, v10, [J

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    aput-wide v7, v1, v11

    .line 1445
    .local v1, list:[J
    invoke-virtual {v6}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-long v7, v7

    invoke-static {p0, v1, v7, v8}, Lcom/android/music/MusicUtils;->addToPlaylist(Landroid/content/Context;[JJ)V

    goto :goto_0

    .line 1452
    .end local v1           #list:[J
    .end local v5           #selectAudioId:Ljava/lang/String;
    .end local v6           #uri:Landroid/net/Uri;
    :sswitch_2
    if-ne p2, v7, :cond_0

    .line 1453
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    .line 1455
    .restart local v6       #uri:Landroid/net/Uri;
    const-string v7, "SAVE_PLAYLIST_FLAG"

    invoke-virtual {p3, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1456
    .local v0, flag:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-static {v7}, Lcom/android/music/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[J

    move-result-object v1

    .line 1457
    .restart local v1       #list:[J
    array-length v2, v1

    .line 1458
    .local v2, listLength:I
    if-eqz v6, :cond_2

    .line 1459
    invoke-virtual {v6}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1460
    .local v4, plid:I
    int-to-long v7, v4

    invoke-static {p0, v1, v7, v8}, Lcom/android/music/MusicUtils;->addToPlaylist(Landroid/content/Context;[JJ)V

    goto :goto_0

    .line 1461
    .end local v4           #plid:I
    :cond_2
    const-string v7, "save_as_playlist"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1462
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080004

    new-array v9, v10, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-virtual {v7, v8, v2, v9}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1464
    .local v3, message:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v3, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1470
    .end local v0           #flag:Ljava/lang/String;
    .end local v1           #list:[J
    .end local v2           #listLength:I
    .end local v3           #message:Ljava/lang/String;
    .end local v6           #uri:Landroid/net/Uri;
    :sswitch_3
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 1471
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/music/TrackBrowserActivity;->addSongToPlaylist(Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 1477
    :sswitch_4
    if-eqz p3, :cond_0

    .line 1478
    const-string v7, "download path"

    invoke-virtual {p3, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/music/TrackBrowserActivity;->addFolderToPlay(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1483
    :sswitch_5
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 1484
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/music/TrackBrowserActivity;->addSongToPlay(Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 1427
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0xb -> :sswitch_0
        0x12 -> :sswitch_2
        0x17 -> :sswitch_3
        0x18 -> :sswitch_4
        0x19 -> :sswitch_5
    .end sparse-switch
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 2441
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 2442
    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    instance-of v1, v1, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;

    if-eqz v1, :cond_1

    .line 2443
    sget-object v1, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    if-eqz v1, :cond_0

    .line 2445
    :try_start_0
    sget-object v1, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    iget v2, p0, Lcom/android/music/TrackBrowserActivity;->mCurTrackPos:I

    invoke-interface {v1, v2}, Lcom/android/music/IMediaPlaybackService;->setQueuePosition(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2455
    :cond_0
    :goto_0
    return-void

    .line 2447
    :catch_0
    move-exception v0

    .line 2448
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "TrackBrowser"

    const-string v2, "RemoteException when setQueuePosition: "

    invoke-static {v1, v2, v0}, Lcom/android/music/MusicLogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2452
    .end local v0           #ex:Landroid/os/RemoteException;
    :cond_1
    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    iget v2, p0, Lcom/android/music/TrackBrowserActivity;->mCurTrackPos:I

    invoke-static {p0, v1, v2}, Lcom/android/music/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;I)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "newConfig"

    .prologue
    .line 2363
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2364
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/android/music/TrackBrowserActivity;->mOrientation:I

    .line 2367
    const v1, 0x7f0c003d

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 2368
    const-string v1, "TrackBrowser"

    const-string v2, "Configuration Changed at database error, return!"

    invoke-static {v1, v2}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2390
    :goto_0
    return-void

    .line 2374
    :cond_0
    iget v1, p0, Lcom/android/music/TrackBrowserActivity;->mOrientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/android/music/TrackBrowserActivity;->mIsInBackgroud:Z

    if-eqz v1, :cond_1

    .line 2375
    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/music/MusicUtils;->setBackground(Landroid/view/View;Landroid/graphics/Bitmap;)V

    .line 2376
    const-string v1, "TrackBrowser"

    const-string v2, "onConfigurationChanged clear background album art when in background."

    invoke-static {v1, v2}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2379
    :cond_1
    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    if-eqz v1, :cond_2

    .line 2380
    iget v1, p0, Lcom/android/music/TrackBrowserActivity;->mOrientation:I

    invoke-static {p0, v1}, Lcom/android/music/MusicUtils;->updateNowPlaying(Landroid/app/Activity;I)V

    .line 2383
    :cond_2
    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mSearchItem:Landroid/view/MenuItem;

    if-eqz v1, :cond_3

    .line 2384
    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mSearchItem:Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SearchView;

    .line 2385
    .local v0, searchView:Landroid/widget/SearchView;
    invoke-virtual {v0}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mQueryText:Ljava/lang/CharSequence;

    .line 2386
    const-string v1, "TrackBrowser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "searchText:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/music/TrackBrowserActivity;->mQueryText:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2389
    .end local v0           #searchView:Landroid/widget/SearchView;
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 12
    .parameter "item"

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x0

    const/4 v7, 0x1

    .line 971
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 1066
    :pswitch_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v7

    :cond_0
    :goto_0
    return v7

    .line 974
    :pswitch_1
    iget v6, p0, Lcom/android/music/TrackBrowserActivity;->mSelectedPosition:I

    .line 976
    .local v6, position:I
    iget-object v8, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-direct {p0, v8, v6, v10, v7}, Lcom/android/music/TrackBrowserActivity;->checkDrmRightsForPlay(Landroid/database/Cursor;IZZ)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 977
    iget-object v8, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-static {p0, v8, v6}, Lcom/android/music/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;I)V

    goto :goto_0

    .line 983
    .end local v6           #position:I
    :pswitch_2
    new-array v2, v7, [J

    iget-wide v8, p0, Lcom/android/music/TrackBrowserActivity;->mSelectedId:J

    aput-wide v8, v2, v10

    .line 984
    .local v2, list:[J
    invoke-static {p0, v2}, Lcom/android/music/MusicUtils;->addToCurrentPlaylist(Landroid/content/Context;[J)V

    goto :goto_0

    .line 992
    .end local v2           #list:[J
    :pswitch_3
    invoke-virtual {p0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v3

    .line 993
    .local v3, parent:Landroid/app/Activity;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 994
    .local v1, intent:Landroid/content/Intent;
    const-class v8, Lcom/android/music/CreatePlaylist;

    invoke-virtual {v1, p0, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 998
    const-string v8, "add_to_playlist_item_id"

    iget-wide v9, p0, Lcom/android/music/TrackBrowserActivity;->mSelectedId:J

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1000
    const-string v8, "SAVE_PLAYLIST_FLAG"

    const-string v9, "new_playlist"

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1001
    if-nez v3, :cond_1

    .line 1002
    invoke-virtual {p0, v1, v11}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 1006
    :cond_1
    const-string v8, "start_activity_tab_id"

    const/4 v9, 0x2

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1007
    invoke-virtual {v3, v1, v11}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 1014
    .end local v1           #intent:Landroid/content/Intent;
    .end local v3           #parent:Landroid/app/Activity;
    :pswitch_4
    new-array v2, v7, [J

    iget-wide v8, p0, Lcom/android/music/TrackBrowserActivity;->mSelectedId:J

    aput-wide v8, v2, v10

    .line 1015
    .restart local v2       #list:[J
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "playlist"

    const-wide/16 v10, 0x0

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 1016
    .local v4, playlist:J
    invoke-static {p0, v2, v4, v5}, Lcom/android/music/MusicUtils;->addToPlaylist(Landroid/content/Context;[JJ)V

    goto :goto_0

    .line 1022
    .end local v2           #list:[J
    .end local v4           #playlist:J
    :pswitch_5
    iget-wide v8, p0, Lcom/android/music/TrackBrowserActivity;->mSelectedId:J

    invoke-static {p0, v8, v9}, Lcom/android/music/MusicUtils;->setRingtone(Landroid/content/Context;J)V

    goto :goto_0

    .line 1026
    :pswitch_6
    new-array v2, v7, [J

    .line 1027
    .restart local v2       #list:[J
    iget-wide v8, p0, Lcom/android/music/TrackBrowserActivity;->mSelectedId:J

    long-to-int v8, v8

    int-to-long v8, v8

    aput-wide v8, v2, v10

    .line 1028
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1038
    .local v0, b:Landroid/os/Bundle;
    const-string v8, "delete_desc_string_id"

    const v9, 0x7f070022

    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1039
    const-string v8, "delete_desc_track_info"

    iget-object v9, p0, Lcom/android/music/TrackBrowserActivity;->mCurrentTrackName:Ljava/lang/String;

    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1041
    const-string v8, "items"

    invoke-virtual {v0, v8, v2}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 1042
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1043
    .restart local v1       #intent:Landroid/content/Intent;
    const-class v8, Lcom/android/music/DeleteItems;

    invoke-virtual {v1, p0, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1044
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1045
    const/4 v8, -0x1

    invoke-virtual {p0, v1, v8}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1050
    .end local v0           #b:Landroid/os/Bundle;
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #list:[J
    :pswitch_7
    iget v8, p0, Lcom/android/music/TrackBrowserActivity;->mSelectedPosition:I

    invoke-direct {p0, v8}, Lcom/android/music/TrackBrowserActivity;->removePlaylistItem(I)V

    goto/16 :goto_0

    .line 1054
    :pswitch_8
    invoke-virtual {p0}, Lcom/android/music/TrackBrowserActivity;->doSearch()V

    goto/16 :goto_0

    .line 1060
    :pswitch_9
    sget-object v8, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-wide v9, p0, Lcom/android/music/TrackBrowserActivity;->mSelectedId:J

    invoke-static {v8, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/mediatek/drm/OmaDrmUiUtils;->showProtectionInfoDialog(Landroid/content/Context;Landroid/net/Uri;)Landroid/app/Dialog;

    goto/16 :goto_0

    .line 971
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "icicle"

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x5

    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 210
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 211
    const-string v3, "TrackBrowser"

    const-string v4, "onCreate"

    invoke-static {v3, v4}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-virtual {p0, v9}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 213
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 214
    .local v2, intent:Landroid/content/Intent;
    if-eqz v2, :cond_0

    .line 217
    const-string v3, "withtabs"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/music/TrackBrowserActivity;->mWithtabs:Z

    .line 218
    iget-boolean v3, p0, Lcom/android/music/TrackBrowserActivity;->mWithtabs:Z

    if-eqz v3, :cond_4

    .line 219
    invoke-virtual {p0, v7}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 227
    :cond_0
    :goto_0
    invoke-virtual {p0, v8}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 228
    if-eqz p1, :cond_5

    .line 229
    const-string v3, "selectedtrack"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/music/TrackBrowserActivity;->mSelectedId:J

    .line 230
    const-string v3, "album"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/music/TrackBrowserActivity;->mAlbumId:Ljava/lang/String;

    .line 231
    const-string v3, "artist"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/music/TrackBrowserActivity;->mArtistId:Ljava/lang/String;

    .line 232
    const-string v3, "playlist"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/music/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    .line 233
    const-string v3, "genre"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/music/TrackBrowserActivity;->mGenre:Ljava/lang/String;

    .line 234
    const-string v3, "editmode"

    invoke-virtual {p1, v3, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/music/TrackBrowserActivity;->mEditMode:Z

    .line 236
    const-string v3, "curtrackpos"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/music/TrackBrowserActivity;->mCurTrackPos:I

    .line 250
    :goto_1
    const/16 v3, 0xa

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v3, v6

    const-string v4, "title"

    aput-object v4, v3, v7

    const-string v4, "_data"

    aput-object v4, v3, v10

    const-string v4, "album"

    aput-object v4, v3, v8

    const/4 v4, 0x4

    const-string v5, "artist"

    aput-object v5, v3, v4

    const-string v4, "artist_id"

    aput-object v4, v3, v9

    const/4 v4, 0x6

    const-string v5, "duration"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-string v5, "is_drm"

    aput-object v5, v3, v4

    const/16 v4, 0x8

    const-string v5, "drm_method"

    aput-object v5, v3, v4

    const/16 v4, 0x9

    const-string v5, "title_pinyin_key"

    aput-object v5, v3, v4

    iput-object v3, p0, Lcom/android/music/TrackBrowserActivity;->mCursorCols:[Ljava/lang/String;

    .line 264
    const/16 v3, 0xd

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v3, v6

    const-string v4, "title"

    aput-object v4, v3, v7

    const-string v4, "_data"

    aput-object v4, v3, v10

    const-string v4, "album"

    aput-object v4, v3, v8

    const/4 v4, 0x4

    const-string v5, "artist"

    aput-object v5, v3, v4

    const-string v4, "artist_id"

    aput-object v4, v3, v9

    const/4 v4, 0x6

    const-string v5, "duration"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-string v5, "play_order"

    aput-object v5, v3, v4

    const/16 v4, 0x8

    const-string v5, "audio_id"

    aput-object v5, v3, v4

    const/16 v4, 0x9

    const-string v5, "is_music"

    aput-object v5, v3, v4

    const/16 v4, 0xa

    const-string v5, "is_drm"

    aput-object v5, v3, v4

    const/16 v4, 0xb

    const-string v5, "drm_method"

    aput-object v5, v3, v4

    const/16 v4, 0xc

    const-string v5, "title_pinyin_key"

    aput-object v5, v3, v4

    iput-object v3, p0, Lcom/android/music/TrackBrowserActivity;->mPlaylistMemberCols:[Ljava/lang/String;

    .line 283
    iget-boolean v3, p0, Lcom/android/music/TrackBrowserActivity;->mWithtabs:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/android/music/TrackBrowserActivity;->mEditMode:Z

    if-eqz v3, :cond_6

    .line 284
    :cond_1
    const v3, 0x7f030009

    invoke-virtual {p0, v3}, Landroid/app/Activity;->setContentView(I)V

    .line 292
    :goto_2
    iget-boolean v3, p0, Lcom/android/music/TrackBrowserActivity;->mWithtabs:Z

    if-nez v3, :cond_2

    .line 293
    invoke-static {p0, p0}, Lcom/android/music/MusicUtils;->bindToService(Landroid/app/Activity;Landroid/content/ServiceConnection;)Lcom/android/music/MusicUtils$ServiceToken;

    move-result-object v3

    iput-object v3, p0, Lcom/android/music/TrackBrowserActivity;->mToken:Lcom/android/music/MusicUtils$ServiceToken;

    .line 296
    :cond_2
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v3

    iput-object v3, p0, Lcom/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    .line 297
    iget-object v3, p0, Lcom/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 298
    iget-object v3, p0, Lcom/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    invoke-virtual {v3, v6}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 299
    iget-boolean v3, p0, Lcom/android/music/TrackBrowserActivity;->mEditMode:Z

    if-eqz v3, :cond_7

    .line 300
    iget-object v3, p0, Lcom/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    check-cast v3, Lcom/android/music/TouchInterceptor;

    iget-object v4, p0, Lcom/android/music/TrackBrowserActivity;->mDropListener:Lcom/android/music/TouchInterceptor$DropListener;

    invoke-virtual {v3, v4}, Lcom/android/music/TouchInterceptor;->setDropListener(Lcom/android/music/TouchInterceptor$DropListener;)V

    .line 301
    iget-object v3, p0, Lcom/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    check-cast v3, Lcom/android/music/TouchInterceptor;

    iget-object v4, p0, Lcom/android/music/TrackBrowserActivity;->mRemoveListener:Lcom/android/music/TouchInterceptor$RemoveListener;

    invoke-virtual {v3, v4}, Lcom/android/music/TouchInterceptor;->setRemoveListener(Lcom/android/music/TouchInterceptor$RemoveListener;)V

    .line 303
    iget-object v3, p0, Lcom/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    check-cast v3, Lcom/android/music/TouchInterceptor;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/music/TouchInterceptor;->registerContentObserver(Landroid/content/Context;)V

    .line 313
    :goto_3
    iget-boolean v3, p0, Lcom/android/music/TrackBrowserActivity;->mWithtabs:Z

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lcom/android/music/TrackBrowserActivity;->mEditMode:Z

    if-nez v3, :cond_3

    .line 315
    iget-object v3, p0, Lcom/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    check-cast v3, Lcom/android/music/TouchInterceptor;

    iget-object v4, p0, Lcom/android/music/TrackBrowserActivity;->mUpgradeAlbumArtListener:Lcom/android/music/TouchInterceptor$UpgradeAlbumArtListener;

    invoke-virtual {v3, v4}, Lcom/android/music/TouchInterceptor;->setUpgradeAlbumArtListener(Lcom/android/music/TouchInterceptor$UpgradeAlbumArtListener;)V

    .line 317
    invoke-direct {p0}, Lcom/android/music/TrackBrowserActivity;->setAlbumArtBackground()V

    .line 322
    :cond_3
    new-instance v3, Lcom/mediatek/drm/OmaDrmClient;

    invoke-direct {v3, p0}, Lcom/mediatek/drm/OmaDrmClient;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/music/TrackBrowserActivity;->mDrmClient:Lcom/mediatek/drm/OmaDrmClient;

    .line 327
    invoke-direct {p0}, Lcom/android/music/TrackBrowserActivity;->initAdapter()V

    .line 331
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 332
    .local v1, f:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 333
    const-string v3, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 334
    const-string v3, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 336
    const-string v3, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 338
    const-string v3, "file"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 339
    iget-object v3, p0, Lcom/android/music/TrackBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v1}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 340
    return-void

    .line 221
    .end local v1           #f:Landroid/content/IntentFilter;
    :cond_4
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 222
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    goto/16 :goto_0

    .line 239
    .end local v0           #actionBar:Landroid/app/ActionBar;
    :cond_5
    const-string v3, "selectedtrack"

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/music/TrackBrowserActivity;->mSelectedId:J

    .line 241
    const-string v3, "album"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/music/TrackBrowserActivity;->mAlbumId:Ljava/lang/String;

    .line 244
    const-string v3, "artist"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/music/TrackBrowserActivity;->mArtistId:Ljava/lang/String;

    .line 245
    const-string v3, "playlist"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/music/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    .line 246
    const-string v3, "genre"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/music/TrackBrowserActivity;->mGenre:Ljava/lang/String;

    .line 247
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.EDIT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/music/TrackBrowserActivity;->mEditMode:Z

    goto/16 :goto_1

    .line 286
    :cond_6
    const v3, 0x7f03000b

    invoke-virtual {p0, v3}, Landroid/app/Activity;->setContentView(I)V

    .line 287
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    iput v3, p0, Lcom/android/music/TrackBrowserActivity;->mOrientation:I

    goto/16 :goto_2

    .line 308
    :cond_7
    iget-object v3, p0, Lcom/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    invoke-virtual {v3, v7}, Landroid/widget/AbsListView;->setTextFilterEnabled(Z)V

    goto/16 :goto_3
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 10
    .parameter "menu"
    .parameter "view"
    .parameter "menuInfoIn"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 920
    const/4 v5, 0x5

    const v6, 0x7f070050

    invoke-interface {p1, v8, v5, v8, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 921
    const v5, 0x7f070051

    invoke-interface {p1, v8, v9, v8, v5}, Landroid/view/ContextMenu;->addSubMenu(IIII)Landroid/view/SubMenu;

    move-result-object v5

    iput-object v5, p0, Lcom/android/music/TrackBrowserActivity;->mSubMenu:Landroid/view/SubMenu;

    .line 922
    iget-object v5, p0, Lcom/android/music/TrackBrowserActivity;->mSubMenu:Landroid/view/SubMenu;

    invoke-static {p0, v5}, Lcom/android/music/MusicUtils;->makePlaylistMenu(Landroid/content/Context;Landroid/view/SubMenu;)V

    .line 923
    iget-boolean v5, p0, Lcom/android/music/TrackBrowserActivity;->mEditMode:Z

    if-eqz v5, :cond_0

    .line 924
    const/16 v5, 0x15

    const v6, 0x7f070066

    invoke-interface {p1, v8, v5, v8, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    :cond_0
    move-object v4, p3

    .line 926
    check-cast v4, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 927
    .local v4, mi:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget v5, v4, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    iput v5, p0, Lcom/android/music/TrackBrowserActivity;->mSelectedPosition:I

    .line 928
    iget-object v5, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    iget v6, p0, Lcom/android/music/TrackBrowserActivity;->mSelectedPosition:I

    invoke-interface {v5, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 930
    :try_start_0
    iget-object v5, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v6, "audio_id"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 932
    .local v2, id_idx:I
    iget-object v5, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/music/TrackBrowserActivity;->mSelectedId:J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 938
    .end local v2           #id_idx:I
    :goto_0
    const/4 v3, 0x0

    .line 940
    .local v3, isDrm:I
    iget-object v5, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    iget-object v6, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v7, "is_drm"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 941
    iget-object v5, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    iget-object v6, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v7, "drm_method"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 942
    .local v0, drmMethod:I
    invoke-direct {p0, v3, v0}, Lcom/android/music/TrackBrowserActivity;->canDispalyRingtone(II)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 943
    const/4 v5, 0x2

    const v6, 0x7f07004d

    invoke-interface {p1, v8, v5, v8, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 948
    :cond_1
    const/16 v5, 0xa

    const v6, 0x7f07001d

    invoke-interface {p1, v8, v5, v8, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 951
    iget-object v5, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-direct {p0, v5}, Lcom/android/music/TrackBrowserActivity;->isMusic(Landroid/database/Cursor;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 952
    const/16 v5, 0x16

    const v6, 0x7f070032

    invoke-interface {p1, v8, v5, v8, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 954
    :cond_2
    iget-object v5, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    iget-object v6, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v7, "album"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/music/TrackBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    .line 956
    iget-object v5, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    iget-object v6, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v7, "artist"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/music/TrackBrowserActivity;->mCurrentArtistNameForAlbum:Ljava/lang/String;

    .line 958
    iget-object v5, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    iget-object v6, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v7, "title"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/music/TrackBrowserActivity;->mCurrentTrackName:Ljava/lang/String;

    .line 960
    iget-object v5, p0, Lcom/android/music/TrackBrowserActivity;->mCurrentTrackName:Ljava/lang/String;

    invoke-interface {p1, v5}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 963
    if-ne v3, v9, :cond_3

    .line 964
    const/16 v5, 0xf

    const v6, 0x2050062

    invoke-interface {p1, v8, v5, v8, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 967
    :cond_3
    return-void

    .line 933
    .end local v0           #drmMethod:I
    .end local v3           #isDrm:I
    :catch_0
    move-exception v1

    .line 934
    .local v1, ex:Ljava/lang/IllegalArgumentException;
    iget-wide v5, v4, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    iput-wide v5, p0, Lcom/android/music/TrackBrowserActivity;->mSelectedId:J

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 7
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1252
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    .line 1253
    .local v2, ret:Z
    iget-boolean v5, p0, Lcom/android/music/TrackBrowserActivity;->mWithtabs:Z

    if-eqz v5, :cond_0

    .line 1282
    .end local v2           #ret:Z
    :goto_0
    return v2

    .line 1257
    .restart local v2       #ret:Z
    :cond_0
    iget-object v5, p0, Lcom/android/music/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    if-nez v5, :cond_1

    .line 1258
    const/16 v5, 0x13

    const v6, 0x7f07001f

    invoke-interface {p1, v4, v5, v4, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    const v6, 0x7f020023

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1260
    :cond_1
    const/16 v5, 0x8

    const v6, 0x7f07001b

    invoke-interface {p1, v4, v5, v4, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1261
    const/16 v5, 0x9

    const v6, 0x7f07001e

    invoke-interface {p1, v4, v5, v4, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    const v6, 0x7f020026

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1262
    iget-object v5, p0, Lcom/android/music/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    if-eqz v5, :cond_4

    .line 1263
    const/16 v5, 0x12

    const v6, 0x7f07005d

    invoke-interface {p1, v4, v5, v4, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    const v6, 0x7f020024

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1267
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/music/ext/Extensions;->getPluginObject(Landroid/content/Context;)Lcom/mediatek/music/ext/IMusicTrackBrowser;

    move-result-object v1

    .line 1268
    .local v1, musicPlugin:Lcom/mediatek/music/ext/IMusicTrackBrowser;
    iget-object v5, p0, Lcom/android/music/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    const-string v6, "recentlyadded"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/android/music/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    const-string v6, "podcasts"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    move v0, v3

    .line 1269
    .local v0, isNormalPlaylist:Z
    :goto_1
    iget-object v5, p0, Lcom/android/music/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    const-string v6, "nowplaying"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    if-eqz v0, :cond_3

    invoke-interface {v1}, Lcom/mediatek/music/ext/IMusicTrackBrowser;->enableClearPlaylistMenu()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1270
    :cond_2
    const/16 v5, 0x14

    const v6, 0x7f07005e

    invoke-interface {p1, v4, v5, v4, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    const v6, 0x7f02001c

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1273
    :cond_3
    invoke-interface {v1}, Lcom/mediatek/music/ext/IMusicTrackBrowser;->enableAddSongMenu()Z

    move-result v5

    if-eqz v5, :cond_4

    if-eqz v0, :cond_4

    .line 1274
    const/16 v5, 0x17

    const v6, 0x7f070013

    invoke-interface {p1, v4, v5, v4, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    const v6, 0x7f02001b

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1279
    .end local v0           #isNormalPlaylist:Z
    .end local v1           #musicPlugin:Lcom/mediatek/music/ext/IMusicTrackBrowser;
    :cond_4
    const/16 v5, 0xd

    const v6, 0x7f070007

    invoke-interface {p1, v4, v5, v4, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    const v5, 0x7f02001e

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1281
    iget-object v4, p0, Lcom/android/music/TrackBrowserActivity;->mQueryTextListener:Landroid/widget/SearchView$OnQueryTextListener;

    invoke-static {p0, p1, v4}, Lcom/android/music/MusicUtils;->addSearchView(Landroid/app/Activity;Landroid/view/Menu;Landroid/widget/SearchView$OnQueryTextListener;)Landroid/view/MenuItem;

    move-result-object v4

    iput-object v4, p0, Lcom/android/music/TrackBrowserActivity;->mSearchItem:Landroid/view/MenuItem;

    move v2, v3

    .line 1282
    goto/16 :goto_0

    .restart local v1       #musicPlugin:Lcom/mediatek/music/ext/IMusicTrackBrowser;
    :cond_5
    move v0, v4

    .line 1268
    goto :goto_1
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 366
    const-string v2, "TrackBrowser"

    const-string v3, "onDestroy"

    invoke-static {v2, v3}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity;->mAsyncAlbumArtFetcher:Lcom/android/music/TrackBrowserActivity$AlbumArtFetcher;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity;->mAsyncAlbumArtFetcher:Lcom/android/music/TrackBrowserActivity$AlbumArtFetcher;

    invoke-virtual {v2}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 369
    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity;->mAsyncAlbumArtFetcher:Lcom/android/music/TrackBrowserActivity$AlbumArtFetcher;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 371
    :cond_0
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 372
    .local v1, lv:Landroid/widget/ListView;
    if-eqz v1, :cond_2

    .line 374
    iget-boolean v2, p0, Lcom/android/music/TrackBrowserActivity;->mWithtabs:Z

    if-eqz v2, :cond_1

    .line 375
    invoke-virtual {v1}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v2

    sput v2, Lcom/android/music/TrackBrowserActivity;->mLastListPosCourse:I

    .line 376
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 377
    .local v0, cv:Landroid/view/View;
    if-eqz v0, :cond_1

    .line 378
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    sput v2, Lcom/android/music/TrackBrowserActivity;->mLastListPosFine:I

    .line 381
    .end local v0           #cv:Landroid/view/View;
    :cond_1
    iget-boolean v2, p0, Lcom/android/music/TrackBrowserActivity;->mEditMode:Z

    if-eqz v2, :cond_2

    move-object v2, v1

    .line 383
    check-cast v2, Lcom/android/music/TouchInterceptor;

    invoke-virtual {v2, v4}, Lcom/android/music/TouchInterceptor;->setDropListener(Lcom/android/music/TouchInterceptor$DropListener;)V

    move-object v2, v1

    .line 384
    check-cast v2, Lcom/android/music/TouchInterceptor;

    invoke-virtual {v2, v4}, Lcom/android/music/TouchInterceptor;->setRemoveListener(Lcom/android/music/TouchInterceptor$RemoveListener;)V

    .line 386
    check-cast v1, Lcom/android/music/TouchInterceptor;

    .end local v1           #lv:Landroid/widget/ListView;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/music/TouchInterceptor;->unregisterContentObserver(Landroid/content/Context;)V

    .line 390
    :cond_2
    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity;->mToken:Lcom/android/music/MusicUtils$ServiceToken;

    invoke-static {v2}, Lcom/android/music/MusicUtils;->unbindFromService(Lcom/android/music/MusicUtils$ServiceToken;)V

    .line 392
    iput-object v4, p0, Lcom/android/music/TrackBrowserActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    .line 394
    :try_start_0
    const-string v2, "nowplaying"

    iget-object v3, p0, Lcom/android/music/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 395
    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity;->mNowPlayingListener:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v2}, Lcom/android/music/TrackBrowserActivity;->unregisterReceiverSafe(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 407
    :goto_0
    iget-boolean v2, p0, Lcom/android/music/TrackBrowserActivity;->mAdapterSent:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity;->mAdapter:Lcom/android/music/TrackBrowserActivity$TrackListAdapter;

    if-eqz v2, :cond_3

    .line 408
    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity;->mAdapter:Lcom/android/music/TrackBrowserActivity$TrackListAdapter;

    invoke-virtual {v2, v4}, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 413
    :cond_3
    invoke-virtual {p0, v4}, Landroid/app/ListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 414
    iput-object v4, p0, Lcom/android/music/TrackBrowserActivity;->mAdapter:Lcom/android/music/TrackBrowserActivity$TrackListAdapter;

    .line 415
    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v2}, Lcom/android/music/TrackBrowserActivity;->unregisterReceiverSafe(Landroid/content/BroadcastReceiver;)V

    .line 416
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 417
    return-void

    .line 397
    :cond_4
    :try_start_1
    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v2}, Lcom/android/music/TrackBrowserActivity;->unregisterReceiverSafe(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 399
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 5
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v4, 0x1

    .line 1216
    const-string v0, "MusicPerformanceTest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Performance test][Music] play song start ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/music/MusicLogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    const-string v0, "MusicPerformanceTest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CMCC Performance test][Music] play song start ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/music/MusicLogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1220
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 1242
    :cond_0
    :goto_0
    return-void

    .line 1226
    :cond_1
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    instance-of v0, v0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;

    if-eqz v0, :cond_2

    .line 1227
    sget-object v0, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    if-eqz v0, :cond_2

    .line 1230
    :try_start_0
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-direct {p0, v0, p3, v1, v2}, Lcom/android/music/TrackBrowserActivity;->checkDrmRightsForPlay(Landroid/database/Cursor;IZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1231
    sget-object v0, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v0, p3}, Lcom/android/music/IMediaPlaybackService;->setQueuePosition(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1234
    :catch_0
    move-exception v0

    .line 1239
    :cond_2
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p3, v1, v4}, Lcom/android/music/TrackBrowserActivity;->checkDrmRightsForPlay(Landroid/database/Cursor;IZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1240
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-static {p0, v0, p3}, Lcom/android/music/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;I)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 10
    .parameter "item"

    .prologue
    const/4 v0, 0x0

    const/4 v9, 0x1

    .line 1348
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v8

    .line 1349
    .local v8, ret:Z
    iget-boolean v1, p0, Lcom/android/music/TrackBrowserActivity;->mWithtabs:Z

    if-eqz v1, :cond_0

    .line 1421
    .end local v8           #ret:Z
    :goto_0
    return v8

    .line 1354
    .restart local v8       #ret:Z
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    move v8, v0

    .line 1419
    goto :goto_0

    .line 1356
    :sswitch_0
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-static {p0, v0}, Lcom/android/music/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;)V

    move v8, v9

    .line 1357
    goto :goto_0

    .line 1361
    :sswitch_1
    invoke-static {}, Lcom/android/music/MusicUtils;->togglePartyShuffle()V

    goto :goto_0

    .line 1366
    :sswitch_2
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v0

    const-string v3, "is_music=1"

    const/4 v4, 0x0

    const-string v5, "title_pinyin_key"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1371
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 1372
    invoke-static {p0, v6}, Lcom/android/music/MusicUtils;->shuffleAll(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 1373
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    move v8, v9

    .line 1375
    goto :goto_0

    .line 1378
    .end local v6           #cursor:Landroid/database/Cursor;
    :sswitch_3
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 1379
    .local v7, intent:Landroid/content/Intent;
    const-class v0, Lcom/android/music/CreatePlaylist;

    invoke-virtual {v7, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1380
    const-string v0, "SAVE_PLAYLIST_FLAG"

    const-string v1, "save_as_playlist"

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1381
    const-string v0, "playlist_name"

    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mPlayListName:Ljava/lang/String;

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1382
    const/16 v0, 0x12

    invoke-virtual {p0, v7, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    move v8, v9

    .line 1383
    goto :goto_0

    .line 1388
    .end local v7           #intent:Landroid/content/Intent;
    :sswitch_4
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    const-string v1, "nowplaying"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1389
    invoke-static {}, Lcom/android/music/MusicUtils;->clearQueue()V

    :goto_1
    move v8, v9

    .line 1394
    goto :goto_0

    .line 1391
    :cond_2
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/music/MusicUtils;->clearPlaylist(Landroid/content/Context;I)I

    .line 1392
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 1397
    :sswitch_5
    new-instance v7, Landroid/content/Intent;

    const-string v0, "com.mediatek.filemanager.ADD_FILE"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1398
    .restart local v7       #intent:Landroid/content/Intent;
    const-string v0, "android.intent.category.DEFAULT"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1399
    const/16 v0, 0x17

    invoke-virtual {p0, v7, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    move v8, v9

    .line 1400
    goto :goto_0

    .line 1405
    .end local v7           #intent:Landroid/content/Intent;
    :sswitch_6
    invoke-static {p0}, Lcom/android/music/MusicUtils;->startEffectPanel(Landroid/app/Activity;)Z

    move-result v8

    goto/16 :goto_0

    .line 1409
    :sswitch_7
    iget-boolean v0, p0, Lcom/android/music/TrackBrowserActivity;->mIsInBackgroud:Z

    if-nez v0, :cond_3

    .line 1410
    invoke-virtual {p0}, Landroid/app/Activity;->onBackPressed()V

    :cond_3
    move v8, v9

    .line 1412
    goto/16 :goto_0

    .line 1415
    :sswitch_8
    invoke-virtual {p0}, Lcom/android/music/TrackBrowserActivity;->onSearchRequested()Z

    move v8, v9

    .line 1416
    goto/16 :goto_0

    .line 1354
    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_1
        0x9 -> :sswitch_2
        0xd -> :sswitch_6
        0x12 -> :sswitch_3
        0x13 -> :sswitch_0
        0x14 -> :sswitch_4
        0x17 -> :sswitch_5
        0x102002c -> :sswitch_7
        0x7f0c0044 -> :sswitch_8
    .end sparse-switch
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 477
    const-string v1, "TrackBrowser"

    const-string v2, "onPause"

    invoke-static {v1, v2}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mSubMenu:Landroid/view/SubMenu;

    if-eqz v1, :cond_0

    .line 479
    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mSubMenu:Landroid/view/SubMenu;

    invoke-interface {v1}, Landroid/view/SubMenu;->close()V

    .line 481
    :cond_0
    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 483
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 484
    .local v0, i:Landroid/content/Intent;
    const-string v1, "selectedtrack"

    iget-wide v2, p0, Lcom/android/music/TrackBrowserActivity;->mSelectedId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 485
    const-string v1, "curtrackpos"

    iget v2, p0, Lcom/android/music/TrackBrowserActivity;->mCurTrackPos:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 486
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 489
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/music/TrackBrowserActivity;->mIsInBackgroud:Z

    .line 490
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 491
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 9
    .parameter "menu"

    .prologue
    const/4 v5, 0x1

    const/16 v8, 0x14

    const/4 v4, 0x0

    .line 1288
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    .line 1289
    .local v2, ret:Z
    iget-boolean v6, p0, Lcom/android/music/TrackBrowserActivity;->mWithtabs:Z

    if-eqz v6, :cond_0

    .line 1342
    .end local v2           #ret:Z
    :goto_0
    return v2

    .line 1293
    .restart local v2       #ret:Z
    :cond_0
    invoke-static {p1}, Lcom/android/music/MusicUtils;->setPartyShuffleMenuIcon(Landroid/view/Menu;)V

    .line 1295
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/music/ext/Extensions;->getPluginObject(Landroid/content/Context;)Lcom/mediatek/music/ext/IMusicTrackBrowser;

    move-result-object v6

    invoke-interface {v6}, Lcom/mediatek/music/ext/IMusicTrackBrowser;->enableClearPlaylistMenu()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/music/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    if-eqz v6, :cond_1

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 1297
    iget-object v6, p0, Lcom/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/AdapterView;->getCount()I

    move-result v6

    if-gtz v6, :cond_6

    .line 1299
    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1308
    :cond_1
    :goto_1
    iget-object v6, p0, Lcom/android/music/TrackBrowserActivity;->mPlayListName:Ljava/lang/String;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/music/TrackBrowserActivity;->mPlayListName:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/android/music/TrackBrowserActivity;->mPlayListName:Ljava/lang/String;

    const v7, 0x7f070016

    invoke-virtual {p0, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/android/music/TrackBrowserActivity;->mPlayListName:Ljava/lang/String;

    const v7, 0x7f070017

    invoke-virtual {p0, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/android/music/TrackBrowserActivity;->mPlayListName:Ljava/lang/String;

    const v7, 0x7f070018

    invoke-virtual {p0, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1313
    :cond_2
    const/16 v6, 0x8

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1314
    const/16 v6, 0x9

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1315
    const/16 v6, 0x12

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1320
    :cond_3
    const/4 v1, 0x1

    .line 1321
    .local v1, isEffectMenuVisible:Z
    new-instance v0, Landroid/content/Intent;

    const-string v6, "android.media.action.DISPLAY_AUDIO_EFFECT_CONTROL_PANEL"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1322
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, v0, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    if-nez v6, :cond_4

    .line 1323
    const/4 v1, 0x0

    .line 1325
    :cond_4
    const/16 v6, 0xd

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1327
    iput-object p1, p0, Lcom/android/music/TrackBrowserActivity;->mOptionMenu:Landroid/view/Menu;

    .line 1329
    iget-object v6, p0, Lcom/android/music/TrackBrowserActivity;->mQueryText:Ljava/lang/CharSequence;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/music/TrackBrowserActivity;->mQueryText:Ljava/lang/CharSequence;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 1330
    const-string v6, "TrackBrowser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setQueryText:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/music/TrackBrowserActivity;->mQueryText:Ljava/lang/CharSequence;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/music/MusicLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1331
    iget-object v6, p0, Lcom/android/music/TrackBrowserActivity;->mSearchItem:Landroid/view/MenuItem;

    invoke-interface {v6}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SearchView;

    .line 1332
    .local v3, searchView:Landroid/widget/SearchView;
    iget-object v6, p0, Lcom/android/music/TrackBrowserActivity;->mQueryText:Ljava/lang/CharSequence;

    invoke-virtual {v3, v6, v4}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 1333
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/music/TrackBrowserActivity;->mQueryText:Ljava/lang/CharSequence;

    .line 1337
    .end local v3           #searchView:Landroid/widget/SearchView;
    :cond_5
    const v6, 0x7f0c003d

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_7

    .line 1338
    const-string v5, "TrackBrowser"

    const-string v6, "SDcard not ready, disable option menu!"

    invoke-static {v5, v6}, Lcom/android/music/MusicLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v4

    .line 1339
    goto/16 :goto_0

    .line 1300
    .end local v0           #i:Landroid/content/Intent;
    .end local v1           #isEffectMenuVisible:Z
    :cond_6
    iget-object v6, p0, Lcom/android/music/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    const-string v7, "recentlyadded"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/android/music/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    const-string v7, "podcasts"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1302
    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_1

    .restart local v0       #i:Landroid/content/Intent;
    .restart local v1       #isEffectMenuVisible:Z
    :cond_7
    move v2, v5

    .line 1342
    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 435
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 436
    const-string v0, "TrackBrowser"

    const-string v1, "onResume>>>"

    invoke-static {v0, v1}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 440
    iget-boolean v0, p0, Lcom/android/music/TrackBrowserActivity;->mEditMode:Z

    if-eqz v0, :cond_0

    .line 441
    const-string v0, "TrackBrowser"

    const-string v1, "need to requery data!"

    invoke-static {v0, v1}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mAdapter:Lcom/android/music/TrackBrowserActivity$TrackListAdapter;

    invoke-virtual {v0}, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->getQueryHandler()Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/music/TrackBrowserActivity;->getTrackCursor(Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler;Ljava/lang/String;Z)Landroid/database/Cursor;

    .line 445
    :cond_0
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/AbsListView;->invalidateViews()V

    .line 447
    :cond_1
    invoke-static {p0}, Lcom/android/music/MusicUtils;->setSpinnerState(Landroid/app/Activity;)V

    .line 449
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/music/TrackBrowserActivity;->mIsInBackgroud:Z

    .line 451
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    if-eqz v0, :cond_2

    .line 452
    iget v0, p0, Lcom/android/music/TrackBrowserActivity;->mOrientation:I

    invoke-static {p0, v0}, Lcom/android/music/MusicUtils;->updateNowPlaying(Landroid/app/Activity;I)V

    .line 456
    :cond_2
    invoke-virtual {p0}, Lcom/android/music/TrackBrowserActivity;->refreshEmptyView()V

    .line 457
    const-string v0, "TrackBrowser"

    const-string v1, "onResume<<<"

    invoke-static {v0, v1}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 359
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mAdapter:Lcom/android/music/TrackBrowserActivity$TrackListAdapter;

    .line 360
    .local v0, a:Lcom/android/music/TrackBrowserActivity$TrackListAdapter;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/music/TrackBrowserActivity;->mAdapterSent:Z

    .line 361
    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outcicle"

    .prologue
    .line 562
    const-string v0, "selectedtrack"

    iget-wide v1, p0, Lcom/android/music/TrackBrowserActivity;->mSelectedId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 563
    const-string v0, "artist"

    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mArtistId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    const-string v0, "album"

    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mAlbumId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    const-string v0, "playlist"

    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    const-string v0, "genre"

    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mGenre:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    const-string v0, "editmode"

    iget-boolean v1, p0, Lcom/android/music/TrackBrowserActivity;->mEditMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 569
    const-string v0, "curtrackpos"

    iget v1, p0, Lcom/android/music/TrackBrowserActivity;->mCurTrackPos:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 570
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 571
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 2332
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mSearchItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 2333
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mSearchItem:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    .line 2335
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .parameter "name"
    .parameter "service"

    .prologue
    .line 346
    invoke-static {p2}, Lcom/android/music/IMediaPlaybackService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/music/IMediaPlaybackService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    .line 347
    iget v0, p0, Lcom/android/music/TrackBrowserActivity;->mOrientation:I

    invoke-static {p0, v0}, Lcom/android/music/MusicUtils;->updateNowPlaying(Landroid/app/Activity;I)V

    .line 348
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 353
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    .line 354
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 355
    return-void
.end method

.method public refreshEmptyView()V
    .locals 4

    .prologue
    .line 464
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 467
    const-string v0, "TrackBrowser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getExpandableListView().getCount() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/AdapterView;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mListHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/music/TrackBrowserActivity;->EMPTYSHOW_SPEND:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 473
    :goto_0
    return-void

    .line 471
    :cond_0
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/android/music/MusicUtils;->emptyShow(Landroid/widget/ListView;Landroid/app/Activity;)V

    goto :goto_0
.end method
