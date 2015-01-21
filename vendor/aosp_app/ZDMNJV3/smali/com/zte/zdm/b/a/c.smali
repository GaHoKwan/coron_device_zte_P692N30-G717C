.class public Lcom/zte/zdm/b/a/c;
.super Lcom/zte/zdm/b/a/a;


# instance fields
.field private d:Lcom/zte/zdm/d/c/b;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/zte/zdm/d/c/b;)V
    .locals 0

    invoke-direct {p0, p2, p1, p3}, Lcom/zte/zdm/b/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/zte/zdm/d/c/a;)V

    iput-object p3, p0, Lcom/zte/zdm/b/a/c;->d:Lcom/zte/zdm/d/c/b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/zte/zdm/d/c/b;Lcom/zte/zdm/b/f/e/b;)V
    .locals 0

    invoke-direct {p0, p2, p1, p3, p4}, Lcom/zte/zdm/b/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/zte/zdm/d/c/a;Lcom/zte/zdm/b/f/e/b;)V

    iput-object p3, p0, Lcom/zte/zdm/b/a/c;->d:Lcom/zte/zdm/d/c/b;

    return-void
.end method

.method private a(Lcom/zte/zdm/d/c/ai;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/zte/zdm/b/a/c;->b(Lcom/zte/zdm/d/c/ai;)V

    iget-object v0, p0, Lcom/zte/zdm/b/a/c;->a:Lcom/zte/zdm/b/f/e/b;

    iget-object v1, p0, Lcom/zte/zdm/b/a/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p0}, Lcom/zte/zdm/b/f/e/b;->a(Ljava/lang/String;Lcom/zte/zdm/d/c/ai;Lcom/zte/zdm/b/f/c/a;)V

    return-void
.end method

.method private b(Lcom/zte/zdm/d/c/ai;)V
    .locals 2

    iget-object v0, p0, Lcom/zte/zdm/b/a/c;->d:Lcom/zte/zdm/d/c/b;

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/b;->e()Lcom/zte/zdm/d/c/ap;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/zte/zdm/d/c/ai;->c()Lcom/zte/zdm/d/c/ap;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/zte/zdm/b/a/c;->d()Lcom/zte/zdm/d/c/ap;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/zte/zdm/d/c/ai;->a(Lcom/zte/zdm/d/c/ap;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/zte/zdm/b/a/c;->d:Lcom/zte/zdm/d/c/b;

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/b;->e()Lcom/zte/zdm/d/c/ap;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/zte/zdm/d/c/ai;->c()Lcom/zte/zdm/d/c/ap;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/zte/zdm/b/a/c;->d:Lcom/zte/zdm/d/c/b;

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/b;->e()Lcom/zte/zdm/d/c/ap;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/zte/zdm/d/c/ai;->a(Lcom/zte/zdm/d/c/ap;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/zte/zdm/b/a/c;->d:Lcom/zte/zdm/d/c/b;

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/b;->e()Lcom/zte/zdm/d/c/ap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/zte/zdm/d/c/ai;->c()Lcom/zte/zdm/d/c/ap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/zte/zdm/d/c/ai;->c()Lcom/zte/zdm/d/c/ap;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/b/a/c;->d:Lcom/zte/zdm/d/c/b;

    invoke-virtual {v1}, Lcom/zte/zdm/d/c/b;->e()Lcom/zte/zdm/d/c/ap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/zdm/d/c/ap;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/zdm/d/c/ap;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/zte/zdm/d/c/ai;->c()Lcom/zte/zdm/d/c/ap;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/b/a/c;->d:Lcom/zte/zdm/d/c/b;

    invoke-virtual {v1}, Lcom/zte/zdm/d/c/b;->e()Lcom/zte/zdm/d/c/ap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/zdm/d/c/ap;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/zdm/d/c/ap;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private c()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/zte/zdm/b/a/c;->d:Lcom/zte/zdm/d/c/b;

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/zte/zdm/b/a/c;->d:Lcom/zte/zdm/d/c/b;

    invoke-virtual {v1}, Lcom/zte/zdm/d/c/b;->k()Ljava/util/ArrayList;

    move-result-object v2

    move v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/d/c/ai;

    invoke-direct {p0, v0}, Lcom/zte/zdm/b/a/c;->a(Lcom/zte/zdm/d/c/ai;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private d()Lcom/zte/zdm/d/c/ap;
    .locals 2

    new-instance v0, Lcom/zte/zdm/d/c/ap;

    invoke-direct {v0}, Lcom/zte/zdm/d/c/ap;-><init>()V

    const-string v1, "chr"

    invoke-virtual {v0, v1}, Lcom/zte/zdm/d/c/ap;->a(Ljava/lang/String;)V

    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Lcom/zte/zdm/d/c/ap;->b(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    invoke-direct {p0}, Lcom/zte/zdm/b/a/c;->c()Z

    move-result v0

    return v0
.end method
