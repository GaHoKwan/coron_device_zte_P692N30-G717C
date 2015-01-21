.class final Lcom/nuance/dragon/toolkit/elvis/a$a$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/elvis/ElvisError;

.field final synthetic b:Lcom/nuance/dragon/toolkit/elvis/a$a;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/elvis/a$a;Lcom/nuance/dragon/toolkit/elvis/ElvisError;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/elvis/a$a$4;->b:Lcom/nuance/dragon/toolkit/elvis/a$a;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/elvis/a$a$4;->a:Lcom/nuance/dragon/toolkit/elvis/ElvisError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$a$4;->b:Lcom/nuance/dragon/toolkit/elvis/a$a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/elvis/a$a;->b(Lcom/nuance/dragon/toolkit/elvis/a$a;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$a$4;->b:Lcom/nuance/dragon/toolkit/elvis/a$a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/elvis/a$a;->c(Lcom/nuance/dragon/toolkit/elvis/a$a;)Z

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$a$4;->b:Lcom/nuance/dragon/toolkit/elvis/a$a;

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

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/nuance/dragon/toolkit/elvis/WordSlot$WordIterator;->finished(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$a$4;->b:Lcom/nuance/dragon/toolkit/elvis/a$a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/elvis/a$a;->d(Lcom/nuance/dragon/toolkit/elvis/a$a;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$a$4;->b:Lcom/nuance/dragon/toolkit/elvis/a$a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/elvis/a$a;->g(Lcom/nuance/dragon/toolkit/elvis/a$a;)Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$RebuildListener;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/elvis/a$a$4;->a:Lcom/nuance/dragon/toolkit/elvis/ElvisError;

    invoke-interface {v0, v1}, Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$RebuildListener;->onError(Lcom/nuance/dragon/toolkit/elvis/ElvisError;)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$a$4;->b:Lcom/nuance/dragon/toolkit/elvis/a$a;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/elvis/a$a;->a:Lcom/nuance/dragon/toolkit/elvis/a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/elvis/a;->h(Lcom/nuance/dragon/toolkit/elvis/a;)Lcom/nuance/dragon/toolkit/elvis/a$a;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/elvis/a$a$4;->b:Lcom/nuance/dragon/toolkit/elvis/a$a;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$a$4;->b:Lcom/nuance/dragon/toolkit/elvis/a$a;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/elvis/a$a;->a:Lcom/nuance/dragon/toolkit/elvis/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/elvis/a;->a(Lcom/nuance/dragon/toolkit/elvis/a;Lcom/nuance/dragon/toolkit/elvis/a$a;)Lcom/nuance/dragon/toolkit/elvis/a$a;

    :cond_1
    return-void
.end method
