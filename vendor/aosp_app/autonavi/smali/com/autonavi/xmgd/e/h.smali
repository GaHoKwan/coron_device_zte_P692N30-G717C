.class public Lcom/autonavi/xmgd/e/h;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/autonavi/xmgd/e/i;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/autonavi/xmgd/e/i;

    invoke-direct {v0}, Lcom/autonavi/xmgd/e/i;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xmgd/e/h;->a:Lcom/autonavi/xmgd/e/i;

    return-void
.end method


# virtual methods
.method public a(Lcom/autonavi/xmgd/e/j;Ljava/lang/String;)I
    .locals 8

    const v7, 0x2faf080

    const v6, 0x2faf07f

    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v0, p1, Lcom/autonavi/xmgd/e/j;->b:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/autonavi/xmgd/e/j;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/autonavi/xmgd/e/h;->a:Lcom/autonavi/xmgd/e/i;

    iget-object v1, p1, Lcom/autonavi/xmgd/e/j;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p2, v2}, Lcom/autonavi/xmgd/e/i;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/autonavi/xmgd/e/h;->a:Lcom/autonavi/xmgd/e/i;

    invoke-virtual {v0, p2}, Lcom/autonavi/xmgd/e/i;->b(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v7, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/e/h;->a:Lcom/autonavi/xmgd/e/i;

    invoke-virtual {v0, p2, v3}, Lcom/autonavi/xmgd/e/i;->a(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v5, p0, Lcom/autonavi/xmgd/e/h;->a:Lcom/autonavi/xmgd/e/i;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/e/j;

    invoke-virtual {v5, v0, p2}, Lcom/autonavi/xmgd/e/i;->b(Lcom/autonavi/xmgd/e/j;Ljava/lang/String;)Z

    :cond_0
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/e/j;

    iget-object v1, p0, Lcom/autonavi/xmgd/e/h;->a:Lcom/autonavi/xmgd/e/i;

    invoke-virtual {v1, v0, p2}, Lcom/autonavi/xmgd/e/i;->b(Lcom/autonavi/xmgd/e/j;Ljava/lang/String;)Z

    iput v4, p1, Lcom/autonavi/xmgd/e/j;->d:I

    iget-object v0, p0, Lcom/autonavi/xmgd/e/h;->a:Lcom/autonavi/xmgd/e/i;

    invoke-virtual {v0, p1, p2}, Lcom/autonavi/xmgd/e/i;->a(Lcom/autonavi/xmgd/e/j;Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v2, :cond_2

    move v0, v2

    :goto_0
    move v2, v0

    :cond_1
    :goto_1
    return v2

    :cond_2
    move v0, v3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/autonavi/xmgd/e/h;->a:Lcom/autonavi/xmgd/e/i;

    invoke-virtual {v0, p1, p2, v2}, Lcom/autonavi/xmgd/e/i;->a(Lcom/autonavi/xmgd/e/j;Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_6

    :cond_4
    iget-object v0, p0, Lcom/autonavi/xmgd/e/h;->a:Lcom/autonavi/xmgd/e/i;

    invoke-virtual {v0, p2}, Lcom/autonavi/xmgd/e/i;->b(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v7, :cond_5

    iget-object v0, p0, Lcom/autonavi/xmgd/e/h;->a:Lcom/autonavi/xmgd/e/i;

    invoke-virtual {v0, p2, v3}, Lcom/autonavi/xmgd/e/i;->a(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/e/h;->a:Lcom/autonavi/xmgd/e/i;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/e/j;

    invoke-virtual {v1, v0, p2}, Lcom/autonavi/xmgd/e/i;->b(Lcom/autonavi/xmgd/e/j;Ljava/lang/String;)Z

    :cond_5
    iget-object v0, p0, Lcom/autonavi/xmgd/e/h;->a:Lcom/autonavi/xmgd/e/i;

    invoke-virtual {v0, p1, p2}, Lcom/autonavi/xmgd/e/i;->a(Lcom/autonavi/xmgd/e/j;Ljava/lang/String;)Z

    move-result v0

    if-eq v0, v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_6
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/e/j;

    iget v1, v0, Lcom/autonavi/xmgd/e/j;->d:I

    const/4 v5, 0x3

    if-ne v1, v5, :cond_8

    iget-object v1, p0, Lcom/autonavi/xmgd/e/h;->a:Lcom/autonavi/xmgd/e/i;

    invoke-virtual {v1, p2}, Lcom/autonavi/xmgd/e/i;->b(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v7, :cond_7

    iget-object v1, p0, Lcom/autonavi/xmgd/e/h;->a:Lcom/autonavi/xmgd/e/i;

    invoke-virtual {v1, p2, v3}, Lcom/autonavi/xmgd/e/i;->a(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v5, p0, Lcom/autonavi/xmgd/e/h;->a:Lcom/autonavi/xmgd/e/i;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/autonavi/xmgd/e/j;

    invoke-virtual {v5, v1, p2}, Lcom/autonavi/xmgd/e/i;->b(Lcom/autonavi/xmgd/e/j;Ljava/lang/String;)Z

    :cond_7
    iget-object v1, p0, Lcom/autonavi/xmgd/e/h;->a:Lcom/autonavi/xmgd/e/i;

    invoke-virtual {v1, v0, p2}, Lcom/autonavi/xmgd/e/i;->b(Lcom/autonavi/xmgd/e/j;Ljava/lang/String;)Z

    iget-object v0, v0, Lcom/autonavi/xmgd/e/j;->b:Ljava/lang/String;

    iput-object v0, p1, Lcom/autonavi/xmgd/e/j;->b:Ljava/lang/String;

    iput v4, p1, Lcom/autonavi/xmgd/e/j;->d:I

    iget-object v0, p0, Lcom/autonavi/xmgd/e/h;->a:Lcom/autonavi/xmgd/e/i;

    invoke-virtual {v0, p1, p2}, Lcom/autonavi/xmgd/e/i;->a(Lcom/autonavi/xmgd/e/j;Ljava/lang/String;)Z

    move-result v0

    if-eq v0, v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_8
    invoke-virtual {p1}, Lcom/autonavi/xmgd/e/j;->a()Lcom/autonavi/xmgd/e/j;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/e/h;->a:Lcom/autonavi/xmgd/e/i;

    invoke-virtual {v1, p1, v0, p2}, Lcom/autonavi/xmgd/e/i;->a(Lcom/autonavi/xmgd/e/j;Lcom/autonavi/xmgd/e/j;Ljava/lang/String;)Z

    move v2, v4

    goto :goto_1
.end method

.method public a(Ljava/util/ArrayList;Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/xmgd/e/j;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/autonavi/xmgd/e/h;->a:Lcom/autonavi/xmgd/e/i;

    invoke-virtual {v1, p1, p2}, Lcom/autonavi/xmgd/e/i;->a(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/xmgd/e/j;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/autonavi/xmgd/e/h;->a:Lcom/autonavi/xmgd/e/i;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/autonavi/xmgd/e/i;->a(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/e/h;->a:Lcom/autonavi/xmgd/e/i;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/e/i;->close()V

    return-void
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
            "Lcom/autonavi/xmgd/e/j;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/autonavi/xmgd/e/h;->a:Lcom/autonavi/xmgd/e/i;

    invoke-virtual {v0, p1}, Lcom/autonavi/xmgd/e/i;->d(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/autonavi/xmgd/e/j;Ljava/lang/String;)Z
    .locals 2

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/e/h;->a:Lcom/autonavi/xmgd/e/i;

    invoke-virtual {v0, p1, p2}, Lcom/autonavi/xmgd/e/i;->b(Lcom/autonavi/xmgd/e/j;Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/autonavi/xmgd/e/j;->a()Lcom/autonavi/xmgd/e/j;

    move-result-object v0

    const/4 v1, 0x3

    iput v1, v0, Lcom/autonavi/xmgd/e/j;->d:I

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getStringTime()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/autonavi/xmgd/e/j;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/autonavi/xmgd/e/h;->a:Lcom/autonavi/xmgd/e/i;

    invoke-virtual {v1, p1, v0, p2}, Lcom/autonavi/xmgd/e/i;->a(Lcom/autonavi/xmgd/e/j;Lcom/autonavi/xmgd/e/j;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/e/h;->a:Lcom/autonavi/xmgd/e/i;

    invoke-virtual {v0, p1}, Lcom/autonavi/xmgd/e/i;->c(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public d(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/e/h;->a:Lcom/autonavi/xmgd/e/i;

    invoke-virtual {v0, p1}, Lcom/autonavi/xmgd/e/i;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public e(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/e/h;->a:Lcom/autonavi/xmgd/e/i;

    invoke-virtual {v0, p1}, Lcom/autonavi/xmgd/e/i;->e(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
