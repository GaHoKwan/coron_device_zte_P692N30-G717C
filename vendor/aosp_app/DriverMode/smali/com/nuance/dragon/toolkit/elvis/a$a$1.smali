.class final Lcom/nuance/dragon/toolkit/elvis/a$a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Lcom/nuance/dragon/toolkit/elvis/a$a;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/elvis/a$a;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/elvis/a$a$1;->b:Lcom/nuance/dragon/toolkit/elvis/a$a;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/elvis/a$a$1;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$a$1;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/elvis/Constraint;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/elvis/Constraint;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/elvis/Constraint;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/elvis/Constraint$a;

    iget-object v4, p0, Lcom/nuance/dragon/toolkit/elvis/a$a$1;->b:Lcom/nuance/dragon/toolkit/elvis/a$a;

    iget-object v4, v4, Lcom/nuance/dragon/toolkit/elvis/a$a;->a:Lcom/nuance/dragon/toolkit/elvis/a;

    invoke-static {v4}, Lcom/nuance/dragon/toolkit/elvis/a;->a(Lcom/nuance/dragon/toolkit/elvis/a;)Lcom/nuance/dragon/toolkit/elvis/e;

    move-result-object v4

    iget-object v5, v0, Lcom/nuance/dragon/toolkit/elvis/Constraint$a;->a:Ljava/lang/String;

    iget-object v6, v0, Lcom/nuance/dragon/toolkit/elvis/Constraint$a;->b:Ljava/lang/String;

    iget v7, v0, Lcom/nuance/dragon/toolkit/elvis/Constraint$a;->c:I

    invoke-interface {v4, v2, v5, v6, v7}, Lcom/nuance/dragon/toolkit/elvis/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_1

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/elvis/a$a$1;->b:Lcom/nuance/dragon/toolkit/elvis/a$a;

    iget-object v1, v1, Lcom/nuance/dragon/toolkit/elvis/a$a;->a:Lcom/nuance/dragon/toolkit/elvis/a;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error adding transition to native Elvis: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/nuance/dragon/toolkit/elvis/Constraint$a;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/nuance/dragon/toolkit/elvis/Constraint$a;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " penalty: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v0, v0, Lcom/nuance/dragon/toolkit/elvis/Constraint$a;->c:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$a$1;->b:Lcom/nuance/dragon/toolkit/elvis/a$a;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/elvis/a$a;->a:Lcom/nuance/dragon/toolkit/elvis/a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/elvis/a;->a(Lcom/nuance/dragon/toolkit/elvis/a;)Lcom/nuance/dragon/toolkit/elvis/e;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/nuance/dragon/toolkit/elvis/e;->b(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$a$1;->b:Lcom/nuance/dragon/toolkit/elvis/a$a;

    new-instance v1, Lcom/nuance/dragon/toolkit/elvis/ElvisError;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lcom/nuance/dragon/toolkit/elvis/ElvisError;-><init>(I)V

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/elvis/a$a;->a(Lcom/nuance/dragon/toolkit/elvis/a$a;Lcom/nuance/dragon/toolkit/elvis/ElvisError;)V

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$a$1;->b:Lcom/nuance/dragon/toolkit/elvis/a$a;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/elvis/a$a;->a:Lcom/nuance/dragon/toolkit/elvis/a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/elvis/a;->a(Lcom/nuance/dragon/toolkit/elvis/a;)Lcom/nuance/dragon/toolkit/elvis/e;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/elvis/a$a$1;->b:Lcom/nuance/dragon/toolkit/elvis/a$a;

    iget-object v1, v1, Lcom/nuance/dragon/toolkit/elvis/a$a;->a:Lcom/nuance/dragon/toolkit/elvis/a;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/elvis/a;->f(Lcom/nuance/dragon/toolkit/elvis/a;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/elvis/a$a$1;->b:Lcom/nuance/dragon/toolkit/elvis/a$a;

    invoke-static {v2}, Lcom/nuance/dragon/toolkit/elvis/a$a;->a(Lcom/nuance/dragon/toolkit/elvis/a$a;)Lcom/nuance/dragon/toolkit/elvis/Grammar;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/dragon/toolkit/elvis/e;->a(Ljava/lang/String;Lcom/nuance/dragon/toolkit/elvis/Grammar;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$a$1;->b:Lcom/nuance/dragon/toolkit/elvis/a$a;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/elvis/a$a;->a:Lcom/nuance/dragon/toolkit/elvis/a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error saving Elvis state to: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/elvis/a$a$1;->b:Lcom/nuance/dragon/toolkit/elvis/a$a;

    iget-object v2, v2, Lcom/nuance/dragon/toolkit/elvis/a$a;->a:Lcom/nuance/dragon/toolkit/elvis/a;

    invoke-static {v2}, Lcom/nuance/dragon/toolkit/elvis/a;->f(Lcom/nuance/dragon/toolkit/elvis/a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$a$1;->b:Lcom/nuance/dragon/toolkit/elvis/a$a;

    new-instance v1, Lcom/nuance/dragon/toolkit/elvis/ElvisError;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Lcom/nuance/dragon/toolkit/elvis/ElvisError;-><init>(I)V

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/elvis/a$a;->a(Lcom/nuance/dragon/toolkit/elvis/a$a;Lcom/nuance/dragon/toolkit/elvis/ElvisError;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$a$1;->b:Lcom/nuance/dragon/toolkit/elvis/a$a;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/elvis/a$a;->a:Lcom/nuance/dragon/toolkit/elvis/a;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/elvis/a;->a:Landroid/os/Handler;

    new-instance v1, Lcom/nuance/dragon/toolkit/elvis/a$a$1$1;

    invoke-direct {v1, p0}, Lcom/nuance/dragon/toolkit/elvis/a$a$1$1;-><init>(Lcom/nuance/dragon/toolkit/elvis/a$a$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
