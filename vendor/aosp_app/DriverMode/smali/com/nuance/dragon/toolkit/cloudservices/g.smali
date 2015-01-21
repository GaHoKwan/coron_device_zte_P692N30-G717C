.class final Lcom/nuance/dragon/toolkit/cloudservices/g;
.super Lcom/nuance/dragon/toolkit/cloudservices/f;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/cloudservices/d;Lcom/nuance/dragon/toolkit/cloudservices/Transaction;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/nuance/dragon/toolkit/cloudservices/f;-><init>(Lcom/nuance/dragon/toolkit/cloudservices/d;ZZLcom/nuance/dragon/toolkit/cloudservices/Transaction;)V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 2

    invoke-super {p0}, Lcom/nuance/dragon/toolkit/cloudservices/f;->a()V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/g;->a:Lcom/nuance/dragon/toolkit/cloudservices/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/g;->a:Lcom/nuance/dragon/toolkit/cloudservices/d;

    invoke-interface {v0}, Lcom/nuance/dragon/toolkit/cloudservices/d;->b()V

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/g;->b:Lcom/nuance/dragon/toolkit/cloudservices/Transaction;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/cloudservices/Transaction;->g()Lcom/nuance/dragon/toolkit/cloudservices/Transaction$a;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/cloudservices/g;->b:Lcom/nuance/dragon/toolkit/cloudservices/Transaction;

    invoke-interface {v0, v1}, Lcom/nuance/dragon/toolkit/cloudservices/Transaction$a;->b(Lcom/nuance/dragon/toolkit/cloudservices/Transaction;)V

    :cond_1
    return-void
.end method

.method final e()V
    .locals 1

    const-string v0, "cancel() method called in finished state"

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->warn(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
