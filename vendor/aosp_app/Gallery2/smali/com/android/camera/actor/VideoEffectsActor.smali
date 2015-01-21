.class public Lcom/android/camera/actor/VideoEffectsActor;
.super Lcom/android/camera/actor/VideoActor;
.source "VideoEffectsActor.java"

# interfaces
.implements Lcom/android/camera/actor/EffectsRecorder$EffectsListener;
.implements Lcom/android/camera/actor/EffectsRecorder$OnSurfaceStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/actor/VideoEffectsActor$EffectHandler;
    }
.end annotation


# static fields
.field private static final DELAY_TIME:I = 0x5dc

.field private static final EFFECT_BG_FROM_GALLERY:Ljava/lang/String; = "gallery"

.field private static final NOTIFY:I = 0x1

.field private static final REQUEST_EFFECT_BACKDROPPER:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "VideoEffectsActor"


# instance fields
.field private mCancelListener:Landroid/view/View$OnClickListener;

.field private mConnectApiReady:Z

.field private mEffectApplyTime:I

.field private mEffectHandler:Landroid/os/Handler;

.field private mEffectParameter:Ljava/lang/Object;

.field private mEffectType:I

.field private mEffectUriFromGallery:Ljava/lang/String;

.field private mEffectsDisplayResult:Z

.field private mEffectsError:Z

.field private mEffectsRecorder:Lcom/android/camera/actor/EffectsRecorder;

.field private mNeedReLearningEffect:Z

.field private mResetEffect:Z

.field private mRetakeListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Lcom/android/camera/Camera;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 55
    invoke-direct {p0, p1}, Lcom/android/camera/actor/VideoActor;-><init>(Lcom/android/camera/Camera;)V

    .line 35
    iput-object v1, p0, Lcom/android/camera/actor/VideoEffectsActor;->mEffectParameter:Ljava/lang/Object;

    .line 36
    iput-object v1, p0, Lcom/android/camera/actor/VideoEffectsActor;->mEffectUriFromGallery:Ljava/lang/String;

    .line 37
    iput v2, p0, Lcom/android/camera/actor/VideoEffectsActor;->mEffectType:I

    .line 38
    const v1, 0x7fffffff

    iput v1, p0, Lcom/android/camera/actor/VideoEffectsActor;->mEffectApplyTime:I

    .line 40
    iput-boolean v3, p0, Lcom/android/camera/actor/VideoEffectsActor;->mResetEffect:Z

    .line 41
    iput-boolean v2, p0, Lcom/android/camera/actor/VideoEffectsActor;->mEffectsError:Z

    .line 42
    iput-boolean v2, p0, Lcom/android/camera/actor/VideoEffectsActor;->mNeedReLearningEffect:Z

    .line 48
    iput-boolean v3, p0, Lcom/android/camera/actor/VideoEffectsActor;->mConnectApiReady:Z

    .line 630
    new-instance v1, Lcom/android/camera/actor/VideoEffectsActor$1;

    invoke-direct {v1, p0}, Lcom/android/camera/actor/VideoEffectsActor$1;-><init>(Lcom/android/camera/actor/VideoEffectsActor;)V

    iput-object v1, p0, Lcom/android/camera/actor/VideoEffectsActor;->mRetakeListener:Landroid/view/View$OnClickListener;

    .line 647
    new-instance v1, Lcom/android/camera/actor/VideoEffectsActor$2;

    invoke-direct {v1, p0}, Lcom/android/camera/actor/VideoEffectsActor$2;-><init>(Lcom/android/camera/actor/VideoEffectsActor;)V

    iput-object v1, p0, Lcom/android/camera/actor/VideoEffectsActor;->mCancelListener:Landroid/view/View$OnClickListener;

    .line 56
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Camera Effect Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 57
    .local v0, ht:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 58
    new-instance v1, Lcom/android/camera/actor/VideoEffectsActor$EffectHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/camera/actor/VideoEffectsActor$EffectHandler;-><init>(Lcom/android/camera/actor/VideoEffectsActor;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/camera/actor/VideoEffectsActor;->mEffectHandler:Landroid/os/Handler;

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/actor/VideoEffectsActor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/android/camera/actor/VideoEffectsActor;->mNeedReLearningEffect:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/camera/actor/VideoEffectsActor;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/android/camera/actor/VideoEffectsActor;->mNeedReLearningEffect:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/camera/actor/VideoEffectsActor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/camera/actor/VideoEffectsActor;->releaseEffects()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/actor/VideoEffectsActor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/camera/actor/VideoEffectsActor;->releaseEffectsRecorder()V

    return-void
.end method

.method private closeEffects(Z)V
    .locals 3
    .parameter "reset"

    .prologue
    .line 305
    if-eqz p1, :cond_0

    .line 306
    const-string v0, "VideoEffectsActor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Closing effects,mEffectsRecorder = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/actor/VideoEffectsActor;->mEffectsRecorder:Lcom/android/camera/actor/EffectsRecorder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/actor/VideoEffectsActor;->mEffectType:I

    .line 308
    iget-object v0, p0, Lcom/android/camera/actor/VideoEffectsActor;->mEffectsRecorder:Lcom/android/camera/actor/EffectsRecorder;

    if-nez v0, :cond_1

    .line 316
    :cond_0
    :goto_0
    return-void

    .line 313
    :cond_1
    iget-object v0, p0, Lcom/android/camera/actor/VideoEffectsActor;->mEffectsRecorder:Lcom/android/camera/actor/EffectsRecorder;

    invoke-virtual {v0}, Lcom/android/camera/actor/EffectsRecorder;->release()V

    .line 314
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/actor/VideoEffectsActor;->mEffectsRecorder:Lcom/android/camera/actor/EffectsRecorder;

    goto :goto_0
.end method

.method private effectActive()Z
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getEffectType()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initializeEffectsPreview()V
    .locals 6

    .prologue
    .line 173
    const-string v2, "VideoEffectsActor"

    const-string v3, "initializeEffectsPreview"

    invoke-static {v2, v3}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object v2, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v2

    if-nez v2, :cond_0

    .line 216
    :goto_0
    return-void

    .line 178
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->getCameraId()I

    move-result v3

    aget-object v0, v2, v3

    .line 180
    .local v0, info:Landroid/hardware/Camera$CameraInfo;
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/camera/actor/VideoEffectsActor;->mEffectsDisplayResult:Z

    .line 181
    new-instance v2, Lcom/android/camera/actor/EffectsRecorder;

    iget-object v3, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-direct {v2, v3}, Lcom/android/camera/actor/EffectsRecorder;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/camera/actor/VideoEffectsActor;->mEffectsRecorder:Lcom/android/camera/actor/EffectsRecorder;

    .line 185
    iget-object v2, p0, Lcom/android/camera/actor/VideoEffectsActor;->mEffectsRecorder:Lcom/android/camera/actor/EffectsRecorder;

    iget-object v3, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->getCameraDisplayOrientation()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/camera/actor/EffectsRecorder;->setCameraDisplayOrientation(I)V

    .line 186
    invoke-static {}, Lcom/mediatek/camera/FrameworksClassFactory;->isMockCamera()Z

    move-result v2

    if-nez v2, :cond_1

    .line 187
    iget-object v2, p0, Lcom/android/camera/actor/VideoEffectsActor;->mEffectsRecorder:Lcom/android/camera/actor/EffectsRecorder;

    iget-object v3, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraManager$CameraProxy;->getCamera()Lcom/mediatek/camera/ICamera;

    move-result-object v3

    invoke-interface {v3}, Lcom/mediatek/camera/ICamera;->getInstance()Landroid/hardware/Camera;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/camera/actor/EffectsRecorder;->setCamera(Landroid/hardware/Camera;)V

    .line 189
    :cond_1
    iget-object v2, p0, Lcom/android/camera/actor/VideoEffectsActor;->mEffectsRecorder:Lcom/android/camera/actor/EffectsRecorder;

    iget v3, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    invoke-virtual {v2, v3}, Lcom/android/camera/actor/EffectsRecorder;->setCameraFacing(I)V

    .line 190
    iget-object v2, p0, Lcom/android/camera/actor/VideoEffectsActor;->mEffectsRecorder:Lcom/android/camera/actor/EffectsRecorder;

    iget-object v3, p0, Lcom/android/camera/actor/VideoActor;->mProfile:Landroid/media/CamcorderProfile;

    invoke-virtual {v2, v3}, Lcom/android/camera/actor/EffectsRecorder;->setProfile(Landroid/media/CamcorderProfile;)V

    .line 191
    iget-object v2, p0, Lcom/android/camera/actor/VideoEffectsActor;->mEffectsRecorder:Lcom/android/camera/actor/EffectsRecorder;

    invoke-virtual {v2, p0}, Lcom/android/camera/actor/EffectsRecorder;->setEffectsListener(Lcom/android/camera/actor/EffectsRecorder$EffectsListener;)V

    .line 192
    iget-object v2, p0, Lcom/android/camera/actor/VideoEffectsActor;->mEffectsRecorder:Lcom/android/camera/actor/EffectsRecorder;

    invoke-virtual {v2, p0}, Lcom/android/camera/actor/EffectsRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 193
    iget-object v2, p0, Lcom/android/camera/actor/VideoEffectsActor;->mEffectsRecorder:Lcom/android/camera/actor/EffectsRecorder;

    invoke-virtual {v2, p0}, Lcom/android/camera/actor/EffectsRecorder;->setOnCameraReleasedListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 194
    iget-object v2, p0, Lcom/android/camera/actor/VideoEffectsActor;->mEffectsRecorder:Lcom/android/camera/actor/EffectsRecorder;

    invoke-virtual {v2, p0}, Lcom/android/camera/actor/EffectsRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 195
    iget-object v2, p0, Lcom/android/camera/actor/VideoEffectsActor;->mEffectsRecorder:Lcom/android/camera/actor/EffectsRecorder;

    invoke-virtual {v2, p0}, Lcom/android/camera/actor/EffectsRecorder;->setSurfaceStateListener(Lcom/android/camera/actor/EffectsRecorder$OnSurfaceStateChangeListener;)V

    .line 200
    const/4 v1, 0x0

    .line 201
    .local v1, orientation:I
    iget-object v2, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getOrietation()I

    move-result v2

    iput v2, p0, Lcom/android/camera/actor/VideoActor;->mOrientation:I

    .line 202
    iget v2, p0, Lcom/android/camera/actor/VideoActor;->mOrientation:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 203
    iget v1, p0, Lcom/android/camera/actor/VideoActor;->mOrientation:I

    .line 205
    :cond_2
    iget-object v2, p0, Lcom/android/camera/actor/VideoEffectsActor;->mEffectsRecorder:Lcom/android/camera/actor/EffectsRecorder;

    invoke-virtual {v2, v1}, Lcom/android/camera/actor/EffectsRecorder;->setOrientationHint(I)V

    .line 206
    iget-object v2, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    iget-object v3, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->getOrientationCompensation()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/camera/Camera;->setReviewOrientationCompensation(I)V

    .line 207
    iget-object v2, p0, Lcom/android/camera/actor/VideoEffectsActor;->mEffectsRecorder:Lcom/android/camera/actor/EffectsRecorder;

    iget-object v3, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v4}, Lcom/android/camera/Camera;->getCameraScreenNailWidth()I

    move-result v4

    iget-object v5, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v5}, Lcom/android/camera/Camera;->getCameraScreenNailHeight()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/camera/actor/EffectsRecorder;->setPreviewSurfaceTexture(Landroid/graphics/SurfaceTexture;II)V

    .line 210
    iget v2, p0, Lcom/android/camera/actor/VideoEffectsActor;->mEffectType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/android/camera/actor/VideoEffectsActor;->mEffectParameter:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    const-string v3, "gallery"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 212
    iget-object v2, p0, Lcom/android/camera/actor/VideoEffectsActor;->mEffectsRecorder:Lcom/android/camera/actor/EffectsRecorder;

    iget v3, p0, Lcom/android/camera/actor/VideoEffectsActor;->mEffectType:I

    iget-object v4, p0, Lcom/android/camera/actor/VideoEffectsActor;->mEffectUriFromGallery:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/actor/EffectsRecorder;->setEffect(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 214
    :cond_3
    iget-object v2, p0, Lcom/android/camera/actor/VideoEffectsActor;->mEffectsRecorder:Lcom/android/camera/actor/EffectsRecorder;

    iget v3, p0, Lcom/android/camera/actor/VideoEffectsActor;->mEffectType:I

    iget-object v4, p0, Lcom/android/camera/actor/VideoEffectsActor;->mEffectParameter:Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/actor/EffectsRecorder;->setEffect(ILjava/lang/Object;)V

    goto/16 :goto_0
.end method

.method private initializeEffectsRecording()V
    .locals 7

    .prologue
    .line 464
    const-string v2, "VideoEffectsActor"

    const-string v3, "initializeEffectsRecording"

    invoke-static {v2, v3}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    invoke-virtual {p0}, Lcom/android/camera/actor/VideoActor;->getRequestedSizeLimit()V

    .line 466
    iget-object v2, p0, Lcom/android/camera/actor/VideoEffectsActor;->mEffectsRecorder:Lcom/android/camera/actor/EffectsRecorder;

    iget-object v3, p0, Lcom/android/camera/actor/VideoActor;->mProfile:Landroid/media/CamcorderProfile;

    invoke-virtual {v2, v3}, Lcom/android/camera/actor/EffectsRecorder;->setProfile(Landroid/media/CamcorderProfile;)V

    .line 467
    iget-object v3, p0, Lcom/android/camera/actor/VideoEffectsActor;->mEffectsRecorder:Lcom/android/camera/actor/EffectsRecorder;

    iget-boolean v2, p0, Lcom/android/camera/actor/VideoActor;->mRecordAudio:Z

    if-nez v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v3, v2}, Lcom/android/camera/actor/EffectsRecorder;->setMuteAudio(Z)V

    .line 470
    iget-boolean v2, p0, Lcom/android/camera/actor/VideoActor;->mCaptureTimeLapse:Z

    if-eqz v2, :cond_2

    .line 471
    iget-object v2, p0, Lcom/android/camera/actor/VideoEffectsActor;->mEffectsRecorder:Lcom/android/camera/actor/EffectsRecorder;

    const-wide v3, 0x408f400000000000L

    iget v5, p0, Lcom/android/camera/actor/VideoActor;->mTimeBetweenTimeLapseFrameCaptureMs:I

    int-to-double v5, v5

    div-double/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/actor/EffectsRecorder;->setCaptureRate(D)V

    .line 477
    :goto_1
    iget-object v2, p0, Lcom/android/camera/actor/VideoActor;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v2, :cond_3

    .line 478
    iget-object v2, p0, Lcom/android/camera/actor/VideoEffectsActor;->mEffectsRecorder:Lcom/android/camera/actor/EffectsRecorder;

    iget-object v3, p0, Lcom/android/camera/actor/VideoActor;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/camera/actor/EffectsRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V

    .line 484
    :goto_2
    invoke-static {}, Lcom/android/camera/Storage;->getAvailableSpace()J

    move-result-wide v2

    sget-wide v4, Lcom/android/camera/Storage;->LOW_STORAGE_THRESHOLD:J

    sub-long v0, v2, v4

    .line 485
    .local v0, maxFileSize:J
    iget-wide v2, p0, Lcom/android/camera/actor/VideoActor;->mRequestedSizeLimit:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    iget-wide v2, p0, Lcom/android/camera/actor/VideoActor;->mRequestedSizeLimit:J

    cmp-long v2, v2, v0

    if-gez v2, :cond_0

    .line 486
    iget-wide v0, p0, Lcom/android/camera/actor/VideoActor;->mRequestedSizeLimit:J

    .line 488
    :cond_0
    iget-object v2, p0, Lcom/android/camera/actor/VideoEffectsActor;->mEffectsRecorder:Lcom/android/camera/actor/EffectsRecorder;

    invoke-virtual {v2, v0, v1}, Lcom/android/camera/actor/EffectsRecorder;->setMaxFileSize(J)V

    .line 489
    iget-object v2, p0, Lcom/android/camera/actor/VideoEffectsActor;->mEffectsRecorder:Lcom/android/camera/actor/EffectsRecorder;

    iget v3, p0, Lcom/android/camera/actor/VideoActor;->mMaxVideoDurationInMs:I

    invoke-virtual {v2, v3}, Lcom/android/camera/actor/EffectsRecorder;->setMaxDuration(I)V

    .line 490
    return-void

    .line 467
    .end local v0           #maxFileSize:J
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 473
    :cond_2
    iget-object v2, p0, Lcom/android/camera/actor/VideoEffectsActor;->mEffectsRecorder:Lcom/android/camera/actor/EffectsRecorder;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/actor/EffectsRecorder;->setCaptureRate(D)V

    goto :goto_1

    .line 480
    :cond_3
    iget-object v2, p0, Lcom/android/camera/actor/VideoActor;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->fileFormat:I

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/camera/actor/VideoActor;->generateVideoFilename(ILjava/lang/String;)Ljava/lang/String;

    .line 481
    iget-object v2, p0, Lcom/android/camera/actor/VideoEffectsActor;->mEffectsRecorder:Lcom/android/camera/actor/EffectsRecorder;

    iget-object v3, p0, Lcom/android/camera/actor/VideoActor;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/camera/actor/EffectsRecorder;->setOutputFile(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private releaseEffects()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 275
    const-string v1, "VideoEffectsActor"

    const-string v2, "releaseEffects()"

    invoke-static {v1, v2}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->dismissInfo()V

    .line 277
    iget-boolean v1, p0, Lcom/android/camera/actor/VideoActor;->mVideoCameraClosed:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->isNonePickIntent()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 278
    :cond_0
    iget-object v1, p0, Lcom/android/camera/actor/VideoEffectsActor;->mEffectsRecorder:Lcom/android/camera/actor/EffectsRecorder;

    if-eqz v1, :cond_1

    .line 280
    const-string v1, "VideoEffectsActor"

    const-string v2, "mEffectsRecorder.disconnectCamera()"

    invoke-static {v1, v2}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    iget-object v1, p0, Lcom/android/camera/actor/VideoEffectsActor;->mEffectsRecorder:Lcom/android/camera/actor/EffectsRecorder;

    invoke-virtual {v1}, Lcom/android/camera/actor/EffectsRecorder;->disconnectCamera()V

    .line 283
    :cond_1
    iget-boolean v1, p0, Lcom/android/camera/actor/VideoActor;->mMediaRecorderRecording:Z

    if-eqz v1, :cond_4

    .line 284
    invoke-direct {p0}, Lcom/android/camera/actor/VideoEffectsActor;->effectActive()Z

    move-result v1

    if-nez v1, :cond_3

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/camera/actor/VideoEffectsActor;->closeEffects(Z)V

    .line 288
    :goto_1
    invoke-direct {p0}, Lcom/android/camera/actor/VideoEffectsActor;->effectActive()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/actor/VideoEffectsActor;->mEffectsRecorder:Lcom/android/camera/actor/EffectsRecorder;

    if-eqz v0, :cond_2

    .line 291
    const-string v0, "VideoEffectsActor"

    const-string v1, "mEffectsRecorder.disconnectDisplay()"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    iget-object v0, p0, Lcom/android/camera/actor/VideoEffectsActor;->mEffectsRecorder:Lcom/android/camera/actor/EffectsRecorder;

    invoke-virtual {v0}, Lcom/android/camera/actor/EffectsRecorder;->disconnectDisplay()V

    .line 301
    :cond_2
    :goto_2
    return-void

    .line 284
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 286
    :cond_4
    invoke-direct {p0, v0}, Lcom/android/camera/actor/VideoEffectsActor;->closeEffects(Z)V

    goto :goto_1

    .line 296
    :cond_5
    iget-object v0, p0, Lcom/android/camera/actor/VideoEffectsActor;->mEffectsRecorder:Lcom/android/camera/actor/EffectsRecorder;

    if-eqz v0, :cond_2

    .line 297
    iget-object v0, p0, Lcom/android/camera/actor/VideoEffectsActor;->mEffectsRecorder:Lcom/android/camera/actor/EffectsRecorder;

    invoke-virtual {v0}, Lcom/android/camera/actor/EffectsRecorder;->stopPreview()V

    .line 298
    invoke-direct {p0}, Lcom/android/camera/actor/VideoEffectsActor;->releaseEffectsRecorder()V

    goto :goto_2
.end method

.method private releaseEffectsRecorder()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 336
    const-string v0, "VideoEffectsActor"

    const-string v1, "Releasing effects recorder."

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    iget-object v0, p0, Lcom/android/camera/actor/VideoEffectsActor;->mEffectsRecorder:Lcom/android/camera/actor/EffectsRecorder;

    if-eqz v0, :cond_0

    .line 338
    invoke-virtual {p0}, Lcom/android/camera/actor/VideoActor;->cleanupEmptyFile()V

    .line 339
    iget-object v0, p0, Lcom/android/camera/actor/VideoEffectsActor;->mEffectsRecorder:Lcom/android/camera/actor/EffectsRecorder;

    invoke-virtual {v0}, Lcom/android/camera/actor/EffectsRecorder;->release()V

    .line 340
    iput-object v2, p0, Lcom/android/camera/actor/VideoEffectsActor;->mEffectsRecorder:Lcom/android/camera/actor/EffectsRecorder;

    .line 342
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/actor/VideoEffectsActor;->mEffectType:I

    .line 343
    iput-object v2, p0, Lcom/android/camera/actor/VideoActor;->mVideoFilename:Ljava/lang/String;

    .line 344
    return-void
.end method

.method private startEffectRecording()V
    .locals 3

    .prologue
    .line 494
    const-string v1, "VideoEffectsActor"

    const-string v2, "startEffectRecording()"

    invoke-static {v1, v2}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/actor/VideoEffectsActor;->mEffectsRecorder:Lcom/android/camera/actor/EffectsRecorder;

    invoke-virtual {v1}, Lcom/android/camera/actor/EffectsRecorder;->startRecording()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 502
    :goto_0
    return-void

    .line 497
    :catch_0
    move-exception v0

    .line 498
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v1, "VideoEffectsActor"

    const-string v2, "Could not start effects recorder. "

    invoke-static {v1, v2, v0}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 499
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/actor/VideoActor;->mStartRecordingFailed:Z

    .line 500
    invoke-direct {p0}, Lcom/android/camera/actor/VideoEffectsActor;->releaseEffectsRecorder()V

    goto :goto_0
.end method

.method private stopEffectVideoRecording()V
    .locals 2

    .prologue
    .line 347
    const-string v0, "VideoEffectsActor"

    const-string v1, "stopEffectVideoRecording"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    iget-object v0, p0, Lcom/android/camera/actor/VideoEffectsActor;->mEffectsRecorder:Lcom/android/camera/actor/EffectsRecorder;

    invoke-virtual {v0}, Lcom/android/camera/actor/EffectsRecorder;->stopRecording()V

    .line 349
    return-void
.end method


# virtual methods
.method protected backToLastModeIfNeed()Z
    .locals 3

    .prologue
    .line 619
    const-string v1, "VideoEffectsActor"

    const-string v2, "backToLastModeIfNeed()"

    invoke-static {v1, v2}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    const/4 v0, 0x0

    .line 621
    .local v0, back:Z
    return v0
.end method

.method public doAfterStopRecording(Z)V
    .locals 2
    .parameter "fail"

    .prologue
    .line 555
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isNonePickIntent()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 556
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/camera/actor/VideoActor;->mStoppingAction:I

    .line 558
    :cond_0
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor;->mVideoSavingTask:Ljava/lang/Thread;

    monitor-enter v1

    .line 559
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/camera/actor/VideoEffectsActor;->mRecorderBusy:Z

    .line 560
    monitor-exit v1

    .line 561
    return-void

    .line 560
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public doStartPreview()V
    .locals 3

    .prologue
    .line 220
    const-string v1, "VideoEffectsActor"

    const-string v2, "doStartPreview()"

    invoke-static {v1, v2}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :try_start_0
    invoke-direct {p0}, Lcom/android/camera/actor/VideoEffectsActor;->initializeEffectsPreview()V

    .line 223
    iget-object v1, p0, Lcom/android/camera/actor/VideoEffectsActor;->mEffectsRecorder:Lcom/android/camera/actor/EffectsRecorder;

    invoke-virtual {v1}, Lcom/android/camera/actor/EffectsRecorder;->startPreview()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    :goto_0
    return-void

    .line 224
    :catch_0
    move-exception v0

    .line 225
    .local v0, ex:Ljava/lang/Throwable;
    invoke-direct {p0}, Lcom/android/camera/actor/VideoEffectsActor;->releaseEffects()V

    .line 226
    const-string v1, "VideoEffectsActor"

    const-string v2, "doStartPreview exception"

    invoke-static {v1, v2, v0}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getCancelListener()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 684
    iget-object v0, p0, Lcom/android/camera/actor/VideoEffectsActor;->mCancelListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 117
    const/16 v0, 0xa

    return v0
.end method

.method public getRetakeListener()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 679
    iget-object v0, p0, Lcom/android/camera/actor/VideoEffectsActor;->mRetakeListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public handleFocus()Z
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x1

    return v0
.end method

.method protected initVideoRecordingFirst()V
    .locals 1

    .prologue
    .line 535
    invoke-super {p0}, Lcom/android/camera/actor/VideoActor;->initVideoRecordingFirst()V

    .line 536
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/actor/VideoActor;->mSingleAutoModeSupported:Z

    .line 537
    return-void
.end method

.method public initializeRecorder()V
    .locals 3

    .prologue
    .line 516
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->startProfileEffectrecorderStart()V

    .line 517
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/actor/VideoActor;->mFilterStartEncode:Z

    .line 518
    invoke-direct {p0}, Lcom/android/camera/actor/VideoEffectsActor;->initializeEffectsRecording()V

    .line 519
    iget-object v0, p0, Lcom/android/camera/actor/VideoEffectsActor;->mEffectsRecorder:Lcom/android/camera/actor/EffectsRecorder;

    if-nez v0, :cond_0

    .line 520
    const-string v0, "VideoEffectsActor"

    const-string v1, "Fail to initialize effect recorder."

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 523
    :cond_0
    return-void
.end method

.method public initializeRecordingView()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 506
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getLimitedSize()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 507
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mRecordingView:Lcom/android/camera/manager/RecordingView;

    invoke-virtual {v0, v4}, Lcom/android/camera/manager/RecordingView;->setRecordingSizeVisible(Z)V

    .line 509
    :cond_0
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mRecordingView:Lcom/android/camera/manager/RecordingView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/manager/RecordingView;->setRecordingIndicator(Z)V

    .line 510
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mRecordingView:Lcom/android/camera/manager/RecordingView;

    invoke-virtual {v0, v4}, Lcom/android/camera/manager/RecordingView;->setPauseResumeVisible(Z)V

    .line 511
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mRecordingView:Lcom/android/camera/manager/RecordingView;

    invoke-virtual {v0}, Lcom/android/camera/manager/ViewManager;->show()V

    .line 512
    return-void
.end method

.method public initializeShutterStatus()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getShutterManager()Lcom/android/camera/manager/ShutterManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/manager/ShutterManager;->setPhotoShutterEnabled(Z)V

    .line 104
    return-void
.end method

.method public initializeShutterType()V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->switchShutter(I)V

    .line 98
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    .line 247
    packed-switch p1, :pswitch_data_0

    .line 268
    const-string v0, "VideoEffectsActor"

    const-string v1, "Unknown activity result sent to Camera!"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/actor/CameraActor;->onActivityResult(IILandroid/content/Intent;)V

    .line 272
    return-void

    .line 249
    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 252
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/actor/VideoEffectsActor;->mEffectUriFromGallery:Ljava/lang/String;

    .line 253
    const-string v0, "VideoEffectsActor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received URI from gallery: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/actor/VideoEffectsActor;->mEffectUriFromGallery:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iput-boolean v3, p0, Lcom/android/camera/actor/VideoEffectsActor;->mResetEffect:Z

    goto :goto_0

    .line 256
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/actor/VideoEffectsActor;->mEffectUriFromGallery:Ljava/lang/String;

    .line 257
    const-string v0, "VideoEffectsActor"

    const-string v1, "No URI from gallery"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/actor/VideoEffectsActor;->mResetEffect:Z

    .line 259
    invoke-direct {p0}, Lcom/android/camera/actor/VideoEffectsActor;->releaseEffects()V

    .line 261
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0, v3}, Lcom/android/camera/Camera;->resetLiveEffect(Z)V

    .line 262
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    iget-object v1, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    const-string v2, "pref_video_effect_key"

    invoke-virtual {v1, v2}, Lcom/android/camera/Camera;->getListPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->notifyPreferenceChanged(Lcom/android/camera/ListPreference;)V

    .line 264
    invoke-virtual {p0, v3}, Lcom/android/camera/actor/VideoActor;->hideOtherSettings(Z)V

    goto :goto_0

    .line 247
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method

.method public onCameraClose()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 565
    invoke-super {p0}, Lcom/android/camera/actor/VideoActor;->onCameraClose()V

    .line 566
    iput-boolean v0, p0, Lcom/android/camera/actor/VideoEffectsActor;->mNeedReLearningEffect:Z

    .line 567
    iput-boolean v0, p0, Lcom/android/camera/actor/VideoEffectsActor;->mEffectsError:Z

    .line 568
    invoke-direct {p0}, Lcom/android/camera/actor/VideoEffectsActor;->releaseEffects()V

    .line 569
    return-void
.end method

.method public onCameraParameterReady(Z)V
    .locals 1
    .parameter "startPreview"

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/android/camera/actor/VideoEffectsActor;->updateEffectSelection()Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    invoke-super {p0, p1}, Lcom/android/camera/actor/VideoActor;->onCameraParameterReady(Z)V

    .line 113
    :cond_0
    return-void
.end method

.method public declared-synchronized onEffectsError(Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 2
    .parameter "exception"
    .parameter "fileName"

    .prologue
    .line 444
    monitor-enter p0

    :try_start_0
    const-string v0, "VideoEffectsActor"

    const-string v1, "onEffectsError"

    invoke-static {v0, v1, p1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 445
    if-eqz p2, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 446
    invoke-virtual {p0, p2}, Lcom/android/camera/actor/VideoActor;->deleteVideoFile(Ljava/lang/String;)V

    .line 448
    :cond_0
    instance-of v0, p1, Landroid/filterpacks/videosink/MediaRecorderStopException;

    if-eqz v0, :cond_2

    .line 449
    const-string v0, "VideoEffectsActor"

    const-string v1, "Problem recoding video file. Removing incomplete file."

    invoke-static {v0, v1}, Lcom/android/camera/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    invoke-virtual {p0}, Lcom/android/camera/actor/VideoEffectsActor;->updateEffectRecordingUI()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 461
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 454
    :cond_2
    :try_start_1
    iget-boolean v0, p0, Lcom/android/camera/actor/VideoEffectsActor;->mEffectsError:Z

    if-nez v0, :cond_1

    .line 457
    iget-boolean v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoCameraClosed:Z

    if-nez v0, :cond_1

    .line 458
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/actor/VideoEffectsActor;->mEffectsError:Z

    .line 459
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    const v1, 0x7f0c00c1

    invoke-static {v0, v1}, Lcom/android/camera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 444
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onEffectsUpdate(II)V
    .locals 6
    .parameter "effectId"
    .parameter "effectMsg"

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 353
    const-string v0, "VideoEffectsActor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEffectsUpdate. Effect Message = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    const/4 v0, 0x3

    if-ne p2, v0, :cond_4

    .line 356
    iget-boolean v0, p0, Lcom/android/camera/actor/VideoActor;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_1

    .line 357
    invoke-virtual {p0}, Lcom/android/camera/actor/VideoActor;->stopVideoRecordingAsync()V

    .line 358
    invoke-virtual {p0}, Lcom/android/camera/actor/VideoEffectsActor;->updateEffectRecordingUI()V

    .line 359
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoSavingTask:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 360
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor;->mVideoSavingTask:Ljava/lang/Thread;

    monitor-enter v1

    .line 361
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/camera/actor/VideoActor;->mRecorderCameraReleased:Z

    .line 362
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoSavingTask:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 363
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 365
    :cond_0
    const-string v0, "VideoEffectsActor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEffectsUpdate() release mVideoSavingTask="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/actor/VideoActor;->mVideoSavingTask:Ljava/lang/Thread;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :cond_1
    iput-boolean v3, p0, Lcom/android/camera/actor/VideoActor;->mRecorderCameraReleased:Z

    .line 369
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->dismissInfo()V

    .line 370
    invoke-virtual {p0, v4}, Lcom/android/camera/actor/VideoActor;->hideOtherSettings(Z)V

    .line 371
    invoke-virtual {p0}, Lcom/android/camera/actor/VideoActor;->startPreview()V

    .line 435
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoCameraClosed:Z

    if-eqz v0, :cond_3

    .line 436
    const-string v0, "VideoEffectsActor"

    const-string v1, "OnEffectsUpdate: closing effects if activity paused"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    invoke-direct {p0, v3}, Lcom/android/camera/actor/VideoEffectsActor;->closeEffects(Z)V

    .line 439
    :cond_3
    return-void

    .line 363
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 372
    :cond_4
    const/4 v0, 0x4

    if-ne p2, v0, :cond_7

    .line 373
    invoke-virtual {p0}, Lcom/android/camera/actor/VideoEffectsActor;->updateEffectRecordingUI()V

    .line 375
    iget-boolean v0, p0, Lcom/android/camera/actor/VideoEffectsActor;->mEffectsDisplayResult:Z

    if-eqz v0, :cond_5

    .line 376
    invoke-virtual {p0, v4}, Lcom/android/camera/actor/VideoActor;->addVideoToMediaStore(Z)V

    .line 377
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->dismissProgress()V

    .line 378
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isVideoCaptureIntent()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 379
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isQuickCapture()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 380
    invoke-virtual {p0, v3}, Lcom/android/camera/actor/VideoActor;->doReturnToCaller(Z)V

    .line 386
    :cond_5
    :goto_1
    iput-boolean v4, p0, Lcom/android/camera/actor/VideoEffectsActor;->mEffectsDisplayResult:Z

    .line 389
    iget-boolean v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoCameraClosed:Z

    if-eqz v0, :cond_2

    .line 390
    invoke-virtual {p0}, Lcom/android/camera/actor/VideoActor;->closeVideoFileDescriptor()V

    goto :goto_0

    .line 382
    :cond_6
    invoke-virtual {p0}, Lcom/android/camera/actor/VideoActor;->showAlert()V

    goto :goto_1

    .line 392
    :cond_7
    if-ne p2, v5, :cond_9

    .line 393
    const-string v0, "VideoEffectsActor"

    const-string v1, "effectMsg == EffectsRecorder.EFFECT_MSG_PREVIEW_RUNNING"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraState()I

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isCameraClosed()Z

    move-result v0

    if-nez v0, :cond_8

    .line 395
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0, v3}, Lcom/android/camera/Camera;->setCameraState(I)V

    .line 396
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getFocusManager()Lcom/android/camera/FocusManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->onPreviewStarted()V

    .line 399
    :cond_8
    iget v0, p0, Lcom/android/camera/actor/VideoEffectsActor;->mEffectType:I

    if-ne v0, v3, :cond_2

    .line 400
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getFocusManager()Lcom/android/camera/FocusManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/FocusManager;->overrideFocusMode(Ljava/lang/String;)V

    .line 401
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0, v4}, Lcom/android/camera/Camera;->applyParameterForFocus(Z)V

    .line 402
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0, v5}, Lcom/android/camera/Camera;->switchShutter(I)V

    .line 403
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getShutterManager()Lcom/android/camera/manager/ShutterManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera/manager/ShutterManager;->setCancelButtonEnabled(Z)V

    .line 404
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getShutterManager()Lcom/android/camera/manager/ShutterManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera/manager/ShutterManager;->setVideoShutterEnabled(Z)V

    goto/16 :goto_0

    .line 406
    :cond_9
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 407
    packed-switch p2, :pswitch_data_0

    goto/16 :goto_0

    .line 409
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getFocusManager()Lcom/android/camera/FocusManager;

    move-result-object v0

    const-string v1, "infinity"

    invoke-virtual {v0, v1}, Lcom/android/camera/FocusManager;->overrideFocusMode(Ljava/lang/String;)V

    .line 410
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0, v4}, Lcom/android/camera/Camera;->applyParameterForFocus(Z)V

    .line 411
    const-string v0, "VideoEffectsActor"

    const-string v1, "msg is EffectsRecorder.EFFECT_MSG_STARTED_LEARNING"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    iget-object v1, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    const v2, 0x7f0c000d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/actor/VideoEffectsActor;->mEffectApplyTime:I

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/Camera;->showInfo(Ljava/lang/String;I)V

    .line 413
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0, v5}, Lcom/android/camera/Camera;->switchShutter(I)V

    .line 414
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getShutterManager()Lcom/android/camera/manager/ShutterManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera/manager/ShutterManager;->setCancelButtonEnabled(Z)V

    .line 415
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getShutterManager()Lcom/android/camera/manager/ShutterManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/camera/manager/ShutterManager;->setVideoShutterEnabled(Z)V

    .line 416
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->setViewState(I)V

    goto/16 :goto_0

    .line 419
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/camera/actor/VideoEffectsActor;->updateEffectRecordingUI()V

    .line 420
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getShutterManager()Lcom/android/camera/manager/ShutterManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera/manager/ShutterManager;->setVideoShutterEnabled(Z)V

    .line 421
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getFocusManager()Lcom/android/camera/FocusManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera/FocusManager;->setAeLock(Z)V

    .line 422
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getFocusManager()Lcom/android/camera/FocusManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera/FocusManager;->setAwbLock(Z)V

    .line 423
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0, v4}, Lcom/android/camera/Camera;->applyParameterForFocus(Z)V

    .line 426
    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->dismissInfo()V

    .line 427
    invoke-virtual {p0, v4}, Lcom/android/camera/actor/VideoActor;->hideOtherSettings(Z)V

    goto/16 :goto_0

    .line 407
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onOrientationChanged(I)V
    .locals 1
    .parameter "orientation"

    .prologue
    .line 608
    invoke-direct {p0}, Lcom/android/camera/actor/VideoEffectsActor;->effectActive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/actor/VideoEffectsActor;->mEffectsRecorder:Lcom/android/camera/actor/EffectsRecorder;

    if-eqz v0, :cond_0

    .line 609
    iget-object v0, p0, Lcom/android/camera/actor/VideoEffectsActor;->mEffectsRecorder:Lcom/android/camera/actor/EffectsRecorder;

    invoke-virtual {v0, p1}, Lcom/android/camera/actor/EffectsRecorder;->setOrientationHint(I)V

    .line 611
    :cond_0
    return-void
.end method

.method public onRestoreSettings()V
    .locals 0

    .prologue
    .line 615
    invoke-direct {p0}, Lcom/android/camera/actor/VideoEffectsActor;->releaseEffects()V

    .line 616
    invoke-super {p0}, Lcom/android/camera/actor/VideoActor;->onRestoreSettings()V

    .line 617
    return-void
.end method

.method public onStateChange(Z)V
    .locals 3
    .parameter "surfaceReadyForCamera"

    .prologue
    .line 591
    const-string v0, "VideoEffectsActor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Effects report, surfaceTexture ready for camera = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "effect is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/camera/actor/VideoEffectsActor;->effectActive()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mVideoCameraClosed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/actor/VideoActor;->mVideoCameraClosed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    iput-boolean p1, p0, Lcom/android/camera/actor/VideoEffectsActor;->mConnectApiReady:Z

    .line 594
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0, p1}, Lcom/android/camera/Camera;->setSurfaceTextureReady(Z)V

    .line 595
    iget-boolean v0, p0, Lcom/android/camera/actor/VideoEffectsActor;->mConnectApiReady:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/actor/VideoEffectsActor;->effectActive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoCameraClosed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 596
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->setPreviewTextureAsync()V

    .line 598
    :cond_0
    return-void
.end method

.method protected onStopVideoRecordingAsync()V
    .locals 1

    .prologue
    .line 689
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/actor/VideoEffectsActor;->mEffectsDisplayResult:Z

    .line 690
    invoke-super {p0}, Lcom/android/camera/actor/VideoActor;->onStopVideoRecordingAsync()V

    .line 691
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    .line 320
    invoke-super {p0}, Lcom/android/camera/actor/CameraActor;->release()V

    .line 321
    invoke-direct {p0}, Lcom/android/camera/actor/VideoEffectsActor;->releaseEffects()V

    .line 322
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getShutterManager()Lcom/android/camera/manager/ShutterManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/manager/ShutterManager;->setPhotoShutterEnabled(Z)V

    .line 323
    return-void
.end method

.method public releaseRecorder()V
    .locals 0

    .prologue
    .line 541
    invoke-direct {p0}, Lcom/android/camera/actor/VideoEffectsActor;->releaseEffectsRecorder()V

    .line 542
    return-void
.end method

.method protected setAutoFocusMode()V
    .locals 2

    .prologue
    .line 626
    const-string v0, "VideoEffectsActor"

    const-string v1, "setAutoFocusMode"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    return-void
.end method

.method public startEffectDelayTimer()V
    .locals 4

    .prologue
    .line 91
    const-string v0, "VideoEffectsActor"

    const-string v1, "startEffectDelayTimer"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v0, p0, Lcom/android/camera/actor/VideoEffectsActor;->mEffectHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 93
    return-void
.end method

.method public startRecording()V
    .locals 2

    .prologue
    .line 527
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getShutterManager()Lcom/android/camera/manager/ShutterManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/manager/ShutterManager;->setCancelButtonEnabled(Z)V

    .line 528
    invoke-direct {p0}, Lcom/android/camera/actor/VideoEffectsActor;->startEffectRecording()V

    .line 529
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getShutterManager()Lcom/android/camera/manager/ShutterManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/manager/ShutterManager;->setVideoShutterMask(Z)V

    .line 530
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->stopProfileEffectrecorderStart()V

    .line 531
    return-void
.end method

.method public stopEffectDelayTimer()V
    .locals 2

    .prologue
    .line 86
    const-string v0, "VideoEffectsActor"

    const-string v1, "stopEffectDelayTimer"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v0, p0, Lcom/android/camera/actor/VideoEffectsActor;->mEffectHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 88
    return-void
.end method

.method public stopPreview()V
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraState()I

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    invoke-direct {p0}, Lcom/android/camera/actor/VideoEffectsActor;->effectActive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/actor/VideoEffectsActor;->mEffectsRecorder:Lcom/android/camera/actor/EffectsRecorder;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/android/camera/actor/VideoEffectsActor;->mEffectsRecorder:Lcom/android/camera/actor/EffectsRecorder;

    invoke-virtual {v0}, Lcom/android/camera/actor/EffectsRecorder;->release()V

    .line 236
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/actor/VideoEffectsActor;->mEffectsRecorder:Lcom/android/camera/actor/EffectsRecorder;

    .line 239
    :cond_0
    return-void
.end method

.method public stopRecording()V
    .locals 1

    .prologue
    .line 550
    iget-object v0, p0, Lcom/android/camera/actor/VideoEffectsActor;->mEffectsRecorder:Lcom/android/camera/actor/EffectsRecorder;

    invoke-virtual {v0}, Lcom/android/camera/actor/EffectsRecorder;->stopRecording()V

    .line 551
    return-void
.end method

.method public stopVideoOnPause()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 573
    const-string v1, "VideoEffectsActor"

    const-string v2, "stopVideoOnPause()"

    invoke-static {v1, v2}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    const/4 v0, 0x0

    .line 575
    .local v0, videoSaving:Z
    iget-boolean v1, p0, Lcom/android/camera/actor/VideoActor;->mMediaRecorderRecording:Z

    if-eqz v1, :cond_0

    .line 576
    iput-boolean v3, p0, Lcom/android/camera/actor/VideoEffectsActor;->mEffectsDisplayResult:Z

    .line 577
    iput-boolean v3, p0, Lcom/android/camera/actor/VideoActor;->mCallFromOnPause:Z

    .line 578
    invoke-virtual {p0}, Lcom/android/camera/actor/VideoActor;->stopVideoRecordingAsync()V

    .line 579
    invoke-virtual {p0}, Lcom/android/camera/actor/VideoActor;->isVideoProcessing()Z

    move-result v0

    .line 581
    :cond_0
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor;->mVideoSavingTask:Ljava/lang/Thread;

    if-eqz v1, :cond_1

    .line 582
    iget-boolean v1, p0, Lcom/android/camera/actor/VideoActor;->mFilterStartEncode:Z

    if-eqz v1, :cond_1

    .line 583
    invoke-virtual {p0}, Lcom/android/camera/actor/VideoActor;->waitForRecorder()V

    .line 586
    :cond_1
    const-string v1, "VideoEffectsActor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopVideoOnPause()  videoSaving="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mVideoSavingTask="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/actor/VideoActor;->mVideoSavingTask:Ljava/lang/Thread;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mMediaRecorderRecording="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/camera/actor/VideoActor;->mMediaRecorderRecording:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    return-void
.end method

.method public updateEffectRecordingUI()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 326
    const-string v0, "VideoEffectsActor"

    const-string v1, "updateEffectRecordingUI()"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    iget-boolean v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoCameraClosed:Z

    if-nez v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->keepScreenOnAwhile()V

    .line 329
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->dismissProgress()V

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getShutterManager()Lcom/android/camera/manager/ShutterManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/manager/ShutterManager;->setVideoShutterEnabled(Z)V

    .line 332
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getShutterManager()Lcom/android/camera/manager/ShutterManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/manager/ShutterManager;->setCancelButtonEnabled(Z)V

    .line 333
    return-void
.end method

.method public updateEffectSelection()Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 127
    iget v2, p0, Lcom/android/camera/actor/VideoEffectsActor;->mEffectType:I

    .line 128
    .local v2, previousEffectType:I
    iget-object v1, p0, Lcom/android/camera/actor/VideoEffectsActor;->mEffectParameter:Ljava/lang/Object;

    .line 129
    .local v1, previousEffectParameter:Ljava/lang/Object;
    iget-object v3, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->getEffectType()I

    move-result v3

    iput v3, p0, Lcom/android/camera/actor/VideoEffectsActor;->mEffectType:I

    .line 130
    iget-object v3, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->getEffectParameter()Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/actor/VideoEffectsActor;->mEffectParameter:Ljava/lang/Object;

    .line 131
    const-string v3, "VideoEffectsActor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateEffectSelection,mEffectType = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/camera/actor/VideoEffectsActor;->mEffectType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",mEffectParameter = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/camera/actor/VideoEffectsActor;->mEffectParameter:Ljava/lang/Object;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",previousEffectType = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",previousEffectParameter = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget v3, p0, Lcom/android/camera/actor/VideoEffectsActor;->mEffectType:I

    if-ne v3, v2, :cond_0

    .line 136
    iget-object v3, p0, Lcom/android/camera/actor/VideoEffectsActor;->mEffectParameter:Ljava/lang/Object;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/camera/actor/VideoEffectsActor;->mEffectParameter:Ljava/lang/Object;

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 137
    const-string v3, "VideoEffectsActor"

    const-string v5, "mEffectParameter.equals(previousEffectParameter)"

    invoke-static {v3, v5}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 169
    :goto_0
    return v3

    .line 141
    :cond_0
    iget v3, p0, Lcom/android/camera/actor/VideoEffectsActor;->mEffectType:I

    const/4 v6, 0x2

    if-ne v3, v6, :cond_2

    iget-object v3, p0, Lcom/android/camera/actor/VideoEffectsActor;->mEffectParameter:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    const-string v6, "gallery"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v1, :cond_1

    const-string v3, "gallery"

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 144
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.PICK"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 145
    .local v0, i:Landroid/content/Intent;
    sget-object v3, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v4, "video/*"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    const-string v3, "android.intent.extra.LOCAL_ONLY"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 147
    iget-object v3, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    const/16 v4, 0x3e8

    invoke-virtual {v3, v0, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    move v3, v5

    .line 148
    goto :goto_0

    .line 150
    .end local v0           #i:Landroid/content/Intent;
    :cond_2
    if-nez v2, :cond_4

    .line 152
    const-string v3, "VideoEffectsActor"

    const-string v6, "previousEffectType == EffectsRecorder.EFFECT_NONE"

    invoke-static {v3, v6}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v3, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->getReviewManager()Lcom/android/camera/manager/ReviewManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/manager/ViewManager;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0}, Lcom/android/camera/actor/VideoEffectsActor;->effectActive()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 155
    iput-boolean v5, p0, Lcom/android/camera/actor/VideoEffectsActor;->mNeedReLearningEffect:Z

    move v3, v5

    .line 156
    goto :goto_0

    :cond_3
    move v3, v4

    .line 158
    goto :goto_0

    .line 161
    :cond_4
    const-string v3, "VideoEffectsActor"

    const-string v4, "mEffectsRecorder.setEffect(mEffectType, mEffectParameter"

    invoke-static {v3, v4}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v3, p0, Lcom/android/camera/actor/VideoEffectsActor;->mEffectsRecorder:Lcom/android/camera/actor/EffectsRecorder;

    iget v4, p0, Lcom/android/camera/actor/VideoEffectsActor;->mEffectType:I

    iget-object v6, p0, Lcom/android/camera/actor/VideoEffectsActor;->mEffectParameter:Ljava/lang/Object;

    invoke-virtual {v3, v4, v6}, Lcom/android/camera/actor/EffectsRecorder;->setEffect(ILjava/lang/Object;)V

    .line 163
    iget v3, p0, Lcom/android/camera/actor/VideoEffectsActor;->mEffectType:I

    if-ne v3, v5, :cond_5

    .line 164
    iget-object v3, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Lcom/android/camera/Camera;->switchShutter(I)V

    .line 165
    iget-object v3, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->getShutterManager()Lcom/android/camera/manager/ShutterManager;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/android/camera/manager/ShutterManager;->setCancelButtonEnabled(Z)V

    .line 166
    iget-object v3, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->getShutterManager()Lcom/android/camera/manager/ShutterManager;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/android/camera/manager/ShutterManager;->setVideoShutterEnabled(Z)V

    :cond_5
    move v3, v5

    .line 169
    goto/16 :goto_0
.end method
