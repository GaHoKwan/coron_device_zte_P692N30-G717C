.class final Lcom/nuance/dragon/toolkit/cloudservices/i$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/dragon/toolkit/cloudservices/Param$a;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/cloudservices/i;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/cloudservices/i;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/cloudservices/i$1;->a:Lcom/nuance/dragon/toolkit/cloudservices/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nuance/dragon/toolkit/cloudservices/Param;Z)V
    .locals 8

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/i$1;->a:Lcom/nuance/dragon/toolkit/cloudservices/i;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/cloudservices/i;->a(Lcom/nuance/dragon/toolkit/cloudservices/i;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    if-eqz p2, :cond_1

    iget-object v7, p0, Lcom/nuance/dragon/toolkit/cloudservices/i$1;->a:Lcom/nuance/dragon/toolkit/cloudservices/i;

    new-instance v0, Lcom/nuance/dragon/toolkit/cloudservices/TransactionError;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/cloudservices/i$1;->a:Lcom/nuance/dragon/toolkit/cloudservices/i;

    iget-object v1, v1, Lcom/nuance/dragon/toolkit/cloudservices/i;->b:Lcom/nuance/dragon/toolkit/cloudservices/Transaction;

    const/4 v2, 0x4

    iget-object v4, p1, Lcom/nuance/dragon/toolkit/cloudservices/Param;->a:Ljava/lang/String;

    const/4 v6, 0x0

    move-object v5, v3

    invoke-direct/range {v0 .. v6}, Lcom/nuance/dragon/toolkit/cloudservices/TransactionError;-><init>(Lcom/nuance/dragon/toolkit/cloudservices/Transaction;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v7, v0}, Lcom/nuance/dragon/toolkit/cloudservices/i;->a(Lcom/nuance/dragon/toolkit/cloudservices/TransactionError;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/i$1;->a:Lcom/nuance/dragon/toolkit/cloudservices/i;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/cloudservices/i;->a(Lcom/nuance/dragon/toolkit/cloudservices/i;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/i$1;->a:Lcom/nuance/dragon/toolkit/cloudservices/i;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/cloudservices/i;->b:Lcom/nuance/dragon/toolkit/cloudservices/Transaction;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/cloudservices/Transaction;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/i$1;->a:Lcom/nuance/dragon/toolkit/cloudservices/i;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/cloudservices/i;->b(Lcom/nuance/dragon/toolkit/cloudservices/i;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/i$1;->a:Lcom/nuance/dragon/toolkit/cloudservices/i;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/cloudservices/i;->c(Lcom/nuance/dragon/toolkit/cloudservices/i;)Z

    :try_start_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/i$1;->a:Lcom/nuance/dragon/toolkit/cloudservices/i;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/cloudservices/i;->a:Lcom/nuance/dragon/toolkit/cloudservices/d;

    invoke-interface {v0}, Lcom/nuance/dragon/toolkit/cloudservices/d;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error ending command "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/cloudservices/i$1;->a:Lcom/nuance/dragon/toolkit/cloudservices/i;

    iget-object v2, v2, Lcom/nuance/dragon/toolkit/cloudservices/i;->b:Lcom/nuance/dragon/toolkit/cloudservices/Transaction;

    invoke-virtual {v2}, Lcom/nuance/dragon/toolkit/cloudservices/Transaction;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/i$1;->a:Lcom/nuance/dragon/toolkit/cloudservices/i;

    new-instance v1, Lcom/nuance/dragon/toolkit/cloudservices/TransactionError;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/cloudservices/i$1;->a:Lcom/nuance/dragon/toolkit/cloudservices/i;

    iget-object v2, v2, Lcom/nuance/dragon/toolkit/cloudservices/i;->b:Lcom/nuance/dragon/toolkit/cloudservices/Transaction;

    invoke-direct {v1, v2}, Lcom/nuance/dragon/toolkit/cloudservices/TransactionError;-><init>(Lcom/nuance/dragon/toolkit/cloudservices/Transaction;)V

    invoke-virtual {v0, v1}, Lcom/nuance/dragon/toolkit/cloudservices/i;->a(Lcom/nuance/dragon/toolkit/cloudservices/TransactionError;)V

    goto :goto_0
.end method
