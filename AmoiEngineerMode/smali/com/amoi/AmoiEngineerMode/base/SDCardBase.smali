.class public abstract Lcom/amoi/AmoiEngineerMode/base/SDCardBase;
.super Landroid/app/Activity;
.source "SDCardBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amoi/AmoiEngineerMode/base/SDCardBase$SDCardWriteException;,
        Lcom/amoi/AmoiEngineerMode/base/SDCardBase$SDCardNotFoundException;,
        Lcom/amoi/AmoiEngineerMode/base/SDCardBase$SDCardTestTask;
    }
.end annotation


# static fields
.field protected static final SLEEP_TIME:I = 0x3e8

.field protected static final TAG:Ljava/lang/String; = "SDCardBase"


# instance fields
.field protected DoulSD:Z

.field private audioManager:Landroid/media/AudioManager;

.field protected exitButton:Landroid/widget/Button;

.field protected fileName:Ljava/lang/String;

.field protected hasSDCard:Z

.field protected mContext:Landroid/content/Context;

.field protected nextButton:Landroid/widget/Button;

.field private originalVolume:I

.field protected player:Landroid/media/MediaPlayer;

.field protected prevButton:Landroid/widget/Button;

.field protected textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amoi/AmoiEngineerMode/base/SDCardBase;->DoulSD:Z

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/SDCardBase;->mContext:Landroid/content/Context;

    .line 304
    return-void
.end method

.method private getVolume()I
    .locals 3

    .prologue
    .line 191
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/SDCardBase;->audioManager:Landroid/media/AudioManager;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    .line 193
    .local v0, vol:I
    return v0
.end method


# virtual methods
.method protected getInputStreamFromMp3()Ljava/io/InputStream;
    .locals 3

    .prologue
    .line 79
    const v1, 0x7f040002

    .line 80
    .local v1, resId:I
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/SDCardBase;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 81
    .local v0, res:Landroid/content/res/Resources;
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    return-object v2
.end method

.method protected getStorgeState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getStrogeDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 90
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method protected initAudio()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 178
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/base/SDCardBase;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/SDCardBase;->audioManager:Landroid/media/AudioManager;

    .line 180
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/SDCardBase;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/amoi/AmoiEngineerMode/base/SDCardBase;->originalVolume:I

    .line 183
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/SDCardBase;->audioManager:Landroid/media/AudioManager;

    invoke-direct {p0}, Lcom/amoi/AmoiEngineerMode/base/SDCardBase;->getVolume()I

    move-result v1

    const/16 v2, 0x8

    invoke-virtual {v0, v3, v1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 186
    return-void
.end method

.method protected abstract initButton()V
.end method

.method protected initView()V
    .locals 1

    .prologue
    .line 53
    const v0, 0x7f030022

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/base/SDCardBase;->setContentView(I)V

    .line 54
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/SDCardBase;->isExternalStroge2()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    const v0, 0x7f0600cd

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/base/SDCardBase;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/base/SDCardBase;->setTitle(Ljava/lang/CharSequence;)V

    .line 61
    :goto_0
    const v0, 0x7f070010

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/base/SDCardBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/SDCardBase;->textView:Landroid/widget/TextView;

    .line 63
    const v0, 0x7f070012

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/base/SDCardBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/SDCardBase;->prevButton:Landroid/widget/Button;

    .line 64
    const v0, 0x7f070013

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/base/SDCardBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/SDCardBase;->nextButton:Landroid/widget/Button;

    .line 65
    const v0, 0x7f070014

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/base/SDCardBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/SDCardBase;->exitButton:Landroid/widget/Button;

    .line 66
    return-void

    .line 57
    :cond_0
    const v0, 0x7f0600cc

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/base/SDCardBase;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/base/SDCardBase;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected isExternalStroge2()Z
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    iput-object p0, p0, Lcom/amoi/AmoiEngineerMode/base/SDCardBase;->mContext:Landroid/content/Context;

    .line 46
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/SDCardBase;->initView()V

    .line 47
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/SDCardBase;->initButton()V

    .line 48
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/SDCardBase;->initAudio()V

    .line 49
    new-instance v0, Lcom/amoi/AmoiEngineerMode/base/SDCardBase$SDCardTestTask;

    invoke-direct {v0, p0}, Lcom/amoi/AmoiEngineerMode/base/SDCardBase$SDCardTestTask;-><init>(Lcom/amoi/AmoiEngineerMode/base/SDCardBase;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/amoi/AmoiEngineerMode/base/SDCardBase$SDCardTestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 50
    return-void
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    .line 197
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 198
    iget-boolean v1, p0, Lcom/amoi/AmoiEngineerMode/base/SDCardBase;->hasSDCard:Z

    if-eqz v1, :cond_1

    .line 199
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/SDCardBase;->player:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 202
    :try_start_0
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/SDCardBase;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    :goto_0
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/SDCardBase;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 209
    :cond_0
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/SDCardBase;->fileName:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 211
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/SDCardBase;->fileName:Ljava/lang/String;

    invoke-static {v1}, Lcom/amoi/AmoiEngineerMode/util/FileHelper;->delete(Ljava/lang/String;)V

    .line 215
    :cond_1
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/SDCardBase;->audioManager:Landroid/media/AudioManager;

    const/4 v2, 0x3

    iget v3, p0, Lcom/amoi/AmoiEngineerMode/base/SDCardBase;->originalVolume:I

    const/16 v4, 0x8

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 217
    return-void

    .line 203
    :catch_0
    move-exception v0

    .line 204
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v1, "EngineerMode"

    const-string v2, "SDCardBase error to stop the media player"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected playMusic()V
    .locals 3

    .prologue
    .line 155
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/SDCardBase;->fileName:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 156
    const-string v1, "EngineerMode"

    const-string v2, "SDCardBase fileName is null. No SD card?"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :goto_0
    return-void

    .line 159
    :cond_0
    const-string v1, "EngineerMode"

    const-string v2, "SDCardBase play music after write......."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/SDCardBase;->player:Landroid/media/MediaPlayer;

    if-nez v1, :cond_1

    .line 161
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/SDCardBase;->player:Landroid/media/MediaPlayer;

    .line 164
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/SDCardBase;->player:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/amoi/AmoiEngineerMode/base/SDCardBase;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 165
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/SDCardBase;->player:Landroid/media/MediaPlayer;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 166
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/SDCardBase;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 167
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/SDCardBase;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 168
    :catch_0
    move-exception v0

    .line 169
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "EngineerMode"

    const-string v2, "SDCardBase playMusic error:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 170
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 171
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v1, "EngineerMode"

    const-string v2, "SDCardBase playMusic error:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 172
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v0

    .line 173
    .local v0, e:Ljava/io/IOException;
    const-string v1, "EngineerMode"

    const-string v2, "SDCardBase playMusic error:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected abstract showButton(I)V
.end method

.method protected writeSDCard()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amoi/AmoiEngineerMode/base/SDCardBase$SDCardNotFoundException;,
            Lcom/amoi/AmoiEngineerMode/base/SDCardBase$SDCardWriteException;
        }
    .end annotation

    .prologue
    .line 106
    const/16 v7, 0x1000

    new-array v0, v7, [B

    .line 108
    .local v0, buffer:[B
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/SDCardBase;->getStorgeState()Ljava/lang/String;

    move-result-object v6

    .line 111
    .local v6, sDStateString:Ljava/lang/String;
    const-string v7, "mounted"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/amoi/AmoiEngineerMode/base/SDCardBase;->hasSDCard:Z

    .line 112
    iget-boolean v7, p0, Lcom/amoi/AmoiEngineerMode/base/SDCardBase;->hasSDCard:Z

    if-eqz v7, :cond_1

    .line 114
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/SDCardBase;->getInputStreamFromMp3()Ljava/io/InputStream;

    move-result-object v3

    .line 117
    .local v3, inputStream:Ljava/io/InputStream;
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/SDCardBase;->getStrogeDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/Amoi_SDCardTest.mp3"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/amoi/AmoiEngineerMode/base/SDCardBase;->fileName:Ljava/lang/String;

    .line 120
    iget-object v7, p0, Lcom/amoi/AmoiEngineerMode/base/SDCardBase;->fileName:Ljava/lang/String;

    invoke-static {v7}, Lcom/amoi/AmoiEngineerMode/util/FileHelper;->delete(Ljava/lang/String;)V

    .line 121
    new-instance v4, Ljava/io/File;

    iget-object v7, p0, Lcom/amoi/AmoiEngineerMode/base/SDCardBase;->fileName:Ljava/lang/String;

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 122
    .local v4, myFile:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    .line 125
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 127
    .local v5, outputStream:Ljava/io/FileOutputStream;
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, byteReader:I
    const/4 v7, -0x1

    if-eq v1, v7, :cond_0

    .line 128
    const/4 v7, 0x0

    invoke-virtual {v5, v0, v7, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 134
    .end local v1           #byteReader:I
    .end local v4           #myFile:Ljava/io/File;
    .end local v5           #outputStream:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v2

    .line 135
    .local v2, e:Ljava/lang/Exception;
    const-string v7, "EngineerMode"

    const-string v8, "SDCardBase .....write file to sd card error........."

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 137
    new-instance v7, Lcom/amoi/AmoiEngineerMode/base/SDCardBase$SDCardWriteException;

    invoke-direct {v7, p0}, Lcom/amoi/AmoiEngineerMode/base/SDCardBase$SDCardWriteException;-><init>(Lcom/amoi/AmoiEngineerMode/base/SDCardBase;)V

    throw v7

    .line 131
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v1       #byteReader:I
    .restart local v4       #myFile:Ljava/io/File;
    .restart local v5       #outputStream:Ljava/io/FileOutputStream;
    :cond_0
    :try_start_1
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 132
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 133
    const-string v7, "EngineerMode"

    const-string v8, "SDCardBase write SD card success"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 141
    const-wide/16 v7, 0x3e8

    :try_start_2
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 149
    :goto_1
    return-void

    .line 142
    :catch_1
    move-exception v2

    .line 143
    .local v2, e:Ljava/lang/InterruptedException;
    const-string v7, "EngineerMode"

    const-string v8, "SDCardBase sleep error"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 147
    .end local v1           #byteReader:I
    .end local v2           #e:Ljava/lang/InterruptedException;
    .end local v3           #inputStream:Ljava/io/InputStream;
    .end local v4           #myFile:Ljava/io/File;
    .end local v5           #outputStream:Ljava/io/FileOutputStream;
    :cond_1
    new-instance v7, Lcom/amoi/AmoiEngineerMode/base/SDCardBase$SDCardNotFoundException;

    invoke-direct {v7, p0}, Lcom/amoi/AmoiEngineerMode/base/SDCardBase$SDCardNotFoundException;-><init>(Lcom/amoi/AmoiEngineerMode/base/SDCardBase;)V

    throw v7
.end method
