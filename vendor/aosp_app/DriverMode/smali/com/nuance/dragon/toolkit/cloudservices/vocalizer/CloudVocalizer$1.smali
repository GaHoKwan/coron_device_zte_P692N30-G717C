.class final Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/CloudVocalizer$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/dragon/toolkit/cloudservices/Transaction$Listener;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/CloudVocalizer$a;

.field final synthetic b:Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/CloudVocalizer$Listener;

.field final synthetic c:Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/CloudVocalizer;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/CloudVocalizer;Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/CloudVocalizer$a;Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/CloudVocalizer$Listener;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/CloudVocalizer$1;->c:Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/CloudVocalizer;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/CloudVocalizer$1;->a:Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/CloudVocalizer$a;

    iput-object p3, p0, Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/CloudVocalizer$1;->b:Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/CloudVocalizer$Listener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTransactionError(Lcom/nuance/dragon/toolkit/cloudservices/Transaction;Lcom/nuance/dragon/toolkit/cloudservices/TransactionError;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/CloudVocalizer$1;->a:Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/CloudVocalizer$a;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/CloudVocalizer$1;->c:Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/CloudVocalizer;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/CloudVocalizer;->a(Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/CloudVocalizer;)Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/CloudVocalizer$a;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/CloudVocalizer$1;->c:Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/CloudVocalizer;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/CloudVocalizer;->b(Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/CloudVocalizer;)Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/CloudVocalizer$a;

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/CloudVocalizer$1;->b:Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/CloudVocalizer$Listener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/CloudVocalizer$1;->b:Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/CloudVocalizer$Listener;

    invoke-interface {v0, p2}, Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/CloudVocalizer$Listener;->onError(Lcom/nuance/dragon/toolkit/cloudservices/TransactionError;)V

    :cond_1
    return-void
.end method

.method public final onTransactionResult(Lcom/nuance/dragon/toolkit/cloudservices/Transaction;Lcom/nuance/dragon/toolkit/cloudservices/TransactionResult;Z)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/CloudVocalizer$1;->a:Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/CloudVocalizer$a;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/CloudVocalizer$1;->c:Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/CloudVocalizer;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/CloudVocalizer;->a(Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/CloudVocalizer;)Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/CloudVocalizer$a;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p2}, Lcom/nuance/dragon/toolkit/cloudservices/TransactionResult;->isFinal()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/CloudVocalizer$1;->c:Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/CloudVocalizer;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/CloudVocalizer;->b(Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/CloudVocalizer;)Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/CloudVocalizer$a;

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/CloudVocalizer$1;->b:Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/CloudVocalizer$Listener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/CloudVocalizer$1;->b:Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/CloudVocalizer$Listener;

    invoke-interface {v0}, Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/CloudVocalizer$Listener;->onSuccess()V

    :cond_1
    return-void
.end method

.method public final onTransactionStarted(Lcom/nuance/dragon/toolkit/cloudservices/Transaction;)V
    .locals 0

    return-void
.end method
