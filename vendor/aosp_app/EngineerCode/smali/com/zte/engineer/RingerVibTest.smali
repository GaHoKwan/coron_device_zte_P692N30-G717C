.class public Lcom/zte/engineer/RingerVibTest;
.super Lcom/zte/engineer/ZteActivity;
.source "RingerVibTest.java"


# static fields
.field private static final MSG_MUSIC_PLAY:I = 0x1

.field private static final MSG_MUSIC_STOP:I = 0x2

.field private static final TAG:Ljava/lang/String; = "RingerVibTest"

.field private static final TIMER_EVENT_TICK:I = 0x1


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field public mHandler:Landroid/os/Handler;

.field private mHandlerVib:Landroid/os/Handler;

.field private mMediaP:Landroid/media/MediaPlayer;

.field private mOldRingmode:I

.field private mOldVolume:I

.field private mRingManager:Landroid/media/Ringtone;

.field mVibFreq:[J

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0}, Lcom/zte/engineer/ZteActivity;-><init>()V

    .line 31
    iput-object v0, p0, Lcom/zte/engineer/RingerVibTest;->mMediaP:Landroid/media/MediaPlayer;

    .line 34
    iput-object v0, p0, Lcom/zte/engineer/RingerVibTest;->mRingManager:Landroid/media/Ringtone;

    .line 35
    iput-object v0, p0, Lcom/zte/engineer/RingerVibTest;->mAudioManager:Landroid/media/AudioManager;

    .line 37
    iput v1, p0, Lcom/zte/engineer/RingerVibTest;->mOldVolume:I

    .line 38
    iput v1, p0, Lcom/zte/engineer/RingerVibTest;->mOldRingmode:I

    .line 43
    const/4 v0, 0x2

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/zte/engineer/RingerVibTest;->mVibFreq:[J

    .line 120
    new-instance v0, Lcom/zte/engineer/RingerVibTest$1;

    invoke-direct {v0, p0}, Lcom/zte/engineer/RingerVibTest$1;-><init>(Lcom/zte/engineer/RingerVibTest;)V

    iput-object v0, p0, Lcom/zte/engineer/RingerVibTest;->mHandlerVib:Landroid/os/Handler;

    .line 239
    new-instance v0, Lcom/zte/engineer/RingerVibTest$2;

    invoke-direct {v0, p0}, Lcom/zte/engineer/RingerVibTest$2;-><init>(Lcom/zte/engineer/RingerVibTest;)V

    iput-object v0, p0, Lcom/zte/engineer/RingerVibTest;->mHandler:Landroid/os/Handler;

    return-void

    .line 43
    :array_0
    .array-data 0x8
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$000(Lcom/zte/engineer/RingerVibTest;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/zte/engineer/RingerVibTest;->changeVibratorLedStatus()V

    return-void
.end method

.method static synthetic access$100(Lcom/zte/engineer/RingerVibTest;)Landroid/media/Ringtone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/zte/engineer/RingerVibTest;->mRingManager:Landroid/media/Ringtone;

    return-object v0
.end method

.method private changeVibratorLedStatus()V
    .locals 3

    .prologue
    .line 116
    iget-object v0, p0, Lcom/zte/engineer/RingerVibTest;->mVibrator:Landroid/os/Vibrator;

    iget-object v1, p0, Lcom/zte/engineer/RingerVibTest;->mVibFreq:[J

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 117
    return-void
.end method


# virtual methods
.method public finishSelf(I)V
    .locals 2
    .parameter "result"

    .prologue
    .line 199
    invoke-super {p0, p1}, Lcom/zte/engineer/ZteActivity;->finishSelf(I)V

    .line 201
    iget-object v0, p0, Lcom/zte/engineer/RingerVibTest;->mHandlerVib:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 202
    iget-object v0, p0, Lcom/zte/engineer/RingerVibTest;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 204
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 209
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    const/16 v1, 0xa

    .line 214
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 222
    invoke-virtual {p0, v1}, Lcom/zte/engineer/RingerVibTest;->finishSelf(I)V

    .line 225
    :goto_0
    return-void

    .line 216
    :pswitch_0
    invoke-virtual {p0, v1}, Lcom/zte/engineer/RingerVibTest;->finishSelf(I)V

    goto :goto_0

    .line 219
    :pswitch_1
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/zte/engineer/RingerVibTest;->finishSelf(I)V

    goto :goto_0

    .line 214
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

    .line 50
    invoke-super {p0, p1}, Lcom/zte/engineer/ZteActivity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    const-string v3, "vibrator"

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Vibrator;

    iput-object v3, p0, Lcom/zte/engineer/RingerVibTest;->mVibrator:Landroid/os/Vibrator;

    .line 55
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 56
    const v3, 0x7f030015

    invoke-virtual {p0, v3}, Landroid/app/Activity;->setContentView(I)V

    .line 58
    const v3, 0x7f080065

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 59
    .local v2, mTextView:Landroid/widget/TextView;
    const v3, 0x7f06000c

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 74
    new-instance v0, Ljava/io/File;

    const-string v3, "/system/media/audio/ringtones/BeatPlucker.ogg"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 75
    .local v0, audioFile:Ljava/io/File;
    const/4 v1, 0x0

    .line 77
    .local v1, fav:Landroid/net/Uri;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 78
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 81
    :cond_0
    if-eqz v1, :cond_2

    .line 82
    const-string v3, "RingerVibTest"

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

    .line 84
    invoke-static {p0, v1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v3

    iput-object v3, p0, Lcom/zte/engineer/RingerVibTest;->mRingManager:Landroid/media/Ringtone;

    .line 92
    :goto_0
    iget-object v3, p0, Lcom/zte/engineer/RingerVibTest;->mRingManager:Landroid/media/Ringtone;

    if-nez v3, :cond_1

    .line 93
    const-string v3, "RingerVibTest"

    const-string v4, "mRingManager is null!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_1
    const-string v3, "audio"

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    iput-object v3, p0, Lcom/zte/engineer/RingerVibTest;->mAudioManager:Landroid/media/AudioManager;

    .line 97
    iget-object v3, p0, Lcom/zte/engineer/RingerVibTest;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    iput v3, p0, Lcom/zte/engineer/RingerVibTest;->mOldVolume:I

    .line 98
    iget-object v3, p0, Lcom/zte/engineer/RingerVibTest;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v3

    iput v3, p0, Lcom/zte/engineer/RingerVibTest;->mOldRingmode:I

    .line 99
    iget-object v3, p0, Lcom/zte/engineer/RingerVibTest;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v6}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 100
    iget-object v3, p0, Lcom/zte/engineer/RingerVibTest;->mAudioManager:Landroid/media/AudioManager;

    iget-object v4, p0, Lcom/zte/engineer/RingerVibTest;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v6}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v3, v6, v4, v5}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 103
    const-string v3, "RingerVibTest"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ringmode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/zte/engineer/RingerVibTest;->mOldRingmode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mOldVolume:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/zte/engineer/RingerVibTest;->mOldVolume:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    const v3, 0x7f08006e

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    const v3, 0x7f08006f

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    return-void

    .line 88
    :cond_2
    sget-object v3, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    invoke-static {p0, v3}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v3

    iput-object v3, p0, Lcom/zte/engineer/RingerVibTest;->mRingManager:Landroid/media/Ringtone;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 193
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 194
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 171
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 173
    iget-object v0, p0, Lcom/zte/engineer/RingerVibTest;->mHandlerVib:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 174
    iget-object v0, p0, Lcom/zte/engineer/RingerVibTest;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 182
    invoke-virtual {p0}, Lcom/zte/engineer/RingerVibTest;->stopTestAndRestore()V

    .line 185
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 136
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 138
    iget-object v0, p0, Lcom/zte/engineer/RingerVibTest;->mVibrator:Landroid/os/Vibrator;

    iget-object v1, p0, Lcom/zte/engineer/RingerVibTest;->mVibFreq:[J

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 139
    iget-object v0, p0, Lcom/zte/engineer/RingerVibTest;->mHandlerVib:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 143
    iget-object v0, p0, Lcom/zte/engineer/RingerVibTest;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 166
    return-void
.end method

.method public stopTestAndRestore()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 230
    iget-object v0, p0, Lcom/zte/engineer/RingerVibTest;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 232
    iget-object v0, p0, Lcom/zte/engineer/RingerVibTest;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/zte/engineer/RingerVibTest;->mOldRingmode:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 233
    iget-object v0, p0, Lcom/zte/engineer/RingerVibTest;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/zte/engineer/RingerVibTest;->mOldVolume:I

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 234
    return-void
.end method
