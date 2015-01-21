.class public abstract Lcom/zte/zdm/d/c/av;
.super Lcom/zte/zdm/d/c/aj;


# instance fields
.field protected e:Ljava/lang/String;

.field protected g:Ljava/lang/String;

.field protected h:Ljava/util/ArrayList;

.field protected i:Ljava/util/ArrayList;


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/zte/zdm/d/c/aj;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/zdm/d/c/av;->h:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/zdm/d/c/av;->i:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lcom/zte/zdm/d/c/m;Ljava/lang/String;Ljava/lang/String;[Lcom/zte/zdm/d/c/bn;[Lcom/zte/zdm/d/c/bc;[Lcom/zte/zdm/d/c/ai;)V
    .locals 1

    invoke-direct {p0, p1, p6}, Lcom/zte/zdm/d/c/aj;-><init>(Lcom/zte/zdm/d/c/m;[Lcom/zte/zdm/d/c/ai;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/zdm/d/c/av;->h:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/zdm/d/c/av;->i:Ljava/util/ArrayList;

    invoke-virtual {p0, p3}, Lcom/zte/zdm/d/c/av;->b(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/zte/zdm/d/c/av;->e:Ljava/lang/String;

    invoke-virtual {p0, p4}, Lcom/zte/zdm/d/c/av;->a([Lcom/zte/zdm/d/c/bn;)V

    invoke-virtual {p0, p5}, Lcom/zte/zdm/d/c/av;->a([Lcom/zte/zdm/d/c/bc;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/d/c/av;->e:Ljava/lang/String;

    return-void
.end method

.method public a([Lcom/zte/zdm/d/c/bc;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/zdm/d/c/av;->i:Ljava/util/ArrayList;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/d/c/av;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/zte/zdm/d/c/av;->i:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public a([Lcom/zte/zdm/d/c/bn;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/zdm/d/c/av;->h:Ljava/util/ArrayList;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/d/c/av;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/zte/zdm/d/c/av;->h:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cmdRef cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/zte/zdm/d/c/av;->g:Ljava/lang/String;

    return-void
.end method

.method public abstract f()Ljava/lang/String;
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/av;->e:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/av;->g:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/av;->h:Ljava/util/ArrayList;

    return-object v0
.end method

.method public j()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/av;->i:Ljava/util/ArrayList;

    return-object v0
.end method
