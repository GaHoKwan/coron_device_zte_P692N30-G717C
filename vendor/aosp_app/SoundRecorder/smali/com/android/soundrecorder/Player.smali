.class public Lcom/android/soundrecorder/Player;
.super Ljava/lang/Object;
.source "Player.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/soundrecorder/Player$PlayerListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SR/Player"


# instance fields
.field private mCurrentFilePath:Ljava/lang/String;

.field private mListener:Lcom/android/soundrecorder/Player$PlayerListener;

.field private mPlayer:Landroid/media/MediaPlayer;


# direct methods
.method public constructor <init>(Lcom/android/soundrecorder/Player$PlayerListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/android/soundrecorder/Player;->mPlayer:Landroid/media/MediaPlayer;

    .line 15
    iput-object v0, p0, Lcom/android/soundrecorder/Player;->mCurrentFilePath:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/android/soundrecorder/Player;->mListener:Lcom/android/soundrecorder/Player$PlayerListener;

    .line 32
    iput-object p1, p0, Lcom/android/soundrecorder/Player;->mListener:Lcom/android/soundrecorder/Player$PlayerListener;

    .line 33
    return-void
.end method

.method private setState(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/soundrecorder/Player;->mListener:Lcom/android/soundrecorder/Player$PlayerListener;

    invoke-interface {v0, p0, p1}, Lcom/android/soundrecorder/Player$PlayerListener;->onStateChanged(Lcom/android/soundrecorder/Player;I)V

    .line 206
    return-void
.end method


# virtual methods
.method public getCurrentProgress()I
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/soundrecorder/Player;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/android/soundrecorder/Player;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 190
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFileDuration()I
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/soundrecorder/Player;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/android/soundrecorder/Player;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    .line 201
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public goonPlayback()Z
    .locals 2

    .prologue
    .line 134
    iget-object v1, p0, Lcom/android/soundrecorder/Player;->mPlayer:Landroid/media/MediaPlayer;

    if-nez v1, :cond_0

    .line 135
    const/4 v1, 0x0

    .line 144
    :goto_0
    return v1

    .line 139
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/soundrecorder/Player;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 140
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/android/soundrecorder/Player;->setState(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    const/4 v1, 0x1

    goto :goto_0

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, e:Ljava/lang/IllegalStateException;
    invoke-virtual {p0, v0}, Lcom/android/soundrecorder/Player;->handleException(Ljava/lang/Exception;)Z

    move-result v1

    goto :goto_0
.end method

.method public handleException(Ljava/lang/Exception;)Z
    .locals 2
    .parameter "exception"

    .prologue
    .line 104
    const-string v0, "SR/Player"

    const-string v1, "<handleException>"

    invoke-static {v0, v1}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 106
    iget-object v0, p0, Lcom/android/soundrecorder/Player;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/android/soundrecorder/Player;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/soundrecorder/Player;->mPlayer:Landroid/media/MediaPlayer;

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/android/soundrecorder/Player;->mListener:Lcom/android/soundrecorder/Player$PlayerListener;

    const/16 v1, 0x8

    invoke-interface {v0, p0, v1}, Lcom/android/soundrecorder/Player$PlayerListener;->onError(Lcom/android/soundrecorder/Player;I)V

    .line 111
    const/4 v0, 0x0

    return v0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter "player"

    .prologue
    .line 40
    const-string v0, "SR/Player"

    const-string v1, "<onCompletion>"

    invoke-static {v0, v1}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    invoke-virtual {p0}, Lcom/android/soundrecorder/Player;->stopPlayback()Z

    .line 42
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2
    .parameter "player"
    .parameter "errorType"
    .parameter "extraCode"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/soundrecorder/Player;->mListener:Lcom/android/soundrecorder/Player$PlayerListener;

    const/16 v1, 0x8

    invoke-interface {v0, p0, v1}, Lcom/android/soundrecorder/Player$PlayerListener;->onError(Lcom/android/soundrecorder/Player;I)V

    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public pausePlayback()Z
    .locals 2

    .prologue
    .line 118
    iget-object v1, p0, Lcom/android/soundrecorder/Player;->mPlayer:Landroid/media/MediaPlayer;

    if-nez v1, :cond_0

    .line 119
    const/4 v1, 0x0

    .line 127
    :goto_0
    return v1

    .line 122
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/soundrecorder/Player;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->pause()V

    .line 123
    const/4 v1, 0x5

    invoke-direct {p0, v1}, Lcom/android/soundrecorder/Player;->setState(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    const/4 v1, 0x1

    goto :goto_0

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, e:Ljava/lang/IllegalStateException;
    invoke-virtual {p0, v0}, Lcom/android/soundrecorder/Player;->handleException(Ljava/lang/Exception;)Z

    move-result v1

    goto :goto_0
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 172
    monitor-enter p0

    .line 173
    :try_start_0
    iget-object v0, p0, Lcom/android/soundrecorder/Player;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/android/soundrecorder/Player;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 175
    iget-object v0, p0, Lcom/android/soundrecorder/Player;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 176
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/soundrecorder/Player;->mPlayer:Landroid/media/MediaPlayer;

    .line 178
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    iput-object v1, p0, Lcom/android/soundrecorder/Player;->mCurrentFilePath:Ljava/lang/String;

    .line 180
    return-void

    .line 178
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setCurrentFilePath(Ljava/lang/String;)V
    .locals 0
    .parameter "filePath"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/soundrecorder/Player;->mCurrentFilePath:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public startPlayback()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 68
    iget-object v3, p0, Lcom/android/soundrecorder/Player;->mCurrentFilePath:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 96
    :goto_0
    return v2

    .line 72
    :cond_0
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/android/soundrecorder/Player;->mCurrentFilePath:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 73
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 74
    iget-object v3, p0, Lcom/android/soundrecorder/Player;->mListener:Lcom/android/soundrecorder/Player$PlayerListener;

    const/16 v4, 0x9

    invoke-interface {v3, p0, v4}, Lcom/android/soundrecorder/Player$PlayerListener;->onError(Lcom/android/soundrecorder/Player;I)V

    goto :goto_0

    .line 78
    :cond_1
    monitor-enter p0

    .line 79
    :try_start_0
    iget-object v2, p0, Lcom/android/soundrecorder/Player;->mPlayer:Landroid/media/MediaPlayer;

    if-nez v2, :cond_2

    .line 80
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v2, p0, Lcom/android/soundrecorder/Player;->mPlayer:Landroid/media/MediaPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    :try_start_1
    iget-object v2, p0, Lcom/android/soundrecorder/Player;->mPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/android/soundrecorder/Player;->mCurrentFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 83
    iget-object v2, p0, Lcom/android/soundrecorder/Player;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 84
    iget-object v2, p0, Lcom/android/soundrecorder/Player;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepare()V

    .line 85
    iget-object v2, p0, Lcom/android/soundrecorder/Player;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V

    .line 86
    const-string v2, "SR/Player"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<startPlayback> The length of recording file is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/soundrecorder/Player;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    const/4 v2, 0x4

    invoke-direct {p0, v2}, Lcom/android/soundrecorder/Player;->setState(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 95
    :cond_2
    :try_start_2
    monitor-exit p0

    .line 96
    const/4 v2, 0x1

    goto :goto_0

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, e:Ljava/lang/IllegalStateException;
    invoke-virtual {p0, v0}, Lcom/android/soundrecorder/Player;->handleException(Ljava/lang/Exception;)Z

    move-result v2

    monitor-exit p0

    goto :goto_0

    .line 95
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 91
    :catch_1
    move-exception v0

    .line 92
    .local v0, e:Ljava/io/IOException;
    :try_start_3
    invoke-virtual {p0, v0}, Lcom/android/soundrecorder/Player;->handleException(Ljava/lang/Exception;)Z

    move-result v2

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public stopPlayback()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 152
    iget-object v2, p0, Lcom/android/soundrecorder/Player;->mPlayer:Landroid/media/MediaPlayer;

    if-nez v2, :cond_0

    .line 153
    const/4 v1, 0x0

    .line 165
    :goto_0
    return v1

    .line 155
    :cond_0
    monitor-enter p0

    .line 157
    :try_start_0
    iget-object v2, p0, Lcom/android/soundrecorder/Player;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->stop()V

    .line 158
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/soundrecorder/Player;->setState(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    :try_start_1
    iget-object v2, p0, Lcom/android/soundrecorder/Player;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

    .line 163
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/soundrecorder/Player;->mPlayer:Landroid/media/MediaPlayer;

    .line 164
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 159
    :catch_0
    move-exception v0

    .line 160
    .local v0, e:Ljava/lang/IllegalStateException;
    :try_start_2
    invoke-virtual {p0, v0}, Lcom/android/soundrecorder/Player;->handleException(Ljava/lang/Exception;)Z

    move-result v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
