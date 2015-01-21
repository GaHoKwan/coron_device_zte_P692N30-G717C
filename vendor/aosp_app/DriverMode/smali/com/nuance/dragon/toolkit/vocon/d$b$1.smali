.class final Lcom/nuance/dragon/toolkit/vocon/d$b$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/nuance/dragon/toolkit/vocon/d$b;

.field private c:Ljava/util/Iterator;

.field private d:Lcom/nuance/dragon/toolkit/vocon/DynamicSlot$WordIterator;

.field private e:Ljava/lang/String;

.field private f:Z


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/vocon/d$b;Z)V
    .locals 2

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/vocon/d$b$1;->b:Lcom/nuance/dragon/toolkit/vocon/d$b;

    iput-boolean p2, p0, Lcom/nuance/dragon/toolkit/vocon/d$b$1;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/vocon/d$b$1;->b:Lcom/nuance/dragon/toolkit/vocon/d$b;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/vocon/d$b;->a(Lcom/nuance/dragon/toolkit/vocon/d$b;)Lcom/nuance/dragon/toolkit/vocon/Grammar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/dragon/toolkit/vocon/Grammar;->getDynamicSlots()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/vocon/d$b$1;->b:Lcom/nuance/dragon/toolkit/vocon/d$b;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/vocon/d$b;->a(Lcom/nuance/dragon/toolkit/vocon/d$b;)Lcom/nuance/dragon/toolkit/vocon/Grammar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/dragon/toolkit/vocon/Grammar;->getDynamicSlots()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$b$1;->c:Ljava/util/Iterator;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$b$1;->f:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/vocon/d$b$1;->b:Lcom/nuance/dragon/toolkit/vocon/d$b;

    monitor-enter v3

    :try_start_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$b$1;->b:Lcom/nuance/dragon/toolkit/vocon/d$b;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/vocon/d$b;->b(Lcom/nuance/dragon/toolkit/vocon/d$b;)Z

    move-result v0

    if-nez v0, :cond_0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-void

    :cond_0
    monitor-exit v3

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$b$1;->b:Lcom/nuance/dragon/toolkit/vocon/d$b;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/vocon/d$b;->a:Lcom/nuance/dragon/toolkit/vocon/d;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/vocon/d;->f(Lcom/nuance/dragon/toolkit/vocon/d;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$b$1;->b:Lcom/nuance/dragon/toolkit/vocon/d$b;

    new-instance v1, Lcom/nuance/dragon/toolkit/vocon/VoconError;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Lcom/nuance/dragon/toolkit/vocon/VoconError;-><init>(I)V

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/vocon/d$b;->a(Lcom/nuance/dragon/toolkit/vocon/d$b;Lcom/nuance/dragon/toolkit/vocon/VoconError;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$b$1;->b:Lcom/nuance/dragon/toolkit/vocon/d$b;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/vocon/d$b;->a(Lcom/nuance/dragon/toolkit/vocon/d$b;)Lcom/nuance/dragon/toolkit/vocon/Grammar;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$b$1;->b:Lcom/nuance/dragon/toolkit/vocon/d$b;

    new-instance v1, Lcom/nuance/dragon/toolkit/vocon/VoconError;

    const/16 v2, 0x9

    invoke-direct {v1, v2}, Lcom/nuance/dragon/toolkit/vocon/VoconError;-><init>(I)V

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/vocon/d$b;->a(Lcom/nuance/dragon/toolkit/vocon/d$b;Lcom/nuance/dragon/toolkit/vocon/VoconError;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$b$1;->d:Lcom/nuance/dragon/toolkit/vocon/DynamicSlot$WordIterator;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$b$1;->d:Lcom/nuance/dragon/toolkit/vocon/DynamicSlot$WordIterator;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/vocon/DynamicSlot$WordIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_f

    :cond_3
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$b$1;->e:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$b$1;->f:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$b$1;->b:Lcom/nuance/dragon/toolkit/vocon/d$b;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/vocon/d$b;->a:Lcom/nuance/dragon/toolkit/vocon/d;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/vocon/d;->a(Lcom/nuance/dragon/toolkit/vocon/d;)Lcom/nuance/dragon/toolkit/vocon/NativeVocon;

    move-result-object v0

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/vocon/d$b$1;->e:Ljava/lang/String;

    invoke-interface {v0, v3}, Lcom/nuance/dragon/toolkit/vocon/NativeVocon;->f(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$b$1;->b:Lcom/nuance/dragon/toolkit/vocon/d$b;

    new-instance v1, Lcom/nuance/dragon/toolkit/vocon/VoconError;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Lcom/nuance/dragon/toolkit/vocon/VoconError;-><init>(I)V

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/vocon/d$b;->a(Lcom/nuance/dragon/toolkit/vocon/d$b;Lcom/nuance/dragon/toolkit/vocon/VoconError;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$b$1;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    iput-boolean v2, p0, Lcom/nuance/dragon/toolkit/vocon/d$b$1;->f:Z

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$b$1;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/vocon/DynamicSlot;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/vocon/DynamicSlot;->getId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/nuance/dragon/toolkit/vocon/d$b$1;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/vocon/d$b$1;->b:Lcom/nuance/dragon/toolkit/vocon/d$b;

    invoke-static {v3}, Lcom/nuance/dragon/toolkit/vocon/d$b;->c(Lcom/nuance/dragon/toolkit/vocon/d$b;)Lcom/nuance/dragon/toolkit/vocon/Grammar;

    move-result-object v3

    iget-object v4, p0, Lcom/nuance/dragon/toolkit/vocon/d$b$1;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/nuance/dragon/toolkit/vocon/Grammar;->getDynamicSlotByName(Ljava/lang/String;)Lcom/nuance/dragon/toolkit/vocon/DynamicSlot;

    move-result-object v3

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/vocon/DynamicSlot;->hasWordList()Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/vocon/d$b$1;->b:Lcom/nuance/dragon/toolkit/vocon/d$b;

    iget-object v1, v1, Lcom/nuance/dragon/toolkit/vocon/d$b;->a:Lcom/nuance/dragon/toolkit/vocon/d;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DynamicSlot "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/vocon/DynamicSlot;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " requires an attached wordlist."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$b$1;->b:Lcom/nuance/dragon/toolkit/vocon/d$b;

    new-instance v1, Lcom/nuance/dragon/toolkit/vocon/VoconError;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Lcom/nuance/dragon/toolkit/vocon/VoconError;-><init>(I)V

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/vocon/d$b;->a(Lcom/nuance/dragon/toolkit/vocon/d$b;Lcom/nuance/dragon/toolkit/vocon/VoconError;)V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/vocon/DynamicSlot;->getRebuildType()I

    move-result v4

    if-eqz v3, :cond_6

    if-nez v4, :cond_7

    :cond_6
    iget-object v3, p0, Lcom/nuance/dragon/toolkit/vocon/d$b$1;->b:Lcom/nuance/dragon/toolkit/vocon/d$b;

    invoke-static {v3}, Lcom/nuance/dragon/toolkit/vocon/d$b;->c(Lcom/nuance/dragon/toolkit/vocon/d$b;)Lcom/nuance/dragon/toolkit/vocon/Grammar;

    move-result-object v3

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/vocon/DynamicSlot;->copy()Lcom/nuance/dragon/toolkit/vocon/DynamicSlot;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/nuance/dragon/toolkit/vocon/Grammar;->a(Lcom/nuance/dragon/toolkit/vocon/DynamicSlot;)V

    :cond_7
    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/vocon/DynamicSlot;->getId()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/nuance/dragon/toolkit/vocon/d$b$1;->b:Lcom/nuance/dragon/toolkit/vocon/d$b;

    iget-object v5, v5, Lcom/nuance/dragon/toolkit/vocon/d$b;->a:Lcom/nuance/dragon/toolkit/vocon/d;

    invoke-static {v5}, Lcom/nuance/dragon/toolkit/vocon/d;->a(Lcom/nuance/dragon/toolkit/vocon/d;)Lcom/nuance/dragon/toolkit/vocon/NativeVocon;

    move-result-object v5

    invoke-interface {v5, v3}, Lcom/nuance/dragon/toolkit/vocon/NativeVocon;->c(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_a

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/vocon/d$b$1;->b:Lcom/nuance/dragon/toolkit/vocon/d$b;

    iget-object v2, v2, Lcom/nuance/dragon/toolkit/vocon/d$b;->a:Lcom/nuance/dragon/toolkit/vocon/d;

    invoke-static {v2}, Lcom/nuance/dragon/toolkit/vocon/d;->a(Lcom/nuance/dragon/toolkit/vocon/d;)Lcom/nuance/dragon/toolkit/vocon/NativeVocon;

    move-result-object v2

    invoke-interface {v2, v3}, Lcom/nuance/dragon/toolkit/vocon/NativeVocon;->d(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$b$1;->b:Lcom/nuance/dragon/toolkit/vocon/d$b;

    new-instance v1, Lcom/nuance/dragon/toolkit/vocon/VoconError;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Lcom/nuance/dragon/toolkit/vocon/VoconError;-><init>(I)V

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/vocon/d$b;->a(Lcom/nuance/dragon/toolkit/vocon/d$b;Lcom/nuance/dragon/toolkit/vocon/VoconError;)V

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v0, v1}, Lcom/nuance/dragon/toolkit/vocon/DynamicSlot;->getWords(Z)Lcom/nuance/dragon/toolkit/vocon/DynamicSlot$WordIterator;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$b$1;->d:Lcom/nuance/dragon/toolkit/vocon/DynamicSlot$WordIterator;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$b$1;->b:Lcom/nuance/dragon/toolkit/vocon/d$b;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/vocon/d$b;->d(Lcom/nuance/dragon/toolkit/vocon/d$b;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/vocon/d$b$1;->d:Lcom/nuance/dragon/toolkit/vocon/DynamicSlot$WordIterator;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-boolean v1, p0, Lcom/nuance/dragon/toolkit/vocon/d$b$1;->f:Z

    :cond_9
    :goto_1
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$b$1;->b:Lcom/nuance/dragon/toolkit/vocon/d$b;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/vocon/d$b;->a:Lcom/nuance/dragon/toolkit/vocon/d;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/vocon/d;->e(Lcom/nuance/dragon/toolkit/vocon/d;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_a
    iget-boolean v3, p0, Lcom/nuance/dragon/toolkit/vocon/d$b$1;->a:Z

    if-nez v3, :cond_b

    if-nez v4, :cond_c

    :cond_b
    invoke-virtual {v0, v1}, Lcom/nuance/dragon/toolkit/vocon/DynamicSlot;->getWords(Z)Lcom/nuance/dragon/toolkit/vocon/DynamicSlot$WordIterator;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$b$1;->d:Lcom/nuance/dragon/toolkit/vocon/DynamicSlot$WordIterator;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$b$1;->b:Lcom/nuance/dragon/toolkit/vocon/d$b;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/vocon/d$b;->d(Lcom/nuance/dragon/toolkit/vocon/d$b;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/vocon/d$b$1;->d:Lcom/nuance/dragon/toolkit/vocon/DynamicSlot$WordIterator;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_c
    if-ne v4, v1, :cond_9

    invoke-virtual {v0, v2}, Lcom/nuance/dragon/toolkit/vocon/DynamicSlot;->getWords(Z)Lcom/nuance/dragon/toolkit/vocon/DynamicSlot$WordIterator;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$b$1;->d:Lcom/nuance/dragon/toolkit/vocon/DynamicSlot$WordIterator;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$b$1;->b:Lcom/nuance/dragon/toolkit/vocon/d$b;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/vocon/d$b;->d(Lcom/nuance/dragon/toolkit/vocon/d$b;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/vocon/d$b$1;->d:Lcom/nuance/dragon/toolkit/vocon/DynamicSlot$WordIterator;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_d
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$b$1;->b:Lcom/nuance/dragon/toolkit/vocon/d$b;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/vocon/d$b;->a:Lcom/nuance/dragon/toolkit/vocon/d;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/vocon/d;->a(Lcom/nuance/dragon/toolkit/vocon/d;)Lcom/nuance/dragon/toolkit/vocon/NativeVocon;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/vocon/d$b$1;->b:Lcom/nuance/dragon/toolkit/vocon/d$b;

    iget-object v1, v1, Lcom/nuance/dragon/toolkit/vocon/d$b;->a:Lcom/nuance/dragon/toolkit/vocon/d;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/vocon/d;->g(Lcom/nuance/dragon/toolkit/vocon/d;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/vocon/d$b$1;->b:Lcom/nuance/dragon/toolkit/vocon/d$b;

    invoke-static {v2}, Lcom/nuance/dragon/toolkit/vocon/d$b;->c(Lcom/nuance/dragon/toolkit/vocon/d$b;)Lcom/nuance/dragon/toolkit/vocon/Grammar;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/dragon/toolkit/vocon/NativeVocon;->a(Ljava/lang/String;Lcom/nuance/dragon/toolkit/vocon/Grammar;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$b$1;->b:Lcom/nuance/dragon/toolkit/vocon/d$b;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/vocon/d$b;->a:Lcom/nuance/dragon/toolkit/vocon/d;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error saving Vocon state to: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/vocon/d$b$1;->b:Lcom/nuance/dragon/toolkit/vocon/d$b;

    iget-object v2, v2, Lcom/nuance/dragon/toolkit/vocon/d$b;->a:Lcom/nuance/dragon/toolkit/vocon/d;

    invoke-static {v2}, Lcom/nuance/dragon/toolkit/vocon/d;->g(Lcom/nuance/dragon/toolkit/vocon/d;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$b$1;->b:Lcom/nuance/dragon/toolkit/vocon/d$b;

    new-instance v1, Lcom/nuance/dragon/toolkit/vocon/VoconError;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Lcom/nuance/dragon/toolkit/vocon/VoconError;-><init>(I)V

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/vocon/d$b;->a(Lcom/nuance/dragon/toolkit/vocon/d$b;Lcom/nuance/dragon/toolkit/vocon/VoconError;)V

    goto/16 :goto_0

    :cond_e
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$b$1;->b:Lcom/nuance/dragon/toolkit/vocon/d$b;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/vocon/d$b;->a:Lcom/nuance/dragon/toolkit/vocon/d;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/vocon/d;->b(Lcom/nuance/dragon/toolkit/vocon/d;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/nuance/dragon/toolkit/vocon/d$b$1$1;

    invoke-direct {v1, p0}, Lcom/nuance/dragon/toolkit/vocon/d$b$1$1;-><init>(Lcom/nuance/dragon/toolkit/vocon/d$b$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_f
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$b$1;->b:Lcom/nuance/dragon/toolkit/vocon/d$b;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/vocon/d$b;->c(Lcom/nuance/dragon/toolkit/vocon/d$b;)Lcom/nuance/dragon/toolkit/vocon/Grammar;

    move-result-object v0

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/vocon/d$b$1;->e:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/nuance/dragon/toolkit/vocon/Grammar;->getDynamicSlotByName(Ljava/lang/String;)Lcom/nuance/dragon/toolkit/vocon/DynamicSlot;

    move-result-object v3

    :goto_2
    const/16 v0, 0x64

    if-ge v2, v0, :cond_13

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$b$1;->d:Lcom/nuance/dragon/toolkit/vocon/DynamicSlot$WordIterator;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/vocon/DynamicSlot$WordIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$b$1;->d:Lcom/nuance/dragon/toolkit/vocon/DynamicSlot$WordIterator;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/vocon/DynamicSlot$WordIterator;->getNext()Lcom/nuance/dragon/toolkit/grammar/WordAction;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/dragon/toolkit/grammar/WordAction;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {v4}, Lcom/nuance/dragon/toolkit/grammar/WordAction;->getWord()Lcom/nuance/dragon/toolkit/grammar/Word;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/grammar/Word;->getSurfaceForm()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_15

    iget-object v5, p0, Lcom/nuance/dragon/toolkit/vocon/d$b$1;->b:Lcom/nuance/dragon/toolkit/vocon/d$b;

    iget-object v5, v5, Lcom/nuance/dragon/toolkit/vocon/d$b;->a:Lcom/nuance/dragon/toolkit/vocon/d;

    invoke-static {v5}, Lcom/nuance/dragon/toolkit/vocon/d;->a(Lcom/nuance/dragon/toolkit/vocon/d;)Lcom/nuance/dragon/toolkit/vocon/NativeVocon;

    move-result-object v5

    iget-object v6, p0, Lcom/nuance/dragon/toolkit/vocon/d$b$1;->e:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/grammar/Word;->getUserId()I

    move-result v0

    invoke-virtual {v3}, Lcom/nuance/dragon/toolkit/vocon/DynamicSlot;->getDomain()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v0, v4, v7}, Lcom/nuance/dragon/toolkit/vocon/NativeVocon;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    :goto_3
    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$b$1;->b:Lcom/nuance/dragon/toolkit/vocon/d$b;

    new-instance v1, Lcom/nuance/dragon/toolkit/vocon/VoconError;

    const/16 v2, 0xb

    invoke-direct {v1, v2}, Lcom/nuance/dragon/toolkit/vocon/VoconError;-><init>(I)V

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/vocon/d$b;->a(Lcom/nuance/dragon/toolkit/vocon/d$b;Lcom/nuance/dragon/toolkit/vocon/VoconError;)V

    goto/16 :goto_0

    :cond_10
    iput-boolean v1, p0, Lcom/nuance/dragon/toolkit/vocon/d$b$1;->f:Z

    :goto_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_11
    invoke-virtual {v4}, Lcom/nuance/dragon/toolkit/grammar/WordAction;->getWord()Lcom/nuance/dragon/toolkit/grammar/Word;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/grammar/Word;->getSurfaceForm()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_14

    iget-object v6, p0, Lcom/nuance/dragon/toolkit/vocon/d$b$1;->b:Lcom/nuance/dragon/toolkit/vocon/d$b;

    iget-object v6, v6, Lcom/nuance/dragon/toolkit/vocon/d$b;->a:Lcom/nuance/dragon/toolkit/vocon/d;

    invoke-static {v6}, Lcom/nuance/dragon/toolkit/vocon/d;->a(Lcom/nuance/dragon/toolkit/vocon/d;)Lcom/nuance/dragon/toolkit/vocon/NativeVocon;

    move-result-object v6

    iget-object v7, p0, Lcom/nuance/dragon/toolkit/vocon/d$b$1;->e:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/grammar/Word;->getUserId()I

    move-result v0

    invoke-interface {v6, v7, v0, v5}, Lcom/nuance/dragon/toolkit/vocon/NativeVocon;->a(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    :goto_5
    if-nez v0, :cond_12

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed removing word class member: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/nuance/dragon/toolkit/grammar/WordAction;->getWord()Lcom/nuance/dragon/toolkit/grammar/Word;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/dragon/toolkit/grammar/Word;->getSurfaceForm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$b$1;->b:Lcom/nuance/dragon/toolkit/vocon/d$b;

    new-instance v1, Lcom/nuance/dragon/toolkit/vocon/VoconError;

    const/16 v2, 0xc

    invoke-direct {v1, v2}, Lcom/nuance/dragon/toolkit/vocon/VoconError;-><init>(I)V

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/vocon/d$b;->a(Lcom/nuance/dragon/toolkit/vocon/d$b;Lcom/nuance/dragon/toolkit/vocon/VoconError;)V

    goto/16 :goto_0

    :cond_12
    iput-boolean v1, p0, Lcom/nuance/dragon/toolkit/vocon/d$b$1;->f:Z

    goto :goto_4

    :cond_13
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$b$1;->b:Lcom/nuance/dragon/toolkit/vocon/d$b;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/vocon/d$b;->a:Lcom/nuance/dragon/toolkit/vocon/d;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/vocon/d;->e(Lcom/nuance/dragon/toolkit/vocon/d;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_14
    move v0, v1

    goto :goto_5

    :cond_15
    move v0, v1

    goto :goto_3
.end method
