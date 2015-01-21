.class public Lcom/android/camera/actor/VideoLivePhotoActor;
.super Lcom/android/camera/actor/VideoActor;
.source "VideoLivePhotoActor.java"


# static fields
.field private static final BitmapFactory:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "VideoLivePhotoActor"

.field private static final TEMP:Ljava/lang/String; = ".tmp"


# instance fields
.field private mCameraSound:Landroid/media/MediaActionSound;

.field private mCanStartPreviewNow:Z

.field private mDuration:J

.field private mFullScreen:Z

.field private mFullScreenChangedListener:Lcom/android/camera/Camera$OnFullScreenChangedListener;

.field private mIsReleased:Z

.field private mNeedBackGroundRecording:Z

.field private mPhotoShutterListener:Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    sput-object v0, Lcom/android/camera/actor/VideoLivePhotoActor;->BitmapFactory:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/Camera;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 41
    invoke-direct {p0, p1}, Lcom/android/camera/actor/VideoActor;-><init>(Lcom/android/camera/Camera;)V

    .line 32
    iput-boolean v2, p0, Lcom/android/camera/actor/VideoLivePhotoActor;->mNeedBackGroundRecording:Z

    .line 33
    iput-boolean v2, p0, Lcom/android/camera/actor/VideoLivePhotoActor;->mFullScreen:Z

    .line 36
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/camera/actor/VideoLivePhotoActor;->mDuration:J

    .line 37
    iput-boolean v2, p0, Lcom/android/camera/actor/VideoLivePhotoActor;->mCanStartPreviewNow:Z

    .line 38
    iput-boolean v3, p0, Lcom/android/camera/actor/VideoLivePhotoActor;->mIsReleased:Z

    .line 67
    new-instance v0, Lcom/android/camera/actor/VideoLivePhotoActor$1;

    invoke-direct {v0, p0}, Lcom/android/camera/actor/VideoLivePhotoActor$1;-><init>(Lcom/android/camera/actor/VideoLivePhotoActor;)V

    iput-object v0, p0, Lcom/android/camera/actor/VideoLivePhotoActor;->mPhotoShutterListener:Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;

    .line 227
    new-instance v0, Lcom/android/camera/actor/VideoLivePhotoActor$4;

    invoke-direct {v0, p0}, Lcom/android/camera/actor/VideoLivePhotoActor$4;-><init>(Lcom/android/camera/actor/VideoLivePhotoActor;)V

    iput-object v0, p0, Lcom/android/camera/actor/VideoLivePhotoActor;->mFullScreenChangedListener:Lcom/android/camera/Camera$OnFullScreenChangedListener;

    .line 42
    const-string v0, "VideoLivePhotoActor"

    const-string v1, "VideoLivePhotoActor"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    iput-boolean v2, p0, Lcom/android/camera/actor/VideoLivePhotoActor;->mNeedBackGroundRecording:Z

    .line 44
    iput-boolean v3, p0, Lcom/android/camera/actor/VideoLivePhotoActor;->mIsReleased:Z

    .line 45
    new-instance v0, Landroid/media/MediaActionSound;

    invoke-direct {v0}, Landroid/media/MediaActionSound;-><init>()V

    iput-object v0, p0, Lcom/android/camera/actor/VideoLivePhotoActor;->mCameraSound:Landroid/media/MediaActionSound;

    .line 47
    iget-object v0, p0, Lcom/android/camera/actor/VideoLivePhotoActor;->mCameraSound:Landroid/media/MediaActionSound;

    invoke-virtual {v0, v3}, Landroid/media/MediaActionSound;->load(I)V

    .line 49
    iget-object v0, p0, Lcom/android/camera/actor/VideoLivePhotoActor;->mVideoContext:Lcom/android/camera/Camera;

    iget-object v1, p0, Lcom/android/camera/actor/VideoLivePhotoActor;->mVideoContext:Lcom/android/camera/Camera;

    const v2, 0x7f0c00e7

    invoke-virtual {v1, v2}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1388

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/Camera;->showInfo(Ljava/lang/String;I)V

    .line 50
    return-void
.end method

.method static synthetic access$002(Lcom/android/camera/actor/VideoLivePhotoActor;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/android/camera/actor/VideoLivePhotoActor;->mFullScreen:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/camera/actor/VideoLivePhotoActor;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/android/camera/actor/VideoLivePhotoActor;->mNeedBackGroundRecording:Z

    return p1
.end method

.method private createVideoLastFramePicture()Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    .line 295
    const-string v3, "VideoLivePhotoActor"

    const-string v4, "createVideoLastFramePicture begin"

    invoke-static {v3, v4}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    const/4 v0, 0x0

    .line 297
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v2}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 299
    .local v2, retriever:Landroid/media/MediaMetadataRetriever;
    :try_start_0
    iget-object v3, p0, Lcom/android/camera/actor/VideoLivePhotoActor;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 300
    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/camera/actor/VideoLivePhotoActor;->mDuration:J

    .line 301
    iget-wide v3, p0, Lcom/android/camera/actor/VideoLivePhotoActor;->mDuration:J

    const-wide/16 v5, 0xc8

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(JI)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 302
    const-string v3, "VideoLivePhotoActor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createVideoLastFramePicture bitmap = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " duration = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/android/camera/actor/VideoLivePhotoActor;->mDuration:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3

    .line 309
    :try_start_1
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 315
    :goto_0
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 319
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :goto_1
    return-object v0

    .line 310
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 312
    .local v1, ex:Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0

    .line 303
    .end local v1           #ex:Ljava/lang/RuntimeException;
    :catch_1
    move-exception v1

    .line 304
    .local v1, ex:Ljava/lang/IllegalArgumentException;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 309
    :try_start_3
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 310
    :catch_2
    move-exception v1

    .line 312
    .local v1, ex:Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0

    .line 305
    .end local v1           #ex:Ljava/lang/RuntimeException;
    :catch_3
    move-exception v1

    .line 306
    .restart local v1       #ex:Ljava/lang/RuntimeException;
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 309
    :try_start_5
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_0

    .line 310
    :catch_4
    move-exception v1

    .line 312
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0

    .line 308
    .end local v1           #ex:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v3

    .line 309
    :try_start_6
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_5

    .line 313
    :goto_2
    throw v3

    .line 310
    :catch_5
    move-exception v1

    .line 312
    .restart local v1       #ex:Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_2

    .line 317
    .end local v1           #ex:Ljava/lang/RuntimeException;
    :cond_0
    const-string v3, "VideoLivePhotoActor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bitmap = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    const-string v3, "VideoLivePhotoActor"

    const-string v4, "createVideoLastFramePicture end"

    invoke-static {v3, v4}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private getScenario(IIIJLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "orientation"
    .parameter "width"
    .parameter "height"
    .parameter "duration"
    .parameter "inputPath"
    .parameter "outputPath"

    .prologue
    .line 480
    const-string v2, "VideoLivePhotoActor"

    const-string v3, "getScenario begin"

    invoke-static {v2, v3}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    const-string v0, "object1"

    .line 482
    .local v0, fixBitmap:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<?xml version=\"1.0\"?><scenario>   <size orientation= \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" owidth=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" oheight=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\"></size>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   <video>/system/media/video/gen30.mp4</video>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   <video>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</video>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   <edge>/system/media/video/edge720p.png</edge>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   <outputvideo livephoto=\"1\">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</outputvideo>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   <videoevent name=\"ve\" type=\"still\" start=\"0\" end=\"1500\">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   <background>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</background>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   </videoevent>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   <videoevent name=\"ve\" type=\"overlay\" start=\"1500\" end=\"2000\">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   <showtime related_start=\"0\" length=\"500\"></showtime>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   <thumbnail move=\"1\">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</thumbnail>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   <background still=\"1\" fade_in=\"1\">video2</background>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   </videoevent>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   <videoevent name=\"ve\" type=\"overlay\" start=\"1900\" end=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-wide/16 v3, 0x7d0

    add-long/2addr v3, p4

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   <showtime related_start=\"100\" length=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\"></showtime>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   <thumbnail>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</thumbnail>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   <background>video2</background>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   </videoevent>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   <videoevent name=\"ve\" type=\"overlay\" start=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-wide/16 v3, 0x7d0

    add-long/2addr v3, p4

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" end=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-wide/16 v3, 0x8fc

    add-long/2addr v3, p4

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   <showtime related_start=\"0\" length=\"300\"></showtime>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   <thumbnail fade_out=\"1\">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</thumbnail>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   <background still=\"1\">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</background>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   </videoevent>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   <videoevent name=\"ve\" type=\"still\" start=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-wide/16 v3, 0x8fc

    add-long/2addr v3, p4

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" end=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-wide/16 v3, 0x8fd

    add-long/2addr v3, p4

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   <background>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</background>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   </videoevent>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</scenario>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 517
    .local v1, scenario:Ljava/lang/String;
    const-string v2, "VideoLivePhotoActor"

    const-string v3, "getScenario end"

    invoke-static {v2, v3}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    return-object v1
.end method

.method private lockOrientation()V
    .locals 2

    .prologue
    .line 460
    iget-object v0, p0, Lcom/android/camera/actor/VideoLivePhotoActor;->mVideoContext:Lcom/android/camera/Camera;

    new-instance v1, Lcom/android/camera/actor/VideoLivePhotoActor$6;

    invoke-direct {v1, p0}, Lcom/android/camera/actor/VideoLivePhotoActor$6;-><init>(Lcom/android/camera/actor/VideoLivePhotoActor;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 467
    return-void
.end method

.method private unlockOrientation()V
    .locals 2

    .prologue
    .line 470
    iget-object v0, p0, Lcom/android/camera/actor/VideoLivePhotoActor;->mVideoContext:Lcom/android/camera/Camera;

    new-instance v1, Lcom/android/camera/actor/VideoLivePhotoActor$7;

    invoke-direct {v1, p0}, Lcom/android/camera/actor/VideoLivePhotoActor$7;-><init>(Lcom/android/camera/actor/VideoLivePhotoActor;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 477
    return-void
.end method


# virtual methods
.method public addVideoToMediaStore(Z)V
    .locals 13
    .parameter "islivephoto"

    .prologue
    .line 254
    const-string v0, "VideoLivePhotoActor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addVideoToMediaStore mCurrentVideoFilename = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/actor/VideoLivePhotoActor;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-boolean v0, p0, Lcom/android/camera/actor/VideoLivePhotoActor;->mNeedBackGroundRecording:Z

    if-nez v0, :cond_0

    .line 257
    invoke-virtual {p0}, Lcom/android/camera/actor/VideoLivePhotoActor;->releaseMediaRecorder()V

    .line 258
    invoke-virtual {p0}, Lcom/android/camera/actor/VideoLivePhotoActor;->deleteCurrentVideo()V

    .line 259
    const-string v0, "VideoLivePhotoActor"

    const-string v2, "addVideoToMediaStore deleteCurrentVideo !!!!!!!!!"

    invoke-static {v0, v2}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :goto_0
    return-void

    .line 262
    :cond_0
    const-string v0, "VideoLivePhotoActor"

    const-string v2, "new VideoScenarioEffect begin"

    invoke-static {v0, v2}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    new-instance v11, Lcom/mediatek/effect/effects/VideoScenarioEffect;

    invoke-direct {v11}, Lcom/mediatek/effect/effects/VideoScenarioEffect;-><init>()V

    .line 264
    .local v11, vv:Lcom/mediatek/effect/effects/VideoScenarioEffect;
    const-string v0, "VideoLivePhotoActor"

    const-string v2, "new VideoScenarioEffect end"

    invoke-static {v0, v2}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    invoke-direct {p0}, Lcom/android/camera/actor/VideoLivePhotoActor;->createVideoLastFramePicture()Landroid/graphics/Bitmap;

    move-result-object v9

    .line 267
    .local v9, lastFrame:Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 268
    .local v1, rotation:I
    const/4 v10, 0x0

    .line 270
    .local v10, result:Z
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/actor/VideoLivePhotoActor;->mProfile:Landroid/media/CamcorderProfile;

    if-eqz v0, :cond_1

    if-eqz v9, :cond_1

    .line 271
    iget-object v0, p0, Lcom/android/camera/actor/VideoLivePhotoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getOrietation()I

    move-result v0

    iput v0, p0, Lcom/android/camera/actor/VideoLivePhotoActor;->mOrientation:I

    .line 272
    iget v0, p0, Lcom/android/camera/actor/VideoLivePhotoActor;->mOrientation:I

    invoke-virtual {p0, v0}, Lcom/android/camera/actor/VideoLivePhotoActor;->getRecordingRotation(I)I

    move-result v1

    .line 273
    const-string v0, "VideoLivePhotoActor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MFF setScenario begin mRotation = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget-object v12, p0, Lcom/android/camera/actor/VideoLivePhotoActor;->mVideoContext:Lcom/android/camera/Camera;

    iget-object v0, p0, Lcom/android/camera/actor/VideoLivePhotoActor;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget-object v0, p0, Lcom/android/camera/actor/VideoLivePhotoActor;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iget-wide v4, p0, Lcom/android/camera/actor/VideoLivePhotoActor;->mDuration:J

    iget-object v6, p0, Lcom/android/camera/actor/VideoLivePhotoActor;->mCurrentVideoFilename:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/camera/actor/VideoLivePhotoActor;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->fileFormat:I

    const-string v7, "livephoto"

    invoke-virtual {p0, v0, v7}, Lcom/android/camera/actor/VideoLivePhotoActor;->generateVideoFilename(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/actor/VideoLivePhotoActor;->getScenario(IIIJLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/actor/VideoLivePhotoActor;->mProfile:Landroid/media/CamcorderProfile;

    move-object v2, v11

    move-object v3, v12

    move-object v6, v9

    move-object v7, v9

    invoke-virtual/range {v2 .. v7}, Lcom/mediatek/effect/effects/VideoScenarioEffect;->setScenario(Landroid/content/Context;Ljava/lang/String;Landroid/media/CamcorderProfile;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 278
    const-string v0, "VideoLivePhotoActor"

    const-string v2, "MFF setScenario end"

    invoke-static {v0, v2}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    const-string v0, "VideoLivePhotoActor"

    const-string v2, "MFF Process begin"

    invoke-static {v0, v2}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    invoke-virtual {v11}, Lcom/mediatek/effect/effects/VideoScenarioEffect;->process()Z

    move-result v10

    .line 281
    const-string v0, "VideoLivePhotoActor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MFF Process end result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/actor/VideoLivePhotoActor;->deleteCurrentVideo()V

    .line 290
    iget-object v0, p0, Lcom/android/camera/actor/VideoLivePhotoActor;->mVideoFilename:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/camera/actor/VideoLivePhotoActor;->mCurrentVideoFilename:Ljava/lang/String;

    .line 291
    const/4 v0, 0x1

    invoke-super {p0, v0}, Lcom/android/camera/actor/VideoActor;->addVideoToMediaStore(Z)V

    goto/16 :goto_0

    .line 284
    :catch_0
    move-exception v8

    .line 285
    .local v8, e:Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method protected backToLastModeIfNeed()Z
    .locals 3

    .prologue
    .line 324
    const-string v0, "VideoLivePhotoActor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "backToLastModeIfNeed mNeedBackGroundRecording = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/actor/VideoLivePhotoActor;->mNeedBackGroundRecording:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mVideoCameraClosed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/actor/VideoLivePhotoActor;->mVideoCameraClosed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    iget-boolean v0, p0, Lcom/android/camera/actor/VideoLivePhotoActor;->mNeedBackGroundRecording:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/actor/VideoLivePhotoActor;->mVideoCameraClosed:Z

    if-nez v0, :cond_0

    .line 327
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/actor/VideoLivePhotoActor;->onCameraParameterReady(Z)V

    .line 329
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public doAfterStopRecording(Z)V
    .locals 3
    .parameter "fail"

    .prologue
    .line 429
    const-string v0, "VideoLivePhotoActor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doAfterStopRecording fail = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mNeedBackGroundRecording = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/actor/VideoLivePhotoActor;->mNeedBackGroundRecording:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    iget-boolean v0, p0, Lcom/android/camera/actor/VideoLivePhotoActor;->mNeedBackGroundRecording:Z

    if-eqz v0, :cond_0

    .line 431
    invoke-super {p0, p1}, Lcom/android/camera/actor/VideoActor;->doAfterStopRecording(Z)V

    .line 450
    :goto_0
    return-void

    .line 433
    :cond_0
    const-string v0, "VideoLivePhotoActor"

    const-string v1, "doAfterStopRecording deleteCurrentVideo !!!!!!!!!"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    iget-object v0, p0, Lcom/android/camera/actor/VideoLivePhotoActor;->mVideoFilename:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/camera/actor/VideoLivePhotoActor;->mCurrentVideoFilename:Ljava/lang/String;

    .line 435
    invoke-virtual {p0}, Lcom/android/camera/actor/VideoLivePhotoActor;->deleteCurrentVideo()V

    .line 436
    invoke-virtual {p0}, Lcom/android/camera/actor/VideoLivePhotoActor;->releaseMediaRecorder()V

    .line 437
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/actor/VideoLivePhotoActor;->mRecorderBusy:Z

    .line 439
    iget-object v1, p0, Lcom/android/camera/actor/VideoLivePhotoActor;->mVideoSavingTask:Ljava/lang/Thread;

    monitor-enter v1

    .line 440
    :try_start_0
    const-string v0, "VideoLivePhotoActor"

    const-string v2, "Wait for releasing camera notifyAll"

    invoke-static {v0, v2}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    iget-object v0, p0, Lcom/android/camera/actor/VideoLivePhotoActor;->mVideoSavingTask:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 442
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 443
    iget-object v0, p0, Lcom/android/camera/actor/VideoLivePhotoActor;->mVideoContext:Lcom/android/camera/Camera;

    new-instance v1, Lcom/android/camera/actor/VideoLivePhotoActor$5;

    invoke-direct {v1, p0}, Lcom/android/camera/actor/VideoLivePhotoActor$5;-><init>(Lcom/android/camera/actor/VideoLivePhotoActor;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 442
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public doStartPreview()V
    .locals 4

    .prologue
    .line 149
    const-string v0, "VideoLivePhotoActor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doStartPreview  mVideoCameraClosed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/actor/VideoLivePhotoActor;->mVideoCameraClosed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mFullScreen = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/actor/VideoLivePhotoActor;->mFullScreen:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isVideoProcessing = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/actor/VideoLivePhotoActor;->isVideoProcessing()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mIsReleased = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/actor/VideoLivePhotoActor;->mIsReleased:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-super {p0}, Lcom/android/camera/actor/VideoActor;->doStartPreview()V

    .line 152
    iget-object v0, p0, Lcom/android/camera/actor/VideoLivePhotoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getRemainingManager()Lcom/android/camera/manager/RemainingManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/android/camera/actor/VideoLivePhotoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getRemainingManager()Lcom/android/camera/manager/RemainingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/manager/RemainingManager;->updateStorage()V

    .line 156
    :cond_0
    invoke-static {}, Lcom/android/camera/Storage;->getLeftSpace()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/actor/VideoLivePhotoActor;->mVideoCameraClosed:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/actor/VideoLivePhotoActor;->mFullScreen:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/actor/VideoLivePhotoActor;->isVideoProcessing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/actor/VideoLivePhotoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getSurfaceTextureReady()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/actor/VideoLivePhotoActor;->mIsReleased:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/actor/VideoLivePhotoActor;->isWfdEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 185
    :cond_1
    :goto_0
    return-void

    .line 161
    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/actor/VideoLivePhotoActor;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_3

    .line 162
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->startProfileStopVideoRecording()V

    .line 165
    iget-object v0, p0, Lcom/android/camera/actor/VideoLivePhotoActor;->mVideoContext:Lcom/android/camera/Camera;

    new-instance v1, Lcom/android/camera/actor/VideoLivePhotoActor$2;

    invoke-direct {v1, p0}, Lcom/android/camera/actor/VideoLivePhotoActor$2;-><init>(Lcom/android/camera/actor/VideoLivePhotoActor;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 171
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->stopProfileStopVideoRecording()V

    goto :goto_0

    .line 173
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/actor/VideoLivePhotoActor;->unlockOrientation()V

    .line 174
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->startProfileStartVideoRecording()V

    .line 175
    iget-object v0, p0, Lcom/android/camera/actor/VideoLivePhotoActor;->mVideoContext:Lcom/android/camera/Camera;

    new-instance v1, Lcom/android/camera/actor/VideoLivePhotoActor$3;

    invoke-direct {v1, p0}, Lcom/android/camera/actor/VideoLivePhotoActor$3;-><init>(Lcom/android/camera/actor/VideoLivePhotoActor;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 181
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->stopProfileStartVideoRecording()V

    .line 183
    iget-object v0, p0, Lcom/android/camera/actor/VideoLivePhotoActor;->mVideoContext:Lcom/android/camera/Camera;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->setSwipingEnabled(Z)V

    goto :goto_0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 129
    const/16 v0, 0x8

    return v0
.end method

.method public getPhotoShutterButtonListener()Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/camera/actor/VideoLivePhotoActor;->mPhotoShutterListener:Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;

    return-object v0
.end method

.method public getVideoShutterButtonListener()Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    return-object v0
.end method

.method public hideOtherSettings(Z)V
    .locals 1
    .parameter "hide"

    .prologue
    .line 336
    if-nez p1, :cond_0

    .line 337
    iget-object v0, p0, Lcom/android/camera/actor/VideoLivePhotoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->restoreViewState()V

    .line 339
    :cond_0
    return-void
.end method

.method protected initVideoRecordingFirst()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 199
    invoke-super {p0}, Lcom/android/camera/actor/VideoActor;->initVideoRecordingFirst()V

    .line 201
    iput-boolean v0, p0, Lcom/android/camera/actor/VideoLivePhotoActor;->mRecordAudio:Z

    .line 202
    iput-boolean v0, p0, Lcom/android/camera/actor/VideoLivePhotoActor;->mCaptureTimeLapse:Z

    .line 203
    return-void
.end method

.method public initializeRecorder()V
    .locals 2

    .prologue
    .line 134
    const-string v0, "VideoLivePhotoActor"

    const-string v1, "startVideoRecording initializeRecorder"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-super {p0}, Lcom/android/camera/actor/VideoActor;->initializeRecorder()V

    .line 136
    iget-object v0, p0, Lcom/android/camera/actor/VideoLivePhotoActor;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-static {v0}, Lcom/mediatek/media/MediaRecorderEx;->setLivePhotoMode(Landroid/media/MediaRecorder;)V

    .line 137
    return-void
.end method

.method public initializeRecordingView()V
    .locals 0

    .prologue
    .line 217
    return-void
.end method

.method public initializeShutterStatus()V
    .locals 0

    .prologue
    .line 65
    return-void
.end method

.method public initializeShutterType()V
    .locals 2

    .prologue
    .line 59
    const-string v0, "VideoLivePhotoActor"

    const-string v1, "initializeShutterType"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-object v0, p0, Lcom/android/camera/actor/VideoLivePhotoActor;->mVideoContext:Lcom/android/camera/Camera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->switchShutter(I)V

    .line 61
    return-void
.end method

.method public onBackPressed()Z
    .locals 3

    .prologue
    .line 418
    const-string v0, "VideoLivePhotoActor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBackPressed() isFinishing()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/actor/VideoLivePhotoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->isFinishing()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mVideoCameraClosed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/actor/VideoLivePhotoActor;->mVideoCameraClosed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isVideoProcessing()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/actor/VideoLivePhotoActor;->isVideoProcessing()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mVideoContext.isShowingProgress() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/actor/VideoLivePhotoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->isShowingProgress()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    iget-boolean v0, p0, Lcom/android/camera/actor/VideoLivePhotoActor;->mVideoCameraClosed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/actor/VideoLivePhotoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isShowingProgress()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/actor/VideoLivePhotoActor;->isVideoProcessing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 422
    :cond_0
    const/4 v0, 0x1

    .line 424
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCameraClose()V
    .locals 2

    .prologue
    .line 361
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/actor/VideoLivePhotoActor;->mIsReleased:Z

    .line 362
    iget-object v0, p0, Lcom/android/camera/actor/VideoLivePhotoActor;->mVideoContext:Lcom/android/camera/Camera;

    iget-object v1, p0, Lcom/android/camera/actor/VideoLivePhotoActor;->mFullScreenChangedListener:Lcom/android/camera/Camera$OnFullScreenChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->removeOnFullScreenChangedListener(Lcom/android/camera/Camera$OnFullScreenChangedListener;)Z

    .line 363
    invoke-super {p0}, Lcom/android/camera/actor/VideoActor;->onCameraClose()V

    .line 364
    return-void
.end method

.method public onCameraOpenDone()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 354
    invoke-super {p0}, Lcom/android/camera/actor/VideoActor;->onCameraOpenDone()V

    .line 355
    iput-boolean v0, p0, Lcom/android/camera/actor/VideoLivePhotoActor;->mVideoCameraClosed:Z

    .line 356
    iput-boolean v0, p0, Lcom/android/camera/actor/VideoLivePhotoActor;->mIsReleased:Z

    .line 357
    return-void
.end method

.method public onCameraParameterReady(Z)V
    .locals 4
    .parameter "startPreview"

    .prologue
    const/4 v1, 0x1

    .line 107
    const-string v0, "VideoLivePhotoActor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCameraParameterReady begin startPreview = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " getSurfaceTextureReady = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/actor/VideoLivePhotoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->getSurfaceTextureReady()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mCameraState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/actor/VideoLivePhotoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->getCameraState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v0, p0, Lcom/android/camera/actor/VideoLivePhotoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getSurfaceTextureReady()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/actor/VideoLivePhotoActor;->isVideoProcessing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/actor/VideoLivePhotoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraState()I

    move-result v0

    if-eq v0, v1, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/camera/actor/VideoLivePhotoActor;->mCanStartPreviewNow:Z

    .line 117
    iput-boolean v1, p0, Lcom/android/camera/actor/VideoLivePhotoActor;->mNeedBackGroundRecording:Z

    .line 118
    iget-boolean v0, p0, Lcom/android/camera/actor/VideoLivePhotoActor;->mCanStartPreviewNow:Z

    if-eqz v0, :cond_0

    .line 119
    invoke-super {p0, p1}, Lcom/android/camera/actor/VideoActor;->onCameraParameterReady(Z)V

    .line 122
    iget-object v0, p0, Lcom/android/camera/actor/VideoLivePhotoActor;->mVideoContext:Lcom/android/camera/Camera;

    iget-object v1, p0, Lcom/android/camera/actor/VideoLivePhotoActor;->mFullScreenChangedListener:Lcom/android/camera/Camera$OnFullScreenChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->addOnFullScreenChangedListener(Lcom/android/camera/Camera$OnFullScreenChangedListener;)Z

    .line 124
    :cond_0
    const-string v0, "VideoLivePhotoActor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCameraParameterReady end mCanStartPreviewNow = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/actor/VideoLivePhotoActor;->mCanStartPreviewNow:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    return-void

    .line 112
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected pauseAudioPlayback()V
    .locals 0

    .prologue
    .line 195
    return-void
.end method

.method public playSound(I)V
    .locals 1
    .parameter "soundId"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/camera/actor/VideoLivePhotoActor;->mCameraSound:Landroid/media/MediaActionSound;

    invoke-virtual {v0, p1}, Landroid/media/MediaActionSound;->play(I)V

    .line 55
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    .line 343
    const-string v0, "VideoLivePhotoActor"

    const-string v1, "release"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/actor/VideoLivePhotoActor;->mRecorderBusy:Z

    .line 345
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/actor/VideoLivePhotoActor;->mIsReleased:Z

    .line 346
    iget-object v0, p0, Lcom/android/camera/actor/VideoLivePhotoActor;->mCameraSound:Landroid/media/MediaActionSound;

    invoke-virtual {v0}, Landroid/media/MediaActionSound;->release()V

    .line 347
    iget-object v0, p0, Lcom/android/camera/actor/VideoLivePhotoActor;->mVideoContext:Lcom/android/camera/Camera;

    iget-object v1, p0, Lcom/android/camera/actor/VideoLivePhotoActor;->mFullScreenChangedListener:Lcom/android/camera/Camera$OnFullScreenChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->removeOnFullScreenChangedListener(Lcom/android/camera/Camera$OnFullScreenChangedListener;)Z

    .line 349
    invoke-virtual {p0}, Lcom/android/camera/actor/VideoLivePhotoActor;->stopVideoOnPause()V

    .line 350
    return-void
.end method

.method protected releaseMediaRecorder()V
    .locals 2

    .prologue
    .line 454
    const-string v0, "VideoLivePhotoActor"

    const-string v1, "releaseMediaRecorder begin"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    invoke-super {p0}, Lcom/android/camera/actor/VideoActor;->releaseMediaRecorder()V

    .line 456
    const-string v0, "VideoLivePhotoActor"

    const-string v1, "releaseMediaRecorder end"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    return-void
.end method

.method protected setOrientationHint(I)V
    .locals 3
    .parameter "orientation"

    .prologue
    .line 141
    const-string v0, "VideoLivePhotoActor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOrientationHint mMediaRecorder = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/actor/VideoLivePhotoActor;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v0, p0, Lcom/android/camera/actor/VideoLivePhotoActor;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/android/camera/actor/VideoLivePhotoActor;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    .line 145
    :cond_0
    return-void
.end method

.method public setSurfaceTextureReady(Z)V
    .locals 3
    .parameter "ready"

    .prologue
    .line 207
    const-string v0, "VideoLivePhotoActor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSurfaceTextureReady ready = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mCanStartPreviewNow = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/actor/VideoLivePhotoActor;->mCanStartPreviewNow:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    invoke-super {p0, p1}, Lcom/android/camera/actor/VideoActor;->setSurfaceTextureReady(Z)V

    .line 209
    iget-boolean v0, p0, Lcom/android/camera/actor/VideoLivePhotoActor;->mCanStartPreviewNow:Z

    if-nez v0, :cond_0

    .line 210
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/actor/VideoLivePhotoActor;->onCameraParameterReady(Z)V

    .line 212
    :cond_0
    return-void
.end method

.method public startRecording()V
    .locals 0

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/android/camera/actor/VideoLivePhotoActor;->startNormalRecording()V

    .line 190
    return-void
.end method

.method public stopRecording()V
    .locals 3

    .prologue
    .line 404
    const-string v0, "VideoLivePhotoActor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopRecording mNeedBackGroundRecording = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/actor/VideoLivePhotoActor;->mNeedBackGroundRecording:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    iget-boolean v0, p0, Lcom/android/camera/actor/VideoLivePhotoActor;->mNeedBackGroundRecording:Z

    if-eqz v0, :cond_0

    .line 406
    const-string v0, "VideoLivePhotoActor"

    const-string v1, "captureLivePhoto begin"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    iget-object v0, p0, Lcom/android/camera/actor/VideoLivePhotoActor;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-static {v0}, Lcom/mediatek/media/MediaRecorderEx;->captureLivePhoto(Landroid/media/MediaRecorder;)V

    .line 408
    invoke-super {p0}, Lcom/android/camera/actor/VideoActor;->stopPreview()V

    .line 409
    invoke-direct {p0}, Lcom/android/camera/actor/VideoLivePhotoActor;->lockOrientation()V

    .line 410
    const-string v0, "VideoLivePhotoActor"

    const-string v1, "captureLivePhoto end"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/actor/VideoLivePhotoActor;->playSound(I)V

    .line 413
    :cond_0
    invoke-super {p0}, Lcom/android/camera/actor/VideoActor;->stopRecording()V

    .line 414
    return-void
.end method

.method public stopVideoOnPause()V
    .locals 3

    .prologue
    .line 397
    const-string v0, "VideoLivePhotoActor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopVideoOnPause mMediaRecorderRecording = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/actor/VideoLivePhotoActor;->mMediaRecorderRecording:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/actor/VideoLivePhotoActor;->mNeedBackGroundRecording:Z

    .line 399
    invoke-super {p0}, Lcom/android/camera/actor/VideoActor;->stopVideoOnPause()V

    .line 400
    return-void
.end method

.method public stopVideoRecordingAsync()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 368
    const-string v0, "VideoLivePhotoActor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopVideoRecordingAsync() mMediaRecorderRecording="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/actor/VideoLivePhotoActor;->mMediaRecorderRecording:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mRecorderBusy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/actor/VideoLivePhotoActor;->mRecorderBusy:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    const-string v0, "VideoLivePhotoActor"

    const-string v1, "stopVideoRecordingAsync"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    iget-object v0, p0, Lcom/android/camera/actor/VideoLivePhotoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getZoomManager()Lcom/android/camera/manager/ZoomManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/manager/ZoomManager;->changeZoomForQuality()V

    .line 372
    iget-object v0, p0, Lcom/android/camera/actor/VideoLivePhotoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getShutterManager()Lcom/android/camera/manager/ShutterManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera/manager/ShutterManager;->setVideoShutterMask(Z)V

    .line 373
    invoke-virtual {p0}, Lcom/android/camera/actor/VideoLivePhotoActor;->isVideoProcessing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 394
    :cond_0
    :goto_0
    return-void

    .line 376
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/actor/VideoLivePhotoActor;->mRecorderBusy:Z

    if-nez v0, :cond_0

    .line 379
    iput-boolean v4, p0, Lcom/android/camera/actor/VideoLivePhotoActor;->mRecorderBusy:Z

    .line 380
    iget-boolean v0, p0, Lcom/android/camera/actor/VideoLivePhotoActor;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_3

    .line 381
    iget v0, p0, Lcom/android/camera/actor/VideoLivePhotoActor;->mStoppingAction:I

    if-eq v0, v5, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/actor/VideoLivePhotoActor;->mCallFromOnPause:Z

    if-eq v0, v4, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/actor/VideoLivePhotoActor;->mNeedBackGroundRecording:Z

    if-eqz v0, :cond_2

    .line 382
    iget-object v0, p0, Lcom/android/camera/actor/VideoLivePhotoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getShutterManager()Lcom/android/camera/manager/ShutterManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera/manager/ShutterManager;->setVideoShutterEnabled(Z)V

    .line 383
    iget-object v0, p0, Lcom/android/camera/actor/VideoLivePhotoActor;->mVideoContext:Lcom/android/camera/Camera;

    iget-object v1, p0, Lcom/android/camera/actor/VideoLivePhotoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00b9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->showProgress(Ljava/lang/String;)V

    .line 385
    :cond_2
    new-instance v0, Lcom/android/camera/actor/VideoActor$SavingTask;

    invoke-direct {v0, p0}, Lcom/android/camera/actor/VideoActor$SavingTask;-><init>(Lcom/android/camera/actor/VideoActor;)V

    iput-object v0, p0, Lcom/android/camera/actor/VideoLivePhotoActor;->mVideoSavingTask:Ljava/lang/Thread;

    .line 386
    iget-object v0, p0, Lcom/android/camera/actor/VideoLivePhotoActor;->mVideoSavingTask:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 388
    :cond_3
    iput-boolean v3, p0, Lcom/android/camera/actor/VideoLivePhotoActor;->mRecorderBusy:Z

    .line 389
    invoke-virtual {p0}, Lcom/android/camera/actor/VideoLivePhotoActor;->releaseRecorder()V

    .line 390
    iget v0, p0, Lcom/android/camera/actor/VideoLivePhotoActor;->mStoppingAction:I

    if-ne v0, v5, :cond_0

    .line 391
    invoke-virtual {p0, v3}, Lcom/android/camera/actor/VideoLivePhotoActor;->doReturnToCaller(Z)V

    goto :goto_0
.end method

.method protected updateRecordingTime()V
    .locals 3

    .prologue
    .line 223
    const-string v0, "VideoLivePhotoActor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateRecordingTime mMediaRecorder = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/actor/VideoLivePhotoActor;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    return-void
.end method
