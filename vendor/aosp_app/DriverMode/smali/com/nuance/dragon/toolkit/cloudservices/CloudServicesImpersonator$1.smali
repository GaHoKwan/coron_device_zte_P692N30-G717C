.class final Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator$1;->a:Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator$1;->a:Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator;->a(Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator$1;->a:Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator;->b(Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator;)Z

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator$1;->a:Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator;

    sget-object v1, Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator$a;->a:Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator$a;

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator;->a(Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator;Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator$a;)Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator$a;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator$1;->a:Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator;

    sget-object v1, Lcom/nuance/dragon/toolkit/cloudservices/CloudServices$ConnectionState;->DISCONNECTED:Lcom/nuance/dragon/toolkit/cloudservices/CloudServices$ConnectionState;

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator;->a(Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator;Lcom/nuance/dragon/toolkit/cloudservices/CloudServices$ConnectionState;)Lcom/nuance/dragon/toolkit/cloudservices/CloudServices$ConnectionState;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator$1;->a:Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator;->connectionStateChanged()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator$1;->a:Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator;->c(Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator;)Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator$a;

    move-result-object v0

    sget-object v1, Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator$a;->b:Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator$a;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator$1;->a:Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator;->d(Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator;)Lcom/nuance/dragon/toolkit/cloudservices/CloudServices$ConnectionState;

    move-result-object v0

    sget-object v1, Lcom/nuance/dragon/toolkit/cloudservices/CloudServices$ConnectionState;->CONNECTED:Lcom/nuance/dragon/toolkit/cloudservices/CloudServices$ConnectionState;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator$1;->a:Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator;

    sget-object v1, Lcom/nuance/dragon/toolkit/cloudservices/CloudServices$ConnectionState;->CONNECTED:Lcom/nuance/dragon/toolkit/cloudservices/CloudServices$ConnectionState;

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator;->a(Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator;Lcom/nuance/dragon/toolkit/cloudservices/CloudServices$ConnectionState;)Lcom/nuance/dragon/toolkit/cloudservices/CloudServices$ConnectionState;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator$1;->a:Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator;

    sget-object v1, Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator$a;->a:Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator$a;

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator;->a(Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator;Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator$a;)Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator$a;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator$1;->a:Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator;->connectionStateChanged()V

    :goto_1
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator$1;->a:Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator;->f(Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator$1;->a:Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator;->e(Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator$1;->a:Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator;->c(Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator;)Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator$a;

    move-result-object v0

    sget-object v1, Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator$a;->c:Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator$a;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator$1;->a:Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator;->d(Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator;)Lcom/nuance/dragon/toolkit/cloudservices/CloudServices$ConnectionState;

    move-result-object v0

    sget-object v1, Lcom/nuance/dragon/toolkit/cloudservices/CloudServices$ConnectionState;->DISCONNECTED:Lcom/nuance/dragon/toolkit/cloudservices/CloudServices$ConnectionState;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator$1;->a:Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator;

    sget-object v1, Lcom/nuance/dragon/toolkit/cloudservices/CloudServices$ConnectionState;->DISCONNECTED:Lcom/nuance/dragon/toolkit/cloudservices/CloudServices$ConnectionState;

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator;->a(Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator;Lcom/nuance/dragon/toolkit/cloudservices/CloudServices$ConnectionState;)Lcom/nuance/dragon/toolkit/cloudservices/CloudServices$ConnectionState;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator$1;->a:Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator;

    sget-object v1, Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator$a;->a:Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator$a;

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator;->a(Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator;Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator$a;)Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator$a;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator$1;->a:Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator;->connectionStateChanged()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator$1;->a:Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator;->d(Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator;)Lcom/nuance/dragon/toolkit/cloudservices/CloudServices$ConnectionState;

    sget-object v0, Lcom/nuance/dragon/toolkit/cloudservices/CloudServices$ConnectionState;->CONNECTED:Lcom/nuance/dragon/toolkit/cloudservices/CloudServices$ConnectionState;

    goto :goto_1
.end method
