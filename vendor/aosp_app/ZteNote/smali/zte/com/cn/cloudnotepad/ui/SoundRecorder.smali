.class public Lzte/com/cn/cloudnotepad/ui/SoundRecorder;
.super Ljava/lang/Object;
.source "SoundRecorder.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzte/com/cn/cloudnotepad/ui/SoundRecorder$OnStateChangedListener;
    }
.end annotation


# static fields
.field public static final IDLE_STATE:I = 0x0

.field public static final INTERNAL_ERROR:I = 0x2

.field public static final IN_CALL_RECORD_ERROR:I = 0x3

.field public static final NO_ERROR:I = 0x0

.field public static final PAUSE_STATE:I = 0x3

.field public static final PLAYING_PAUSE_STATE:I = 0x4

.field public static final PLAYING_STATE:I = 0x2

.field public static final RECORDING_STATE:I = 0x1

.field public static final SDCARD_ACCESS_ERROR:I = 0x1

.field static final TAG:Ljava/lang/String; = "SoundRecorder"

.field public static final UNSUPPORTED_FORMAT:I = 0x4


# instance fields
.field audioFocusFlag:Z

.field audioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field mOnStateChangedListener:Lzte/com/cn/cloudnotepad/ui/SoundRecorder$OnStateChangedListener;

.field mPlayer:Landroid/media/MediaPlayer;

.field mPreviousTime:J

.field mRecorder:Landroid/media/MediaRecorder;

.field mSampleFile:Ljava/io/File;

.field mSampleLength:I

.field mSampleStart:J

.field mState:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput v1, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->mState:I

    .line 39
    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->mOnStateChangedListener:Lzte/com/cn/cloudnotepad/ui/SoundRecorder$OnStateChangedListener;

    .line 41
    iput-wide v2, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->mSampleStart:J

    .line 42
    iput-wide v2, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->mPreviousTime:J

    .line 43
    iput v1, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->mSampleLength:I

    .line 44
    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->mSampleFile:Ljava/io/File;

    .line 46
    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->mRecorder:Landroid/media/MediaRecorder;

    .line 47
    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->mPlayer:Landroid/media/MediaPlayer;

    .line 49
    iput-boolean v1, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->audioFocusFlag:Z

    .line 58
    invoke-static {}, Lzte/com/cn/cloudnotepad/NoteApp;->getInstance()Lzte/com/cn/cloudnotepad/NoteApp;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Lzte/com/cn/cloudnotepad/NoteApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->audioManager:Landroid/media/AudioManager;

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput v1, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->mState:I

    .line 39
    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->mOnStateChangedListener:Lzte/com/cn/cloudnotepad/ui/SoundRecorder$OnStateChangedListener;

    .line 41
    iput-wide v2, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->mSampleStart:J

    .line 42
    iput-wide v2, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->mPreviousTime:J

    .line 43
    iput v1, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->mSampleLength:I

    .line 44
    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->mSampleFile:Ljava/io/File;

    .line 46
    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->mRecorder:Landroid/media/MediaRecorder;

    .line 47
    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->mPlayer:Landroid/media/MediaPlayer;

    .line 49
    iput-boolean v1, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->audioFocusFlag:Z

    .line 53
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->mContext:Landroid/content/Context;

    .line 54
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->audioManager:Landroid/media/AudioManager;

    .line 55
    return-void
.end method

.method private setState(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 346
    iget v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->mState:I

    if-ne p1, v0, :cond_0

    .line 351
    :goto_0
    return-void

    .line 349
    :cond_0
    iput p1, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->mState:I

    .line 350
    iget v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->mState:I

    invoke-direct {p0, v0}, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->signalStateChanged(I)V

    goto :goto_0
.end method

.method private signalStateChanged(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 358
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->mOnStateChangedListener:Lzte/com/cn/cloudnotepad/ui/SoundRecorder$OnStateChangedListener;

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->mOnStateChangedListener:Lzte/com/cn/cloudnotepad/ui/SoundRecorder$OnStateChangedListener;

    invoke-interface {v0, p1}, Lzte/com/cn/cloudnotepad/ui/SoundRecorder$OnStateChangedListener;->onStateChanged(I)V

    .line 360
    :cond_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 99
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->stop()V

    .line 100
    iput v1, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->mSampleLength:I

    .line 101
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->mSampleFile:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->mSampleFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->mSampleFile:Ljava/io/File;

    .line 105
    :cond_0
    invoke-direct {p0, v1}, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->signalStateChanged(I)V

    .line 106
    return-void
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->mPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 369
    const/4 v0, 0x0

    .line 371
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    goto :goto_0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0
    .parameter "mp"

    .prologue
    .line 342
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->stop()V

    .line 343
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    const/4 v0, 0x1

    .line 336
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->stop()V

    .line 337
    invoke-virtual {p0, v0}, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->setError(I)V

    .line 338
    return v0
.end method

.method public pausePlayback()V
    .locals 3

    .prologue
    .line 255
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->mPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 268
    :goto_0
    return-void

    .line 258
    :cond_0
    iget-boolean v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->audioFocusFlag:Z

    if-eqz v0, :cond_1

    .line 259
    const/4 v0, 0x1

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->audioManager:Landroid/media/AudioManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 260
    const-string v0, "SoundRecorder"

    const-string v1, "audioManager.abandonAudioFocus   result::AUDIOFOCUS_REQUEST_GRANTED"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    const/4 v0, 0x0

    iput-boolean v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->audioFocusFlag:Z

    .line 266
    :cond_1
    :goto_1
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 267
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->setState(I)V

    goto :goto_0

    .line 263
    :cond_2
    const-string v0, "SoundRecorder"

    const-string v1, "audioManager.abandonAudioFocus   result::AUDIOFOCUS_REQUEST_FAILED"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public pausereview()V
    .locals 3

    .prologue
    .line 289
    const-string v0, "SoundRecorder"

    const-string v1, "pausereview "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->mPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 303
    :goto_0
    return-void

    .line 293
    :cond_0
    iget-boolean v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->audioFocusFlag:Z

    if-eqz v0, :cond_1

    .line 294
    const/4 v0, 0x1

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->audioManager:Landroid/media/AudioManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 295
    const-string v0, "SoundRecorder"

    const-string v1, "audioManager.abandonAudioFocus   result::AUDIOFOCUS_REQUEST_GRANTED"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    const/4 v0, 0x0

    iput-boolean v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->audioFocusFlag:Z

    .line 301
    :cond_1
    :goto_1
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 302
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->setState(I)V

    goto :goto_0

    .line 298
    :cond_2
    const-string v0, "SoundRecorder"

    const-string v1, "audioManager.abandonAudioFocus   result::AUDIOFOCUS_REQUEST_FAILED"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public playProgress()I
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->mPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->mPlayer:Landroid/media/MediaPlayer;

    .line 80
    :cond_0
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method public progress()I
    .locals 4

    .prologue
    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->mSampleStart:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->mPreviousTime:J

    add-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 92
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->stop()V

    .line 93
    iput v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->mSampleLength:I

    .line 94
    invoke-direct {p0, v0}, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->signalStateChanged(I)V

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->mSampleFile:Ljava/io/File;

    .line 96
    return-void
.end method

.method public resumereview()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 306
    const-string v0, "SoundRecorder"

    const-string v1, "resumereview "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->mPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 320
    :goto_0
    return-void

    .line 310
    :cond_0
    iget-boolean v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->audioFocusFlag:Z

    if-nez v0, :cond_1

    .line 311
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->audioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    if-ne v3, v0, :cond_2

    .line 312
    const-string v0, "SoundRecorder"

    const-string v1, "audioManager.requestAudioFocus   result::AUDIOFOCUS_REQUEST_GRANTED"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iput-boolean v3, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->audioFocusFlag:Z

    .line 318
    :cond_1
    :goto_1
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 319
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->setState(I)V

    goto :goto_0

    .line 315
    :cond_2
    const-string v0, "SoundRecorder"

    const-string v1, "audioManager.requestAudioFocus   result::AUDIOFOCUS_REQUEST_FAILED"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public sampleFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->mSampleFile:Ljava/io/File;

    return-object v0
.end method

.method public sampleLength()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->mSampleLength:I

    return v0
.end method

.method public seekTo(I)V
    .locals 6
    .parameter "position"

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x2

    .line 239
    :try_start_0
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->seekTo(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 250
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    int-to-long v3, p1

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->mSampleStart:J

    .line 251
    invoke-direct {p0, v5}, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->setState(I)V

    .line 252
    :goto_0
    return-void

    .line 240
    :catch_0
    move-exception v0

    .line 241
    .local v0, e:Ljava/lang/IllegalStateException;
    invoke-virtual {p0, v5}, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->setError(I)V

    .line 242
    iput-object v2, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->mPlayer:Landroid/media/MediaPlayer;

    goto :goto_0

    .line 244
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .line 245
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {p0, v5}, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->setError(I)V

    .line 246
    iput-object v2, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->mPlayer:Landroid/media/MediaPlayer;

    goto :goto_0
.end method

.method public setError(I)V
    .locals 1
    .parameter "error"

    .prologue
    .line 363
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->mOnStateChangedListener:Lzte/com/cn/cloudnotepad/ui/SoundRecorder$OnStateChangedListener;

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->mOnStateChangedListener:Lzte/com/cn/cloudnotepad/ui/SoundRecorder$OnStateChangedListener;

    invoke-interface {v0, p1}, Lzte/com/cn/cloudnotepad/ui/SoundRecorder$OnStateChangedListener;->onError(I)V

    .line 365
    :cond_0
    return-void
.end method

.method public setOnStateChangedListener(Lzte/com/cn/cloudnotepad/ui/SoundRecorder$OnStateChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 354
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->mOnStateChangedListener:Lzte/com/cn/cloudnotepad/ui/SoundRecorder$OnStateChangedListener;

    .line 355
    return-void
.end method

.method public startPlayback(Ljava/lang/String;)V
    .locals 6
    .parameter "filePath"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 202
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->mPlayer:Landroid/media/MediaPlayer;

    if-nez v1, :cond_1

    .line 203
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->stop()V

    .line 205
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->mPlayer:Landroid/media/MediaPlayer;

    .line 207
    :try_start_0
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 208
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 209
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 210
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 211
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 222
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->mSampleStart:J

    .line 226
    :goto_0
    iget-boolean v1, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->audioFocusFlag:Z

    if-nez v1, :cond_0

    .line 227
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->audioManager:Landroid/media/AudioManager;

    const/4 v2, 0x3

    invoke-virtual {v1, v4, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v1

    if-ne v3, v1, :cond_2

    .line 228
    const-string v1, "SoundRecorder"

    const-string v2, "audioManager.requestAudioFocus   result::AUDIOFOCUS_REQUEST_GRANTED"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iput-boolean v3, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->audioFocusFlag:Z

    .line 234
    :cond_0
    :goto_1
    invoke-direct {p0, v5}, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->setState(I)V

    .line 235
    :goto_2
    return-void

    .line 212
    :catch_0
    move-exception v0

    .line 213
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {p0, v5}, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->setError(I)V

    .line 214
    iput-object v4, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->mPlayer:Landroid/media/MediaPlayer;

    goto :goto_2

    .line 216
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 217
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {p0, v3}, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->setError(I)V

    .line 218
    iput-object v4, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->mPlayer:Landroid/media/MediaPlayer;

    goto :goto_2

    .line 224
    .end local v0           #e:Ljava/io/IOException;
    :cond_1
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    goto :goto_0

    .line 231
    :cond_2
    const-string v1, "SoundRecorder"

    const-string v2, "audioManager.requestAudioFocus   result::AUDIOFOCUS_REQUEST_FAILED"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public startRecording()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x3

    const/4 v3, 0x0

    const/4 v6, 0x2

    const/4 v2, 0x1

    .line 109
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->stop()V

    .line 111
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->getMode()I

    move-result v4

    if-ne v4, v6, :cond_1

    move v1, v2

    .line 112
    .local v1, isInCALL:Z
    :goto_0
    if-eqz v1, :cond_2

    .line 113
    invoke-virtual {p0, v7}, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->setError(I)V

    .line 174
    :cond_0
    :goto_1
    return-void

    .end local v1           #isInCALL:Z
    :cond_1
    move v1, v3

    .line 111
    goto :goto_0

    .line 116
    .restart local v1       #isInCALL:Z
    :cond_2
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 117
    const-string v3, "zhangxue"

    const-string v4, "MusicActive"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-virtual {p0, v6}, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->setError(I)V

    goto :goto_1

    .line 122
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->getTempStoragePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "temp_record.m4a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->createFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    iput-object v4, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->mSampleFile:Ljava/io/File;

    .line 124
    iget-boolean v4, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->audioFocusFlag:Z

    if-nez v4, :cond_4

    .line 125
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v8, v7, v2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v4

    if-ne v2, v4, :cond_5

    .line 126
    const-string v4, "SoundRecorder"

    const-string v5, "audioManager.requestAudioFocuss   result::AUDIOFOCUS_REQUEST_GRANTED"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iput-boolean v2, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->audioFocusFlag:Z

    .line 132
    :cond_4
    :goto_2
    new-instance v4, Landroid/media/MediaRecorder;

    invoke-direct {v4}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v4, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->mRecorder:Landroid/media/MediaRecorder;

    .line 133
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4, v2}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 134
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4, v3}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 135
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4, v3}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 136
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->mSampleFile:Ljava/io/File;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->mSampleFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 137
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->mRecorder:Landroid/media/MediaRecorder;

    iget-object v5, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->mSampleFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 145
    :try_start_0
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4}, Landroid/media/MediaRecorder;->prepare()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :try_start_1
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4}, Landroid/media/MediaRecorder;->start()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 171
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->mPreviousTime:J

    .line 172
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->mSampleStart:J

    .line 173
    invoke-direct {p0, v2}, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->setState(I)V

    goto/16 :goto_1

    .line 129
    :cond_5
    const-string v4, "SoundRecorder"

    const-string v5, "audioManager.requestAudioFocus   result::AUDIOFOCUS_REQUEST_FAILED"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 139
    :cond_6
    const-string v3, "SoundRecorder"

    const-string v4, "SDCARD_ACCESS_ERROR"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, exception:Ljava/io/IOException;
    invoke-virtual {p0, v6}, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->setError(I)V

    .line 148
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->reset()V

    .line 149
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->release()V

    .line 150
    iput-object v8, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->mRecorder:Landroid/media/MediaRecorder;

    goto/16 :goto_1

    .line 156
    .end local v0           #exception:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 158
    .local v0, exception:Ljava/lang/RuntimeException;
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->getMode()I

    move-result v4

    if-ne v4, v6, :cond_7

    .line 159
    .local v2, isInCall:Z
    :goto_3
    if-eqz v2, :cond_8

    .line 160
    invoke-virtual {p0, v7}, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->setError(I)V

    .line 164
    :goto_4
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->mRecorder:Landroid/media/MediaRecorder;

    if-eqz v3, :cond_0

    .line 165
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->reset()V

    .line 166
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->release()V

    .line 167
    iput-object v8, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->mRecorder:Landroid/media/MediaRecorder;

    goto/16 :goto_1

    .end local v2           #isInCall:Z
    :cond_7
    move v2, v3

    .line 158
    goto :goto_3

    .line 162
    .restart local v2       #isInCall:Z
    :cond_8
    invoke-virtual {p0, v6}, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->setError(I)V

    goto :goto_4
.end method

.method public state()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->mState:I

    return v0
.end method

.method public stop()V
    .locals 3

    .prologue
    .line 323
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->stopRecording()V

    .line 324
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->stopPlayback()V

    .line 325
    iget-boolean v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->audioFocusFlag:Z

    if-eqz v0, :cond_0

    .line 326
    const/4 v0, 0x1

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->audioManager:Landroid/media/AudioManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 327
    const-string v0, "SoundRecorder"

    const-string v1, "audioManager.abandonAudioFocus   result::AUDIOFOCUS_REQUEST_GRANTED"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    const/4 v0, 0x0

    iput-boolean v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->audioFocusFlag:Z

    .line 333
    :cond_0
    :goto_0
    return-void

    .line 330
    :cond_1
    const-string v0, "SoundRecorder"

    const-string v1, "audioManager.abandonAudioFocus   result::AUDIOFOCUS_REQUEST_FAILED"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public stopPlayback()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 272
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->mPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 286
    :goto_0
    return-void

    .line 274
    :cond_0
    iget-boolean v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->audioFocusFlag:Z

    if-eqz v0, :cond_1

    .line 275
    const/4 v0, 0x1

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 276
    const-string v0, "SoundRecorder"

    const-string v1, "audioManager.abandonAudioFocus   result::AUDIOFOCUS_REQUEST_GRANTED"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iput-boolean v2, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->audioFocusFlag:Z

    .line 282
    :cond_1
    :goto_1
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 283
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 284
    iput-object v3, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->mPlayer:Landroid/media/MediaPlayer;

    .line 285
    invoke-direct {p0, v2}, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->setState(I)V

    goto :goto_0

    .line 279
    :cond_2
    const-string v0, "SoundRecorder"

    const-string v1, "audioManager.abandonAudioFocus   result::AUDIOFOCUS_REQUEST_FAILED"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public stopRecording()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 177
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->mRecorder:Landroid/media/MediaRecorder;

    if-nez v2, :cond_0

    .line 199
    :goto_0
    return-void

    .line 181
    :cond_0
    const/4 v1, 0x0

    .line 182
    .local v1, isAdd:Z
    iget v2, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->mState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 183
    const/4 v1, 0x1

    .line 186
    :cond_1
    :try_start_0
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->stop()V

    .line 187
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->reset()V

    .line 188
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->release()V

    .line 189
    const/4 v2, 0x0

    iput-object v2, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->mRecorder:Landroid/media/MediaRecorder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :goto_1
    if-eqz v1, :cond_2

    .line 195
    iget-wide v2, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->mPreviousTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->mSampleStart:J

    sub-long/2addr v4, v6

    add-long/2addr v2, v4

    iput-wide v2, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->mPreviousTime:J

    .line 197
    :cond_2
    iget-wide v2, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->mPreviousTime:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v2, v2

    iput v2, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->mSampleLength:I

    .line 198
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->setState(I)V

    goto :goto_0

    .line 190
    :catch_0
    move-exception v0

    .line 191
    .local v0, e:Ljava/lang/Exception;
    iput-object v4, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->mRecorder:Landroid/media/MediaRecorder;

    goto :goto_1
.end method
