.class public Lcom/autonavi/xmgd/e/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/autonavi/xmgd/e/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/autonavi/xmgd/e/b;

    invoke-direct {v0}, Lcom/autonavi/xmgd/e/b;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xmgd/e/a;->a:Lcom/autonavi/xmgd/e/b;

    return-void
.end method


# virtual methods
.method public a(Lcom/autonavi/xmgd/e/c;Ljava/lang/String;)I
    .locals 6

    const/4 v5, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p1, Lcom/autonavi/xmgd/e/c;->b:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/autonavi/xmgd/e/c;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/autonavi/xmgd/e/a;->a:Lcom/autonavi/xmgd/e/b;

    iget-object v4, p1, Lcom/autonavi/xmgd/e/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v4, p2, v1}, Lcom/autonavi/xmgd/e/b;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/e/c;

    iget v0, v0, Lcom/autonavi/xmgd/e/c;->d:I

    if-eq v0, v5, :cond_1

    move v1, v3

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/e/c;

    iget-object v4, p0, Lcom/autonavi/xmgd/e/a;->a:Lcom/autonavi/xmgd/e/b;

    invoke-virtual {v4, v0, p2}, Lcom/autonavi/xmgd/e/b;->b(Lcom/autonavi/xmgd/e/c;Ljava/lang/String;)Z

    iput v3, p1, Lcom/autonavi/xmgd/e/c;->d:I

    iget-object v0, p0, Lcom/autonavi/xmgd/e/a;->a:Lcom/autonavi/xmgd/e/b;

    invoke-virtual {v0, p1, p2}, Lcom/autonavi/xmgd/e/b;->a(Lcom/autonavi/xmgd/e/c;Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/autonavi/xmgd/e/a;->a:Lcom/autonavi/xmgd/e/b;

    invoke-virtual {v0, p1, p2, v1}, Lcom/autonavi/xmgd/e/b;->a(Lcom/autonavi/xmgd/e/c;Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/autonavi/xmgd/e/a;->a:Lcom/autonavi/xmgd/e/b;

    invoke-virtual {v0, p1, p2}, Lcom/autonavi/xmgd/e/b;->a(Lcom/autonavi/xmgd/e/c;Ljava/lang/String;)Z

    move-result v0

    if-eq v0, v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_5
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/e/c;

    iget v4, v0, Lcom/autonavi/xmgd/e/c;->d:I

    if-ne v4, v5, :cond_6

    iget-object v4, p0, Lcom/autonavi/xmgd/e/a;->a:Lcom/autonavi/xmgd/e/b;

    invoke-virtual {v4, v0, p2}, Lcom/autonavi/xmgd/e/b;->b(Lcom/autonavi/xmgd/e/c;Ljava/lang/String;)Z

    iget-object v0, v0, Lcom/autonavi/xmgd/e/c;->b:Ljava/lang/String;

    iput-object v0, p1, Lcom/autonavi/xmgd/e/c;->b:Ljava/lang/String;

    iput v3, p1, Lcom/autonavi/xmgd/e/c;->d:I

    iget-object v0, p0, Lcom/autonavi/xmgd/e/a;->a:Lcom/autonavi/xmgd/e/b;

    invoke-virtual {v0, p1, p2}, Lcom/autonavi/xmgd/e/b;->a(Lcom/autonavi/xmgd/e/c;Ljava/lang/String;)Z

    move-result v0

    if-eq v0, v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_6
    move v1, v3

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/xmgd/e/c;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/autonavi/xmgd/e/a;->a:Lcom/autonavi/xmgd/e/b;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/autonavi/xmgd/e/b;->a(ILjava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/e/a;->a:Lcom/autonavi/xmgd/e/b;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/e/b;->close()V

    return-void
.end method

.method public a(Lcom/autonavi/xmgd/e/c;Lcom/autonavi/xmgd/e/c;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x2

    iput v0, p2, Lcom/autonavi/xmgd/e/c;->d:I

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getStringTime()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/autonavi/xmgd/e/c;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/autonavi/xmgd/e/a;->a:Lcom/autonavi/xmgd/e/b;

    invoke-virtual {v0, p1, p2, p3}, Lcom/autonavi/xmgd/e/b;->a(Lcom/autonavi/xmgd/e/c;Lcom/autonavi/xmgd/e/c;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/xmgd/e/c;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/autonavi/xmgd/e/a;->a:Lcom/autonavi/xmgd/e/b;

    invoke-virtual {v0, p1}, Lcom/autonavi/xmgd/e/b;->d(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/autonavi/xmgd/e/c;Ljava/lang/String;)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p1, Lcom/autonavi/xmgd/e/c;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/autonavi/xmgd/e/c;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/e/a;->a:Lcom/autonavi/xmgd/e/b;

    iget-object v3, p1, Lcom/autonavi/xmgd/e/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v3, p2, v1}, Lcom/autonavi/xmgd/e/b;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xmgd/e/a;->a:Lcom/autonavi/xmgd/e/b;

    invoke-virtual {v0, p1, p2, v1}, Lcom/autonavi/xmgd/e/b;->a(Lcom/autonavi/xmgd/e/c;Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/e/c;

    iget v0, v0, Lcom/autonavi/xmgd/e/c;->d:I

    const/4 v4, 0x3

    if-eq v0, v4, :cond_4

    move v0, v2

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/e/a;->a:Lcom/autonavi/xmgd/e/b;

    invoke-virtual {v0, p1}, Lcom/autonavi/xmgd/e/b;->c(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public c(Lcom/autonavi/xmgd/e/c;Ljava/lang/String;)Z
    .locals 2

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/e/a;->a:Lcom/autonavi/xmgd/e/b;

    invoke-virtual {v0, p1, p2}, Lcom/autonavi/xmgd/e/b;->b(Lcom/autonavi/xmgd/e/c;Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/autonavi/xmgd/e/c;->a()Lcom/autonavi/xmgd/e/c;

    move-result-object v0

    const/4 v1, 0x3

    iput v1, v0, Lcom/autonavi/xmgd/e/c;->d:I

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getStringTime()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/autonavi/xmgd/e/c;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/autonavi/xmgd/e/a;->a:Lcom/autonavi/xmgd/e/b;

    invoke-virtual {v1, p1, v0, p2}, Lcom/autonavi/xmgd/e/b;->a(Lcom/autonavi/xmgd/e/c;Lcom/autonavi/xmgd/e/c;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public d(Lcom/autonavi/xmgd/e/c;Ljava/lang/String;)Z
    .locals 4

    const/4 v3, 0x2

    iget-object v0, p0, Lcom/autonavi/xmgd/e/a;->a:Lcom/autonavi/xmgd/e/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v3, p2, v1}, Lcom/autonavi/xmgd/e/b;->a(ILjava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/autonavi/xmgd/e/a;->a:Lcom/autonavi/xmgd/e/b;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/e/c;

    invoke-virtual {v1, v0, p2}, Lcom/autonavi/xmgd/e/b;->b(Lcom/autonavi/xmgd/e/c;Ljava/lang/String;)Z

    :cond_0
    iput v3, p1, Lcom/autonavi/xmgd/e/c;->a:I

    iget-object v0, p0, Lcom/autonavi/xmgd/e/a;->a:Lcom/autonavi/xmgd/e/b;

    invoke-virtual {v0, p1, p2}, Lcom/autonavi/xmgd/e/b;->a(Lcom/autonavi/xmgd/e/c;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public d(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/e/a;->a:Lcom/autonavi/xmgd/e/b;

    invoke-virtual {v0, p1}, Lcom/autonavi/xmgd/e/b;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public e(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/e/a;->a:Lcom/autonavi/xmgd/e/b;

    invoke-virtual {v0, p1}, Lcom/autonavi/xmgd/e/b;->b(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public e(Lcom/autonavi/xmgd/e/c;Ljava/lang/String;)Z
    .locals 4

    const/4 v3, 0x3

    iget-object v0, p0, Lcom/autonavi/xmgd/e/a;->a:Lcom/autonavi/xmgd/e/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v3, p2, v1}, Lcom/autonavi/xmgd/e/b;->a(ILjava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/autonavi/xmgd/e/a;->a:Lcom/autonavi/xmgd/e/b;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/e/c;

    invoke-virtual {v1, v0, p2}, Lcom/autonavi/xmgd/e/b;->b(Lcom/autonavi/xmgd/e/c;Ljava/lang/String;)Z

    :cond_0
    iput v3, p1, Lcom/autonavi/xmgd/e/c;->a:I

    iget-object v0, p0, Lcom/autonavi/xmgd/e/a;->a:Lcom/autonavi/xmgd/e/b;

    invoke-virtual {v0, p1, p2}, Lcom/autonavi/xmgd/e/b;->a(Lcom/autonavi/xmgd/e/c;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public f(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/e/a;->a:Lcom/autonavi/xmgd/e/b;

    invoke-virtual {v0, p1}, Lcom/autonavi/xmgd/e/b;->e(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public g(Ljava/lang/String;)Lcom/autonavi/xmgd/e/c;
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/autonavi/xmgd/e/a;->a:Lcom/autonavi/xmgd/e/b;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1, v2}, Lcom/autonavi/xmgd/e/b;->a(ILjava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/e/c;

    goto :goto_0
.end method

.method public h(Ljava/lang/String;)Lcom/autonavi/xmgd/e/c;
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/autonavi/xmgd/e/a;->a:Lcom/autonavi/xmgd/e/b;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1, v2}, Lcom/autonavi/xmgd/e/b;->a(ILjava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/e/c;

    goto :goto_0
.end method
