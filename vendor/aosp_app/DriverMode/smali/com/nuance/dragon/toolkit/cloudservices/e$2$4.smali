.class final Lcom/nuance/dragon/toolkit/cloudservices/e$2$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/nuance/dragon/toolkit/cloudservices/e$2;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/cloudservices/e$2;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/cloudservices/e$2$4;->c:Lcom/nuance/dragon/toolkit/cloudservices/e$2;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/cloudservices/e$2$4;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/nuance/dragon/toolkit/cloudservices/e$2$4;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/e$2$4;->c:Lcom/nuance/dragon/toolkit/cloudservices/e$2;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/cloudservices/e$2;->a:Lcom/nuance/dragon/toolkit/cloudservices/e;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/cloudservices/e;->b(Lcom/nuance/dragon/toolkit/cloudservices/e;)Lcom/nuance/dragon/toolkit/cloudservices/Transaction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/cloudservices/Transaction;->h()Lcom/nuance/dragon/toolkit/cloudservices/f;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/cloudservices/e$2$4;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/cloudservices/e$2$4;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/dragon/toolkit/cloudservices/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
