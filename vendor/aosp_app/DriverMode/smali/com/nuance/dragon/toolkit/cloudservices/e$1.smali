.class final Lcom/nuance/dragon/toolkit/cloudservices/e$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/a/a/a/b/c/c/e;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/cloudservices/e;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/cloudservices/e;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/cloudservices/e$1;->a:Lcom/nuance/dragon/toolkit/cloudservices/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/e$1;->a:Lcom/nuance/dragon/toolkit/cloudservices/e;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Command Creation Failed ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/cloudservices/e$1;->a:Lcom/nuance/dragon/toolkit/cloudservices/e;

    invoke-static {v2}, Lcom/nuance/dragon/toolkit/cloudservices/e;->a(Lcom/nuance/dragon/toolkit/cloudservices/e;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/e$1;->a:Lcom/nuance/dragon/toolkit/cloudservices/e;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/cloudservices/e;->c(Lcom/nuance/dragon/toolkit/cloudservices/e;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/nuance/dragon/toolkit/cloudservices/e$1$2;

    invoke-direct {v1, p0}, Lcom/nuance/dragon/toolkit/cloudservices/e$1$2;-><init>(Lcom/nuance/dragon/toolkit/cloudservices/e$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/e$1;->a:Lcom/nuance/dragon/toolkit/cloudservices/e;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Command Created ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/cloudservices/e$1;->a:Lcom/nuance/dragon/toolkit/cloudservices/e;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/cloudservices/e;->a(Lcom/nuance/dragon/toolkit/cloudservices/e;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] session id ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/e$1;->a:Lcom/nuance/dragon/toolkit/cloudservices/e;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/cloudservices/e;->c(Lcom/nuance/dragon/toolkit/cloudservices/e;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/nuance/dragon/toolkit/cloudservices/e$1$1;

    invoke-direct {v1, p0, p1}, Lcom/nuance/dragon/toolkit/cloudservices/e$1$1;-><init>(Lcom/nuance/dragon/toolkit/cloudservices/e$1;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
