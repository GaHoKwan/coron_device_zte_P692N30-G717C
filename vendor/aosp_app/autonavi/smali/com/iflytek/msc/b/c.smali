.class public Lcom/iflytek/msc/b/c;
.super Lcom/iflytek/msc/c/c;

# interfaces
.implements Lcom/iflytek/a/b$a;


# static fields
.field public static f:I

.field public static g:I

.field private static synthetic t:[I


# instance fields
.field protected volatile a:Lcom/iflytek/speech/RecognizerListener;

.field protected b:J

.field protected c:Z

.field protected d:Lcom/iflytek/msc/b/b;

.field protected e:Lcom/iflytek/a/b;

.field protected h:Ljava/lang/String;

.field protected i:Ljava/lang/String;

.field protected r:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<[B>;"
        }
    .end annotation
.end field

.field protected s:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/iflytek/msc/b/c;->f:I

    sput v0, Lcom/iflytek/msc/b/c;->g:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/iflytek/msc/c/c;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/iflytek/msc/b/c;->a:Lcom/iflytek/speech/RecognizerListener;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/iflytek/msc/b/c;->b:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/msc/b/c;->c:Z

    new-instance v0, Lcom/iflytek/msc/b/b;

    invoke-direct {v0}, Lcom/iflytek/msc/b/b;-><init>()V

    iput-object v0, p0, Lcom/iflytek/msc/b/c;->d:Lcom/iflytek/msc/b/b;

    iput-object v2, p0, Lcom/iflytek/msc/b/c;->e:Lcom/iflytek/a/b;

    iput-object v2, p0, Lcom/iflytek/msc/b/c;->h:Ljava/lang/String;

    iput-object v2, p0, Lcom/iflytek/msc/b/c;->i:Ljava/lang/String;

    iput-object v2, p0, Lcom/iflytek/msc/b/c;->r:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iput-object v2, p0, Lcom/iflytek/msc/b/c;->s:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/iflytek/msc/b/c;->r:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/iflytek/msc/b/c;->s:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ConcurrentLinkedQueue;Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<[B>;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-direct {p0, p2}, Lcom/iflytek/msc/c/c;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/iflytek/msc/b/c;->a:Lcom/iflytek/speech/RecognizerListener;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/iflytek/msc/b/c;->b:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/msc/b/c;->c:Z

    new-instance v0, Lcom/iflytek/msc/b/b;

    invoke-direct {v0}, Lcom/iflytek/msc/b/b;-><init>()V

    iput-object v0, p0, Lcom/iflytek/msc/b/c;->d:Lcom/iflytek/msc/b/b;

    iput-object v2, p0, Lcom/iflytek/msc/b/c;->e:Lcom/iflytek/a/b;

    iput-object v2, p0, Lcom/iflytek/msc/b/c;->h:Ljava/lang/String;

    iput-object v2, p0, Lcom/iflytek/msc/b/c;->i:Ljava/lang/String;

    iput-object v2, p0, Lcom/iflytek/msc/b/c;->r:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iput-object v2, p0, Lcom/iflytek/msc/b/c;->s:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/iflytek/msc/b/c;->s:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iput-object p1, p0, Lcom/iflytek/msc/b/c;->r:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-void
.end method

.method private c(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/speech/SpeechError;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iflytek/msc/b/c;->o:J

    invoke-direct {p0}, Lcom/iflytek/msc/b/c;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/iflytek/msc/b/c;->j()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/iflytek/msc/b/c;->a(Z)V

    goto :goto_0
.end method

.method static synthetic s()[I
    .locals 3

    sget-object v0, Lcom/iflytek/msc/b/c;->t:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/iflytek/msc/b/b$a;->values()[Lcom/iflytek/msc/b/b$a;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/iflytek/msc/b/b$a;->b:Lcom/iflytek/msc/b/b$a;

    invoke-virtual {v1}, Lcom/iflytek/msc/b/b$a;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lcom/iflytek/msc/b/b$a;->a:Lcom/iflytek/msc/b/b$a;

    invoke-virtual {v1}, Lcom/iflytek/msc/b/b$a;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lcom/iflytek/msc/b/b$a;->c:Lcom/iflytek/msc/b/b$a;

    invoke-virtual {v1}, Lcom/iflytek/msc/b/b$a;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcom/iflytek/msc/b/c;->t:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method private t()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/speech/SpeechError;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    iget-object v0, p0, Lcom/iflytek/msc/b/c;->d:Lcom/iflytek/msc/b/b;

    invoke-virtual {v0}, Lcom/iflytek/msc/b/b;->h()Lcom/iflytek/msc/b/b$a;

    move-result-object v0

    invoke-static {}, Lcom/iflytek/msc/b/c;->s()[I

    move-result-object v1

    invoke-virtual {v0}, Lcom/iflytek/msc/b/b$a;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/iflytek/msc/b/c;->c(Z)V

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/iflytek/msc/b/c;->c(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private u()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/iflytek/msc/b/c;->i:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/iflytek/msc/b/c;->o()Lcom/iflytek/b/b;

    move-result-object v1

    const-string v2, "grt"

    invoke-virtual {v1, v2}, Lcom/iflytek/b/b;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private v()V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/msc/b/c;->e:Lcom/iflytek/a/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/msc/b/c;->e:Lcom/iflytek/a/b;

    invoke-virtual {v0}, Lcom/iflytek/a/b;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/msc/b/c;->e:Lcom/iflytek/a/b;

    :cond_0
    return-void
.end method


# virtual methods
.method a()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/speech/SpeechError;,
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const-string v0, "start  record"

    invoke-static {v0}, Lcom/iflytek/msc/a/h;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/iflytek/a/b;

    invoke-static {}, Lcom/iflytek/speech/SpeechConfig;->a()I

    move-result v1

    invoke-static {}, Lcom/iflytek/speech/SpeechConfig;->b()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/iflytek/a/b;-><init>(II)V

    iput-object v0, p0, Lcom/iflytek/msc/b/c;->e:Lcom/iflytek/a/b;

    iget-object v0, p0, Lcom/iflytek/msc/b/c;->n:Lcom/iflytek/msc/c/c$a;

    sget-object v1, Lcom/iflytek/msc/c/c$a;->g:Lcom/iflytek/msc/c/c$a;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/iflytek/msc/b/c;->e:Lcom/iflytek/a/b;

    invoke-virtual {v0, p0}, Lcom/iflytek/a/b;->a(Lcom/iflytek/a/b$a;)V

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iflytek/msc/b/c;->b:J

    iget-object v0, p0, Lcom/iflytek/msc/b/c;->d:Lcom/iflytek/msc/b/b;

    iget-object v1, p0, Lcom/iflytek/msc/b/c;->l:Landroid/content/Context;

    iget-object v2, p0, Lcom/iflytek/msc/b/c;->h:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/iflytek/msc/b/c;->o()Lcom/iflytek/b/b;

    move-result-object v3

    iget-object v4, p0, Lcom/iflytek/msc/b/c;->i:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/iflytek/msc/b/c;->c:Z

    invoke-virtual/range {v0 .. v5}, Lcom/iflytek/msc/b/b;->a(Landroid/content/Context;Ljava/lang/String;Lcom/iflytek/b/b;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/iflytek/msc/b/c;->n:Lcom/iflytek/msc/c/c$a;

    sget-object v1, Lcom/iflytek/msc/c/c$a;->g:Lcom/iflytek/msc/c/c$a;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/iflytek/msc/b/c;->a:Lcom/iflytek/speech/RecognizerListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iflytek/msc/b/c;->a:Lcom/iflytek/speech/RecognizerListener;

    invoke-interface {v0}, Lcom/iflytek/speech/RecognizerListener;->onBeginOfSpeech()V

    :cond_1
    sget-object v0, Lcom/iflytek/msc/c/c$a;->d:Lcom/iflytek/msc/c/c$a;

    invoke-virtual {p0, v0}, Lcom/iflytek/msc/b/c;->a(Lcom/iflytek/msc/c/c$a;)V

    return-void
.end method

.method public a(Lcom/iflytek/speech/SpeechError;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/msc/b/c;->q:Lcom/iflytek/speech/SpeechError;

    invoke-virtual {p0}, Lcom/iflytek/msc/b/c;->m()V

    return-void
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/speech/RecognizerListener;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p4, p0, Lcom/iflytek/msc/b/c;->a:Lcom/iflytek/speech/RecognizerListener;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "sms"

    iput-object v0, p0, Lcom/iflytek/msc/b/c;->h:Ljava/lang/String;

    :goto_0
    invoke-virtual {p0, p2}, Lcom/iflytek/msc/b/c;->a(Ljava/lang/String;)V

    iput-object p3, p0, Lcom/iflytek/msc/b/c;->i:Ljava/lang/String;

    const-string v0, "startListening called"

    invoke-static {v0}, Lcom/iflytek/msc/a/h;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/iflytek/msc/b/c;->p()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/iflytek/msc/b/c;->h:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/speech/SpeechError;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    new-instance v1, Lcom/iflytek/speech/RecognizerResult;

    invoke-direct {v1}, Lcom/iflytek/speech/RecognizerResult;-><init>()V

    iget-object v0, p0, Lcom/iflytek/msc/b/c;->d:Lcom/iflytek/msc/b/b;

    invoke-virtual {v0}, Lcom/iflytek/msc/b/b;->g()[B

    move-result-object v0

    const-string v2, "utf-8"

    invoke-static {v0, v2}, Lcom/iflytek/msc/a/i;->c([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/iflytek/speech/RecognizerResult;->text:Ljava/lang/String;

    iget-object v0, p0, Lcom/iflytek/msc/b/c;->d:Lcom/iflytek/msc/b/b;

    invoke-virtual {v0}, Lcom/iflytek/msc/b/b;->g()[B

    move-result-object v0

    const-string v2, "utf-8"

    invoke-static {v1, v0, v2}, Lcom/iflytek/msc/a/i;->a(Lcom/iflytek/speech/RecognizerResult;[BLjava/lang/String;)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    sget-boolean v2, Lcom/iflytek/msc/a/i;->a:Z

    if-nez v2, :cond_0

    iget-object v2, v1, Lcom/iflytek/speech/RecognizerResult;->semanteme:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    iget-object v2, p0, Lcom/iflytek/msc/b/c;->a:Lcom/iflytek/speech/RecognizerListener;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/iflytek/msc/b/c;->n:Lcom/iflytek/msc/c/c$a;

    sget-object v3, Lcom/iflytek/msc/c/c$a;->g:Lcom/iflytek/msc/c/c$a;

    if-eq v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/iflytek/msc/b/c;->k:Z

    if-nez v2, :cond_4

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/iflytek/msc/b/c;->a:Lcom/iflytek/speech/RecognizerListener;

    invoke-interface {v1, v2, v0}, Lcom/iflytek/speech/RecognizerListener;->onResults(Ljava/util/ArrayList;Z)V

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/iflytek/msc/b/c;->m()V

    :cond_3
    return-void

    :cond_4
    invoke-virtual {p0}, Lcom/iflytek/msc/b/c;->i()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/msc/b/c;->a:Lcom/iflytek/speech/RecognizerListener;

    invoke-interface {v2, v1, v0}, Lcom/iflytek/speech/RecognizerListener;->onResults(Ljava/util/ArrayList;Z)V

    goto :goto_0
.end method

.method public a([B)V
    .locals 1

    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/iflytek/msc/b/c;->r:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public a([BI)V
    .locals 3

    const/4 v2, 0x0

    if-lez p2, :cond_0

    iget-object v0, p0, Lcom/iflytek/msc/b/c;->n:Lcom/iflytek/msc/c/c$a;

    sget-object v1, Lcom/iflytek/msc/c/c$a;->g:Lcom/iflytek/msc/c/c$a;

    if-eq v0, v1, :cond_0

    new-array v0, p2, [B

    invoke-static {p1, v2, v0, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0, v0}, Lcom/iflytek/msc/b/c;->a([B)V

    :cond_0
    return-void
.end method

.method protected a([BZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/speech/SpeechError;
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/iflytek/msc/b/c;->d:Lcom/iflytek/msc/b/b;

    array-length v3, p1

    invoke-virtual {v2, p1, v3}, Lcom/iflytek/msc/b/b;->a([BI)V

    if-eqz p2, :cond_0

    iget-object v2, p0, Lcom/iflytek/msc/b/c;->d:Lcom/iflytek/msc/b/b;

    invoke-virtual {v2}, Lcom/iflytek/msc/b/b;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "VadCheck Time: Vad End Point"

    invoke-static {v0}, Lcom/iflytek/msc/a/h;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/iflytek/msc/b/c;->h()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/iflytek/msc/b/c;->d:Lcom/iflytek/msc/b/b;

    invoke-virtual {v2}, Lcom/iflytek/msc/b/b;->e()I

    move-result v2

    invoke-virtual {p0, p1, v2}, Lcom/iflytek/msc/b/c;->b([BI)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "VadCheck Time:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v0, v3, v0

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Volume="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/msc/a/h;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method a_()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/speech/SpeechError;,
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/iflytek/msc/b/c;->v()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/iflytek/msc/b/c;->b(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/iflytek/msc/b/c;->d:Lcom/iflytek/msc/b/b;

    invoke-virtual {v0}, Lcom/iflytek/msc/b/b;->c()V

    sget-object v0, Lcom/iflytek/msc/c/c$a;->f:Lcom/iflytek/msc/c/c$a;

    invoke-virtual {p0, v0}, Lcom/iflytek/msc/b/c;->a(Lcom/iflytek/msc/c/c$a;)V

    goto :goto_0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/msc/b/c;->e:Lcom/iflytek/a/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/msc/b/c;->e:Lcom/iflytek/a/b;

    invoke-virtual {v0}, Lcom/iflytek/a/b;->a()V

    :cond_0
    invoke-super {p0}, Lcom/iflytek/msc/c/c;->b()V

    return-void
.end method

.method public b([BI)V
    .locals 2

    iget-object v0, p0, Lcom/iflytek/msc/b/c;->a:Lcom/iflytek/speech/RecognizerListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/msc/b/c;->n:Lcom/iflytek/msc/c/c$a;

    sget-object v1, Lcom/iflytek/msc/c/c$a;->g:Lcom/iflytek/msc/c/c$a;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/iflytek/msc/b/c;->a:Lcom/iflytek/speech/RecognizerListener;

    invoke-interface {v0, p2}, Lcom/iflytek/speech/RecognizerListener;->onVolumeChanged(I)V

    :cond_0
    return-void
.end method

.method public b(Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/speech/SpeechError;
        }
    .end annotation

    iget-object v0, p0, Lcom/iflytek/msc/b/c;->r:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/iflytek/msc/b/c;->r:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iget-object v1, p0, Lcom/iflytek/msc/b/c;->s:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0, p1}, Lcom/iflytek/msc/b/c;->a([BZ)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected c()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/iflytek/msc/b/c;->n:Lcom/iflytek/msc/c/c$a;

    sget-object v1, Lcom/iflytek/msc/c/c$a;->b:Lcom/iflytek/msc/c/c$a;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/iflytek/msc/b/c;->k()V

    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/iflytek/msc/c/c;->c()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/iflytek/msc/b/c;->n:Lcom/iflytek/msc/c/c$a;

    sget-object v1, Lcom/iflytek/msc/c/c$a;->c:Lcom/iflytek/msc/c/c$a;

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/iflytek/msc/b/c;->a()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/iflytek/msc/b/c;->n:Lcom/iflytek/msc/c/c$a;

    sget-object v1, Lcom/iflytek/msc/c/c$a;->d:Lcom/iflytek/msc/c/c$a;

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/iflytek/msc/b/c;->l()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/iflytek/msc/b/c;->n:Lcom/iflytek/msc/c/c$a;

    sget-object v1, Lcom/iflytek/msc/c/c$a;->e:Lcom/iflytek/msc/c/c$a;

    if-ne v0, v1, :cond_4

    invoke-virtual {p0}, Lcom/iflytek/msc/b/c;->a_()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/iflytek/msc/b/c;->n:Lcom/iflytek/msc/c/c$a;

    sget-object v1, Lcom/iflytek/msc/c/c$a;->f:Lcom/iflytek/msc/c/c$a;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/iflytek/msc/b/c;->r()V

    goto :goto_0
.end method

.method protected d()V
    .locals 3

    const-string v0, "onSessionEnd"

    invoke-static {v0}, Lcom/iflytek/msc/a/h;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/iflytek/msc/b/c;->v()V

    iget-object v0, p0, Lcom/iflytek/msc/b/c;->d:Lcom/iflytek/msc/b/b;

    const-string v1, "upflow"

    invoke-virtual {v0, v1}, Lcom/iflytek/msc/b/b;->b(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/iflytek/msc/b/c;->f:I

    iget-object v0, p0, Lcom/iflytek/msc/b/c;->d:Lcom/iflytek/msc/b/b;

    const-string v1, "downflow"

    invoke-virtual {v0, v1}, Lcom/iflytek/msc/b/b;->b(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/iflytek/msc/b/c;->g:I

    iget-boolean v0, p0, Lcom/iflytek/msc/b/c;->m:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iflytek/msc/b/c;->d:Lcom/iflytek/msc/b/b;

    const-string v1, "user abort"

    invoke-virtual {v0, v1}, Lcom/iflytek/msc/b/b;->a(Ljava/lang/String;)V

    :goto_0
    invoke-super {p0}, Lcom/iflytek/msc/c/c;->d()V

    iget-object v0, p0, Lcom/iflytek/msc/b/c;->a:Lcom/iflytek/speech/RecognizerListener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/iflytek/msc/b/c;->m:Z

    if-eqz v0, :cond_3

    const-string v0, "RecognizerListener#onCancel"

    invoke-static {v0}, Lcom/iflytek/msc/a/h;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/msc/b/c;->a:Lcom/iflytek/speech/RecognizerListener;

    invoke-interface {v0}, Lcom/iflytek/speech/RecognizerListener;->onCancel()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/iflytek/msc/b/c;->q:Lcom/iflytek/speech/SpeechError;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/iflytek/msc/b/c;->d:Lcom/iflytek/msc/b/b;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "error"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/iflytek/msc/b/c;->q:Lcom/iflytek/speech/SpeechError;

    invoke-virtual {v2}, Lcom/iflytek/speech/SpeechError;->getErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/msc/b/b;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/iflytek/msc/b/c;->d:Lcom/iflytek/msc/b/b;

    const-string v1, "success"

    invoke-virtual {v0, v1}, Lcom/iflytek/msc/b/b;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v0, "RecognizerListener#onEnd"

    invoke-static {v0}, Lcom/iflytek/msc/a/h;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/msc/b/c;->a:Lcom/iflytek/speech/RecognizerListener;

    iget-object v1, p0, Lcom/iflytek/msc/b/c;->q:Lcom/iflytek/speech/SpeechError;

    invoke-interface {v0, v1}, Lcom/iflytek/speech/RecognizerListener;->onEnd(Lcom/iflytek/speech/SpeechError;)V

    goto :goto_1
.end method

.method public e()Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<[B>;"
        }
    .end annotation

    const/4 v0, 0x0

    check-cast v0, [B

    :goto_0
    iget-object v0, p0, Lcom/iflytek/msc/b/c;->r:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/msc/b/c;->s:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/iflytek/msc/b/c;->s:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public declared-synchronized f()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/msc/b/c;->n:Lcom/iflytek/msc/c/c$a;

    sget-object v1, Lcom/iflytek/msc/c/c$a;->d:Lcom/iflytek/msc/c/c$a;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "endRecognize fail  status is :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/iflytek/msc/b/c;->n:Lcom/iflytek/msc/c/c$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/msc/a/h;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/iflytek/msc/b/c;->e:Lcom/iflytek/a/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iflytek/msc/b/c;->e:Lcom/iflytek/a/b;

    invoke-virtual {v0}, Lcom/iflytek/a/b;->a()V

    :cond_1
    sget-object v0, Lcom/iflytek/msc/c/c$a;->e:Lcom/iflytek/msc/c/c$a;

    invoke-virtual {p0, v0}, Lcom/iflytek/msc/b/c;->a(Lcom/iflytek/msc/c/c$a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected g()V
    .locals 3

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/iflytek/msc/b/c;->c:Z

    iget-object v0, p0, Lcom/iflytek/msc/b/c;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/msc/b/c;->h:Ljava/lang/String;

    const-string v1, "sms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/iflytek/msc/b/c;->c:Z

    const/16 v0, 0x7530

    iput v0, p0, Lcom/iflytek/msc/b/c;->j:I

    :goto_0
    invoke-virtual {p0}, Lcom/iflytek/msc/b/c;->o()Lcom/iflytek/b/b;

    move-result-object v0

    const-string v1, "speech_timeout"

    iget v2, p0, Lcom/iflytek/msc/b/c;->j:I

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/b/b;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/iflytek/msc/b/c;->j:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mSpeechTimeOut="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/iflytek/msc/b/c;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/msc/a/h;->a(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/iflytek/msc/c/c;->g()V

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/msc/b/c;->c:Z

    const/16 v0, 0x4e20

    iput v0, p0, Lcom/iflytek/msc/b/c;->j:I

    goto :goto_0
.end method

.method public h()V
    .locals 2

    sget-object v0, Lcom/iflytek/msc/c/c$a;->d:Lcom/iflytek/msc/c/c$a;

    iget-object v1, p0, Lcom/iflytek/msc/b/c;->n:Lcom/iflytek/msc/c/c$a;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/iflytek/msc/b/c;->f()Z

    iget-object v0, p0, Lcom/iflytek/msc/b/c;->a:Lcom/iflytek/speech/RecognizerListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/msc/b/c;->a:Lcom/iflytek/speech/RecognizerListener;

    invoke-interface {v0}, Lcom/iflytek/speech/RecognizerListener;->onEndOfSpeech()V

    :cond_0
    return-void
.end method

.method public i()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/speech/RecognizerResult;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    new-instance v0, Lcom/iflytek/speech/RecognizerResult;

    invoke-direct {v0}, Lcom/iflytek/speech/RecognizerResult;-><init>()V

    iget-object v2, p0, Lcom/iflytek/msc/b/c;->d:Lcom/iflytek/msc/b/b;

    invoke-virtual {v2}, Lcom/iflytek/msc/b/b;->g()[B

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/iflytek/msc/b/c;->d:Lcom/iflytek/msc/b/b;

    invoke-virtual {v3}, Lcom/iflytek/msc/b/b;->g()[B

    move-result-object v3

    const-string v4, "utf-8"

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v2, v0, Lcom/iflytek/speech/RecognizerResult;->text:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public j()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/speech/SpeechError;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/iflytek/msc/b/c;->a:Lcom/iflytek/speech/RecognizerListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/msc/b/c;->n:Lcom/iflytek/msc/c/c$a;

    sget-object v1, Lcom/iflytek/msc/c/c$a;->g:Lcom/iflytek/msc/c/c$a;

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/iflytek/msc/b/c;->k:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/iflytek/msc/b/c;->o()Lcom/iflytek/b/b;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/b/c;->a(Lcom/iflytek/b/b;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/iflytek/msc/b/c;->d:Lcom/iflytek/msc/b/b;

    invoke-virtual {v0}, Lcom/iflytek/msc/b/b;->g()[B

    move-result-object v0

    const-string v1, "utf-8"

    invoke-static {v0, v1}, Lcom/iflytek/msc/a/i;->a([BLjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/iflytek/msc/b/c;->a:Lcom/iflytek/speech/RecognizerListener;

    invoke-interface {v1, v0, v2}, Lcom/iflytek/speech/RecognizerListener;->onResults(Ljava/util/ArrayList;Z)V

    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/iflytek/msc/b/c;->m()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/iflytek/msc/b/c;->d:Lcom/iflytek/msc/b/b;

    invoke-virtual {v0}, Lcom/iflytek/msc/b/b;->g()[B

    move-result-object v0

    const-string v1, "utf-8"

    invoke-static {v0, v1}, Lcom/iflytek/msc/a/i;->b([BLjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/iflytek/msc/b/c;->i()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/msc/b/c;->a:Lcom/iflytek/speech/RecognizerListener;

    invoke-interface {v1, v0, v2}, Lcom/iflytek/speech/RecognizerListener;->onResults(Ljava/util/ArrayList;Z)V

    goto :goto_1
.end method

.method k()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/speech/SpeechError;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "start connecting"

    invoke-static {v0}, Lcom/iflytek/msc/a/h;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/iflytek/msc/b/c;->o()Lcom/iflytek/b/b;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/b/c;->a(Lcom/iflytek/b/b;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/msc/b/c;->l:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/msc/a/c;->a(Landroid/content/Context;)V

    :cond_0
    iget-object v0, p0, Lcom/iflytek/msc/b/c;->l:Landroid/content/Context;

    invoke-static {}, Lcom/iflytek/speech/SpeechRecognizer;->getRecognizer()Lcom/iflytek/speech/SpeechRecognizer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/speech/SpeechRecognizer;->getInitParam()Lcom/iflytek/b/b;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/msc/b/b;->a(Landroid/content/Context;Lcom/iflytek/b/b;)V

    sget-object v0, Lcom/iflytek/msc/c/c$a;->c:Lcom/iflytek/msc/c/c$a;

    invoke-virtual {p0, v0}, Lcom/iflytek/msc/b/c;->a(Lcom/iflytek/msc/c/c$a;)V

    return-void
.end method

.method l()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/speech/SpeechError;,
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/iflytek/msc/b/c;->b(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/iflytek/msc/b/c;->d:Lcom/iflytek/msc/b/b;

    invoke-virtual {v0}, Lcom/iflytek/msc/b/b;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/iflytek/msc/b/c;->t()V

    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/iflytek/msc/b/c;->b:J

    sub-long/2addr v0, v2

    iget v2, p0, Lcom/iflytek/msc/b/c;->j:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/iflytek/msc/b/c;->h()V

    :cond_1
    return-void

    :cond_2
    const-wide/16 v0, 0x14

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0
.end method

.method r()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/speech/SpeechError;,
            Ljava/lang/InterruptedException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/iflytek/msc/b/c;->v()V

    invoke-direct {p0}, Lcom/iflytek/msc/b/c;->t()V

    iget-object v0, p0, Lcom/iflytek/msc/b/c;->n:Lcom/iflytek/msc/c/c$a;

    sget-object v1, Lcom/iflytek/msc/c/c$a;->f:Lcom/iflytek/msc/c/c$a;

    if-ne v0, v1, :cond_0

    const-wide/16 v0, 0x64

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    :cond_0
    iget-wide v0, p0, Lcom/iflytek/msc/b/c;->o:J

    iget v2, p0, Lcom/iflytek/msc/b/c;->p:I

    invoke-static {v0, v1, v2}, Lcom/iflytek/msc/b/c;->a(JI)V

    return-void
.end method
