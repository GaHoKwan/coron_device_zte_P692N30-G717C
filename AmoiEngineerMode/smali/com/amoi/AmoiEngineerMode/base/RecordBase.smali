.class public abstract Lcom/amoi/AmoiEngineerMode/base/RecordBase;
.super Lcom/amoi/AmoiEngineerMode/base/TestBase;
.source "RecordBase.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amoi/AmoiEngineerMode/base/RecordBase$RecordHandler;,
        Lcom/amoi/AmoiEngineerMode/base/RecordBase$UpdateSecondTask;
    }
.end annotation


# static fields
.field protected static final MSG_UPDATE_TIME:I = 0x1

.field private static final TAG:Ljava/lang/String; = "RecordBase"


# instance fields
.field protected STRING_PLAYBACK:Ljava/lang/String;

.field protected STRING_RECORDING:Ljava/lang/String;

.field protected STRING_SECOND:Ljava/lang/String;

.field protected handler:Landroid/os/Handler;

.field protected hasSDCard:Z

.field protected player:Landroid/media/MediaPlayer;

.field protected recordFileName:Ljava/lang/String;

.field protected recorder:Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;

.field protected seconds:I

.field protected text:Ljava/lang/String;

.field protected textView:Landroid/widget/TextView;

.field protected timer:Ljava/util/Timer;

.field protected timerTask:Ljava/util/TimerTask;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/amoi/AmoiEngineerMode/base/TestBase;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/RecordBase;->recordFileName:Ljava/lang/String;

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/amoi/AmoiEngineerMode/base/RecordBase;->seconds:I

    .line 265
    return-void
.end method


# virtual methods
.method protected destroyTimer()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 114
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/RecordBase;->timerTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/RecordBase;->timerTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 116
    iput-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/RecordBase;->timerTask:Ljava/util/TimerTask;

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/RecordBase;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 119
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/RecordBase;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 120
    iput-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/RecordBase;->timer:Ljava/util/Timer;

    .line 122
    :cond_1
    return-void
.end method

.method protected abstract handleNoSDCardExtra()V
.end method

.method protected initHandler()V
    .locals 1

    .prologue
    .line 83
    new-instance v0, Lcom/amoi/AmoiEngineerMode/base/RecordBase$RecordHandler;

    invoke-direct {v0, p0}, Lcom/amoi/AmoiEngineerMode/base/RecordBase$RecordHandler;-><init>(Lcom/amoi/AmoiEngineerMode/base/RecordBase;)V

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/RecordBase;->handler:Landroid/os/Handler;

    .line 84
    return-void
.end method

.method protected abstract initView()V
.end method

.method protected isSdcardExist()Z
    .locals 2

    .prologue
    .line 224
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 227
    .local v0, sDStateString:Ljava/lang/String;
    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1
    .parameter "mp"

    .prologue
    .line 248
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/RecordBase;->stopTimer()V

    .line 249
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/RecordBase;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 250
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/RecordBase;->startTimer()V

    .line 251
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/amoi/AmoiEngineerMode/base/TestBase;->onCreate(Landroid/os/Bundle;)V

    .line 58
    const-string v0, "RecordBase"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/RecordBase;->initView()V

    .line 62
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/RecordBase;->isSdcardExist()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amoi/AmoiEngineerMode/base/RecordBase;->hasSDCard:Z

    .line 63
    iget-boolean v0, p0, Lcom/amoi/AmoiEngineerMode/base/RecordBase;->hasSDCard:Z

    if-nez v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/RecordBase;->textView:Landroid/widget/TextView;

    const/high16 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 66
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/RecordBase;->textView:Landroid/widget/TextView;

    const v1, 0x7f060049

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/base/RecordBase;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/RecordBase;->textView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 68
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/RecordBase;->handleNoSDCardExtra()V

    .line 78
    :goto_0
    return-void

    .line 70
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/RecordBase;->recordFileName:Ljava/lang/String;

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/RecordBase;->recordFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Amoi_RecordTest.3pg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/RecordBase;->recordFileName:Ljava/lang/String;

    .line 72
    const v0, 0x7f060038

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/base/RecordBase;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/RecordBase;->STRING_RECORDING:Ljava/lang/String;

    .line 73
    const v0, 0x7f06003a

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/base/RecordBase;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/RecordBase;->STRING_PLAYBACK:Ljava/lang/String;

    .line 74
    const v0, 0x7f060039

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/base/RecordBase;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/RecordBase;->STRING_SECOND:Ljava/lang/String;

    .line 75
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/RecordBase;->initHandler()V

    .line 76
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/RecordBase;->startRecord()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 234
    invoke-super {p0}, Lcom/amoi/AmoiEngineerMode/base/TestBase;->onDestroy()V

    .line 235
    const-string v0, "RecordBase"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-boolean v0, p0, Lcom/amoi/AmoiEngineerMode/base/RecordBase;->hasSDCard:Z

    if-eqz v0, :cond_0

    .line 237
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/RecordBase;->stopPlay()V

    .line 238
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/RecordBase;->stopRecord()V

    .line 239
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/RecordBase;->destroyTimer()V

    .line 240
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/RecordBase;->recordFileName:Ljava/lang/String;

    invoke-static {v0}, Lcom/amoi/AmoiEngineerMode/util/FileHelper;->delete(Ljava/lang/String;)V

    .line 242
    :cond_0
    return-void
.end method

.method protected playback()V
    .locals 0

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/RecordBase;->stopRecord()V

    .line 214
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/RecordBase;->startPlay()V

    .line 215
    return-void
.end method

.method protected startPlay()V
    .locals 3

    .prologue
    .line 173
    const-string v1, "RecordBase"

    const-string v2, "startPlay"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/RecordBase;->stopTimer()V

    .line 177
    :try_start_0
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/RecordBase;->player:Landroid/media/MediaPlayer;

    .line 178
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/RecordBase;->player:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/amoi/AmoiEngineerMode/base/RecordBase;->recordFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 179
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/RecordBase;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 180
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/RecordBase;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 181
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/RecordBase;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 184
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/RecordBase;->STRING_PLAYBACK:Ljava/lang/String;

    iput-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/RecordBase;->text:Ljava/lang/String;

    .line 185
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/RecordBase;->startTimer()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    :goto_0
    const-string v1, "RecordBase"

    const-string v2, "playing"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    return-void

    .line 186
    :catch_0
    move-exception v0

    .line 187
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "RecordBase"

    const-string v2, "error to play record"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected startRecord()V
    .locals 3

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/RecordBase;->stopTimer()V

    .line 134
    :try_start_0
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/RecordBase;->recordFileName:Ljava/lang/String;

    invoke-static {v1}, Lcom/amoi/AmoiEngineerMode/util/FileHelper;->delete(Ljava/lang/String;)V

    .line 136
    new-instance v1, Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;-><init>(I)V

    iput-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/RecordBase;->recorder:Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;

    .line 137
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/RecordBase;->recorder:Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;

    iget-object v2, p0, Lcom/amoi/AmoiEngineerMode/base/RecordBase;->recordFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 138
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/RecordBase;->recorder:Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;

    invoke-virtual {v1}, Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;->prepare()V

    .line 139
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/RecordBase;->recorder:Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;

    invoke-virtual {v1}, Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;->start()V

    .line 142
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/RecordBase;->STRING_RECORDING:Ljava/lang/String;

    iput-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/RecordBase;->text:Ljava/lang/String;

    .line 144
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/RecordBase;->startTimer()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 151
    :goto_0
    const-string v1, "RecordBase"

    const-string v2, "recording"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    return-void

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v1, "RecordBase"

    const-string v2, "error to start record"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 147
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .line 148
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v1, "RecordBase"

    const-string v2, "error to start record"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 149
    const-string v1, "\u542f\u52a8\u5f55\u97f3\u673a\u5931\u8d25!"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected startTimer()V
    .locals 6

    .prologue
    .line 88
    const-string v0, "EngineerMode"

    const-string v1, "RecordBase startTimerAndTimerTask"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/RecordBase;->timer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/RecordBase;->timer:Ljava/util/Timer;

    .line 93
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/amoi/AmoiEngineerMode/base/RecordBase;->seconds:I

    .line 94
    new-instance v0, Lcom/amoi/AmoiEngineerMode/base/RecordBase$UpdateSecondTask;

    invoke-direct {v0, p0}, Lcom/amoi/AmoiEngineerMode/base/RecordBase$UpdateSecondTask;-><init>(Lcom/amoi/AmoiEngineerMode/base/RecordBase;)V

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/RecordBase;->timerTask:Ljava/util/TimerTask;

    .line 95
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/RecordBase;->timer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/RecordBase;->timerTask:Ljava/util/TimerTask;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 96
    return-void
.end method

.method protected stopPlay()V
    .locals 3

    .prologue
    .line 196
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/RecordBase;->player:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 198
    :try_start_0
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/RecordBase;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    :goto_0
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/RecordBase;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 203
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/RecordBase;->player:Landroid/media/MediaPlayer;

    .line 205
    :cond_0
    return-void

    .line 199
    :catch_0
    move-exception v0

    .line 200
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v1, "RecordBase"

    const-string v2, "error to stop player"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected stopRecord()V
    .locals 3

    .prologue
    .line 158
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/RecordBase;->recorder:Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;

    if-eqz v1, :cond_0

    .line 160
    :try_start_0
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/RecordBase;->recorder:Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;

    invoke-virtual {v1}, Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;->stop()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    :goto_0
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/RecordBase;->recorder:Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;

    invoke-virtual {v1}, Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;->release()V

    .line 165
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/RecordBase;->recorder:Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;

    .line 167
    :cond_0
    return-void

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v1, "RecordBase"

    const-string v2, "error to stop record"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected stopTimer()V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/RecordBase;->timerTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/RecordBase;->timerTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/RecordBase;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/RecordBase;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 108
    :cond_1
    return-void
.end method
