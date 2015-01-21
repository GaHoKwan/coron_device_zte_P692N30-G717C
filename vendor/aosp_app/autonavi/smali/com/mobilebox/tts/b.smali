.class final Lcom/mobilebox/tts/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mobilebox/tts/h;


# static fields
.field private static b:Lcom/mobilebox/tts/b;


# instance fields
.field private a:Z

.field private c:Lcom/mobilebox/tts/i;

.field private d:Landroid/media/MediaPlayer$OnCompletionListener;

.field private e:Landroid/media/MediaPlayer$OnPreparedListener;

.field private f:Landroid/media/MediaPlayer;

.field private g:Ljava/util/concurrent/ExecutorService;

.field private h:Landroid/os/Handler;

.field private i:Landroid/content/Context;

.field private j:I

.field private final k:Ljava/lang/String;

.field private final l:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/mobilebox/tts/b;->b:Lcom/mobilebox/tts/b;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/mobilebox/tts/b;->c:Lcom/mobilebox/tts/i;

    new-instance v0, Lcom/mobilebox/tts/d;

    invoke-direct {v0, p0, v1}, Lcom/mobilebox/tts/d;-><init>(Lcom/mobilebox/tts/b;Lcom/mobilebox/tts/c;)V

    iput-object v0, p0, Lcom/mobilebox/tts/b;->d:Landroid/media/MediaPlayer$OnCompletionListener;

    new-instance v0, Lcom/mobilebox/tts/f;

    invoke-direct {v0, p0, v1}, Lcom/mobilebox/tts/f;-><init>(Lcom/mobilebox/tts/b;Lcom/mobilebox/tts/c;)V

    iput-object v0, p0, Lcom/mobilebox/tts/b;->e:Landroid/media/MediaPlayer$OnPreparedListener;

    iput-object v1, p0, Lcom/mobilebox/tts/b;->f:Landroid/media/MediaPlayer;

    iput-object v1, p0, Lcom/mobilebox/tts/b;->g:Ljava/util/concurrent/ExecutorService;

    iput-object v1, p0, Lcom/mobilebox/tts/b;->i:Landroid/content/Context;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mobilebox/tts/b;->l:Ljava/lang/Object;

    iput-object p1, p0, Lcom/mobilebox/tts/b;->i:Landroid/content/Context;

    iput-object p2, p0, Lcom/mobilebox/tts/b;->k:Ljava/lang/String;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/mobilebox/tts/b;->g:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/mobilebox/tts/c;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mobilebox/tts/c;-><init>(Lcom/mobilebox/tts/b;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mobilebox/tts/b;->h:Landroid/os/Handler;

    return-void
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/mobilebox/tts/b;
    .locals 1

    sget-object v0, Lcom/mobilebox/tts/b;->b:Lcom/mobilebox/tts/b;

    if-nez v0, :cond_0

    invoke-static {p1, p2, p3}, Lcom/mobilebox/tts/TtsEngine;->ivTTS_Create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/mobilebox/tts/b;

    invoke-direct {v0, p0, p3}, Lcom/mobilebox/tts/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/mobilebox/tts/b;->b:Lcom/mobilebox/tts/b;

    :cond_0
    sget-object v0, Lcom/mobilebox/tts/b;->b:Lcom/mobilebox/tts/b;

    return-object v0
.end method

.method static synthetic a(Lcom/mobilebox/tts/b;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/mobilebox/tts/b;->a:Z

    return v0
.end method

.method static synthetic b(Lcom/mobilebox/tts/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/mobilebox/tts/b;->f()V

    return-void
.end method

.method static synthetic c(Lcom/mobilebox/tts/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/mobilebox/tts/b;->g()V

    return-void
.end method

.method private d()I
    .locals 3

    const/4 v2, 0x0

    const/16 v0, 0x8

    invoke-static {v0}, Lcom/autonavi/xmgd/utility/Tool;->isSDKAbove(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mobilebox/tts/b;->i:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    :cond_0
    iget-object v1, p0, Lcom/mobilebox/tts/b;->l:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/mobilebox/tts/b;->f:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mobilebox/tts/b;->f:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    iget-object v0, p0, Lcom/mobilebox/tts/b;->f:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mobilebox/tts/b;->f:Landroid/media/MediaPlayer;

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sput-object v2, Lcom/mobilebox/tts/b;->b:Lcom/mobilebox/tts/b;

    iget-object v0, p0, Lcom/mobilebox/tts/b;->g:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mobilebox/tts/b;->g:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    iput-object v2, p0, Lcom/mobilebox/tts/b;->g:Ljava/util/concurrent/ExecutorService;

    :cond_2
    invoke-static {}, Lcom/mobilebox/tts/TtsEngine;->ivTTS_Destroy()I

    move-result v0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic d(Lcom/mobilebox/tts/b;)I
    .locals 1

    invoke-direct {p0}, Lcom/mobilebox/tts/b;->d()I

    move-result v0

    return v0
.end method

.method static synthetic e(Lcom/mobilebox/tts/b;)Lcom/mobilebox/tts/i;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method private e()V
    .locals 2

    iget-object v0, p0, Lcom/mobilebox/tts/b;->f:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/mobilebox/tts/b;->f:Landroid/media/MediaPlayer;

    iget-object v0, p0, Lcom/mobilebox/tts/b;->f:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/mobilebox/tts/b;->e:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v0, p0, Lcom/mobilebox/tts/b;->f:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/mobilebox/tts/b;->d:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/mobilebox/tts/b;->f:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    goto :goto_0
.end method

.method static synthetic f(Lcom/mobilebox/tts/b;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/mobilebox/tts/b;->i:Landroid/content/Context;

    return-object v0
.end method

.method private f()V
    .locals 4

    iget v0, p0, Lcom/mobilebox/tts/b;->j:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/mobilebox/tts/b;->l:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Lcom/mobilebox/tts/b;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/mobilebox/tts/b;->f:Landroid/media/MediaPlayer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mobilebox/tts/b;->k:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "xmgdnavi.wav"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mobilebox/tts/b;->f:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    iget-object v0, p0, Lcom/mobilebox/tts/b;->f:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/mobilebox/tts/b;->j:I

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method static synthetic g(Lcom/mobilebox/tts/b;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/mobilebox/tts/b;->h:Landroid/os/Handler;

    return-object v0
.end method

.method private g()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/mobilebox/tts/b;->j:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    sget-object v0, Lcom/mobilebox/tts/b;->b:Lcom/mobilebox/tts/b;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/mobilebox/tts/b;->j:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/mobilebox/tts/b;->d()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mobilebox/tts/b;->a:Z

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a([B)V
    .locals 2

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/mobilebox/tts/b;->j:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lcom/mobilebox/tts/b;->j:I

    iget-object v0, p0, Lcom/mobilebox/tts/b;->g:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/mobilebox/tts/e;

    invoke-direct {v1, p0, p1}, Lcom/mobilebox/tts/e;-><init>(Lcom/mobilebox/tts/b;[B)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    const/16 v0, 0x8

    invoke-static {v0}, Lcom/autonavi/xmgd/utility/Tool;->isSDKAbove(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mobilebox/tts/b;->i:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    :cond_0
    iget v0, p0, Lcom/mobilebox/tts/b;->j:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x2

    iput v0, p0, Lcom/mobilebox/tts/b;->j:I

    :cond_1
    iget-object v1, p0, Lcom/mobilebox/tts/b;->l:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/mobilebox/tts/b;->f:Landroid/media/MediaPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    :try_start_1
    iget-object v0, p0, Lcom/mobilebox/tts/b;->f:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public c()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/mobilebox/tts/b;->j:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/mobilebox/tts/b;->l:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/mobilebox/tts/b;->f:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mobilebox/tts/b;->f:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    monitor-exit v1

    const/4 v0, 0x0

    goto :goto_0
.end method
