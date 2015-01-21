.class final Lcom/nuance/a/a/a/b/c/b/b/s$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/a/a/a/a/b/a/f$a;


# instance fields
.field private synthetic a:Lcom/nuance/a/a/a/b/c/b/b/s;


# direct methods
.method constructor <init>(Lcom/nuance/a/a/a/b/c/b/b/s;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/a/a/a/b/c/b/b/s$1;->a:Lcom/nuance/a/a/a/b/c/b/b/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/b/s$1;->a:Lcom/nuance/a/a/a/b/c/b/b/s;

    invoke-static {v0}, Lcom/nuance/a/a/a/b/c/b/b/s;->a(Lcom/nuance/a/a/a/b/c/b/b/s;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/b/s$1;->a:Lcom/nuance/a/a/a/b/c/b/b/s;

    invoke-static {v0}, Lcom/nuance/a/a/a/b/c/b/b/s;->b(Lcom/nuance/a/a/a/b/c/b/b/s;)S

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/b/s$1;->a:Lcom/nuance/a/a/a/b/c/b/b/s;

    const-string v1, "CommandExpired"

    invoke-static {v0, v1}, Lcom/nuance/a/a/a/b/c/b/b/s;->a(Lcom/nuance/a/a/a/b/c/b/b/s;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/b/s$1;->a:Lcom/nuance/a/a/a/b/c/b/b/s;

    invoke-static {v0}, Lcom/nuance/a/a/a/b/c/b/b/s;->c(Lcom/nuance/a/a/a/b/c/b/b/s;)Lcom/nuance/a/a/a/b/c/c/f;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/nuance/a/a/a/b/c/b/b/s;->g()Lcom/nuance/a/a/a/a/b/a/b$a;

    move-result-object v0

    const-string v1, "PDXTransactionImpl.end() timed out waiting for results. "

    invoke-virtual {v0, v1}, Lcom/nuance/a/a/a/a/b/a/b$a;->b(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/b/s$1;->a:Lcom/nuance/a/a/a/b/c/b/b/s;

    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/b/s$1;->a:Lcom/nuance/a/a/a/b/c/b/b/s;

    invoke-static {v0}, Lcom/nuance/a/a/a/b/c/b/b/s;->d(Lcom/nuance/a/a/a/b/c/b/b/s;)Lcom/nuance/a/a/a/b/c/b/b/s$a;

    move-result-object v0

    const-string v1, "TIMEOUT_CMD"

    invoke-static {v0, v1}, Lcom/nuance/a/a/a/b/c/b/b/s;->a(Lcom/nuance/a/a/a/b/c/b/b/s$a;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/b/s$1;->a:Lcom/nuance/a/a/a/b/c/b/b/s;

    invoke-static {v0}, Lcom/nuance/a/a/a/b/c/b/b/s;->c(Lcom/nuance/a/a/a/b/c/b/b/s;)Lcom/nuance/a/a/a/b/c/c/f;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/nuance/a/a/a/b/c/c/f;->a(S)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :cond_0
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v1

    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/nuance/a/a/a/b/c/b/b/s;->g()Lcom/nuance/a/a/a/a/b/a/b$a;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "PDXTransactionImpl.run() "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/nuance/a/a/a/a/b/a/b$a;->e(Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_5
    invoke-static {}, Lcom/nuance/a/a/a/b/c/b/b/s;->g()Lcom/nuance/a/a/a/a/b/a/b$a;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "got exp in PDXCommandListener.PDXCommandEvent(TIMED_OUT_WAITING_FOR_RESULT) ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] msg ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/nuance/a/a/a/a/b/a/b$a;->e(Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0
.end method
