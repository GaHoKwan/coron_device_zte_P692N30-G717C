.class final Lcom/nuance/dragon/toolkit/elvis/a$b$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:[S

.field final synthetic b:Lcom/nuance/dragon/toolkit/elvis/a$b;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/elvis/a$b;[S)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/elvis/a$b$5;->b:Lcom/nuance/dragon/toolkit/elvis/a$b;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/elvis/a$b$5;->a:[S

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$b$5;->b:Lcom/nuance/dragon/toolkit/elvis/a$b;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/elvis/a$b;->b(Lcom/nuance/dragon/toolkit/elvis/a$b;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$b$5;->b:Lcom/nuance/dragon/toolkit/elvis/a$b;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/elvis/a$b;->c(Lcom/nuance/dragon/toolkit/elvis/a$b;)Lcom/nuance/dragon/toolkit/elvis/a$c;

    move-result-object v0

    sget-object v1, Lcom/nuance/dragon/toolkit/elvis/a$c;->b:Lcom/nuance/dragon/toolkit/elvis/a$c;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$b$5;->b:Lcom/nuance/dragon/toolkit/elvis/a$b;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/elvis/a$b;->a:Lcom/nuance/dragon/toolkit/elvis/a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/elvis/a;->a(Lcom/nuance/dragon/toolkit/elvis/a;)Lcom/nuance/dragon/toolkit/elvis/e;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/elvis/a$b$5;->a:[S

    invoke-interface {v0, v1}, Lcom/nuance/dragon/toolkit/elvis/e;->b([S)I

    move-result v0

    :goto_1
    iget-object v3, p0, Lcom/nuance/dragon/toolkit/elvis/a$b$5;->b:Lcom/nuance/dragon/toolkit/elvis/a$b;

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    const/4 v1, 0x1

    :goto_2
    invoke-static {v3, v1}, Lcom/nuance/dragon/toolkit/elvis/a$b;->b(Lcom/nuance/dragon/toolkit/elvis/a$b;Z)Z

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/elvis/a$b$5;->b:Lcom/nuance/dragon/toolkit/elvis/a$b;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/elvis/a$b;->b(Lcom/nuance/dragon/toolkit/elvis/a$b;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/elvis/a$b$5;->b:Lcom/nuance/dragon/toolkit/elvis/a$b;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/elvis/a$b;->c(Lcom/nuance/dragon/toolkit/elvis/a$b;)Lcom/nuance/dragon/toolkit/elvis/a$c;

    move-result-object v1

    sget-object v3, Lcom/nuance/dragon/toolkit/elvis/a$c;->b:Lcom/nuance/dragon/toolkit/elvis/a$c;

    if-ne v1, v3, :cond_6

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/elvis/a$b$5;->b:Lcom/nuance/dragon/toolkit/elvis/a$b;

    iget-object v1, v1, Lcom/nuance/dragon/toolkit/elvis/a$b;->a:Lcom/nuance/dragon/toolkit/elvis/a;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/elvis/a;->a(Lcom/nuance/dragon/toolkit/elvis/a;)Lcom/nuance/dragon/toolkit/elvis/e;

    move-result-object v1

    invoke-interface {v1}, Lcom/nuance/dragon/toolkit/elvis/e;->h()Lcom/nuance/dragon/toolkit/elvis/ElvisResult;

    move-result-object v1

    :goto_3
    iget-object v3, p0, Lcom/nuance/dragon/toolkit/elvis/a$b$5;->b:Lcom/nuance/dragon/toolkit/elvis/a$b;

    invoke-static {v3}, Lcom/nuance/dragon/toolkit/elvis/a$b;->c(Lcom/nuance/dragon/toolkit/elvis/a$b;)Lcom/nuance/dragon/toolkit/elvis/a$c;

    move-result-object v3

    sget-object v4, Lcom/nuance/dragon/toolkit/elvis/a$c;->b:Lcom/nuance/dragon/toolkit/elvis/a$c;

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/elvis/a$b$5;->b:Lcom/nuance/dragon/toolkit/elvis/a$b;

    invoke-static {v3}, Lcom/nuance/dragon/toolkit/elvis/a$b;->b(Lcom/nuance/dragon/toolkit/elvis/a$b;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/elvis/a$b$5;->b:Lcom/nuance/dragon/toolkit/elvis/a$b;

    iget-object v3, v3, Lcom/nuance/dragon/toolkit/elvis/a$b;->a:Lcom/nuance/dragon/toolkit/elvis/a;

    invoke-static {v3}, Lcom/nuance/dragon/toolkit/elvis/a;->a(Lcom/nuance/dragon/toolkit/elvis/a;)Lcom/nuance/dragon/toolkit/elvis/e;

    move-result-object v3

    invoke-interface {v3}, Lcom/nuance/dragon/toolkit/elvis/e;->g()Z

    :cond_2
    iget-object v3, p0, Lcom/nuance/dragon/toolkit/elvis/a$b$5;->b:Lcom/nuance/dragon/toolkit/elvis/a$b;

    invoke-static {v3}, Lcom/nuance/dragon/toolkit/elvis/a$b;->c(Lcom/nuance/dragon/toolkit/elvis/a$b;)Lcom/nuance/dragon/toolkit/elvis/a$c;

    move-result-object v3

    sget-object v4, Lcom/nuance/dragon/toolkit/elvis/a$c;->c:Lcom/nuance/dragon/toolkit/elvis/a$c;

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/elvis/a$b$5;->b:Lcom/nuance/dragon/toolkit/elvis/a$b;

    invoke-static {v3}, Lcom/nuance/dragon/toolkit/elvis/a$b;->b(Lcom/nuance/dragon/toolkit/elvis/a$b;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/elvis/a$b$5;->b:Lcom/nuance/dragon/toolkit/elvis/a$b;

    iget-object v2, v2, Lcom/nuance/dragon/toolkit/elvis/a$b;->a:Lcom/nuance/dragon/toolkit/elvis/a;

    invoke-static {v2}, Lcom/nuance/dragon/toolkit/elvis/a;->a(Lcom/nuance/dragon/toolkit/elvis/a;)Lcom/nuance/dragon/toolkit/elvis/e;

    move-result-object v2

    invoke-interface {v2}, Lcom/nuance/dragon/toolkit/elvis/e;->d()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/elvis/a$b$5;->b:Lcom/nuance/dragon/toolkit/elvis/a$b;

    invoke-static {v3}, Lcom/nuance/dragon/toolkit/elvis/a$b;->e(Lcom/nuance/dragon/toolkit/elvis/a$b;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/elvis/a$b$5;->b:Lcom/nuance/dragon/toolkit/elvis/a$b;

    iget-object v2, v2, Lcom/nuance/dragon/toolkit/elvis/a$b;->a:Lcom/nuance/dragon/toolkit/elvis/a;

    invoke-static {v2}, Lcom/nuance/dragon/toolkit/elvis/a;->a(Lcom/nuance/dragon/toolkit/elvis/a;)Lcom/nuance/dragon/toolkit/elvis/e;

    move-result-object v2

    invoke-interface {v2}, Lcom/nuance/dragon/toolkit/elvis/e;->e()Z

    move-result v2

    :cond_3
    iget-object v3, p0, Lcom/nuance/dragon/toolkit/elvis/a$b$5;->b:Lcom/nuance/dragon/toolkit/elvis/a$b;

    iget-object v3, v3, Lcom/nuance/dragon/toolkit/elvis/a$b;->a:Lcom/nuance/dragon/toolkit/elvis/a;

    invoke-static {v3}, Lcom/nuance/dragon/toolkit/elvis/a;->b(Lcom/nuance/dragon/toolkit/elvis/a;)V

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/elvis/a$b$5;->b:Lcom/nuance/dragon/toolkit/elvis/a$b;

    iget-object v3, v3, Lcom/nuance/dragon/toolkit/elvis/a$b;->a:Lcom/nuance/dragon/toolkit/elvis/a;

    iget-object v3, v3, Lcom/nuance/dragon/toolkit/elvis/a;->a:Landroid/os/Handler;

    new-instance v4, Lcom/nuance/dragon/toolkit/elvis/a$b$5$1;

    invoke-direct {v4, p0, v0, v2, v1}, Lcom/nuance/dragon/toolkit/elvis/a$b$5$1;-><init>(Lcom/nuance/dragon/toolkit/elvis/a$b$5;IZLcom/nuance/dragon/toolkit/elvis/ElvisResult;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$b$5;->b:Lcom/nuance/dragon/toolkit/elvis/a$b;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/elvis/a$b;->a:Lcom/nuance/dragon/toolkit/elvis/a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/elvis/a;->a(Lcom/nuance/dragon/toolkit/elvis/a;)Lcom/nuance/dragon/toolkit/elvis/e;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/elvis/a$b$5;->a:[S

    invoke-interface {v0, v1}, Lcom/nuance/dragon/toolkit/elvis/e;->a([S)I

    move-result v0

    goto/16 :goto_1

    :cond_5
    move v1, v2

    goto/16 :goto_2

    :cond_6
    iget-object v1, p0, Lcom/nuance/dragon/toolkit/elvis/a$b$5;->b:Lcom/nuance/dragon/toolkit/elvis/a$b;

    iget-object v1, v1, Lcom/nuance/dragon/toolkit/elvis/a$b;->a:Lcom/nuance/dragon/toolkit/elvis/a;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/elvis/a;->a(Lcom/nuance/dragon/toolkit/elvis/a;)Lcom/nuance/dragon/toolkit/elvis/e;

    move-result-object v1

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/elvis/a$b$5;->b:Lcom/nuance/dragon/toolkit/elvis/a$b;

    invoke-static {v3}, Lcom/nuance/dragon/toolkit/elvis/a$b;->d(Lcom/nuance/dragon/toolkit/elvis/a$b;)Lcom/nuance/dragon/toolkit/elvis/Grammar;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/nuance/dragon/toolkit/elvis/e;->a(Lcom/nuance/dragon/toolkit/elvis/Grammar;)Lcom/nuance/dragon/toolkit/elvis/ElvisResult;

    move-result-object v1

    goto/16 :goto_3

    :cond_7
    const/4 v1, 0x0

    goto/16 :goto_3
.end method
