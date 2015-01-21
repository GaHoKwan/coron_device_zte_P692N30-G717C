.class final Lcom/nuance/dragon/toolkit/util/internal/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/util/internal/a$b;

.field final synthetic b:Landroid/os/Handler;

.field final synthetic c:Lcom/nuance/dragon/toolkit/util/internal/a;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/util/internal/a;Lcom/nuance/dragon/toolkit/util/internal/a$b;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/util/internal/a$1;->c:Lcom/nuance/dragon/toolkit/util/internal/a;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/util/internal/a$1;->a:Lcom/nuance/dragon/toolkit/util/internal/a$b;

    iput-object p3, p0, Lcom/nuance/dragon/toolkit/util/internal/a$1;->b:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/util/internal/a$1;->a:Lcom/nuance/dragon/toolkit/util/internal/a$b;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/util/internal/a$1;->b:Landroid/os/Handler;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/util/internal/a$b;->a()Ljava/lang/Object;

    move-result-object v2

    new-instance v3, Lcom/nuance/dragon/toolkit/util/internal/a$b$1;

    invoke-direct {v3, v0, v2}, Lcom/nuance/dragon/toolkit/util/internal/a$b$1;-><init>(Lcom/nuance/dragon/toolkit/util/internal/a$b;Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
