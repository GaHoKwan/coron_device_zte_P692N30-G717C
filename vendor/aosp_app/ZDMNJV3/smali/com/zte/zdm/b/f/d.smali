.class public Lcom/zte/zdm/b/f/d;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/Object;

.field private b:Ljava/util/List;

.field private c:Lcom/zte/zdm/b/f/d;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/zdm/b/f/d;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/zte/zdm/b/f/d;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Lcom/zte/zdm/b/f/d;-><init>()V

    invoke-virtual {p0, p1}, Lcom/zte/zdm/b/f/d;->a(Lcom/zte/zdm/b/f/d;)V

    invoke-virtual {p0, p2}, Lcom/zte/zdm/b/f/d;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/zte/zdm/b/f/d;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/zte/zdm/b/f/d;-><init>()V

    invoke-virtual {p0, p1}, Lcom/zte/zdm/b/f/d;->a(Lcom/zte/zdm/b/f/d;)V

    invoke-virtual {p0, p2}, Lcom/zte/zdm/b/f/d;->a(Ljava/lang/Object;)V

    invoke-virtual {p0, p3}, Lcom/zte/zdm/b/f/d;->a(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Lcom/zte/zdm/b/f/d;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zte/zdm/b/f/d;->a(Lcom/zte/zdm/b/f/d;)V

    invoke-virtual {p0, p1}, Lcom/zte/zdm/b/f/d;->a(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/b/f/d;->d:Ljava/lang/String;

    return-object v0
.end method

.method public a(Z)Ljava/lang/String;
    .locals 5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_0
    const-string v0, "{"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/zdm/b/f/d;->e()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/zte/zdm/b/f/d;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/b/f/d;

    if-lez v1, :cond_0

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0}, Lcom/zte/zdm/b/f/d;->e()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/b/f/d;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public a(ILcom/zte/zdm/b/f/d;)V
    .locals 1

    invoke-virtual {p0}, Lcom/zte/zdm/b/f/d;->d()I

    move-result v0

    if-ne p1, v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/zte/zdm/b/f/d;->b(Lcom/zte/zdm/b/f/d;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/b/f/d;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/zte/zdm/b/f/d;->b:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public a(Lcom/zte/zdm/b/f/d;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/b/f/d;->c:Lcom/zte/zdm/b/f/d;

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/b/f/d;->a:Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/zte/zdm/b/f/d;->c:Lcom/zte/zdm/b/f/d;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zte/zdm/b/f/d;->c:Lcom/zte/zdm/b/f/d;

    invoke-virtual {v0}, Lcom/zte/zdm/b/f/d;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/b/f/d;->d:Ljava/lang/String;

    :goto_1
    return-void

    :cond_0
    const-string v0, "/"

    goto :goto_0

    :cond_1
    iput-object p1, p0, Lcom/zte/zdm/b/f/d;->d:Ljava/lang/String;

    goto :goto_1
.end method

.method public a(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/b/f/d;->b:Ljava/util/List;

    return-void
.end method

.method public b()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/b/f/d;->b:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/b/f/d;->b:Ljava/util/List;

    goto :goto_0
.end method

.method public b(Lcom/zte/zdm/b/f/d;)V
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/b/f/d;->b:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/zdm/b/f/d;->b:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/b/f/d;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, p0}, Lcom/zte/zdm/b/f/d;->a(Lcom/zte/zdm/b/f/d;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/zte/zdm/b/f/d;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/b/f/d;

    invoke-virtual {v0}, Lcom/zte/zdm/b/f/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/b/f/d;->b:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/zdm/b/f/d;->b:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/b/f/d;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public c()Lcom/zte/zdm/b/f/d;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/b/f/d;->c:Lcom/zte/zdm/b/f/d;

    return-object v0
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/b/f/d;->b:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/b/f/d;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public e()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/b/f/d;->a:Ljava/lang/Object;

    return-object v0
.end method
