.class final Lcom/nuance/dragon/toolkit/elvis/a$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/elvis/Grammar;

.field final synthetic b:Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$SaveListener;

.field final synthetic c:Lcom/nuance/dragon/toolkit/elvis/a;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/elvis/a;Lcom/nuance/dragon/toolkit/elvis/Grammar;Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$SaveListener;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/elvis/a$4;->c:Lcom/nuance/dragon/toolkit/elvis/a;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/elvis/a$4;->a:Lcom/nuance/dragon/toolkit/elvis/Grammar;

    iput-object p3, p0, Lcom/nuance/dragon/toolkit/elvis/a$4;->b:Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$SaveListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$4;->c:Lcom/nuance/dragon/toolkit/elvis/a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/elvis/a;->a(Lcom/nuance/dragon/toolkit/elvis/a;)Lcom/nuance/dragon/toolkit/elvis/e;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/elvis/a$4;->c:Lcom/nuance/dragon/toolkit/elvis/a;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/elvis/a;->f(Lcom/nuance/dragon/toolkit/elvis/a;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/elvis/a$4;->a:Lcom/nuance/dragon/toolkit/elvis/Grammar;

    invoke-interface {v0, v1, v2}, Lcom/nuance/dragon/toolkit/elvis/e;->a(Ljava/lang/String;Lcom/nuance/dragon/toolkit/elvis/Grammar;)Z

    move-result v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/elvis/a$4;->b:Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$SaveListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/elvis/a$4;->c:Lcom/nuance/dragon/toolkit/elvis/a;

    iget-object v1, v1, Lcom/nuance/dragon/toolkit/elvis/a;->a:Landroid/os/Handler;

    new-instance v2, Lcom/nuance/dragon/toolkit/elvis/a$4$1;

    invoke-direct {v2, p0, v0}, Lcom/nuance/dragon/toolkit/elvis/a$4$1;-><init>(Lcom/nuance/dragon/toolkit/elvis/a$4;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
