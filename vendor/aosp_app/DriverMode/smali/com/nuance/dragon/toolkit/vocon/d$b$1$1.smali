.class final Lcom/nuance/dragon/toolkit/vocon/d$b$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/vocon/d$b$1;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/vocon/d$b$1;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/vocon/d$b$1$1;->a:Lcom/nuance/dragon/toolkit/vocon/d$b$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$b$1$1;->a:Lcom/nuance/dragon/toolkit/vocon/d$b$1;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/vocon/d$b$1;->b:Lcom/nuance/dragon/toolkit/vocon/d$b;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/vocon/d$b;->b(Lcom/nuance/dragon/toolkit/vocon/d$b;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$b$1$1;->a:Lcom/nuance/dragon/toolkit/vocon/d$b$1;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/vocon/d$b$1;->b:Lcom/nuance/dragon/toolkit/vocon/d$b;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/vocon/d$b;->e(Lcom/nuance/dragon/toolkit/vocon/d$b;)Z

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$b$1$1;->a:Lcom/nuance/dragon/toolkit/vocon/d$b$1;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/vocon/d$b$1;->b:Lcom/nuance/dragon/toolkit/vocon/d$b;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/vocon/d$b;->d(Lcom/nuance/dragon/toolkit/vocon/d$b;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/vocon/DynamicSlot$WordIterator;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/nuance/dragon/toolkit/vocon/DynamicSlot$WordIterator;->finished(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$b$1$1;->a:Lcom/nuance/dragon/toolkit/vocon/d$b$1;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/vocon/d$b$1;->b:Lcom/nuance/dragon/toolkit/vocon/d$b;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/vocon/d$b;->d(Lcom/nuance/dragon/toolkit/vocon/d$b;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$b$1$1;->a:Lcom/nuance/dragon/toolkit/vocon/d$b$1;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/vocon/d$b$1;->b:Lcom/nuance/dragon/toolkit/vocon/d$b;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/vocon/d$b;->a:Lcom/nuance/dragon/toolkit/vocon/d;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/vocon/d;->h(Lcom/nuance/dragon/toolkit/vocon/d;)Lcom/nuance/dragon/toolkit/vocon/Grammar;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/vocon/d$b$1$1;->a:Lcom/nuance/dragon/toolkit/vocon/d$b$1;

    iget-object v1, v1, Lcom/nuance/dragon/toolkit/vocon/d$b$1;->b:Lcom/nuance/dragon/toolkit/vocon/d$b;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/vocon/d$b;->c(Lcom/nuance/dragon/toolkit/vocon/d$b;)Lcom/nuance/dragon/toolkit/vocon/Grammar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/dragon/toolkit/vocon/Grammar;->getContexts()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/dragon/toolkit/vocon/Grammar;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$b$1$1;->a:Lcom/nuance/dragon/toolkit/vocon/d$b$1;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/vocon/d$b$1;->b:Lcom/nuance/dragon/toolkit/vocon/d$b;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/vocon/d$b;->a:Lcom/nuance/dragon/toolkit/vocon/d;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/vocon/d;->h(Lcom/nuance/dragon/toolkit/vocon/d;)Lcom/nuance/dragon/toolkit/vocon/Grammar;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/vocon/d$b$1$1;->a:Lcom/nuance/dragon/toolkit/vocon/d$b$1;

    iget-object v1, v1, Lcom/nuance/dragon/toolkit/vocon/d$b$1;->b:Lcom/nuance/dragon/toolkit/vocon/d$b;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/vocon/d$b;->c(Lcom/nuance/dragon/toolkit/vocon/d$b;)Lcom/nuance/dragon/toolkit/vocon/Grammar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/dragon/toolkit/vocon/Grammar;->getDynamicSlots()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/dragon/toolkit/vocon/Grammar;->b(Ljava/util/List;)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$b$1$1;->a:Lcom/nuance/dragon/toolkit/vocon/d$b$1;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/vocon/d$b$1;->b:Lcom/nuance/dragon/toolkit/vocon/d$b;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/vocon/d$b;->a:Lcom/nuance/dragon/toolkit/vocon/d;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/vocon/d;->i(Lcom/nuance/dragon/toolkit/vocon/d;)Lcom/nuance/dragon/toolkit/vocon/d$b;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/vocon/d$b$1$1;->a:Lcom/nuance/dragon/toolkit/vocon/d$b$1;

    iget-object v1, v1, Lcom/nuance/dragon/toolkit/vocon/d$b$1;->b:Lcom/nuance/dragon/toolkit/vocon/d$b;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$b$1$1;->a:Lcom/nuance/dragon/toolkit/vocon/d$b$1;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/vocon/d$b$1;->b:Lcom/nuance/dragon/toolkit/vocon/d$b;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/vocon/d$b;->a:Lcom/nuance/dragon/toolkit/vocon/d;

    invoke-static {v0, v3}, Lcom/nuance/dragon/toolkit/vocon/d;->a(Lcom/nuance/dragon/toolkit/vocon/d;Lcom/nuance/dragon/toolkit/vocon/d$b;)Lcom/nuance/dragon/toolkit/vocon/d$b;

    :cond_1
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$b$1$1;->a:Lcom/nuance/dragon/toolkit/vocon/d$b$1;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/vocon/d$b$1;->b:Lcom/nuance/dragon/toolkit/vocon/d$b;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/vocon/d$b;->f(Lcom/nuance/dragon/toolkit/vocon/d$b;)Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$RebuildListener;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/vocon/d$b$1$1;->a:Lcom/nuance/dragon/toolkit/vocon/d$b$1;

    iget-object v1, v1, Lcom/nuance/dragon/toolkit/vocon/d$b$1;->b:Lcom/nuance/dragon/toolkit/vocon/d$b;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/vocon/d$b;->a(Lcom/nuance/dragon/toolkit/vocon/d$b;)Lcom/nuance/dragon/toolkit/vocon/Grammar;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$RebuildListener;->onComplete(Lcom/nuance/dragon/toolkit/vocon/Grammar;Ljava/util/List;)V

    :cond_2
    return-void
.end method
