.class final Lcom/nuance/dragon/toolkit/cloudservices/i;
.super Lcom/nuance/dragon/toolkit/cloudservices/f;


# instance fields
.field private final c:Ljava/util/ArrayList;

.field private final d:Lcom/nuance/dragon/toolkit/cloudservices/Param$a;

.field private e:Z


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/cloudservices/d;Lcom/nuance/dragon/toolkit/cloudservices/Transaction;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/nuance/dragon/toolkit/cloudservices/f;-><init>(Lcom/nuance/dragon/toolkit/cloudservices/d;ZZLcom/nuance/dragon/toolkit/cloudservices/Transaction;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/i;->c:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/nuance/dragon/toolkit/cloudservices/i;->e:Z

    new-instance v0, Lcom/nuance/dragon/toolkit/cloudservices/i$1;

    invoke-direct {v0, p0}, Lcom/nuance/dragon/toolkit/cloudservices/i$1;-><init>(Lcom/nuance/dragon/toolkit/cloudservices/i;)V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/i;->d:Lcom/nuance/dragon/toolkit/cloudservices/Param$a;

    return-void
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/cloudservices/i;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/i;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic b(Lcom/nuance/dragon/toolkit/cloudservices/i;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/i;->e:Z

    return v0
.end method

.method static synthetic c(Lcom/nuance/dragon/toolkit/cloudservices/i;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/i;->e:Z

    return v0
.end method


# virtual methods
.method final a()V
    .locals 7

    invoke-super {p0}, Lcom/nuance/dragon/toolkit/cloudservices/f;->a()V

    :try_start_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/i;->a:Lcom/nuance/dragon/toolkit/cloudservices/d;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/cloudservices/i;->b:Lcom/nuance/dragon/toolkit/cloudservices/Transaction;

    invoke-virtual {v1}, Lcom/nuance/dragon/toolkit/cloudservices/Transaction;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/cloudservices/i;->b:Lcom/nuance/dragon/toolkit/cloudservices/Transaction;

    invoke-virtual {v2}, Lcom/nuance/dragon/toolkit/cloudservices/Transaction;->b()Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/cloudservices/i;->b:Lcom/nuance/dragon/toolkit/cloudservices/Transaction;

    invoke-virtual {v3}, Lcom/nuance/dragon/toolkit/cloudservices/Transaction;->c()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/dragon/toolkit/cloudservices/d;->a(Ljava/lang/String;Lcom/nuance/dragon/toolkit/data/Data$Dictionary;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/i;->b:Lcom/nuance/dragon/toolkit/cloudservices/Transaction;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/cloudservices/Transaction;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/nuance/dragon/toolkit/cloudservices/Param;

    :try_start_1
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/i;->a:Lcom/nuance/dragon/toolkit/cloudservices/d;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/cloudservices/i;->d:Lcom/nuance/dragon/toolkit/cloudservices/Param$a;

    invoke-virtual {v4, v0, v2}, Lcom/nuance/dragon/toolkit/cloudservices/Param;->a(Lcom/nuance/dragon/toolkit/cloudservices/d;Lcom/nuance/dragon/toolkit/cloudservices/Param$a;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/i;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to create command ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/cloudservices/i;->b:Lcom/nuance/dragon/toolkit/cloudservices/Transaction;

    invoke-virtual {v2}, Lcom/nuance/dragon/toolkit/cloudservices/Transaction;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/cloudservices/i;->g()V

    :cond_1
    :goto_1
    return-void

    :catch_1
    move-exception v0

    move-object v3, v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to send param ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v4, Lcom/nuance/dragon/toolkit/cloudservices/Param;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] command ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/cloudservices/i;->b:Lcom/nuance/dragon/toolkit/cloudservices/Transaction;

    invoke-virtual {v1}, Lcom/nuance/dragon/toolkit/cloudservices/Transaction;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Lcom/nuance/dragon/toolkit/cloudservices/TransactionError;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/cloudservices/i;->b:Lcom/nuance/dragon/toolkit/cloudservices/Transaction;

    const/4 v2, 0x4

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v4, Lcom/nuance/dragon/toolkit/cloudservices/Param;->a:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/nuance/dragon/toolkit/cloudservices/TransactionError;-><init>(Lcom/nuance/dragon/toolkit/cloudservices/Transaction;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/nuance/dragon/toolkit/cloudservices/i;->a(Lcom/nuance/dragon/toolkit/cloudservices/TransactionError;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/i;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/i;->b:Lcom/nuance/dragon/toolkit/cloudservices/Transaction;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/cloudservices/Transaction;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/i;->e:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/i;->e:Z

    :try_start_2
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/i;->a:Lcom/nuance/dragon/toolkit/cloudservices/d;

    invoke-interface {v0}, Lcom/nuance/dragon/toolkit/cloudservices/d;->a()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error ending command "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/cloudservices/i;->b:Lcom/nuance/dragon/toolkit/cloudservices/Transaction;

    invoke-virtual {v2}, Lcom/nuance/dragon/toolkit/cloudservices/Transaction;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Lcom/nuance/dragon/toolkit/cloudservices/TransactionError;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/cloudservices/i;->b:Lcom/nuance/dragon/toolkit/cloudservices/Transaction;

    invoke-direct {v0, v1}, Lcom/nuance/dragon/toolkit/cloudservices/TransactionError;-><init>(Lcom/nuance/dragon/toolkit/cloudservices/Transaction;)V

    invoke-virtual {p0, v0}, Lcom/nuance/dragon/toolkit/cloudservices/i;->a(Lcom/nuance/dragon/toolkit/cloudservices/TransactionError;)V

    goto/16 :goto_1
.end method

.method final a(Lcom/nuance/a/a/a/b/c/c/i;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/nuance/dragon/toolkit/cloudservices/f;->a(Lcom/nuance/a/a/a/b/c/c/i;)V

    new-instance v0, Lcom/nuance/dragon/toolkit/cloudservices/TransactionResult;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/cloudservices/i;->b:Lcom/nuance/dragon/toolkit/cloudservices/Transaction;

    invoke-direct {v0, v1, p1}, Lcom/nuance/dragon/toolkit/cloudservices/TransactionResult;-><init>(Lcom/nuance/dragon/toolkit/cloudservices/Transaction;Lcom/nuance/a/a/a/b/c/c/i;)V

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/cloudservices/TransactionResult;->isFinal()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v2, Lcom/nuance/dragon/toolkit/cloudservices/g;

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/cloudservices/i;->a:Lcom/nuance/dragon/toolkit/cloudservices/d;

    iget-object v4, p0, Lcom/nuance/dragon/toolkit/cloudservices/i;->b:Lcom/nuance/dragon/toolkit/cloudservices/Transaction;

    invoke-direct {v2, v3, v4}, Lcom/nuance/dragon/toolkit/cloudservices/g;-><init>(Lcom/nuance/dragon/toolkit/cloudservices/d;Lcom/nuance/dragon/toolkit/cloudservices/Transaction;)V

    invoke-virtual {p0, v2}, Lcom/nuance/dragon/toolkit/cloudservices/i;->a(Lcom/nuance/dragon/toolkit/cloudservices/f;)V

    :cond_0
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/cloudservices/i;->b:Lcom/nuance/dragon/toolkit/cloudservices/Transaction;

    invoke-virtual {v2, v0, v1}, Lcom/nuance/dragon/toolkit/cloudservices/Transaction;->a(Lcom/nuance/dragon/toolkit/cloudservices/TransactionResult;Z)V

    return-void
.end method

.method public final a(Lcom/nuance/dragon/toolkit/cloudservices/Param;)V
    .locals 7

    const/4 v3, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/i;->a:Lcom/nuance/dragon/toolkit/cloudservices/d;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/cloudservices/i;->d:Lcom/nuance/dragon/toolkit/cloudservices/Param$a;

    invoke-virtual {p1, v0, v1}, Lcom/nuance/dragon/toolkit/cloudservices/Param;->a(Lcom/nuance/dragon/toolkit/cloudservices/d;Lcom/nuance/dragon/toolkit/cloudservices/Param$a;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/i;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to send param "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/nuance/dragon/toolkit/cloudservices/Param;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Lcom/nuance/dragon/toolkit/cloudservices/TransactionError;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/cloudservices/i;->b:Lcom/nuance/dragon/toolkit/cloudservices/Transaction;

    const/4 v2, 0x4

    iget-object v4, p1, Lcom/nuance/dragon/toolkit/cloudservices/Param;->a:Ljava/lang/String;

    const/4 v6, 0x0

    move-object v5, v3

    invoke-direct/range {v0 .. v6}, Lcom/nuance/dragon/toolkit/cloudservices/TransactionError;-><init>(Lcom/nuance/dragon/toolkit/cloudservices/Transaction;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/nuance/dragon/toolkit/cloudservices/i;->a(Lcom/nuance/dragon/toolkit/cloudservices/TransactionError;)V

    goto :goto_0
.end method

.method final b()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/i;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/cloudservices/Param;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/cloudservices/Param;->a()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/i;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-super {p0}, Lcom/nuance/dragon/toolkit/cloudservices/f;->b()V

    return-void
.end method

.method final f()V
    .locals 3

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/i;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/i;->e:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/i;->e:Z

    :try_start_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/i;->a:Lcom/nuance/dragon/toolkit/cloudservices/d;

    invoke-interface {v0}, Lcom/nuance/dragon/toolkit/cloudservices/d;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error ending command "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/cloudservices/i;->b:Lcom/nuance/dragon/toolkit/cloudservices/Transaction;

    invoke-virtual {v2}, Lcom/nuance/dragon/toolkit/cloudservices/Transaction;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Lcom/nuance/dragon/toolkit/cloudservices/TransactionError;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/cloudservices/i;->b:Lcom/nuance/dragon/toolkit/cloudservices/Transaction;

    invoke-direct {v0, v1}, Lcom/nuance/dragon/toolkit/cloudservices/TransactionError;-><init>(Lcom/nuance/dragon/toolkit/cloudservices/Transaction;)V

    invoke-virtual {p0, v0}, Lcom/nuance/dragon/toolkit/cloudservices/i;->a(Lcom/nuance/dragon/toolkit/cloudservices/TransactionError;)V

    goto :goto_0
.end method
