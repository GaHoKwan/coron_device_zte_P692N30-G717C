.class final Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/dragon/toolkit/cloudservices/Transaction$Listener;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/nuance/dragon/toolkit/grammar/WordList;

.field final synthetic f:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$UploadListener;

.field final synthetic g:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nuance/dragon/toolkit/grammar/WordList;Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$UploadListener;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1;->g:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1;->a:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;

    iput-object p3, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1;->e:Lcom/nuance/dragon/toolkit/grammar/WordList;

    iput-object p7, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1;->f:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$UploadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTransactionError(Lcom/nuance/dragon/toolkit/cloudservices/Transaction;Lcom/nuance/dragon/toolkit/cloudservices/TransactionError;)V
    .locals 5

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1;->a:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;->g(Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1;->g:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;->d(Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;)Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1;->f:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$UploadListener;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1;->g:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1;->b:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$UploadListener;->onSuccess(Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;Lcom/nuance/dragon/toolkit/cloudservices/TransactionResult;Ljava/lang/String;Z)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "onTransactionError(): error code: "

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/nuance/dragon/toolkit/cloudservices/TransactionError;->getErrorCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1;->a:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;->a(Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;)Lcom/nuance/dragon/toolkit/grammar/WordList$WordIterator;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1;->a:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;->a(Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;)Lcom/nuance/dragon/toolkit/grammar/WordList$WordIterator;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/dragon/toolkit/grammar/WordList$WordIterator;->discardChanges()V

    :cond_1
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1;->a:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1;->g:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;->a(Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;)Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;

    move-result-object v1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1;->g:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;->d(Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;)Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;

    :cond_2
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1;->f:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$UploadListener;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1;->g:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1;->b:Ljava/lang/String;

    invoke-interface {v0, v1, p2, v2}, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$UploadListener;->onError(Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;Lcom/nuance/dragon/toolkit/cloudservices/TransactionError;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v0, "unknown"

    goto :goto_1
.end method

.method public final onTransactionResult(Lcom/nuance/dragon/toolkit/cloudservices/Transaction;Lcom/nuance/dragon/toolkit/cloudservices/TransactionResult;Z)V
    .locals 7

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1;->a:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1;->g:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;

    invoke-static {v2}, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;->a(Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;)Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;

    move-result-object v2

    if-eq v0, v2, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p2}, Lcom/nuance/dragon/toolkit/cloudservices/TransactionResult;->getContents()Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    move-result-object v0

    const-string v2, "result_list"

    invoke-virtual {v0, v2}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->getSequence(Ljava/lang/String;)Lcom/nuance/dragon/toolkit/data/Data$Sequence;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/nuance/dragon/toolkit/data/Data$Sequence;->getDictionary(I)Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    move-result-object v0

    const-string v2, "status"

    invoke-virtual {v0, v2}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->getString(Ljava/lang/String;)Lcom/nuance/dragon/toolkit/data/Data$String;

    move-result-object v0

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/data/Data$String;->value:Ljava/lang/String;

    const-string v2, "success"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_1

    :try_start_1
    const-string v0, "onTransactionResult(): key \"status \" != \"success \""

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    if-eqz v2, :cond_5

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1;->a:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;->a(Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;)Lcom/nuance/dragon/toolkit/grammar/WordList$WordIterator;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1;->a:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;->a(Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;)Lcom/nuance/dragon/toolkit/grammar/WordList$WordIterator;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/dragon/toolkit/grammar/WordList$WordIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_2
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1;->g:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;

    invoke-static {v2}, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;->d(Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;)Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "More items, sending next command for grammarId = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1;->g:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1;->a:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;->a(Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;)Lcom/nuance/dragon/toolkit/grammar/WordList$WordIterator;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1;->e:Lcom/nuance/dragon/toolkit/grammar/WordList;

    iget-object v6, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1;->f:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$UploadListener;

    invoke-static/range {v0 .. v6}, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;->a(Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;Lcom/nuance/dragon/toolkit/grammar/WordList$WordIterator;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nuance/dragon/toolkit/grammar/WordList;Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$UploadListener;)V

    goto :goto_0

    :catch_0
    move-exception v0

    move v2, v1

    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error parsing the transaction result when uploading grammar = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1;->a:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;->a(Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;)Lcom/nuance/dragon/toolkit/grammar/WordList$WordIterator;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/dragon/toolkit/grammar/WordList$WordIterator;->acceptChanges()V

    :cond_3
    move v0, v1

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1;->f:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$UploadListener;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1;->g:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1;->b:Ljava/lang/String;

    invoke-interface {v0, v2, p2, v3, v1}, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$UploadListener;->onSuccess(Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;Lcom/nuance/dragon/toolkit/cloudservices/TransactionResult;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Server error while uploading grammar = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1;->a:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;->a(Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;)Lcom/nuance/dragon/toolkit/grammar/WordList$WordIterator;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1;->a:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;->a(Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;)Lcom/nuance/dragon/toolkit/grammar/WordList$WordIterator;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/dragon/toolkit/grammar/WordList$WordIterator;->discardChanges()V

    :cond_6
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1;->g:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;->d(Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;)Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1;->f:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$UploadListener;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1;->g:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$UploadListener;->onError(Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;Lcom/nuance/dragon/toolkit/cloudservices/TransactionError;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    goto :goto_3
.end method

.method public final onTransactionStarted(Lcom/nuance/dragon/toolkit/cloudservices/Transaction;)V
    .locals 6

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1;->a:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1;->g:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;->a(Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;)Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;

    move-result-object v1

    if-eq v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1;->a:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;->a(Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;)Lcom/nuance/dragon/toolkit/grammar/WordList$WordIterator;

    move-result-object v3

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1;->a:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;->b(Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;)Z

    move-result v2

    new-instance v5, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1$1;

    invoke-direct {v5, p0, v3, p1}, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1$1;-><init>(Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1;Lcom/nuance/dragon/toolkit/grammar/WordList$WordIterator;Lcom/nuance/dragon/toolkit/cloudservices/Transaction;)V

    new-instance v0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1$2;

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1$2;-><init>(Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1;ZLcom/nuance/dragon/toolkit/grammar/WordList$WordIterator;Lcom/nuance/dragon/toolkit/cloudservices/Transaction;Lcom/nuance/dragon/toolkit/util/internal/a$b;)V

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1;->g:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;->c(Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;)Lcom/nuance/dragon/toolkit/util/internal/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nuance/dragon/toolkit/util/internal/a;->a(Lcom/nuance/dragon/toolkit/util/internal/a$b;)V

    goto :goto_0
.end method
