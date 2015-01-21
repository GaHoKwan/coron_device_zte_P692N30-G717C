.class public Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImpersonator;
.super Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;


# instance fields
.field private a:Z

.field private b:Z


# direct methods
.method public constructor <init>(Lcom/nuance/dragon/toolkit/audio/AudioType;)V
    .locals 1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;-><init>(Lcom/nuance/dragon/toolkit/audio/AudioType;Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImpersonator;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImpersonator;->b:Z

    return v0
.end method

.method static synthetic b(Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImpersonator;)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImpersonator;->b:Z

    return v0
.end method

.method static synthetic c(Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImpersonator;)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImpersonator;->a:Z

    return v0
.end method


# virtual methods
.method public isActive()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImpersonator;->a:Z

    return v0
.end method

.method protected isCodecSupported(Lcom/nuance/dragon/toolkit/audio/AudioType;)Z
    .locals 1

    sget-object v0, Lcom/nuance/dragon/toolkit/audio/AudioType;->PCM_16k:Lcom/nuance/dragon/toolkit/audio/AudioType;

    invoke-virtual {p1, v0}, Lcom/nuance/dragon/toolkit/audio/AudioType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected startRecordingInternal(Lcom/nuance/dragon/toolkit/audio/AudioType;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    sget-object v2, Lcom/nuance/dragon/toolkit/audio/AudioType;->PCM_16k:Lcom/nuance/dragon/toolkit/audio/AudioType;

    invoke-virtual {p1, v2}, Lcom/nuance/dragon/toolkit/audio/AudioType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    iput-boolean v1, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImpersonator;->a:Z

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImpersonator;->b:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImpersonator$1;

    invoke-direct {v2, p0, v0}, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImpersonator$1;-><init>(Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImpersonator;Landroid/os/Handler;)V

    const-wide/16 v3, 0x64

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move v0, v1

    goto :goto_0
.end method

.method protected stopRecordingInternal()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImpersonator;->b:Z

    return-void
.end method
