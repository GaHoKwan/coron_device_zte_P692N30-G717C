.class public Lcom/android/gallery3d/app/TrimVideo;
.super Landroid/app/Activity;
.source "TrimVideo.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Lcom/android/gallery3d/app/ControllerOverlay$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/app/TrimVideo$ContentResolverQueryCallback;
    }
.end annotation


# static fields
.field private static final FILE_ERROR:J = -0x2L

.field private static final INVALID_DURATION:J = -0x1L

.field public static final KEY_TRIM_END:Ljava/lang/String; = "trim_end"

.field public static final KEY_TRIM_START:Ljava/lang/String; = "trim_start"

.field public static final KEY_VIDEO_POSITION:Ljava/lang/String; = "video_pos"

.field private static final TAG:Ljava/lang/String; = "Gallery2/TrimVideo"

.field private static final TIME_STAMP_NAME:Ljava/lang/String; = "\'TRIM\'_yyyyMMdd_HHmmss"

.field public static final TRIM_ACTION:Ljava/lang/String; = "com.android.camera.action.TRIM"

.field private static mDstFile:Ljava/io/File;

.field private static mHasPaused:Z

.field private static mIsSaving:Z

.field private static mPlayTrimVideo:Z

.field public static mProgress:Landroid/app/ProgressDialog;

.field private static saveFolderName:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mController:Lcom/android/gallery3d/app/TrimControllerOverlay;

.field private mDragging:Z

.field private final mHandler:Landroid/os/Handler;

.field private mIsInProgressCheck:Z

.field private final mProgressChecker:Ljava/lang/Runnable;

.field private mSaveDirectory:Ljava/io/File;

.field private mSaveFileName:Ljava/lang/String;

.field private mSaveVideoTextView:Landroid/widget/TextView;

.field private final mShowDialogRunnable:Ljava/lang/Runnable;

.field private final mShowToastRunnable:Ljava/lang/Runnable;

.field private mSrcFile:Ljava/io/File;

.field private mSrcVideoPath:Ljava/lang/String;

.field private final mStartVideoRunnable:Ljava/lang/Runnable;

.field private mTrimEndTime:I

.field private mTrimStartTime:I

.field private mUri:Landroid/net/Uri;

.field private mVideoPosition:I

.field private mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 125
    sput-boolean v0, Lcom/android/gallery3d/app/TrimVideo;->mPlayTrimVideo:Z

    .line 126
    sput-boolean v0, Lcom/android/gallery3d/app/TrimVideo;->mIsSaving:Z

    .line 128
    sput-object v1, Lcom/android/gallery3d/app/TrimVideo;->mDstFile:Ljava/io/File;

    .line 129
    sput-object v1, Lcom/android/gallery3d/app/TrimVideo;->saveFolderName:Ljava/lang/String;

    .line 130
    sput-boolean v0, Lcom/android/gallery3d/app/TrimVideo;->mHasPaused:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 64
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/TrimVideo;->mHandler:Landroid/os/Handler;

    .line 70
    iput v1, p0, Lcom/android/gallery3d/app/TrimVideo;->mTrimStartTime:I

    .line 71
    iput v1, p0, Lcom/android/gallery3d/app/TrimVideo;->mTrimEndTime:I

    .line 72
    iput v1, p0, Lcom/android/gallery3d/app/TrimVideo;->mVideoPosition:I

    .line 85
    iput-object v2, p0, Lcom/android/gallery3d/app/TrimVideo;->mSrcVideoPath:Ljava/lang/String;

    .line 86
    iput-object v2, p0, Lcom/android/gallery3d/app/TrimVideo;->mSaveFileName:Ljava/lang/String;

    .line 88
    iput-object v2, p0, Lcom/android/gallery3d/app/TrimVideo;->mSrcFile:Ljava/io/File;

    .line 91
    iput-object v2, p0, Lcom/android/gallery3d/app/TrimVideo;->mSaveDirectory:Ljava/io/File;

    .line 101
    new-instance v0, Lcom/android/gallery3d/app/TrimVideo$1;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/TrimVideo$1;-><init>(Lcom/android/gallery3d/app/TrimVideo;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/TrimVideo;->mShowDialogRunnable:Ljava/lang/Runnable;

    .line 109
    new-instance v0, Lcom/android/gallery3d/app/TrimVideo$2;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/TrimVideo$2;-><init>(Lcom/android/gallery3d/app/TrimVideo;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/TrimVideo;->mShowToastRunnable:Ljava/lang/Runnable;

    .line 132
    iput-boolean v1, p0, Lcom/android/gallery3d/app/TrimVideo;->mIsInProgressCheck:Z

    .line 134
    new-instance v0, Lcom/android/gallery3d/app/TrimVideo$3;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/TrimVideo$3;-><init>(Lcom/android/gallery3d/app/TrimVideo;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/TrimVideo;->mStartVideoRunnable:Ljava/lang/Runnable;

    .line 281
    new-instance v0, Lcom/android/gallery3d/app/TrimVideo$5;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/TrimVideo$5;-><init>(Lcom/android/gallery3d/app/TrimVideo;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/TrimVideo;->mProgressChecker:Ljava/lang/Runnable;

    .line 360
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/app/TrimVideo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/gallery3d/app/TrimVideo;->showProgressDialog()V

    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 53
    sget-boolean v0, Lcom/android/gallery3d/app/TrimVideo;->mHasPaused:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/gallery3d/app/TrimVideo;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/gallery3d/app/TrimVideo;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/gallery3d/app/TrimVideo;)Ljava/io/File;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/gallery3d/app/TrimVideo;->mSrcFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/gallery3d/app/TrimVideo;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Lcom/android/gallery3d/app/TrimVideo;->mTrimStartTime:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/gallery3d/app/TrimVideo;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Lcom/android/gallery3d/app/TrimVideo;->mTrimEndTime:I

    return v0
.end method

.method static synthetic access$1400(Lcom/android/gallery3d/app/TrimVideo;Ljava/io/File;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/TrimVideo;->insertContent(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/gallery3d/app/TrimVideo;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/gallery3d/app/TrimVideo;->mStartVideoRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/android/gallery3d/app/TrimVideo;->saveFolderName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    sput-object p0, Lcom/android/gallery3d/app/TrimVideo;->saveFolderName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300()Ljava/io/File;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/android/gallery3d/app/TrimVideo;->mDstFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$302(Ljava/io/File;)Ljava/io/File;
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    sput-object p0, Lcom/android/gallery3d/app/TrimVideo;->mDstFile:Ljava/io/File;

    return-object p0
.end method

.method static synthetic access$402(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    sput-boolean p0, Lcom/android/gallery3d/app/TrimVideo;->mPlayTrimVideo:Z

    return p0
.end method

.method static synthetic access$502(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    sput-boolean p0, Lcom/android/gallery3d/app/TrimVideo;->mIsSaving:Z

    return p0
.end method

.method static synthetic access$600(Lcom/android/gallery3d/app/TrimVideo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/gallery3d/app/TrimVideo;->trimVideo()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/gallery3d/app/TrimVideo;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/gallery3d/app/TrimVideo;->setProgress()I

    move-result v0

    return v0
.end method

.method static synthetic access$802(Lcom/android/gallery3d/app/TrimVideo;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/android/gallery3d/app/TrimVideo;->mIsInProgressCheck:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/gallery3d/app/TrimVideo;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/gallery3d/app/TrimVideo;->mProgressChecker:Ljava/lang/Runnable;

    return-object v0
.end method

.method private getDuration(Ljava/lang/String;)J
    .locals 4
    .parameter "fileName"

    .prologue
    .line 511
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 513
    .local v1, retriever:Landroid/media/MediaMetadataRetriever;
    :try_start_0
    invoke-virtual {v1, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 514
    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v2

    .line 520
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    :goto_0
    return-wide v2

    .line 515
    :catch_0
    move-exception v0

    .line 516
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-wide/16 v2, -0x1

    .line 520
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_0

    .line 517
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 518
    .local v0, e:Ljava/lang/RuntimeException;
    const-wide/16 v2, -0x2

    .line 520
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_0

    .end local v0           #e:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    throw v2
.end method

.method private getSaveDirectory()Ljava/io/File;
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 392
    new-array v0, v1, [Ljava/io/File;

    .line 393
    .local v0, dir:[Ljava/io/File;
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "_data"

    aput-object v2, v1, v3

    new-instance v2, Lcom/android/gallery3d/app/TrimVideo$6;

    invoke-direct {v2, p0, v0}, Lcom/android/gallery3d/app/TrimVideo$6;-><init>(Lcom/android/gallery3d/app/TrimVideo;[Ljava/io/File;)V

    invoke-direct {p0, v1, v2}, Lcom/android/gallery3d/app/TrimVideo;->querySource([Ljava/lang/String;Lcom/android/gallery3d/app/TrimVideo$ContentResolverQueryCallback;)V

    .line 401
    aget-object v1, v0, v3

    return-object v1
.end method

.method private insertContent(Ljava/io/File;)Landroid/net/Uri;
    .locals 9
    .parameter "file"

    .prologue
    .line 535
    const-string v6, "Gallery2/TrimVideo"

    const-string v7, "insertContent()"

    invoke-static {v6, v7}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 537
    .local v0, nowInMs:J
    const-wide/16 v6, 0x3e8

    div-long v2, v0, v6

    .line 538
    .local v2, nowInSec:J
    new-instance v5, Landroid/content/ContentValues;

    const/16 v6, 0xc

    invoke-direct {v5, v6}, Landroid/content/ContentValues;-><init>(I)V

    .line 539
    .local v5, values:Landroid/content/ContentValues;
    const-string v6, "title"

    iget-object v7, p0, Lcom/android/gallery3d/app/TrimVideo;->mSaveFileName:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    const-string v6, "_display_name"

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    const-string v6, "mime_type"

    const-string v7, "video/mp4"

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    const-string v6, "datetaken"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 543
    const-string v6, "date_modified"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 544
    const-string v6, "date_added"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 545
    const-string v6, "_data"

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    const-string v6, "_size"

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 548
    const-string v6, "duration"

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/gallery3d/app/TrimVideo;->getDuration(Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 550
    const/4 v6, 0x4

    new-array v4, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "datetaken"

    aput-object v7, v4, v6

    const/4 v6, 0x1

    const-string v7, "latitude"

    aput-object v7, v4, v6

    const/4 v6, 0x2

    const-string v7, "longitude"

    aput-object v7, v4, v6

    const/4 v6, 0x3

    const-string v7, "resolution"

    aput-object v7, v4, v6

    .line 558
    .local v4, projection:[Ljava/lang/String;
    new-instance v6, Lcom/android/gallery3d/app/TrimVideo$8;

    invoke-direct {v6, p0, v5}, Lcom/android/gallery3d/app/TrimVideo$8;-><init>(Lcom/android/gallery3d/app/TrimVideo;Landroid/content/ContentValues;)V

    invoke-direct {p0, v4, v6}, Lcom/android/gallery3d/app/TrimVideo;->querySource([Ljava/lang/String;Lcom/android/gallery3d/app/TrimVideo$ContentResolverQueryCallback;)V

    .line 578
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v7, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v6

    return-object v6
.end method

.method private pauseVideo()V
    .locals 2

    .prologue
    .line 353
    const-string v0, "Gallery2/TrimVideo"

    const-string v1, "pauseVideo()"

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    iget-object v0, p0, Lcom/android/gallery3d/app/TrimVideo;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    .line 355
    iget-object v0, p0, Lcom/android/gallery3d/app/TrimVideo;->mController:Lcom/android/gallery3d/app/TrimControllerOverlay;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/CommonControllerOverlay;->showPaused()V

    .line 356
    return-void
.end method

.method private playVideo()V
    .locals 2

    .prologue
    .line 346
    const-string v0, "Gallery2/TrimVideo"

    const-string v1, "playVideo()"

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    iget-object v0, p0, Lcom/android/gallery3d/app/TrimVideo;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 348
    iget-object v0, p0, Lcom/android/gallery3d/app/TrimVideo;->mController:Lcom/android/gallery3d/app/TrimControllerOverlay;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/TrimControllerOverlay;->showPlaying()V

    .line 349
    invoke-direct {p0}, Lcom/android/gallery3d/app/TrimVideo;->setProgress()I

    .line 350
    return-void
.end method

.method private querySource([Ljava/lang/String;Lcom/android/gallery3d/app/TrimVideo$ContentResolverQueryCallback;)V
    .locals 8
    .parameter "projection"
    .parameter "callback"

    .prologue
    .line 365
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 366
    .local v0, contentResolver:Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 369
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v1, p0, Lcom/android/gallery3d/app/TrimVideo;->mUri:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 371
    if-nez v6, :cond_0

    .line 372
    iget-object v1, p0, Lcom/android/gallery3d/app/TrimVideo;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 373
    .local v7, data:Ljava/lang/String;
    const-string v1, "\'"

    const-string v2, "\'\'"

    invoke-virtual {v7, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 374
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_data LIKE \'%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "file:///"

    const-string v4, ""

    invoke-virtual {v7, v2, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 375
    .local v3, where:Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 378
    .end local v3           #where:Ljava/lang/String;
    .end local v7           #data:Ljava/lang/String;
    :cond_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 379
    const-string v1, "Gallery2/TrimVideo"

    const-string v2, "querySource() (cursor != null) && cursor.moveToNext()"

    invoke-static {v1, v2}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    invoke-interface {p2, v6}, Lcom/android/gallery3d/app/TrimVideo$ContentResolverQueryCallback;->onCursorResult(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 385
    :cond_1
    if-eqz v6, :cond_2

    .line 386
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 389
    :cond_2
    :goto_0
    return-void

    .line 382
    :catch_0
    move-exception v1

    .line 385
    if-eqz v6, :cond_2

    .line 386
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 385
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_3

    .line 386
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1
.end method

.method private setProgress()I
    .locals 5

    .prologue
    .line 315
    const-string v1, "Gallery2/TrimVideo"

    const-string v2, "setProgress()"

    invoke-static {v1, v2}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    iget-object v1, p0, Lcom/android/gallery3d/app/TrimVideo;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    invoke-virtual {v1}, Lcom/mediatek/gallery3d/video/MTKVideoView;->getCurrentPosition()I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/app/TrimVideo;->mVideoPosition:I

    .line 321
    iget-boolean v1, p0, Lcom/android/gallery3d/app/TrimVideo;->mIsInProgressCheck:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/gallery3d/app/TrimVideo;->mVideoPosition:I

    iget v2, p0, Lcom/android/gallery3d/app/TrimVideo;->mTrimStartTime:I

    if-ge v1, v2, :cond_0

    .line 322
    const-string v1, "Gallery2/TrimVideo"

    const-string v2, "setProgress() mVideoPosition < mTrimStartTime"

    invoke-static {v1, v2}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iget-object v1, p0, Lcom/android/gallery3d/app/TrimVideo;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    iget v2, p0, Lcom/android/gallery3d/app/TrimVideo;->mTrimStartTime:I

    invoke-virtual {v1, v2}, Lcom/mediatek/gallery3d/video/MTKVideoView;->seekTo(I)V

    .line 324
    iget v1, p0, Lcom/android/gallery3d/app/TrimVideo;->mTrimStartTime:I

    iput v1, p0, Lcom/android/gallery3d/app/TrimVideo;->mVideoPosition:I

    .line 328
    :cond_0
    iget v1, p0, Lcom/android/gallery3d/app/TrimVideo;->mVideoPosition:I

    iget v2, p0, Lcom/android/gallery3d/app/TrimVideo;->mTrimEndTime:I

    if-lt v1, v2, :cond_2

    iget v1, p0, Lcom/android/gallery3d/app/TrimVideo;->mTrimEndTime:I

    if-lez v1, :cond_2

    .line 329
    iget v1, p0, Lcom/android/gallery3d/app/TrimVideo;->mVideoPosition:I

    iget v2, p0, Lcom/android/gallery3d/app/TrimVideo;->mTrimEndTime:I

    if-le v1, v2, :cond_1

    .line 330
    iget-object v1, p0, Lcom/android/gallery3d/app/TrimVideo;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    iget v2, p0, Lcom/android/gallery3d/app/TrimVideo;->mTrimEndTime:I

    invoke-virtual {v1, v2}, Lcom/mediatek/gallery3d/video/MTKVideoView;->seekTo(I)V

    .line 331
    iget v1, p0, Lcom/android/gallery3d/app/TrimVideo;->mTrimEndTime:I

    iput v1, p0, Lcom/android/gallery3d/app/TrimVideo;->mVideoPosition:I

    .line 333
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/app/TrimVideo;->mController:Lcom/android/gallery3d/app/TrimControllerOverlay;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/CommonControllerOverlay;->showEnded()V

    .line 334
    iget-object v1, p0, Lcom/android/gallery3d/app/TrimVideo;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->pause()V

    .line 337
    :cond_2
    iget-object v1, p0, Lcom/android/gallery3d/app/TrimVideo;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    invoke-virtual {v1}, Lcom/mediatek/gallery3d/video/MTKVideoView;->getDuration()I

    move-result v0

    .line 338
    .local v0, duration:I
    if-lez v0, :cond_3

    iget v1, p0, Lcom/android/gallery3d/app/TrimVideo;->mTrimEndTime:I

    if-nez v1, :cond_3

    .line 339
    iput v0, p0, Lcom/android/gallery3d/app/TrimVideo;->mTrimEndTime:I

    .line 341
    :cond_3
    iget-object v1, p0, Lcom/android/gallery3d/app/TrimVideo;->mController:Lcom/android/gallery3d/app/TrimControllerOverlay;

    iget v2, p0, Lcom/android/gallery3d/app/TrimVideo;->mVideoPosition:I

    iget v3, p0, Lcom/android/gallery3d/app/TrimVideo;->mTrimStartTime:I

    iget v4, p0, Lcom/android/gallery3d/app/TrimVideo;->mTrimEndTime:I

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/android/gallery3d/app/TrimControllerOverlay;->setTimes(IIII)V

    .line 342
    iget v1, p0, Lcom/android/gallery3d/app/TrimVideo;->mVideoPosition:I

    return v1
.end method

.method private showProgressDialog()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 487
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/gallery3d/app/TrimVideo;->mProgress:Landroid/app/ProgressDialog;

    .line 488
    sget-object v0, Lcom/android/gallery3d/app/TrimVideo;->mProgress:Landroid/app/ProgressDialog;

    const v1, 0x7f0c0333

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 489
    sget-object v0, Lcom/android/gallery3d/app/TrimVideo;->mProgress:Landroid/app/ProgressDialog;

    const v1, 0x7f0c0334

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 491
    sget-object v0, Lcom/android/gallery3d/app/TrimVideo;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 492
    sget-object v0, Lcom/android/gallery3d/app/TrimVideo;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 493
    sget-object v0, Lcom/android/gallery3d/app/TrimVideo;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 494
    return-void
.end method

.method private trimVideo()V
    .locals 7

    .prologue
    const/16 v6, 0x64

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 405
    const-string v1, "Gallery2/TrimVideo"

    const-string v2, "trimVideo() start"

    invoke-static {v1, v2}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    iget v1, p0, Lcom/android/gallery3d/app/TrimVideo;->mTrimEndTime:I

    iget v2, p0, Lcom/android/gallery3d/app/TrimVideo;->mTrimStartTime:I

    sub-int v0, v1, v2

    .line 407
    .local v0, delta:I
    const-string v1, "Gallery2/TrimVideo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delta is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    if-ge v0, v6, :cond_0

    .line 411
    const-string v1, "Gallery2/TrimVideo"

    const-string v2, "delta < 100"

    invoke-static {v1, v2}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c0336

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 416
    invoke-virtual {p0, v5}, Lcom/android/gallery3d/app/TrimVideo;->setSaveClickable(Z)V

    .line 417
    sput-boolean v4, Lcom/android/gallery3d/app/TrimVideo;->mIsSaving:Z

    .line 482
    :goto_0
    return-void

    .line 421
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/app/TrimVideo;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    invoke-virtual {v1}, Lcom/mediatek/gallery3d/video/MTKVideoView;->getDuration()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v1, v6, :cond_1

    .line 422
    const-string v1, "Gallery2/TrimVideo"

    const-string v2, "it will be onBackPressed"

    invoke-static {v1, v2}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    invoke-virtual {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 426
    invoke-virtual {p0, v5}, Lcom/android/gallery3d/app/TrimVideo;->setSaveClickable(Z)V

    .line 427
    sput-boolean v4, Lcom/android/gallery3d/app/TrimVideo;->mIsSaving:Z

    goto :goto_0

    .line 433
    :cond_1
    invoke-direct {p0}, Lcom/android/gallery3d/app/TrimVideo;->getSaveDirectory()Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/app/TrimVideo;->mSaveDirectory:Ljava/io/File;

    .line 434
    iget-object v1, p0, Lcom/android/gallery3d/app/TrimVideo;->mSaveDirectory:Ljava/io/File;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/gallery3d/app/TrimVideo;->mSaveDirectory:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-nez v1, :cond_5

    .line 435
    :cond_2
    const-string v1, "Gallery2/TrimVideo"

    const-string v2, "(mSaveDirectory == null) || !mSaveDirectory.canWrite()"

    invoke-static {v1, v2}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "download"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/TrimVideo;->mSaveDirectory:Ljava/io/File;

    .line 438
    const v1, 0x7f0c0329

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/gallery3d/app/TrimVideo;->saveFolderName:Ljava/lang/String;

    .line 442
    :goto_1
    const-string v1, "Gallery2/TrimVideo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveFolderName is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/gallery3d/app/TrimVideo;->saveFolderName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "\'TRIM\'_yyyyMMdd_HHmmss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/sql/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/sql/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/app/TrimVideo;->mSaveFileName:Ljava/lang/String;

    .line 445
    const-string v1, "Gallery2/TrimVideo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSaveFileName is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/app/TrimVideo;->mSaveFileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/gallery3d/app/TrimVideo;->mSaveDirectory:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/gallery3d/app/TrimVideo;->mSaveFileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".mp4"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v1, Lcom/android/gallery3d/app/TrimVideo;->mDstFile:Ljava/io/File;

    .line 448
    sget-object v1, Lcom/android/gallery3d/app/TrimVideo;->mDstFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 449
    const-string v1, "Gallery2/TrimVideo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mDstFile name is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/gallery3d/app/TrimVideo;->mDstFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    :cond_3
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/gallery3d/app/TrimVideo;->mSrcVideoPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/TrimVideo;->mSrcFile:Ljava/io/File;

    .line 453
    iget-object v1, p0, Lcom/android/gallery3d/app/TrimVideo;->mSrcFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 454
    const-string v1, "Gallery2/TrimVideo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSrcFile name is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/app/TrimVideo;->mSrcFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    :cond_4
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/gallery3d/app/TrimVideo$7;

    invoke-direct {v2, p0}, Lcom/android/gallery3d/app/TrimVideo$7;-><init>(Lcom/android/gallery3d/app/TrimVideo;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 440
    :cond_5
    iget-object v1, p0, Lcom/android/gallery3d/app/TrimVideo;->mSaveDirectory:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/gallery3d/app/TrimVideo;->saveFolderName:Ljava/lang/String;

    goto/16 :goto_1
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter "mp"

    .prologue
    .line 642
    const-string v0, "Gallery2/TrimVideo"

    const-string v1, "onCompletion()"

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    iget-object v0, p0, Lcom/android/gallery3d/app/TrimVideo;->mController:Lcom/android/gallery3d/app/TrimControllerOverlay;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/CommonControllerOverlay;->showEnded()V

    .line 644
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x1

    .line 167
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iput-object v4, p0, Lcom/android/gallery3d/app/TrimVideo;->mContext:Landroid/content/Context;

    .line 168
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 169
    const-string v4, "Gallery2/TrimVideo"

    const-string v5, "onCreate()"

    invoke-static {v4, v5}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const/16 v4, 0x8

    invoke-virtual {p0, v4}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 171
    const/16 v4, 0x9

    invoke-virtual {p0, v4}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 173
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 174
    .local v0, actionBar:Landroid/app/ActionBar;
    const/4 v1, 0x2

    .line 175
    .local v1, displayOptions:I
    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 176
    const/16 v1, 0x10

    .line 177
    invoke-virtual {v0, v1, v1}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 178
    const v4, 0x7f040068

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setCustomView(I)V

    .line 181
    const v4, 0x7f0b0155

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/gallery3d/app/TrimVideo;->mSaveVideoTextView:Landroid/widget/TextView;

    .line 182
    iget-object v4, p0, Lcom/android/gallery3d/app/TrimVideo;->mSaveVideoTextView:Landroid/widget/TextView;

    new-instance v5, Lcom/android/gallery3d/app/TrimVideo$4;

    invoke-direct {v5, p0}, Lcom/android/gallery3d/app/TrimVideo$4;-><init>(Lcom/android/gallery3d/app/TrimVideo;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 195
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Lcom/android/gallery3d/app/TrimVideo;->mUri:Landroid/net/Uri;

    .line 197
    const-string v4, "media-item-path"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/gallery3d/app/TrimVideo;->mSrcVideoPath:Ljava/lang/String;

    .line 199
    const v4, 0x7f040069

    invoke-virtual {p0, v4}, Landroid/app/Activity;->setContentView(I)V

    .line 200
    const v4, 0x7f0b0156

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 202
    .local v3, rootView:Landroid/view/View;
    const v4, 0x7f0b0098

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/mediatek/gallery3d/video/MTKVideoView;

    iput-object v4, p0, Lcom/android/gallery3d/app/TrimVideo;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    .line 204
    new-instance v4, Lcom/android/gallery3d/app/TrimControllerOverlay;

    iget-object v5, p0, Lcom/android/gallery3d/app/TrimVideo;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/gallery3d/app/TrimControllerOverlay;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/gallery3d/app/TrimVideo;->mController:Lcom/android/gallery3d/app/TrimControllerOverlay;

    .line 205
    check-cast v3, Landroid/view/ViewGroup;

    .end local v3           #rootView:Landroid/view/View;
    iget-object v4, p0, Lcom/android/gallery3d/app/TrimVideo;->mController:Lcom/android/gallery3d/app/TrimControllerOverlay;

    invoke-virtual {v4}, Lcom/android/gallery3d/app/CommonControllerOverlay;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 206
    iget-object v4, p0, Lcom/android/gallery3d/app/TrimVideo;->mController:Lcom/android/gallery3d/app/TrimControllerOverlay;

    invoke-virtual {v4, p0}, Lcom/android/gallery3d/app/CommonControllerOverlay;->setListener(Lcom/android/gallery3d/app/ControllerOverlay$Listener;)V

    .line 207
    iget-object v4, p0, Lcom/android/gallery3d/app/TrimVideo;->mController:Lcom/android/gallery3d/app/TrimControllerOverlay;

    invoke-virtual {v4, v7}, Lcom/android/gallery3d/app/CommonControllerOverlay;->setCanReplay(Z)V

    .line 209
    iget-object v4, p0, Lcom/android/gallery3d/app/TrimVideo;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    invoke-virtual {v4, p0}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 210
    iget-object v4, p0, Lcom/android/gallery3d/app/TrimVideo;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    invoke-virtual {v4, p0}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 211
    iget-object v4, p0, Lcom/android/gallery3d/app/TrimVideo;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    iget-object v5, p0, Lcom/android/gallery3d/app/TrimVideo;->mUri:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lcom/mediatek/gallery3d/video/MTKVideoView;->setVideoURI(Landroid/net/Uri;Ljava/util/Map;Z)V

    .line 213
    invoke-direct {p0}, Lcom/android/gallery3d/app/TrimVideo;->playVideo()V

    .line 214
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 276
    const-string v0, "Gallery2/TrimVideo"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iget-object v0, p0, Lcom/android/gallery3d/app/TrimVideo;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 278
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 279
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 648
    const/4 v0, 0x0

    return v0
.end method

.method public onHidden()V
    .locals 0

    .prologue
    .line 626
    return-void
.end method

.method public onIsRTSP()Z
    .locals 1

    .prologue
    .line 630
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 249
    const-string v0, "Gallery2/TrimVideo"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/gallery3d/app/TrimVideo;->mHasPaused:Z

    .line 251
    iget-object v0, p0, Lcom/android/gallery3d/app/TrimVideo;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 252
    iget-object v0, p0, Lcom/android/gallery3d/app/TrimVideo;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    invoke-virtual {v0}, Lcom/mediatek/gallery3d/video/MTKVideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/app/TrimVideo;->mVideoPosition:I

    .line 253
    iget-object v0, p0, Lcom/android/gallery3d/app/TrimVideo;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    invoke-virtual {v0}, Lcom/mediatek/gallery3d/video/MTKVideoView;->suspend()V

    .line 257
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/android/gallery3d/app/TrimVideo;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 261
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 262
    return-void
.end method

.method public onPlayPause()V
    .locals 1

    .prologue
    .line 583
    iget-object v0, p0, Lcom/android/gallery3d/app/TrimVideo;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 584
    invoke-direct {p0}, Lcom/android/gallery3d/app/TrimVideo;->pauseVideo()V

    .line 588
    :goto_0
    return-void

    .line 586
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/app/TrimVideo;->playVideo()V

    goto :goto_0
.end method

.method public onReplay()V
    .locals 2

    .prologue
    .line 635
    const-string v0, "Gallery2/TrimVideo"

    const-string v1, "onReplay()"

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    iget-object v0, p0, Lcom/android/gallery3d/app/TrimVideo;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    iget v1, p0, Lcom/android/gallery3d/app/TrimVideo;->mTrimStartTime:I

    invoke-virtual {v0, v1}, Lcom/mediatek/gallery3d/video/MTKVideoView;->seekTo(I)V

    .line 637
    invoke-direct {p0}, Lcom/android/gallery3d/app/TrimVideo;->playVideo()V

    .line 638
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 301
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 302
    const-string v0, "Gallery2/TrimVideo"

    const-string v1, "onRestoreInstanceState()"

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    const-string v0, "trim_start"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/app/TrimVideo;->mTrimStartTime:I

    .line 304
    const-string v0, "trim_end"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/app/TrimVideo;->mTrimEndTime:I

    .line 305
    const-string v0, "video_pos"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/app/TrimVideo;->mVideoPosition:I

    .line 306
    const-string v0, "Gallery2/TrimVideo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTrimStartTime is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/gallery3d/app/TrimVideo;->mTrimStartTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mTrimEndTime is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/gallery3d/app/TrimVideo;->mTrimEndTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mVideoPosition is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/gallery3d/app/TrimVideo;->mVideoPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 218
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 219
    const-string v0, "Gallery2/TrimVideo"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iput-boolean v2, p0, Lcom/android/gallery3d/app/TrimVideo;->mDragging:Z

    .line 221
    sget-boolean v0, Lcom/android/gallery3d/app/TrimVideo;->mHasPaused:Z

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/android/gallery3d/app/TrimVideo;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 227
    iget-object v0, p0, Lcom/android/gallery3d/app/TrimVideo;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    iget v1, p0, Lcom/android/gallery3d/app/TrimVideo;->mVideoPosition:I

    invoke-virtual {v0, v1}, Lcom/mediatek/gallery3d/video/MTKVideoView;->seekTo(I)V

    .line 228
    iget-object v0, p0, Lcom/android/gallery3d/app/TrimVideo;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    invoke-virtual {v0}, Lcom/mediatek/gallery3d/video/MTKVideoView;->resume()V

    .line 229
    sput-boolean v2, Lcom/android/gallery3d/app/TrimVideo;->mHasPaused:Z

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/TrimVideo;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/gallery3d/app/TrimVideo;->mProgressChecker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 235
    sget-boolean v0, Lcom/android/gallery3d/app/TrimVideo;->mIsSaving:Z

    if-eqz v0, :cond_2

    .line 236
    sget-object v0, Lcom/android/gallery3d/app/TrimVideo;->mProgress:Landroid/app/ProgressDialog;

    if-nez v0, :cond_1

    .line 237
    invoke-direct {p0}, Lcom/android/gallery3d/app/TrimVideo;->showProgressDialog()V

    .line 239
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/gallery3d/app/TrimVideo;->setSaveClickable(Z)V

    .line 240
    sget-boolean v0, Lcom/android/gallery3d/app/TrimVideo;->mPlayTrimVideo:Z

    if-eqz v0, :cond_2

    .line 241
    iget-object v0, p0, Lcom/android/gallery3d/app/TrimVideo;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/gallery3d/app/TrimVideo;->mStartVideoRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 245
    :cond_2
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 292
    const-string v0, "Gallery2/TrimVideo"

    const-string v1, "onSaveInstanceState()"

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    const-string v0, "trim_start"

    iget v1, p0, Lcom/android/gallery3d/app/TrimVideo;->mTrimStartTime:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 294
    const-string v0, "trim_end"

    iget v1, p0, Lcom/android/gallery3d/app/TrimVideo;->mTrimEndTime:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 295
    const-string v0, "video_pos"

    iget v1, p0, Lcom/android/gallery3d/app/TrimVideo;->mVideoPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 296
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 297
    return-void
.end method

.method public onSeekEnd(III)V
    .locals 4
    .parameter "time"
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v3, 0x0

    .line 607
    const-string v0, "Gallery2/TrimVideo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSeekEnd() seekto time is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", start is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", end is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mDragging is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/gallery3d/app/TrimVideo;->mDragging:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    iput-boolean v3, p0, Lcom/android/gallery3d/app/TrimVideo;->mDragging:Z

    .line 610
    iget-object v0, p0, Lcom/android/gallery3d/app/TrimVideo;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    invoke-virtual {v0, p1}, Lcom/mediatek/gallery3d/video/MTKVideoView;->seekTo(I)V

    .line 611
    iput p2, p0, Lcom/android/gallery3d/app/TrimVideo;->mTrimStartTime:I

    .line 612
    iput p3, p0, Lcom/android/gallery3d/app/TrimVideo;->mTrimEndTime:I

    .line 613
    iput-boolean v3, p0, Lcom/android/gallery3d/app/TrimVideo;->mIsInProgressCheck:Z

    .line 614
    invoke-direct {p0}, Lcom/android/gallery3d/app/TrimVideo;->setProgress()I

    .line 615
    iget v0, p0, Lcom/android/gallery3d/app/TrimVideo;->mVideoPosition:I

    iget v1, p0, Lcom/android/gallery3d/app/TrimVideo;->mTrimStartTime:I

    if-ne v0, v1, :cond_0

    .line 616
    iget-object v0, p0, Lcom/android/gallery3d/app/TrimVideo;->mController:Lcom/android/gallery3d/app/TrimControllerOverlay;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/CommonControllerOverlay;->showPaused()V

    .line 618
    :cond_0
    return-void
.end method

.method public onSeekMove(I)V
    .locals 3
    .parameter "time"

    .prologue
    .line 599
    const-string v0, "Gallery2/TrimVideo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSeekMove() seekto time is ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") mDragging is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/gallery3d/app/TrimVideo;->mDragging:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    iget-boolean v0, p0, Lcom/android/gallery3d/app/TrimVideo;->mDragging:Z

    if-nez v0, :cond_0

    .line 601
    iget-object v0, p0, Lcom/android/gallery3d/app/TrimVideo;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    invoke-virtual {v0, p1}, Lcom/mediatek/gallery3d/video/MTKVideoView;->seekTo(I)V

    .line 603
    :cond_0
    return-void
.end method

.method public onSeekStart()V
    .locals 3

    .prologue
    .line 592
    const-string v0, "Gallery2/TrimVideo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSeekStart() mDragging is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/gallery3d/app/TrimVideo;->mDragging:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/TrimVideo;->mDragging:Z

    .line 594
    invoke-direct {p0}, Lcom/android/gallery3d/app/TrimVideo;->pauseVideo()V

    .line 595
    return-void
.end method

.method public onShown()V
    .locals 0

    .prologue
    .line 622
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 266
    const-string v0, "Gallery2/TrimVideo"

    const-string v1, "onStop()"

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    sget-object v0, Lcom/android/gallery3d/app/TrimVideo;->mProgress:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 268
    sget-object v0, Lcom/android/gallery3d/app/TrimVideo;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 269
    const/4 v0, 0x0

    sput-object v0, Lcom/android/gallery3d/app/TrimVideo;->mProgress:Landroid/app/ProgressDialog;

    .line 271
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 272
    return-void
.end method

.method public setSaveClickable(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 527
    iget-object v0, p0, Lcom/android/gallery3d/app/TrimVideo;->mSaveVideoTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 528
    iget-object v0, p0, Lcom/android/gallery3d/app/TrimVideo;->mSaveVideoTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 529
    return-void
.end method

.method public showDialogCommand()V
    .locals 2

    .prologue
    .line 497
    iget-object v0, p0, Lcom/android/gallery3d/app/TrimVideo;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/gallery3d/app/TrimVideo;->mShowDialogRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 498
    iget-object v0, p0, Lcom/android/gallery3d/app/TrimVideo;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/gallery3d/app/TrimVideo;->mShowDialogRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 499
    return-void
.end method

.method public showToast()V
    .locals 2

    .prologue
    .line 505
    iget-object v0, p0, Lcom/android/gallery3d/app/TrimVideo;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/gallery3d/app/TrimVideo;->mShowToastRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 506
    iget-object v0, p0, Lcom/android/gallery3d/app/TrimVideo;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/gallery3d/app/TrimVideo;->mShowToastRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 507
    return-void
.end method
