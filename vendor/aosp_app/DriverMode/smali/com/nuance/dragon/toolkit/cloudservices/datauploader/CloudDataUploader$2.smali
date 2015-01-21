.class final Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$2;
.super Lcom/nuance/dragon/toolkit/util/internal/a$b;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/grammar/WordList$WordIterator;

.field final synthetic b:Z

.field final synthetic c:Lcom/nuance/dragon/toolkit/grammar/WordList;

.field final synthetic d:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;

.field final synthetic e:Lcom/nuance/dragon/toolkit/cloudservices/Transaction;

.field final synthetic f:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;Lcom/nuance/dragon/toolkit/grammar/WordList$WordIterator;ZLcom/nuance/dragon/toolkit/grammar/WordList;Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;Lcom/nuance/dragon/toolkit/cloudservices/Transaction;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$2;->f:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$2;->a:Lcom/nuance/dragon/toolkit/grammar/WordList$WordIterator;

    iput-boolean p3, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$2;->b:Z

    iput-object p4, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$2;->c:Lcom/nuance/dragon/toolkit/grammar/WordList;

    iput-object p5, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$2;->d:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;

    iput-object p6, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$2;->e:Lcom/nuance/dragon/toolkit/cloudservices/Transaction;

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/util/internal/a$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$2;->a:Lcom/nuance/dragon/toolkit/grammar/WordList$WordIterator;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$2;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$2;->c:Lcom/nuance/dragon/toolkit/grammar/WordList;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/grammar/WordList;->fullUpdateRequired()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$2;->a:Lcom/nuance/dragon/toolkit/grammar/WordList$WordIterator;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$2;->d:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;

    invoke-interface {v1}, Lcom/nuance/dragon/toolkit/grammar/WordList$WordIterator;->getChecksum()I

    move-result v3

    invoke-static {v2, v3}, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;->a(Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;I)I

    move-object v2, v1

    :goto_1
    if-nez v0, :cond_4

    invoke-interface {v2}, Lcom/nuance/dragon/toolkit/grammar/WordList$WordIterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-interface {v2}, Lcom/nuance/dragon/toolkit/grammar/WordList$WordIterator;->discardChanges()V

    const/4 v0, 0x0

    :goto_2
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$2;->c:Lcom/nuance/dragon/toolkit/grammar/WordList;

    invoke-virtual {v1}, Lcom/nuance/dragon/toolkit/grammar/WordList;->getFullIterator()Lcom/nuance/dragon/toolkit/grammar/WordList$WordIterator;

    move-result-object v1

    :goto_3
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$2;->d:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$2;->c:Lcom/nuance/dragon/toolkit/grammar/WordList;

    invoke-virtual {v3}, Lcom/nuance/dragon/toolkit/grammar/WordList;->getAcceptedChecksum()I

    move-result v3

    invoke-static {v2, v3}, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;->a(Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;I)I

    move-object v2, v1

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$2;->c:Lcom/nuance/dragon/toolkit/grammar/WordList;

    invoke-virtual {v1}, Lcom/nuance/dragon/toolkit/grammar/WordList;->getModifiedIterator()Lcom/nuance/dragon/toolkit/grammar/WordList$WordIterator;

    move-result-object v1

    goto :goto_3

    :cond_4
    new-instance v1, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_2
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Landroid/util/Pair;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$2;->d:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$2;->f:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;->a(Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;)Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;

    move-result-object v1

    if-ne v0, v1, :cond_0

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$2;->f:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;->a(Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;)Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;->h(Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;)Z

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$2;->e:Lcom/nuance/dragon/toolkit/cloudservices/Transaction;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/cloudservices/Transaction;->cancel()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$2;->f:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;->a(Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;)Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;

    move-result-object v1

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/nuance/dragon/toolkit/grammar/WordList$WordIterator;

    invoke-static {v1, v0}, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;->a(Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;Lcom/nuance/dragon/toolkit/grammar/WordList$WordIterator;)Lcom/nuance/dragon/toolkit/grammar/WordList$WordIterator;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$2;->f:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;->a(Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;)Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;

    move-result-object v1

    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v1, v0}, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;->b(Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;Z)Z

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$2;->f:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;->a(Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;)Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;->i(Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;)Lcom/nuance/dragon/toolkit/cloudservices/Transaction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/cloudservices/Transaction;->enable()V

    goto :goto_0
.end method
