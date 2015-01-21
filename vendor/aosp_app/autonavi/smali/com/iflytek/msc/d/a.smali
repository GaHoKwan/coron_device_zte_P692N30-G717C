.class public Lcom/iflytek/msc/d/a;
.super Lcom/iflytek/msc/c/c;

# interfaces
.implements Lcom/iflytek/a/b$a;


# static fields
.field private static synthetic r:[I


# instance fields
.field protected volatile a:Lcom/iflytek/speech/VerifyListener;

.field protected b:J

.field protected c:Z

.field protected d:Lcom/iflytek/msc/d/b;

.field protected e:Lcom/iflytek/a/b;

.field protected f:Ljava/lang/String;

.field protected g:Ljava/lang/String;

.field protected h:Lcom/iflytek/speech/VerifyResult;

.field protected i:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/iflytek/msc/c/c;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/iflytek/msc/d/a;->a:Lcom/iflytek/speech/VerifyListener;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/iflytek/msc/d/a;->b:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/msc/d/a;->c:Z

    new-instance v0, Lcom/iflytek/msc/d/b;

    invoke-direct {v0}, Lcom/iflytek/msc/d/b;-><init>()V

    iput-object v0, p0, Lcom/iflytek/msc/d/a;->d:Lcom/iflytek/msc/d/b;

    iput-object v2, p0, Lcom/iflytek/msc/d/a;->e:Lcom/iflytek/a/b;

    const-string v0, "train"

    iput-object v0, p0, Lcom/iflytek/msc/d/a;->f:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/iflytek/msc/d/a;->g:Ljava/lang/String;

    iput-object v2, p0, Lcom/iflytek/msc/d/a;->h:Lcom/iflytek/speech/VerifyResult;

    iput-object v2, p0, Lcom/iflytek/msc/d/a;->i:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/iflytek/msc/d/a;->i:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-void
.end method

.method static synthetic l()[I
    .locals 3

    sget-object v0, Lcom/iflytek/msc/d/a;->r:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/iflytek/msc/d/b$a;->values()[Lcom/iflytek/msc/d/b$a;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/iflytek/msc/d/b$a;->b:Lcom/iflytek/msc/d/b$a;

    invoke-virtual {v1}, Lcom/iflytek/msc/d/b$a;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    :try_start_1
    sget-object v1, Lcom/iflytek/msc/d/b$a;->a:Lcom/iflytek/msc/d/b$a;

    invoke-virtual {v1}, Lcom/iflytek/msc/d/b$a;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    sput-object v0, Lcom/iflytek/msc/d/a;->r:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private r()Z
    .locals 2

    iget-object v0, p0, Lcom/iflytek/msc/d/a;->f:Ljava/lang/String;

    const-string v1, "train"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private s()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/speech/SpeechError;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    iget-object v0, p0, Lcom/iflytek/msc/d/a;->d:Lcom/iflytek/msc/d/b;

    invoke-virtual {v0}, Lcom/iflytek/msc/d/b;->f()Lcom/iflytek/msc/d/b$a;

    move-result-object v0

    invoke-static {}, Lcom/iflytek/msc/d/a;->l()[I

    move-result-object v1

    invoke-virtual {v0}, Lcom/iflytek/msc/d/b$a;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-direct {p0}, Lcom/iflytek/msc/d/a;->t()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private t()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/speech/SpeechError;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iflytek/msc/d/a;->o:J

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/iflytek/msc/d/a;->d:Lcom/iflytek/msc/d/b;

    invoke-virtual {v1}, Lcom/iflytek/msc/d/b;->e()[B

    move-result-object v1

    const-string v2, "utf-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    new-instance v1, Lcom/iflytek/speech/VerifyResult;

    invoke-direct {v1, v0}, Lcom/iflytek/speech/VerifyResult;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/iflytek/msc/d/a;->h:Lcom/iflytek/speech/VerifyResult;

    iget-object v0, p0, Lcom/iflytek/msc/d/a;->f:Ljava/lang/String;

    const-string v1, "train"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iflytek/msc/d/a;->h:Lcom/iflytek/speech/VerifyResult;

    iget-boolean v0, v0, Lcom/iflytek/speech/VerifyResult;->ret:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iflytek/msc/d/a;->h:Lcom/iflytek/speech/VerifyResult;

    iget v0, v0, Lcom/iflytek/speech/VerifyResult;->suc:I

    iget-object v1, p0, Lcom/iflytek/msc/d/a;->h:Lcom/iflytek/speech/VerifyResult;

    iget v1, v1, Lcom/iflytek/speech/VerifyResult;->rgn:I

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/iflytek/msc/d/a;->a:Lcom/iflytek/speech/VerifyListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/msc/d/a;->a:Lcom/iflytek/speech/VerifyListener;

    iget-object v1, p0, Lcom/iflytek/msc/d/a;->h:Lcom/iflytek/speech/VerifyResult;

    invoke-interface {v0, v1}, Lcom/iflytek/speech/VerifyListener;->onRegister(Lcom/iflytek/speech/VerifyResult;)V

    :cond_0
    sget-object v0, Lcom/iflytek/msc/c/c$a;->c:Lcom/iflytek/msc/c/c$a;

    invoke-virtual {p0, v0}, Lcom/iflytek/msc/d/a;->a(Lcom/iflytek/msc/c/c$a;)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/iflytek/msc/d/a;->m()V

    goto :goto_0
.end method

.method private u()V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/msc/d/a;->e:Lcom/iflytek/a/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/msc/d/a;->e:Lcom/iflytek/a/b;

    invoke-virtual {v0}, Lcom/iflytek/a/b;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/msc/d/a;->e:Lcom/iflytek/a/b;

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/iflytek/speech/SpeechError;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/msc/d/a;->q:Lcom/iflytek/speech/SpeechError;

    invoke-virtual {p0}, Lcom/iflytek/msc/d/a;->m()V

    return-void
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/speech/VerifyListener;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iput-object p4, p0, Lcom/iflytek/msc/d/a;->a:Lcom/iflytek/speech/VerifyListener;

    iput-object p2, p0, Lcom/iflytek/msc/d/a;->f:Ljava/lang/String;

    iput-object p1, p0, Lcom/iflytek/msc/d/a;->g:Ljava/lang/String;

    invoke-virtual {p0, p3}, Lcom/iflytek/msc/d/a;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/iflytek/msc/d/a;->o()Lcom/iflytek/b/b;

    move-result-object v0

    const-string v1, "sst"

    iget-object v2, p0, Lcom/iflytek/msc/d/a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "beginVerify:mSst="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/iflytek/msc/d/a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mEngineParam="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iflytek/msc/d/a;->o()Lcom/iflytek/b/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/msc/a/h;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/iflytek/msc/d/a;->p()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a([B)V
    .locals 2

    iget-object v0, p0, Lcom/iflytek/msc/d/a;->a:Lcom/iflytek/speech/VerifyListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/msc/d/a;->n:Lcom/iflytek/msc/c/c$a;

    sget-object v1, Lcom/iflytek/msc/c/c$a;->g:Lcom/iflytek/msc/c/c$a;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/iflytek/msc/d/a;->a:Lcom/iflytek/speech/VerifyListener;

    invoke-interface {v0, p1}, Lcom/iflytek/speech/VerifyListener;->onBufferReceived([B)V

    :cond_0
    return-void
.end method

.method public a([BI)V
    .locals 3

    const/4 v2, 0x0

    if-lez p2, :cond_0

    iget-object v0, p0, Lcom/iflytek/msc/d/a;->n:Lcom/iflytek/msc/c/c$a;

    sget-object v1, Lcom/iflytek/msc/c/c$a;->d:Lcom/iflytek/msc/c/c$a;

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Record read data = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/msc/a/h;->a(Ljava/lang/String;)V

    new-array v0, p2, [B

    invoke-static {p1, v2, v0, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0, v0}, Lcom/iflytek/msc/d/a;->b([B)V

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

    iget-object v2, p0, Lcom/iflytek/msc/d/a;->d:Lcom/iflytek/msc/d/b;

    array-length v3, p1

    invoke-virtual {v2, p1, v3}, Lcom/iflytek/msc/d/b;->a([BI)V

    if-eqz p2, :cond_0

    iget-object v2, p0, Lcom/iflytek/msc/d/a;->d:Lcom/iflytek/msc/d/b;

    invoke-virtual {v2}, Lcom/iflytek/msc/d/b;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "VadCheck Time: Vad End Point"

    invoke-static {v0}, Lcom/iflytek/msc/a/h;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/iflytek/msc/d/a;->e()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x2

    invoke-virtual {p0, p1}, Lcom/iflytek/msc/d/a;->a([B)V

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

.method public declared-synchronized a()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/msc/d/a;->n:Lcom/iflytek/msc/c/c$a;

    sget-object v1, Lcom/iflytek/msc/c/c$a;->d:Lcom/iflytek/msc/c/c$a;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "endVerify fail  status is :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/iflytek/msc/d/a;->n:Lcom/iflytek/msc/c/c$a;

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
    iget-object v0, p0, Lcom/iflytek/msc/d/a;->e:Lcom/iflytek/a/b;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/iflytek/msc/d/a;->r()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/iflytek/msc/d/a;->e:Lcom/iflytek/a/b;

    invoke-virtual {v0}, Lcom/iflytek/a/b;->a()V

    :cond_1
    sget-object v0, Lcom/iflytek/msc/c/c$a;->e:Lcom/iflytek/msc/c/c$a;

    invoke-virtual {p0, v0}, Lcom/iflytek/msc/d/a;->a(Lcom/iflytek/msc/c/c$a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/speech/SpeechError;
        }
    .end annotation

    iget-object v0, p0, Lcom/iflytek/msc/d/a;->i:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/iflytek/msc/d/a;->i:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-virtual {p0, v0, p1}, Lcom/iflytek/msc/d/a;->a([BZ)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/msc/d/a;->e:Lcom/iflytek/a/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/msc/d/a;->e:Lcom/iflytek/a/b;

    invoke-virtual {v0}, Lcom/iflytek/a/b;->a()V

    :cond_0
    invoke-super {p0}, Lcom/iflytek/msc/c/c;->b()V

    return-void
.end method

.method public b([B)V
    .locals 1

    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/iflytek/msc/d/a;->i:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected c()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/iflytek/msc/d/a;->n:Lcom/iflytek/msc/c/c$a;

    sget-object v1, Lcom/iflytek/msc/c/c$a;->b:Lcom/iflytek/msc/c/c$a;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/iflytek/msc/d/a;->f()V

    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/iflytek/msc/c/c;->c()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/iflytek/msc/d/a;->n:Lcom/iflytek/msc/c/c$a;

    sget-object v1, Lcom/iflytek/msc/c/c$a;->c:Lcom/iflytek/msc/c/c$a;

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/iflytek/msc/d/a;->h()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/iflytek/msc/d/a;->n:Lcom/iflytek/msc/c/c$a;

    sget-object v1, Lcom/iflytek/msc/c/c$a;->d:Lcom/iflytek/msc/c/c$a;

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/iflytek/msc/d/a;->i()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/iflytek/msc/d/a;->n:Lcom/iflytek/msc/c/c$a;

    sget-object v1, Lcom/iflytek/msc/c/c$a;->e:Lcom/iflytek/msc/c/c$a;

    if-ne v0, v1, :cond_4

    invoke-virtual {p0}, Lcom/iflytek/msc/d/a;->j()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/iflytek/msc/d/a;->n:Lcom/iflytek/msc/c/c$a;

    sget-object v1, Lcom/iflytek/msc/c/c$a;->f:Lcom/iflytek/msc/c/c$a;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/iflytek/msc/d/a;->k()V

    goto :goto_0
.end method

.method protected d()V
    .locals 3

    const-string v0, "onSessionEnd "

    invoke-static {v0}, Lcom/iflytek/msc/a/h;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/iflytek/msc/d/a;->u()V

    iget-boolean v0, p0, Lcom/iflytek/msc/d/a;->m:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iflytek/msc/d/a;->d:Lcom/iflytek/msc/d/b;

    const-string v1, "user abort"

    invoke-virtual {v0, v1}, Lcom/iflytek/msc/d/b;->a(Ljava/lang/String;)V

    :goto_0
    invoke-super {p0}, Lcom/iflytek/msc/c/c;->d()V

    iget-object v0, p0, Lcom/iflytek/msc/d/a;->a:Lcom/iflytek/speech/VerifyListener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/iflytek/msc/d/a;->m:Z

    if-eqz v0, :cond_3

    const-string v0, "VerifyListener#onCancel"

    invoke-static {v0}, Lcom/iflytek/msc/a/h;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/msc/d/a;->a:Lcom/iflytek/speech/VerifyListener;

    invoke-interface {v0}, Lcom/iflytek/speech/VerifyListener;->onCancel()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/iflytek/msc/d/a;->q:Lcom/iflytek/speech/SpeechError;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/iflytek/msc/d/a;->d:Lcom/iflytek/msc/d/b;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "error"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/iflytek/msc/d/a;->q:Lcom/iflytek/speech/SpeechError;

    invoke-virtual {v2}, Lcom/iflytek/speech/SpeechError;->getErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/msc/d/b;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/iflytek/msc/d/a;->d:Lcom/iflytek/msc/d/b;

    const-string v1, "success"

    invoke-virtual {v0, v1}, Lcom/iflytek/msc/d/b;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v0, "VerifyListener#onEnd"

    invoke-static {v0}, Lcom/iflytek/msc/a/h;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/msc/d/a;->a:Lcom/iflytek/speech/VerifyListener;

    iget-object v1, p0, Lcom/iflytek/msc/d/a;->h:Lcom/iflytek/speech/VerifyResult;

    iget-object v2, p0, Lcom/iflytek/msc/d/a;->q:Lcom/iflytek/speech/SpeechError;

    invoke-interface {v0, v1, v2}, Lcom/iflytek/speech/VerifyListener;->onEnd(Lcom/iflytek/speech/VerifyResult;Lcom/iflytek/speech/SpeechError;)V

    goto :goto_1
.end method

.method public e()V
    .locals 2

    sget-object v0, Lcom/iflytek/msc/c/c$a;->d:Lcom/iflytek/msc/c/c$a;

    iget-object v1, p0, Lcom/iflytek/msc/d/a;->n:Lcom/iflytek/msc/c/c$a;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/iflytek/msc/d/a;->a()Z

    iget-object v0, p0, Lcom/iflytek/msc/d/a;->a:Lcom/iflytek/speech/VerifyListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/msc/d/a;->a:Lcom/iflytek/speech/VerifyListener;

    invoke-interface {v0}, Lcom/iflytek/speech/VerifyListener;->onEndOfSpeech()V

    :cond_0
    return-void
.end method

.method f()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/speech/SpeechError;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "start connecting"

    invoke-static {v0}, Lcom/iflytek/msc/a/h;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/iflytek/msc/d/a;->o()Lcom/iflytek/b/b;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/b/c;->a(Lcom/iflytek/b/b;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/msc/d/a;->l:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/msc/a/c;->a(Landroid/content/Context;)V

    :cond_0
    iget-object v0, p0, Lcom/iflytek/msc/d/a;->l:Landroid/content/Context;

    invoke-static {}, Lcom/iflytek/speech/SpeechVerify;->getVerifier()Lcom/iflytek/speech/SpeechVerify;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/speech/SpeechVerify;->getInitParam()Lcom/iflytek/b/b;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/msc/d/b;->a(Landroid/content/Context;Lcom/iflytek/b/b;)V

    sget-object v0, Lcom/iflytek/msc/c/c$a;->c:Lcom/iflytek/msc/c/c$a;

    invoke-virtual {p0, v0}, Lcom/iflytek/msc/d/a;->a(Lcom/iflytek/msc/c/c$a;)V

    return-void
.end method

.method protected g()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/msc/d/a;->c:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/msc/d/a;->c:Z

    const/16 v0, 0x1b58

    iput v0, p0, Lcom/iflytek/msc/d/a;->j:I

    invoke-virtual {p0}, Lcom/iflytek/msc/d/a;->o()Lcom/iflytek/b/b;

    move-result-object v0

    const-string v1, "speech_timeout"

    iget v2, p0, Lcom/iflytek/msc/d/a;->j:I

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/b/b;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/iflytek/msc/d/a;->j:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mSpeechTimeOut="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/iflytek/msc/d/a;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/msc/a/h;->a(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/iflytek/msc/c/c;->g()V

    return-void
.end method

.method h()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/speech/SpeechError;,
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const-string v0, "start record"

    invoke-static {v0}, Lcom/iflytek/msc/a/h;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/msc/d/a;->i:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    iget-object v0, p0, Lcom/iflytek/msc/d/a;->e:Lcom/iflytek/a/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/iflytek/a/b;

    invoke-static {}, Lcom/iflytek/speech/SpeechConfig;->a()I

    move-result v1

    invoke-static {}, Lcom/iflytek/speech/SpeechConfig;->b()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/iflytek/a/b;-><init>(II)V

    iput-object v0, p0, Lcom/iflytek/msc/d/a;->e:Lcom/iflytek/a/b;

    iget-object v0, p0, Lcom/iflytek/msc/d/a;->e:Lcom/iflytek/a/b;

    invoke-virtual {v0, p0}, Lcom/iflytek/a/b;->a(Lcom/iflytek/a/b$a;)V

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iflytek/msc/d/a;->b:J

    iget-object v0, p0, Lcom/iflytek/msc/d/a;->d:Lcom/iflytek/msc/d/b;

    invoke-virtual {v0}, Lcom/iflytek/msc/d/b;->b()[C

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/iflytek/msc/d/a;->d:Lcom/iflytek/msc/d/b;

    iget-object v1, p0, Lcom/iflytek/msc/d/a;->l:Landroid/content/Context;

    iget-object v2, p0, Lcom/iflytek/msc/d/a;->g:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/iflytek/msc/d/a;->o()Lcom/iflytek/b/b;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/iflytek/msc/d/b;->a(Landroid/content/Context;Ljava/lang/String;Lcom/iflytek/b/b;)V

    :cond_1
    iget-object v0, p0, Lcom/iflytek/msc/d/a;->n:Lcom/iflytek/msc/c/c$a;

    sget-object v1, Lcom/iflytek/msc/c/c$a;->g:Lcom/iflytek/msc/c/c$a;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/iflytek/msc/d/a;->a:Lcom/iflytek/speech/VerifyListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/iflytek/msc/d/a;->a:Lcom/iflytek/speech/VerifyListener;

    invoke-interface {v0}, Lcom/iflytek/speech/VerifyListener;->onBeginOfSpeech()V

    :cond_2
    sget-object v0, Lcom/iflytek/msc/c/c$a;->d:Lcom/iflytek/msc/c/c$a;

    invoke-virtual {p0, v0}, Lcom/iflytek/msc/d/a;->a(Lcom/iflytek/msc/c/c$a;)V

    return-void
.end method

.method i()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/speech/SpeechError;,
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/iflytek/msc/d/a;->a(Z)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x14

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/iflytek/msc/d/a;->b:J

    sub-long/2addr v0, v2

    iget v2, p0, Lcom/iflytek/msc/d/a;->j:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/iflytek/msc/d/a;->e()V

    :cond_1
    return-void
.end method

.method j()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/speech/SpeechError;,
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/iflytek/msc/d/a;->r()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/iflytek/msc/d/a;->u()V

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/iflytek/msc/d/a;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/iflytek/msc/d/a;->d:Lcom/iflytek/msc/d/b;

    invoke-virtual {v0}, Lcom/iflytek/msc/d/b;->c()V

    sget-object v0, Lcom/iflytek/msc/c/c$a;->f:Lcom/iflytek/msc/c/c$a;

    invoke-virtual {p0, v0}, Lcom/iflytek/msc/d/a;->a(Lcom/iflytek/msc/c/c$a;)V

    goto :goto_0
.end method

.method k()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/speech/SpeechError;,
            Ljava/lang/InterruptedException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/iflytek/msc/d/a;->r()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/iflytek/msc/d/a;->u()V

    :cond_0
    invoke-direct {p0}, Lcom/iflytek/msc/d/a;->s()V

    iget-object v0, p0, Lcom/iflytek/msc/d/a;->n:Lcom/iflytek/msc/c/c$a;

    sget-object v1, Lcom/iflytek/msc/c/c$a;->f:Lcom/iflytek/msc/c/c$a;

    if-ne v0, v1, :cond_1

    const-wide/16 v0, 0x64

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    :cond_1
    iget-wide v0, p0, Lcom/iflytek/msc/d/a;->o:J

    iget v2, p0, Lcom/iflytek/msc/d/a;->p:I

    invoke-static {v0, v1, v2}, Lcom/iflytek/msc/d/a;->a(JI)V

    return-void
.end method
