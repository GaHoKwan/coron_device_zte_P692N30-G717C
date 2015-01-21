.class public Lcom/zte/zdm/d/c/c/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/ArrayList;

.field private b:Lcom/zte/zdm/d/c/bo;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/zdm/d/c/c/a;->a:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>([Lcom/zte/zdm/d/c/c/b;Lcom/zte/zdm/d/c/bo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/zdm/d/c/c/a;->a:Ljava/util/ArrayList;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    new-array p1, v0, [Lcom/zte/zdm/d/c/c/b;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/zte/zdm/d/c/c/a;->b([Lcom/zte/zdm/d/c/c/b;)V

    invoke-virtual {p0, p2}, Lcom/zte/zdm/d/c/c/a;->a(Lcom/zte/zdm/d/c/bo;)V

    iput-object p3, p0, Lcom/zte/zdm/d/c/c/a;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/zte/zdm/d/c/c/a;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/c/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/zte/zdm/d/c/bo;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/d/c/c/a;->b:Lcom/zte/zdm/d/c/bo;

    return-void
.end method

.method public a(Lcom/zte/zdm/d/c/c/b;)V
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/c/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/d/c/c/a;->c:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/zte/zdm/d/c/c/b;

    if-nez v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The nodes in the array list are not valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/zte/zdm/d/c/c/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public a([Lcom/zte/zdm/d/c/c/b;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/zte/zdm/d/c/c/a;->a:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/c/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/d/c/c/a;->d:Ljava/lang/String;

    return-void
.end method

.method public b(Ljava/util/ArrayList;)V
    .locals 2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/zte/zdm/d/c/c/b;

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The nodes in the array list are not valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lcom/zte/zdm/d/c/c/a;->a:Ljava/util/ArrayList;

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/zte/zdm/d/c/c/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method public b([Lcom/zte/zdm/d/c/c/b;)V
    .locals 2

    iget-object v0, p0, Lcom/zte/zdm/d/c/c/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/zte/zdm/d/c/c/a;->a:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public c()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/c/a;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method public d()Lcom/zte/zdm/d/c/bo;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/c/a;->b:Lcom/zte/zdm/d/c/bo;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
