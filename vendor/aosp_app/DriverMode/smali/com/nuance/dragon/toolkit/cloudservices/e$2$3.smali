.class final Lcom/nuance/dragon/toolkit/cloudservices/e$2$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nuance/a/a/a/b/c/c/i;

.field final synthetic b:Lcom/nuance/dragon/toolkit/cloudservices/e$2;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/cloudservices/e$2;Lcom/nuance/a/a/a/b/c/c/i;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/cloudservices/e$2$3;->b:Lcom/nuance/dragon/toolkit/cloudservices/e$2;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/cloudservices/e$2$3;->a:Lcom/nuance/a/a/a/b/c/c/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/e$2$3;->b:Lcom/nuance/dragon/toolkit/cloudservices/e$2;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/cloudservices/e$2;->a:Lcom/nuance/dragon/toolkit/cloudservices/e;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/cloudservices/e;->b(Lcom/nuance/dragon/toolkit/cloudservices/e;)Lcom/nuance/dragon/toolkit/cloudservices/Transaction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/cloudservices/Transaction;->h()Lcom/nuance/dragon/toolkit/cloudservices/f;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/cloudservices/e$2$3;->a:Lcom/nuance/a/a/a/b/c/c/i;

    invoke-virtual {v0, v1}, Lcom/nuance/dragon/toolkit/cloudservices/f;->a(Lcom/nuance/a/a/a/b/c/c/i;)V

    return-void
.end method
