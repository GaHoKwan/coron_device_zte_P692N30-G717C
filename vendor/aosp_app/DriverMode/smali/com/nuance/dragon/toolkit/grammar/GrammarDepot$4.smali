.class final Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$DeleteListener;


# instance fields
.field final synthetic a:Ljava/util/HashMap;

.field final synthetic b:Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarUploadListener;

.field final synthetic c:Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;Ljava/util/HashMap;Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarUploadListener;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$4;->c:Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$4;->a:Ljava/util/HashMap;

    iput-object p3, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$4;->b:Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarUploadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;Lcom/nuance/dragon/toolkit/cloudservices/TransactionError;)V
    .locals 3

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$4;->c:Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->e(Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$4;->a:Ljava/util/HashMap;

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$4;->c:Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->f(Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;)Ljava/util/HashMap;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$4;->b:Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarUploadListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$4;->b:Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarUploadListener;

    const-string v1, "unknown"

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2}, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarUploadListener;->onComplete(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public final onSuccess(Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;Lcom/nuance/dragon/toolkit/cloudservices/TransactionResult;)V
    .locals 4

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$4;->c:Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->e(Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$4;->a:Ljava/util/HashMap;

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$4;->c:Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->g(Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;)Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarEntry;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarEntry;->b(Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarEntry;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/grammar/Scenario;

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/grammar/Scenario;->getRequiredContactListId()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/grammar/Scenario;->getRequiredWordListIds()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/grammar/Scenario;->getRequiredContactListId()Ljava/lang/String;

    goto :goto_2

    :cond_3
    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$4;->c:Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->a(Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;Ljava/lang/String;)Lcom/nuance/dragon/toolkit/grammar/WordList;

    :cond_4
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$4;->c:Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;

    invoke-static {v2, v0}, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->a(Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;Ljava/lang/String;)Lcom/nuance/dragon/toolkit/grammar/WordList;

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$4;->c:Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->f(Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;)Ljava/util/HashMap;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$4;->b:Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarUploadListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$4;->b:Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarUploadListener;

    const-string v1, "unknown"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarUploadListener;->onComplete(Ljava/lang/String;I)V

    goto :goto_0
.end method
