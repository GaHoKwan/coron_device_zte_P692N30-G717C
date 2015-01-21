.class final Lcom/nuance/dragon/toolkit/vocon/d$b$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/nuance/dragon/toolkit/vocon/d$b;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/vocon/d$b;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/vocon/d$b$2;->b:Lcom/nuance/dragon/toolkit/vocon/d$b;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/vocon/d$b$2;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/vocon/d$b$2;->b:Lcom/nuance/dragon/toolkit/vocon/d$b;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$b$2;->b:Lcom/nuance/dragon/toolkit/vocon/d$b;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/vocon/d$b;->b(Lcom/nuance/dragon/toolkit/vocon/d$b;)Z

    move-result v0

    if-nez v0, :cond_0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-void

    :cond_0
    monitor-exit v1

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/vocon/d$b$2;->b:Lcom/nuance/dragon/toolkit/vocon/d$b;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/vocon/d$b;->a(Lcom/nuance/dragon/toolkit/vocon/d$b;)Lcom/nuance/dragon/toolkit/vocon/Grammar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/dragon/toolkit/vocon/Grammar;->getContexts()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/vocon/d$b$2;->b:Lcom/nuance/dragon/toolkit/vocon/d$b;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/vocon/d$b;->a(Lcom/nuance/dragon/toolkit/vocon/d$b;)Lcom/nuance/dragon/toolkit/vocon/Grammar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/dragon/toolkit/vocon/Grammar;->getContexts()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/vocon/VoconContext;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/vocon/VoconContext;->getFileName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/vocon/d$b$2;->b:Lcom/nuance/dragon/toolkit/vocon/d$b;

    invoke-static {v3}, Lcom/nuance/dragon/toolkit/vocon/d$b;->c(Lcom/nuance/dragon/toolkit/vocon/d$b;)Lcom/nuance/dragon/toolkit/vocon/Grammar;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/nuance/dragon/toolkit/vocon/Grammar;->getContextByName(Ljava/lang/String;)Lcom/nuance/dragon/toolkit/vocon/VoconContext;

    move-result-object v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/vocon/d$b$2;->b:Lcom/nuance/dragon/toolkit/vocon/d$b;

    invoke-static {v2}, Lcom/nuance/dragon/toolkit/vocon/d$b;->c(Lcom/nuance/dragon/toolkit/vocon/d$b;)Lcom/nuance/dragon/toolkit/vocon/Grammar;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/nuance/dragon/toolkit/vocon/Grammar;->a(Lcom/nuance/dragon/toolkit/vocon/VoconContext;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_2
    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/vocon/VoconContext;->getSlotIds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/nuance/dragon/toolkit/vocon/VoconContext;->addSlotId(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/nuance/dragon/toolkit/vocon/d$b$2;->b:Lcom/nuance/dragon/toolkit/vocon/d$b;

    iget-object v4, v4, Lcom/nuance/dragon/toolkit/vocon/d$b;->a:Lcom/nuance/dragon/toolkit/vocon/d;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "slot:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " already exists in context: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Lcom/nuance/dragon/toolkit/vocon/VoconContext;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$b$2;->b:Lcom/nuance/dragon/toolkit/vocon/d$b;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/vocon/d$b;->a:Lcom/nuance/dragon/toolkit/vocon/d;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/vocon/d;->e(Lcom/nuance/dragon/toolkit/vocon/d;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/vocon/d$b$2;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0
.end method
