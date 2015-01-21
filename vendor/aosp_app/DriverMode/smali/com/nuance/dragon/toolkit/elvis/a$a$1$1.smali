.class final Lcom/nuance/dragon/toolkit/elvis/a$a$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/elvis/a$a$1;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/elvis/a$a$1;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/elvis/a$a$1$1;->a:Lcom/nuance/dragon/toolkit/elvis/a$a$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$a$1$1;->a:Lcom/nuance/dragon/toolkit/elvis/a$a$1;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/elvis/a$a$1;->b:Lcom/nuance/dragon/toolkit/elvis/a$a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/elvis/a$a;->b(Lcom/nuance/dragon/toolkit/elvis/a$a;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$a$1$1;->a:Lcom/nuance/dragon/toolkit/elvis/a$a$1;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/elvis/a$a$1;->b:Lcom/nuance/dragon/toolkit/elvis/a$a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/elvis/a$a;->c(Lcom/nuance/dragon/toolkit/elvis/a$a;)Z

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$a$1$1;->a:Lcom/nuance/dragon/toolkit/elvis/a$a$1;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/elvis/a$a$1;->b:Lcom/nuance/dragon/toolkit/elvis/a$a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/elvis/a$a;->d(Lcom/nuance/dragon/toolkit/elvis/a$a;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/elvis/WordSlot$WordIterator;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/nuance/dragon/toolkit/elvis/WordSlot$WordIterator;->finished(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$a$1$1;->a:Lcom/nuance/dragon/toolkit/elvis/a$a$1;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/elvis/a$a$1;->b:Lcom/nuance/dragon/toolkit/elvis/a$a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/elvis/a$a;->d(Lcom/nuance/dragon/toolkit/elvis/a$a;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$a$1$1;->a:Lcom/nuance/dragon/toolkit/elvis/a$a$1;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/elvis/a$a$1;->b:Lcom/nuance/dragon/toolkit/elvis/a$a;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/elvis/a$a;->a:Lcom/nuance/dragon/toolkit/elvis/a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/elvis/a;->g(Lcom/nuance/dragon/toolkit/elvis/a;)Lcom/nuance/dragon/toolkit/elvis/Grammar;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/elvis/a$a$1$1;->a:Lcom/nuance/dragon/toolkit/elvis/a$a$1;

    iget-object v1, v1, Lcom/nuance/dragon/toolkit/elvis/a$a$1;->b:Lcom/nuance/dragon/toolkit/elvis/a$a;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/elvis/a$a;->a(Lcom/nuance/dragon/toolkit/elvis/a$a;)Lcom/nuance/dragon/toolkit/elvis/Grammar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/dragon/toolkit/elvis/Grammar;->getConstraints()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/dragon/toolkit/elvis/Grammar;->b(Ljava/util/List;)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$a$1$1;->a:Lcom/nuance/dragon/toolkit/elvis/a$a$1;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/elvis/a$a$1;->b:Lcom/nuance/dragon/toolkit/elvis/a$a;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/elvis/a$a;->a:Lcom/nuance/dragon/toolkit/elvis/a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/elvis/a;->g(Lcom/nuance/dragon/toolkit/elvis/a;)Lcom/nuance/dragon/toolkit/elvis/Grammar;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/elvis/a$a$1$1;->a:Lcom/nuance/dragon/toolkit/elvis/a$a$1;

    iget-object v1, v1, Lcom/nuance/dragon/toolkit/elvis/a$a$1;->b:Lcom/nuance/dragon/toolkit/elvis/a$a;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/elvis/a$a;->a(Lcom/nuance/dragon/toolkit/elvis/a$a;)Lcom/nuance/dragon/toolkit/elvis/Grammar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/dragon/toolkit/elvis/Grammar;->getSlots()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/dragon/toolkit/elvis/Grammar;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$a$1$1;->a:Lcom/nuance/dragon/toolkit/elvis/a$a$1;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/elvis/a$a$1;->b:Lcom/nuance/dragon/toolkit/elvis/a$a;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/elvis/a$a;->a:Lcom/nuance/dragon/toolkit/elvis/a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/elvis/a;->h(Lcom/nuance/dragon/toolkit/elvis/a;)Lcom/nuance/dragon/toolkit/elvis/a$a;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/elvis/a$a$1$1;->a:Lcom/nuance/dragon/toolkit/elvis/a$a$1;

    iget-object v1, v1, Lcom/nuance/dragon/toolkit/elvis/a$a$1;->b:Lcom/nuance/dragon/toolkit/elvis/a$a;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$a$1$1;->a:Lcom/nuance/dragon/toolkit/elvis/a$a$1;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/elvis/a$a$1;->b:Lcom/nuance/dragon/toolkit/elvis/a$a;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/elvis/a$a;->a:Lcom/nuance/dragon/toolkit/elvis/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/elvis/a;->a(Lcom/nuance/dragon/toolkit/elvis/a;Lcom/nuance/dragon/toolkit/elvis/a$a;)Lcom/nuance/dragon/toolkit/elvis/a$a;

    :cond_1
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$a$1$1;->a:Lcom/nuance/dragon/toolkit/elvis/a$a$1;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/elvis/a$a$1;->b:Lcom/nuance/dragon/toolkit/elvis/a$a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/elvis/a$a;->g(Lcom/nuance/dragon/toolkit/elvis/a$a;)Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$RebuildListener;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/elvis/a$a$1$1;->a:Lcom/nuance/dragon/toolkit/elvis/a$a$1;

    iget-object v1, v1, Lcom/nuance/dragon/toolkit/elvis/a$a$1;->b:Lcom/nuance/dragon/toolkit/elvis/a$a;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/elvis/a$a;->e(Lcom/nuance/dragon/toolkit/elvis/a$a;)Lcom/nuance/dragon/toolkit/elvis/Grammar;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/elvis/a$a$1$1;->a:Lcom/nuance/dragon/toolkit/elvis/a$a$1;

    iget-object v2, v2, Lcom/nuance/dragon/toolkit/elvis/a$a$1;->b:Lcom/nuance/dragon/toolkit/elvis/a$a;

    invoke-static {v2}, Lcom/nuance/dragon/toolkit/elvis/a$a;->f(Lcom/nuance/dragon/toolkit/elvis/a$a;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$RebuildListener;->onComplete(Lcom/nuance/dragon/toolkit/elvis/Grammar;Ljava/util/List;)V

    :cond_2
    return-void
.end method
