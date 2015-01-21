.class public Lcom/zte/engineer/SDcardTest;
.super Lcom/zte/engineer/ZteActivity;
.source "SDcardTest.java"


# static fields
.field private static final MSG_MUSIC_PLAY:I = 0x1

.field private static final MSG_MUSIC_STOP:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SDcardTest"


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

    .line 30
    invoke-direct {p0}, Lcom/zte/engineer/ZteActivity;-><init>()V

    .line 31
    iput-object v0, p0, Lcom/zte/engineer/SDcardTest;->mMediaP:Landroid/media/MediaPlayer;

    .line 34
    iput-object v0, p0, Lcom/zte/engineer/SDcardTest;->mRingManager:Landroid/media/Ringtone;

    .line 35
    iput-object v0, p0, Lcom/zte/engineer/SDcardTest;->mAudioManager:Landroid/media/AudioManager;

    .line 37
    iput v1, p0, Lcom/zte/engineer/SDcardTest;->mOldVolume:I

    .line 38
    iput v1, p0, Lcom/zte/engineer/SDcardTest;->mOldRingmode:I

    .line 222
    new-instance v0, Lcom/zte/engineer/SDcardTest$1;

    invoke-direct {v0, p0}, Lcom/zte/engineer/SDcardTest$1;-><init>(Lcom/zte/engineer/SDcardTest;)V

    iput-object v0, p0, Lcom/zte/engineer/SDcardTest;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/zte/engineer/SDcardTest;)Landroid/media/Ringtone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/zte/engineer/SDcardTest;->mRingManager:Landroid/media/Ringtone;

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 144
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    const/16 v1, 0xa

    .line 149
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 157
    invoke-virtual {p0, v1}, Lcom/zte/engineer/ZteActivity;->finishSelf(I)V

    .line 160
    :goto_0
    return-void

    .line 151
    :pswitch_0
    invoke-virtual {p0, v1}, Lcom/zte/engineer/ZteActivity;->finishSelf(I)V

    goto :goto_0

    .line 154
    :pswitch_1
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/zte/engineer/ZteActivity;->finishSelf(I)V

    goto :goto_0

    .line 149
    nop

    :pswitch_data_0
    .packed-switch 0x7f08004a
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 27
    .parameter "savedInstanceState"

    .prologue
    .line 43
    invoke-super/range {p0 .. p1}, Lcom/zte/engineer/ZteActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const/16 v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 46
    const v23, 0x7f030010

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 48
    const/4 v4, 0x0

    .line 53
    .local v4, isPlusIn:Z
    const v23, 0x7f08003c

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 54
    .local v18, mTextView:Landroid/widget/TextView;
    const v23, 0x7f08003e

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 55
    .local v11, mSDStatus:Landroid/widget/TextView;
    const v23, 0x7f08003f

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 56
    .local v12, mSDTotal:Landroid/widget/TextView;
    const v23, 0x7f080040

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 57
    .local v8, mBSDUsed:Landroid/widget/TextView;
    const v23, 0x7f080041

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 59
    .local v7, mBSDAvailable:Landroid/widget/TextView;
    const-string v23, "storage"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/os/storage/StorageManager;

    .line 60
    .local v17, mStorageManager:Landroid/os/storage/StorageManager;
    invoke-virtual/range {v17 .. v17}, Landroid/os/storage/StorageManager;->getVolumePaths()[Ljava/lang/String;

    move-result-object v22

    .line 63
    .local v22, storagePathList:[Ljava/lang/String;
    const/4 v5, 0x0

    .line 64
    .local v5, isPlusIn0:Z
    const/4 v6, 0x0

    .line 65
    .local v6, isPlusIn1:Z
    const/16 v19, 0x0

    .line 66
    .local v19, stat:Landroid/os/StatFs;
    const/16 v23, 0x0

    aget-object v23, v22, v23

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 67
    .local v20, state0:Ljava/lang/String;
    const/16 v23, 0x1

    aget-object v23, v22, v23

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 68
    .local v21, state1:Ljava/lang/String;
    const-string v23, "mounted"

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 69
    const-string v23, "mounted"

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 70
    const v23, 0x7f06000e

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 79
    move v4, v6

    .line 80
    new-instance v19, Landroid/os/StatFs;

    .end local v19           #stat:Landroid/os/StatFs;
    const/16 v23, 0x1

    aget-object v23, v22, v23

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 84
    .restart local v19       #stat:Landroid/os/StatFs;
    if-eqz v4, :cond_2

    .line 86
    invoke-virtual/range {v19 .. v19}, Landroid/os/StatFs;->getBlockCount()I

    move-result v23

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v23, v0

    invoke-virtual/range {v19 .. v19}, Landroid/os/StatFs;->getBlockSize()I

    move-result v25

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v25, v0

    mul-long v23, v23, v25

    const-wide/16 v25, 0x400

    div-long v23, v23, v25

    const-wide/16 v25, 0x400

    div-long v13, v23, v25

    .line 87
    .local v13, mSDTotalCount:J
    invoke-virtual/range {v19 .. v19}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v23

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v23, v0

    invoke-virtual/range {v19 .. v19}, Landroid/os/StatFs;->getBlockSize()I

    move-result v25

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v25, v0

    mul-long v23, v23, v25

    const-wide/16 v25, 0x400

    div-long v23, v23, v25

    const-wide/16 v25, 0x400

    div-long v9, v23, v25

    .line 88
    .local v9, mSDAvailableCount:J
    sub-long v15, v13, v9

    .line 89
    .local v15, mSDUsedCount:J
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const v24, 0x7f060043

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const v24, 0x7f060044

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    :goto_0
    const v23, 0x7f060046

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    const v23, 0x7f060047

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    const v23, 0x7f060048

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    const v23, 0x7f08004a

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/Button;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    const v23, 0x7f08004b

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/Button;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    new-instance v2, Ljava/io/File;

    const-string v23, "/system/media/audio/ringtones/BeatPlucker.ogg"

    move-object/from16 v0, v23

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 108
    .local v2, audioFile:Ljava/io/File;
    const/4 v3, 0x0

    .line 110
    .local v3, fav:Landroid/net/Uri;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v23

    if-eqz v23, :cond_0

    .line 111
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    .line 114
    :cond_0
    if-eqz v3, :cond_3

    .line 115
    const-string v23, "SDcardTest"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "fav:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    move-object/from16 v0, p0

    invoke-static {v0, v3}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zte/engineer/SDcardTest;->mRingManager:Landroid/media/Ringtone;

    .line 125
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/engineer/SDcardTest;->mRingManager:Landroid/media/Ringtone;

    move-object/from16 v23, v0

    if-nez v23, :cond_1

    .line 126
    const-string v23, "SDcardTest"

    const-string v24, "mRingManager is null!!"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_1
    const-string v23, "audio"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/media/AudioManager;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zte/engineer/SDcardTest;->mAudioManager:Landroid/media/AudioManager;

    .line 130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/engineer/SDcardTest;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    invoke-virtual/range {v23 .. v24}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/zte/engineer/SDcardTest;->mOldVolume:I

    .line 131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/engineer/SDcardTest;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/zte/engineer/SDcardTest;->mOldRingmode:I

    .line 132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/engineer/SDcardTest;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    invoke-virtual/range {v23 .. v24}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/engineer/SDcardTest;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/engineer/SDcardTest;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v25, v0

    const/16 v26, 0x2

    invoke-virtual/range {v25 .. v26}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v25

    const/16 v26, 0x0

    invoke-virtual/range {v23 .. v26}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 136
    const-string v23, "SDcardTest"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "ringmode:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/engineer/SDcardTest;->mOldRingmode:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " mOldVolume:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/engineer/SDcardTest;->mOldVolume:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    return-void

    .line 93
    .end local v2           #audioFile:Ljava/io/File;
    .end local v3           #fav:Landroid/net/Uri;
    .end local v9           #mSDAvailableCount:J
    .end local v13           #mSDTotalCount:J
    .end local v15           #mSDUsedCount:J
    :cond_2
    const-wide/16 v13, 0x0

    .line 94
    .restart local v13       #mSDTotalCount:J
    const-wide/16 v9, 0x0

    .line 95
    .restart local v9       #mSDAvailableCount:J
    const-wide/16 v15, 0x0

    .line 96
    .restart local v15       #mSDUsedCount:J
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const v24, 0x7f060043

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const v24, 0x7f060045

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 121
    .restart local v2       #audioFile:Ljava/io/File;
    .restart local v3       #fav:Landroid/net/Uri;
    :cond_3
    sget-object v23, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zte/engineer/SDcardTest;->mRingManager:Landroid/media/Ringtone;

    goto/16 :goto_1
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 208
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 209
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 192
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 198
    invoke-virtual {p0}, Lcom/zte/engineer/SDcardTest;->stopTestAndRestore()V

    .line 200
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 163
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 165
    iget-object v0, p0, Lcom/zte/engineer/SDcardTest;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 187
    return-void
.end method

.method public stopTestAndRestore()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 213
    iget-object v0, p0, Lcom/zte/engineer/SDcardTest;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 215
    iget-object v0, p0, Lcom/zte/engineer/SDcardTest;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/zte/engineer/SDcardTest;->mOldRingmode:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 216
    iget-object v0, p0, Lcom/zte/engineer/SDcardTest;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/zte/engineer/SDcardTest;->mOldVolume:I

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 217
    return-void
.end method
