.class Lcom/zte/privacy/b;
.super Ljava/lang/Object;


# static fields
.field private static final n:I


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/zte/privacy/B;Lcom/zte/privacy/o;Lcom/zte/privacy/an;)V
    .locals 9

    const/4 v1, 0x0

    invoke-interface {p1}, Lcom/zte/privacy/o;->ab()I

    move-result v3

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_3

    invoke-interface {p1}, Lcom/zte/privacy/o;->ab()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/zte/privacy/o;->r(I)V

    :try_start_0
    invoke-interface {p1}, Lcom/zte/privacy/o;->aa()I

    move-result v0

    invoke-interface {p1}, Lcom/zte/privacy/o;->ac()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {p0, v4}, Lcom/zte/privacy/B;->getType(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    invoke-interface {p2, v4, v0}, Lcom/zte/privacy/an;->c(Ljava/lang/String;Z)Lcom/zte/privacy/m;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-interface {p1}, Lcom/zte/privacy/o;->ac()J

    move-result-wide v5

    move v0, v1

    :goto_2
    int-to-long v7, v0

    cmp-long v7, v7, v5

    if-gez v7, :cond_1

    invoke-interface {p1}, Lcom/zte/privacy/o;->ac()J

    move-result-wide v7

    long-to-int v7, v7

    invoke-virtual {p0, v7}, Lcom/zte/privacy/B;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, p1}, Lcom/zte/privacy/L;->a(Lcom/zte/privacy/B;Lcom/zte/privacy/o;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v4, v7, v8}, Lcom/zte/privacy/b;->a(Lcom/zte/privacy/m;Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    invoke-interface {v4}, Lcom/zte/privacy/m;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    invoke-interface {p1}, Lcom/zte/privacy/o;->Q()V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Lcom/zte/privacy/o;->Q()V

    throw v0

    :cond_3
    return-void
.end method

.method private static a(Lcom/zte/privacy/m;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5

    instance-of v0, p2, [Ljava/lang/Object;

    if-eqz v0, :cond_2

    invoke-interface {p0, p1}, Lcom/zte/privacy/m;->g(Ljava/lang/String;)Lcom/zte/privacy/m;

    move-result-object v1

    if-eqz v1, :cond_1

    check-cast p2, [Ljava/lang/Object;

    check-cast p2, [Ljava/lang/Object;

    array-length v2, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p2, v0

    const/4 v4, 0x0

    invoke-static {v1, v4, v3}, Lcom/zte/privacy/b;->a(Lcom/zte/privacy/m;Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Lcom/zte/privacy/m;->a()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    instance-of v0, p2, Lcom/zte/privacy/G;

    if-eqz v0, :cond_4

    check-cast p2, Lcom/zte/privacy/G;

    iget-object v0, p2, Lcom/zte/privacy/G;->type:Ljava/lang/String;

    invoke-interface {p0, p1, v0}, Lcom/zte/privacy/m;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/zte/privacy/m;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v0, p2, Lcom/zte/privacy/G;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/privacy/H;

    iget-object v3, v0, Lcom/zte/privacy/H;->name:Ljava/lang/String;

    iget-object v0, v0, Lcom/zte/privacy/H;->value:Ljava/lang/Object;

    invoke-static {v1, v3, v0}, Lcom/zte/privacy/b;->a(Lcom/zte/privacy/m;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    invoke-interface {v1}, Lcom/zte/privacy/m;->a()V

    goto :goto_1

    :cond_4
    instance-of v0, p2, Lcom/zte/privacy/ac;

    if-eqz v0, :cond_5

    check-cast p2, Lcom/zte/privacy/ac;

    invoke-virtual {p2}, Lcom/zte/privacy/ac;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/zte/privacy/ac;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, p1, v0, v1}, Lcom/zte/privacy/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    invoke-interface {p0, p1, p2}, Lcom/zte/privacy/m;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1
.end method
