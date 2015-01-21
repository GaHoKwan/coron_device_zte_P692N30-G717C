.class public Lcom/mediatek/videoplayer/MovieListActivity;
.super Landroid/app/Activity;
.source "MovieListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/videoplayer/MovieListActivity$ViewHolder;,
        Lcom/mediatek/videoplayer/MovieListActivity$MovieListAdapter;,
        Lcom/mediatek/videoplayer/MovieListActivity$DeleteTask;
    }
.end annotation


# static fields
.field private static final EXTRA_ALL_VIDEO_FOLDER:Ljava/lang/String; = "mediatek.intent.extra.ALL_VIDEO_FOLDER"

.field private static final EXTRA_ENABLE_VIDEO_LIST:Ljava/lang/String; = "mediatek.intent.extra.ENABLE_VIDEO_LIST"

.field private static final INDEX_DATA:I = 0x5

.field private static final INDEX_DATE_MODIFIED:I = 0x8

.field private static final INDEX_DISPLAY_NAME:I = 0x1

.field private static final INDEX_DRUATION:I = 0x3

.field private static final INDEX_FILE_SIZE:I = 0x6

.field private static final INDEX_ID:I = 0x0

.field private static final INDEX_IS_DRM:I = 0x7

.field private static final INDEX_MIME_TYPE:I = 0x4

.field private static final INDEX_SUPPORT_3D:I = 0x9

.field private static final INDEX_TAKEN_DATE:I = 0x2

.field private static final KEY_LOGO_BITMAP:Ljava/lang/String; = "logo-bitmap"

.field private static final KEY_TREAT_UP_AS_BACK:Ljava/lang/String; = "treat-up-as-back"

.field private static final LOG:Z = true

.field private static final MENU_DELETE_ALL:I = 0x1

.field private static final MENU_DELETE_ONE:I = 0x2

.field private static final MENU_DRM_DETAIL:I = 0x4

.field private static final MENU_PROPERTY:I = 0x3

.field private static final ORDER_COLUMN:Ljava/lang/String; = "datetaken DESC, _id DESC "

.field private static final PROJECTION:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "MovieListActivity"

.field private static final VIDEO_URI:Landroid/net/Uri;

.field private static sExternalStoragePaths:[Ljava/lang/String;


# instance fields
.field private mAdapter:Lcom/mediatek/videoplayer/MovieListActivity$MovieListAdapter;

.field private mCachedVideoInfo:Lcom/mediatek/videoplayer/CachedVideoInfo;

.field private mEmptyView:Landroid/widget/TextView;

.field private mIsFocused:Z

.field private mListView:Landroid/widget/ListView;

.field private mNoSdView:Landroid/view/ViewGroup;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private final mStorageListener:Landroid/content/BroadcastReceiver;

.field private mThumbnailCache:Lcom/mediatek/videoplayer/ThumbnailCache;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 100
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/mediatek/videoplayer/MovieListActivity;->VIDEO_URI:Landroid/net/Uri;

    .line 101
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "datetaken"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "_size"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "is_drm"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "date_modified"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "stereo_type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/videoplayer/MovieListActivity;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 95
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/videoplayer/MovieListActivity;->mIsFocused:Z

    .line 205
    new-instance v0, Lcom/mediatek/videoplayer/MovieListActivity$1;

    invoke-direct {v0, p0}, Lcom/mediatek/videoplayer/MovieListActivity$1;-><init>(Lcom/mediatek/videoplayer/MovieListActivity;)V

    iput-object v0, p0, Lcom/mediatek/videoplayer/MovieListActivity;->mStorageListener:Landroid/content/BroadcastReceiver;

    .line 625
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/videoplayer/MovieListActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/mediatek/videoplayer/MovieListActivity;->refreshSdStatus(Z)V

    return-void
.end method

.method static synthetic access$100()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    sget-object v0, Lcom/mediatek/videoplayer/MovieListActivity;->sExternalStoragePaths:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/mediatek/videoplayer/MovieListActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/mediatek/videoplayer/MovieListActivity;->showList()V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/videoplayer/MovieListActivity;)Lcom/mediatek/videoplayer/MovieListActivity$MovieListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/mediatek/videoplayer/MovieListActivity;->mAdapter:Lcom/mediatek/videoplayer/MovieListActivity$MovieListAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/videoplayer/MovieListActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/mediatek/videoplayer/MovieListActivity;->hideScanningProgress()V

    return-void
.end method

.method static synthetic access$400(Lcom/mediatek/videoplayer/MovieListActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/mediatek/videoplayer/MovieListActivity;->showDeleteProgress(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/mediatek/videoplayer/MovieListActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/mediatek/videoplayer/MovieListActivity;->hideDeleteProgress()V

    return-void
.end method

.method static synthetic access$600()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 95
    sget-object v0, Lcom/mediatek/videoplayer/MovieListActivity;->VIDEO_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$700(Lcom/mediatek/videoplayer/MovieListActivity;)Lcom/mediatek/videoplayer/ThumbnailCache;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/mediatek/videoplayer/MovieListActivity;->mThumbnailCache:Lcom/mediatek/videoplayer/ThumbnailCache;

    return-object v0
.end method

.method static synthetic access$800(Lcom/mediatek/videoplayer/MovieListActivity;)Lcom/mediatek/videoplayer/CachedVideoInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/mediatek/videoplayer/MovieListActivity;->mCachedVideoInfo:Lcom/mediatek/videoplayer/CachedVideoInfo;

    return-object v0
.end method

.method static synthetic access$900(Lcom/mediatek/videoplayer/MovieListActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/mediatek/videoplayer/MovieListActivity;->showEmpty()V

    return-void
.end method

.method private hideDeleteProgress()V
    .locals 0

    .prologue
    .line 452
    invoke-direct {p0}, Lcom/mediatek/videoplayer/MovieListActivity;->hideProgress()V

    .line 453
    return-void
.end method

.method private hideProgress()V
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/mediatek/videoplayer/MovieListActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/mediatek/videoplayer/MovieListActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 288
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/videoplayer/MovieListActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 290
    :cond_0
    return-void
.end method

.method private hideScanningProgress()V
    .locals 0

    .prologue
    .line 267
    invoke-direct {p0}, Lcom/mediatek/videoplayer/MovieListActivity;->hideProgress()V

    .line 268
    return-void
.end method

.method private refreshMovieList()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 186
    iget-object v0, p0, Lcom/mediatek/videoplayer/MovieListActivity;->mAdapter:Lcom/mediatek/videoplayer/MovieListActivity$MovieListAdapter;

    invoke-virtual {v0}, Lcom/mediatek/videoplayer/MovieListActivity$MovieListAdapter;->getQueryHandler()Lcom/mediatek/videoplayer/MovieListActivity$MovieListAdapter$QueryHandler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 187
    iget-object v0, p0, Lcom/mediatek/videoplayer/MovieListActivity;->mAdapter:Lcom/mediatek/videoplayer/MovieListActivity$MovieListAdapter;

    invoke-virtual {v0}, Lcom/mediatek/videoplayer/MovieListActivity$MovieListAdapter;->getQueryHandler()Lcom/mediatek/videoplayer/MovieListActivity$MovieListAdapter$QueryHandler;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v3, Lcom/mediatek/videoplayer/MovieListActivity;->VIDEO_URI:Landroid/net/Uri;

    sget-object v4, Lcom/mediatek/videoplayer/MovieListActivity;->PROJECTION:[Ljava/lang/String;

    const-string v7, "datetaken DESC, _id DESC "

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    return-void
.end method

.method private refreshSdStatus(Z)V
    .locals 3
    .parameter "mounted"

    .prologue
    .line 232
    const-string v0, "MovieListActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refreshSdStatus("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/videoplayer/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    if-eqz p1, :cond_1

    .line 234
    invoke-static {p0}, Lcom/mediatek/videoplayer/MtkUtils;->isMediaScanning(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    const-string v0, "MovieListActivity"

    const-string v1, "refreshSdStatus() isMediaScanning true"

    invoke-static {v0, v1}, Lcom/mediatek/videoplayer/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    invoke-direct {p0}, Lcom/mediatek/videoplayer/MovieListActivity;->showScanningProgress()V

    .line 237
    invoke-direct {p0}, Lcom/mediatek/videoplayer/MovieListActivity;->showList()V

    .line 238
    invoke-static {p0}, Lcom/mediatek/videoplayer/MtkUtils;->disableSpinnerState(Landroid/app/Activity;)V

    .line 251
    :goto_0
    return-void

    .line 240
    :cond_0
    const-string v0, "MovieListActivity"

    const-string v1, "refreshSdStatus() isMediaScanning false"

    invoke-static {v0, v1}, Lcom/mediatek/videoplayer/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    invoke-direct {p0}, Lcom/mediatek/videoplayer/MovieListActivity;->hideScanningProgress()V

    .line 242
    invoke-direct {p0}, Lcom/mediatek/videoplayer/MovieListActivity;->showList()V

    .line 243
    invoke-direct {p0}, Lcom/mediatek/videoplayer/MovieListActivity;->refreshMovieList()V

    .line 244
    invoke-static {p0}, Lcom/mediatek/videoplayer/MtkUtils;->enableSpinnerState(Landroid/app/Activity;)V

    goto :goto_0

    .line 247
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/videoplayer/MovieListActivity;->hideScanningProgress()V

    .line 248
    invoke-direct {p0}, Lcom/mediatek/videoplayer/MovieListActivity;->showSdcardLost()V

    .line 249
    invoke-static {p0}, Lcom/mediatek/videoplayer/MtkUtils;->disableSpinnerState(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method private registerStorageListener()V
    .locals 2

    .prologue
    .line 196
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 197
    .local v0, iFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 198
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 199
    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 200
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 201
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 202
    iget-object v1, p0, Lcom/mediatek/videoplayer/MovieListActivity;->mStorageListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 203
    return-void
.end method

.method private showDelete(Lcom/mediatek/videoplayer/MovieListActivity$ViewHolder;)V
    .locals 6
    .parameter "holder"

    .prologue
    const/4 v5, 0x1

    .line 392
    const-string v0, "MovieListActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showDelete("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/videoplayer/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090055

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090056

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/mediatek/videoplayer/MovieListActivity$ViewHolder;->mTitle:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/mediatek/videoplayer/MovieListActivity$3;

    invoke-direct {v2, p0, p1}, Lcom/mediatek/videoplayer/MovieListActivity$3;-><init>(Lcom/mediatek/videoplayer/MovieListActivity;Lcom/mediatek/videoplayer/MovieListActivity$ViewHolder;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 409
    return-void
.end method

.method private showDeleteProgress(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 448
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mediatek/videoplayer/MovieListActivity;->showProgress(Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V

    .line 449
    return-void
.end method

.method private showDetail(Lcom/mediatek/videoplayer/MovieListActivity$ViewHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    .line 386
    new-instance v0, Lcom/mediatek/videoplayer/DetailDialog;

    invoke-direct {v0, p0, p1}, Lcom/mediatek/videoplayer/DetailDialog;-><init>(Landroid/content/Context;Lcom/mediatek/videoplayer/MovieListActivity$ViewHolder;)V

    .line 387
    .local v0, detailDialog:Lcom/mediatek/videoplayer/DetailDialog;
    const v1, 0x7f090054

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(I)V

    .line 388
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 389
    return-void
.end method

.method private showEmpty()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 305
    iget-object v0, p0, Lcom/mediatek/videoplayer/MovieListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 306
    iget-object v0, p0, Lcom/mediatek/videoplayer/MovieListActivity;->mEmptyView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 307
    iget-object v0, p0, Lcom/mediatek/videoplayer/MovieListActivity;->mNoSdView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 308
    return-void
.end method

.method private showList()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 299
    iget-object v0, p0, Lcom/mediatek/videoplayer/MovieListActivity;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 300
    iget-object v0, p0, Lcom/mediatek/videoplayer/MovieListActivity;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 301
    iget-object v0, p0, Lcom/mediatek/videoplayer/MovieListActivity;->mNoSdView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 302
    return-void
.end method

.method private showProgress(Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 3
    .parameter "message"
    .parameter "cancelListener"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 271
    iget-object v2, p0, Lcom/mediatek/videoplayer/MovieListActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v2, :cond_0

    .line 272
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-direct {v2, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/mediatek/videoplayer/MovieListActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 273
    iget-object v2, p0, Lcom/mediatek/videoplayer/MovieListActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v0}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 274
    iget-object v2, p0, Lcom/mediatek/videoplayer/MovieListActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 275
    iget-object v2, p0, Lcom/mediatek/videoplayer/MovieListActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz p2, :cond_2

    :goto_0
    invoke-virtual {v2, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 276
    iget-object v0, p0, Lcom/mediatek/videoplayer/MovieListActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p2}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 277
    iget-object v0, p0, Lcom/mediatek/videoplayer/MovieListActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 280
    :cond_0
    iget-boolean v0, p0, Lcom/mediatek/videoplayer/MovieListActivity;->mIsFocused:Z

    if-eqz v0, :cond_1

    .line 281
    iget-object v0, p0, Lcom/mediatek/videoplayer/MovieListActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 283
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 275
    goto :goto_0
.end method

.method private showScanningProgress()V
    .locals 2

    .prologue
    .line 254
    const v0, 0x7f09004c

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/mediatek/videoplayer/MovieListActivity$2;

    invoke-direct {v1, p0}, Lcom/mediatek/videoplayer/MovieListActivity$2;-><init>(Lcom/mediatek/videoplayer/MovieListActivity;)V

    invoke-direct {p0, v0, v1}, Lcom/mediatek/videoplayer/MovieListActivity;->showProgress(Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V

    .line 264
    return-void
.end method

.method private showSdcardLost()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 293
    iget-object v0, p0, Lcom/mediatek/videoplayer/MovieListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 294
    iget-object v0, p0, Lcom/mediatek/videoplayer/MovieListActivity;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 295
    iget-object v0, p0, Lcom/mediatek/videoplayer/MovieListActivity;->mNoSdView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 296
    return-void
.end method


# virtual methods
.method public onActivityFocus(Z)V
    .locals 3
    .parameter "isFocus"

    .prologue
    .line 691
    const-string v0, "MovieListActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityFocus() isFocus "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/videoplayer/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    iput-boolean p1, p0, Lcom/mediatek/videoplayer/MovieListActivity;->mIsFocused:Z

    .line 693
    iget-boolean v0, p0, Lcom/mediatek/videoplayer/MovieListActivity;->mIsFocused:Z

    if-eqz v0, :cond_1

    .line 695
    iget-object v0, p0, Lcom/mediatek/videoplayer/MovieListActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 696
    iget-object v0, p0, Lcom/mediatek/videoplayer/MovieListActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 701
    :cond_0
    :goto_0
    return-void

    .line 699
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/videoplayer/MovieListActivity;->hideProgress()V

    goto :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter "item"

    .prologue
    const/4 v3, 0x1

    .line 357
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v1

    check-cast v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 358
    .local v1, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-object v4, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 359
    .local v2, obj:Ljava/lang/Object;
    const/4 v0, 0x0

    .line 360
    .local v0, holder:Lcom/mediatek/videoplayer/MovieListActivity$ViewHolder;
    instance-of v4, v2, Lcom/mediatek/videoplayer/MovieListActivity$ViewHolder;

    if-eqz v4, :cond_0

    move-object v0, v2

    .line 361
    check-cast v0, Lcom/mediatek/videoplayer/MovieListActivity$ViewHolder;

    .line 363
    :cond_0
    if-nez v0, :cond_1

    .line 364
    const-string v4, "MovieListActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "wrong context item info "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/videoplayer/MtkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    :goto_0
    return v3

    .line 367
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 382
    :cond_2
    :goto_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    goto :goto_0

    .line 369
    :pswitch_0
    invoke-virtual {v0}, Lcom/mediatek/videoplayer/MovieListActivity$ViewHolder;->clone()Lcom/mediatek/videoplayer/MovieListActivity$ViewHolder;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/videoplayer/MovieListActivity;->showDelete(Lcom/mediatek/videoplayer/MovieListActivity$ViewHolder;)V

    goto :goto_0

    .line 372
    :pswitch_1
    invoke-virtual {v0}, Lcom/mediatek/videoplayer/MovieListActivity$ViewHolder;->clone()Lcom/mediatek/videoplayer/MovieListActivity$ViewHolder;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/videoplayer/MovieListActivity;->showDetail(Lcom/mediatek/videoplayer/MovieListActivity$ViewHolder;)V

    goto :goto_0

    .line 375
    :pswitch_2
    invoke-static {}, Lcom/mediatek/videoplayer/MtkUtils;->isSupportDrm()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 376
    iget-object v3, v0, Lcom/mediatek/videoplayer/MovieListActivity$ViewHolder;->mData:Ljava/lang/String;

    invoke-static {p0, v3}, Lcom/mediatek/videoplayer/MtkUtils;->showDrmDetails(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 367
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 150
    const-string v0, "MovieListActivity"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Lcom/mediatek/videoplayer/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 152
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 153
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 156
    invoke-static {}, Lcom/mediatek/videoplayer/streaming/StreamingUtils;->isStreamingVideoSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    iput-boolean v2, p0, Lcom/mediatek/videoplayer/MovieListActivity;->mIsFocused:Z

    .line 162
    :goto_0
    const v0, 0x7f030022

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 163
    const-string v0, "storage"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/storage/StorageManager;

    .line 165
    .local v7, storageManager:Landroid/os/storage/StorageManager;
    invoke-virtual {v7}, Landroid/os/storage/StorageManager;->getVolumePaths()[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/videoplayer/MovieListActivity;->sExternalStoragePaths:[Ljava/lang/String;

    .line 167
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/mediatek/videoplayer/MovieListActivity;->mListView:Landroid/widget/ListView;

    .line 168
    const v0, 0x1020004

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/videoplayer/MovieListActivity;->mEmptyView:Landroid/widget/TextView;

    .line 169
    const v0, 0x7f060060

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/mediatek/videoplayer/MovieListActivity;->mNoSdView:Landroid/view/ViewGroup;

    .line 170
    new-instance v0, Lcom/mediatek/videoplayer/MovieListActivity$MovieListAdapter;

    const v3, 0x7f030023

    const/4 v4, 0x0

    new-array v5, v2, [Ljava/lang/String;

    new-array v6, v2, [I

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/mediatek/videoplayer/MovieListActivity$MovieListAdapter;-><init>(Lcom/mediatek/videoplayer/MovieListActivity;Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/mediatek/videoplayer/MovieListActivity;->mAdapter:Lcom/mediatek/videoplayer/MovieListActivity$MovieListAdapter;

    .line 171
    iget-object v0, p0, Lcom/mediatek/videoplayer/MovieListActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/mediatek/videoplayer/MovieListActivity;->mAdapter:Lcom/mediatek/videoplayer/MovieListActivity$MovieListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 172
    iget-object v0, p0, Lcom/mediatek/videoplayer/MovieListActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/mediatek/videoplayer/MovieListActivity;->mAdapter:Lcom/mediatek/videoplayer/MovieListActivity$MovieListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 174
    iget-object v0, p0, Lcom/mediatek/videoplayer/MovieListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 175
    iget-object v0, p0, Lcom/mediatek/videoplayer/MovieListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->registerForContextMenu(Landroid/view/View;)V

    .line 176
    invoke-direct {p0}, Lcom/mediatek/videoplayer/MovieListActivity;->registerStorageListener()V

    .line 177
    invoke-static {p0}, Lcom/mediatek/videoplayer/MtkUtils;->isMediaMounted(Landroid/content/Context;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/mediatek/videoplayer/MovieListActivity;->refreshSdStatus(Z)V

    .line 179
    new-instance v0, Lcom/mediatek/videoplayer/ThumbnailCache;

    invoke-direct {v0, p0}, Lcom/mediatek/videoplayer/ThumbnailCache;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/videoplayer/MovieListActivity;->mThumbnailCache:Lcom/mediatek/videoplayer/ThumbnailCache;

    .line 180
    iget-object v0, p0, Lcom/mediatek/videoplayer/MovieListActivity;->mThumbnailCache:Lcom/mediatek/videoplayer/ThumbnailCache;

    iget-object v1, p0, Lcom/mediatek/videoplayer/MovieListActivity;->mAdapter:Lcom/mediatek/videoplayer/MovieListActivity$MovieListAdapter;

    invoke-virtual {v0, v1}, Lcom/mediatek/videoplayer/ThumbnailCache;->addListener(Lcom/mediatek/videoplayer/ThumbnailCache$ThumbnailStateListener;)Z

    .line 181
    new-instance v0, Lcom/mediatek/videoplayer/CachedVideoInfo;

    invoke-direct {v0}, Lcom/mediatek/videoplayer/CachedVideoInfo;-><init>()V

    iput-object v0, p0, Lcom/mediatek/videoplayer/MovieListActivity;->mCachedVideoInfo:Lcom/mediatek/videoplayer/CachedVideoInfo;

    .line 182
    const-string v0, "MovieListActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/videoplayer/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    return-void

    .line 159
    .end local v7           #storageManager:Landroid/os/storage/StorageManager;
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/videoplayer/MovieListActivity;->mIsFocused:Z

    goto/16 :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 6
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/4 v5, 0x0

    .line 340
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    move-object v1, p3

    .line 341
    check-cast v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 342
    .local v1, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-object v3, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 343
    .local v2, obj:Ljava/lang/Object;
    const/4 v0, 0x0

    .line 344
    .local v0, holder:Lcom/mediatek/videoplayer/MovieListActivity$ViewHolder;
    instance-of v3, v2, Lcom/mediatek/videoplayer/MovieListActivity$ViewHolder;

    if-eqz v3, :cond_0

    move-object v0, v2

    .line 345
    check-cast v0, Lcom/mediatek/videoplayer/MovieListActivity$ViewHolder;

    .line 346
    iget-object v3, v0, Lcom/mediatek/videoplayer/MovieListActivity$ViewHolder;->mTitle:Ljava/lang/String;

    invoke-interface {p1, v3}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 347
    const/4 v3, 0x2

    const v4, 0x7f090055

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 348
    const/4 v3, 0x3

    const v4, 0x7f090054

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 349
    invoke-static {}, Lcom/mediatek/videoplayer/MtkUtils;->isSupportDrm()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, v0, Lcom/mediatek/videoplayer/MovieListActivity$ViewHolder;->mIsDrm:Z

    if-eqz v3, :cond_0

    .line 350
    const/4 v3, 0x4

    const v4, 0x2050062

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 353
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 467
    iget-object v0, p0, Lcom/mediatek/videoplayer/MovieListActivity;->mAdapter:Lcom/mediatek/videoplayer/MovieListActivity$MovieListAdapter;

    if-eqz v0, :cond_0

    .line 468
    iget-object v0, p0, Lcom/mediatek/videoplayer/MovieListActivity;->mAdapter:Lcom/mediatek/videoplayer/MovieListActivity$MovieListAdapter;

    invoke-virtual {v0}, Lcom/mediatek/videoplayer/MovieListActivity$MovieListAdapter;->clearCachedHolder()V

    .line 469
    iget-object v0, p0, Lcom/mediatek/videoplayer/MovieListActivity;->mAdapter:Lcom/mediatek/videoplayer/MovieListActivity$MovieListAdapter;

    invoke-virtual {v0, v2}, Lcom/mediatek/videoplayer/MovieListActivity$MovieListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 471
    :cond_0
    iget-object v0, p0, Lcom/mediatek/videoplayer/MovieListActivity;->mThumbnailCache:Lcom/mediatek/videoplayer/ThumbnailCache;

    if-eqz v0, :cond_1

    .line 472
    iget-object v0, p0, Lcom/mediatek/videoplayer/MovieListActivity;->mThumbnailCache:Lcom/mediatek/videoplayer/ThumbnailCache;

    iget-object v1, p0, Lcom/mediatek/videoplayer/MovieListActivity;->mAdapter:Lcom/mediatek/videoplayer/MovieListActivity$MovieListAdapter;

    invoke-virtual {v0, v1}, Lcom/mediatek/videoplayer/ThumbnailCache;->removeListener(Lcom/mediatek/videoplayer/ThumbnailCache$ThumbnailStateListener;)Z

    .line 473
    iget-object v0, p0, Lcom/mediatek/videoplayer/MovieListActivity;->mThumbnailCache:Lcom/mediatek/videoplayer/ThumbnailCache;

    invoke-virtual {v0}, Lcom/mediatek/videoplayer/ThumbnailCache;->clear()V

    .line 475
    :cond_1
    iget-object v0, p0, Lcom/mediatek/videoplayer/MovieListActivity;->mCachedVideoInfo:Lcom/mediatek/videoplayer/CachedVideoInfo;

    invoke-virtual {v0, v2}, Lcom/mediatek/videoplayer/CachedVideoInfo;->setLocale(Ljava/util/Locale;)V

    .line 476
    iget-object v0, p0, Lcom/mediatek/videoplayer/MovieListActivity;->mStorageListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 477
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 478
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v9, 0x1

    .line 312
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    .line 313
    .local v5, o:Ljava/lang/Object;
    const/4 v2, 0x0

    .line 314
    .local v2, holder:Lcom/mediatek/videoplayer/MovieListActivity$ViewHolder;
    instance-of v6, v5, Lcom/mediatek/videoplayer/MovieListActivity$ViewHolder;

    if-eqz v6, :cond_1

    move-object v2, v5

    .line 315
    check-cast v2, Lcom/mediatek/videoplayer/MovieListActivity$ViewHolder;

    .line 316
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 317
    .local v3, intent:Landroid/content/Intent;
    const-string v4, "video/*"

    .line 318
    .local v4, mime:Ljava/lang/String;
    iget-object v6, v2, Lcom/mediatek/videoplayer/MovieListActivity$ViewHolder;->mMimetype:Ljava/lang/String;

    if-eqz v6, :cond_0

    const-string v6, ""

    iget-object v7, v2, Lcom/mediatek/videoplayer/MovieListActivity$ViewHolder;->mMimetype:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 319
    iget-object v4, v2, Lcom/mediatek/videoplayer/MovieListActivity$ViewHolder;->mMimetype:Ljava/lang/String;

    .line 321
    :cond_0
    sget-object v6, Lcom/mediatek/videoplayer/MovieListActivity;->VIDEO_URI:Landroid/net/Uri;

    iget-wide v7, v2, Lcom/mediatek/videoplayer/MovieListActivity$ViewHolder;->mId:J

    invoke-static {v6, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v3, v6, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 322
    const-string v6, "mediatek.intent.extra.ALL_VIDEO_FOLDER"

    invoke-virtual {v3, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 323
    const-string v6, "treat-up-as-back"

    invoke-virtual {v3, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 324
    const-string v6, "mediatek.intent.extra.ENABLE_VIDEO_LIST"

    invoke-virtual {v3, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 325
    const-string v6, "logo-bitmap"

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f020002

    invoke-static {v7, v8}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 326
    new-instance v0, Landroid/content/ComponentName;

    const-string v6, "com.android.gallery3d"

    const-string v7, "com.android.gallery3d.app.MovieActivity"

    invoke-direct {v0, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    .local v0, componentname:Landroid/content/ComponentName;
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 329
    :try_start_0
    invoke-virtual {p0, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 334
    .end local v0           #componentname:Landroid/content/ComponentName;
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #mime:Ljava/lang/String;
    :cond_1
    :goto_0
    const-string v6, "MovieListActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onItemClick("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") holder="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/videoplayer/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    return-void

    .line 330
    .restart local v0       #componentname:Landroid/content/ComponentName;
    .restart local v3       #intent:Landroid/content/Intent;
    .restart local v4       #mime:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 331
    .local v1, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 457
    const-string v0, "MovieListActivity"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Lcom/mediatek/videoplayer/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 459
    iget-object v0, p0, Lcom/mediatek/videoplayer/MovieListActivity;->mAdapter:Lcom/mediatek/videoplayer/MovieListActivity$MovieListAdapter;

    if-eqz v0, :cond_0

    .line 460
    iget-object v0, p0, Lcom/mediatek/videoplayer/MovieListActivity;->mAdapter:Lcom/mediatek/videoplayer/MovieListActivity$MovieListAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 462
    :cond_0
    iget-object v0, p0, Lcom/mediatek/videoplayer/MovieListActivity;->mCachedVideoInfo:Lcom/mediatek/videoplayer/CachedVideoInfo;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/videoplayer/CachedVideoInfo;->setLocale(Ljava/util/Locale;)V

    .line 463
    return-void
.end method
