.class public abstract Lcom/amoi/AmoiEngineerMode/base/MusicServiceBase;
.super Landroid/app/Service;
.source "MusicServiceBase.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amoi/AmoiEngineerMode/base/MusicServiceBase$PlayerHandler;
    }
.end annotation


# static fields
.field protected static final INTERVAL_TIME:I = 0xbb8

.field protected static final MSG_COMPLETION:I = 0x1

.field public static final MUSIC_RAW_ID:Ljava/lang/String; = "music_raw_id"

.field private static final TAG:Ljava/lang/String; = "MusicServiceBase"


# instance fields
.field protected audioManager:Landroid/media/AudioManager;

.field protected mediaPlayer:Landroid/media/MediaPlayer;

.field protected originalVolume:I

.field private volatile playerHandler:Lcom/amoi/AmoiEngineerMode/base/MusicServiceBase$PlayerHandler;

.field private volatile playerLooper:Landroid/os/Looper;

.field protected streamType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method protected getVolume()I
    .locals 3

    .prologue
    .line 106
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/MusicServiceBase;->audioManager:Landroid/media/AudioManager;

    iget v2, p0, Lcom/amoi/AmoiEngineerMode/base/MusicServiceBase;->streamType:I

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    .line 108
    .local v0, vol:I
    return v0
.end method

.method protected initAudio()V
    .locals 4

    .prologue
    .line 91
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/MusicServiceBase;->audioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/amoi/AmoiEngineerMode/base/MusicServiceBase;->streamType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/amoi/AmoiEngineerMode/base/MusicServiceBase;->originalVolume:I

    .line 95
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/MusicServiceBase;->audioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/amoi/AmoiEngineerMode/base/MusicServiceBase;->streamType:I

    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/MusicServiceBase;->getVolume()I

    move-result v2

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 97
    iget v0, p0, Lcom/amoi/AmoiEngineerMode/base/MusicServiceBase;->streamType:I

    if-nez v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/MusicServiceBase;->audioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 102
    :cond_0
    return-void
.end method

.method protected abstract initStreamType()V
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 49
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter "mp"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/MusicServiceBase;->playerHandler:Lcom/amoi/AmoiEngineerMode/base/MusicServiceBase$PlayerHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amoi/AmoiEngineerMode/base/MusicServiceBase$PlayerHandler;->sendEmptyMessage(I)Z

    .line 145
    return-void
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 53
    const-string v1, "EngineerMode"

    const-string v2, "MusicServiceBase onCreate()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/base/MusicServiceBase;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/MusicServiceBase;->audioManager:Landroid/media/AudioManager;

    .line 57
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MusicService"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 59
    .local v0, thread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 60
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/MusicServiceBase;->playerLooper:Landroid/os/Looper;

    .line 61
    new-instance v1, Lcom/amoi/AmoiEngineerMode/base/MusicServiceBase$PlayerHandler;

    iget-object v2, p0, Lcom/amoi/AmoiEngineerMode/base/MusicServiceBase;->playerLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, v2}, Lcom/amoi/AmoiEngineerMode/base/MusicServiceBase$PlayerHandler;-><init>(Lcom/amoi/AmoiEngineerMode/base/MusicServiceBase;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/MusicServiceBase;->playerHandler:Lcom/amoi/AmoiEngineerMode/base/MusicServiceBase$PlayerHandler;

    .line 62
    return-void
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    .line 124
    const-string v1, "EngineerMode"

    const-string v2, "MusicServiceBase onDestroy()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/MusicServiceBase;->playerLooper:Landroid/os/Looper;

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    .line 127
    :try_start_0
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/MusicServiceBase;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :goto_0
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/MusicServiceBase;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 132
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/MusicServiceBase;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 134
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/MusicServiceBase;->audioManager:Landroid/media/AudioManager;

    iget v2, p0, Lcom/amoi/AmoiEngineerMode/base/MusicServiceBase;->streamType:I

    iget v3, p0, Lcom/amoi/AmoiEngineerMode/base/MusicServiceBase;->originalVolume:I

    const/16 v4, 0x8

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 137
    return-void

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v1, "EngineerMode"

    const-string v2, "MusicServiceBase \u505c\u6b62MediaPlayer\u51fa\u73b0\u5f02\u5e38"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 4
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 152
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "error occurred in MediaPlayer\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 153
    .local v0, msg:Ljava/lang/StringBuffer;
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 154
    sparse-switch p2, :sswitch_data_0

    .line 162
    :goto_0
    const-string v1, " extra:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 163
    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 164
    const-string v1, "EngineerMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MusicServiceBase"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/MusicServiceBase;->stopSelf()V

    .line 167
    const/4 v1, 0x1

    return v1

    .line 156
    :sswitch_0
    const-string v1, "(MEDIA_ERROR_UNKNOWN)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 159
    :sswitch_1
    const-string v1, "(MEDIA_ERROR_SERVER_DIED)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 154
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x64 -> :sswitch_1
    .end sparse-switch
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 68
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/MusicServiceBase;->mediaPlayer:Landroid/media/MediaPlayer;

    if-nez v1, :cond_1

    .line 69
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/MusicServiceBase;->initStreamType()V

    .line 70
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/MusicServiceBase;->initAudio()V

    .line 71
    const v0, 0x7f040001

    .line 72
    .local v0, resid:I
    if-eqz p1, :cond_0

    .line 73
    const-string v1, "music_raw_id"

    const v2, 0x7f040001

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 75
    :cond_0
    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/base/MusicServiceBase;->startPlayer(I)V

    .line 77
    .end local v0           #resid:I
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method protected startPlayer(I)V
    .locals 2
    .parameter "resid"

    .prologue
    .line 112
    iget v0, p0, Lcom/amoi/AmoiEngineerMode/base/MusicServiceBase;->streamType:I

    invoke-static {p0, p1, v0}, Lcom/amoi/AmoiEngineerMode/util/MediaPlayerHelper;->create(Landroid/content/Context;II)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/MusicServiceBase;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 113
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/MusicServiceBase;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/MusicServiceBase;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 115
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/MusicServiceBase;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 116
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/MusicServiceBase;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 121
    :goto_0
    return-void

    .line 118
    :cond_0
    const-string v0, "EngineerMode"

    const-string v1, "MusicServiceBase error to create media player"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/MusicServiceBase;->stopSelf()V

    goto :goto_0
.end method
