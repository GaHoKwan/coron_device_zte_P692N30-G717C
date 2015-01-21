.class public Lcom/iflytek/msc/c/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/msc/c/c$a;
    }
.end annotation


# instance fields
.field private a:Lcom/iflytek/b/b;

.field private b:Ljava/lang/Runnable;

.field protected j:I

.field protected k:Z

.field protected l:Landroid/content/Context;

.field protected volatile m:Z

.field protected volatile n:Lcom/iflytek/msc/c/c$a;

.field protected o:J

.field protected p:I

.field protected q:Lcom/iflytek/speech/SpeechError;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x7530

    iput v0, p0, Lcom/iflytek/msc/c/c;->j:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/msc/c/c;->k:Z

    iput-object v3, p0, Lcom/iflytek/msc/c/c;->l:Landroid/content/Context;

    new-instance v0, Lcom/iflytek/b/b;

    invoke-direct {v0}, Lcom/iflytek/b/b;-><init>()V

    iput-object v0, p0, Lcom/iflytek/msc/c/c;->a:Lcom/iflytek/b/b;

    iput-boolean v2, p0, Lcom/iflytek/msc/c/c;->m:Z

    sget-object v0, Lcom/iflytek/msc/c/c$a;->a:Lcom/iflytek/msc/c/c$a;

    iput-object v0, p0, Lcom/iflytek/msc/c/c;->n:Lcom/iflytek/msc/c/c$a;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/iflytek/msc/c/c;->o:J

    const/16 v0, 0x4e20

    iput v0, p0, Lcom/iflytek/msc/c/c;->p:I

    iput-object v3, p0, Lcom/iflytek/msc/c/c;->q:Lcom/iflytek/speech/SpeechError;

    new-instance v0, Lcom/iflytek/msc/c/b;

    invoke-direct {v0, p0}, Lcom/iflytek/msc/c/b;-><init>(Lcom/iflytek/msc/c/c;)V

    iput-object v0, p0, Lcom/iflytek/msc/c/c;->b:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/iflytek/msc/c/c;->l:Landroid/content/Context;

    iput-boolean v2, p0, Lcom/iflytek/msc/c/c;->m:Z

    return-void
.end method

.method public static a(JI)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/speech/SpeechError;
        }
    .end annotation

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, p0

    int-to-long v2, p2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    new-instance v0, Lcom/iflytek/speech/SpeechError;

    const/4 v1, 0x2

    const/16 v2, 0x7530

    invoke-direct {v0, v1, v2}, Lcom/iflytek/speech/SpeechError;-><init>(II)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method protected a(Lcom/iflytek/b/b;)V
    .locals 1

    invoke-virtual {p1}, Lcom/iflytek/b/b;->b()Lcom/iflytek/b/b;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/msc/c/c;->a:Lcom/iflytek/b/b;

    return-void
.end method

.method protected declared-synchronized a(Lcom/iflytek/msc/c/c$a;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "curStatus="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/iflytek/msc/c/c;->n:Lcom/iflytek/msc/c/c$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",setStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/msc/a/h;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/msc/c/c;->n:Lcom/iflytek/msc/c/c$a;

    sget-object v1, Lcom/iflytek/msc/c/c$a;->h:Lcom/iflytek/msc/c/c$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/iflytek/msc/c/c;->n:Lcom/iflytek/msc/c/c$a;

    sget-object v1, Lcom/iflytek/msc/c/c$a;->g:Lcom/iflytek/msc/c/c$a;

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/iflytek/msc/c/c$a;->h:Lcom/iflytek/msc/c/c$a;

    if-ne p1, v0, :cond_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setStatus success="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/msc/a/h;->a(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/iflytek/msc/c/c;->n:Lcom/iflytek/msc/c/c$a;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iflytek/msc/c/c;->o:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/iflytek/msc/c/c;->a:Lcom/iflytek/b/b;

    sget-object v1, Lcom/iflytek/b/a;->a:[[Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/iflytek/b/b;->a(Ljava/lang/String;[[Ljava/lang/String;)V

    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/msc/c/c;->m:Z

    invoke-virtual {p0}, Lcom/iflytek/msc/c/c;->m()V

    return-void
.end method

.method protected c()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method protected d()V
    .locals 1

    sget-object v0, Lcom/iflytek/msc/c/c$a;->h:Lcom/iflytek/msc/c/c$a;

    invoke-virtual {p0, v0}, Lcom/iflytek/msc/c/c;->a(Lcom/iflytek/msc/c/c$a;)V

    return-void
.end method

.method protected g()V
    .locals 3

    iget-object v0, p0, Lcom/iflytek/msc/c/c;->a:Lcom/iflytek/b/b;

    const-string v1, "timeout"

    iget v2, p0, Lcom/iflytek/msc/c/c;->p:I

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/b/b;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/iflytek/msc/c/c;->p:I

    iget-object v0, p0, Lcom/iflytek/msc/c/c;->a:Lcom/iflytek/b/b;

    const-string v1, "plr"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/b/b;->a(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/iflytek/msc/c/c;->k:Z

    return-void
.end method

.method protected declared-synchronized m()V
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/iflytek/msc/c/c;->q()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " exit called"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/msc/a/h;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/iflytek/msc/c/c$a;->g:Lcom/iflytek/msc/c/c$a;

    invoke-virtual {p0, v0}, Lcom/iflytek/msc/c/c;->a(Lcom/iflytek/msc/c/c$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized n()Lcom/iflytek/msc/c/c$a;
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getStatus ="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/iflytek/msc/c/c;->n:Lcom/iflytek/msc/c/c$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/msc/a/h;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/msc/c/c;->n:Lcom/iflytek/msc/c/c$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public o()Lcom/iflytek/b/b;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/msc/c/c;->a:Lcom/iflytek/b/b;

    return-object v0
.end method

.method protected p()V
    .locals 3

    sget-object v0, Lcom/iflytek/msc/c/c$a;->b:Lcom/iflytek/msc/c/c$a;

    invoke-virtual {p0, v0}, Lcom/iflytek/msc/c/c;->a(Lcom/iflytek/msc/c/c$a;)V

    iget-object v0, p0, Lcom/iflytek/msc/c/c;->a:Lcom/iflytek/b/b;

    const-string v1, "crt"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/b/b;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/iflytek/msc/c/c;->b:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/iflytek/msc/c/c;->b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method protected q()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
