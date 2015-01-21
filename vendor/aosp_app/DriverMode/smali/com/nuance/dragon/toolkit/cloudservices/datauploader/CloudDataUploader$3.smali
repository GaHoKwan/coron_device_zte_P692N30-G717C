.class final Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/dragon/toolkit/cloudservices/Transaction$Listener;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;

.field final synthetic b:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$DeleteListener;

.field final synthetic c:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$DeleteListener;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$3;->c:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$3;->a:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;

    iput-object p3, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$3;->b:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$DeleteListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTransactionError(Lcom/nuance/dragon/toolkit/cloudservices/Transaction;Lcom/nuance/dragon/toolkit/cloudservices/TransactionError;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$3;->a:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$3;->c:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;->a(Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;)Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;

    move-result-object v1

    if-eq v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$3;->c:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;->d(Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;)Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$3;->b:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$DeleteListener;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$3;->c:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;

    invoke-interface {v0, v1, p2}, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$DeleteListener;->onError(Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;Lcom/nuance/dragon/toolkit/cloudservices/TransactionError;)V

    goto :goto_0
.end method

.method public final onTransactionResult(Lcom/nuance/dragon/toolkit/cloudservices/Transaction;Lcom/nuance/dragon/toolkit/cloudservices/TransactionResult;Z)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$3;->a:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$3;->c:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;->a(Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;)Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;

    move-result-object v1

    if-eq v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$3;->c:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;->d(Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;)Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$3;->b:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$DeleteListener;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$3;->c:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;

    invoke-interface {v0, v1, p2}, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$DeleteListener;->onSuccess(Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;Lcom/nuance/dragon/toolkit/cloudservices/TransactionResult;)V

    goto :goto_0
.end method

.method public final onTransactionStarted(Lcom/nuance/dragon/toolkit/cloudservices/Transaction;)V
    .locals 0

    return-void
.end method
