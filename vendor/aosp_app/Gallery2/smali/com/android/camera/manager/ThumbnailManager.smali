.class public Lcom/android/camera/manager/ThumbnailManager;
.super Lcom/android/camera/manager/ViewManager;
.source "ThumbnailManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/camera/Camera$OnFullScreenChangedListener;
.implements Lcom/android/camera/Camera$Resumable;
.implements Lcom/android/camera/FileSaver$FileSaverListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/manager/ThumbnailManager$WorkerHandler;,
        Lcom/android/camera/manager/ThumbnailManager$SaveThumbnailTask;,
        Lcom/android/camera/manager/ThumbnailManager$LoadThumbnailTask;
    }
.end annotation


# static fields
.field private static final ACTION_IPO_SHUTDOWN:Ljava/lang/String; = "android.intent.action.ACTION_SHUTDOWN_IPO"

.field private static final ACTION_UPDATE_PICTURE:Ljava/lang/String; = "com.android.gallery3d.action.UPDATE_PICTURE"

.field private static final MSG_CHECK_THUMBNAIL:I = 0x2

.field private static final MSG_SAVE_THUMBNAIL:I = 0x0

.field private static final MSG_UPDATE_THUMBNAIL:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ThumbnailManager"


# instance fields
.field private mCurrentSaveRequest:Lcom/android/camera/SaveRequest;

.field private mIpoShutdownFilter:Landroid/content/IntentFilter;

.field private mIpoShutdownReceiver:Landroid/content/BroadcastReceiver;

.field private mIsSavingThumbnail:Z

.field private mLastRefreshTime:J

.field private mLastSaveRequest:Lcom/android/camera/SaveRequest;

.field private mLoadThumbnailTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Lcom/android/camera/Thumbnail;",
            ">;"
        }
    .end annotation
.end field

.field private mMainHandler:Landroid/os/Handler;

.field private mRefreshInterval:J

.field private mResumed:Z

.field private mThumbnail:Lcom/android/camera/Thumbnail;

.field private mThumbnailView:Lcom/android/camera/ui/RotateImageView;

.field private mUpdatePictureFilter:Landroid/content/IntentFilter;

.field private mUpdatePictureReceiver:Landroid/content/BroadcastReceiver;

.field private mUpdateThumbnailDelayed:Z

.field private mWorkerHandler:Lcom/android/camera/manager/ThumbnailManager$WorkerHandler;


# direct methods
.method public constructor <init>(Lcom/android/camera/Camera;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/android/camera/manager/ViewManager;-><init>(Lcom/android/camera/Camera;)V

    .line 45
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/manager/ThumbnailManager;->mRefreshInterval:J

    .line 56
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.android.gallery3d.action.UPDATE_PICTURE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/manager/ThumbnailManager;->mUpdatePictureFilter:Landroid/content/IntentFilter;

    .line 57
    new-instance v0, Lcom/android/camera/manager/ThumbnailManager$1;

    invoke-direct {v0, p0}, Lcom/android/camera/manager/ThumbnailManager$1;-><init>(Lcom/android/camera/manager/ThumbnailManager;)V

    iput-object v0, p0, Lcom/android/camera/manager/ThumbnailManager;->mUpdatePictureReceiver:Landroid/content/BroadcastReceiver;

    .line 74
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/manager/ThumbnailManager;->mIpoShutdownFilter:Landroid/content/IntentFilter;

    .line 75
    new-instance v0, Lcom/android/camera/manager/ThumbnailManager$2;

    invoke-direct {v0, p0}, Lcom/android/camera/manager/ThumbnailManager$2;-><init>(Lcom/android/camera/manager/ThumbnailManager;)V

    iput-object v0, p0, Lcom/android/camera/manager/ThumbnailManager;->mIpoShutdownReceiver:Landroid/content/BroadcastReceiver;

    .line 83
    new-instance v0, Lcom/android/camera/manager/ThumbnailManager$3;

    invoke-direct {v0, p0}, Lcom/android/camera/manager/ThumbnailManager$3;-><init>(Lcom/android/camera/manager/ThumbnailManager;)V

    iput-object v0, p0, Lcom/android/camera/manager/ThumbnailManager;->mMainHandler:Landroid/os/Handler;

    .line 100
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/manager/ViewManager;->setFileter(Z)V

    .line 101
    invoke-virtual {p1, p0}, Lcom/android/camera/Camera;->addResumable(Lcom/android/camera/Camera$Resumable;)Z

    .line 102
    invoke-virtual {p1, p0}, Lcom/android/camera/Camera;->addOnFullScreenChangedListener(Lcom/android/camera/Camera$OnFullScreenChangedListener;)Z

    .line 103
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/manager/ThumbnailManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/camera/manager/ThumbnailManager;->getLastThumbnailUncached()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/camera/manager/ThumbnailManager;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 31
    iget-wide v0, p0, Lcom/android/camera/manager/ThumbnailManager;->mRefreshInterval:J

    return-wide v0
.end method

.method static synthetic access$102(Lcom/android/camera/manager/ThumbnailManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/android/camera/manager/ThumbnailManager;->mUpdateThumbnailDelayed:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/camera/manager/ThumbnailManager;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 31
    iget-wide v0, p0, Lcom/android/camera/manager/ThumbnailManager;->mLastRefreshTime:J

    return-wide v0
.end method

.method static synthetic access$1102(Lcom/android/camera/manager/ThumbnailManager;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-wide p1, p0, Lcom/android/camera/manager/ThumbnailManager;->mLastRefreshTime:J

    return-wide p1
.end method

.method static synthetic access$1200(Lcom/android/camera/manager/ThumbnailManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/android/camera/manager/ThumbnailManager;->mResumed:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/camera/manager/ThumbnailManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/camera/manager/ThumbnailManager;->sendUpdateThumbnail()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/manager/ThumbnailManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/camera/manager/ThumbnailManager;->saveThumbnailToFile()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/manager/ThumbnailManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/camera/manager/ThumbnailManager;->updateThumbnailView()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/manager/ThumbnailManager;)Lcom/android/camera/Thumbnail;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/camera/manager/ThumbnailManager;->mThumbnail:Lcom/android/camera/Thumbnail;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/camera/manager/ThumbnailManager;Lcom/android/camera/Thumbnail;)Lcom/android/camera/Thumbnail;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/android/camera/manager/ThumbnailManager;->mThumbnail:Lcom/android/camera/Thumbnail;

    return-object p1
.end method

.method static synthetic access$602(Lcom/android/camera/manager/ThumbnailManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/android/camera/manager/ThumbnailManager;->mIsSavingThumbnail:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/camera/manager/ThumbnailManager;)Lcom/android/camera/SaveRequest;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/camera/manager/ThumbnailManager;->mCurrentSaveRequest:Lcom/android/camera/SaveRequest;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/manager/ThumbnailManager;)Lcom/android/camera/ui/RotateImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/camera/manager/ThumbnailManager;->mThumbnailView:Lcom/android/camera/ui/RotateImageView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/camera/manager/ThumbnailManager;)Lcom/android/camera/SaveRequest;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/camera/manager/ThumbnailManager;->mLastSaveRequest:Lcom/android/camera/SaveRequest;

    return-object v0
.end method

.method private getLastThumbnail()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 276
    new-instance v2, Lcom/android/camera/manager/ThumbnailManager$LoadThumbnailTask;

    invoke-static {}, Lcom/android/camera/FeatureSwitcher;->isSmartBookEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-direct {v2, p0, v0}, Lcom/android/camera/manager/ThumbnailManager$LoadThumbnailTask;-><init>(Lcom/android/camera/manager/ThumbnailManager;Z)V

    new-array v0, v1, [Ljava/lang/Void;

    invoke-virtual {v2, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/manager/ThumbnailManager;->mLoadThumbnailTask:Landroid/os/AsyncTask;

    .line 277
    const-string v0, "ThumbnailManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLastThumbnail() mThumbnail="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/manager/ThumbnailManager;->mThumbnail:Lcom/android/camera/Thumbnail;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    return-void

    .line 276
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getLastThumbnailUncached()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 281
    const-string v0, "ThumbnailManager"

    const-string v1, "getLastThumbnailUncached"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iget-object v0, p0, Lcom/android/camera/manager/ThumbnailManager;->mLoadThumbnailTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/android/camera/manager/ThumbnailManager;->mLoadThumbnailTask:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 285
    :cond_0
    new-instance v0, Lcom/android/camera/manager/ThumbnailManager$LoadThumbnailTask;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/manager/ThumbnailManager$LoadThumbnailTask;-><init>(Lcom/android/camera/manager/ThumbnailManager;Z)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/manager/ThumbnailManager;->mLoadThumbnailTask:Landroid/os/AsyncTask;

    .line 286
    return-void
.end method

.method private saveThumbnailToFile()V
    .locals 4

    .prologue
    .line 289
    const-string v0, "ThumbnailManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveThumbnailToFile() mThumbnail="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/manager/ThumbnailManager;->mThumbnail:Lcom/android/camera/Thumbnail;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget-object v0, p0, Lcom/android/camera/manager/ThumbnailManager;->mThumbnail:Lcom/android/camera/Thumbnail;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/manager/ThumbnailManager;->mThumbnail:Lcom/android/camera/Thumbnail;

    invoke-virtual {v0}, Lcom/android/camera/Thumbnail;->fromFile()Z

    move-result v0

    if-nez v0, :cond_0

    .line 291
    new-instance v0, Lcom/android/camera/manager/ThumbnailManager$SaveThumbnailTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/manager/ThumbnailManager$SaveThumbnailTask;-><init>(Lcom/android/camera/manager/ThumbnailManager;Lcom/android/camera/manager/ThumbnailManager$1;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/camera/Thumbnail;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/camera/manager/ThumbnailManager;->mThumbnail:Lcom/android/camera/Thumbnail;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 293
    :cond_0
    return-void
.end method

.method private sendUpdateThumbnail()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 319
    iget-object v1, p0, Lcom/android/camera/manager/ThumbnailManager;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 320
    iget-object v1, p0, Lcom/android/camera/manager/ThumbnailManager;->mMainHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/camera/manager/ThumbnailManager;->mThumbnail:Lcom/android/camera/Thumbnail;

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 321
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 322
    return-void
.end method

.method private updateThumbnailView()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 189
    const-string v0, "ThumbnailManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateThumbnailView() mThumbnailView="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/manager/ThumbnailManager;->mThumbnailView:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mThumbnail="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/manager/ThumbnailManager;->mThumbnail:Lcom/android/camera/Thumbnail;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isShowing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->isShowing()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v0, p0, Lcom/android/camera/manager/ThumbnailManager;->mThumbnailView:Lcom/android/camera/ui/RotateImageView;

    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 193
    iget-object v0, p0, Lcom/android/camera/manager/ThumbnailManager;->mThumbnail:Lcom/android/camera/Thumbnail;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/manager/ThumbnailManager;->mThumbnail:Lcom/android/camera/Thumbnail;

    invoke-virtual {v0}, Lcom/android/camera/Thumbnail;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 194
    iget-object v0, p0, Lcom/android/camera/manager/ThumbnailManager;->mThumbnailView:Lcom/android/camera/ui/RotateImageView;

    iget-object v1, p0, Lcom/android/camera/manager/ThumbnailManager;->mThumbnail:Lcom/android/camera/Thumbnail;

    invoke-virtual {v1}, Lcom/android/camera/Thumbnail;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 195
    iget-object v0, p0, Lcom/android/camera/manager/ThumbnailManager;->mThumbnailView:Lcom/android/camera/ui/RotateImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 203
    :goto_0
    const-string v0, "ThumbnailManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateThumbnailView() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/manager/ThumbnailManager;->mThumbnailView:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_0
    return-void

    .line 197
    :cond_1
    iget-object v0, p0, Lcom/android/camera/manager/ThumbnailManager;->mThumbnailView:Lcom/android/camera/ui/RotateImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 198
    iget-object v0, p0, Lcom/android/camera/manager/ThumbnailManager;->mThumbnailView:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 201
    :cond_2
    iget-object v0, p0, Lcom/android/camera/manager/ThumbnailManager;->mThumbnailView:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public begin()V
    .locals 4

    .prologue
    .line 119
    iget-object v2, p0, Lcom/android/camera/manager/ThumbnailManager;->mWorkerHandler:Lcom/android/camera/manager/ThumbnailManager$WorkerHandler;

    if-nez v2, :cond_0

    .line 120
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "thumbnail-creation-thread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 121
    .local v1, t:Landroid/os/HandlerThread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 122
    new-instance v2, Lcom/android/camera/manager/ThumbnailManager$WorkerHandler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/camera/manager/ThumbnailManager$WorkerHandler;-><init>(Lcom/android/camera/manager/ThumbnailManager;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/camera/manager/ThumbnailManager;->mWorkerHandler:Lcom/android/camera/manager/ThumbnailManager$WorkerHandler;

    .line 126
    .end local v1           #t:Landroid/os/HandlerThread;
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    .line 127
    .local v0, manager:Landroid/support/v4/content/LocalBroadcastManager;
    iget-object v2, p0, Lcom/android/camera/manager/ThumbnailManager;->mUpdatePictureReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/camera/manager/ThumbnailManager;->mUpdatePictureFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 128
    return-void
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    .line 169
    .local v0, manager:Landroid/support/v4/content/LocalBroadcastManager;
    iget-object v1, p0, Lcom/android/camera/manager/ThumbnailManager;->mUpdatePictureReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 170
    iget-object v1, p0, Lcom/android/camera/manager/ThumbnailManager;->mWorkerHandler:Lcom/android/camera/manager/ThumbnailManager$WorkerHandler;

    if-eqz v1, :cond_0

    .line 171
    iget-object v1, p0, Lcom/android/camera/manager/ThumbnailManager;->mWorkerHandler:Lcom/android/camera/manager/ThumbnailManager$WorkerHandler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    .line 173
    :cond_0
    return-void
.end method

.method public forceUpdate()V
    .locals 0

    .prologue
    .line 415
    invoke-direct {p0}, Lcom/android/camera/manager/ThumbnailManager;->getLastThumbnailUncached()V

    .line 416
    return-void
.end method

.method protected getView()Landroid/view/View;
    .locals 2

    .prologue
    .line 177
    const v1, 0x7f040067

    invoke-virtual {p0, v1}, Lcom/android/camera/manager/ViewManager;->inflate(I)Landroid/view/View;

    move-result-object v0

    .line 178
    .local v0, view:Landroid/view/View;
    const v1, 0x7f0b0154

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/RotateImageView;

    iput-object v1, p0, Lcom/android/camera/manager/ThumbnailManager;->mThumbnailView:Lcom/android/camera/ui/RotateImageView;

    .line 179
    iget-object v1, p0, Lcom/android/camera/manager/ThumbnailManager;->mThumbnailView:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 385
    const-string v0, "ThumbnailManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick() mThumbnail="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/manager/ThumbnailManager;->mThumbnail:Lcom/android/camera/Thumbnail;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " really="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ActivityBase;->isFullScreen()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isFullScreen()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isCameraIdle()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/manager/ThumbnailManager;->mThumbnail:Lcom/android/camera/Thumbnail;

    if-eqz v0, :cond_1

    .line 387
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getFileSaver()Lcom/android/camera/FileSaver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 388
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getFileSaver()Lcom/android/camera/FileSaver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/FileSaver;->waitDone()V

    .line 390
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->gotoGallery()V

    .line 392
    :cond_1
    return-void
.end method

.method public onFileSaved(Lcom/android/camera/SaveRequest;)V
    .locals 4
    .parameter "request"

    .prologue
    const/4 v3, 0x0

    .line 309
    const-string v0, "ThumbnailManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFileSaved("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") ignore="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/camera/SaveRequest;->isIgnoreThumbnail()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    invoke-interface {p1}, Lcom/android/camera/SaveRequest;->isIgnoreThumbnail()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/android/camera/SaveRequest;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 312
    iput-object p1, p0, Lcom/android/camera/manager/ThumbnailManager;->mCurrentSaveRequest:Lcom/android/camera/SaveRequest;

    .line 313
    iget-object v0, p0, Lcom/android/camera/manager/ThumbnailManager;->mWorkerHandler:Lcom/android/camera/manager/ThumbnailManager$WorkerHandler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 314
    iget-object v0, p0, Lcom/android/camera/manager/ThumbnailManager;->mWorkerHandler:Lcom/android/camera/manager/ThumbnailManager$WorkerHandler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 316
    :cond_0
    return-void
.end method

.method public onFullScreenChanged(Z)V
    .locals 3
    .parameter "full"

    .prologue
    .line 396
    const-string v0, "ThumbnailManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFullScreenChanged,full = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/manager/ThumbnailManager;->mUpdateThumbnailDelayed:Z

    if-eqz v0, :cond_1

    .line 398
    invoke-direct {p0}, Lcom/android/camera/manager/ThumbnailManager;->getLastThumbnailUncached()V

    .line 399
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/manager/ThumbnailManager;->mUpdateThumbnailDelayed:Z

    .line 411
    :cond_0
    :goto_0
    return-void

    .line 401
    :cond_1
    const-string v0, "ThumbnailManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "will call updateThumbnailView,mWorkerHandler ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/manager/ThumbnailManager;->mWorkerHandler:Lcom/android/camera/manager/ThumbnailManager$WorkerHandler;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    invoke-static {}, Lcom/android/camera/FeatureSwitcher;->isSmartBookEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 403
    invoke-direct {p0}, Lcom/android/camera/manager/ThumbnailManager;->getLastThumbnailUncached()V

    .line 407
    :goto_1
    iget-object v0, p0, Lcom/android/camera/manager/ThumbnailManager;->mWorkerHandler:Lcom/android/camera/manager/ThumbnailManager$WorkerHandler;

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/android/camera/manager/ThumbnailManager;->mWorkerHandler:Lcom/android/camera/manager/ThumbnailManager$WorkerHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 405
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/manager/ThumbnailManager;->updateThumbnailView()V

    goto :goto_1
.end method

.method protected onRefresh()V
    .locals 0

    .prologue
    .line 185
    invoke-direct {p0}, Lcom/android/camera/manager/ThumbnailManager;->updateThumbnailView()V

    .line 186
    return-void
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 145
    const-string v0, "ThumbnailManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pause() mResumed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/manager/ThumbnailManager;->mResumed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-boolean v0, p0, Lcom/android/camera/manager/ThumbnailManager;->mResumed:Z

    if-eqz v0, :cond_1

    .line 147
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/manager/ThumbnailManager;->mIpoShutdownReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 148
    iget-object v0, p0, Lcom/android/camera/manager/ThumbnailManager;->mLoadThumbnailTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/android/camera/manager/ThumbnailManager;->mLoadThumbnailTask:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 150
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/manager/ThumbnailManager;->mLoadThumbnailTask:Landroid/os/AsyncTask;

    .line 152
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/manager/ThumbnailManager;->saveThumbnailToFile()V

    .line 153
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/manager/ThumbnailManager;->mResumed:Z

    .line 155
    :cond_1
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 132
    const-string v0, "ThumbnailManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resume() mResumed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/manager/ThumbnailManager;->mResumed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-boolean v0, p0, Lcom/android/camera/manager/ThumbnailManager;->mResumed:Z

    if-nez v0, :cond_1

    .line 134
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/manager/ThumbnailManager;->mIpoShutdownReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/camera/manager/ThumbnailManager;->mIpoShutdownFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 135
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/manager/ThumbnailManager;->mIsSavingThumbnail:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isSecureCamera()Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    invoke-direct {p0}, Lcom/android/camera/manager/ThumbnailManager;->getLastThumbnail()V

    .line 139
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/manager/ThumbnailManager;->mResumed:Z

    .line 141
    :cond_1
    return-void
.end method

.method public setEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 158
    const-string v0, "ThumbnailManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEnabled "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isenable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->isEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-super {p0, p1}, Lcom/android/camera/manager/ViewManager;->setEnabled(Z)V

    .line 160
    iget-object v0, p0, Lcom/android/camera/manager/ThumbnailManager;->mThumbnailView:Lcom/android/camera/ui/RotateImageView;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/android/camera/manager/ThumbnailManager;->mThumbnailView:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/TwoStateImageView;->setEnabled(Z)V

    .line 162
    iget-object v0, p0, Lcom/android/camera/manager/ThumbnailManager;->mThumbnailView:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 164
    :cond_0
    return-void
.end method

.method public setFileSaver(Lcom/android/camera/FileSaver;)V
    .locals 0
    .parameter "saver"

    .prologue
    .line 106
    if-eqz p1, :cond_0

    .line 107
    invoke-virtual {p1, p0}, Lcom/android/camera/FileSaver;->addListener(Lcom/android/camera/FileSaver$FileSaverListener;)Z

    .line 109
    :cond_0
    return-void
.end method

.method public setRefreshInterval(I)V
    .locals 3
    .parameter "ms"

    .prologue
    .line 112
    const-string v0, "ThumbnailManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRefreshInterval("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/android/camera/manager/ThumbnailManager;->mRefreshInterval:J

    .line 114
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/manager/ThumbnailManager;->mLastRefreshTime:J

    .line 115
    return-void
.end method
