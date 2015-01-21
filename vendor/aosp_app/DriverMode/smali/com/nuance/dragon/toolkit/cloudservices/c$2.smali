.class final Lcom/nuance/dragon/toolkit/cloudservices/c$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/a/a/a/b/c/a/c;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/cloudservices/c;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/cloudservices/c;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/cloudservices/c$2;->a:Lcom/nuance/dragon/toolkit/cloudservices/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/c$2;->a:Lcom/nuance/dragon/toolkit/cloudservices/c;

    const-string v1, "Shutdown completed"

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/util/Logger;->info(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/c$2;->a:Lcom/nuance/dragon/toolkit/cloudservices/c;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Connected with session ID "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/util/Logger;->info(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/c$2;->a:Lcom/nuance/dragon/toolkit/cloudservices/c;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/cloudservices/c;->a(Lcom/nuance/dragon/toolkit/cloudservices/c;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/nuance/dragon/toolkit/cloudservices/c$2$1;

    invoke-direct {v1, p0, p1}, Lcom/nuance/dragon/toolkit/cloudservices/c$2$1;-><init>(Lcom/nuance/dragon/toolkit/cloudservices/c$2;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(S)V
    .locals 3

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/c$2;->a:Lcom/nuance/dragon/toolkit/cloudservices/c;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Connection failed reasonCode ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/util/Logger;->warn(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final a([B)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/c$2;->a:Lcom/nuance/dragon/toolkit/cloudservices/c;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/cloudservices/c;->b(Lcom/nuance/dragon/toolkit/cloudservices/c;)Lcom/nuance/dragon/toolkit/cloudservices/CloudServices$CalllogDataListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/c$2;->a:Lcom/nuance/dragon/toolkit/cloudservices/c;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/cloudservices/c;->b(Lcom/nuance/dragon/toolkit/cloudservices/c;)Lcom/nuance/dragon/toolkit/cloudservices/CloudServices$CalllogDataListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/nuance/dragon/toolkit/cloudservices/CloudServices$CalllogDataListener;->callLogDataGenerated([B)V

    :cond_0
    return-void
.end method

.method public final b(S)V
    .locals 3

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/c$2;->a:Lcom/nuance/dragon/toolkit/cloudservices/c;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Disconnected reasonCode ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/util/Logger;->info(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/c$2;->a:Lcom/nuance/dragon/toolkit/cloudservices/c;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/cloudservices/c;->a(Lcom/nuance/dragon/toolkit/cloudservices/c;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/nuance/dragon/toolkit/cloudservices/c$2$2;

    invoke-direct {v1, p0}, Lcom/nuance/dragon/toolkit/cloudservices/c$2$2;-><init>(Lcom/nuance/dragon/toolkit/cloudservices/c$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
