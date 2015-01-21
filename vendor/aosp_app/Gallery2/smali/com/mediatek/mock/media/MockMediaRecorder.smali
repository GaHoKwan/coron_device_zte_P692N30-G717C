.class public Lcom/mediatek/mock/media/MockMediaRecorder;
.super Landroid/media/MediaRecorder;
.source "MockMediaRecorder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/mock/media/MockMediaRecorder$HDRecordMode;,
        Lcom/mediatek/mock/media/MockMediaRecorder$EventHandler;,
        Lcom/mediatek/mock/media/MockMediaRecorder$OnInfoListener;,
        Lcom/mediatek/mock/media/MockMediaRecorder$OnErrorListener;,
        Lcom/mediatek/mock/media/MockMediaRecorder$VideoEncoder;,
        Lcom/mediatek/mock/media/MockMediaRecorder$AudioEncoder;,
        Lcom/mediatek/mock/media/MockMediaRecorder$OutputFormat;,
        Lcom/mediatek/mock/media/MockMediaRecorder$VideoSource;,
        Lcom/mediatek/mock/media/MockMediaRecorder$AudioSource;
    }
.end annotation


# static fields
.field public static final MEDIA_RECORDER_ENCODER_ERROR:I = -0x44f

.field public static final MEDIA_RECORDER_ERROR_UNKNOWN:I = 0x1

.field private static final MEDIA_RECORDER_EVENT_INFO:I = 0x2

.field public static final MEDIA_RECORDER_INFO_BITRATE_ADJUSTED:I = 0x382

.field public static final MEDIA_RECORDER_INFO_CAMERA_RELEASE:I = 0x7cf

.field public static final MEDIA_RECORDER_INFO_FPS_ADJUSTED:I = 0x381

.field public static final MEDIA_RECORDER_INFO_MAX_DURATION_REACHED:I = 0x320

.field public static final MEDIA_RECORDER_INFO_MAX_FILESIZE_REACHED:I = 0x321

.field public static final MEDIA_RECORDER_INFO_START_TIMER:I = 0x7ce

.field public static final MEDIA_RECORDER_INFO_UNKNOWN:I = 0x1

.field public static final MEDIA_RECORDER_INFO_WRITE_SLOW:I = 0x383

.field public static final MEDIA_RECORDER_TRACK_INFO_COMPLETION_STATUS:I = 0x3e8

.field public static final MEDIA_RECORDER_TRACK_INFO_DATA_KBYTES:I = 0x3f1

.field public static final MEDIA_RECORDER_TRACK_INFO_DURATION_MS:I = 0x3eb

.field public static final MEDIA_RECORDER_TRACK_INFO_ENCODED_FRAMES:I = 0x3ed

.field public static final MEDIA_RECORDER_TRACK_INFO_INITIAL_DELAY_MS:I = 0x3ef

.field public static final MEDIA_RECORDER_TRACK_INFO_LIST_END:I = 0x7d0

.field public static final MEDIA_RECORDER_TRACK_INFO_LIST_START:I = 0x3e8

.field public static final MEDIA_RECORDER_TRACK_INFO_MAX_CHUNK_DUR_MS:I = 0x3ec

.field public static final MEDIA_RECORDER_TRACK_INFO_PROGRESS_IN_TIME:I = 0x3e9

.field public static final MEDIA_RECORDER_TRACK_INFO_START_OFFSET_MS:I = 0x3f0

.field public static final MEDIA_RECORDER_TRACK_INFO_TYPE:I = 0x3ea

.field public static final MEDIA_RECORDER_TRACK_INTER_CHUNK_TIME_MS:I = 0x3ee

.field private static final TAG:Ljava/lang/String; = "MockMediaRecorder"


# instance fields
.field private mCameraSound:Landroid/media/MediaActionSound;

.field private mContext:Landroid/content/Context;

.field private mEventHandler:Lcom/mediatek/mock/media/MockMediaRecorder$EventHandler;

.field private mFd:Ljava/io/FileDescriptor;

.field private mNativeContext:I

.field protected mOnCameraReleasedListener:Lcom/mediatek/mock/media/MockMediaRecorder$OnInfoListener;

.field private mOnErrorListener:Lcom/mediatek/mock/media/MockMediaRecorder$OnErrorListener;

.field private mOnInfoListener:Lcom/mediatek/mock/media/MockMediaRecorder$OnInfoListener;

.field private mPath:Ljava/lang/String;

.field private mSavingThread:Ljava/lang/Thread;

.field private mSurface:Landroid/view/Surface;

.field private mVideoWriter:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 100
    invoke-direct {p0}, Landroid/media/MediaRecorder;-><init>()V

    .line 61
    new-instance v1, Lcom/mediatek/mock/media/MockMediaRecorder$1;

    invoke-direct {v1, p0}, Lcom/mediatek/mock/media/MockMediaRecorder$1;-><init>(Lcom/mediatek/mock/media/MockMediaRecorder;)V

    iput-object v1, p0, Lcom/mediatek/mock/media/MockMediaRecorder;->mVideoWriter:Ljava/lang/Runnable;

    .line 103
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, looper:Landroid/os/Looper;
    if-eqz v0, :cond_0

    .line 104
    new-instance v1, Lcom/mediatek/mock/media/MockMediaRecorder$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Lcom/mediatek/mock/media/MockMediaRecorder$EventHandler;-><init>(Lcom/mediatek/mock/media/MockMediaRecorder;Lcom/mediatek/mock/media/MockMediaRecorder;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/mediatek/mock/media/MockMediaRecorder;->mEventHandler:Lcom/mediatek/mock/media/MockMediaRecorder$EventHandler;

    .line 110
    :goto_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v1}, Lcom/mediatek/mock/media/MockMediaRecorder;->native_setup(Ljava/lang/Object;)V

    .line 111
    return-void

    .line 105
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 106
    new-instance v1, Lcom/mediatek/mock/media/MockMediaRecorder$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Lcom/mediatek/mock/media/MockMediaRecorder$EventHandler;-><init>(Lcom/mediatek/mock/media/MockMediaRecorder;Lcom/mediatek/mock/media/MockMediaRecorder;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/mediatek/mock/media/MockMediaRecorder;->mEventHandler:Lcom/mediatek/mock/media/MockMediaRecorder$EventHandler;

    goto :goto_0

    .line 108
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/mock/media/MockMediaRecorder;->mEventHandler:Lcom/mediatek/mock/media/MockMediaRecorder$EventHandler;

    goto :goto_0
.end method

.method private _prepare()V
    .locals 0

    .prologue
    .line 384
    return-void
.end method

.method private _setOutputFile(Ljava/io/FileDescriptor;JJ)V
    .locals 0
    .parameter "fd"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 381
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/mock/media/MockMediaRecorder;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/mediatek/mock/media/MockMediaRecorder;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/mock/media/MockMediaRecorder;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/mediatek/mock/media/MockMediaRecorder;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/mock/media/MockMediaRecorder;)Ljava/io/FileDescriptor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/mediatek/mock/media/MockMediaRecorder;->mFd:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/mock/media/MockMediaRecorder;)Lcom/mediatek/mock/media/MockMediaRecorder$OnInfoListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/mediatek/mock/media/MockMediaRecorder;->mOnInfoListener:Lcom/mediatek/mock/media/MockMediaRecorder$OnInfoListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/mock/media/MockMediaRecorder;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Lcom/mediatek/mock/media/MockMediaRecorder;->mNativeContext:I

    return v0
.end method

.method static synthetic access$500(Lcom/mediatek/mock/media/MockMediaRecorder;)Lcom/mediatek/mock/media/MockMediaRecorder$OnErrorListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/mediatek/mock/media/MockMediaRecorder;->mOnErrorListener:Lcom/mediatek/mock/media/MockMediaRecorder$OnErrorListener;

    return-object v0
.end method

.method private final native_finalize()V
    .locals 0

    .prologue
    .line 661
    return-void
.end method

.method private static final native_init()V
    .locals 0

    .prologue
    .line 655
    return-void
.end method

.method private native_reset()V
    .locals 0

    .prologue
    .line 437
    return-void
.end method

.method private final native_setup(Ljava/lang/Object;)V
    .locals 0
    .parameter "mediarecorder_this"

    .prologue
    .line 658
    return-void
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 5
    .parameter "mediarecorder_ref"
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"

    .prologue
    const/16 v4, 0x7cf

    .line 632
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/mock/media/MockMediaRecorder;

    .line 633
    .local v1, mr:Lcom/mediatek/mock/media/MockMediaRecorder;
    if-nez v1, :cond_1

    .line 650
    :cond_0
    :goto_0
    return-void

    .line 637
    :cond_1
    iget-object v2, v1, Lcom/mediatek/mock/media/MockMediaRecorder;->mEventHandler:Lcom/mediatek/mock/media/MockMediaRecorder$EventHandler;

    if-eqz v2, :cond_0

    .line 638
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    if-ne p2, v4, :cond_2

    .line 640
    const-string v2, "MockMediaRecorder"

    const-string v3, "MockMediaRecorder MEDIA_RECORDER_INFO_CAMERA_RELEASE"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    iget-object v2, v1, Lcom/mediatek/mock/media/MockMediaRecorder;->mOnCameraReleasedListener:Lcom/mediatek/mock/media/MockMediaRecorder$OnInfoListener;

    if-eqz v2, :cond_0

    .line 643
    iget-object v2, v1, Lcom/mediatek/mock/media/MockMediaRecorder;->mOnCameraReleasedListener:Lcom/mediatek/mock/media/MockMediaRecorder$OnInfoListener;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v4, v3}, Lcom/mediatek/mock/media/MockMediaRecorder$OnInfoListener;->onInfo(Lcom/mediatek/mock/media/MockMediaRecorder;II)V

    goto :goto_0

    .line 647
    :cond_2
    iget-object v2, v1, Lcom/mediatek/mock/media/MockMediaRecorder;->mEventHandler:Lcom/mediatek/mock/media/MockMediaRecorder$EventHandler;

    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 648
    .local v0, m:Landroid/os/Message;
    iget-object v2, v1, Lcom/mediatek/mock/media/MockMediaRecorder;->mEventHandler:Lcom/mediatek/mock/media/MockMediaRecorder$EventHandler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private setParameter(Ljava/lang/String;)V
    .locals 0
    .parameter "nameValuePair"

    .prologue
    .line 664
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 0

    .prologue
    .line 670
    invoke-direct {p0}, Lcom/mediatek/mock/media/MockMediaRecorder;->native_finalize()V

    return-void
.end method

.method public getMaxAmplitude()I
    .locals 1

    .prologue
    .line 439
    const/4 v0, 0x3

    return v0
.end method

.method public pause()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 682
    const-string v0, "media-param-pause=1"

    invoke-virtual {p0, v0}, Lcom/mediatek/mock/media/MockMediaRecorder;->setParametersExtra(Ljava/lang/String;)V

    .line 683
    return-void
.end method

.method public prepare()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 387
    iget-object v0, p0, Lcom/mediatek/mock/media/MockMediaRecorder;->mPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 388
    new-instance v6, Ljava/io/FileOutputStream;

    iget-object v0, p0, Lcom/mediatek/mock/media/MockMediaRecorder;->mPath:Ljava/lang/String;

    invoke-direct {v6, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 390
    .local v6, fos:Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/mock/media/MockMediaRecorder;->_setOutputFile(Ljava/io/FileDescriptor;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 392
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 400
    .end local v6           #fos:Ljava/io/FileOutputStream;
    :goto_0
    invoke-direct {p0}, Lcom/mediatek/mock/media/MockMediaRecorder;->_prepare()V

    .line 401
    return-void

    .line 392
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v0

    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    throw v0

    .line 394
    .end local v6           #fos:Ljava/io/FileOutputStream;
    :cond_0
    iget-object v0, p0, Lcom/mediatek/mock/media/MockMediaRecorder;->mFd:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_1

    .line 395
    iget-object v1, p0, Lcom/mediatek/mock/media/MockMediaRecorder;->mFd:Ljava/io/FileDescriptor;

    move-object v0, p0

    move-wide v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/mock/media/MockMediaRecorder;->_setOutputFile(Ljava/io/FileDescriptor;JJ)V

    goto :goto_0

    .line 397
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No valid output file"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public release()V
    .locals 0

    .prologue
    .line 652
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 431
    invoke-direct {p0}, Lcom/mediatek/mock/media/MockMediaRecorder;->native_reset()V

    .line 433
    iget-object v0, p0, Lcom/mediatek/mock/media/MockMediaRecorder;->mEventHandler:Lcom/mediatek/mock/media/MockMediaRecorder$EventHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 434
    return-void
.end method

.method public setAlbumTag(Ljava/lang/String;)V
    .locals 2
    .parameter "album"

    .prologue
    .line 716
    if-nez p1, :cond_0

    .line 717
    const-string v0, "MockMediaRecorder"

    const-string v1, "setAlbumTag: Null album!"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    :goto_0
    return-void

    .line 720
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "media-param-tag-album="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/mock/media/MockMediaRecorder;->setParameter(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setArtistTag(Ljava/lang/String;)V
    .locals 2
    .parameter "artist"

    .prologue
    .line 705
    if-nez p1, :cond_0

    .line 706
    const-string v0, "MockMediaRecorder"

    const-string v1, "setArtistTag: Null artist!"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    :goto_0
    return-void

    .line 709
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "media-param-tag-artist="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/mock/media/MockMediaRecorder;->setParameter(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setAudioChannels(I)V
    .locals 2
    .parameter "numChannels"

    .prologue
    .line 342
    if-gtz p1, :cond_0

    .line 343
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Number of channels is not positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 345
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "audio-param-number-of-channels="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/mock/media/MockMediaRecorder;->setParameter(Ljava/lang/String;)V

    .line 346
    return-void
.end method

.method public setAudioEncoder(I)V
    .locals 0
    .parameter "audio_encoder"

    .prologue
    .line 329
    return-void
.end method

.method public setAudioEncodingBitRate(I)V
    .locals 2
    .parameter "bitRate"

    .prologue
    .line 349
    if-gtz p1, :cond_0

    .line 350
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Audio encoding bit rate is not positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 352
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "audio-param-encoding-bitrate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/mock/media/MockMediaRecorder;->setParameter(Ljava/lang/String;)V

    .line 353
    return-void
.end method

.method public setAudioSamplingRate(I)V
    .locals 2
    .parameter "samplingRate"

    .prologue
    .line 335
    if-gtz p1, :cond_0

    .line 336
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Audio sampling rate is not positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 338
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "audio-param-sampling-rate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/mock/media/MockMediaRecorder;->setParameter(Ljava/lang/String;)V

    .line 339
    return-void
.end method

.method public setAudioSource(I)V
    .locals 0
    .parameter "audio_source"

    .prologue
    .line 251
    return-void
.end method

.method public setAuxiliaryOutputFile(Ljava/io/FileDescriptor;)V
    .locals 2
    .parameter "fd"

    .prologue
    .line 363
    const-string v0, "MockMediaRecorder"

    const-string v1, "setAuxiliaryOutputFile(FileDescriptor) is no longer supported."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    return-void
.end method

.method public setAuxiliaryOutputFile(Ljava/lang/String;)V
    .locals 2
    .parameter "path"

    .prologue
    .line 367
    const-string v0, "MockMediaRecorder"

    const-string v1, "setAuxiliaryOutputFile(String) is no longer supported."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    return-void
.end method

.method public setCamera(Lcom/mediatek/mock/hardware/MockCamera;)V
    .locals 3
    .parameter "c"

    .prologue
    .line 114
    invoke-virtual {p1}, Lcom/mediatek/mock/hardware/MockCamera;->getCameraSound()Landroid/media/MediaActionSound;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/mock/media/MockMediaRecorder;->mCameraSound:Landroid/media/MediaActionSound;

    .line 115
    const-string v0, "MockMediaRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCamera:mCameraSound="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/mock/media/MockMediaRecorder;->mCameraSound:Landroid/media/MediaActionSound;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "//Camera="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    return-void
.end method

.method public setCaptureRate(D)V
    .locals 8
    .parameter "fps"

    .prologue
    .line 278
    const-string v3, "time-lapse-enable=1"

    invoke-direct {p0, v3}, Lcom/mediatek/mock/media/MockMediaRecorder;->setParameter(Ljava/lang/String;)V

    .line 280
    const-wide/high16 v3, 0x3ff0

    div-double v0, v3, p1

    .line 281
    .local v0, timeBetweenFrameCapture:D
    const-wide v3, 0x408f400000000000L

    mul-double/2addr v3, v0

    double-to-int v2, v3

    .line 282
    .local v2, timeBetweenFrameCaptureMs:I
    new-instance v3, Ljava/util/Locale;

    const-string v4, "en"

    invoke-direct {v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    const-string v4, "time-between-time-lapse-frame-capture=%d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/mock/media/MockMediaRecorder;->setParameter(Ljava/lang/String;)V

    .line 284
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 783
    iput-object p1, p0, Lcom/mediatek/mock/media/MockMediaRecorder;->mContext:Landroid/content/Context;

    .line 784
    return-void
.end method

.method public setHDRecordMode(IZ)V
    .locals 3
    .parameter "mode"
    .parameter "isVideo"

    .prologue
    .line 772
    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-le p1, v0, :cond_1

    .line 773
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal HDRecord mode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 776
    :cond_1
    if-eqz p2, :cond_2

    .line 777
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "audio-param-hdrecvideomode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/mock/media/MockMediaRecorder;->setParameter(Ljava/lang/String;)V

    .line 781
    :goto_0
    return-void

    .line 779
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "audio-param-hdrecvoicemode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/mock/media/MockMediaRecorder;->setParameter(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setLocation(FF)V
    .locals 8
    .parameter "latitude"
    .parameter "longitude"

    .prologue
    const v7, 0x461c4000

    const-wide/high16 v5, 0x3fe0

    .line 297
    mul-float v3, p1, v7

    float-to-double v3, v3

    add-double/2addr v3, v5

    double-to-int v0, v3

    .line 298
    .local v0, latitudex10000:I
    mul-float v3, p2, v7

    float-to-double v3, v3

    add-double/2addr v3, v5

    double-to-int v1, v3

    .line 300
    .local v1, longitudex10000:I
    const v3, 0xdbba0

    if-gt v0, v3, :cond_0

    const v3, -0xdbba0

    if-ge v0, v3, :cond_1

    .line 301
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Latitude: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " out of range."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 302
    .local v2, msg:Ljava/lang/String;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 304
    .end local v2           #msg:Ljava/lang/String;
    :cond_1
    const v3, 0x1b7740

    if-gt v1, v3, :cond_2

    const v3, -0x1b7740

    if-ge v1, v3, :cond_3

    .line 305
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Longitude: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " out of range"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 306
    .restart local v2       #msg:Ljava/lang/String;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 309
    .end local v2           #msg:Ljava/lang/String;
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "param-geotag-latitude="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/mock/media/MockMediaRecorder;->setParameter(Ljava/lang/String;)V

    .line 310
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "param-geotag-longitude="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/mock/media/MockMediaRecorder;->setParameter(Ljava/lang/String;)V

    .line 311
    return-void
.end method

.method public setMaxDuration(I)V
    .locals 0
    .parameter "max_duration_ms"

    .prologue
    .line 323
    return-void
.end method

.method public setMaxFileSize(J)V
    .locals 0
    .parameter "max_filesize_bytes"

    .prologue
    .line 326
    return-void
.end method

.method public setOnCameraReleasedListener(Lcom/mediatek/mock/media/MockMediaRecorder$OnInfoListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 698
    iput-object p1, p0, Lcom/mediatek/mock/media/MockMediaRecorder;->mOnCameraReleasedListener:Lcom/mediatek/mock/media/MockMediaRecorder$OnInfoListener;

    .line 699
    return-void
.end method

.method public setOnErrorListener(Lcom/mediatek/mock/media/MockMediaRecorder$OnErrorListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 459
    iput-object p1, p0, Lcom/mediatek/mock/media/MockMediaRecorder;->mOnErrorListener:Lcom/mediatek/mock/media/MockMediaRecorder$OnErrorListener;

    .line 460
    return-void
.end method

.method public setOnInfoListener(Lcom/mediatek/mock/media/MockMediaRecorder$OnInfoListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 566
    iput-object p1, p0, Lcom/mediatek/mock/media/MockMediaRecorder;->mOnInfoListener:Lcom/mediatek/mock/media/MockMediaRecorder$OnInfoListener;

    .line 567
    return-void
.end method

.method public setOrientationHint(I)V
    .locals 3
    .parameter "degrees"

    .prologue
    .line 287
    if-eqz p1, :cond_0

    const/16 v0, 0x5a

    if-eq p1, v0, :cond_0

    const/16 v0, 0xb4

    if-eq p1, v0, :cond_0

    const/16 v0, 0x10e

    if-eq p1, v0, :cond_0

    .line 291
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported angle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 293
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "video-param-rotation-angle-degrees="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/mock/media/MockMediaRecorder;->setParameter(Ljava/lang/String;)V

    .line 294
    return-void
.end method

.method public setOutputFile(Ljava/io/FileDescriptor;)V
    .locals 1
    .parameter "fd"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 371
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/mock/media/MockMediaRecorder;->mPath:Ljava/lang/String;

    .line 372
    iput-object p1, p0, Lcom/mediatek/mock/media/MockMediaRecorder;->mFd:Ljava/io/FileDescriptor;

    .line 373
    return-void
.end method

.method public setOutputFile(Ljava/lang/String;)V
    .locals 1
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 376
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/mock/media/MockMediaRecorder;->mFd:Ljava/io/FileDescriptor;

    .line 377
    iput-object p1, p0, Lcom/mediatek/mock/media/MockMediaRecorder;->mPath:Ljava/lang/String;

    .line 378
    return-void
.end method

.method public setOutputFormat(I)V
    .locals 0
    .parameter "output_format"

    .prologue
    .line 314
    return-void
.end method

.method public setParametersExtra(Ljava/lang/String;)V
    .locals 0
    .parameter "nameValuePair"

    .prologue
    .line 667
    return-void
.end method

.method public setPreviewDisplay(Landroid/view/Surface;)V
    .locals 0
    .parameter "sv"

    .prologue
    .line 119
    iput-object p1, p0, Lcom/mediatek/mock/media/MockMediaRecorder;->mSurface:Landroid/view/Surface;

    .line 120
    return-void
.end method

.method public setProfile(Landroid/media/CamcorderProfile;)V
    .locals 2
    .parameter "profile"

    .prologue
    .line 259
    iget v0, p1, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-virtual {p0, v0}, Lcom/mediatek/mock/media/MockMediaRecorder;->setOutputFormat(I)V

    .line 260
    iget v0, p1, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {p0, v0}, Lcom/mediatek/mock/media/MockMediaRecorder;->setVideoFrameRate(I)V

    .line 261
    iget v0, p1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v1, p1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/mock/media/MockMediaRecorder;->setVideoSize(II)V

    .line 262
    iget v0, p1, Landroid/media/CamcorderProfile;->videoBitRate:I

    invoke-virtual {p0, v0}, Lcom/mediatek/mock/media/MockMediaRecorder;->setVideoEncodingBitRate(I)V

    .line 263
    iget v0, p1, Landroid/media/CamcorderProfile;->videoCodec:I

    invoke-virtual {p0, v0}, Lcom/mediatek/mock/media/MockMediaRecorder;->setVideoEncoder(I)V

    .line 264
    iget v0, p1, Landroid/media/CamcorderProfile;->quality:I

    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_0

    iget v0, p1, Landroid/media/CamcorderProfile;->quality:I

    const/16 v1, 0x3f8

    if-gt v0, v1, :cond_0

    .line 274
    :goto_0
    return-void

    .line 269
    :cond_0
    iget v0, p1, Landroid/media/CamcorderProfile;->audioBitRate:I

    invoke-virtual {p0, v0}, Lcom/mediatek/mock/media/MockMediaRecorder;->setAudioEncodingBitRate(I)V

    .line 270
    iget v0, p1, Landroid/media/CamcorderProfile;->audioChannels:I

    invoke-virtual {p0, v0}, Lcom/mediatek/mock/media/MockMediaRecorder;->setAudioChannels(I)V

    .line 271
    iget v0, p1, Landroid/media/CamcorderProfile;->audioSampleRate:I

    invoke-virtual {p0, v0}, Lcom/mediatek/mock/media/MockMediaRecorder;->setAudioSamplingRate(I)V

    .line 272
    iget v0, p1, Landroid/media/CamcorderProfile;->audioCodec:I

    invoke-virtual {p0, v0}, Lcom/mediatek/mock/media/MockMediaRecorder;->setAudioEncoder(I)V

    goto :goto_0
.end method

.method public setStereo3DType(Ljava/lang/String;)V
    .locals 1
    .parameter "stereo3dType"

    .prologue
    .line 727
    const-string v0, "off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 728
    const-string v0, "video-param-stereo-mode=0"

    invoke-direct {p0, v0}, Lcom/mediatek/mock/media/MockMediaRecorder;->setParameter(Ljava/lang/String;)V

    .line 736
    :goto_0
    return-void

    .line 729
    :cond_0
    const-string v0, "frame_seq"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 730
    const-string v0, "video-param-stereo-mode=1"

    invoke-direct {p0, v0}, Lcom/mediatek/mock/media/MockMediaRecorder;->setParameter(Ljava/lang/String;)V

    goto :goto_0

    .line 731
    :cond_1
    const-string v0, "sidebyside"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 732
    const-string v0, "video-param-stereo-mode=2"

    invoke-direct {p0, v0}, Lcom/mediatek/mock/media/MockMediaRecorder;->setParameter(Ljava/lang/String;)V

    goto :goto_0

    .line 734
    :cond_2
    const-string v0, "video-param-stereo-mode=3"

    invoke-direct {p0, v0}, Lcom/mediatek/mock/media/MockMediaRecorder;->setParameter(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setTimeLapseEnable()V
    .locals 1

    .prologue
    .line 742
    const-string v0, "time-lapse-enable=1"

    invoke-direct {p0, v0}, Lcom/mediatek/mock/media/MockMediaRecorder;->setParameter(Ljava/lang/String;)V

    .line 743
    return-void
.end method

.method public setVideoEncoder(I)V
    .locals 0
    .parameter "video_encoder"

    .prologue
    .line 332
    return-void
.end method

.method public setVideoEncodingBitRate(I)V
    .locals 2
    .parameter "bitRate"

    .prologue
    .line 356
    if-gtz p1, :cond_0

    .line 357
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Video encoding bit rate is not positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 359
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "video-param-encoding-bitrate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/mock/media/MockMediaRecorder;->setParameter(Ljava/lang/String;)V

    .line 360
    return-void
.end method

.method public setVideoFrameRate(I)V
    .locals 0
    .parameter "rate"

    .prologue
    .line 320
    return-void
.end method

.method public setVideoSize(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 317
    return-void
.end method

.method public setVideoSource(I)V
    .locals 0
    .parameter "video_source"

    .prologue
    .line 256
    return-void
.end method

.method public setZoomValue(I)V
    .locals 2
    .parameter "value"

    .prologue
    .line 749
    if-gez p1, :cond_0

    .line 750
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Zoom value is not positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 752
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "video-param-camera-digizoom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/mock/media/MockMediaRecorder;->setParametersExtra(Ljava/lang/String;)V

    .line 753
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    .line 404
    iget-object v0, p0, Lcom/mediatek/mock/media/MockMediaRecorder;->mCameraSound:Landroid/media/MediaActionSound;

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/mediatek/mock/media/MockMediaRecorder;->mCameraSound:Landroid/media/MediaActionSound;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/MediaActionSound;->play(I)V

    .line 407
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/mediatek/mock/media/MockMediaRecorder;->mVideoWriter:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/mediatek/mock/media/MockMediaRecorder;->mSavingThread:Ljava/lang/Thread;

    .line 408
    iget-object v0, p0, Lcom/mediatek/mock/media/MockMediaRecorder;->mSavingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 410
    iget-object v0, p0, Lcom/mediatek/mock/media/MockMediaRecorder;->mEventHandler:Lcom/mediatek/mock/media/MockMediaRecorder$EventHandler;

    const/16 v1, 0x7ce

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 411
    return-void
.end method

.method public stop()V
    .locals 3

    .prologue
    .line 414
    iget-object v1, p0, Lcom/mediatek/mock/media/MockMediaRecorder;->mCameraSound:Landroid/media/MediaActionSound;

    if-eqz v1, :cond_0

    .line 415
    iget-object v1, p0, Lcom/mediatek/mock/media/MockMediaRecorder;->mCameraSound:Landroid/media/MediaActionSound;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/MediaActionSound;->play(I)V

    .line 418
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/mock/media/MockMediaRecorder;->mSavingThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 422
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/mock/media/MockMediaRecorder;->mSavingThread:Ljava/lang/Thread;

    .line 424
    const-wide/16 v1, 0x190

    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 428
    :goto_1
    return-void

    .line 419
    :catch_0
    move-exception v0

    .line 420
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "MockMediaRecorder"

    const-string v2, "Video Saving done"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 425
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 426
    .restart local v0       #e:Ljava/lang/InterruptedException;
    const-string v1, "MockMediaRecorder"

    const-string v2, "Loading sound"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
