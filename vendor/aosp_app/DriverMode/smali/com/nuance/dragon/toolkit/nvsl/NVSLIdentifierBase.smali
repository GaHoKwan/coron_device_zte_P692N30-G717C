.class public abstract Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;
.super Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifier;


# instance fields
.field private final a:Lcom/nuance/dragon/toolkit/nvsl/NativeNVSL;

.field private b:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:Z

.field private final h:Landroid/os/Handler;

.field private final i:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/nvsl/NativeNVSL;Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifier;-><init>()V

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;->a:Lcom/nuance/dragon/toolkit/nvsl/NativeNVSL;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;->i:Landroid/os/Handler;

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;->getWorkerThreadHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;->h:Landroid/os/Handler;

    :goto_0
    return-void

    :cond_0
    iput-object p2, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;->h:Landroid/os/Handler;

    goto :goto_0
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;->f:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;->g:Z

    return v0
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;->g:Z

    return p1
.end method

.method static synthetic b(Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;->i:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic b(Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;->d:Z

    return p1
.end method

.method static synthetic c(Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;)Lcom/nuance/dragon/toolkit/nvsl/NativeNVSL;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;->a:Lcom/nuance/dragon/toolkit/nvsl/NativeNVSL;

    return-object v0
.end method

.method static synthetic e(Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;->h:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic f(Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;)Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;->b:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;

    return-object v0
.end method

.method static synthetic g(Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;)Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;->b:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;

    return-object v0
.end method

.method static synthetic h(Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;->d:Z

    return v0
.end method

.method static synthetic i(Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;->e:Z

    return v0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;->e:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;Z)V

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;->c:Z

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;Z)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;->b:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;->b:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;->b:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;

    invoke-virtual {v1}, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;->a()V

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;->b:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;->b:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public enableVerboseAndroidLogging(Z)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;->a:Lcom/nuance/dragon/toolkit/nvsl/NativeNVSL;

    invoke-interface {v0, p1}, Lcom/nuance/dragon/toolkit/nvsl/NativeNVSL;->a(Z)V

    return-void
.end method

.method protected abstract getWorkerThreadHandler()Landroid/os/Handler;
.end method

.method public initialize(Lcom/nuance/dragon/toolkit/nvsl/NVSLConfig;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;->initialize(Lcom/nuance/dragon/toolkit/nvsl/NVSLConfig;Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifier$InitializeListener;)V

    return-void
.end method

.method public initialize(Lcom/nuance/dragon/toolkit/nvsl/NVSLConfig;Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifier$InitializeListener;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;->e:Z

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;Z)V

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;->c:Z

    if-nez v0, :cond_0

    move v2, v1

    :cond_0
    const-string v0, "Already initialized"

    invoke-static {p0, v2, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;ZLjava/lang/String;)V

    const-string v0, "config"

    invoke-static {v0, p1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;->c:Z

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;->h:Landroid/os/Handler;

    new-instance v1, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$1;-><init>(Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;Lcom/nuance/dragon/toolkit/nvsl/NVSLConfig;Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifier$InitializeListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;->release(Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifier$ReleaseListener;)V

    return-void
.end method

.method public release(Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifier$ReleaseListener;)V
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;->e:Z

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;Z)V

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;->c:Z

    if-nez v0, :cond_2

    iput-boolean v1, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;->e:Z

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifier$ReleaseListener;->onReleased(Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifier;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;->h:Landroid/os/Handler;

    new-instance v1, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$2;

    invoke-direct {v1, p0, p1}, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$2;-><init>(Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifier$ReleaseListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method public startAdaption(Lcom/nuance/dragon/toolkit/audio/AudioSource;Lcom/nuance/dragon/toolkit/nvsl/NVSLVoiceprint;Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifier$SignalListener;Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifier$AdaptationStepListener;)V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v0, "audioSource"

    invoke-static {v0, p1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "audioSource"

    const-string v4, "a supported audio type"

    invoke-virtual {p1}, Lcom/nuance/dragon/toolkit/audio/AudioSource;->getAudioType()Lcom/nuance/dragon/toolkit/audio/AudioType;

    move-result-object v0

    sget-object v5, Lcom/nuance/dragon/toolkit/audio/AudioType;->PCM_8k:Lcom/nuance/dragon/toolkit/audio/AudioType;

    invoke-virtual {v0, v5}, Lcom/nuance/dragon/toolkit/audio/AudioType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/nuance/dragon/toolkit/audio/AudioSource;->getAudioType()Lcom/nuance/dragon/toolkit/audio/AudioType;

    move-result-object v0

    sget-object v5, Lcom/nuance/dragon/toolkit/audio/AudioType;->PCM_16k:Lcom/nuance/dragon/toolkit/audio/AudioType;

    invoke-virtual {v0, v5}, Lcom/nuance/dragon/toolkit/audio/AudioType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v3, v4, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "voiceprint"

    invoke-static {v0, p2}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;->e:Z

    if-nez v0, :cond_1

    move v1, v2

    :cond_1
    invoke-static {p0, v1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;Z)V

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;->c:Z

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;Z)V

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;->cancel()V

    new-instance v0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p3, p4}, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;-><init>(Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifier$ResultListener;Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifier$SignalListener;Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifier$AdaptationStepListener;)V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;->b:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;->b:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;

    invoke-virtual {v0, p1, p2, v2}, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;->a(Lcom/nuance/dragon/toolkit/audio/AudioSource;Lcom/nuance/dragon/toolkit/nvsl/NVSLVoiceprint;Z)V

    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public startEnrollment(Lcom/nuance/dragon/toolkit/audio/AudioSource;Lcom/nuance/dragon/toolkit/nvsl/NVSLVoiceprint;Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifier$SignalListener;Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifier$AdaptationStepListener;)V
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string v0, "audioSource"

    invoke-static {v0, p1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "audioSource"

    const-string v4, "a supported audio type"

    invoke-virtual {p1}, Lcom/nuance/dragon/toolkit/audio/AudioSource;->getAudioType()Lcom/nuance/dragon/toolkit/audio/AudioType;

    move-result-object v0

    sget-object v5, Lcom/nuance/dragon/toolkit/audio/AudioType;->PCM_8k:Lcom/nuance/dragon/toolkit/audio/AudioType;

    invoke-virtual {v0, v5}, Lcom/nuance/dragon/toolkit/audio/AudioType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/nuance/dragon/toolkit/audio/AudioSource;->getAudioType()Lcom/nuance/dragon/toolkit/audio/AudioType;

    move-result-object v0

    sget-object v5, Lcom/nuance/dragon/toolkit/audio/AudioType;->PCM_16k:Lcom/nuance/dragon/toolkit/audio/AudioType;

    invoke-virtual {v0, v5}, Lcom/nuance/dragon/toolkit/audio/AudioType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v3, v4, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "voiceprint"

    invoke-static {v0, p2}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;->e:Z

    if-nez v0, :cond_2

    :goto_1
    invoke-static {p0, v2}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;Z)V

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;->c:Z

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;Z)V

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;->cancel()V

    new-instance v0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2, p3, p4}, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;-><init>(Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifier$ResultListener;Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifier$SignalListener;Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifier$AdaptationStepListener;)V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;->b:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;->b:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;

    invoke-virtual {v0, p1, p2, v1}, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;->a(Lcom/nuance/dragon/toolkit/audio/AudioSource;Lcom/nuance/dragon/toolkit/nvsl/NVSLVoiceprint;Z)V

    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_1
.end method

.method public startIdentification(Lcom/nuance/dragon/toolkit/audio/AudioSource;Ljava/util/List;Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifier$SignalListener;Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifier$ResultListener;)V
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string v0, "audioSource"

    invoke-static {v0, p1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "audioSource"

    const-string v4, "a supported audio type"

    invoke-virtual {p1}, Lcom/nuance/dragon/toolkit/audio/AudioSource;->getAudioType()Lcom/nuance/dragon/toolkit/audio/AudioType;

    move-result-object v0

    sget-object v5, Lcom/nuance/dragon/toolkit/audio/AudioType;->PCM_8k:Lcom/nuance/dragon/toolkit/audio/AudioType;

    invoke-virtual {v0, v5}, Lcom/nuance/dragon/toolkit/audio/AudioType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/nuance/dragon/toolkit/audio/AudioSource;->getAudioType()Lcom/nuance/dragon/toolkit/audio/AudioType;

    move-result-object v0

    sget-object v5, Lcom/nuance/dragon/toolkit/audio/AudioType;->PCM_16k:Lcom/nuance/dragon/toolkit/audio/AudioType;

    invoke-virtual {v0, v5}, Lcom/nuance/dragon/toolkit/audio/AudioType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v3, v4, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "voiceprints"

    invoke-static {v0, p2}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "resultListener"

    invoke-static {v0, p4}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;->e:Z

    if-nez v0, :cond_2

    :goto_1
    invoke-static {p0, v2}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;Z)V

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;->c:Z

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;Z)V

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;->cancel()V

    new-instance v0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p4, p3, v2}, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;-><init>(Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifier$ResultListener;Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifier$SignalListener;Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifier$AdaptationStepListener;)V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;->b:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;->b:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;

    invoke-virtual {v0, p1, p2, v1}, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;->a(Lcom/nuance/dragon/toolkit/audio/AudioSource;Ljava/util/List;Z)V

    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_1
.end method

.method public startLanguageDetection(Lcom/nuance/dragon/toolkit/audio/AudioSource;Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifier$SignalListener;Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifier$ResultListener;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v0, "audioSource"

    invoke-static {v0, p1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "audioSource"

    const-string v4, "a supported audio type"

    invoke-virtual {p1}, Lcom/nuance/dragon/toolkit/audio/AudioSource;->getAudioType()Lcom/nuance/dragon/toolkit/audio/AudioType;

    move-result-object v0

    sget-object v5, Lcom/nuance/dragon/toolkit/audio/AudioType;->PCM_8k:Lcom/nuance/dragon/toolkit/audio/AudioType;

    invoke-virtual {v0, v5}, Lcom/nuance/dragon/toolkit/audio/AudioType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/nuance/dragon/toolkit/audio/AudioSource;->getAudioType()Lcom/nuance/dragon/toolkit/audio/AudioType;

    move-result-object v0

    sget-object v5, Lcom/nuance/dragon/toolkit/audio/AudioType;->PCM_16k:Lcom/nuance/dragon/toolkit/audio/AudioType;

    invoke-virtual {v0, v5}, Lcom/nuance/dragon/toolkit/audio/AudioType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v3, v4, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "resultListener"

    invoke-static {v0, p3}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;->e:Z

    if-nez v0, :cond_1

    move v1, v2

    :cond_1
    invoke-static {p0, v1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;Z)V

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;->c:Z

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;Z)V

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;->cancel()V

    new-instance v0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;

    invoke-direct {v0, p0, p3, p2, v6}, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;-><init>(Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifier$ResultListener;Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifier$SignalListener;Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifier$AdaptationStepListener;)V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;->b:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;->b:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;

    invoke-virtual {v0, p1, v6, v2}, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;->a(Lcom/nuance/dragon/toolkit/audio/AudioSource;Ljava/util/List;Z)V

    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public stopListening()V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;->e:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;Z)V

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;->c:Z

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;Z)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;->b:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;->b:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;

    invoke-virtual {v0, v1}, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;->a(Z)V

    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method
