.class public Lcom/iflytek/msc/b/a;
.super Lcom/iflytek/msc/b/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/iflytek/msc/b/c;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ConcurrentLinkedQueue;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<[B>;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/iflytek/msc/b/c;-><init>(Ljava/util/concurrent/ConcurrentLinkedQueue;Landroid/content/Context;)V

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

    iget-object v0, p0, Lcom/iflytek/msc/b/a;->d:Lcom/iflytek/msc/b/b;

    iget-object v1, p0, Lcom/iflytek/msc/b/a;->l:Landroid/content/Context;

    iget-object v2, p0, Lcom/iflytek/msc/b/a;->h:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/iflytek/msc/b/a;->o()Lcom/iflytek/b/b;

    move-result-object v3

    iget-object v4, p0, Lcom/iflytek/msc/b/a;->i:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/iflytek/msc/b/a;->c:Z

    invoke-virtual/range {v0 .. v5}, Lcom/iflytek/msc/b/b;->a(Landroid/content/Context;Ljava/lang/String;Lcom/iflytek/b/b;Ljava/lang/String;Z)V

    sget-object v0, Lcom/iflytek/msc/c/c$a;->e:Lcom/iflytek/msc/c/c$a;

    invoke-virtual {p0, v0}, Lcom/iflytek/msc/b/a;->a(Lcom/iflytek/msc/c/c$a;)V

    return-void
.end method

.method a_()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/speech/SpeechError;,
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/iflytek/msc/b/a;->b(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x28

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/iflytek/msc/b/a;->d:Lcom/iflytek/msc/b/b;

    invoke-virtual {v0}, Lcom/iflytek/msc/b/b;->c()V

    sget-object v0, Lcom/iflytek/msc/c/c$a;->f:Lcom/iflytek/msc/c/c$a;

    invoke-virtual {p0, v0}, Lcom/iflytek/msc/b/a;->a(Lcom/iflytek/msc/c/c$a;)V

    goto :goto_0
.end method
