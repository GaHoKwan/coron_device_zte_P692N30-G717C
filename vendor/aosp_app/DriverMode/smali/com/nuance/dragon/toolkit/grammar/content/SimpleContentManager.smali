.class public Lcom/nuance/dragon/toolkit/grammar/content/SimpleContentManager;
.super Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;


# instance fields
.field private a:Z

.field private b:Z

.field private final c:Ljava/util/ArrayList;


# direct methods
.method public varargs constructor <init>(Ljava/lang/String;Lcom/nuance/dragon/toolkit/file/FileManager;ZZLandroid/content/Context;[Lcom/nuance/dragon/toolkit/grammar/Word;)V
    .locals 6

    invoke-direct {p0, p1, p2, p4, p5}, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;-><init>(Ljava/lang/String;Lcom/nuance/dragon/toolkit/file/FileManager;ZLandroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p6

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/SimpleContentManager;->c:Ljava/util/ArrayList;

    array-length v1, p6

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p6, v0

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/grammar/content/SimpleContentManager;->c:Ljava/util/ArrayList;

    new-instance v4, Lcom/nuance/dragon/toolkit/grammar/WordAction;

    const/4 v5, 0x1

    invoke-direct {v4, v2, v5}, Lcom/nuance/dragon/toolkit/grammar/WordAction;-><init>(Lcom/nuance/dragon/toolkit/grammar/Word;Z)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p3}, Lcom/nuance/dragon/toolkit/grammar/content/SimpleContentManager;->initialize(Z)V

    return-void
.end method

.method private a()V
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/SimpleContentManager;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/SimpleContentManager;->a:Z

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/grammar/content/SimpleContentManager;->onContentUpdate()V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/SimpleContentManager;->a:Z

    goto :goto_0
.end method


# virtual methods
.method public addContent(Ljava/util/Collection;)V
    .locals 5

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/SimpleContentManager;->c:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/grammar/content/SimpleContentManager;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/grammar/Word;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/grammar/content/SimpleContentManager;->c:Ljava/util/ArrayList;

    new-instance v3, Lcom/nuance/dragon/toolkit/grammar/WordAction;

    const/4 v4, 0x1

    invoke-direct {v3, v0, v4}, Lcom/nuance/dragon/toolkit/grammar/WordAction;-><init>(Lcom/nuance/dragon/toolkit/grammar/Word;Z)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/grammar/content/SimpleContentManager;->a()V

    return-void
.end method

.method public varargs addContent([Lcom/nuance/dragon/toolkit/grammar/Word;)V
    .locals 6

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/SimpleContentManager;->c:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/grammar/content/SimpleContentManager;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    array-length v2, p1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/grammar/content/SimpleContentManager;->c:Ljava/util/ArrayList;

    new-instance v4, Lcom/nuance/dragon/toolkit/grammar/WordAction;

    const/4 v5, 0x1

    invoke-direct {v4, v2, v5}, Lcom/nuance/dragon/toolkit/grammar/WordAction;-><init>(Lcom/nuance/dragon/toolkit/grammar/Word;Z)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/grammar/content/SimpleContentManager;->a()V

    return-void
.end method

.method public clearContent()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/SimpleContentManager;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/grammar/content/SimpleContentManager;->a()V

    return-void
.end method

.method protected getPlatformFullIterator()Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$PlatformFullIterator;
    .locals 2

    new-instance v0, Lcom/nuance/dragon/toolkit/grammar/content/SimpleContentManager$a;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/grammar/content/SimpleContentManager;->c:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Lcom/nuance/dragon/toolkit/grammar/content/SimpleContentManager$a;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method protected stopWatchingForContentUpdates(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/SimpleContentManager;->b:Z

    return-void
.end method

.method protected watchForContentUpdates(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/SimpleContentManager;->b:Z

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/SimpleContentManager;->a:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/grammar/content/SimpleContentManager;->a()V

    :cond_0
    return-void
.end method
