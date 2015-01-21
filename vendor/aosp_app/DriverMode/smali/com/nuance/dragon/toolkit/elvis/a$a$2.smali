.class final Lcom/nuance/dragon/toolkit/elvis/a$a$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/lang/Runnable;

.field final synthetic c:Lcom/nuance/dragon/toolkit/elvis/a$a;

.field private d:Ljava/util/Iterator;

.field private e:Lcom/nuance/dragon/toolkit/elvis/WordSlot$WordIterator;

.field private f:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/elvis/a$a;ZLjava/lang/Runnable;)V
    .locals 4

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/elvis/a$a$2;->c:Lcom/nuance/dragon/toolkit/elvis/a$a;

    iput-boolean p2, p0, Lcom/nuance/dragon/toolkit/elvis/a$a$2;->a:Z

    iput-object p3, p0, Lcom/nuance/dragon/toolkit/elvis/a$a$2;->b:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/elvis/a$a$2;->c:Lcom/nuance/dragon/toolkit/elvis/a$a;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/elvis/a$a;->e(Lcom/nuance/dragon/toolkit/elvis/a$a;)Lcom/nuance/dragon/toolkit/elvis/Grammar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/dragon/toolkit/elvis/Grammar;->getSlots()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v1, Lcom/nuance/dragon/toolkit/elvis/WordSlot;

    const-string v2, "~s"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lcom/nuance/dragon/toolkit/elvis/WordSlot;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/nuance/dragon/toolkit/elvis/WordSlot;

    const-string v2, "~l"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Lcom/nuance/dragon/toolkit/elvis/WordSlot;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/elvis/a$a$2;->c:Lcom/nuance/dragon/toolkit/elvis/a$a;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/elvis/a$a;->e(Lcom/nuance/dragon/toolkit/elvis/a$a;)Lcom/nuance/dragon/toolkit/elvis/Grammar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/dragon/toolkit/elvis/Grammar;->getSlots()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$a$2;->d:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/elvis/a$a$2;->c:Lcom/nuance/dragon/toolkit/elvis/a$a;

    monitor-enter v3

    :try_start_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$a$2;->c:Lcom/nuance/dragon/toolkit/elvis/a$a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/elvis/a$a;->b(Lcom/nuance/dragon/toolkit/elvis/a$a;)Z

    move-result v0

    if-nez v0, :cond_0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-void

    :cond_0
    monitor-exit v3

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$a$2;->c:Lcom/nuance/dragon/toolkit/elvis/a$a;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/elvis/a$a;->a:Lcom/nuance/dragon/toolkit/elvis/a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/elvis/a;->i(Lcom/nuance/dragon/toolkit/elvis/a;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$a$2;->c:Lcom/nuance/dragon/toolkit/elvis/a$a;

    new-instance v1, Lcom/nuance/dragon/toolkit/elvis/ElvisError;

    const/16 v2, 0x9

    invoke-direct {v1, v2}, Lcom/nuance/dragon/toolkit/elvis/ElvisError;-><init>(I)V

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/elvis/a$a;->a(Lcom/nuance/dragon/toolkit/elvis/a$a;Lcom/nuance/dragon/toolkit/elvis/ElvisError;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$a$2;->e:Lcom/nuance/dragon/toolkit/elvis/WordSlot$WordIterator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$a$2;->e:Lcom/nuance/dragon/toolkit/elvis/WordSlot$WordIterator;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/elvis/WordSlot$WordIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_c

    :cond_2
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$a$2;->d:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$a$2;->d:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/elvis/WordSlot;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/elvis/WordSlot;->getId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/nuance/dragon/toolkit/elvis/a$a$2;->f:Ljava/lang/String;

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/elvis/a$a$2;->c:Lcom/nuance/dragon/toolkit/elvis/a$a;

    invoke-static {v3}, Lcom/nuance/dragon/toolkit/elvis/a$a;->a(Lcom/nuance/dragon/toolkit/elvis/a$a;)Lcom/nuance/dragon/toolkit/elvis/Grammar;

    move-result-object v3

    iget-object v4, p0, Lcom/nuance/dragon/toolkit/elvis/a$a$2;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/nuance/dragon/toolkit/elvis/Grammar;->getWordSlotByName(Ljava/lang/String;)Lcom/nuance/dragon/toolkit/elvis/WordSlot;

    move-result-object v3

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/elvis/WordSlot;->getWordListRequired()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/elvis/WordSlot;->hasWordList()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/elvis/a$a$2;->c:Lcom/nuance/dragon/toolkit/elvis/a$a;

    iget-object v1, v1, Lcom/nuance/dragon/toolkit/elvis/a$a;->a:Lcom/nuance/dragon/toolkit/elvis/a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "WordSlot "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/elvis/WordSlot;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " requires an attached wordlist."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$a$2;->c:Lcom/nuance/dragon/toolkit/elvis/a$a;

    new-instance v1, Lcom/nuance/dragon/toolkit/elvis/ElvisError;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Lcom/nuance/dragon/toolkit/elvis/ElvisError;-><init>(I)V

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/elvis/a$a;->a(Lcom/nuance/dragon/toolkit/elvis/a$a;Lcom/nuance/dragon/toolkit/elvis/ElvisError;)V

    goto/16 :goto_0

    :cond_3
    if-eqz v3, :cond_4

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/elvis/WordSlot;->getRebuildType()I

    move-result v4

    if-nez v4, :cond_6

    :cond_4
    iget-object v3, p0, Lcom/nuance/dragon/toolkit/elvis/a$a$2;->c:Lcom/nuance/dragon/toolkit/elvis/a$a;

    invoke-static {v3}, Lcom/nuance/dragon/toolkit/elvis/a$a;->a(Lcom/nuance/dragon/toolkit/elvis/a$a;)Lcom/nuance/dragon/toolkit/elvis/Grammar;

    move-result-object v3

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/elvis/WordSlot;->copy()Lcom/nuance/dragon/toolkit/elvis/WordSlot;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/nuance/dragon/toolkit/elvis/Grammar;->a(Lcom/nuance/dragon/toolkit/elvis/WordSlot;)V

    :cond_5
    iget-object v3, p0, Lcom/nuance/dragon/toolkit/elvis/a$a$2;->c:Lcom/nuance/dragon/toolkit/elvis/a$a;

    iget-object v3, v3, Lcom/nuance/dragon/toolkit/elvis/a$a;->a:Lcom/nuance/dragon/toolkit/elvis/a;

    invoke-static {v3}, Lcom/nuance/dragon/toolkit/elvis/a;->a(Lcom/nuance/dragon/toolkit/elvis/a;)Lcom/nuance/dragon/toolkit/elvis/e;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/nuance/dragon/toolkit/elvis/e;->a(Lcom/nuance/dragon/toolkit/elvis/WordSlot;)I

    move-result v3

    if-ne v3, v9, :cond_7

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$a$2;->c:Lcom/nuance/dragon/toolkit/elvis/a$a;

    new-instance v1, Lcom/nuance/dragon/toolkit/elvis/ElvisError;

    invoke-direct {v1, v8}, Lcom/nuance/dragon/toolkit/elvis/ElvisError;-><init>(I)V

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/elvis/a$a;->a(Lcom/nuance/dragon/toolkit/elvis/a$a;Lcom/nuance/dragon/toolkit/elvis/ElvisError;)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v3}, Lcom/nuance/dragon/toolkit/elvis/WordSlot;->getType()I

    move-result v4

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/elvis/WordSlot;->getType()I

    move-result v5

    if-eq v4, v5, :cond_5

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/elvis/WordSlot;->getType()I

    move-result v4

    if-eqz v4, :cond_5

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/elvis/a$a$2;->c:Lcom/nuance/dragon/toolkit/elvis/a$a;

    iget-object v1, v1, Lcom/nuance/dragon/toolkit/elvis/a$a;->a:Lcom/nuance/dragon/toolkit/elvis/a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "WordSlot types do not match:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/nuance/dragon/toolkit/elvis/a$a$2;->f:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ". Old: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Lcom/nuance/dragon/toolkit/elvis/WordSlot;->getType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " New: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/elvis/WordSlot;->getType()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$a$2;->c:Lcom/nuance/dragon/toolkit/elvis/a$a;

    new-instance v1, Lcom/nuance/dragon/toolkit/elvis/ElvisError;

    invoke-direct {v1, v8}, Lcom/nuance/dragon/toolkit/elvis/ElvisError;-><init>(I)V

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/elvis/a$a;->a(Lcom/nuance/dragon/toolkit/elvis/a$a;Lcom/nuance/dragon/toolkit/elvis/ElvisError;)V

    goto/16 :goto_0

    :cond_7
    if-eqz v3, :cond_8

    iget-boolean v3, p0, Lcom/nuance/dragon/toolkit/elvis/a$a$2;->a:Z

    if-eqz v3, :cond_a

    :cond_8
    invoke-virtual {v0, v1}, Lcom/nuance/dragon/toolkit/elvis/WordSlot;->getWords(Z)Lcom/nuance/dragon/toolkit/elvis/WordSlot$WordIterator;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$a$2;->e:Lcom/nuance/dragon/toolkit/elvis/WordSlot$WordIterator;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$a$2;->c:Lcom/nuance/dragon/toolkit/elvis/a$a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/elvis/a$a;->d(Lcom/nuance/dragon/toolkit/elvis/a$a;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/elvis/a$a$2;->e:Lcom/nuance/dragon/toolkit/elvis/WordSlot$WordIterator;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    :goto_1
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$a$2;->c:Lcom/nuance/dragon/toolkit/elvis/a$a;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/elvis/a$a;->a:Lcom/nuance/dragon/toolkit/elvis/a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/elvis/a;->c(Lcom/nuance/dragon/toolkit/elvis/a;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_a
    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/elvis/WordSlot;->getRebuildType()I

    move-result v3

    if-ne v3, v1, :cond_9

    invoke-virtual {v0, v2}, Lcom/nuance/dragon/toolkit/elvis/WordSlot;->getWords(Z)Lcom/nuance/dragon/toolkit/elvis/WordSlot$WordIterator;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$a$2;->e:Lcom/nuance/dragon/toolkit/elvis/WordSlot$WordIterator;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$a$2;->c:Lcom/nuance/dragon/toolkit/elvis/a$a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/elvis/a$a;->d(Lcom/nuance/dragon/toolkit/elvis/a$a;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/elvis/a$a$2;->e:Lcom/nuance/dragon/toolkit/elvis/WordSlot$WordIterator;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_b
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$a$2;->c:Lcom/nuance/dragon/toolkit/elvis/a$a;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/elvis/a$a;->a:Lcom/nuance/dragon/toolkit/elvis/a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/elvis/a;->c(Lcom/nuance/dragon/toolkit/elvis/a;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/elvis/a$a$2;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_c
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$a$2;->c:Lcom/nuance/dragon/toolkit/elvis/a$a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/elvis/a$a;->a(Lcom/nuance/dragon/toolkit/elvis/a$a;)Lcom/nuance/dragon/toolkit/elvis/Grammar;

    move-result-object v0

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/elvis/a$a$2;->f:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/nuance/dragon/toolkit/elvis/Grammar;->getWordSlotByName(Ljava/lang/String;)Lcom/nuance/dragon/toolkit/elvis/WordSlot;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/elvis/WordSlot;->a()Z

    move-result v0

    if-eqz v0, :cond_12

    move v0, v1

    :goto_2
    move v3, v2

    :goto_3
    const/16 v4, 0x64

    if-ge v3, v4, :cond_11

    iget-object v4, p0, Lcom/nuance/dragon/toolkit/elvis/a$a$2;->e:Lcom/nuance/dragon/toolkit/elvis/WordSlot$WordIterator;

    invoke-virtual {v4}, Lcom/nuance/dragon/toolkit/elvis/WordSlot$WordIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11

    iget-object v4, p0, Lcom/nuance/dragon/toolkit/elvis/a$a$2;->e:Lcom/nuance/dragon/toolkit/elvis/WordSlot$WordIterator;

    invoke-virtual {v4}, Lcom/nuance/dragon/toolkit/elvis/WordSlot$WordIterator;->getNext()Lcom/nuance/dragon/toolkit/grammar/WordAction;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/dragon/toolkit/grammar/WordAction;->isAdded()Z

    move-result v4

    if-eqz v4, :cond_d

    iget-object v4, p0, Lcom/nuance/dragon/toolkit/elvis/a$a$2;->c:Lcom/nuance/dragon/toolkit/elvis/a$a;

    iget-object v4, v4, Lcom/nuance/dragon/toolkit/elvis/a$a;->a:Lcom/nuance/dragon/toolkit/elvis/a;

    invoke-static {v4}, Lcom/nuance/dragon/toolkit/elvis/a;->a(Lcom/nuance/dragon/toolkit/elvis/a;)Lcom/nuance/dragon/toolkit/elvis/e;

    move-result-object v4

    iget-object v6, p0, Lcom/nuance/dragon/toolkit/elvis/a$a$2;->f:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/nuance/dragon/toolkit/grammar/WordAction;->getWord()Lcom/nuance/dragon/toolkit/grammar/Word;

    move-result-object v7

    invoke-interface {v4, v6, v7, v0}, Lcom/nuance/dragon/toolkit/elvis/e;->a(Ljava/lang/String;Lcom/nuance/dragon/toolkit/grammar/Word;Z)I

    move-result v4

    :goto_4
    if-ne v4, v9, :cond_f

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$a$2;->c:Lcom/nuance/dragon/toolkit/elvis/a$a;

    new-instance v1, Lcom/nuance/dragon/toolkit/elvis/ElvisError;

    invoke-direct {v1, v8}, Lcom/nuance/dragon/toolkit/elvis/ElvisError;-><init>(I)V

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/elvis/a$a;->a(Lcom/nuance/dragon/toolkit/elvis/a$a;Lcom/nuance/dragon/toolkit/elvis/ElvisError;)V

    goto/16 :goto_0

    :cond_d
    iget-object v4, p0, Lcom/nuance/dragon/toolkit/elvis/a$a$2;->c:Lcom/nuance/dragon/toolkit/elvis/a$a;

    iget-object v4, v4, Lcom/nuance/dragon/toolkit/elvis/a$a;->a:Lcom/nuance/dragon/toolkit/elvis/a;

    invoke-static {v4}, Lcom/nuance/dragon/toolkit/elvis/a;->a(Lcom/nuance/dragon/toolkit/elvis/a;)Lcom/nuance/dragon/toolkit/elvis/e;

    move-result-object v4

    iget-object v6, p0, Lcom/nuance/dragon/toolkit/elvis/a$a$2;->f:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/nuance/dragon/toolkit/grammar/WordAction;->getWord()Lcom/nuance/dragon/toolkit/grammar/Word;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Lcom/nuance/dragon/toolkit/elvis/e;->a(Ljava/lang/String;Lcom/nuance/dragon/toolkit/grammar/Word;)Z

    move-result v4

    if-eqz v4, :cond_e

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Success removing word class member: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/nuance/dragon/toolkit/grammar/WordAction;->getWord()Lcom/nuance/dragon/toolkit/grammar/Word;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/dragon/toolkit/grammar/Word;->getSurfaceForm()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v4, v2

    goto :goto_4

    :cond_e
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Failed removing word class member: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/nuance/dragon/toolkit/grammar/WordAction;->getWord()Lcom/nuance/dragon/toolkit/grammar/Word;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/dragon/toolkit/grammar/Word;->getSurfaceForm()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    move v4, v2

    goto :goto_4

    :cond_f
    if-ne v4, v1, :cond_10

    iget-object v4, p0, Lcom/nuance/dragon/toolkit/elvis/a$a$2;->c:Lcom/nuance/dragon/toolkit/elvis/a$a;

    invoke-static {v4}, Lcom/nuance/dragon/toolkit/elvis/a$a;->f(Lcom/nuance/dragon/toolkit/elvis/a$a;)Ljava/util/List;

    move-result-object v4

    new-instance v6, Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$RebuildListener$SkippedWord;

    invoke-virtual {v5}, Lcom/nuance/dragon/toolkit/grammar/WordAction;->getWord()Lcom/nuance/dragon/toolkit/grammar/Word;

    move-result-object v5

    iget-object v7, p0, Lcom/nuance/dragon/toolkit/elvis/a$a$2;->f:Ljava/lang/String;

    invoke-direct {v6, v5, v7}, Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$RebuildListener$SkippedWord;-><init>(Lcom/nuance/dragon/toolkit/grammar/Word;Ljava/lang/String;)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_10
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_3

    :cond_11
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$a$2;->c:Lcom/nuance/dragon/toolkit/elvis/a$a;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/elvis/a$a;->a:Lcom/nuance/dragon/toolkit/elvis/a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/elvis/a;->c(Lcom/nuance/dragon/toolkit/elvis/a;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_12
    move v0, v2

    goto/16 :goto_2
.end method
