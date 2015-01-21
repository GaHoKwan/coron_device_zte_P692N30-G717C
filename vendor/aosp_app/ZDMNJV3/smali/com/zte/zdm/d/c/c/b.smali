.class public Lcom/zte/zdm/d/c/c/b;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/util/ArrayList;

.field private d:Ljava/lang/String;

.field private e:Lcom/zte/zdm/d/c/c/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/zdm/d/c/c/b;->c:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Lcom/zte/zdm/d/c/c/b;Lcom/zte/zdm/d/c/c/c;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/zdm/d/c/c/b;->c:Ljava/util/ArrayList;

    invoke-virtual {p0, p4}, Lcom/zte/zdm/d/c/c/b;->a(Lcom/zte/zdm/d/c/c/c;)V

    invoke-virtual {p0, p1}, Lcom/zte/zdm/d/c/c/b;->a(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/zte/zdm/d/c/c/b;->b:Ljava/lang/String;

    if-nez p3, :cond_0

    const/4 v0, 0x0

    new-array p3, v0, [Lcom/zte/zdm/d/c/c/b;

    :cond_0
    invoke-virtual {p0, p5}, Lcom/zte/zdm/d/c/c/b;->c(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/zte/zdm/d/c/c/b;->b([Lcom/zte/zdm/d/c/c/b;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Lcom/zte/zdm/d/c/c/b;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/zdm/d/c/c/b;->c:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/zte/zdm/d/c/c/b;->a(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/zte/zdm/d/c/c/b;->b:Ljava/lang/String;

    if-nez p3, :cond_0

    const/4 v0, 0x0

    new-array p3, v0, [Lcom/zte/zdm/d/c/c/b;

    :cond_0
    invoke-virtual {p0, p5}, Lcom/zte/zdm/d/c/c/b;->c(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/zte/zdm/d/c/c/b;->b([Lcom/zte/zdm/d/c/c/b;)V

    invoke-virtual {p0, p4}, Lcom/zte/zdm/d/c/c/b;->g(Ljava/lang/String;)V

    return-void
.end method

.method private m()V
    .locals 2

    iget-object v0, p0, Lcom/zte/zdm/d/c/c/b;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A Node with a value must always terminate the recursion"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/c/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/zte/zdm/d/c/c/b;)V
    .locals 1

    invoke-direct {p0}, Lcom/zte/zdm/d/c/c/b;->m()V

    iget-object v0, p0, Lcom/zte/zdm/d/c/c/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lcom/zte/zdm/d/c/c/c;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/d/c/c/b;->e:Lcom/zte/zdm/d/c/c/c;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/d/c/c/b;->a:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/zte/zdm/d/c/c/b;->m()V

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
    iget-object v0, p0, Lcom/zte/zdm/d/c/c/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public a([Lcom/zte/zdm/d/c/c/b;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/zte/zdm/d/c/c/b;->m()V

    iget-object v0, p0, Lcom/zte/zdm/d/c/c/b;->c:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/c/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/d/c/c/b;->b:Ljava/lang/String;

    return-void
.end method

.method public b(Ljava/util/ArrayList;)V
    .locals 2

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/zte/zdm/d/c/c/b;->m()V

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
    iput-object p1, p0, Lcom/zte/zdm/d/c/c/b;->c:Ljava/util/ArrayList;

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/zte/zdm/d/c/c/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method public b([Lcom/zte/zdm/d/c/c/b;)V
    .locals 2

    iget-object v0, p0, Lcom/zte/zdm/d/c/c/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-eqz p1, :cond_1

    array-length v0, p1

    if-lez v0, :cond_0

    invoke-direct {p0}, Lcom/zte/zdm/d/c/c/b;->m()V

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/d/c/c/b;->c:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-void
.end method

.method public c()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/c/b;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/zte/zdm/d/c/c/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A Node with a value must always terminate the recursion"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/zte/zdm/d/c/c/b;->d:Ljava/lang/String;

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/c/b;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/c/b;->e:Lcom/zte/zdm/d/c/c/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/zte/zdm/d/c/c/c;

    invoke-direct {v0}, Lcom/zte/zdm/d/c/c/c;-><init>()V

    iput-object v0, p0, Lcom/zte/zdm/d/c/c/b;->e:Lcom/zte/zdm/d/c/c/c;

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/d/c/c/b;->e:Lcom/zte/zdm/d/c/c/c;

    invoke-virtual {v0, p1}, Lcom/zte/zdm/d/c/c/c;->g(Ljava/lang/String;)V

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/c/b;->e:Lcom/zte/zdm/d/c/c/c;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/d/c/c/b;->e:Lcom/zte/zdm/d/c/c/c;

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/c/c;->r()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public e(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/c/b;->e:Lcom/zte/zdm/d/c/c/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/zte/zdm/d/c/c/c;

    invoke-direct {v0}, Lcom/zte/zdm/d/c/c/c;-><init>()V

    iput-object v0, p0, Lcom/zte/zdm/d/c/c/b;->e:Lcom/zte/zdm/d/c/c/c;

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/d/c/c/b;->e:Lcom/zte/zdm/d/c/c/c;

    invoke-virtual {v0, p1}, Lcom/zte/zdm/d/c/c/c;->d(Ljava/lang/String;)V

    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/c/b;->e:Lcom/zte/zdm/d/c/c/c;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/d/c/c/b;->e:Lcom/zte/zdm/d/c/c/c;

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/c/c;->o()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public f(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/c/b;->e:Lcom/zte/zdm/d/c/c/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/zte/zdm/d/c/c/c;

    invoke-direct {v0}, Lcom/zte/zdm/d/c/c/c;-><init>()V

    iput-object v0, p0, Lcom/zte/zdm/d/c/c/b;->e:Lcom/zte/zdm/d/c/c/c;

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/d/c/c/b;->e:Lcom/zte/zdm/d/c/c/c;

    invoke-virtual {v0, p1}, Lcom/zte/zdm/d/c/c/c;->h(Ljava/lang/String;)V

    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/c/b;->e:Lcom/zte/zdm/d/c/c/c;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/d/c/c/b;->e:Lcom/zte/zdm/d/c/c/c;

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/c/c;->s()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public g(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/c/b;->e:Lcom/zte/zdm/d/c/c/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/zte/zdm/d/c/c/c;

    invoke-direct {v0}, Lcom/zte/zdm/d/c/c/c;-><init>()V

    iput-object v0, p0, Lcom/zte/zdm/d/c/c/b;->e:Lcom/zte/zdm/d/c/c/c;

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/d/c/c/b;->e:Lcom/zte/zdm/d/c/c/c;

    invoke-virtual {v0, p1}, Lcom/zte/zdm/d/c/c/c;->b(Ljava/lang/String;)V

    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/c/b;->e:Lcom/zte/zdm/d/c/c/c;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/d/c/c/b;->e:Lcom/zte/zdm/d/c/c/c;

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/c/c;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public h(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/c/b;->e:Lcom/zte/zdm/d/c/c/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/zte/zdm/d/c/c/c;

    invoke-direct {v0}, Lcom/zte/zdm/d/c/c/c;-><init>()V

    iput-object v0, p0, Lcom/zte/zdm/d/c/c/b;->e:Lcom/zte/zdm/d/c/c/c;

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/d/c/c/b;->e:Lcom/zte/zdm/d/c/c/c;

    invoke-virtual {v0, p1}, Lcom/zte/zdm/d/c/c/c;->f(Ljava/lang/String;)V

    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/c/b;->e:Lcom/zte/zdm/d/c/c/c;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/d/c/c/b;->e:Lcom/zte/zdm/d/c/c/c;

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/c/c;->q()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public i(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/c/b;->e:Lcom/zte/zdm/d/c/c/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/zte/zdm/d/c/c/c;

    invoke-direct {v0}, Lcom/zte/zdm/d/c/c/c;-><init>()V

    iput-object v0, p0, Lcom/zte/zdm/d/c/c/b;->e:Lcom/zte/zdm/d/c/c/c;

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/d/c/c/b;->e:Lcom/zte/zdm/d/c/c/c;

    invoke-virtual {v0, p1}, Lcom/zte/zdm/d/c/c/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/c/b;->e:Lcom/zte/zdm/d/c/c/c;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/d/c/c/b;->e:Lcom/zte/zdm/d/c/c/c;

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/c/c;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public j(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/c/b;->e:Lcom/zte/zdm/d/c/c/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/zte/zdm/d/c/c/c;

    invoke-direct {v0}, Lcom/zte/zdm/d/c/c/c;-><init>()V

    iput-object v0, p0, Lcom/zte/zdm/d/c/c/b;->e:Lcom/zte/zdm/d/c/c/c;

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/d/c/c/b;->e:Lcom/zte/zdm/d/c/c/c;

    invoke-virtual {v0, p1}, Lcom/zte/zdm/d/c/c/c;->e(Ljava/lang/String;)V

    return-void
.end method

.method public k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/c/b;->e:Lcom/zte/zdm/d/c/c/c;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/d/c/c/b;->e:Lcom/zte/zdm/d/c/c/c;

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/c/c;->p()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public l()Lcom/zte/zdm/d/c/c/c;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/c/b;->e:Lcom/zte/zdm/d/c/c/c;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
