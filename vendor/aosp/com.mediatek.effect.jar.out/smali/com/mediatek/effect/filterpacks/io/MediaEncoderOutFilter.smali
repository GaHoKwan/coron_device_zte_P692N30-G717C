.class public Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;
.super Landroid/filterfw/core/Filter;
.source "MediaEncoderOutFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter$OnRecordingDoneListener;
    }
.end annotation


# static fields
.field private static final NO_AUDIO_SOURCE:I = -0x1

.field private static mCount:[I


# instance fields
.field private isRunFirstClose:Z

.field private isSubmitFirstClose:Z

.field private mAudioSource:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "audioSource"
    .end annotation
.end field

.field private mBitRate:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "bitrate"
    .end annotation
.end field

.field private mCameraReleasedListener:Landroid/media/MediaRecorder$OnInfoListener;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "releasedListener"
    .end annotation
.end field

.field private mCaptureTimeLapse:Z

.field private mContext:Landroid/filterfw/core/FilterContext;

.field private mEffectPlayer:Lcom/mediatek/effect/player/EffectPlayer;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "effectplayer"
    .end annotation
.end field

.field private mEndTime:J
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "endtime"
    .end annotation
.end field

.field private mErrorListener:Landroid/media/MediaRecorder$OnErrorListener;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "errorListener"
    .end annotation
.end field

.field private mFd:Ljava/io/FileDescriptor;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "outputFileDescriptor"
    .end annotation
.end field

.field private mFps:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "framerate"
    .end annotation
.end field

.field private mHeight:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "height"
    .end annotation
.end field

.field private mInfoListener:Landroid/media/MediaRecorder$OnInfoListener;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "infoListener"
    .end annotation
.end field

.field private mIsFromMediaPlayer:Z
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "isFromMediaPlayer"
    .end annotation
.end field

.field private mIsLivePhoto:Z
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "livephoto"
    .end annotation
.end field

.field private mLastTimeLapseFrameRealTimestampNs:J

.field private mLogVerbose:Z

.field private mMaxDurationMs:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "maxDurationMs"
    .end annotation
.end field

.field private mMaxFileSize:J
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "maxFileSize"
    .end annotation
.end field

.field private mMediaRecorder:Landroid/media/MediaRecorder;

.field private mMuteAudio:Z
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "muteAudio"
    .end annotation
.end field

.field private mNumFramesEncoded:I

.field private mOrientationHint:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "orientationHint"
    .end annotation
.end field

.field private mOutputFile:Ljava/lang/String;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "outputFile"
    .end annotation
.end field

.field private mOutputFormat:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "outputFormat"
    .end annotation
.end field

.field private mProfile:Landroid/media/CamcorderProfile;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "recordingProfile"
    .end annotation
.end field

.field private mProgram:Landroid/filterfw/core/ShaderProgram;

.field private mRecording:Z
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "recording"
    .end annotation
.end field

.field private mRecordingActive:Z

.field private mRecordingDoneListener:Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter$OnRecordingDoneListener;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "recordingDoneListener"
    .end annotation
.end field

.field private mScreen:Landroid/filterfw/core/GLFrame;

.field private mSourceRegion:Landroid/filterfw/geometry/Quad;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "inputRegion"
    .end annotation
.end field

.field private mSurfaceId:I

.field private mTimeBetweenTimeLapseFrameCaptureUs:J
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "timelapseRecordingIntervalUs"
    .end annotation
.end field

.field private mTimestampNs:J

.field private mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

.field private mVideoEncoder:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "videoEncoder"
    .end annotation
.end field

.field private mWidth:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "width"
    .end annotation
.end field

.field private recorderStartTimestampNs:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 68
    const/4 v0, 0x1

    new-array v0, v0, [I

    aput v1, v0, v1

    sput-object v0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mCount:[I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 13
    .parameter "name"

    .prologue
    const/high16 v12, 0x3f80

    const/4 v11, 0x0

    const-wide/16 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 244
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 69
    new-instance v4, Lcom/mediatek/effect/filterpacks/MyUtility;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mCount:[I

    invoke-direct {v4, v5, v6}, Lcom/mediatek/effect/filterpacks/MyUtility;-><init>(Ljava/lang/String;[I)V

    iput-object v4, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    .line 79
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mRecording:Z

    .line 83
    new-instance v4, Ljava/lang/String;

    const-string v5, "/sdcard/MediaEncoderOut.mp4"

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mOutputFile:Ljava/lang/String;

    .line 87
    iput-object v8, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mFd:Ljava/io/FileDescriptor;

    .line 93
    const/4 v4, -0x1

    iput v4, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mAudioSource:I

    .line 100
    iput-object v8, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

    .line 106
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mMuteAudio:Z

    .line 114
    iput-object v8, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mCameraReleasedListener:Landroid/media/MediaRecorder$OnInfoListener;

    .line 121
    iput-object v8, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mErrorListener:Landroid/media/MediaRecorder$OnErrorListener;

    .line 127
    iput-object v8, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mRecordingDoneListener:Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter$OnRecordingDoneListener;

    .line 134
    iput v7, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mOrientationHint:I

    .line 141
    iput-object v8, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mProfile:Landroid/media/CamcorderProfile;

    .line 146
    iput v7, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mWidth:I

    .line 151
    iput v7, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mHeight:I

    .line 156
    const/16 v4, 0x1e

    iput v4, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mFps:I

    .line 161
    const v4, 0x7a1200

    iput v4, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mBitRate:I

    .line 167
    const/4 v4, 0x2

    iput v4, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mOutputFormat:I

    .line 173
    const/4 v4, 0x2

    iput v4, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mVideoEncoder:I

    .line 187
    iput-wide v9, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mMaxFileSize:J

    .line 193
    iput v7, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mMaxDurationMs:I

    .line 196
    iput-boolean v7, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mIsLivePhoto:Z

    .line 202
    iput-wide v9, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mTimeBetweenTimeLapseFrameCaptureUs:J

    .line 205
    iput-boolean v7, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mIsFromMediaPlayer:Z

    .line 208
    iput-object v8, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mEffectPlayer:Lcom/mediatek/effect/player/EffectPlayer;

    .line 210
    iput-wide v9, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mEndTime:J

    .line 221
    iput-boolean v7, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mRecordingActive:Z

    .line 222
    iput-wide v9, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mTimestampNs:J

    .line 223
    iput-wide v9, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mLastTimeLapseFrameRealTimestampNs:J

    .line 224
    iput v7, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mNumFramesEncoded:I

    .line 227
    iput-boolean v7, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mCaptureTimeLapse:Z

    .line 231
    iput-boolean v7, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->isSubmitFirstClose:Z

    .line 232
    iput-boolean v7, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->isRunFirstClose:Z

    .line 633
    iput-wide v9, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->recorderStartTimestampNs:J

    .line 245
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mLogVerbose:Z

    .line 246
    iget-object v4, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v5, 0x64

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "() "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 247
    iget-object v4, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    sget-object v5, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mCount:[I

    invoke-virtual {v4, v5}, Lcom/mediatek/effect/filterpacks/MyUtility;->setIDandIncrease([I)V

    .line 249
    new-instance v0, Landroid/filterfw/geometry/Point;

    invoke-direct {v0, v11, v11}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 250
    .local v0, bl:Landroid/filterfw/geometry/Point;
    new-instance v1, Landroid/filterfw/geometry/Point;

    invoke-direct {v1, v12, v11}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 251
    .local v1, br:Landroid/filterfw/geometry/Point;
    new-instance v2, Landroid/filterfw/geometry/Point;

    invoke-direct {v2, v11, v12}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 252
    .local v2, tl:Landroid/filterfw/geometry/Point;
    new-instance v3, Landroid/filterfw/geometry/Point;

    invoke-direct {v3, v12, v12}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 253
    .local v3, tr:Landroid/filterfw/geometry/Point;
    new-instance v4, Landroid/filterfw/geometry/Quad;

    invoke-direct {v4, v0, v1, v2, v3}, Landroid/filterfw/geometry/Quad;-><init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V

    iput-object v4, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mSourceRegion:Landroid/filterfw/geometry/Quad;

    .line 254
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;)Lcom/mediatek/effect/filterpacks/MyUtility;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;)Lcom/mediatek/effect/player/EffectPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mEffectPlayer:Lcom/mediatek/effect/player/EffectPlayer;

    return-object v0
.end method

.method private startRecording(Landroid/filterfw/core/FilterContext;)V
    .locals 12
    .parameter "context"

    .prologue
    const/16 v11, 0x64

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 379
    iget-object v5, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const-string v8, "Starting recording"

    invoke-virtual {v5, v11, v8}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 382
    new-instance v2, Landroid/filterfw/core/MutableFrameFormat;

    const/4 v5, 0x2

    const/4 v8, 0x3

    invoke-direct {v2, v5, v8}, Landroid/filterfw/core/MutableFrameFormat;-><init>(II)V

    .line 384
    .local v2, screenFormat:Landroid/filterfw/core/MutableFrameFormat;
    const/4 v5, 0x4

    invoke-virtual {v2, v5}, Landroid/filterfw/core/MutableFrameFormat;->setBytesPerSample(I)V

    .line 387
    iget v5, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mWidth:I

    if-lez v5, :cond_2

    iget v5, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mHeight:I

    if-lez v5, :cond_2

    move v4, v6

    .line 390
    .local v4, widthHeightSpecified:Z
    :goto_0
    iget-object v5, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mProfile:Landroid/media/CamcorderProfile;

    if-eqz v5, :cond_3

    if-nez v4, :cond_3

    .line 391
    iget-object v5, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v5, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    .line 392
    .local v3, width:I
    iget-object v5, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v5, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    .line 397
    .local v1, height:I
    :goto_1
    invoke-virtual {v2, v3, v1}, Landroid/filterfw/core/MutableFrameFormat;->setDimensions(II)V

    .line 398
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v5

    const/16 v8, 0x65

    const-wide/16 v9, 0x0

    invoke-virtual {v5, v2, v8, v9, v10}, Landroid/filterfw/core/FrameManager;->newBoundFrame(Landroid/filterfw/core/FrameFormat;IJ)Landroid/filterfw/core/Frame;

    move-result-object v5

    check-cast v5, Landroid/filterfw/core/GLFrame;

    iput-object v5, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mScreen:Landroid/filterfw/core/GLFrame;

    .line 403
    new-instance v5, Landroid/media/MediaRecorder;

    invoke-direct {v5}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v5, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 404
    invoke-direct {p0}, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->updateMediaRecorderParams()V

    .line 406
    iget-object v5, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    new-instance v8, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter$1;

    invoke-direct {v8, p0}, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter$1;-><init>(Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;)V

    invoke-virtual {v5, v8}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 424
    :try_start_0
    iget-object v5, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v5}, Landroid/media/MediaRecorder;->prepare()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 437
    iget-object v5, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v5}, Landroid/media/MediaRecorder;->start()V

    .line 438
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->recorderStartTimestampNs:J

    .line 439
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    move-result-object v5

    iget-object v8, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v5, v8}, Landroid/filterfw/core/GLEnvironment;->registerSurfaceFromMediaRecorder(Landroid/media/MediaRecorder;)I

    move-result v5

    iput v5, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mSurfaceId:I

    .line 441
    iget-boolean v5, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mLogVerbose:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Open: registering surface "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mSurfaceId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " from Mediarecorder"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v11, v8}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 442
    :cond_0
    iput v7, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mNumFramesEncoded:I

    .line 443
    iput-boolean v6, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mRecordingActive:Z

    .line 446
    iget-object v5, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mCameraReleasedListener:Landroid/media/MediaRecorder$OnInfoListener;

    if-eqz v5, :cond_1

    .line 447
    iget-object v5, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mCameraReleasedListener:Landroid/media/MediaRecorder$OnInfoListener;

    iget-object v7, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v8, -0x1

    invoke-interface {v5, v7, v6, v8}, Landroid/media/MediaRecorder$OnInfoListener;->onInfo(Landroid/media/MediaRecorder;II)V

    .line 450
    :cond_1
    return-void

    .end local v1           #height:I
    .end local v3           #width:I
    .end local v4           #widthHeightSpecified:Z
    :cond_2
    move v4, v7

    .line 387
    goto/16 :goto_0

    .line 394
    .restart local v4       #widthHeightSpecified:Z
    :cond_3
    iget v3, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mWidth:I

    .line 395
    .restart local v3       #width:I
    iget v1, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mHeight:I

    .restart local v1       #height:I
    goto :goto_1

    .line 425
    :catch_0
    move-exception v0

    .line 426
    .local v0, e:Ljava/lang/IllegalStateException;
    throw v0

    .line 427
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .line 428
    .local v0, e:Ljava/io/IOException;
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "IOException inMediaRecorder.prepare()!"

    invoke-direct {v5, v6, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 430
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 431
    .local v0, e:Ljava/lang/Exception;
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Unknown Exception inMediaRecorder.prepare()!"

    invoke-direct {v5, v6, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method private declared-synchronized stopRecording(Landroid/filterfw/core/FilterContext;)V
    .locals 9
    .parameter "context"

    .prologue
    const/4 v8, 0x1

    .line 574
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v3, 0x64

    const-string v4, "Stopping recording"

    invoke-virtual {v2, v3, v4}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 576
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mRecordingActive:Z

    .line 577
    const/4 v2, 0x0

    iput v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mNumFramesEncoded:I

    .line 578
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->recorderStartTimestampNs:J

    .line 580
    iget-boolean v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->isSubmitFirstClose:Z

    if-eq v2, v8, :cond_0

    .line 581
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    move-result-object v1

    .line 587
    .local v1, glEnv:Landroid/filterfw/core/GLEnvironment;
    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v3, 0x64

    const-string v4, "Unregistering surface %d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v7, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mSurfaceId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 588
    iget v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mSurfaceId:I

    invoke-virtual {v1, v2}, Landroid/filterfw/core/GLEnvironment;->unregisterSurfaceId(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 592
    .end local v1           #glEnv:Landroid/filterfw/core/GLEnvironment;
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->stop()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 597
    :try_start_2
    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->release()V

    .line 598
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 600
    iget-boolean v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->isSubmitFirstClose:Z

    if-eq v2, v8, :cond_1

    .line 601
    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mScreen:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v2}, Landroid/filterfw/core/GLFrame;->release()Landroid/filterfw/core/Frame;

    .line 602
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mScreen:Landroid/filterfw/core/GLFrame;

    .line 608
    :cond_1
    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mRecordingDoneListener:Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter$OnRecordingDoneListener;

    if-eqz v2, :cond_2

    .line 609
    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mRecordingDoneListener:Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter$OnRecordingDoneListener;

    invoke-interface {v2}, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter$OnRecordingDoneListener;->onRecordingDone()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 611
    :cond_2
    monitor-exit p0

    return-void

    .line 593
    :catch_0
    move-exception v0

    .line 594
    .local v0, e:Ljava/lang/RuntimeException;
    :try_start_3
    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v3, 0x65

    const-string v4, "MediaRecorder.stop() failed!"

    invoke-virtual {v2, v3, v4}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 595
    new-instance v2, Landroid/filterpacks/videosink/MediaRecorderStopException;

    const-string v3, "MediaRecorder.stop() failed!"

    invoke-direct {v2, v3, v0}, Landroid/filterpacks/videosink/MediaRecorderStopException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 574
    .end local v0           #e:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private updateMediaRecorderParams()V
    .locals 8

    .prologue
    const/4 v3, 0x1

    .line 299
    iget-wide v4, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mTimeBetweenTimeLapseFrameCaptureUs:J

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-lez v2, :cond_3

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mCaptureTimeLapse:Z

    .line 300
    const/4 v0, 0x2

    .line 301
    .local v0, GRALLOC_BUFFER:I
    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 302
    iget-boolean v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mCaptureTimeLapse:Z

    if-nez v2, :cond_0

    iget v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mAudioSource:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    iget-boolean v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mMuteAudio:Z

    if-nez v2, :cond_0

    .line 303
    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v4, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mAudioSource:I

    invoke-virtual {v2, v4}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 305
    :cond_0
    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mProfile:Landroid/media/CamcorderProfile;

    if-eqz v2, :cond_5

    .line 307
    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v4, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mProfile:Landroid/media/CamcorderProfile;

    iget v4, v4, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-virtual {v2, v4}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 308
    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v4, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mProfile:Landroid/media/CamcorderProfile;

    iget v4, v4, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {v2, v4}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    .line 311
    iget v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mWidth:I

    if-lez v2, :cond_4

    iget v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mHeight:I

    if-lez v2, :cond_4

    .line 312
    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v4, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mWidth:I

    iget v5, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mHeight:I

    invoke-virtual {v2, v4, v5}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    .line 316
    :goto_1
    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v4, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mProfile:Landroid/media/CamcorderProfile;

    iget v4, v4, Landroid/media/CamcorderProfile;->videoBitRate:I

    invoke-virtual {v2, v4}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    .line 317
    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v4, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mProfile:Landroid/media/CamcorderProfile;

    iget v4, v4, Landroid/media/CamcorderProfile;->videoCodec:I

    invoke-virtual {v2, v4}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    .line 318
    iget-boolean v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mMuteAudio:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mCaptureTimeLapse:Z

    if-nez v2, :cond_1

    .line 319
    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v4, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mProfile:Landroid/media/CamcorderProfile;

    iget v4, v4, Landroid/media/CamcorderProfile;->audioBitRate:I

    invoke-virtual {v2, v4}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    .line 320
    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v4, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mProfile:Landroid/media/CamcorderProfile;

    iget v4, v4, Landroid/media/CamcorderProfile;->audioChannels:I

    invoke-virtual {v2, v4}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    .line 321
    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v4, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mProfile:Landroid/media/CamcorderProfile;

    iget v4, v4, Landroid/media/CamcorderProfile;->audioSampleRate:I

    invoke-virtual {v2, v4}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    .line 322
    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v4, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mProfile:Landroid/media/CamcorderProfile;

    iget v4, v4, Landroid/media/CamcorderProfile;->audioCodec:I

    invoke-virtual {v2, v4}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 324
    :cond_1
    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameRate:I

    iput v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mFps:I

    .line 332
    :goto_2
    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v4, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mOrientationHint:I

    invoke-virtual {v2, v4}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    .line 333
    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v4, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

    invoke-virtual {v2, v4}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 335
    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v4, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mErrorListener:Landroid/media/MediaRecorder$OnErrorListener;

    invoke-virtual {v2, v4}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 336
    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mFd:Ljava/io/FileDescriptor;

    if-eqz v2, :cond_6

    .line 337
    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v4, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mFd:Ljava/io/FileDescriptor;

    invoke-virtual {v2, v4}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V

    .line 342
    :goto_3
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-wide v4, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mMaxFileSize:J

    invoke-virtual {v2, v4, v5}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 352
    :goto_4
    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v4, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mMaxDurationMs:I

    invoke-virtual {v2, v4}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    .line 354
    iget-boolean v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mIsLivePhoto:Z

    if-eqz v2, :cond_2

    .line 355
    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-static {v2, v3}, Lcom/mediatek/media/MediaRecorderEx;->setLivePhotoTag(Landroid/media/MediaRecorder;I)V

    .line 357
    :cond_2
    return-void

    .line 299
    .end local v0           #GRALLOC_BUFFER:I
    :cond_3
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 314
    .restart local v0       #GRALLOC_BUFFER:I
    :cond_4
    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v4, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mProfile:Landroid/media/CamcorderProfile;

    iget v4, v4, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget-object v5, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mProfile:Landroid/media/CamcorderProfile;

    iget v5, v5, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {v2, v4, v5}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    goto/16 :goto_1

    .line 326
    :cond_5
    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v4, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mBitRate:I

    invoke-virtual {v2, v4}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    .line 327
    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v4, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mOutputFormat:I

    invoke-virtual {v2, v4}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 328
    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v4, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mVideoEncoder:I

    invoke-virtual {v2, v4}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    .line 329
    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v4, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mWidth:I

    iget v5, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mHeight:I

    invoke-virtual {v2, v4, v5}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    .line 330
    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v4, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mFps:I

    invoke-virtual {v2, v4}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    goto :goto_2

    .line 339
    :cond_6
    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v4, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mOutputFile:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    goto :goto_3

    .line 343
    :catch_0
    move-exception v1

    .line 349
    .local v1, e:Ljava/lang/Exception;
    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v4, 0x77

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Setting maxFileSize on MediaRecorder unsuccessful! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    goto :goto_4
.end method

.method private updateSourceRegion()V
    .locals 2

    .prologue
    .line 287
    new-instance v0, Landroid/filterfw/geometry/Quad;

    invoke-direct {v0}, Landroid/filterfw/geometry/Quad;-><init>()V

    .line 288
    .local v0, flippedRegion:Landroid/filterfw/geometry/Quad;
    iget-object v1, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mSourceRegion:Landroid/filterfw/geometry/Quad;

    iget-object v1, v1, Landroid/filterfw/geometry/Quad;->p2:Landroid/filterfw/geometry/Point;

    iput-object v1, v0, Landroid/filterfw/geometry/Quad;->p0:Landroid/filterfw/geometry/Point;

    .line 289
    iget-object v1, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mSourceRegion:Landroid/filterfw/geometry/Quad;

    iget-object v1, v1, Landroid/filterfw/geometry/Quad;->p3:Landroid/filterfw/geometry/Point;

    iput-object v1, v0, Landroid/filterfw/geometry/Quad;->p1:Landroid/filterfw/geometry/Point;

    .line 290
    iget-object v1, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mSourceRegion:Landroid/filterfw/geometry/Quad;

    iget-object v1, v1, Landroid/filterfw/geometry/Quad;->p0:Landroid/filterfw/geometry/Point;

    iput-object v1, v0, Landroid/filterfw/geometry/Quad;->p2:Landroid/filterfw/geometry/Point;

    .line 291
    iget-object v1, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mSourceRegion:Landroid/filterfw/geometry/Quad;

    iget-object v1, v1, Landroid/filterfw/geometry/Quad;->p1:Landroid/filterfw/geometry/Point;

    iput-object v1, v0, Landroid/filterfw/geometry/Quad;->p3:Landroid/filterfw/geometry/Point;

    .line 292
    iget-object v1, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    invoke-virtual {v1, v0}, Landroid/filterfw/core/ShaderProgram;->setSourceRegion(Landroid/filterfw/geometry/Quad;)V

    .line 293
    return-void
.end method


# virtual methods
.method public close(Landroid/filterfw/core/FilterContext;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 615
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v1, 0x64

    const-string v2, "Closing"

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 616
    iget-boolean v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mRecordingActive:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->stopRecording(Landroid/filterfw/core/FilterContext;)V

    .line 617
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mContext:Landroid/filterfw/core/FilterContext;

    .line 618
    return-void
.end method

.method public fieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .locals 4
    .parameter "name"
    .parameter "context"

    .prologue
    .line 271
    iget-boolean v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mLogVerbose:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v1, 0x64

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Port "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has been updated"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 272
    :cond_0
    const-string v0, "recording"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 283
    :cond_1
    :goto_0
    return-void

    .line 273
    :cond_2
    const-string v0, "inputRegion"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 274
    invoke-virtual {p0}, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->updateSourceRegion()V

    goto :goto_0

    .line 279
    :cond_3
    invoke-virtual {p0}, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mRecordingActive:Z

    if-eqz v0, :cond_1

    .line 280
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot change recording parameters when the filter is recording!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 258
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v1, 0x64

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "~"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 259
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 260
    return-void
.end method

.method public open(Landroid/filterfw/core/FilterContext;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 370
    iget-boolean v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mLogVerbose:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v1, 0x64

    const-string v2, "Opening"

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 371
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->updateSourceRegion()V

    .line 372
    iget-boolean v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mRecording:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->startRecording(Landroid/filterfw/core/FilterContext;)V

    .line 373
    :cond_1
    iput-boolean v3, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->isSubmitFirstClose:Z

    .line 374
    iput-boolean v3, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->isRunFirstClose:Z

    .line 375
    iput-object p1, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mContext:Landroid/filterfw/core/FilterContext;

    .line 376
    return-void
.end method

.method public prepare(Landroid/filterfw/core/FilterContext;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 361
    iget-boolean v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mLogVerbose:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v1, 0x64

    const-string v2, "Preparing"

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 363
    :cond_0
    invoke-static {p1}, Landroid/filterfw/core/ShaderProgram;->createIdentity(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/ShaderProgram;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    .line 365
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mRecordingActive:Z

    .line 366
    return-void
.end method

.method public declared-synchronized process(Landroid/filterfw/core/FilterContext;)V
    .locals 8
    .parameter "context"

    .prologue
    const/4 v7, 0x1

    .line 498
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    move-result-object v0

    .line 500
    .local v0, glEnv:Landroid/filterfw/core/GLEnvironment;
    const-string v2, "videoframe"

    invoke-virtual {p0, v2}, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v1

    .line 503
    .local v1, input:Landroid/filterfw/core/Frame;
    iget-boolean v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mRecordingActive:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mRecording:Z

    if-eqz v2, :cond_0

    .line 504
    invoke-direct {p0, p1}, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->startRecording(Landroid/filterfw/core/FilterContext;)V

    .line 507
    :cond_0
    iget-boolean v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mRecordingActive:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mRecording:Z

    if-nez v2, :cond_1

    .line 508
    invoke-direct {p0, p1}, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->stopRecording(Landroid/filterfw/core/FilterContext;)V

    .line 511
    :cond_1
    iget-boolean v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mRecordingActive:Z

    if-nez v2, :cond_3

    .line 513
    const-string v2, "videoframe"

    invoke-virtual {p0, v2}, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->getInputPort(Ljava/lang/String;)Landroid/filterfw/core/InputPort;

    move-result-object v2

    invoke-virtual {v2}, Landroid/filterfw/core/InputPort;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 557
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    .line 517
    :cond_3
    :try_start_1
    iget-boolean v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->isSubmitFirstClose:Z

    if-eq v2, v7, :cond_2

    .line 521
    iget-boolean v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mCaptureTimeLapse:Z

    if-eqz v2, :cond_6

    .line 522
    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->getTimestamp()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->skipFrameAndModifyTimestamp(J)Z

    move-result v2

    if-nez v2, :cond_2

    .line 529
    :goto_1
    iget-boolean v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mIsFromMediaPlayer:Z

    if-eqz v2, :cond_5

    .line 531
    iget-wide v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mEndTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_4

    iget-wide v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mEndTime:J

    iget-wide v4, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mTimestampNs:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_4

    .line 532
    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v3, 0x77

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v5, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mTimestampNs:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " stop recording !"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 533
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->isSubmitFirstClose:Z

    .line 535
    :cond_4
    iget-wide v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mTimestampNs:J

    iget-wide v4, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->recorderStartTimestampNs:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mTimestampNs:J

    .line 539
    :cond_5
    iget v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mSurfaceId:I

    invoke-virtual {v0, v2}, Landroid/filterfw/core/GLEnvironment;->activateSurfaceWithId(I)V

    .line 542
    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    iget-object v3, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mScreen:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v2, v1, v3}, Landroid/filterfw/core/ShaderProgram;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 545
    iget-wide v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mTimestampNs:J

    invoke-virtual {v0, v2, v3}, Landroid/filterfw/core/GLEnvironment;->setSurfaceTimestamp(J)V

    .line 548
    invoke-virtual {v0}, Landroid/filterfw/core/GLEnvironment;->swapBuffers()V

    .line 549
    iget v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mNumFramesEncoded:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mNumFramesEncoded:I

    .line 552
    iget-boolean v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->isSubmitFirstClose:Z

    if-ne v2, v7, :cond_2

    iget-boolean v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->isRunFirstClose:Z

    if-nez v2, :cond_2

    .line 553
    invoke-virtual {p0}, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->stopPrepare()V

    .line 554
    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v3, 0x77

    const-string v4, "Encoder close Thread part 1: wait OnInfo()"

    invoke-virtual {v2, v3, v4}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 555
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->isRunFirstClose:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 498
    .end local v0           #glEnv:Landroid/filterfw/core/GLEnvironment;
    .end local v1           #input:Landroid/filterfw/core/Frame;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 526
    .restart local v0       #glEnv:Landroid/filterfw/core/GLEnvironment;
    .restart local v1       #input:Landroid/filterfw/core/Frame;
    :cond_6
    :try_start_2
    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->getTimestamp()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mTimestampNs:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public setupPorts()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 265
    const-string v0, "videoframe"

    invoke-static {v1, v1}, Landroid/filterfw/format/ImageFormat;->create(II)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 267
    return-void
.end method

.method public skipFrameAndModifyTimestamp(J)Z
    .locals 11
    .parameter "timestampNs"

    .prologue
    const-wide/32 v9, 0x3b9aca00

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v8, 0x64

    .line 453
    iget-boolean v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mLogVerbose:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "skipFrameAndModifyTimestamp("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", recorderStartTimestampNs="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->recorderStartTimestampNs:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v8, v3}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 456
    :cond_0
    iget-wide v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->recorderStartTimestampNs:J

    cmp-long v2, p1, v2

    if-gez v2, :cond_2

    .line 492
    :cond_1
    :goto_0
    return v0

    .line 460
    :cond_2
    iget v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mNumFramesEncoded:I

    if-nez v2, :cond_4

    .line 461
    iput-wide p1, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mLastTimeLapseFrameRealTimestampNs:J

    .line 462
    iput-wide p1, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mTimestampNs:J

    .line 463
    iget-boolean v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mLogVerbose:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "timelapse: FIRST frame, last real t= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mLastTimeLapseFrameRealTimestampNs:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", setting t = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mTimestampNs:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v8, v2}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    :cond_3
    move v0, v1

    .line 466
    goto :goto_0

    .line 472
    :cond_4
    iget v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mNumFramesEncoded:I

    const/4 v3, 0x2

    if-lt v2, v3, :cond_5

    iget-wide v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mLastTimeLapseFrameRealTimestampNs:J

    const-wide/16 v4, 0x3e8

    iget-wide v6, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mTimeBetweenTimeLapseFrameCaptureUs:J

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    cmp-long v2, p1, v2

    if-gez v2, :cond_5

    .line 477
    iget-boolean v1, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mLogVerbose:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const-string v2, "timelapse: skipping intermediate frame"

    invoke-virtual {v1, v8, v2}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    goto :goto_0

    .line 484
    :cond_5
    iget-boolean v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mLogVerbose:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "timelapse: encoding frame, Timestamp t = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", last real t= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mLastTimeLapseFrameRealTimestampNs:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", interval = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mTimeBetweenTimeLapseFrameCaptureUs:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v8, v2}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 487
    :cond_6
    iput-wide p1, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mLastTimeLapseFrameRealTimestampNs:J

    .line 488
    iget-wide v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mTimestampNs:J

    iget v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mFps:I

    int-to-long v4, v0

    div-long v4, v9, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mTimestampNs:J

    .line 489
    iget-boolean v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mLogVerbose:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "timelapse: encoding frame, setting t = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mTimestampNs:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", delta t = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mFps:I

    int-to-long v3, v3

    div-long v3, v9, v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", fps = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mFps:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v8, v2}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    :cond_7
    move v0, v1

    .line 492
    goto/16 :goto_0
.end method

.method public declared-synchronized stopPrepare()V
    .locals 8

    .prologue
    .line 561
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mContext:Landroid/filterfw/core/FilterContext;

    invoke-virtual {v2}, Landroid/filterfw/core/FilterContext;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    move-result-object v1

    .line 563
    .local v1, glEnv:Landroid/filterfw/core/GLEnvironment;
    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mScreen:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v2}, Landroid/filterfw/core/GLFrame;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 564
    .local v0, bb:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 566
    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v3, 0x65

    const-string v4, "Unregistering surface %d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v7, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mSurfaceId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 567
    iget v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mSurfaceId:I

    invoke-virtual {v1, v2}, Landroid/filterfw/core/GLEnvironment;->unregisterSurfaceId(I)V

    .line 569
    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mScreen:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v2}, Landroid/filterfw/core/GLFrame;->release()Landroid/filterfw/core/Frame;

    .line 570
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mScreen:Landroid/filterfw/core/GLFrame;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 571
    monitor-exit p0

    return-void

    .line 561
    .end local v0           #bb:Landroid/graphics/Bitmap;
    .end local v1           #glEnv:Landroid/filterfw/core/GLEnvironment;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public tearDown(Landroid/filterfw/core/FilterContext;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 622
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v1, 0x64

    const-string v2, "tearDown()"

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 625
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    .line 626
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 628
    :cond_0
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mScreen:Landroid/filterfw/core/GLFrame;

    if-eqz v0, :cond_1

    .line 629
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mScreen:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v0}, Landroid/filterfw/core/GLFrame;->release()Landroid/filterfw/core/Frame;

    .line 631
    :cond_1
    return-void
.end method
