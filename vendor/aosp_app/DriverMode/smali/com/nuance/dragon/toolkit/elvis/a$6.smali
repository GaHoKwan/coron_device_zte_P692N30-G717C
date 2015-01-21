.class final Lcom/nuance/dragon/toolkit/elvis/a$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$RebuildListener;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/nuance/dragon/toolkit/elvis/a;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/elvis/a;Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$RebuildListener;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/elvis/a$6;->c:Lcom/nuance/dragon/toolkit/elvis/a;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/elvis/a$6;->a:Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$RebuildListener;

    iput-object p3, p0, Lcom/nuance/dragon/toolkit/elvis/a$6;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$6;->c:Lcom/nuance/dragon/toolkit/elvis/a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/elvis/a;->i(Lcom/nuance/dragon/toolkit/elvis/a;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$6;->c:Lcom/nuance/dragon/toolkit/elvis/a;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/elvis/a;->a:Landroid/os/Handler;

    new-instance v1, Lcom/nuance/dragon/toolkit/elvis/a$6$1;

    invoke-direct {v1, p0}, Lcom/nuance/dragon/toolkit/elvis/a$6$1;-><init>(Lcom/nuance/dragon/toolkit/elvis/a$6;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$6;->c:Lcom/nuance/dragon/toolkit/elvis/a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/elvis/a;->a(Lcom/nuance/dragon/toolkit/elvis/a;)Lcom/nuance/dragon/toolkit/elvis/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/dragon/toolkit/elvis/e;->c()Z

    move-result v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/elvis/a$6;->c:Lcom/nuance/dragon/toolkit/elvis/a;

    iget-object v1, v1, Lcom/nuance/dragon/toolkit/elvis/a;->a:Landroid/os/Handler;

    new-instance v2, Lcom/nuance/dragon/toolkit/elvis/a$6$2;

    invoke-direct {v2, p0, v0}, Lcom/nuance/dragon/toolkit/elvis/a$6$2;-><init>(Lcom/nuance/dragon/toolkit/elvis/a$6;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
