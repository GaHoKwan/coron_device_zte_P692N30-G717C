.class final Lcom/nuance/dragon/toolkit/elvis/a$b$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/nuance/dragon/toolkit/elvis/a$b;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/elvis/a$b;Z)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/elvis/a$b$4;->b:Lcom/nuance/dragon/toolkit/elvis/a$b;

    iput-boolean p2, p0, Lcom/nuance/dragon/toolkit/elvis/a$b$4;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$b$4;->b:Lcom/nuance/dragon/toolkit/elvis/a$b;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/elvis/a$b;->b(Lcom/nuance/dragon/toolkit/elvis/a$b;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$b$4;->b:Lcom/nuance/dragon/toolkit/elvis/a$b;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/elvis/a$b;->c(Lcom/nuance/dragon/toolkit/elvis/a$b;)Lcom/nuance/dragon/toolkit/elvis/a$c;

    move-result-object v0

    sget-object v3, Lcom/nuance/dragon/toolkit/elvis/a$c;->a:Lcom/nuance/dragon/toolkit/elvis/a$c;

    if-eq v0, v3, :cond_2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$b$4;->b:Lcom/nuance/dragon/toolkit/elvis/a$b;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/elvis/a$b;->c(Lcom/nuance/dragon/toolkit/elvis/a$b;)Lcom/nuance/dragon/toolkit/elvis/a$c;

    move-result-object v0

    sget-object v3, Lcom/nuance/dragon/toolkit/elvis/a$c;->c:Lcom/nuance/dragon/toolkit/elvis/a$c;

    if-ne v0, v3, :cond_8

    :cond_2
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$b$4;->b:Lcom/nuance/dragon/toolkit/elvis/a$b;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/elvis/a$b;->a:Lcom/nuance/dragon/toolkit/elvis/a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/elvis/a;->a(Lcom/nuance/dragon/toolkit/elvis/a;)Lcom/nuance/dragon/toolkit/elvis/e;

    move-result-object v0

    iget-boolean v3, p0, Lcom/nuance/dragon/toolkit/elvis/a$b$4;->a:Z

    invoke-interface {v0, v3}, Lcom/nuance/dragon/toolkit/elvis/e;->a(Z)Z

    move-result v0

    :goto_1
    iget-object v3, p0, Lcom/nuance/dragon/toolkit/elvis/a$b$4;->b:Lcom/nuance/dragon/toolkit/elvis/a$b;

    invoke-static {v3, v1}, Lcom/nuance/dragon/toolkit/elvis/a$b;->b(Lcom/nuance/dragon/toolkit/elvis/a$b;Z)Z

    iget-boolean v1, p0, Lcom/nuance/dragon/toolkit/elvis/a$b$4;->a:Z

    if-nez v1, :cond_7

    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/elvis/a$b$4;->b:Lcom/nuance/dragon/toolkit/elvis/a$b;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/elvis/a$b;->c(Lcom/nuance/dragon/toolkit/elvis/a$b;)Lcom/nuance/dragon/toolkit/elvis/a$c;

    move-result-object v1

    sget-object v3, Lcom/nuance/dragon/toolkit/elvis/a$c;->b:Lcom/nuance/dragon/toolkit/elvis/a$c;

    if-ne v1, v3, :cond_4

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/elvis/a$b$4;->b:Lcom/nuance/dragon/toolkit/elvis/a$b;

    iget-object v1, v1, Lcom/nuance/dragon/toolkit/elvis/a$b;->a:Lcom/nuance/dragon/toolkit/elvis/a;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/elvis/a;->a(Lcom/nuance/dragon/toolkit/elvis/a;)Lcom/nuance/dragon/toolkit/elvis/e;

    move-result-object v1

    invoke-interface {v1}, Lcom/nuance/dragon/toolkit/elvis/e;->h()Lcom/nuance/dragon/toolkit/elvis/ElvisResult;

    move-result-object v1

    :goto_2
    iget-object v3, p0, Lcom/nuance/dragon/toolkit/elvis/a$b$4;->b:Lcom/nuance/dragon/toolkit/elvis/a$b;

    invoke-static {v3}, Lcom/nuance/dragon/toolkit/elvis/a$b;->c(Lcom/nuance/dragon/toolkit/elvis/a$b;)Lcom/nuance/dragon/toolkit/elvis/a$c;

    move-result-object v3

    sget-object v4, Lcom/nuance/dragon/toolkit/elvis/a$c;->b:Lcom/nuance/dragon/toolkit/elvis/a$c;

    if-ne v3, v4, :cond_5

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$b$4;->b:Lcom/nuance/dragon/toolkit/elvis/a$b;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/elvis/a$b;->a:Lcom/nuance/dragon/toolkit/elvis/a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/elvis/a;->a(Lcom/nuance/dragon/toolkit/elvis/a;)Lcom/nuance/dragon/toolkit/elvis/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/dragon/toolkit/elvis/e;->g()Z

    move-result v0

    if-nez v0, :cond_3

    move-object v1, v2

    :cond_3
    :goto_3
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/elvis/a$b$4;->b:Lcom/nuance/dragon/toolkit/elvis/a$b;

    iget-object v2, v2, Lcom/nuance/dragon/toolkit/elvis/a$b;->a:Lcom/nuance/dragon/toolkit/elvis/a;

    invoke-static {v2}, Lcom/nuance/dragon/toolkit/elvis/a;->b(Lcom/nuance/dragon/toolkit/elvis/a;)V

    iget-boolean v2, p0, Lcom/nuance/dragon/toolkit/elvis/a$b$4;->a:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/elvis/a$b$4;->b:Lcom/nuance/dragon/toolkit/elvis/a$b;

    iget-object v2, v2, Lcom/nuance/dragon/toolkit/elvis/a$b;->a:Lcom/nuance/dragon/toolkit/elvis/a;

    iget-object v2, v2, Lcom/nuance/dragon/toolkit/elvis/a;->a:Landroid/os/Handler;

    new-instance v3, Lcom/nuance/dragon/toolkit/elvis/a$b$4$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/nuance/dragon/toolkit/elvis/a$b$4$1;-><init>(Lcom/nuance/dragon/toolkit/elvis/a$b$4;ZLcom/nuance/dragon/toolkit/elvis/ElvisResult;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/nuance/dragon/toolkit/elvis/a$b$4;->b:Lcom/nuance/dragon/toolkit/elvis/a$b;

    iget-object v1, v1, Lcom/nuance/dragon/toolkit/elvis/a$b;->a:Lcom/nuance/dragon/toolkit/elvis/a;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/elvis/a;->a(Lcom/nuance/dragon/toolkit/elvis/a;)Lcom/nuance/dragon/toolkit/elvis/e;

    move-result-object v1

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/elvis/a$b$4;->b:Lcom/nuance/dragon/toolkit/elvis/a$b;

    invoke-static {v3}, Lcom/nuance/dragon/toolkit/elvis/a$b;->d(Lcom/nuance/dragon/toolkit/elvis/a$b;)Lcom/nuance/dragon/toolkit/elvis/Grammar;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/nuance/dragon/toolkit/elvis/e;->a(Lcom/nuance/dragon/toolkit/elvis/Grammar;)Lcom/nuance/dragon/toolkit/elvis/ElvisResult;

    move-result-object v1

    goto :goto_2

    :cond_5
    iget-boolean v2, p0, Lcom/nuance/dragon/toolkit/elvis/a$b$4;->a:Z

    if-nez v2, :cond_6

    if-eqz v0, :cond_6

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/elvis/a$b$4;->b:Lcom/nuance/dragon/toolkit/elvis/a$b;

    invoke-static {v2}, Lcom/nuance/dragon/toolkit/elvis/a$b;->c(Lcom/nuance/dragon/toolkit/elvis/a$b;)Lcom/nuance/dragon/toolkit/elvis/a$c;

    move-result-object v2

    sget-object v3, Lcom/nuance/dragon/toolkit/elvis/a$c;->c:Lcom/nuance/dragon/toolkit/elvis/a$c;

    if-ne v2, v3, :cond_6

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$b$4;->b:Lcom/nuance/dragon/toolkit/elvis/a$b;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/elvis/a$b;->a:Lcom/nuance/dragon/toolkit/elvis/a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/elvis/a;->a(Lcom/nuance/dragon/toolkit/elvis/a;)Lcom/nuance/dragon/toolkit/elvis/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/dragon/toolkit/elvis/e;->d()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/elvis/a$b$4;->b:Lcom/nuance/dragon/toolkit/elvis/a$b;

    invoke-static {v2}, Lcom/nuance/dragon/toolkit/elvis/a$b;->e(Lcom/nuance/dragon/toolkit/elvis/a$b;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$b$4;->b:Lcom/nuance/dragon/toolkit/elvis/a$b;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/elvis/a$b;->a:Lcom/nuance/dragon/toolkit/elvis/a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/elvis/a;->a(Lcom/nuance/dragon/toolkit/elvis/a;)Lcom/nuance/dragon/toolkit/elvis/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/dragon/toolkit/elvis/e;->e()Z

    move-result v0

    :cond_6
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/elvis/a$b$4;->b:Lcom/nuance/dragon/toolkit/elvis/a$b;

    iget-object v2, v2, Lcom/nuance/dragon/toolkit/elvis/a$b;->a:Lcom/nuance/dragon/toolkit/elvis/a;

    invoke-static {v2}, Lcom/nuance/dragon/toolkit/elvis/a;->a(Lcom/nuance/dragon/toolkit/elvis/a;)Lcom/nuance/dragon/toolkit/elvis/e;

    move-result-object v2

    invoke-interface {v2}, Lcom/nuance/dragon/toolkit/elvis/e;->i()V

    goto :goto_3

    :cond_7
    move-object v1, v2

    goto/16 :goto_2

    :cond_8
    move v0, v1

    goto/16 :goto_1
.end method
