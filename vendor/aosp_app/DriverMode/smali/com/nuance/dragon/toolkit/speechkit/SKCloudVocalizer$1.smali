.class final Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/CloudVocalizer$Listener;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/CloudVocalizer;

.field final synthetic b:Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer$a;

.field final synthetic c:Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer;Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/CloudVocalizer;Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer$a;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer$1;->c:Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer$1;->a:Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/CloudVocalizer;

    iput-object p3, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer$1;->b:Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Lcom/nuance/dragon/toolkit/cloudservices/TransactionError;)V
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer$1;->c:Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer;->a(Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer;)Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/CloudVocalizer;

    move-result-object v0

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer$1;->a:Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/CloudVocalizer;

    if-eq v0, v3, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer$1;->c:Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer;->b(Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer;)Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/CloudVocalizer;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer$1;->c:Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer;->c(Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer$1;->c:Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer;

    invoke-static {v3}, Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer;->c(Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->clear()V

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer$1;->c:Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer;

    invoke-static {v3}, Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer;->d(Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer;)V

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer$1;->c:Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer;

    invoke-static {v3}, Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer;->e(Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer;)Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer$Listener;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer$1;->c:Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer;

    invoke-static {v3}, Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer;->e(Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer;)Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer$Listener;

    move-result-object v5

    iget-object v6, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer$1;->c:Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer;

    add-int/lit8 v3, v0, -0x1

    if-lez v0, :cond_2

    move v0, v1

    :goto_0
    iget-object v7, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer$1;->b:Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer$a;

    iget-object v7, v7, Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer$a;->b:Ljava/lang/Object;

    invoke-interface {v5, v6, v0, p1, v7}, Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer$Listener;->onSpeakingDone(Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer;ZLcom/nuance/dragon/toolkit/cloudservices/TransactionError;Ljava/lang/Object;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer$a;

    iget-object v4, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer$1;->c:Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer;

    invoke-static {v4}, Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer;->e(Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer;)Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer$Listener;

    move-result-object v6

    iget-object v7, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer$1;->c:Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer;

    add-int/lit8 v4, v3, -0x1

    if-lez v3, :cond_3

    move v3, v1

    :goto_2
    iget-object v0, v0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer$a;->b:Ljava/lang/Object;

    invoke-interface {v6, v7, v3, p1, v0}, Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer$Listener;->onSpeakingDone(Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer;ZLcom/nuance/dragon/toolkit/cloudservices/TransactionError;Ljava/lang/Object;)V

    move v3, v4

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v3, v2

    goto :goto_2
.end method

.method public final onSuccess()V
    .locals 0

    return-void
.end method
