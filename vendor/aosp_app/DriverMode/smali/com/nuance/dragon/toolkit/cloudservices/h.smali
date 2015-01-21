.class final Lcom/nuance/dragon/toolkit/cloudservices/h;
.super Lcom/nuance/dragon/toolkit/cloudservices/f;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/cloudservices/Transaction;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, v0, v1, v1, p1}, Lcom/nuance/dragon/toolkit/cloudservices/f;-><init>(Lcom/nuance/dragon/toolkit/cloudservices/d;ZZLcom/nuance/dragon/toolkit/cloudservices/Transaction;)V

    return-void
.end method


# virtual methods
.method final a(Lcom/nuance/dragon/toolkit/cloudservices/d;)V
    .locals 2

    new-instance v0, Lcom/nuance/dragon/toolkit/cloudservices/i;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/cloudservices/h;->b:Lcom/nuance/dragon/toolkit/cloudservices/Transaction;

    invoke-direct {v0, p1, v1}, Lcom/nuance/dragon/toolkit/cloudservices/i;-><init>(Lcom/nuance/dragon/toolkit/cloudservices/d;Lcom/nuance/dragon/toolkit/cloudservices/Transaction;)V

    invoke-virtual {p0, v0}, Lcom/nuance/dragon/toolkit/cloudservices/h;->a(Lcom/nuance/dragon/toolkit/cloudservices/f;)V

    return-void
.end method
