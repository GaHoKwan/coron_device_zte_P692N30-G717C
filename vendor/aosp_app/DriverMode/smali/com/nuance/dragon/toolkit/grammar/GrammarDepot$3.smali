.class final Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$UploadListener;


# instance fields
.field final synthetic a:Ljava/util/HashMap;

.field final synthetic b:Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarUploadListener;

.field final synthetic c:Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;Ljava/util/HashMap;Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarUploadListener;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$3;->c:Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$3;->a:Ljava/util/HashMap;

    iput-object p3, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$3;->b:Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarUploadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;Lcom/nuance/dragon/toolkit/cloudservices/TransactionError;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$3;->c:Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->e(Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$3;->a:Ljava/util/HashMap;

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "Failed to upload word list."

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$3;->c:Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->f(Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;)Ljava/util/HashMap;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$3;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$3;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;->cancel()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$3;->b:Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarUploadListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$3;->b:Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarUploadListener;

    const-string v1, "unknown"

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2}, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarUploadListener;->onComplete(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public final onSuccess(Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;Lcom/nuance/dragon/toolkit/cloudservices/TransactionResult;Ljava/lang/String;Z)V
    .locals 3

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$3;->c:Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->e(Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$3;->a:Ljava/util/HashMap;

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p2, :cond_2

    if-nez p4, :cond_2

    const-string v0, "Upload command has not been constructed properly"

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p3}, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$3;->onError(Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;Lcom/nuance/dragon/toolkit/cloudservices/TransactionError;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$3;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$3;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$3;->c:Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->f(Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;)Ljava/util/HashMap;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$3;->b:Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarUploadListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$3;->b:Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarUploadListener;

    const-string v1, "unknown"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarUploadListener;->onComplete(Ljava/lang/String;I)V

    goto :goto_0
.end method
