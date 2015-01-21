.class public Lcom/zte/engineer/RingerTest;
.super Lcom/zte/engineer/ZteActivity;
.source "RingerTest.java"


# static fields
.field private static final MSG_MUSIC_PLAY:I = 0x1

.field private static final MSG_MUSIC_STOP:I = 0x2

.field private static final TAG:Ljava/lang/String; = "RingerTest"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field public mHandler:Landroid/os/Handler;

.field private mMediaP:Landroid/media/MediaPlayer;

.field private mOldRingmode:I

.field private mOldVolume:I

.field private mRingManager:Landroid/media/Ringtone;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0}, Lcom/zte/engineer/ZteActivity;-><init>()V

    .line 29
    iput-object v0, p0, Lcom/zte/engineer/RingerTest;->mMediaP:Landroid/media/MediaPlayer;

    .line 32
    iput-object v0, p0, Lcom/zte/engineer/RingerTest;->mRingManager:Landroid/media/Ringtone;

    .line 33
    iput-object v0, p0, Lcom/zte/engineer/RingerTest;->mAudioManager:Landroid/media/AudioManager;

    .line 35
    iput v1, p0, Lcom/zte/engineer/RingerTest;->mOldVolume:I

    .line 36
    iput v1, p0, Lcom/zte/engineer/RingerTest;->mOldRingmode:I

    .line 189
    new-instance v0, Lcom/zte/engineer/RingerTest$1;

    invoke-direct {v0, p0}, Lcom/zte/engineer/RingerTest$1;-><init>(Lcom/zte/engineer/RingerTest;)V

    iput-object v0, p0, Lcom/zte/engineer/RingerTest;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/zte/engineer/RingerTest;)Landroid/media/Ringtone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/zte/engineer/RingerTest;->mRingManager:Landroid/media/Ringtone;

    return-object v0
.end method


# virtual methods
.method public finishSelf(I)V
    .locals 0
    .parameter "result"

    .prologue
    .line 153
    invoke-super {p0, p1}, Lcom/zte/engineer/ZteActivity;->finishSelf(I)V

    .line 154
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 159
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    const/16 v1, 0xa

    .line 164
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 172
    invoke-virtual {p0, v1}, Lcom/zte/engineer/RingerTest;->finishSelf(I)V

    .line 175
    :goto_0
    return-void

    .line 166
    :pswitch_0
    invoke-virtual {p0, v1}, Lcom/zte/engineer/RingerTest;->finishSelf(I)V

    goto :goto_0

    .line 169
    :pswitch_1
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/zte/engineer/RingerTest;->finishSelf(I)V

    goto :goto_0

    .line 164
    nop

    :pswitch_data_0
    .packed-switch 0x7f08006e
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x2

    .line 42
    invoke-super {p0, p1}, Lcom/zte/engineer/ZteActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 45
    const v3, 0x7f030015

    invoke-virtual {p0, v3}, Landroid/app/Activity;->setContentView(I)V

    .line 47
    const v3, 0x7f080065

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 48
    .local v2, mTextView:Landroid/widget/TextView;
    const v3, 0x7f06000c

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 63
    new-instance v0, Ljava/io/File;

    const-string v3, "/system/media/audio/ringtones/BeatPlucker.ogg"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 64
    .local v0, audioFile:Ljava/io/File;
    const/4 v1, 0x0

    .line 66
    .local v1, fav:Landroid/net/Uri;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 67
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 70
    :cond_0
    if-eqz v1, :cond_2

    .line 71
    const-string v3, "RingerTest"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fav:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-static {p0, v1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v3

    iput-object v3, p0, Lcom/zte/engineer/RingerTest;->mRingManager:Landroid/media/Ringtone;

    .line 81
    :goto_0
    iget-object v3, p0, Lcom/zte/engineer/RingerTest;->mRingManager:Landroid/media/Ringtone;

    if-nez v3, :cond_1

    .line 82
    const-string v3, "RingerTest"

    const-string v4, "mRingManager is null!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_1
    const-string v3, "audio"

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    iput-object v3, p0, Lcom/zte/engineer/RingerTest;->mAudioManager:Landroid/media/AudioManager;

    .line 86
    iget-object v3, p0, Lcom/zte/engineer/RingerTest;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    iput v3, p0, Lcom/zte/engineer/RingerTest;->mOldVolume:I

    .line 87
    iget-object v3, p0, Lcom/zte/engineer/RingerTest;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v3

    iput v3, p0, Lcom/zte/engineer/RingerTest;->mOldRingmode:I

    .line 88
    iget-object v3, p0, Lcom/zte/engineer/RingerTest;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v6}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 89
    iget-object v3, p0, Lcom/zte/engineer/RingerTest;->mAudioManager:Landroid/media/AudioManager;

    iget-object v4, p0, Lcom/zte/engineer/RingerTest;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v6}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v3, v6, v4, v5}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 92
    const-string v3, "RingerTest"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ringmode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/zte/engineer/RingerTest;->mOldRingmode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mOldVolume:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/zte/engineer/RingerTest;->mOldVolume:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const v3, 0x7f08006e

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    const v3, 0x7f08006f

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    return-void

    .line 77
    :cond_2
    sget-object v3, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    invoke-static {p0, v3}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v3

    iput-object v3, p0, Lcom/zte/engineer/RingerTest;->mRingManager:Landroid/media/Ringtone;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 147
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 148
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 131
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 137
    invoke-virtual {p0}, Lcom/zte/engineer/RingerTest;->stopTestAndRestore()V

    .line 139
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 102
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 104
    iget-object v0, p0, Lcom/zte/engineer/RingerTest;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 126
    return-void
.end method

.method public stopTestAndRestore()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 180
    iget-object v0, p0, Lcom/zte/engineer/RingerTest;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 182
    iget-object v0, p0, Lcom/zte/engineer/RingerTest;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/zte/engineer/RingerTest;->mOldRingmode:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 183
    iget-object v0, p0, Lcom/zte/engineer/RingerTest;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/zte/engineer/RingerTest;->mOldVolume:I

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 184
    return-void
.end method
