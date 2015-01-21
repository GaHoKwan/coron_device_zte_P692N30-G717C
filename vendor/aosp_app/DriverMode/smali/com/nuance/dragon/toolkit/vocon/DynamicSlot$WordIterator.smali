.class public Lcom/nuance/dragon/toolkit/vocon/DynamicSlot$WordIterator;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/LinkedList;

.field private final b:Ljava/util/LinkedList;

.field private final c:Ljava/util/LinkedList;

.field private d:Lcom/nuance/dragon/toolkit/grammar/WordAction;


# direct methods
.method private constructor <init>(Ljava/util/List;Ljava/util/List;Z)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/DynamicSlot$WordIterator;->a:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/DynamicSlot$WordIterator;->b:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/DynamicSlot$WordIterator;->c:Ljava/util/LinkedList;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/DynamicSlot$WordIterator;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/grammar/WordList;

    if-eqz p3, :cond_1

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/grammar/WordList;->getFullIterator()Lcom/nuance/dragon/toolkit/grammar/WordList$WordIterator;

    move-result-object v0

    :goto_1
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/vocon/DynamicSlot$WordIterator;->b:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/grammar/WordList;->getModifiedIterator()Lcom/nuance/dragon/toolkit/grammar/WordList$WordIterator;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/vocon/DynamicSlot$WordIterator;->a()Lcom/nuance/dragon/toolkit/grammar/WordAction;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/DynamicSlot$WordIterator;->d:Lcom/nuance/dragon/toolkit/grammar/WordAction;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Ljava/util/List;ZB)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/nuance/dragon/toolkit/vocon/DynamicSlot$WordIterator;-><init>(Ljava/util/List;Ljava/util/List;Z)V

    return-void
.end method

.method private a()Lcom/nuance/dragon/toolkit/grammar/WordAction;
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/DynamicSlot$WordIterator;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/DynamicSlot$WordIterator;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/grammar/Word;

    if-eqz v0, :cond_4

    new-instance v1, Lcom/nuance/dragon/toolkit/grammar/WordAction;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/nuance/dragon/toolkit/grammar/WordAction;-><init>(Lcom/nuance/dragon/toolkit/grammar/Word;Z)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/DynamicSlot$WordIterator;->c:Ljava/util/LinkedList;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/vocon/DynamicSlot$WordIterator;->b:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/DynamicSlot$WordIterator;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/DynamicSlot$WordIterator;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/grammar/WordList$WordIterator;

    invoke-interface {v0}, Lcom/nuance/dragon/toolkit/grammar/WordList$WordIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/DynamicSlot$WordIterator;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/grammar/WordList$WordIterator;

    invoke-interface {v0}, Lcom/nuance/dragon/toolkit/grammar/WordList$WordIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/grammar/WordAction;

    :goto_1
    if-eqz v0, :cond_0

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_1

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public finished(Z)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/DynamicSlot$WordIterator;->b:Ljava/util/LinkedList;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/DynamicSlot$WordIterator;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/grammar/WordList$WordIterator;

    if-eqz p1, :cond_0

    invoke-interface {v0}, Lcom/nuance/dragon/toolkit/grammar/WordList$WordIterator;->acceptChanges()V

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/nuance/dragon/toolkit/grammar/WordList$WordIterator;->discardChanges()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getNext()Lcom/nuance/dragon/toolkit/grammar/WordAction;
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/DynamicSlot$WordIterator;->d:Lcom/nuance/dragon/toolkit/grammar/WordAction;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/vocon/DynamicSlot$WordIterator;->d:Lcom/nuance/dragon/toolkit/grammar/WordAction;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/vocon/DynamicSlot$WordIterator;->a()Lcom/nuance/dragon/toolkit/grammar/WordAction;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/dragon/toolkit/vocon/DynamicSlot$WordIterator;->d:Lcom/nuance/dragon/toolkit/grammar/WordAction;

    :cond_0
    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/DynamicSlot$WordIterator;->d:Lcom/nuance/dragon/toolkit/grammar/WordAction;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
