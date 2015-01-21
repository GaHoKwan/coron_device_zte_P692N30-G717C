.class public Lcom/hf/manager/SoundManager;
.super Ljava/lang/Object;
.source "SoundManager.java"


# static fields
.field private static _instance:Lcom/hf/manager/SoundManager;


# instance fields
.field private delay:J

.field private locale:Ljava/lang/String;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mKillSoundQueue:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSoundPool:Landroid/media/SoundPool;

.field private mSoundPoolMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private rate:F

.field private seperateTime:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/hf/manager/SoundManager;->mHandler:Landroid/os/Handler;

    .line 31
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/hf/manager/SoundManager;->mKillSoundQueue:Ljava/util/Vector;

    .line 35
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/hf/manager/SoundManager;->delay:J

    .line 37
    const-wide/16 v0, 0x2bc

    iput-wide v0, p0, Lcom/hf/manager/SoundManager;->seperateTime:J

    .line 39
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/hf/manager/SoundManager;->rate:F

    .line 62
    return-void
.end method

.method static synthetic access$0(Lcom/hf/manager/SoundManager;)Ljava/util/Vector;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/hf/manager/SoundManager;->mKillSoundQueue:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$1(Lcom/hf/manager/SoundManager;)Landroid/media/SoundPool;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/hf/manager/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/hf/manager/SoundManager;
    .locals 2

    .prologue
    .line 52
    const-class v1, Lcom/hf/manager/SoundManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/hf/manager/SoundManager;->_instance:Lcom/hf/manager/SoundManager;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lcom/hf/manager/SoundManager;

    invoke-direct {v0}, Lcom/hf/manager/SoundManager;-><init>()V

    sput-object v0, Lcom/hf/manager/SoundManager;->_instance:Lcom/hf/manager/SoundManager;

    .line 54
    :cond_0
    sget-object v0, Lcom/hf/manager/SoundManager;->_instance:Lcom/hf/manager/SoundManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public addSound(Ljava/lang/String;I)V
    .locals 4
    .parameter "key"
    .parameter "SoundID"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/hf/manager/SoundManager;->mSoundPoolMap:Ljava/util/HashMap;

    .line 88
    iget-object v1, p0, Lcom/hf/manager/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/hf/manager/SoundManager;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p2, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 87
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    return-void
.end method

.method public addSound(Ljava/lang/String;Landroid/content/res/AssetFileDescriptor;)V
    .locals 8
    .parameter "key"
    .parameter "afd"

    .prologue
    .line 96
    iget-object v7, p0, Lcom/hf/manager/SoundManager;->mSoundPoolMap:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/hf/manager/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    .line 97
    invoke-virtual {p2}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 98
    invoke-virtual {p2}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    const/4 v6, 0x1

    .line 96
    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->load(Ljava/io/FileDescriptor;JJI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    return-void
.end method

.method public cleanup()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 228
    iget-object v0, p0, Lcom/hf/manager/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 229
    iput-object v1, p0, Lcom/hf/manager/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    .line 230
    iget-object v0, p0, Lcom/hf/manager/SoundManager;->mSoundPoolMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 231
    iget-object v0, p0, Lcom/hf/manager/SoundManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->unloadSoundEffects()V

    .line 232
    sput-object v1, Lcom/hf/manager/SoundManager;->_instance:Lcom/hf/manager/SoundManager;

    .line 234
    return-void
.end method

.method public getLocale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/hf/manager/SoundManager;->locale:Ljava/lang/String;

    return-object v0
.end method

.method public initSounds(Landroid/content/Context;)V
    .locals 4
    .parameter "theContext"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/hf/manager/SoundManager;->mContext:Landroid/content/Context;

    .line 72
    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x1

    .line 73
    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/media/SoundPool;-><init>(III)V

    .line 72
    iput-object v0, p0, Lcom/hf/manager/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/hf/manager/SoundManager;->mSoundPoolMap:Ljava/util/HashMap;

    .line 75
    iget-object v0, p0, Lcom/hf/manager/SoundManager;->mContext:Landroid/content/Context;

    .line 76
    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 75
    iput-object v0, p0, Lcom/hf/manager/SoundManager;->mAudioManager:Landroid/media/AudioManager;

    .line 77
    return-void
.end method

.method public loadSounds(Ljava/lang/String;)V
    .locals 1
    .parameter "locale"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;,
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    .prologue
    .line 200
    const-string v0, "load locale"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    return-void
.end method

.method public playLoopedSound(Ljava/lang/String;)V
    .locals 9
    .parameter "key"

    .prologue
    const/4 v1, 0x3

    .line 135
    iget-object v0, p0, Lcom/hf/manager/SoundManager;->mAudioManager:Landroid/media/AudioManager;

    .line 136
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v8

    .line 138
    .local v8, streamVolume:I
    iget-object v0, p0, Lcom/hf/manager/SoundManager;->mAudioManager:Landroid/media/AudioManager;

    .line 139
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    div-int/2addr v8, v0

    .line 141
    iget-object v0, p0, Lcom/hf/manager/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    .line 142
    iget-object v1, p0, Lcom/hf/manager/SoundManager;->mSoundPoolMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v2, v8

    .line 143
    int-to-float v3, v8

    const/4 v4, 0x1

    const/4 v5, -0x1

    iget v6, p0, Lcom/hf/manager/SoundManager;->rate:F

    .line 141
    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v7

    .line 145
    .local v7, soundId:I
    iget-object v0, p0, Lcom/hf/manager/SoundManager;->mKillSoundQueue:Ljava/util/Vector;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 147
    iget-object v0, p0, Lcom/hf/manager/SoundManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/hf/manager/SoundManager$2;

    invoke-direct {v1, p0}, Lcom/hf/manager/SoundManager$2;-><init>(Lcom/hf/manager/SoundManager;)V

    .line 154
    iget-wide v2, p0, Lcom/hf/manager/SoundManager;->delay:J

    .line 147
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 155
    return-void
.end method

.method public playMutilSounds([Ljava/lang/String;)V
    .locals 12
    .parameter "keys"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x3

    const/4 v5, 0x0

    .line 164
    iget-object v0, p0, Lcom/hf/manager/SoundManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v9

    .line 165
    .local v9, streamVolume:I
    iget-object v0, p0, Lcom/hf/manager/SoundManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    div-int/2addr v9, v0

    .line 166
    array-length v11, p1

    move v10, v5

    :goto_0
    if-lt v10, v11, :cond_0

    .line 181
    iget-object v0, p0, Lcom/hf/manager/SoundManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/hf/manager/SoundManager$3;

    invoke-direct {v1, p0}, Lcom/hf/manager/SoundManager$3;-><init>(Lcom/hf/manager/SoundManager;)V

    .line 188
    iget-wide v2, p0, Lcom/hf/manager/SoundManager;->delay:J

    .line 181
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 190
    return-void

    .line 166
    :cond_0
    aget-object v7, p1, v10

    .line 167
    .local v7, key:Ljava/lang/String;
    const-string v0, "playMutilSounds"

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v0, p0, Lcom/hf/manager/SoundManager;->mSoundPoolMap:Ljava/util/HashMap;

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 169
    iget-object v0, p0, Lcom/hf/manager/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    .line 170
    iget-object v1, p0, Lcom/hf/manager/SoundManager;->mSoundPoolMap:Ljava/util/HashMap;

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 171
    int-to-float v2, v9

    int-to-float v3, v9

    const/4 v4, 0x1

    .line 172
    iget v6, p0, Lcom/hf/manager/SoundManager;->rate:F

    .line 169
    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v8

    .line 174
    .local v8, soundId:I
    iget-wide v0, p0, Lcom/hf/manager/SoundManager;->seperateTime:J

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 175
    iget-object v0, p0, Lcom/hf/manager/SoundManager;->mKillSoundQueue:Ljava/util/Vector;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 166
    .end local v8           #soundId:I
    :cond_1
    add-int/lit8 v0, v10, 0x1

    move v10, v0

    goto :goto_0
.end method

.method public playSound(Ljava/lang/String;)V
    .locals 9
    .parameter "key"

    .prologue
    const/4 v1, 0x3

    .line 107
    iget-object v0, p0, Lcom/hf/manager/SoundManager;->mAudioManager:Landroid/media/AudioManager;

    .line 108
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v8

    .line 110
    .local v8, streamVolume:I
    iget-object v0, p0, Lcom/hf/manager/SoundManager;->mAudioManager:Landroid/media/AudioManager;

    .line 111
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    div-int/2addr v8, v0

    .line 113
    iget-object v0, p0, Lcom/hf/manager/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    .line 114
    iget-object v1, p0, Lcom/hf/manager/SoundManager;->mSoundPoolMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v2, v8

    .line 115
    int-to-float v3, v8

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget v6, p0, Lcom/hf/manager/SoundManager;->rate:F

    .line 113
    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v7

    .line 116
    .local v7, soundId:I
    iget-object v0, p0, Lcom/hf/manager/SoundManager;->mKillSoundQueue:Ljava/util/Vector;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 118
    iget-object v0, p0, Lcom/hf/manager/SoundManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/hf/manager/SoundManager$1;

    invoke-direct {v1, p0}, Lcom/hf/manager/SoundManager$1;-><init>(Lcom/hf/manager/SoundManager;)V

    .line 125
    iget-wide v2, p0, Lcom/hf/manager/SoundManager;->delay:J

    .line 118
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 127
    return-void
.end method

.method public setLocale(Ljava/lang/String;)V
    .locals 0
    .parameter "locale"

    .prologue
    .line 292
    iput-object p1, p0, Lcom/hf/manager/SoundManager;->locale:Ljava/lang/String;

    .line 293
    return-void
.end method

.method public setVoiceDelay(I)V
    .locals 2
    .parameter "i"

    .prologue
    .line 275
    if-lez p1, :cond_0

    .line 276
    const-wide/16 v0, 0x2bc

    iput-wide v0, p0, Lcom/hf/manager/SoundManager;->seperateTime:J

    .line 285
    :goto_0
    return-void

    .line 278
    :cond_0
    if-gez p1, :cond_1

    .line 279
    const-wide/16 v0, 0x190

    iput-wide v0, p0, Lcom/hf/manager/SoundManager;->seperateTime:J

    goto :goto_0

    .line 282
    :cond_1
    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/hf/manager/SoundManager;->seperateTime:J

    goto :goto_0
.end method

.method public setVoiceSpeed(I)V
    .locals 1
    .parameter "i"

    .prologue
    .line 257
    if-lez p1, :cond_0

    .line 258
    const v0, 0x3f99999a

    iput v0, p0, Lcom/hf/manager/SoundManager;->rate:F

    .line 267
    :goto_0
    return-void

    .line 260
    :cond_0
    if-gez p1, :cond_1

    .line 261
    const v0, 0x3f4ccccd

    iput v0, p0, Lcom/hf/manager/SoundManager;->rate:F

    goto :goto_0

    .line 264
    :cond_1
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/hf/manager/SoundManager;->rate:F

    goto :goto_0
.end method

.method public stopSound(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 221
    iget-object v1, p0, Lcom/hf/manager/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    iget-object v0, p0, Lcom/hf/manager/SoundManager;->mSoundPoolMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/media/SoundPool;->stop(I)V

    .line 222
    return-void
.end method

.method public unloadAllSoundsIn()V
    .locals 4

    .prologue
    .line 242
    iget-object v1, p0, Lcom/hf/manager/SoundManager;->mSoundPoolMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 243
    iget-object v1, p0, Lcom/hf/manager/SoundManager;->mSoundPoolMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 247
    :cond_0
    iget-object v1, p0, Lcom/hf/manager/SoundManager;->mKillSoundQueue:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    .line 248
    iget-object v1, p0, Lcom/hf/manager/SoundManager;->mSoundPoolMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 249
    return-void

    .line 243
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 244
    .local v0, key:Ljava/lang/String;
    iget-object v3, p0, Lcom/hf/manager/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/hf/manager/SoundManager;->mSoundPoolMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/media/SoundPool;->unload(I)Z

    goto :goto_0
.end method
