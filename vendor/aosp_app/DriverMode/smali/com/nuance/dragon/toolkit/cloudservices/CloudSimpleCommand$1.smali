.class final Lcom/nuance/dragon/toolkit/cloudservices/CloudSimpleCommand$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/dragon/toolkit/cloudservices/Transaction$Listener;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/cloudservices/CloudSimpleCommand$Listener;

.field final synthetic b:Lcom/nuance/dragon/toolkit/cloudservices/CloudSimpleCommand;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/cloudservices/CloudSimpleCommand;Lcom/nuance/dragon/toolkit/cloudservices/CloudSimpleCommand$Listener;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/cloudservices/CloudSimpleCommand$1;->b:Lcom/nuance/dragon/toolkit/cloudservices/CloudSimpleCommand;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/cloudservices/CloudSimpleCommand$1;->a:Lcom/nuance/dragon/toolkit/cloudservices/CloudSimpleCommand$Listener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTransactionError(Lcom/nuance/dragon/toolkit/cloudservices/Transaction;Lcom/nuance/dragon/toolkit/cloudservices/TransactionError;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/CloudSimpleCommand$1;->b:Lcom/nuance/dragon/toolkit/cloudservices/CloudSimpleCommand;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/cloudservices/CloudSimpleCommand;->a(Lcom/nuance/dragon/toolkit/cloudservices/CloudSimpleCommand;)Lcom/nuance/dragon/toolkit/cloudservices/Transaction;

    move-result-object v0

    if-eq p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/CloudSimpleCommand$1;->b:Lcom/nuance/dragon/toolkit/cloudservices/CloudSimpleCommand;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/cloudservices/CloudSimpleCommand;->b(Lcom/nuance/dragon/toolkit/cloudservices/CloudSimpleCommand;)Lcom/nuance/dragon/toolkit/cloudservices/Transaction;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/CloudSimpleCommand$1;->a:Lcom/nuance/dragon/toolkit/cloudservices/CloudSimpleCommand$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/CloudSimpleCommand$1;->a:Lcom/nuance/dragon/toolkit/cloudservices/CloudSimpleCommand$Listener;

    invoke-interface {v0, p2}, Lcom/nuance/dragon/toolkit/cloudservices/CloudSimpleCommand$Listener;->onError(Lcom/nuance/dragon/toolkit/cloudservices/TransactionError;)V

    goto :goto_0
.end method

.method public final onTransactionResult(Lcom/nuance/dragon/toolkit/cloudservices/Transaction;Lcom/nuance/dragon/toolkit/cloudservices/TransactionResult;Z)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/CloudSimpleCommand$1;->b:Lcom/nuance/dragon/toolkit/cloudservices/CloudSimpleCommand;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/cloudservices/CloudSimpleCommand;->a(Lcom/nuance/dragon/toolkit/cloudservices/CloudSimpleCommand;)Lcom/nuance/dragon/toolkit/cloudservices/Transaction;

    move-result-object v0

    if-eq p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/CloudSimpleCommand$1;->b:Lcom/nuance/dragon/toolkit/cloudservices/CloudSimpleCommand;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/cloudservices/CloudSimpleCommand;->b(Lcom/nuance/dragon/toolkit/cloudservices/CloudSimpleCommand;)Lcom/nuance/dragon/toolkit/cloudservices/Transaction;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/CloudSimpleCommand$1;->a:Lcom/nuance/dragon/toolkit/cloudservices/CloudSimpleCommand$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/CloudSimpleCommand$1;->a:Lcom/nuance/dragon/toolkit/cloudservices/CloudSimpleCommand$Listener;

    invoke-interface {v0, p2}, Lcom/nuance/dragon/toolkit/cloudservices/CloudSimpleCommand$Listener;->onSuccess(Lcom/nuance/dragon/toolkit/cloudservices/TransactionResult;)V

    goto :goto_0
.end method

.method public final onTransactionStarted(Lcom/nuance/dragon/toolkit/cloudservices/Transaction;)V
    .locals 0

    return-void
.end method
