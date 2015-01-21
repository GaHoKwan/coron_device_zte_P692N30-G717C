.class final Lcom/nuance/dragon/toolkit/elvis/a$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$ReleaseListener;

.field final synthetic b:Lcom/nuance/dragon/toolkit/elvis/a;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/elvis/a;Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$ReleaseListener;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/elvis/a$3;->b:Lcom/nuance/dragon/toolkit/elvis/a;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/elvis/a$3;->a:Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$ReleaseListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$3;->b:Lcom/nuance/dragon/toolkit/elvis/a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/elvis/a;->i(Lcom/nuance/dragon/toolkit/elvis/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$3;->b:Lcom/nuance/dragon/toolkit/elvis/a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/elvis/a;->a(Lcom/nuance/dragon/toolkit/elvis/a;)Lcom/nuance/dragon/toolkit/elvis/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/dragon/toolkit/elvis/e;->b()V

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$3;->b:Lcom/nuance/dragon/toolkit/elvis/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/elvis/a;->a(Lcom/nuance/dragon/toolkit/elvis/a;Z)Z

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$3;->b:Lcom/nuance/dragon/toolkit/elvis/a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/elvis/a;->j(Lcom/nuance/dragon/toolkit/elvis/a;)Z

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$3;->a:Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$ReleaseListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$3;->b:Lcom/nuance/dragon/toolkit/elvis/a;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/elvis/a;->a:Landroid/os/Handler;

    new-instance v1, Lcom/nuance/dragon/toolkit/elvis/a$3$1;

    invoke-direct {v1, p0}, Lcom/nuance/dragon/toolkit/elvis/a$3$1;-><init>(Lcom/nuance/dragon/toolkit/elvis/a$3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method
