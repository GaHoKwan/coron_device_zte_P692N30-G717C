.class final Lcom/nuance/dragon/toolkit/cloudservices/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/dragon/toolkit/cloudservices/Transaction$a;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/cloudservices/a;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/cloudservices/a;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/cloudservices/a$1;->a:Lcom/nuance/dragon/toolkit/cloudservices/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nuance/dragon/toolkit/cloudservices/Transaction;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/a$1;->a:Lcom/nuance/dragon/toolkit/cloudservices/a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/cloudservices/a;->a(Lcom/nuance/dragon/toolkit/cloudservices/a;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/a$1;->a:Lcom/nuance/dragon/toolkit/cloudservices/a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/cloudservices/a;->a(Lcom/nuance/dragon/toolkit/cloudservices/a;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/a$1;->a:Lcom/nuance/dragon/toolkit/cloudservices/a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/cloudservices/a;->b(Lcom/nuance/dragon/toolkit/cloudservices/a;)V

    :cond_0
    return-void
.end method

.method public final b(Lcom/nuance/dragon/toolkit/cloudservices/Transaction;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/nuance/dragon/toolkit/cloudservices/Transaction;->a(Lcom/nuance/dragon/toolkit/cloudservices/Transaction$a;)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/a$1;->a:Lcom/nuance/dragon/toolkit/cloudservices/a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/cloudservices/a;->c(Lcom/nuance/dragon/toolkit/cloudservices/a;)Lcom/nuance/dragon/toolkit/cloudservices/Transaction;

    move-result-object v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/a$1;->a:Lcom/nuance/dragon/toolkit/cloudservices/a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/cloudservices/a;->d(Lcom/nuance/dragon/toolkit/cloudservices/a;)Lcom/nuance/dragon/toolkit/cloudservices/Transaction;

    :goto_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/a$1;->a:Lcom/nuance/dragon/toolkit/cloudservices/a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/cloudservices/a;->b(Lcom/nuance/dragon/toolkit/cloudservices/a;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/a$1;->a:Lcom/nuance/dragon/toolkit/cloudservices/a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/cloudservices/a;->a(Lcom/nuance/dragon/toolkit/cloudservices/a;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method
