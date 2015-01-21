.class final Lcom/nuance/dragon/toolkit/cloudservices/e$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/a/a/a/b/c/c/f;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/cloudservices/e;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/cloudservices/e;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/cloudservices/e$2;->a:Lcom/nuance/dragon/toolkit/cloudservices/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nuance/a/a/a/b/c/c/h;)V
    .locals 3

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/e$2;->a:Lcom/nuance/dragon/toolkit/cloudservices/e;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[LATCHK] PDX Query Error Returned: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/nuance/a/a/a/b/c/c/h;->g()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/nuance/a/a/a/b/c/c/h;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/util/Logger;->info(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/e$2;->a:Lcom/nuance/dragon/toolkit/cloudservices/e;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/cloudservices/e;->c(Lcom/nuance/dragon/toolkit/cloudservices/e;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/nuance/dragon/toolkit/cloudservices/e$2$2;

    invoke-direct {v1, p0, p1}, Lcom/nuance/dragon/toolkit/cloudservices/e$2$2;-><init>(Lcom/nuance/dragon/toolkit/cloudservices/e$2;Lcom/nuance/a/a/a/b/c/c/h;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Lcom/nuance/a/a/a/b/c/c/i;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/e$2;->a:Lcom/nuance/dragon/toolkit/cloudservices/e;

    const-string v1, "[LATCHK] PDX Query Result Returned"

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/util/Logger;->info(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/e$2;->a:Lcom/nuance/dragon/toolkit/cloudservices/e;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/cloudservices/e;->c(Lcom/nuance/dragon/toolkit/cloudservices/e;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/nuance/dragon/toolkit/cloudservices/e$2$3;

    invoke-direct {v1, p0, p1}, Lcom/nuance/dragon/toolkit/cloudservices/e$2$3;-><init>(Lcom/nuance/dragon/toolkit/cloudservices/e$2;Lcom/nuance/a/a/a/b/c/c/i;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Lcom/nuance/a/a/a/b/c/c/j;)V
    .locals 4

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/e$2;->a:Lcom/nuance/dragon/toolkit/cloudservices/e;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[LATCHK] PDX Query Retry Returned: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/nuance/a/a/a/b/c/c/j;->h()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/nuance/a/a/a/b/c/c/j;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/util/Logger;->info(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/nuance/a/a/a/b/c/c/j;->i()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/nuance/a/a/a/b/c/c/j;->g()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/cloudservices/e$2;->a:Lcom/nuance/dragon/toolkit/cloudservices/e;

    invoke-static {v2}, Lcom/nuance/dragon/toolkit/cloudservices/e;->c(Lcom/nuance/dragon/toolkit/cloudservices/e;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/nuance/dragon/toolkit/cloudservices/e$2$4;

    invoke-direct {v3, p0, v0, v1}, Lcom/nuance/dragon/toolkit/cloudservices/e$2$4;-><init>(Lcom/nuance/dragon/toolkit/cloudservices/e$2;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(S)V
    .locals 3

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/e$2;->a:Lcom/nuance/dragon/toolkit/cloudservices/e;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[LATCHK] Command Event: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/util/Logger;->info(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/e$2;->a:Lcom/nuance/dragon/toolkit/cloudservices/e;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/cloudservices/e;->c(Lcom/nuance/dragon/toolkit/cloudservices/e;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/nuance/dragon/toolkit/cloudservices/e$2$1;

    invoke-direct {v1, p0, p1}, Lcom/nuance/dragon/toolkit/cloudservices/e$2$1;-><init>(Lcom/nuance/dragon/toolkit/cloudservices/e$2;S)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
