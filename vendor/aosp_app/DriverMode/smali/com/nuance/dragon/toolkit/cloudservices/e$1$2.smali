.class final Lcom/nuance/dragon/toolkit/cloudservices/e$1$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/cloudservices/e$1;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/cloudservices/e$1;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/cloudservices/e$1$2;->a:Lcom/nuance/dragon/toolkit/cloudservices/e$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/e$1$2;->a:Lcom/nuance/dragon/toolkit/cloudservices/e$1;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/cloudservices/e$1;->a:Lcom/nuance/dragon/toolkit/cloudservices/e;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/cloudservices/e;->b(Lcom/nuance/dragon/toolkit/cloudservices/e;)Lcom/nuance/dragon/toolkit/cloudservices/Transaction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/cloudservices/Transaction;->h()Lcom/nuance/dragon/toolkit/cloudservices/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/cloudservices/f;->g()V

    return-void
.end method
