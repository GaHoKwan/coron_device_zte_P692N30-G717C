.class public abstract Lcom/zte/zdm/d/c/aj;
.super Lcom/zte/zdm/d/c/a;


# instance fields
.field protected f:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/zte/zdm/d/c/a;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/zdm/d/c/aj;->f:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lcom/zte/zdm/d/c/m;Lcom/zte/zdm/d/c/ap;[Lcom/zte/zdm/d/c/ai;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/zte/zdm/d/c/a;-><init>(Lcom/zte/zdm/d/c/m;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/zdm/d/c/aj;->f:Ljava/util/ArrayList;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cmdID cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p3, :cond_1

    const/4 v0, 0x0

    new-array p3, v0, [Lcom/zte/zdm/d/c/ai;

    :cond_1
    iput-object p2, p0, Lcom/zte/zdm/d/c/aj;->c:Lcom/zte/zdm/d/c/ap;

    invoke-virtual {p0, p3}, Lcom/zte/zdm/d/c/aj;->a([Lcom/zte/zdm/d/c/ai;)V

    return-void
.end method

.method public constructor <init>(Lcom/zte/zdm/d/c/m;[Lcom/zte/zdm/d/c/ai;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/zte/zdm/d/c/aj;-><init>(Lcom/zte/zdm/d/c/m;Lcom/zte/zdm/d/c/ap;[Lcom/zte/zdm/d/c/ai;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/zte/zdm/d/c/ap;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/d/c/aj;->c:Lcom/zte/zdm/d/c/ap;

    return-void
.end method

.method public a([Lcom/zte/zdm/d/c/ai;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/zte/zdm/d/c/aj;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/zte/zdm/d/c/aj;->f:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/zdm/d/c/aj;->f:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public e()Lcom/zte/zdm/d/c/ap;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/aj;->c:Lcom/zte/zdm/d/c/ap;

    return-object v0
.end method

.method public abstract f()Ljava/lang/String;
.end method

.method public k()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/aj;->f:Ljava/util/ArrayList;

    return-object v0
.end method
