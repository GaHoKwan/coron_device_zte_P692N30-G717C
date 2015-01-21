.class public Lcom/autonavi/xmgd/e/e;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/autonavi/xmgd/e/f;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/autonavi/xmgd/e/f;

    invoke-direct {v0}, Lcom/autonavi/xmgd/e/f;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xmgd/e/e;->a:Lcom/autonavi/xmgd/e/f;

    return-void
.end method


# virtual methods
.method public a(Lcom/autonavi/xmgd/e/g;Ljava/lang/String;)I
    .locals 6

    const/4 v5, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p1, Lcom/autonavi/xmgd/e/g;->b:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/autonavi/xmgd/e/g;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/autonavi/xmgd/e/e;->a:Lcom/autonavi/xmgd/e/f;

    iget-object v4, p1, Lcom/autonavi/xmgd/e/g;->b:Ljava/lang/String;

    invoke-virtual {v0, v4, p2, v1}, Lcom/autonavi/xmgd/e/f;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/e/g;

    iget v0, v0, Lcom/autonavi/xmgd/e/g;->d:I

    if-eq v0, v5, :cond_1

    move v1, v3

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/e/g;

    iget-object v4, p0, Lcom/autonavi/xmgd/e/e;->a:Lcom/autonavi/xmgd/e/f;

    invoke-virtual {v4, v0, p2}, Lcom/autonavi/xmgd/e/f;->b(Lcom/autonavi/xmgd/e/g;Ljava/lang/String;)Z

    iput v3, p1, Lcom/autonavi/xmgd/e/g;->d:I

    iget-object v0, p0, Lcom/autonavi/xmgd/e/e;->a:Lcom/autonavi/xmgd/e/f;

    invoke-virtual {v0, p1, p2}, Lcom/autonavi/xmgd/e/f;->a(Lcom/autonavi/xmgd/e/g;Ljava/lang/String;)Z

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
    iget-object v0, p0, Lcom/autonavi/xmgd/e/e;->a:Lcom/autonavi/xmgd/e/f;

    invoke-virtual {v0, p1, p2, v1}, Lcom/autonavi/xmgd/e/f;->a(Lcom/autonavi/xmgd/e/g;Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/autonavi/xmgd/e/e;->a:Lcom/autonavi/xmgd/e/f;

    invoke-virtual {v0, p1, p2}, Lcom/autonavi/xmgd/e/f;->a(Lcom/autonavi/xmgd/e/g;Ljava/lang/String;)Z

    move-result v0

    if-eq v0, v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_5
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/e/g;

    iget v4, v0, Lcom/autonavi/xmgd/e/g;->d:I

    if-ne v4, v5, :cond_6

    iget-object v4, p0, Lcom/autonavi/xmgd/e/e;->a:Lcom/autonavi/xmgd/e/f;

    invoke-virtual {v4, v0, p2}, Lcom/autonavi/xmgd/e/f;->b(Lcom/autonavi/xmgd/e/g;Ljava/lang/String;)Z

    iget-object v0, v0, Lcom/autonavi/xmgd/e/g;->b:Ljava/lang/String;

    iput-object v0, p1, Lcom/autonavi/xmgd/e/g;->b:Ljava/lang/String;

    iput v3, p1, Lcom/autonavi/xmgd/e/g;->d:I

    iget-object v0, p0, Lcom/autonavi/xmgd/e/e;->a:Lcom/autonavi/xmgd/e/f;

    invoke-virtual {v0, p1, p2}, Lcom/autonavi/xmgd/e/f;->a(Lcom/autonavi/xmgd/e/g;Ljava/lang/String;)Z

    move-result v0

    if-eq v0, v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_6
    move v1, v3

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
            "Lcom/autonavi/xmgd/e/g;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/autonavi/xmgd/e/e;->a:Lcom/autonavi/xmgd/e/f;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/autonavi/xmgd/e/f;->a(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/e/e;->a:Lcom/autonavi/xmgd/e/f;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/e/f;->close()V

    return-void
.end method

.method public a(Lcom/autonavi/xmgd/e/g;Lcom/autonavi/xmgd/e/g;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x2

    iput v0, p2, Lcom/autonavi/xmgd/e/g;->d:I

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getStringTime()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/autonavi/xmgd/e/g;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/autonavi/xmgd/e/e;->a:Lcom/autonavi/xmgd/e/f;

    invoke-virtual {v0, p1, p2, p3}, Lcom/autonavi/xmgd/e/f;->a(Lcom/autonavi/xmgd/e/g;Lcom/autonavi/xmgd/e/g;Ljava/lang/String;)Z

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
            "Lcom/autonavi/xmgd/e/g;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/autonavi/xmgd/e/e;->a:Lcom/autonavi/xmgd/e/f;

    invoke-virtual {v0, p1}, Lcom/autonavi/xmgd/e/f;->d(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/autonavi/xmgd/e/g;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/autonavi/xmgd/e/g;->b:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/autonavi/xmgd/e/g;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/autonavi/xmgd/e/e;->a:Lcom/autonavi/xmgd/e/f;

    iget-object v3, p1, Lcom/autonavi/xmgd/e/g;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, p2, v1}, Lcom/autonavi/xmgd/e/f;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/autonavi/xmgd/e/e;->a:Lcom/autonavi/xmgd/e/f;

    invoke-virtual {v2, p1, p2, v1}, Lcom/autonavi/xmgd/e/f;->a(Lcom/autonavi/xmgd/e/g;Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/e/e;->a:Lcom/autonavi/xmgd/e/f;

    invoke-virtual {v0, p1}, Lcom/autonavi/xmgd/e/f;->c(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public c(Lcom/autonavi/xmgd/e/g;Ljava/lang/String;)Z
    .locals 2

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/e/e;->a:Lcom/autonavi/xmgd/e/f;

    invoke-virtual {v0, p1, p2}, Lcom/autonavi/xmgd/e/f;->b(Lcom/autonavi/xmgd/e/g;Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    new-instance v0, Lcom/autonavi/xmgd/e/g;

    invoke-direct {v0}, Lcom/autonavi/xmgd/e/g;-><init>()V

    iget-object v1, p1, Lcom/autonavi/xmgd/e/g;->a:Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;

    iput-object v1, v0, Lcom/autonavi/xmgd/e/g;->a:Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;

    iget-object v1, p1, Lcom/autonavi/xmgd/e/g;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/autonavi/xmgd/e/g;->b:Ljava/lang/String;

    const/4 v1, 0x3

    iput v1, v0, Lcom/autonavi/xmgd/e/g;->d:I

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getStringTime()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/autonavi/xmgd/e/g;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/autonavi/xmgd/e/e;->a:Lcom/autonavi/xmgd/e/f;

    invoke-virtual {v1, p1, v0, p2}, Lcom/autonavi/xmgd/e/f;->a(Lcom/autonavi/xmgd/e/g;Lcom/autonavi/xmgd/e/g;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public d(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/e/e;->a:Lcom/autonavi/xmgd/e/f;

    invoke-virtual {v0, p1}, Lcom/autonavi/xmgd/e/f;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public e(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/e/e;->a:Lcom/autonavi/xmgd/e/f;

    invoke-virtual {v0, p1}, Lcom/autonavi/xmgd/e/f;->b(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public f(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/e/e;->a:Lcom/autonavi/xmgd/e/f;

    invoke-virtual {v0, p1}, Lcom/autonavi/xmgd/e/f;->e(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
