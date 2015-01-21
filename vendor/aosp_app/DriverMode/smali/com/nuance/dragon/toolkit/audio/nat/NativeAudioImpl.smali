.class Lcom/nuance/dragon/toolkit/audio/nat/NativeAudioImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/dragon/toolkit/audio/nat/NativeAudio;


# instance fields
.field private a:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "dmt_audio"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static native audioCreate()J
.end method

.method static native audioDestroy(J)V
.end method

.method static native getPlayerStartTime(J)I
.end method

.method static native getRecorderBufferDuration(J)I
.end method

.method static native getRecorderBufferSize(J)I
.end method

.method static native playerCreate(JII)J
.end method

.method static native playerDestroy(J)V
.end method

.method static native playerHasStartTime(J)Z
.end method

.method static native playerStalled(J)Z
.end method

.method static native playerStart(J)Z
.end method

.method static native playerStop(J)Z
.end method

.method static native playerWrite(J[S)I
.end method

.method static native recorderCreate(JII)J
.end method

.method static native recorderDestroy(J)V
.end method

.method static native recorderRead(J[S)I
.end method

.method static native recorderStart(J)I
.end method

.method static native recorderStop(J)I
.end method


# virtual methods
.method public createPlayer(I)Lcom/nuance/dragon/toolkit/audio/nat/NativeAudio$Player;
    .locals 5

    const-wide/16 v3, 0x0

    iget-wide v0, p0, Lcom/nuance/dragon/toolkit/audio/nat/NativeAudioImpl;->a:J

    cmp-long v0, v0, v3

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/nuance/dragon/toolkit/audio/nat/NativeAudioImpl;->a:J

    const/16 v2, 0x190

    invoke-static {v0, v1, p1, v2}, Lcom/nuance/dragon/toolkit/audio/nat/NativeAudioImpl;->playerCreate(JII)J

    move-result-wide v1

    cmp-long v0, v1, v3

    if-eqz v0, :cond_0

    new-instance v0, Lcom/nuance/dragon/toolkit/audio/nat/NativeAudioImpl$a;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/dragon/toolkit/audio/nat/NativeAudioImpl$a;-><init>(JB)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public createRecorder(I)Lcom/nuance/dragon/toolkit/audio/nat/NativeAudio$Recorder;
    .locals 4

    iget-wide v0, p0, Lcom/nuance/dragon/toolkit/audio/nat/NativeAudioImpl;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/nuance/dragon/toolkit/audio/nat/NativeAudioImpl;->a:J

    const/16 v2, 0x190

    invoke-static {v0, v1, p1, v2}, Lcom/nuance/dragon/toolkit/audio/nat/NativeAudioImpl;->recorderCreate(JII)J

    move-result-wide v1

    new-instance v0, Lcom/nuance/dragon/toolkit/audio/nat/NativeAudioImpl$b;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/dragon/toolkit/audio/nat/NativeAudioImpl$b;-><init>(JB)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initialize()Z
    .locals 4

    const-wide/16 v2, 0x0

    iget-wide v0, p0, Lcom/nuance/dragon/toolkit/audio/nat/NativeAudioImpl;->a:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/nuance/dragon/toolkit/audio/nat/NativeAudioImpl;->a:J

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/audio/nat/NativeAudioImpl;->audioDestroy(J)V

    :cond_0
    invoke-static {}, Lcom/nuance/dragon/toolkit/audio/nat/NativeAudioImpl;->audioCreate()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nuance/dragon/toolkit/audio/nat/NativeAudioImpl;->a:J

    iget-wide v0, p0, Lcom/nuance/dragon/toolkit/audio/nat/NativeAudioImpl;->a:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public release()V
    .locals 4

    const-wide/16 v2, 0x0

    iget-wide v0, p0, Lcom/nuance/dragon/toolkit/audio/nat/NativeAudioImpl;->a:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/nuance/dragon/toolkit/audio/nat/NativeAudioImpl;->a:J

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/audio/nat/NativeAudioImpl;->audioDestroy(J)V

    iput-wide v2, p0, Lcom/nuance/dragon/toolkit/audio/nat/NativeAudioImpl;->a:J

    :cond_0
    return-void
.end method
