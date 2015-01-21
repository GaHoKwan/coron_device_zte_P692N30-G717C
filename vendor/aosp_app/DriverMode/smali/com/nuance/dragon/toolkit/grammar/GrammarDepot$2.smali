.class final Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$UploadListener;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarUploadListener;

.field final synthetic b:Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarUploadListener;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$2;->b:Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$2;->a:Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarUploadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;Lcom/nuance/dragon/toolkit/cloudservices/TransactionError;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$2;->b:Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->e(Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;)Ljava/util/HashMap;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "Failed to upload word list."

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$2;->b:Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->e(Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$2;->b:Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->e(Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$2;->b:Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->f(Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;)Ljava/util/HashMap;

    :cond_2
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$2;->a:Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarUploadListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$2;->a:Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarUploadListener;

    const/4 v1, 0x3

    invoke-interface {v0, p3, v1}, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarUploadListener;->onComplete(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public final onSuccess(Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;Lcom/nuance/dragon/toolkit/cloudservices/TransactionResult;Ljava/lang/String;Z)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$2;->b:Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->e(Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;)Ljava/util/HashMap;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$2;->b:Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->e(Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$2;->b:Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->e(Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$2;->b:Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->f(Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;)Ljava/util/HashMap;

    :cond_2
    if-eqz p4, :cond_3

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$2;->a:Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarUploadListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$2;->a:Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarUploadListener;

    const/4 v1, 0x1

    invoke-interface {v0, p3, v1}, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarUploadListener;->onComplete(Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_4

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$2;->a:Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarUploadListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$2;->a:Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarUploadListener;

    const/4 v1, 0x0

    invoke-interface {v0, p3, v1}, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarUploadListener;->onComplete(Ljava/lang/String;I)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$2;->a:Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarUploadListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$2;->a:Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarUploadListener;

    const/4 v1, 0x5

    invoke-interface {v0, p3, v1}, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarUploadListener;->onComplete(Ljava/lang/String;I)V

    goto :goto_0
.end method
