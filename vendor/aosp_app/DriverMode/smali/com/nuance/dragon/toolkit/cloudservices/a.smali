.class abstract Lcom/nuance/dragon/toolkit/cloudservices/a;
.super Lcom/nuance/dragon/toolkit/cloudservices/CloudServices;


# instance fields
.field private final a:Ljava/util/Queue;

.field private b:Lcom/nuance/dragon/toolkit/cloudservices/Transaction;

.field private c:Z


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/cloudservices/CloudServices;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/a;->a:Ljava/util/Queue;

    return-void
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/cloudservices/a;)Ljava/util/Queue;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/a;->a:Ljava/util/Queue;

    return-object v0
.end method

.method private a()V
    .locals 3

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/a;->b:Lcom/nuance/dragon/toolkit/cloudservices/Transaction;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/cloudservices/a;->canStartTransaction()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/a;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/a;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/cloudservices/Transaction;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/cloudservices/Transaction;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/a;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/cloudservices/Transaction;

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/a;->b:Lcom/nuance/dragon/toolkit/cloudservices/Transaction;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/a;->b:Lcom/nuance/dragon/toolkit/cloudservices/Transaction;

    invoke-virtual {p0, v0}, Lcom/nuance/dragon/toolkit/cloudservices/a;->createCommandContext(Lcom/nuance/dragon/toolkit/cloudservices/Transaction;)Lcom/nuance/dragon/toolkit/cloudservices/d;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/cloudservices/a;->b:Lcom/nuance/dragon/toolkit/cloudservices/Transaction;

    invoke-virtual {v1}, Lcom/nuance/dragon/toolkit/cloudservices/Transaction;->f()Lcom/nuance/dragon/toolkit/cloudservices/Transaction$Listener;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/cloudservices/a;->b:Lcom/nuance/dragon/toolkit/cloudservices/Transaction;

    invoke-interface {v1, v2}, Lcom/nuance/dragon/toolkit/cloudservices/Transaction$Listener;->onTransactionStarted(Lcom/nuance/dragon/toolkit/cloudservices/Transaction;)V

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/cloudservices/a;->b:Lcom/nuance/dragon/toolkit/cloudservices/Transaction;

    invoke-virtual {v1, v0}, Lcom/nuance/dragon/toolkit/cloudservices/Transaction;->a(Lcom/nuance/dragon/toolkit/cloudservices/d;)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/nuance/dragon/toolkit/cloudservices/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/cloudservices/a;->a()V

    return-void
.end method

.method static synthetic c(Lcom/nuance/dragon/toolkit/cloudservices/a;)Lcom/nuance/dragon/toolkit/cloudservices/Transaction;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/a;->b:Lcom/nuance/dragon/toolkit/cloudservices/Transaction;

    return-object v0
.end method

.method static synthetic d(Lcom/nuance/dragon/toolkit/cloudservices/a;)Lcom/nuance/dragon/toolkit/cloudservices/Transaction;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/a;->b:Lcom/nuance/dragon/toolkit/cloudservices/Transaction;

    return-object v0
.end method


# virtual methods
.method public addTransaction(Lcom/nuance/dragon/toolkit/cloudservices/Transaction;I)V
    .locals 4

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/a;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;Z)V

    const-string v0, "transaction"

    invoke-static {v0, p1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, p2}, Lcom/nuance/dragon/toolkit/cloudservices/Transaction;->a(I)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/a;->a:Ljava/util/Queue;

    check-cast v0, Ljava/util/LinkedList;

    move v2, v1

    :goto_1
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-ge v2, v1, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/dragon/toolkit/cloudservices/Transaction;

    invoke-virtual {p1}, Lcom/nuance/dragon/toolkit/cloudservices/Transaction;->d()I

    move-result v3

    invoke-virtual {v1}, Lcom/nuance/dragon/toolkit/cloudservices/Transaction;->d()I

    move-result v1

    if-le v3, v1, :cond_1

    invoke-virtual {v0, v2, p1}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    :goto_2
    new-instance v0, Lcom/nuance/dragon/toolkit/cloudservices/a$1;

    invoke-direct {v0, p0}, Lcom/nuance/dragon/toolkit/cloudservices/a$1;-><init>(Lcom/nuance/dragon/toolkit/cloudservices/a;)V

    invoke-virtual {p1, v0}, Lcom/nuance/dragon/toolkit/cloudservices/Transaction;->a(Lcom/nuance/dragon/toolkit/cloudservices/Transaction$a;)V

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/cloudservices/a;->a()V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_2
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method protected abstract canStartTransaction()Z
.end method

.method protected connectionStateChanged()V
    .locals 0

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/cloudservices/a;->a()V

    return-void
.end method

.method protected abstract createCommandContext(Lcom/nuance/dragon/toolkit/cloudservices/Transaction;)Lcom/nuance/dragon/toolkit/cloudservices/d;
.end method

.method public currentTransaction()Lcom/nuance/dragon/toolkit/cloudservices/Transaction;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/a;->b:Lcom/nuance/dragon/toolkit/cloudservices/Transaction;

    return-object v0
.end method

.method public getTransactionCount()I
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/a;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/cloudservices/a;->b:Lcom/nuance/dragon/toolkit/cloudservices/Transaction;

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    return v0
.end method

.method public release()V
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/a;->c:Z

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;Z)V

    iput-boolean v1, p0, Lcom/nuance/dragon/toolkit/cloudservices/a;->c:Z

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/cloudservices/a;->a:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/cloudservices/a;->a:Ljava/util/Queue;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/cloudservices/a;->a:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->clear()V

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/cloudservices/a;->b:Lcom/nuance/dragon/toolkit/cloudservices/Transaction;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/cloudservices/a;->b:Lcom/nuance/dragon/toolkit/cloudservices/Transaction;

    invoke-virtual {v1}, Lcom/nuance/dragon/toolkit/cloudservices/Transaction;->cancel()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nuance/dragon/toolkit/cloudservices/a;->b:Lcom/nuance/dragon/toolkit/cloudservices/Transaction;

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/cloudservices/Transaction;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/cloudservices/Transaction;->cancel()V

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    return-void
.end method
