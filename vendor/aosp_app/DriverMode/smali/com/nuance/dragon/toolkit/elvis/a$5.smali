.class final Lcom/nuance/dragon/toolkit/elvis/a$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/elvis/a$a;

.field final synthetic b:Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$RebuildListener;

.field final synthetic c:Lcom/nuance/dragon/toolkit/elvis/Grammar;

.field final synthetic d:Lcom/nuance/dragon/toolkit/elvis/a;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/elvis/a;Lcom/nuance/dragon/toolkit/elvis/a$a;Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$RebuildListener;Lcom/nuance/dragon/toolkit/elvis/Grammar;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/elvis/a$5;->d:Lcom/nuance/dragon/toolkit/elvis/a;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/elvis/a$5;->a:Lcom/nuance/dragon/toolkit/elvis/a$a;

    iput-object p3, p0, Lcom/nuance/dragon/toolkit/elvis/a$5;->b:Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$RebuildListener;

    iput-object p4, p0, Lcom/nuance/dragon/toolkit/elvis/a$5;->c:Lcom/nuance/dragon/toolkit/elvis/Grammar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$5;->d:Lcom/nuance/dragon/toolkit/elvis/a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/elvis/a;->i(Lcom/nuance/dragon/toolkit/elvis/a;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$5;->d:Lcom/nuance/dragon/toolkit/elvis/a;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/elvis/a;->a:Landroid/os/Handler;

    new-instance v1, Lcom/nuance/dragon/toolkit/elvis/a$5$1;

    invoke-direct {v1, p0}, Lcom/nuance/dragon/toolkit/elvis/a$5$1;-><init>(Lcom/nuance/dragon/toolkit/elvis/a$5;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$5;->d:Lcom/nuance/dragon/toolkit/elvis/a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/elvis/a;->a(Lcom/nuance/dragon/toolkit/elvis/a;)Lcom/nuance/dragon/toolkit/elvis/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/dragon/toolkit/elvis/e;->a()Z

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$5;->d:Lcom/nuance/dragon/toolkit/elvis/a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/elvis/a;->f(Lcom/nuance/dragon/toolkit/elvis/a;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/elvis/a$5;->d:Lcom/nuance/dragon/toolkit/elvis/a;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/elvis/a;->a(Lcom/nuance/dragon/toolkit/elvis/a;)Lcom/nuance/dragon/toolkit/elvis/e;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/elvis/a$5;->d:Lcom/nuance/dragon/toolkit/elvis/a;

    invoke-static {v2}, Lcom/nuance/dragon/toolkit/elvis/a;->f(Lcom/nuance/dragon/toolkit/elvis/a;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/nuance/dragon/toolkit/elvis/e;->a(Ljava/lang/String;)Lcom/nuance/dragon/toolkit/elvis/Grammar;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/elvis/a$5;->d:Lcom/nuance/dragon/toolkit/elvis/a;

    iget-object v3, v3, Lcom/nuance/dragon/toolkit/elvis/a;->a:Landroid/os/Handler;

    new-instance v4, Lcom/nuance/dragon/toolkit/elvis/a$5$2;

    invoke-direct {v4, p0, v1, v0, v2}, Lcom/nuance/dragon/toolkit/elvis/a$5$2;-><init>(Lcom/nuance/dragon/toolkit/elvis/a$5;Lcom/nuance/dragon/toolkit/elvis/Grammar;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
