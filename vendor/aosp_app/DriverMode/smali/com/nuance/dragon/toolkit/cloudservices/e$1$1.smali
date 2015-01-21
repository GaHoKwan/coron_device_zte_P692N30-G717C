.class final Lcom/nuance/dragon/toolkit/cloudservices/e$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/nuance/dragon/toolkit/cloudservices/e$1;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/cloudservices/e$1;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/cloudservices/e$1$1;->b:Lcom/nuance/dragon/toolkit/cloudservices/e$1;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/cloudservices/e$1$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/e$1$1;->b:Lcom/nuance/dragon/toolkit/cloudservices/e$1;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/cloudservices/e$1;->a:Lcom/nuance/dragon/toolkit/cloudservices/e;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/cloudservices/e;->b(Lcom/nuance/dragon/toolkit/cloudservices/e;)Lcom/nuance/dragon/toolkit/cloudservices/Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/cloudservices/e$1$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nuance/dragon/toolkit/cloudservices/Transaction;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/e$1$1;->b:Lcom/nuance/dragon/toolkit/cloudservices/e$1;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/cloudservices/e$1;->a:Lcom/nuance/dragon/toolkit/cloudservices/e;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/cloudservices/e;->b(Lcom/nuance/dragon/toolkit/cloudservices/e;)Lcom/nuance/dragon/toolkit/cloudservices/Transaction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/cloudservices/Transaction;->h()Lcom/nuance/dragon/toolkit/cloudservices/f;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/e$1$1;->a:Ljava/lang/String;

    return-void
.end method
