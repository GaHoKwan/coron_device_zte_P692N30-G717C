.class final Lcom/nuance/dragon/toolkit/cloudservices/e$2$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nuance/a/a/a/b/c/c/h;

.field final synthetic b:Lcom/nuance/dragon/toolkit/cloudservices/e$2;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/cloudservices/e$2;Lcom/nuance/a/a/a/b/c/c/h;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/cloudservices/e$2$2;->b:Lcom/nuance/dragon/toolkit/cloudservices/e$2;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/cloudservices/e$2$2;->a:Lcom/nuance/a/a/a/b/c/c/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/e$2$2;->b:Lcom/nuance/dragon/toolkit/cloudservices/e$2;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/cloudservices/e$2;->a:Lcom/nuance/dragon/toolkit/cloudservices/e;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/cloudservices/e;->b(Lcom/nuance/dragon/toolkit/cloudservices/e;)Lcom/nuance/dragon/toolkit/cloudservices/Transaction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/cloudservices/Transaction;->h()Lcom/nuance/dragon/toolkit/cloudservices/f;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/cloudservices/e$2$2;->a:Lcom/nuance/a/a/a/b/c/c/h;

    invoke-interface {v1}, Lcom/nuance/a/a/a/b/c/c/h;->g()I

    move-result v1

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/cloudservices/e$2$2;->a:Lcom/nuance/a/a/a/b/c/c/h;

    invoke-interface {v2}, Lcom/nuance/a/a/a/b/c/c/h;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nuance/dragon/toolkit/cloudservices/f;->a(ILjava/lang/String;)V

    return-void
.end method
