.class public Lcom/iflytek/speech/SpeechRecognizer;
.super Lcom/iflytek/msc/c/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/speech/SpeechRecognizer$a;
    }
.end annotation


# static fields
.field private static f:Lcom/iflytek/speech/SpeechRecognizer;


# instance fields
.field protected e:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<[B>;"
        }
    .end annotation
.end field

.field private g:J

.field private h:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/iflytek/speech/SpeechRecognizer;->f:Lcom/iflytek/speech/SpeechRecognizer;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, p2}, Lcom/iflytek/msc/c/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-wide v0, p0, Lcom/iflytek/speech/SpeechRecognizer;->g:J

    iput-wide v0, p0, Lcom/iflytek/speech/SpeechRecognizer;->h:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/speech/SpeechRecognizer;->e:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-void
.end method

.method static synthetic a(Lcom/iflytek/speech/SpeechRecognizer;)J
    .locals 2

    iget-wide v0, p0, Lcom/iflytek/speech/SpeechRecognizer;->h:J

    return-wide v0
.end method

.method static synthetic a(Lcom/iflytek/speech/SpeechRecognizer;J)V
    .locals 0

    iput-wide p1, p0, Lcom/iflytek/speech/SpeechRecognizer;->g:J

    return-void
.end method

.method static synthetic b(Lcom/iflytek/speech/SpeechRecognizer;)J
    .locals 2

    iget-wide v0, p0, Lcom/iflytek/speech/SpeechRecognizer;->g:J

    return-wide v0
.end method

.method static synthetic b(Lcom/iflytek/speech/SpeechRecognizer;J)V
    .locals 0

    iput-wide p1, p0, Lcom/iflytek/speech/SpeechRecognizer;->h:J

    return-void
.end method

.method static synthetic c(Lcom/iflytek/speech/SpeechRecognizer;)Lcom/iflytek/msc/c/c;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/msc/c/a;->d:Lcom/iflytek/msc/c/c;

    return-object v0
.end method

.method public static createRecognizer(Landroid/content/Context;Ljava/lang/String;)Lcom/iflytek/speech/SpeechRecognizer;
    .locals 1

    sget-object v0, Lcom/iflytek/speech/SpeechRecognizer;->f:Lcom/iflytek/speech/SpeechRecognizer;

    if-nez v0, :cond_0

    new-instance v0, Lcom/iflytek/speech/SpeechRecognizer;

    invoke-direct {v0, p0, p1}, Lcom/iflytek/speech/SpeechRecognizer;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/iflytek/speech/SpeechRecognizer;->f:Lcom/iflytek/speech/SpeechRecognizer;

    :cond_0
    sget-object v0, Lcom/iflytek/speech/SpeechRecognizer;->f:Lcom/iflytek/speech/SpeechRecognizer;

    return-object v0
.end method

.method static synthetic d(Lcom/iflytek/speech/SpeechRecognizer;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/msc/c/a;->b:Landroid/content/Context;

    return-object v0
.end method

.method public static getRecognizer()Lcom/iflytek/speech/SpeechRecognizer;
    .locals 1

    sget-object v0, Lcom/iflytek/speech/SpeechRecognizer;->f:Lcom/iflytek/speech/SpeechRecognizer;

    return-object v0
.end method


# virtual methods
.method protected a()Z
    .locals 2

    const/4 v0, 0x1

    sget-object v1, Lcom/iflytek/speech/SpeechRecognizer;->f:Lcom/iflytek/speech/SpeechRecognizer;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/iflytek/msc/b/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    sput-object v1, Lcom/iflytek/speech/SpeechRecognizer;->f:Lcom/iflytek/speech/SpeechRecognizer;

    :cond_0
    return v0
.end method

.method public a(Lcom/iflytek/speech/RecognizerListener;Ljava/util/concurrent/ConcurrentLinkedQueue;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iflytek/speech/RecognizerListener;",
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<[B>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const/4 v5, 0x1

    iget-object v1, p0, Lcom/iflytek/speech/SpeechRecognizer;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/iflytek/speech/SpeechRecognizer;->isAvaible()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/iflytek/speech/SpeechRecognizer$a;

    invoke-direct {v0, p0, p1}, Lcom/iflytek/speech/SpeechRecognizer$a;-><init>(Lcom/iflytek/speech/SpeechRecognizer;Lcom/iflytek/speech/RecognizerListener;)V

    new-instance v2, Lcom/iflytek/speech/SpeechError;

    const/16 v3, 0x13

    const/16 v4, 0x7530

    invoke-direct {v2, v3, v4}, Lcom/iflytek/speech/SpeechError;-><init>(II)V

    invoke-virtual {v0, v2}, Lcom/iflytek/speech/SpeechRecognizer$a;->onEnd(Lcom/iflytek/speech/SpeechError;)V

    monitor-exit v1

    :goto_0
    return v5

    :cond_0
    new-instance v0, Lcom/iflytek/msc/b/a;

    iget-object v2, p0, Lcom/iflytek/speech/SpeechRecognizer;->b:Landroid/content/Context;

    invoke-direct {v0, p2, v2}, Lcom/iflytek/msc/b/a;-><init>(Ljava/util/concurrent/ConcurrentLinkedQueue;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/speech/SpeechRecognizer;->d:Lcom/iflytek/msc/c/c;

    iget-object v0, p0, Lcom/iflytek/speech/SpeechRecognizer;->d:Lcom/iflytek/msc/c/c;

    check-cast v0, Lcom/iflytek/msc/b/c;

    new-instance v2, Lcom/iflytek/speech/SpeechRecognizer$a;

    invoke-direct {v2, p0, p1}, Lcom/iflytek/speech/SpeechRecognizer$a;-><init>(Lcom/iflytek/speech/SpeechRecognizer;Lcom/iflytek/speech/RecognizerListener;)V

    invoke-virtual {v0, p3, p4, p5, v2}, Lcom/iflytek/msc/b/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/speech/RecognizerListener;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "recognizePcm mIsr = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/iflytek/speech/SpeechRecognizer;->d:Lcom/iflytek/msc/c/c;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/msc/a/h;->a(Ljava/lang/String;)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected b()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/iflytek/speech/SpeechRecognizer;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/iflytek/speech/SpeechRecognizer;->a:Lcom/iflytek/b/b;

    invoke-static {v0, v1}, Lcom/iflytek/msc/b/b;->a(Landroid/content/Context;Lcom/iflytek/b/b;)V

    invoke-super {p0}, Lcom/iflytek/msc/c/a;->b()V

    return-void
.end method

.method public d()Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<[B>;"
        }
    .end annotation

    iget-object v1, p0, Lcom/iflytek/speech/SpeechRecognizer;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/speech/SpeechRecognizer;->e:Ljava/util/concurrent/ConcurrentLinkedQueue;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public e()I
    .locals 1

    invoke-static {}, Lcom/iflytek/speech/SpeechConfig;->a()I

    move-result v0

    return v0
.end method

.method public getDownflowBytes(Z)I
    .locals 2

    iget-object v1, p0, Lcom/iflytek/speech/SpeechRecognizer;->c:Ljava/lang/Object;

    monitor-enter v1

    if-eqz p1, :cond_0

    :try_start_0
    const-string v0, "downflow"

    invoke-static {v0}, Lcom/iflytek/msc/b/b;->c(Ljava/lang/String;)I

    move-result v0

    monitor-exit v1

    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/iflytek/msc/b/c;->g:I

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getUpflowBytes(Z)I
    .locals 2

    iget-object v1, p0, Lcom/iflytek/speech/SpeechRecognizer;->c:Ljava/lang/Object;

    monitor-enter v1

    if-eqz p1, :cond_0

    :try_start_0
    const-string v0, "upflow"

    invoke-static {v0}, Lcom/iflytek/msc/b/b;->c(Ljava/lang/String;)I

    move-result v0

    monitor-exit v1

    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/iflytek/msc/b/c;->f:I

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setRecordInterval(I)V
    .locals 0

    invoke-static {p1}, Lcom/iflytek/speech/SpeechConfig;->a(I)V

    return-void
.end method

.method public setSampleRate(Lcom/iflytek/speech/SpeechConfig$RATE;)V
    .locals 0

    invoke-static {p1}, Lcom/iflytek/speech/SpeechConfig;->a(Lcom/iflytek/speech/SpeechConfig$RATE;)V

    return-void
.end method

.method public startListening(Lcom/iflytek/speech/RecognizerListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    iget-object v1, p0, Lcom/iflytek/speech/SpeechRecognizer;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/iflytek/speech/SpeechRecognizer;->isAvaible()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/iflytek/speech/SpeechRecognizer$a;

    invoke-direct {v0, p0, p1}, Lcom/iflytek/speech/SpeechRecognizer$a;-><init>(Lcom/iflytek/speech/SpeechRecognizer;Lcom/iflytek/speech/RecognizerListener;)V

    new-instance v2, Lcom/iflytek/speech/SpeechError;

    const/16 v3, 0x13

    const/16 v4, 0x7530

    invoke-direct {v2, v3, v4}, Lcom/iflytek/speech/SpeechError;-><init>(II)V

    invoke-virtual {v0, v2}, Lcom/iflytek/speech/SpeechRecognizer$a;->onEnd(Lcom/iflytek/speech/SpeechError;)V

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/iflytek/msc/a/e;->a()V

    const-string v0, "start recognize"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/iflytek/msc/a/e;->a(Ljava/lang/String;Z)V

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/iflytek/speech/SpeechRecognizer;->h:J

    new-instance v0, Lcom/iflytek/msc/b/c;

    iget-object v2, p0, Lcom/iflytek/speech/SpeechRecognizer;->b:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/iflytek/msc/b/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/speech/SpeechRecognizer;->d:Lcom/iflytek/msc/c/c;

    iget-object v0, p0, Lcom/iflytek/speech/SpeechRecognizer;->d:Lcom/iflytek/msc/c/c;

    check-cast v0, Lcom/iflytek/msc/b/c;

    new-instance v2, Lcom/iflytek/speech/SpeechRecognizer$a;

    invoke-direct {v2, p0, p1}, Lcom/iflytek/speech/SpeechRecognizer$a;-><init>(Lcom/iflytek/speech/SpeechRecognizer;Lcom/iflytek/speech/RecognizerListener;)V

    invoke-virtual {v0, p2, p3, p4, v2}, Lcom/iflytek/msc/b/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/speech/RecognizerListener;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "MscRecognizer, startListening mIsr = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/iflytek/speech/SpeechRecognizer;->d:Lcom/iflytek/msc/c/c;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/msc/a/h;->a(Ljava/lang/String;)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stopListening()V
    .locals 4

    iget-object v1, p0, Lcom/iflytek/speech/SpeechRecognizer;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/speech/SpeechRecognizer;->d:Lcom/iflytek/msc/c/c;

    if-eqz v0, :cond_0

    const-string v0, "end record"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/iflytek/msc/a/e;->a(Ljava/lang/String;Z)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/iflytek/speech/SpeechRecognizer;->g:J

    iget-object v0, p0, Lcom/iflytek/speech/SpeechRecognizer;->d:Lcom/iflytek/msc/c/c;

    check-cast v0, Lcom/iflytek/msc/b/c;

    invoke-virtual {v0}, Lcom/iflytek/msc/b/c;->f()Z

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
