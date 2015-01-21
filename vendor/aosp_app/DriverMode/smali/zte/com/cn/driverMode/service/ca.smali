.class public final Lzte/com/cn/driverMode/service/ca;
.super Ljava/lang/Object;


# static fields
.field private static e:Lzte/com/cn/driverMode/service/ca;


# instance fields
.field protected a:Landroid/os/Handler;

.field protected b:Lzte/com/cn/driverMode/service/by;

.field protected c:I

.field d:Ljava/lang/String;

.field private f:Lzte/com/cn/driverMode/service/DMService;

.field private g:Lzte/com/cn/driverMode/service/DMApplication;

.field private h:Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer;

.field private i:Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource;

.field private j:Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;

.field private k:Z

.field private l:Z

.field private final m:Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$TtsListener;

.field private n:Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$Listener;


# direct methods
.method private constructor <init>(Landroid/app/Service;)V
    .locals 3

    const/16 v2, 0x64

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lzte/com/cn/driverMode/service/ca;->k:Z

    iput-boolean v0, p0, Lzte/com/cn/driverMode/service/ca;->l:Z

    iput v2, p0, Lzte/com/cn/driverMode/service/ca;->c:I

    const/4 v0, 0x0

    iput-object v0, p0, Lzte/com/cn/driverMode/service/ca;->d:Ljava/lang/String;

    new-instance v0, Lzte/com/cn/driverMode/service/cb;

    invoke-direct {v0, p0}, Lzte/com/cn/driverMode/service/cb;-><init>(Lzte/com/cn/driverMode/service/ca;)V

    iput-object v0, p0, Lzte/com/cn/driverMode/service/ca;->m:Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$TtsListener;

    new-instance v0, Lzte/com/cn/driverMode/service/cc;

    invoke-direct {v0, p0}, Lzte/com/cn/driverMode/service/cc;-><init>(Lzte/com/cn/driverMode/service/ca;)V

    iput-object v0, p0, Lzte/com/cn/driverMode/service/ca;->n:Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$Listener;

    const-string v0, "DMTtsEngine"

    const-string v1, "tts create"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p1

    check-cast v0, Lzte/com/cn/driverMode/service/DMService;

    iput-object v0, p0, Lzte/com/cn/driverMode/service/ca;->f:Lzte/com/cn/driverMode/service/DMService;

    invoke-virtual {p1}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lzte/com/cn/driverMode/service/DMApplication;

    iput-object v0, p0, Lzte/com/cn/driverMode/service/ca;->g:Lzte/com/cn/driverMode/service/DMApplication;

    iget-object v0, p0, Lzte/com/cn/driverMode/service/ca;->f:Lzte/com/cn/driverMode/service/DMService;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/DMService;->b()Lzte/com/cn/driverMode/service/bv;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/driverMode/service/ca;->a:Landroid/os/Handler;

    new-instance v0, Lzte/com/cn/driverMode/service/by;

    iget-object v1, p0, Lzte/com/cn/driverMode/service/ca;->f:Lzte/com/cn/driverMode/service/DMService;

    invoke-virtual {v1}, Lzte/com/cn/driverMode/service/DMService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lzte/com/cn/driverMode/service/by;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lzte/com/cn/driverMode/service/ca;->b:Lzte/com/cn/driverMode/service/by;

    iget-object v0, p0, Lzte/com/cn/driverMode/service/ca;->b:Lzte/com/cn/driverMode/service/by;

    const-string v1, "ttsspeed"

    invoke-virtual {v0, v1, v2}, Lzte/com/cn/driverMode/service/by;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lzte/com/cn/driverMode/service/ca;->c:I

    iget-object v0, p0, Lzte/com/cn/driverMode/service/ca;->g:Lzte/com/cn/driverMode/service/DMApplication;

    const-string v1, "version"

    invoke-static {v0, v1}, Lzte/com/cn/driverMode/service/ce;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/driverMode/service/ca;->d:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/app/Service;)Lzte/com/cn/driverMode/service/ca;
    .locals 1

    sget-object v0, Lzte/com/cn/driverMode/service/ca;->e:Lzte/com/cn/driverMode/service/ca;

    if-nez v0, :cond_0

    new-instance v0, Lzte/com/cn/driverMode/service/ca;

    invoke-direct {v0, p0}, Lzte/com/cn/driverMode/service/ca;-><init>(Landroid/app/Service;)V

    sput-object v0, Lzte/com/cn/driverMode/service/ca;->e:Lzte/com/cn/driverMode/service/ca;

    :cond_0
    sget-object v0, Lzte/com/cn/driverMode/service/ca;->e:Lzte/com/cn/driverMode/service/ca;

    return-object v0
.end method

.method static synthetic a(Lzte/com/cn/driverMode/service/ca;)Z
    .locals 1

    iget-boolean v0, p0, Lzte/com/cn/driverMode/service/ca;->l:Z

    return v0
.end method

.method static synthetic a(Lzte/com/cn/driverMode/service/ca;Z)Z
    .locals 0

    iput-boolean p1, p0, Lzte/com/cn/driverMode/service/ca;->k:Z

    return p1
.end method

.method static synthetic b(Lzte/com/cn/driverMode/service/ca;)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lzte/com/cn/driverMode/service/ca;->l:Z

    return v0
.end method

.method public static c()V
    .locals 2

    const-string v0, "DMTtsEngine"

    const-string v1, "recreateTtsPlayer....."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    iget-object v0, p0, Lzte/com/cn/driverMode/service/ca;->h:Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/service/ca;->h:Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer;

    invoke-virtual {v0, p1}, Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer;->setTtsSpeed(I)V

    iput p1, p0, Lzte/com/cn/driverMode/service/ca;->c:I

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lzte/com/cn/driverMode/service/ca;->h:Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer;

    if-nez v0, :cond_0

    const-string v0, "DMTtsEngine"

    const-string v1, "speakTTS() : ERROR"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string v0, "DMTtsEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "speakTTS---"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/service/ca;->h:Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer;

    const/16 v1, 0x190

    invoke-virtual {v0, v1}, Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer;->setAudioChunkSize(I)V

    iget-object v0, p0, Lzte/com/cn/driverMode/service/ca;->h:Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer;->setAudioChunkBufferCount(I)V

    const-string v0, "DMTtsEngine"

    const-string v1, "createPlayer ....."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/service/ca;->j:Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;

    if-eqz v0, :cond_1

    const-string v0, "DMTtsEngine"

    const-string v1, "player != null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/service/ca;->j:Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;->disconnectAudioSource()Lcom/nuance/dragon/toolkit/audio/AudioSource;

    iget-object v0, p0, Lzte/com/cn/driverMode/service/ca;->j:Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;->stopPlaying()V

    iput-object v3, p0, Lzte/com/cn/driverMode/service/ca;->j:Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;

    iget-object v0, p0, Lzte/com/cn/driverMode/service/ca;->i:Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource;->stop()V

    iput-object v3, p0, Lzte/com/cn/driverMode/service/ca;->i:Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource;

    :cond_1
    iget-object v0, p0, Lzte/com/cn/driverMode/service/ca;->f:Lzte/com/cn/driverMode/service/DMService;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/DMService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lzte/com/cn/driverMode/service/ca;->g:Lzte/com/cn/driverMode/service/DMApplication;

    iget-boolean v1, v1, Lzte/com/cn/driverMode/service/DMApplication;->B:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lzte/com/cn/driverMode/service/ca;->g:Lzte/com/cn/driverMode/service/DMApplication;

    iget-boolean v1, v1, Lzte/com/cn/driverMode/service/DMApplication;->C:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lzte/com/cn/driverMode/service/ca;->g:Lzte/com/cn/driverMode/service/DMApplication;

    iget-boolean v1, v1, Lzte/com/cn/driverMode/service/DMApplication;->A:Z

    if-eqz v1, :cond_2

    invoke-static {v0}, Lzte/com/cn/driverMode/service/ce;->m(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "DMTtsEngine"

    const-string v1, "\u84dd\u7259\u64ad\u653e\u3002\u3002\u3002"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;

    sget-object v1, Lcom/nuance/dragon/toolkit/audio/AudioType;->PCM_22k:Lcom/nuance/dragon/toolkit/audio/AudioType;

    invoke-direct {v0, v4, v1}, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;-><init>(ILcom/nuance/dragon/toolkit/audio/AudioType;)V

    iput-object v0, p0, Lzte/com/cn/driverMode/service/ca;->j:Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;

    :goto_1
    new-instance v0, Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource;

    sget-object v1, Lcom/nuance/dragon/toolkit/audio/AudioType;->PCM_22k:Lcom/nuance/dragon/toolkit/audio/AudioType;

    invoke-direct {v0, v1, v4}, Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource;-><init>(Lcom/nuance/dragon/toolkit/audio/AudioType;Z)V

    iput-object v0, p0, Lzte/com/cn/driverMode/service/ca;->i:Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource;

    iget-object v0, p0, Lzte/com/cn/driverMode/service/ca;->j:Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;

    iget-object v1, p0, Lzte/com/cn/driverMode/service/ca;->i:Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource;

    invoke-virtual {v0, v1}, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;->connectAudioSource(Lcom/nuance/dragon/toolkit/audio/AudioSource;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/service/ca;->j:Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;

    iget-object v1, p0, Lzte/com/cn/driverMode/service/ca;->n:Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$Listener;

    invoke-virtual {v0, v1}, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;->startPlaying(Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$Listener;)V

    const-string v0, "DMTtsEngine"

    const-string v1, "createPlayer .....end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/service/ca;->h:Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer;

    iget-object v1, p0, Lzte/com/cn/driverMode/service/ca;->m:Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$TtsListener;

    invoke-virtual {v0, p1, v1, v3}, Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer;->generateTts(Ljava/lang/String;Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$TtsListener;Ljava/lang/Object;)Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource;

    move-result-object v0

    iget-object v1, p0, Lzte/com/cn/driverMode/service/ca;->i:Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource;

    invoke-virtual {v1, v0}, Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource;->queue(Lcom/nuance/dragon/toolkit/audio/AudioSource;)V

    goto/16 :goto_0

    :cond_2
    const-string v0, "DMTtsEngine"

    const-string v1, "\u4f7f\u7528: STREAM_MUSIC"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;

    sget-object v1, Lcom/nuance/dragon/toolkit/audio/AudioType;->PCM_22k:Lcom/nuance/dragon/toolkit/audio/AudioType;

    invoke-direct {v0, v1}, Lcom/nuance/dragon/toolkit/audio/sinks/SpeakerPlayerSink;-><init>(Lcom/nuance/dragon/toolkit/audio/AudioType;)V

    iput-object v0, p0, Lzte/com/cn/driverMode/service/ca;->j:Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;

    goto :goto_1
.end method

.method public final a(Z)V
    .locals 3

    const-string v0, "DMTtsEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setNoNeedNotify---noNeedNotify="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lzte/com/cn/driverMode/service/ca;->l:Z

    return-void
.end method

.method public final a()Z
    .locals 8

    const-string v0, "DMTtsEngine"

    const-string v1, "createVocalizer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/service/ca;->h:Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/service/ca;->h:Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lzte/com/cn/driverMode/service/ca;->h:Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer;

    :cond_0
    new-instance v0, Lcom/nuance/dragon/toolkit/file/FileManager;

    iget-object v1, p0, Lzte/com/cn/driverMode/service/ca;->f:Lzte/com/cn/driverMode/service/DMService;

    const-string v2, ".jpg"

    const-string v3, "vocalizer"

    const-string v4, "vocalizer"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nuance/dragon/toolkit/file/FileManager;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer;->createVocalizer(Lcom/nuance/dragon/toolkit/file/FileManager;)Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/driverMode/service/ca;->h:Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer;

    iget-object v1, p0, Lzte/com/cn/driverMode/service/ca;->h:Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer;

    new-instance v2, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerConfig;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v3, "DMTtsEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "syslanguage:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lzte/com/cn/driverMode/service/ca;->f:Lzte/com/cn/driverMode/service/DMService;

    const-string v4, "default_language"

    invoke-static {v3, v4}, Lzte/com/cn/driverMode/service/ce;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "DMTtsEngine"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "defLanguage:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lzte/com/cn/driverMode/service/ca;->f:Lzte/com/cn/driverMode/service/DMService;

    const-string v5, "languages"

    invoke-static {v4, v5}, Lzte/com/cn/driverMode/service/ce;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "DMTtsEngine"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "allLanguages:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    const-string v5, "zh"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    if-eqz v4, :cond_1

    const-string v5, "cmn-CHN"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    :cond_1
    if-eqz v0, :cond_2

    const-string v5, "en"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz v4, :cond_2

    const-string v0, "eng-USA"

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "eng-USA"

    :goto_0
    const-string v3, "eng-USA"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    sget-object v0, Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$Languages;->UNITED_STATES_ENGLISH:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    :goto_1
    invoke-direct {v2, v0}, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerConfig;-><init>(Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;)V

    invoke-virtual {v1, v2}, Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer;->load(Lcom/nuance/dragon/toolkit/vocalizer/VocalizerConfig;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/service/ca;->h:Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer;->setTtsVolume(I)V

    iget-object v0, p0, Lzte/com/cn/driverMode/service/ca;->h:Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer;

    iget v1, p0, Lzte/com/cn/driverMode/service/ca;->c:I

    invoke-virtual {v0, v1}, Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer;->setTtsSpeed(I)V

    const/4 v0, 0x1

    return v0

    :cond_2
    if-eqz v3, :cond_3

    const-string v0, "tur-TUR"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "tur-TUR"

    goto :goto_0

    :cond_3
    if-eqz v3, :cond_4

    const-string v0, "eng-USA"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "eng-USA"

    goto :goto_0

    :cond_4
    const-string v0, "cmn-CHN"

    goto :goto_0

    :cond_5
    const-string v3, "tur-TUR"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$Languages;->TURKISH:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    goto :goto_1

    :cond_6
    sget-object v0, Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$Languages;->MANDARIN_SIMPLIFIED:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    goto :goto_1
.end method

.method public final b()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "DMTtsEngine"

    const-string v1, "destroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/service/ca;->h:Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/service/ca;->h:Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer;->release()V

    iput-object v2, p0, Lzte/com/cn/driverMode/service/ca;->h:Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer;

    :cond_0
    iget-object v0, p0, Lzte/com/cn/driverMode/service/ca;->j:Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lzte/com/cn/driverMode/service/ca;->j:Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;->disconnectAudioSource()Lcom/nuance/dragon/toolkit/audio/AudioSource;

    iget-object v0, p0, Lzte/com/cn/driverMode/service/ca;->j:Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;->stopPlaying()V

    iput-object v2, p0, Lzte/com/cn/driverMode/service/ca;->j:Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;

    iget-object v0, p0, Lzte/com/cn/driverMode/service/ca;->i:Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource;->stop()V

    iput-object v2, p0, Lzte/com/cn/driverMode/service/ca;->i:Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource;

    :cond_1
    sput-object v2, Lzte/com/cn/driverMode/service/ca;->e:Lzte/com/cn/driverMode/service/ca;

    return-void
.end method

.method public final d()V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "DMTtsEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "stopTTS.... isPlaying:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lzte/com/cn/driverMode/service/ca;->k:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lzte/com/cn/driverMode/service/ca;->k:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lzte/com/cn/driverMode/service/ca;->j:Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;

    if-eqz v0, :cond_0

    const-string v0, "DMTtsEngine"

    const-string v1, "1 ...."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/service/ca;->j:Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;->disconnectAudioSource()Lcom/nuance/dragon/toolkit/audio/AudioSource;

    :cond_0
    iget-object v0, p0, Lzte/com/cn/driverMode/service/ca;->j:Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;

    if-eqz v0, :cond_1

    const-string v0, "DMTtsEngine"

    const-string v1, "2........"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/service/ca;->j:Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;->stopPlaying()V

    iput-object v3, p0, Lzte/com/cn/driverMode/service/ca;->j:Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;

    :cond_1
    iget-object v0, p0, Lzte/com/cn/driverMode/service/ca;->i:Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lzte/com/cn/driverMode/service/ca;->i:Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource;->stop()V

    iput-object v3, p0, Lzte/com/cn/driverMode/service/ca;->i:Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource;

    :cond_2
    return-void
.end method

.method public final e()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "DMTtsEngine"

    const-string v1, "resetPlayer ......."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/service/ca;->j:Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/service/ca;->j:Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;->disconnectAudioSource()Lcom/nuance/dragon/toolkit/audio/AudioSource;

    iget-object v0, p0, Lzte/com/cn/driverMode/service/ca;->j:Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;->stopPlaying()V

    iput-object v2, p0, Lzte/com/cn/driverMode/service/ca;->j:Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;

    iget-object v0, p0, Lzte/com/cn/driverMode/service/ca;->i:Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource;->stop()V

    iput-object v2, p0, Lzte/com/cn/driverMode/service/ca;->i:Lcom/nuance/dragon/toolkit/audio/sources/QueuingAudioSource;

    :cond_0
    return-void
.end method

.method public final f()V
    .locals 2

    const-string v0, "DMTtsEngine"

    const-string v1, "cancelTTS...."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/service/ca;->h:Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer;

    if-eqz v0, :cond_0

    const-string v0, "DMTtsEngine"

    const-string v1, "cancelTTS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/service/ca;->h:Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer;->cancelTts()V

    :cond_0
    return-void
.end method

.method public final g()Z
    .locals 3

    const-string v0, "DMTtsEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isPlaying()---isPlaying="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lzte/com/cn/driverMode/service/ca;->k:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lzte/com/cn/driverMode/service/ca;->k:Z

    return v0
.end method
