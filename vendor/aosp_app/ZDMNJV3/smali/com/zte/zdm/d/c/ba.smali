.class public Lcom/zte/zdm/d/c/ba;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()J
    .locals 2

    const-wide/16 v0, 0x2b

    return-wide v0
.end method

.method public static a(Lcom/zte/zdm/d/c/a;)J
    .locals 8

    const-wide/16 v2, 0x0

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/a;->a()Lcom/zte/zdm/d/c/m;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/a;->d()Lcom/zte/zdm/d/c/s;

    move-result-object v5

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/zte/zdm/d/c/ba;->a(Lcom/zte/zdm/d/c/m;)J

    move-result-wide v0

    :goto_0
    invoke-virtual {p0}, Lcom/zte/zdm/d/c/a;->b()Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x12

    :goto_1
    int-to-long v6, v4

    add-long/2addr v0, v6

    if-eqz v5, :cond_0

    invoke-static {v5}, Lcom/zte/zdm/d/c/ba;->a(Lcom/zte/zdm/d/c/s;)J

    move-result-wide v2

    :cond_0
    add-long/2addr v0, v2

    return-wide v0

    :cond_1
    move-wide v0, v2

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static a(Lcom/zte/zdm/d/c/aa;)J
    .locals 9

    const-wide/16 v0, 0x0

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/aa;->a()Lcom/zte/zdm/d/c/bm;

    move-result-object v2

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/aa;->b()Lcom/zte/zdm/d/c/bb;

    move-result-object v4

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/aa;->c()Lcom/zte/zdm/d/c/ap;

    move-result-object v5

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/aa;->d()Lcom/zte/zdm/d/c/z;

    move-result-object v6

    const-wide/16 v7, 0xf

    if-eqz v2, :cond_1

    invoke-static {v2}, Lcom/zte/zdm/d/c/ba;->a(Lcom/zte/zdm/d/c/bm;)J

    move-result-wide v2

    :goto_0
    add-long/2addr v7, v2

    if-eqz v4, :cond_2

    invoke-static {v4}, Lcom/zte/zdm/d/c/ba;->a(Lcom/zte/zdm/d/c/bb;)J

    move-result-wide v2

    :goto_1
    add-long/2addr v7, v2

    if-eqz v5, :cond_3

    invoke-static {v5}, Lcom/zte/zdm/d/c/ba;->a(Lcom/zte/zdm/d/c/ap;)J

    move-result-wide v2

    :goto_2
    add-long/2addr v2, v7

    if-eqz v6, :cond_0

    invoke-static {v6}, Lcom/zte/zdm/d/c/ba;->a(Lcom/zte/zdm/d/c/z;)J

    move-result-wide v0

    :cond_0
    add-long/2addr v0, v2

    return-wide v0

    :cond_1
    move-wide v2, v0

    goto :goto_0

    :cond_2
    move-wide v2, v0

    goto :goto_1

    :cond_3
    move-wide v2, v0

    goto :goto_2
.end method

.method public static a(Lcom/zte/zdm/d/c/ad;)J
    .locals 2

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/ad;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0xc

    int-to-long v0, v0

    return-wide v0
.end method

.method public static a(Lcom/zte/zdm/d/c/ae;)J
    .locals 9

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/ae;->k()Ljava/util/ArrayList;

    move-result-object v4

    const-wide/16 v0, 0xe

    invoke-static {p0}, Lcom/zte/zdm/d/c/ba;->a(Lcom/zte/zdm/d/c/a;)J

    move-result-wide v2

    add-long v1, v0, v2

    const/4 v0, 0x0

    move-wide v7, v1

    move-wide v2, v7

    move v1, v0

    :goto_0
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/d/c/ai;

    invoke-static {v0}, Lcom/zte/zdm/d/c/ba;->a(Lcom/zte/zdm/d/c/ai;)J

    move-result-wide v5

    add-long/2addr v2, v5

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-wide v2
.end method

.method public static a(Lcom/zte/zdm/d/c/af;)J
    .locals 11

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/af;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/af;->b()Ljava/util/ArrayList;

    move-result-object v6

    const-wide/16 v2, 0xd

    move-wide v9, v2

    move-wide v3, v9

    move v2, v1

    :goto_0
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0xe

    int-to-long v7, v0

    add-long/2addr v3, v7

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0xe

    :goto_1
    int-to-long v0, v0

    add-long/2addr v0, v3

    return-wide v0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public static a(Lcom/zte/zdm/d/c/ag;)J
    .locals 10

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/ag;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/ag;->e()Lcom/zte/zdm/d/c/ap;

    move-result-object v1

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/ag;->k()Ljava/util/ArrayList;

    move-result-object v4

    const-wide/16 v5, 0xd

    invoke-static {p0}, Lcom/zte/zdm/d/c/ba;->a(Lcom/zte/zdm/d/c/a;)J

    move-result-wide v7

    add-long/2addr v5, v7

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0xe

    :goto_0
    int-to-long v7, v0

    add-long/2addr v5, v7

    if-eqz v1, :cond_1

    invoke-static {v1}, Lcom/zte/zdm/d/c/ba;->a(Lcom/zte/zdm/d/c/ap;)J

    move-result-wide v0

    :goto_1
    add-long/2addr v0, v5

    move v9, v2

    move-wide v2, v0

    move v1, v9

    :goto_2
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/d/c/ai;

    invoke-static {v0}, Lcom/zte/zdm/d/c/ba;->a(Lcom/zte/zdm/d/c/ai;)J

    move-result-wide v5

    add-long/2addr v2, v5

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_1

    :cond_2
    return-wide v2
.end method

.method public static a(Lcom/zte/zdm/d/c/ai;)J
    .locals 9

    const-wide/16 v0, 0x0

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/ai;->a()Lcom/zte/zdm/d/c/bm;

    move-result-object v2

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/ai;->b()Lcom/zte/zdm/d/c/bb;

    move-result-object v4

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/ai;->c()Lcom/zte/zdm/d/c/ap;

    move-result-object v5

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/ai;->e()Lcom/zte/zdm/d/c/n;

    move-result-object v6

    const-wide/16 v7, 0xf

    if-eqz v2, :cond_1

    invoke-static {v2}, Lcom/zte/zdm/d/c/ba;->a(Lcom/zte/zdm/d/c/bm;)J

    move-result-wide v2

    :goto_0
    add-long/2addr v7, v2

    if-eqz v4, :cond_2

    invoke-static {v4}, Lcom/zte/zdm/d/c/ba;->a(Lcom/zte/zdm/d/c/bb;)J

    move-result-wide v2

    :goto_1
    add-long/2addr v7, v2

    if-eqz v5, :cond_3

    invoke-static {v5}, Lcom/zte/zdm/d/c/ba;->a(Lcom/zte/zdm/d/c/ap;)J

    move-result-wide v2

    :goto_2
    add-long/2addr v2, v7

    if-eqz v6, :cond_0

    invoke-static {v6}, Lcom/zte/zdm/d/c/ba;->a(Lcom/zte/zdm/d/c/n;)J

    move-result-wide v0

    :cond_0
    add-long v1, v2, v0

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/ai;->f()Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x16

    :goto_3
    int-to-long v3, v0

    add-long v0, v1, v3

    return-wide v0

    :cond_1
    move-wide v2, v0

    goto :goto_0

    :cond_2
    move-wide v2, v0

    goto :goto_1

    :cond_3
    move-wide v2, v0

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public static a(Lcom/zte/zdm/d/c/aj;)J
    .locals 9

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/aj;->e()Lcom/zte/zdm/d/c/ap;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/aj;->k()Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {p0}, Lcom/zte/zdm/d/c/ba;->a(Lcom/zte/zdm/d/c/a;)J

    move-result-wide v2

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/zte/zdm/d/c/ba;->a(Lcom/zte/zdm/d/c/ap;)J

    move-result-wide v0

    :goto_0
    add-long v1, v2, v0

    const/4 v0, 0x0

    move-wide v7, v1

    move-wide v2, v7

    move v1, v0

    :goto_1
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/d/c/ai;

    invoke-static {v0}, Lcom/zte/zdm/d/c/ba;->a(Lcom/zte/zdm/d/c/ai;)J

    move-result-wide v5

    add-long/2addr v2, v5

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_1
    return-wide v2
.end method

.method public static a(Lcom/zte/zdm/d/c/ak;)J
    .locals 13

    const-wide/16 v0, 0x0

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/ak;->g()Lcom/zte/zdm/d/c/bm;

    move-result-object v2

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/ak;->h()Lcom/zte/zdm/d/c/bb;

    move-result-object v4

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/ak;->e()Lcom/zte/zdm/d/c/ap;

    move-result-object v5

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/ak;->i()Ljava/util/ArrayList;

    move-result-object v6

    const-wide/16 v7, 0xd

    invoke-static {p0}, Lcom/zte/zdm/d/c/ba;->a(Lcom/zte/zdm/d/c/a;)J

    move-result-wide v9

    add-long/2addr v7, v9

    if-eqz v2, :cond_1

    invoke-static {v2}, Lcom/zte/zdm/d/c/ba;->a(Lcom/zte/zdm/d/c/bm;)J

    move-result-wide v2

    :goto_0
    add-long/2addr v7, v2

    if-eqz v4, :cond_2

    invoke-static {v4}, Lcom/zte/zdm/d/c/ba;->a(Lcom/zte/zdm/d/c/bb;)J

    move-result-wide v2

    :goto_1
    add-long/2addr v2, v7

    if-eqz v5, :cond_0

    invoke-static {v5}, Lcom/zte/zdm/d/c/ba;->a(Lcom/zte/zdm/d/c/ap;)J

    move-result-wide v0

    :cond_0
    add-long v1, v2, v0

    const/4 v0, 0x0

    move-wide v11, v1

    move-wide v2, v11

    move v1, v0

    :goto_2
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/d/c/al;

    invoke-static {v0}, Lcom/zte/zdm/d/c/ba;->a(Lcom/zte/zdm/d/c/al;)J

    move-result-wide v4

    add-long/2addr v2, v4

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_1
    move-wide v2, v0

    goto :goto_0

    :cond_2
    move-wide v2, v0

    goto :goto_1

    :cond_3
    return-wide v2
.end method

.method public static a(Lcom/zte/zdm/d/c/al;)J
    .locals 7

    const-wide/16 v0, 0x0

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/al;->a()Lcom/zte/zdm/d/c/bm;

    move-result-object v2

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/al;->b()Lcom/zte/zdm/d/c/bb;

    move-result-object v4

    const-wide/16 v5, 0x15

    if-eqz v2, :cond_1

    invoke-static {v2}, Lcom/zte/zdm/d/c/ba;->a(Lcom/zte/zdm/d/c/bm;)J

    move-result-wide v2

    :goto_0
    add-long/2addr v2, v5

    if-eqz v4, :cond_0

    invoke-static {v4}, Lcom/zte/zdm/d/c/ba;->a(Lcom/zte/zdm/d/c/bb;)J

    move-result-wide v0

    :cond_0
    add-long/2addr v0, v2

    return-wide v0

    :cond_1
    move-wide v2, v0

    goto :goto_0
.end method

.method public static a(Lcom/zte/zdm/d/c/an;)J
    .locals 9

    const-wide/16 v7, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/an;->a()Z

    move-result v1

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/an;->c()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/an;->d()J

    move-result-wide v4

    if-eqz v1, :cond_1

    const/16 v1, 0x12

    :goto_0
    add-int/lit8 v6, v1, 0xd

    cmp-long v1, v2, v7

    if-eqz v1, :cond_2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x14

    :goto_1
    add-int/2addr v1, v6

    cmp-long v2, v4, v7

    if-eqz v2, :cond_0

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x12

    :cond_0
    add-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0

    :cond_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v1, v0

    goto :goto_1
.end method

.method public static a(Lcom/zte/zdm/d/c/ap;)J
    .locals 14

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/ap;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/ap;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/ap;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/ap;->c()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/ap;->g()Lcom/zte/zdm/d/c/e;

    move-result-object v4

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/ap;->h()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/ap;->i()Lcom/zte/zdm/d/c/ar;

    move-result-object v6

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/ap;->j()Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/ap;->k()Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/ap;->l()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/ap;->m()Lcom/zte/zdm/d/c/an;

    move-result-object v10

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x12

    :goto_0
    add-int/lit8 v11, v0, 0x25

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0xe

    :goto_1
    add-int v1, v11, v0

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0xe

    :goto_2
    add-int/2addr v1, v0

    if-eqz v3, :cond_3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0xe

    :goto_3
    add-int/2addr v0, v1

    int-to-long v2, v0

    if-eqz v4, :cond_4

    invoke-static {v4}, Lcom/zte/zdm/d/c/ba;->a(Lcom/zte/zdm/d/c/e;)J

    move-result-wide v0

    :goto_4
    add-long v1, v2, v0

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x14

    :goto_5
    int-to-long v3, v0

    add-long v2, v1, v3

    if-eqz v6, :cond_6

    invoke-static {v6}, Lcom/zte/zdm/d/c/ba;->a(Lcom/zte/zdm/d/c/ar;)J

    move-result-wide v0

    :goto_6
    add-long v1, v2, v0

    if-eqz v7, :cond_7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1a

    :goto_7
    int-to-long v3, v0

    add-long/2addr v1, v3

    if-eqz v8, :cond_8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1a

    :goto_8
    int-to-long v3, v0

    add-long v2, v1, v3

    if-eqz v10, :cond_9

    invoke-static {v10}, Lcom/zte/zdm/d/c/ba;->a(Lcom/zte/zdm/d/c/an;)J

    move-result-wide v0

    :goto_9
    add-long v1, v2, v0

    const/4 v0, 0x0

    move-wide v12, v1

    move-wide v2, v12

    move v1, v0

    :goto_a
    if-eqz v9, :cond_a

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_a

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/d/c/ad;

    invoke-static {v0}, Lcom/zte/zdm/d/c/ba;->a(Lcom/zte/zdm/d/c/ad;)J

    move-result-wide v4

    add-long/2addr v2, v4

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_a

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    goto :goto_3

    :cond_4
    const-wide/16 v0, 0x0

    goto :goto_4

    :cond_5
    const/4 v0, 0x0

    goto :goto_5

    :cond_6
    const-wide/16 v0, 0x0

    goto :goto_6

    :cond_7
    const/4 v0, 0x0

    goto :goto_7

    :cond_8
    const/4 v0, 0x0

    goto :goto_8

    :cond_9
    const-wide/16 v0, 0x0

    goto :goto_9

    :cond_a
    return-wide v2
.end method

.method public static a(Lcom/zte/zdm/d/c/aq;)J
    .locals 2

    invoke-static {p0}, Lcom/zte/zdm/d/c/ba;->a(Lcom/zte/zdm/d/c/aj;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Lcom/zte/zdm/d/c/ar;)J
    .locals 2

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/ar;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x18

    int-to-long v0, v0

    return-wide v0
.end method

.method public static a(Lcom/zte/zdm/d/c/as;)J
    .locals 10

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/as;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/as;->e()Lcom/zte/zdm/d/c/ap;

    move-result-object v1

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/as;->k()Ljava/util/ArrayList;

    move-result-object v4

    const-wide/16 v5, 0xe

    invoke-static {p0}, Lcom/zte/zdm/d/c/ba;->a(Lcom/zte/zdm/d/c/a;)J

    move-result-wide v7

    add-long/2addr v5, v7

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0xe

    :goto_0
    int-to-long v7, v0

    add-long/2addr v5, v7

    if-eqz v1, :cond_1

    invoke-static {v1}, Lcom/zte/zdm/d/c/ba;->a(Lcom/zte/zdm/d/c/ap;)J

    move-result-wide v0

    :goto_1
    add-long/2addr v0, v5

    move v9, v2

    move-wide v2, v0

    move v1, v9

    :goto_2
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/d/c/aa;

    invoke-static {v0}, Lcom/zte/zdm/d/c/ba;->a(Lcom/zte/zdm/d/c/aa;)J

    move-result-wide v5

    add-long/2addr v2, v5

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_1

    :cond_2
    return-wide v2
.end method

.method public static a(Lcom/zte/zdm/d/c/at;)J
    .locals 9

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/at;->e()Lcom/zte/zdm/d/c/ap;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/at;->k()Ljava/util/ArrayList;

    move-result-object v4

    const-wide/16 v1, 0x15

    invoke-static {p0}, Lcom/zte/zdm/d/c/ba;->a(Lcom/zte/zdm/d/c/a;)J

    move-result-wide v5

    add-long v2, v1, v5

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/zte/zdm/d/c/ba;->a(Lcom/zte/zdm/d/c/ap;)J

    move-result-wide v0

    :goto_0
    add-long v1, v2, v0

    const/4 v0, 0x0

    move-wide v7, v1

    move-wide v2, v7

    move v1, v0

    :goto_1
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/d/c/ai;

    invoke-static {v0}, Lcom/zte/zdm/d/c/ba;->a(Lcom/zte/zdm/d/c/ai;)J

    move-result-wide v5

    add-long/2addr v2, v5

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_1
    return-wide v2
.end method

.method public static a(Lcom/zte/zdm/d/c/av;)J
    .locals 9

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/av;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/av;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/av;->i()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/av;->j()Ljava/util/ArrayList;

    move-result-object v6

    invoke-static {p0}, Lcom/zte/zdm/d/c/ba;->a(Lcom/zte/zdm/d/c/aj;)J

    move-result-wide v3

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x12

    :goto_0
    int-to-long v7, v0

    add-long/2addr v3, v7

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x12

    :goto_1
    int-to-long v7, v0

    add-long v2, v3, v7

    move v4, v1

    :goto_2
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_2

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/d/c/bn;

    invoke-static {v0}, Lcom/zte/zdm/d/c/ba;->a(Lcom/zte/zdm/d/c/bn;)J

    move-result-wide v7

    add-long/2addr v2, v7

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_2

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    :goto_3
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/d/c/bc;

    invoke-static {v0}, Lcom/zte/zdm/d/c/ba;->a(Lcom/zte/zdm/d/c/bc;)J

    move-result-wide v4

    add-long/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    return-wide v2
.end method

.method public static a(Lcom/zte/zdm/d/c/aw;)J
    .locals 14

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/aw;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/aw;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/aw;->e()Lcom/zte/zdm/d/c/ap;

    move-result-object v3

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/aw;->i()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/aw;->j()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/aw;->k()Ljava/util/ArrayList;

    move-result-object v7

    const-wide/16 v8, 0x15

    invoke-static {p0}, Lcom/zte/zdm/d/c/ba;->a(Lcom/zte/zdm/d/c/a;)J

    move-result-wide v10

    add-long/2addr v8, v10

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x12

    :goto_0
    int-to-long v10, v0

    add-long/2addr v8, v10

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x12

    :goto_1
    int-to-long v0, v0

    add-long/2addr v8, v0

    if-eqz v3, :cond_2

    invoke-static {v3}, Lcom/zte/zdm/d/c/ba;->a(Lcom/zte/zdm/d/c/ap;)J

    move-result-wide v0

    :goto_2
    add-long v3, v8, v0

    move v1, v2

    :goto_3
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/d/c/bn;

    invoke-static {v0}, Lcom/zte/zdm/d/c/ba;->a(Lcom/zte/zdm/d/c/bn;)J

    move-result-wide v8

    add-long/2addr v3, v8

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    const-wide/16 v0, 0x0

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_4
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/d/c/bc;

    invoke-static {v0}, Lcom/zte/zdm/d/c/ba;->a(Lcom/zte/zdm/d/c/bc;)J

    move-result-wide v8

    add-long/2addr v3, v8

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    :cond_4
    move v1, v2

    move-wide v12, v3

    move-wide v2, v12

    :goto_5
    if-eqz v7, :cond_5

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/d/c/ai;

    invoke-static {v0}, Lcom/zte/zdm/d/c/ba;->a(Lcom/zte/zdm/d/c/ai;)J

    move-result-wide v4

    add-long/2addr v2, v4

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    :cond_5
    return-wide v2
.end method

.method public static a(Lcom/zte/zdm/d/c/ax;)J
    .locals 14

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/ax;->i()Lcom/zte/zdm/d/c/bm;

    move-result-object v4

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/ax;->j()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/ax;->k()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/ax;->e()Lcom/zte/zdm/d/c/ap;

    move-result-object v7

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/ax;->l()Lcom/zte/zdm/d/c/u;

    move-result-object v8

    invoke-static {p0}, Lcom/zte/zdm/d/c/ba;->a(Lcom/zte/zdm/d/c/a;)J

    move-result-wide v9

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/ax;->g()Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x18

    :goto_0
    int-to-long v11, v3

    add-long/2addr v9, v11

    if-eqz v4, :cond_2

    invoke-static {v4}, Lcom/zte/zdm/d/c/ba;->a(Lcom/zte/zdm/d/c/bm;)J

    move-result-wide v3

    :goto_1
    add-long/2addr v9, v3

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0xe

    :goto_2
    int-to-long v3, v3

    add-long/2addr v9, v3

    if-eqz v7, :cond_4

    invoke-static {v7}, Lcom/zte/zdm/d/c/ba;->a(Lcom/zte/zdm/d/c/ap;)J

    move-result-wide v3

    :goto_3
    add-long/2addr v3, v9

    if-eqz v8, :cond_0

    invoke-static {v8}, Lcom/zte/zdm/d/c/ba;->a(Lcom/zte/zdm/d/c/u;)J

    move-result-wide v0

    :cond_0
    add-long/2addr v0, v3

    move v13, v2

    move-wide v2, v0

    move v1, v13

    :goto_4
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/d/c/bb;

    invoke-static {v0}, Lcom/zte/zdm/d/c/ba;->a(Lcom/zte/zdm/d/c/bb;)J

    move-result-wide v6

    add-long/2addr v2, v6

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    :cond_1
    move v3, v2

    goto :goto_0

    :cond_2
    move-wide v3, v0

    goto :goto_1

    :cond_3
    move v3, v2

    goto :goto_2

    :cond_4
    move-wide v3, v0

    goto :goto_3

    :cond_5
    return-wide v2
.end method

.method public static a(Lcom/zte/zdm/d/c/ay;)J
    .locals 9

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/ay;->e()Lcom/zte/zdm/d/c/ap;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/ay;->g()Ljava/util/ArrayList;

    move-result-object v4

    const-wide/16 v1, 0x17

    invoke-static {p0}, Lcom/zte/zdm/d/c/ba;->a(Lcom/zte/zdm/d/c/a;)J

    move-result-wide v5

    add-long v2, v1, v5

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/zte/zdm/d/c/ba;->a(Lcom/zte/zdm/d/c/ap;)J

    move-result-wide v0

    :goto_0
    add-long v1, v2, v0

    const/4 v0, 0x0

    move-wide v7, v1

    move-wide v2, v7

    move v1, v0

    :goto_1
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/d/c/a;

    invoke-static {v0}, Lcom/zte/zdm/d/c/ba;->c(Lcom/zte/zdm/d/c/a;)J

    move-result-wide v5

    add-long/2addr v2, v5

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_1
    return-wide v2
.end method

.method public static a(Lcom/zte/zdm/d/c/az;)J
    .locals 2

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/az;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x18

    int-to-long v0, v0

    return-wide v0
.end method

.method public static a(Lcom/zte/zdm/d/c/b;)J
    .locals 9

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/b;->e()Lcom/zte/zdm/d/c/ap;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/b;->k()Ljava/util/ArrayList;

    move-result-object v4

    const-wide/16 v1, 0xd

    invoke-static {p0}, Lcom/zte/zdm/d/c/ba;->a(Lcom/zte/zdm/d/c/a;)J

    move-result-wide v5

    add-long v2, v1, v5

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/zte/zdm/d/c/ba;->a(Lcom/zte/zdm/d/c/ap;)J

    move-result-wide v0

    :goto_0
    add-long v1, v2, v0

    const/4 v0, 0x0

    move-wide v7, v1

    move-wide v2, v7

    move v1, v0

    :goto_1
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/d/c/ai;

    invoke-static {v0}, Lcom/zte/zdm/d/c/ba;->a(Lcom/zte/zdm/d/c/ai;)J

    move-result-wide v5

    add-long/2addr v2, v5

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_1
    return-wide v2
.end method

.method public static a(Lcom/zte/zdm/d/c/bb;)J
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/bb;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/bb;->b()Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x12

    :goto_0
    add-int/lit8 v1, v1, 0x13

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x14

    :cond_0
    add-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0

    :cond_1
    move v1, v0

    goto :goto_0
.end method

.method public static a(Lcom/zte/zdm/d/c/bc;)J
    .locals 4

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/bc;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/bc;->b()Lcom/zte/zdm/d/c/bb;

    move-result-object v1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x18

    int-to-long v2, v0

    if-eqz v1, :cond_1

    invoke-static {v1}, Lcom/zte/zdm/d/c/ba;->a(Lcom/zte/zdm/d/c/bb;)J

    move-result-wide v0

    :goto_1
    add-long/2addr v0, v2

    return-wide v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_1
.end method

.method public static a(Lcom/zte/zdm/d/c/bd;)J
    .locals 15

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/bd;->a()Lcom/zte/zdm/d/c/m;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/bd;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/bd;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/bd;->n()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/bd;->i()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/bd;->j()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/bd;->d()Lcom/zte/zdm/d/c/s;

    move-result-object v7

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/bd;->l()Lcom/zte/zdm/d/c/l;

    move-result-object v8

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/bd;->m()Lcom/zte/zdm/d/c/u;

    move-result-object v9

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/bd;->k()Ljava/util/ArrayList;

    move-result-object v10

    const-wide/16 v11, 0x13

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/zte/zdm/d/c/ba;->a(Lcom/zte/zdm/d/c/m;)J

    move-result-wide v0

    :goto_0
    add-long/2addr v11, v0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x12

    :goto_1
    int-to-long v0, v0

    add-long v1, v11, v0

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x12

    :goto_2
    int-to-long v11, v0

    add-long/2addr v1, v11

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0xc

    :goto_3
    int-to-long v3, v0

    add-long v2, v1, v3

    if-eqz v7, :cond_4

    invoke-static {v7}, Lcom/zte/zdm/d/c/ba;->a(Lcom/zte/zdm/d/c/s;)J

    move-result-wide v0

    :goto_4
    add-long/2addr v2, v0

    if-eqz v8, :cond_5

    invoke-static {v8}, Lcom/zte/zdm/d/c/ba;->a(Lcom/zte/zdm/d/c/l;)J

    move-result-wide v0

    :goto_5
    add-long/2addr v2, v0

    if-eqz v9, :cond_6

    invoke-static {v9}, Lcom/zte/zdm/d/c/ba;->a(Lcom/zte/zdm/d/c/u;)J

    move-result-wide v0

    :goto_6
    add-long v1, v2, v0

    const/4 v0, 0x0

    move v3, v0

    :goto_7
    if-eqz v5, :cond_7

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_7

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/d/c/bn;

    invoke-static {v0}, Lcom/zte/zdm/d/c/ba;->a(Lcom/zte/zdm/d/c/bn;)J

    move-result-wide v7

    add-long/2addr v1, v7

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_7

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    goto :goto_3

    :cond_4
    const-wide/16 v0, 0x0

    goto :goto_4

    :cond_5
    const-wide/16 v0, 0x0

    goto :goto_5

    :cond_6
    const-wide/16 v0, 0x0

    goto :goto_6

    :cond_7
    const/4 v0, 0x0

    move v3, v0

    :goto_8
    if-eqz v6, :cond_8

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_8

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/d/c/bc;

    invoke-static {v0}, Lcom/zte/zdm/d/c/ba;->a(Lcom/zte/zdm/d/c/bc;)J

    move-result-wide v4

    add-long/2addr v1, v4

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_8

    :cond_8
    const/4 v0, 0x0

    move-wide v13, v1

    move-wide v2, v13

    move v1, v0

    :goto_9
    if-eqz v10, :cond_9

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_9

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/d/c/ai;

    invoke-static {v0}, Lcom/zte/zdm/d/c/ba;->a(Lcom/zte/zdm/d/c/ai;)J

    move-result-wide v4

    add-long/2addr v2, v4

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_9

    :cond_9
    return-wide v2
.end method

.method public static a(Lcom/zte/zdm/d/c/bf;)J
    .locals 12

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/bf;->g()Lcom/zte/zdm/d/c/bm;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/bf;->h()Lcom/zte/zdm/d/c/bb;

    move-result-object v6

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/bf;->e()Lcom/zte/zdm/d/c/ap;

    move-result-object v7

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/bf;->j()I

    move-result v8

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/bf;->i()Ljava/util/ArrayList;

    move-result-object v9

    const-wide/16 v4, 0xf

    invoke-static {p0}, Lcom/zte/zdm/d/c/ba;->a(Lcom/zte/zdm/d/c/a;)J

    move-result-wide v10

    add-long/2addr v10, v4

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/zte/zdm/d/c/ba;->a(Lcom/zte/zdm/d/c/bm;)J

    move-result-wide v4

    :goto_0
    add-long/2addr v10, v4

    if-eqz v6, :cond_2

    invoke-static {v6}, Lcom/zte/zdm/d/c/ba;->a(Lcom/zte/zdm/d/c/bb;)J

    move-result-wide v4

    :goto_1
    add-long/2addr v4, v10

    if-eqz v7, :cond_0

    invoke-static {v7}, Lcom/zte/zdm/d/c/ba;->a(Lcom/zte/zdm/d/c/ap;)J

    move-result-wide v2

    :cond_0
    add-long/2addr v2, v4

    if-eqz v8, :cond_3

    const/16 v0, 0x24

    :goto_2
    int-to-long v4, v0

    add-long/2addr v2, v4

    :goto_3
    if-eqz v9, :cond_4

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/d/c/a;

    invoke-static {v0}, Lcom/zte/zdm/d/c/ba;->c(Lcom/zte/zdm/d/c/a;)J

    move-result-wide v4

    add-long/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_1
    move-wide v4, v2

    goto :goto_0

    :cond_2
    move-wide v4, v2

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    :cond_4
    return-wide v2
.end method

.method public static a(Lcom/zte/zdm/d/c/bh;)J
    .locals 7

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/bh;->a()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/bh;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    :goto_0
    add-int/lit8 v0, v0, 0x17

    int-to-long v2, v0

    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/d/c/a;

    invoke-static {v0}, Lcom/zte/zdm/d/c/ba;->c(Lcom/zte/zdm/d/c/a;)J

    move-result-wide v5

    add-long/2addr v2, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    return-wide v2
.end method

.method public static a(Lcom/zte/zdm/d/c/bi;)J
    .locals 9

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/bi;->a()Ljava/util/ArrayList;

    move-result-object v4

    const-wide/16 v1, 0x15

    const/4 v0, 0x0

    move-wide v7, v1

    move-wide v2, v7

    move v1, v0

    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/d/c/bl;

    invoke-static {v0}, Lcom/zte/zdm/d/c/ba;->a(Lcom/zte/zdm/d/c/bl;)J

    move-result-wide v5

    add-long/2addr v2, v5

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-wide v2
.end method

.method public static a(Lcom/zte/zdm/d/c/bj;)J
    .locals 13

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/bj;->a()Lcom/zte/zdm/d/c/bo;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/bj;->b()Lcom/zte/zdm/d/c/bp;

    move-result-object v2

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/bj;->c()Lcom/zte/zdm/d/c/az;

    move-result-object v3

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/bj;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/bj;->e()Lcom/zte/zdm/d/c/bm;

    move-result-object v5

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/bj;->f()Lcom/zte/zdm/d/c/bb;

    move-result-object v6

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/bj;->g()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/bj;->h()Z

    move-result v8

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/bj;->j()Lcom/zte/zdm/d/c/s;

    move-result-object v9

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/bj;->k()Lcom/zte/zdm/d/c/ap;

    move-result-object v10

    const-wide/16 v11, 0x15

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/zte/zdm/d/c/ba;->a(Lcom/zte/zdm/d/c/bo;)J

    move-result-wide v0

    :goto_0
    add-long/2addr v11, v0

    if-eqz v2, :cond_1

    invoke-static {v2}, Lcom/zte/zdm/d/c/ba;->a(Lcom/zte/zdm/d/c/bp;)J

    move-result-wide v0

    :goto_1
    add-long/2addr v11, v0

    if-eqz v3, :cond_2

    invoke-static {v3}, Lcom/zte/zdm/d/c/ba;->a(Lcom/zte/zdm/d/c/az;)J

    move-result-wide v0

    :goto_2
    add-long v1, v11, v0

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x10

    :goto_3
    int-to-long v3, v0

    add-long v2, v1, v3

    if-eqz v5, :cond_4

    invoke-static {v5}, Lcom/zte/zdm/d/c/ba;->a(Lcom/zte/zdm/d/c/bm;)J

    move-result-wide v0

    :goto_4
    add-long/2addr v2, v0

    if-eqz v6, :cond_5

    invoke-static {v6}, Lcom/zte/zdm/d/c/ba;->a(Lcom/zte/zdm/d/c/bb;)J

    move-result-wide v0

    :goto_5
    add-long v1, v2, v0

    if-eqz v7, :cond_6

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x13

    :goto_6
    int-to-long v3, v0

    add-long/2addr v1, v3

    if-eqz v8, :cond_7

    const/16 v0, 0x12

    :goto_7
    int-to-long v3, v0

    add-long v2, v1, v3

    if-eqz v9, :cond_8

    invoke-static {v9}, Lcom/zte/zdm/d/c/ba;->a(Lcom/zte/zdm/d/c/s;)J

    move-result-wide v0

    :goto_8
    add-long/2addr v2, v0

    if-eqz v10, :cond_9

    invoke-static {v10}, Lcom/zte/zdm/d/c/ba;->a(Lcom/zte/zdm/d/c/ap;)J

    move-result-wide v0

    :goto_9
    add-long/2addr v0, v2

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_1

    :cond_2
    const-wide/16 v0, 0x0

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    goto :goto_3

    :cond_4
    const-wide/16 v0, 0x0

    goto :goto_4

    :cond_5
    const-wide/16 v0, 0x0

    goto :goto_5

    :cond_6
    const/16 v0, 0x5a

    goto :goto_6

    :cond_7
    const/4 v0, 0x0

    goto :goto_7

    :cond_8
    const-wide/16 v0, 0x0

    goto :goto_8

    :cond_9
    const-wide/16 v0, 0x0

    goto :goto_9
.end method

.method public static a(Lcom/zte/zdm/d/c/bk;)J
    .locals 6

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/bk;->a()Lcom/zte/zdm/d/c/bj;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/bk;->b()Lcom/zte/zdm/d/c/bh;

    move-result-object v1

    const-wide/16 v2, 0x2b

    invoke-static {v0}, Lcom/zte/zdm/d/c/ba;->a(Lcom/zte/zdm/d/c/bj;)J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-static {v1}, Lcom/zte/zdm/d/c/ba;->a(Lcom/zte/zdm/d/c/bh;)J

    move-result-wide v0

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public static a(Lcom/zte/zdm/d/c/bl;)J
    .locals 2

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/bl;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x16

    int-to-long v0, v0

    return-wide v0
.end method

.method public static a(Lcom/zte/zdm/d/c/bm;)J
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/bm;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/bm;->b()Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x12

    :goto_0
    add-int/lit8 v1, v1, 0x13

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x14

    :cond_0
    add-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0

    :cond_1
    move v1, v0

    goto :goto_0
.end method

.method public static a(Lcom/zte/zdm/d/c/bn;)J
    .locals 4

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/bn;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/bn;->b()Lcom/zte/zdm/d/c/bm;

    move-result-object v1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x18

    int-to-long v2, v0

    if-eqz v1, :cond_1

    invoke-static {v1}, Lcom/zte/zdm/d/c/ba;->a(Lcom/zte/zdm/d/c/bm;)J

    move-result-wide v0

    :goto_1
    add-long/2addr v0, v2

    return-wide v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_1
.end method

.method public static a(Lcom/zte/zdm/d/c/bo;)J
    .locals 2

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/bo;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x12

    int-to-long v0, v0

    return-wide v0
.end method

.method public static a(Lcom/zte/zdm/d/c/bp;)J
    .locals 2

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/bp;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x16

    int-to-long v0, v0

    return-wide v0
.end method

.method public static a(Lcom/zte/zdm/d/c/c;)J
    .locals 7

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/c;->g()I

    move-result v0

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/c;->k()Ljava/util/ArrayList;

    move-result-object v4

    const-wide/16 v2, 0x11

    invoke-static {p0}, Lcom/zte/zdm/d/c/ba;->a(Lcom/zte/zdm/d/c/a;)J

    move-result-wide v5

    add-long/2addr v2, v5

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0xe

    :goto_0
    int-to-long v5, v0

    add-long/2addr v2, v5

    :goto_1
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/d/c/ai;

    invoke-static {v0}, Lcom/zte/zdm/d/c/ba;->a(Lcom/zte/zdm/d/c/ai;)J

    move-result-wide v5

    add-long/2addr v2, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    return-wide v2
.end method

.method public static a(Lcom/zte/zdm/d/c/e;)J
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/e;->b()Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0xe

    :goto_0
    add-int/lit8 v1, v1, 0x29

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0xe

    :cond_0
    add-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0

    :cond_1
    move v1, v0

    goto :goto_0
.end method

.method public static a(Lcom/zte/zdm/d/c/f;)J
    .locals 9

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/f;->e()Lcom/zte/zdm/d/c/ap;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/f;->g()Ljava/util/ArrayList;

    move-result-object v4

    const-wide/16 v1, 0x13

    invoke-static {p0}, Lcom/zte/zdm/d/c/ba;->a(Lcom/zte/zdm/d/c/a;)J

    move-result-wide v5

    add-long v2, v1, v5

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/zte/zdm/d/c/ba;->a(Lcom/zte/zdm/d/c/ap;)J

    move-result-wide v0

    :goto_0
    add-long v1, v2, v0

    const/4 v0, 0x0

    move-wide v7, v1

    move-wide v2, v7

    move v1, v0

    :goto_1
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/d/c/a;

    invoke-static {v0}, Lcom/zte/zdm/d/c/ba;->c(Lcom/zte/zdm/d/c/a;)J

    move-result-wide v5

    add-long/2addr v2, v5

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_1
    return-wide v2
.end method

.method public static a(Lcom/zte/zdm/d/c/h;)J
    .locals 9

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/h;->a()Ljava/util/ArrayList;

    move-result-object v4

    const-wide/16 v1, 0x11

    const/4 v0, 0x0

    move-wide v7, v1

    move-wide v2, v7

    move v1, v0

    :goto_0
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/d/c/k;

    invoke-static {v0}, Lcom/zte/zdm/d/c/ba;->a(Lcom/zte/zdm/d/c/k;)J

    move-result-wide v5

    add-long/2addr v2, v5

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-wide v2
.end method

.method public static a(Lcom/zte/zdm/d/c/i;)J
    .locals 15

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/i;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/i;->b()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/i;->d()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/i;->e()I

    move-result v8

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/i;->c()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/i;->f()Ljava/util/ArrayList;

    move-result-object v10

    const-wide/16 v2, 0x0

    move v4, v1

    :goto_0
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_0

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x14

    int-to-long v11, v0

    add-long/2addr v2, v11

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    :cond_0
    move-wide v13, v2

    move-wide v3, v13

    move v2, v1

    :goto_1
    if-eqz v10, :cond_1

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/d/c/q;

    invoke-static {v0}, Lcom/zte/zdm/d/c/ba;->a(Lcom/zte/zdm/d/c/q;)J

    move-result-wide v11

    add-long/2addr v3, v11

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_1
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x16

    move v2, v0

    :goto_2
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x16

    :goto_3
    add-int/2addr v2, v0

    if-eqz v8, :cond_4

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0xe

    :goto_4
    add-int/2addr v2, v0

    if-eqz v9, :cond_5

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1c

    :goto_5
    add-int/2addr v0, v2

    int-to-long v0, v0

    add-long/2addr v0, v3

    return-wide v0

    :cond_2
    move v2, v1

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_3

    :cond_4
    move v0, v1

    goto :goto_4

    :cond_5
    move v0, v1

    goto :goto_5
.end method

.method public static a(Lcom/zte/zdm/d/c/j;)J
    .locals 2

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/j;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x12

    int-to-long v0, v0

    return-wide v0
.end method

.method public static a(Lcom/zte/zdm/d/c/k;)J
    .locals 10

    const-wide/16 v1, 0x0

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/k;->a()Lcom/zte/zdm/d/c/j;

    move-result-object v6

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/k;->b()Ljava/util/ArrayList;

    move-result-object v7

    const/4 v0, 0x0

    move v3, v0

    move-wide v4, v1

    :goto_0
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_0

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/d/c/i;

    invoke-static {v0}, Lcom/zte/zdm/d/c/ba;->a(Lcom/zte/zdm/d/c/i;)J

    move-result-wide v8

    add-long/2addr v4, v8

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_0
    if-eqz v6, :cond_1

    invoke-static {v6}, Lcom/zte/zdm/d/c/ba;->a(Lcom/zte/zdm/d/c/j;)J

    move-result-wide v0

    :goto_1
    add-long/2addr v0, v4

    return-wide v0

    :cond_1
    move-wide v0, v1

    goto :goto_1
.end method

.method public static a(Lcom/zte/zdm/d/c/l;)J
    .locals 4

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/l;->a()Lcom/zte/zdm/d/c/ap;

    move-result-object v0

    const-wide/16 v2, 0xf

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/zte/zdm/d/c/ba;->a(Lcom/zte/zdm/d/c/ap;)J

    move-result-wide v0

    :goto_0
    add-long/2addr v0, v2

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/zte/zdm/d/c/m;)J
    .locals 2

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/m;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x10

    int-to-long v0, v0

    return-wide v0
.end method

.method public static a(Lcom/zte/zdm/d/c/n;)J
    .locals 7

    const-wide/16 v0, 0x0

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/n;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/n;->a()Lcom/zte/zdm/d/c/e;

    move-result-object v3

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/n;->b()Lcom/zte/zdm/d/c/y;

    move-result-object v4

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    :goto_0
    add-int/lit8 v2, v2, 0xf

    int-to-long v5, v2

    if-eqz v3, :cond_2

    invoke-static {v3}, Lcom/zte/zdm/d/c/ba;->a(Lcom/zte/zdm/d/c/e;)J

    move-result-wide v2

    :goto_1
    add-long/2addr v2, v5

    if-eqz v4, :cond_0

    invoke-static {v4}, Lcom/zte/zdm/d/c/ba;->a(Lcom/zte/zdm/d/c/y;)J

    move-result-wide v0

    :cond_0
    add-long/2addr v0, v2

    return-wide v0

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    move-wide v2, v0

    goto :goto_1
.end method

.method public static a(Lcom/zte/zdm/d/c/p;)J
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/p;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/p;->b()Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x12

    :goto_0
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x10

    :cond_0
    add-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0

    :cond_1
    move v1, v0

    goto :goto_0
.end method

.method public static a(Lcom/zte/zdm/d/c/q;)J
    .locals 14

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/q;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/q;->b()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/q;->d()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/q;->e()I

    move-result v8

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/q;->c()Ljava/lang/String;

    move-result-object v9

    const-wide/16 v2, 0x0

    move-wide v12, v2

    move-wide v3, v12

    move v2, v1

    :goto_0
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x14

    int-to-long v10, v0

    add-long/2addr v3, v10

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x18

    move v2, v0

    :goto_1
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x16

    :goto_2
    add-int/2addr v2, v0

    if-eqz v8, :cond_3

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0xe

    :goto_3
    add-int/2addr v2, v0

    if-eqz v9, :cond_4

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1c

    :goto_4
    add-int/2addr v0, v2

    int-to-long v0, v0

    add-long/2addr v0, v3

    return-wide v0

    :cond_1
    move v2, v1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_3

    :cond_4
    move v0, v1

    goto :goto_4
.end method

.method public static a(Lcom/zte/zdm/d/c/r;)J
    .locals 9

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/r;->e()Lcom/zte/zdm/d/c/ap;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/r;->k()Ljava/util/ArrayList;

    move-result-object v4

    const-wide/16 v1, 0xd

    invoke-static {p0}, Lcom/zte/zdm/d/c/ba;->a(Lcom/zte/zdm/d/c/a;)J

    move-result-wide v5

    add-long v2, v1, v5

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/zte/zdm/d/c/ba;->a(Lcom/zte/zdm/d/c/ap;)J

    move-result-wide v0

    :goto_0
    add-long v1, v2, v0

    const/4 v0, 0x0

    move-wide v7, v1

    move-wide v2, v7

    move v1, v0

    :goto_1
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/d/c/ai;

    invoke-static {v0}, Lcom/zte/zdm/d/c/ba;->a(Lcom/zte/zdm/d/c/ai;)J

    move-result-wide v5

    add-long/2addr v2, v5

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_1
    return-wide v2
.end method

.method public static a(Lcom/zte/zdm/d/c/s;)J
    .locals 5

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/s;->f()Lcom/zte/zdm/d/c/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/g;->g()Lcom/zte/zdm/d/c/ap;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/s;->c()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0xf

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/zte/zdm/d/c/ba;->a(Lcom/zte/zdm/d/c/ap;)J

    move-result-wide v0

    :goto_0
    add-long/2addr v3, v0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0xe

    :goto_1
    int-to-long v0, v0

    add-long/2addr v0, v3

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static a(Lcom/zte/zdm/d/c/t;)J
    .locals 9

    const-wide/16 v7, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/t;->c()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/t;->d()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/t;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x18

    :goto_0
    add-int/lit8 v6, v1, 0x11

    cmp-long v1, v2, v7

    if-ltz v1, :cond_2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x12

    :goto_1
    add-int/2addr v1, v6

    cmp-long v2, v4, v7

    if-ltz v2, :cond_0

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x10

    :cond_0
    add-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0

    :cond_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v1, v0

    goto :goto_1
.end method

.method public static a(Lcom/zte/zdm/d/c/u;)J
    .locals 2

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/u;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0xe

    int-to-long v0, v0

    return-wide v0
.end method

.method public static a(Lcom/zte/zdm/d/c/v;)J
    .locals 20

    invoke-virtual/range {p0 .. p0}, Lcom/zte/zdm/d/c/v;->a()Lcom/zte/zdm/d/c/bc;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/zte/zdm/d/c/v;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/zte/zdm/d/c/v;->c()J

    move-result-wide v6

    invoke-virtual/range {p0 .. p0}, Lcom/zte/zdm/d/c/v;->d()Lcom/zte/zdm/d/c/p;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/zte/zdm/d/c/v;->e()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcom/zte/zdm/d/c/v;->f()Lcom/zte/zdm/d/c/p;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lcom/zte/zdm/d/c/v;->g()Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/zte/zdm/d/c/v;->h()Lcom/zte/zdm/d/c/t;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/zte/zdm/d/c/v;->i()Lcom/zte/zdm/d/c/bi;

    move-result-object v13

    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    move v3, v0

    :goto_0
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_0

    const-wide/16 v14, 0xb

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/d/c/p;

    invoke-static {v0}, Lcom/zte/zdm/d/c/ba;->a(Lcom/zte/zdm/d/c/p;)J

    move-result-wide v16

    add-long v14, v14, v16

    add-long/2addr v1, v14

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move-wide/from16 v18, v1

    move-wide/from16 v2, v18

    move v1, v0

    :goto_1
    if-eqz v11, :cond_1

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    const-wide/16 v14, 0xb

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/d/c/p;

    invoke-static {v0}, Lcom/zte/zdm/d/c/ba;->a(Lcom/zte/zdm/d/c/p;)J

    move-result-wide v16

    add-long v14, v14, v16

    add-long/2addr v2, v14

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    const-wide/16 v14, 0x19

    if-eqz v4, :cond_2

    invoke-static {v4}, Lcom/zte/zdm/d/c/ba;->a(Lcom/zte/zdm/d/c/bc;)J

    move-result-wide v0

    :goto_2
    add-long/2addr v14, v0

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1c

    :goto_3
    int-to-long v0, v0

    add-long v4, v14, v0

    const-wide/16 v0, 0x0

    cmp-long v0, v6, v0

    if-lez v0, :cond_4

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1c

    :goto_4
    int-to-long v0, v0

    add-long/2addr v4, v0

    if-eqz v8, :cond_5

    const-wide/16 v0, 0x15

    invoke-static {v8}, Lcom/zte/zdm/d/c/ba;->a(Lcom/zte/zdm/d/c/p;)J

    move-result-wide v6

    add-long/2addr v0, v6

    :goto_5
    add-long/2addr v4, v0

    if-eqz v10, :cond_6

    const-wide/16 v0, 0x15

    invoke-static {v10}, Lcom/zte/zdm/d/c/ba;->a(Lcom/zte/zdm/d/c/p;)J

    move-result-wide v6

    add-long/2addr v0, v6

    :goto_6
    add-long/2addr v4, v0

    if-eqz v12, :cond_7

    invoke-static {v12}, Lcom/zte/zdm/d/c/ba;->a(Lcom/zte/zdm/d/c/t;)J

    move-result-wide v0

    :goto_7
    add-long/2addr v4, v0

    if-eqz v13, :cond_8

    invoke-static {v13}, Lcom/zte/zdm/d/c/ba;->a(Lcom/zte/zdm/d/c/bi;)J

    move-result-wide v0

    :goto_8
    add-long/2addr v0, v4

    add-long/2addr v0, v2

    return-wide v0

    :cond_2
    const-wide/16 v0, 0x0

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    goto :goto_4

    :cond_5
    const-wide/16 v0, 0x0

    goto :goto_5

    :cond_6
    const-wide/16 v0, 0x0

    goto :goto_6

    :cond_7
    const-wide/16 v0, 0x0

    goto :goto_7

    :cond_8
    const-wide/16 v0, 0x0

    goto :goto_8
.end method

.method public static a(Lcom/zte/zdm/d/c/w;)J
    .locals 9

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/w;->e()Lcom/zte/zdm/d/c/ap;

    move-result-object v2

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/w;->k()Ljava/util/ArrayList;

    move-result-object v4

    const-wide/16 v5, 0x14

    invoke-static {p0}, Lcom/zte/zdm/d/c/ba;->a(Lcom/zte/zdm/d/c/a;)J

    move-result-wide v7

    add-long/2addr v5, v7

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/w;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    :goto_0
    int-to-long v7, v0

    add-long/2addr v5, v7

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/w;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x12

    :goto_1
    int-to-long v7, v0

    add-long/2addr v5, v7

    if-eqz v2, :cond_2

    invoke-static {v2}, Lcom/zte/zdm/d/c/ba;->a(Lcom/zte/zdm/d/c/ap;)J

    move-result-wide v2

    :goto_2
    add-long/2addr v2, v5

    :goto_3
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/d/c/ai;

    invoke-static {v0}, Lcom/zte/zdm/d/c/ba;->a(Lcom/zte/zdm/d/c/ai;)J

    move-result-wide v5

    add-long/2addr v2, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    const-wide/16 v2, 0x0

    goto :goto_2

    :cond_3
    return-wide v2
.end method

.method public static a(Lcom/zte/zdm/d/c/y;)J
    .locals 20

    invoke-virtual/range {p0 .. p0}, Lcom/zte/zdm/d/c/y;->a()Lcom/zte/zdm/d/c/bo;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/zte/zdm/d/c/y;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/zte/zdm/d/c/y;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/zte/zdm/d/c/y;->d()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/zte/zdm/d/c/y;->e()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/zte/zdm/d/c/y;->f()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcom/zte/zdm/d/c/y;->g()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lcom/zte/zdm/d/c/y;->h()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/zte/zdm/d/c/y;->i()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/zte/zdm/d/c/y;->j()Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/zte/zdm/d/c/y;->k()Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/zte/zdm/d/c/y;->l()Ljava/util/ArrayList;

    move-result-object v15

    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    move v3, v0

    :goto_0
    if-eqz v13, :cond_0

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_0

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/d/c/v;

    invoke-static {v0}, Lcom/zte/zdm/d/c/ba;->a(Lcom/zte/zdm/d/c/v;)J

    move-result-wide v16

    add-long v1, v1, v16

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move v3, v0

    :goto_1
    if-eqz v14, :cond_1

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_1

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/d/c/h;

    invoke-static {v0}, Lcom/zte/zdm/d/c/ba;->a(Lcom/zte/zdm/d/c/h;)J

    move-result-wide v16

    add-long v1, v1, v16

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    move-wide/from16 v18, v1

    move-wide/from16 v2, v18

    move v1, v0

    :goto_2
    if-eqz v15, :cond_2

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/d/c/af;

    invoke-static {v0}, Lcom/zte/zdm/d/c/ba;->a(Lcom/zte/zdm/d/c/af;)J

    move-result-wide v13

    add-long/2addr v2, v13

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_2
    const-wide/16 v13, 0x29

    if-eqz v4, :cond_3

    invoke-static {v4}, Lcom/zte/zdm/d/c/ba;->a(Lcom/zte/zdm/d/c/bo;)J

    move-result-wide v0

    :goto_3
    add-long/2addr v13, v0

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0xc

    :goto_4
    int-to-long v0, v0

    add-long v4, v13, v0

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0xc

    :goto_5
    int-to-long v0, v0

    add-long/2addr v4, v0

    if-eqz v7, :cond_6

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0xc

    :goto_6
    int-to-long v0, v0

    add-long/2addr v4, v0

    if-eqz v8, :cond_7

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0xc

    :goto_7
    int-to-long v0, v0

    add-long/2addr v4, v0

    if-eqz v9, :cond_8

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0xc

    :goto_8
    int-to-long v0, v0

    add-long/2addr v4, v0

    if-eqz v10, :cond_9

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0xc

    :goto_9
    int-to-long v0, v0

    add-long/2addr v4, v0

    if-eqz v11, :cond_a

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x10

    :goto_a
    int-to-long v0, v0

    add-long/2addr v4, v0

    if-eqz v12, :cond_b

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x12

    :goto_b
    int-to-long v0, v0

    add-long/2addr v4, v0

    invoke-virtual/range {p0 .. p0}, Lcom/zte/zdm/d/c/y;->m()Z

    move-result v0

    if-eqz v0, :cond_c

    const/16 v0, 0xc

    :goto_c
    int-to-long v0, v0

    add-long/2addr v4, v0

    invoke-virtual/range {p0 .. p0}, Lcom/zte/zdm/d/c/y;->o()Z

    move-result v0

    if-eqz v0, :cond_d

    const/16 v0, 0x26

    :goto_d
    int-to-long v0, v0

    add-long/2addr v4, v0

    invoke-virtual/range {p0 .. p0}, Lcom/zte/zdm/d/c/y;->q()Z

    move-result v0

    if-eqz v0, :cond_e

    const/16 v0, 0x32

    :goto_e
    int-to-long v0, v0

    add-long/2addr v0, v4

    add-long/2addr v0, v2

    return-wide v0

    :cond_3
    const-wide/16 v0, 0x0

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    goto :goto_4

    :cond_5
    const/4 v0, 0x0

    goto :goto_5

    :cond_6
    const/4 v0, 0x0

    goto :goto_6

    :cond_7
    const/4 v0, 0x0

    goto :goto_7

    :cond_8
    const/4 v0, 0x0

    goto :goto_8

    :cond_9
    const/4 v0, 0x0

    goto :goto_9

    :cond_a
    const/4 v0, 0x0

    goto :goto_a

    :cond_b
    const/4 v0, 0x0

    goto :goto_b

    :cond_c
    const/4 v0, 0x0

    goto :goto_c

    :cond_d
    const/4 v0, 0x0

    goto :goto_d

    :cond_e
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static a(Lcom/zte/zdm/d/c/z;)J
    .locals 4

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/z;->a()Lcom/zte/zdm/d/c/y;

    move-result-object v0

    const-wide/16 v2, 0xf

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/zte/zdm/d/c/ba;->a(Lcom/zte/zdm/d/c/y;)J

    move-result-wide v0

    :goto_0
    add-long/2addr v0, v2

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static b()J
    .locals 2

    const-wide/16 v0, 0x1d

    return-wide v0
.end method

.method public static b(Lcom/zte/zdm/d/c/a;)J
    .locals 8

    const-wide/16 v2, 0x0

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/a;->a()Lcom/zte/zdm/d/c/m;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/a;->d()Lcom/zte/zdm/d/c/s;

    move-result-object v5

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/zte/zdm/d/c/ba;->b(Lcom/zte/zdm/d/c/m;)J

    move-result-wide v0

    :goto_0
    invoke-virtual {p0}, Lcom/zte/zdm/d/c/a;->b()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    :goto_1
    int-to-long v6, v4

    add-long/2addr v0, v6

    if-eqz v5, :cond_0

    invoke-static {v5}, Lcom/zte/zdm/d/c/ba;->b(Lcom/zte/zdm/d/c/s;)J

    move-result-wide v2

    :cond_0
    add-long/2addr v0, v2

    return-wide v0

    :cond_1
    move-wide v0, v2

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static b(Lcom/zte/zdm/d/c/aa;)J
    .locals 9

    const-wide/16 v0, 0x0

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/aa;->a()Lcom/zte/zdm/d/c/bm;

    move-result-object v2

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/aa;->b()Lcom/zte/zdm/d/c/bb;

    move-result-object v4

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/aa;->c()Lcom/zte/zdm/d/c/ap;

    move-result-object v5

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/aa;->d()Lcom/zte/zdm/d/c/z;

    move-result-object v6

    const-wide/16 v7, 0x4

    if-eqz v2, :cond_1

    invoke-static {v2}, Lcom/zte/zdm/d/c/ba;->b(Lcom/zte/zdm/d/c/bm;)J

    move-result-wide v2

    :goto_0
    add-long/2addr v7, v2

    if-eqz v4, :cond_2

    invoke-static {v4}, Lcom/zte/zdm/d/c/ba;->b(Lcom/zte/zdm/d/c/bb;)J

    move-result-wide v2

    :goto_1
    add-long/2addr v7, v2

    if-eqz v5, :cond_3

    invoke-static {v5}, Lcom/zte/zdm/d/c/ba;->b(Lcom/zte/zdm/d/c/ap;)J

    move-result-wide v2

    :goto_2
    add-long/2addr v2, v7

    if-eqz v6, :cond_0

    invoke-static {v6}, Lcom/zte/zdm/d/c/ba;->b(Lcom/zte/zdm/d/c/z;)J

    move-result-wide v0

    :cond_0
    add-long/2addr v0, v2

    return-wide v0

    :cond_1
    move-wide v2, v0

    goto :goto_0

    :cond_2
    move-wide v2, v0

    goto :goto_1

    :cond_3
    move-wide v2, v0

    goto :goto_2
.end method

.method public static b(Lcom/zte/zdm/d/c/ad;)J
    .locals 2

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/ad;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    int-to-long v0, v0

    return-wide v0
.end method

.method public static b(Lcom/zte/zdm/d/c/ae;)J
    .locals 9

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/ae;->k()Ljava/util/ArrayList;

    move-result-object v4

    const-wide/16 v0, 0x4

    invoke-static {p0}, Lcom/zte/zdm/d/c/ba;->b(Lcom/zte/zdm/d/c/a;)J

    move-result-wide v2

    add-long v1, v0, v2

    const/4 v0, 0x0

    move-wide v7, v1

    move-wide v2, v7

    move v1, v0

    :goto_0
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/d/c/ai;

    invoke-static {v0}, Lcom/zte/zdm/d/c/ba;->b(Lcom/zte/zdm/d/c/ai;)J

    move-result-wide v5

    add-long/2addr v2, v5

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-wide v2
.end method

.method public static b(Lcom/zte/zdm/d/c/af;)J
    .locals 11

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/af;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/af;->b()Ljava/util/ArrayList;

    move-result-object v6

    const-wide/16 v2, 0x4

    move-wide v9, v2

    move-wide v3, v9

    move v2, v1

    :goto_0
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    int-to-long v7, v0

    add-long/2addr v3, v7

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    :goto_1
    int-to-long v0, v0

    add-long/2addr v0, v3

    return-wide v0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public static b(Lcom/zte/zdm/d/c/ag;)J
    .locals 10

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/ag;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/ag;->e()Lcom/zte/zdm/d/c/ap;

    move-result-object v1

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/ag;->k()Ljava/util/ArrayList;

    move-result-object v4

    const-wide/16 v5, 0x4

    invoke-static {p0}, Lcom/zte/zdm/d/c/ba;->a(Lcom/zte/zdm/d/c/a;)J

    move-result-wide v7

    add-long/2addr v5, v7

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :goto_0
    int-to-long v7, v0

    add-long/2addr v5, v7

    if-eqz v1, :cond_1

    invoke-static {v1}, Lcom/zte/zdm/d/c/ba;->a(Lcom/zte/zdm/d/c/ap;)J

    move-result-wide v0

    :goto_1
    add-long/2addr v0, v5

    move v9, v2

    move-wide v2, v0

    move v1, v9

    :goto_2
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/d/c/ai;

    invoke-static {v0}, Lcom/zte/zdm/d/c/ba;->a(Lcom/zte/zdm/d/c/ai;)J

    move-result-wide v5

    add-long/2addr v2, v5

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_1

    :cond_2
    return-wide v2
.end method

.method public static b(Lcom/zte/zdm/d/c/ai;)J
    .locals 9

    const-wide/16 v0, 0x0

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/ai;->a()Lcom/zte/zdm/d/c/bm;

    move-result-object v2

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/ai;->b()Lcom/zte/zdm/d/c/bb;

    move-result-object v4

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/ai;->c()Lcom/zte/zdm/d/c/ap;

    move-result-object v5

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/ai;->e()Lcom/zte/zdm/d/c/n;

    move-result-object v6

    const-wide/16 v7, 0x4

    if-eqz v2, :cond_1

    invoke-static {v2}, Lcom/zte/zdm/d/c/ba;->b(Lcom/zte/zdm/d/c/bm;)J

    move-result-wide v2

    :goto_0
    add-long/2addr v7, v2

    if-eqz v4, :cond_2

    invoke-static {v4}, Lcom/zte/zdm/d/c/ba;->b(Lcom/zte/zdm/d/c/bb;)J

    move-result-wide v2

    :goto_1
    add-long/2addr v7, v2

    if-eqz v5, :cond_3

    invoke-static {v5}, Lcom/zte/zdm/d/c/ba;->b(Lcom/zte/zdm/d/c/ap;)J

    move-result-wide v2

    :goto_2
    add-long/2addr v2, v7

    if-eqz v6, :cond_0

    invoke-static {v6}, Lcom/zte/zdm/d/c/ba;->b(Lcom/zte/zdm/d/c/n;)J

    move-result-wide v0

    :cond_0
    add-long v1, v2, v0

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/ai;->f()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    :goto_3
    int-to-long v3, v0

    add-long v0, v1, v3

    return-wide v0

    :cond_1
    move-wide v2, v0

    goto :goto_0

    :cond_2
    move-wide v2, v0

    goto :goto_1

    :cond_3
    move-wide v2, v0

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public static b(Lcom/zte/zdm/d/c/aj;)J
    .locals 9

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/aj;->e()Lcom/zte/zdm/d/c/ap;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/aj;->k()Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {p0}, Lcom/zte/zdm/d/c/ba;->b(Lcom/zte/zdm/d/c/a;)J

    move-result-wide v2

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/zte/zdm/d/c/ba;->b(Lcom/zte/zdm/d/c/ap;)J

    move-result-wide v0

    :goto_0
    add-long v1, v2, v0

    const/4 v0, 0x0

    move-wide v7, v1

    move-wide v2, v7

    move v1, v0

    :goto_1
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/d/c/ai;

    invoke-static {v0}, Lcom/zte/zdm/d/c/ba;->b(Lcom/zte/zdm/d/c/ai;)J

    move-result-wide v5

    add-long/2addr v2, v5

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_1
    return-wide v2
.end method

.method public static b(Lcom/zte/zdm/d/c/ak;)J
    .locals 13

    const-wide/16 v0, 0x0

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/ak;->g()Lcom/zte/zdm/d/c/bm;

    move-result-object v2

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/ak;->h()Lcom/zte/zdm/d/c/bb;

    move-result-object v4

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/ak;->e()Lcom/zte/zdm/d/c/ap;

    move-result-object v5

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/ak;->i()Ljava/util/ArrayList;

    move-result-object v6

    const-wide/16 v7, 0x4

    invoke-static {p0}, Lcom/zte/zdm/d/c/ba;->b(Lcom/zte/zdm/d/c/a;)J

    move-result-wide v9

    add-long/2addr v7, v9

    if-eqz v2, :cond_1

    invoke-static {v2}, Lcom/zte/zdm/d/c/ba;->b(Lcom/zte/zdm/d/c/bm;)J

    move-result-wide v2

    :goto_0
    add-long/2addr v7, v2

    if-eqz v4, :cond_2

    invoke-static {v4}, Lcom/zte/zdm/d/c/ba;->b(Lcom/zte/zdm/d/c/bb;)J

    move-result-wide v2

    :goto_1
    add-long/2addr v2, v7

    if-eqz v5, :cond_0

    invoke-static {v5}, Lcom/zte/zdm/d/c/ba;->b(Lcom/zte/zdm/d/c/ap;)J

    move-result-wide v0

    :cond_0
    add-long v1, v2, v0

    const/4 v0, 0x0

    move-wide v11, v1

    move-wide v2, v11

    move v1, v0

    :goto_2
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/d/c/al;

    invoke-static {v0}, Lcom/zte/zdm/d/c/ba;->b(Lcom/zte/zdm/d/c/al;)J

    move-result-wide v4

    add-long/2addr v2, v4

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_1
    move-wide v2, v0

    goto :goto_0

    :cond_2
    move-wide v2, v0

    goto :goto_1

    :cond_3
    return-wide v2
.end method

.method public static b(Lcom/zte/zdm/d/c/al;)J
    .locals 7

    const-wide/16 v0, 0x0

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/al;->a()Lcom/zte/zdm/d/c/bm;

    move-result-object v2

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/al;->b()Lcom/zte/zdm/d/c/bb;

    move-result-object v4

    const-wide/16 v5, 0x2

    if-eqz v2, :cond_1

    invoke-static {v2}, Lcom/zte/zdm/d/c/ba;->b(Lcom/zte/zdm/d/c/bm;)J

    move-result-wide v2

    :goto_0
    add-long/2addr v2, v5

    if-eqz v4, :cond_0

    invoke-static {v4}, Lcom/zte/zdm/d/c/ba;->b(Lcom/zte/zdm/d/c/bb;)J

    move-result-wide v0

    :cond_0
    add-long/2addr v0, v2

    return-wide v0

    :cond_1
    move-wide v2, v0

    goto :goto_0
.end method

.method public static b(Lcom/zte/zdm/d/c/an;)J
    .locals 9

    const-wide/16 v7, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/an;->a()Z

    move-result v1

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/an;->c()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/an;->d()J

    move-result-wide v4

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    add-int/lit8 v6, v1, 0x4

    cmp-long v1, v2, v7

    if-eqz v1, :cond_2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    :goto_1
    add-int/2addr v1, v6

    cmp-long v2, v4, v7

    if-eqz v2, :cond_0

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    :cond_0
    add-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0

    :cond_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v1, v0

    goto :goto_1
.end method

.method public static b(Lcom/zte/zdm/d/c/ap;)J
    .locals 14

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/ap;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/ap;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/ap;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/ap;->c()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/ap;->g()Lcom/zte/zdm/d/c/e;

    move-result-object v4

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/ap;->h()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/ap;->i()Lcom/zte/zdm/d/c/ar;

    move-result-object v6

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/ap;->j()Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/ap;->k()Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/ap;->l()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/ap;->m()Lcom/zte/zdm/d/c/an;

    move-result-object v10

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    :goto_0
    add-int/lit8 v11, v0, 0x4

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    :goto_1
    add-int v1, v11, v0

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    :goto_2
    add-int/2addr v1, v0

    if-eqz v3, :cond_3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    :goto_3
    add-int/2addr v0, v1

    int-to-long v2, v0

    if-eqz v4, :cond_4

    invoke-static {v4}, Lcom/zte/zdm/d/c/ba;->b(Lcom/zte/zdm/d/c/e;)J

    move-result-wide v0

    :goto_4
    add-long v1, v2, v0

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    :goto_5
    int-to-long v3, v0

    add-long v2, v1, v3

    if-eqz v6, :cond_6

    invoke-static {v6}, Lcom/zte/zdm/d/c/ba;->b(Lcom/zte/zdm/d/c/ar;)J

    move-result-wide v0

    :goto_6
    add-long v1, v2, v0

    if-eqz v7, :cond_7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    :goto_7
    int-to-long v3, v0

    add-long/2addr v1, v3

    if-eqz v8, :cond_8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    :goto_8
    int-to-long v3, v0

    add-long v2, v1, v3

    if-eqz v10, :cond_9

    invoke-static {v10}, Lcom/zte/zdm/d/c/ba;->b(Lcom/zte/zdm/d/c/an;)J

    move-result-wide v0

    :goto_9
    add-long v1, v2, v0

    const/4 v0, 0x0

    move-wide v12, v1

    move-wide v2, v12

    move v1, v0

    :goto_a
    if-eqz v9, :cond_a

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_a

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/d/c/ad;

    invoke-static {v0}, Lcom/zte/zdm/d/c/ba;->b(Lcom/zte/zdm/d/c/ad;)J

    move-result-wide v4

    add-long/2addr v2, v4

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_a

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    goto :goto_3

    :cond_4
    const-wide/16 v0, 0x0

    goto :goto_4

    :cond_5
    const/4 v0, 0x0

    goto :goto_5

    :cond_6
    const-wide/16 v0, 0x0

    goto :goto_6

    :cond_7
    const/4 v0, 0x0

    goto :goto_7

    :cond_8
    const/4 v0, 0x0

    goto :goto_8

    :cond_9
    const-wide/16 v0, 0x0

    goto :goto_9

    :cond_a
    return-wide v2
.end method

.method public static b(Lcom/zte/zdm/d/c/aq;)J
    .locals 2

    invoke-static {p0}, Lcom/zte/zdm/d/c/ba;->b(Lcom/zte/zdm/d/c/aj;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static b(Lcom/zte/zdm/d/c/ar;)J
    .locals 2

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/ar;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    int-to-long v0, v0

    return-wide v0
.end method

.method public static b(Lcom/zte/zdm/d/c/as;)J
    .locals 10

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/as;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/as;->e()Lcom/zte/zdm/d/c/ap;

    move-result-object v1

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/as;->k()Ljava/util/ArrayList;

    move-result-object v4

    const-wide/16 v5, 0x4

    invoke-static {p0}, Lcom/zte/zdm/d/c/ba;->b(Lcom/zte/zdm/d/c/a;)J

    move-result-wide v7

    add-long/2addr v5, v7

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :goto_0
    int-to-long v7, v0

    add-long/2addr v5, v7

    if-eqz v1, :cond_1

    invoke-static {v1}, Lcom/zte/zdm/d/c/ba;->b(Lcom/zte/zdm/d/c/ap;)J

    move-result-wide v0

    :goto_1
    add-long/2addr v0, v5

    move v9, v2

    move-wide v2, v0

    move v1, v9

    :goto_2
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/d/c/aa;

    invoke-static {v0}, Lcom/zte/zdm/d/c/ba;->b(Lcom/zte/zdm/d/c/aa;)J

    move-result-wide v5

    add-long/2addr v2, v5

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_1

    :cond_2
    return-wide v2
.end method

.method public static b(Lcom/zte/zdm/d/c/at;)J
    .locals 9

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/at;->e()Lcom/zte/zdm/d/c/ap;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/at;->k()Ljava/util/ArrayList;

    move-result-object v4

    const-wide/16 v1, 0x4

    invoke-static {p0}, Lcom/zte/zdm/d/c/ba;->b(Lcom/zte/zdm/d/c/a;)J

    move-result-wide v5

    add-long v2, v1, v5

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/zte/zdm/d/c/ba;->b(Lcom/zte/zdm/d/c/ap;)J

    move-result-wide v0

    :goto_0
    add-long v1, v2, v0

    const/4 v0, 0x0

    move-wide v7, v1

    move-wide v2, v7

    move v1, v0

    :goto_1
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/d/c/ai;

    invoke-static {v0}, Lcom/zte/zdm/d/c/ba;->b(Lcom/zte/zdm/d/c/ai;)J

    move-result-wide v5

    add-long/2addr v2, v5

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_1
    return-wide v2
.end method

.method public static b(Lcom/zte/zdm/d/c/av;)J
    .locals 9

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/av;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/av;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/av;->i()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/av;->j()Ljava/util/ArrayList;

    move-result-object v6

    invoke-static {p0}, Lcom/zte/zdm/d/c/ba;->b(Lcom/zte/zdm/d/c/aj;)J

    move-result-wide v3

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    :goto_0
    int-to-long v7, v0

    add-long/2addr v3, v7

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    :goto_1
    int-to-long v7, v0

    add-long v2, v3, v7

    move v4, v1

    :goto_2
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_2

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/d/c/bn;

    invoke-static {v0}, Lcom/zte/zdm/d/c/ba;->b(Lcom/zte/zdm/d/c/bn;)J

    move-result-wide v7

    add-long/2addr v2, v7

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_2

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    :goto_3
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/d/c/bc;

    invoke-static {v0}, Lcom/zte/zdm/d/c/ba;->b(Lcom/zte/zdm/d/c/bc;)J

    move-result-wide v4

    add-long/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    return-wide v2
.end method

.method public static b(Lcom/zte/zdm/d/c/aw;)J
    .locals 14

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/aw;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/aw;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/aw;->e()Lcom/zte/zdm/d/c/ap;

    move-result-object v3

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/aw;->i()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/aw;->j()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/aw;->k()Ljava/util/ArrayList;

    move-result-object v7

    const-wide/16 v8, 0x4

    invoke-static {p0}, Lcom/zte/zdm/d/c/ba;->b(Lcom/zte/zdm/d/c/a;)J

    move-result-wide v10

    add-long/2addr v8, v10

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    :goto_0
    int-to-long v10, v0

    add-long/2addr v8, v10

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    :goto_1
    int-to-long v0, v0

    add-long/2addr v8, v0

    if-eqz v3, :cond_2

    invoke-static {v3}, Lcom/zte/zdm/d/c/ba;->b(Lcom/zte/zdm/d/c/ap;)J

    move-result-wide v0

    :goto_2
    add-long v3, v8, v0

    move v1, v2

    :goto_3
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/d/c/bn;

    invoke-static {v0}, Lcom/zte/zdm/d/c/ba;->b(Lcom/zte/zdm/d/c/bn;)J

    move-result-wide v8

    add-long/2addr v3, v8

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    const-wide/16 v0, 0x0

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_4
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/d/c/bc;

    invoke-static {v0}, Lcom/zte/zdm/d/c/ba;->b(Lcom/zte/zdm/d/c/bc;)J

    move-result-wide v8

    add-long/2addr v3, v8

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    :cond_4
    move v1, v2

    move-wide v12, v3

    move-wide v2, v12

    :goto_5
    if-eqz v7, :cond_5

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/d/c/ai;

    invoke-static {v0}, Lcom/zte/zdm/d/c/ba;->b(Lcom/zte/zdm/d/c/ai;)J

    move-result-wide v4

    add-long/2addr v2, v4

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    :cond_5
    return-wide v2
.end method

.method public static b(Lcom/zte/zdm/d/c/ax;)J
    .locals 14

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/ax;->i()Lcom/zte/zdm/d/c/bm;

    move-result-object v4

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/ax;->j()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/ax;->k()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/ax;->e()Lcom/zte/zdm/d/c/ap;

    move-result-object v7

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/ax;->l()Lcom/zte/zdm/d/c/u;

    move-result-object v8

    invoke-static {p0}, Lcom/zte/zdm/d/c/ba;->b(Lcom/zte/zdm/d/c/a;)J

    move-result-wide v9

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/ax;->g()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :goto_0
    int-to-long v11, v3

    add-long/2addr v9, v11

    if-eqz v4, :cond_2

    invoke-static {v4}, Lcom/zte/zdm/d/c/ba;->a(Lcom/zte/zdm/d/c/bm;)J

    move-result-wide v3

    :goto_1
    add-long/2addr v9, v3

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    :goto_2
    int-to-long v3, v3

    add-long/2addr v9, v3

    if-eqz v7, :cond_4

    invoke-static {v7}, Lcom/zte/zdm/d/c/ba;->b(Lcom/zte/zdm/d/c/ap;)J

    move-result-wide v3

    :goto_3
    add-long/2addr v3, v9

    if-eqz v8, :cond_0

    invoke-static {v8}, Lcom/zte/zdm/d/c/ba;->b(Lcom/zte/zdm/d/c/u;)J

    move-result-wide v0

    :cond_0
    add-long/2addr v0, v3

    move v13, v2

    move-wide v2, v0

    move v1, v13

    :goto_4
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/d/c/bb;

    invoke-static {v0}, Lcom/zte/zdm/d/c/ba;->b(Lcom/zte/zdm/d/c/bb;)J

    move-result-wide v6

    add-long/2addr v2, v6

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    :cond_1
    move v3, v2

    goto :goto_0

    :cond_2
    move-wide v3, v0

    goto :goto_1

    :cond_3
    move v3, v2

    goto :goto_2

    :cond_4
    move-wide v3, v0

    goto :goto_3

    :cond_5
    return-wide v2
.end method

.method public static b(Lcom/zte/zdm/d/c/ay;)J
    .locals 9

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/ay;->e()Lcom/zte/zdm/d/c/ap;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/ay;->g()Ljava/util/ArrayList;

    move-result-object v4

    const-wide/16 v1, 0x4

    invoke-static {p0}, Lcom/zte/zdm/d/c/ba;->b(Lcom/zte/zdm/d/c/a;)J

    move-result-wide v5

    add-long v2, v1, v5

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/zte/zdm/d/c/ba;->b(Lcom/zte/zdm/d/c/ap;)J

    move-result-wide v0

    :goto_0
    add-long v1, v2, v0

    const/4 v0, 0x0

    move-wide v7, v1

    move-wide v2, v7

    move v1, v0

    :goto_1
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/d/c/a;

    invoke-static {v0}, Lcom/zte/zdm/d/c/ba;->d(Lcom/zte/zdm/d/c/a;)J

    move-result-wide v5

    add-long/2addr v2, v5

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_1
    return-wide v2
.end method

.method public static b(Lcom/zte/zdm/d/c/az;)J
    .locals 2

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/az;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    int-to-long v0, v0

    return-wide v0
.end method

.method public static b(Lcom/zte/zdm/d/c/b;)J
    .locals 9

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/b;->e()Lcom/zte/zdm/d/c/ap;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/b;->k()Ljava/util/ArrayList;

    move-result-object v4

    const-wide/16 v1, 0x4

    invoke-static {p0}, Lcom/zte/zdm/d/c/ba;->b(Lcom/zte/zdm/d/c/a;)J

    move-result-wide v5

    add-long v2, v1, v5

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/zte/zdm/d/c/ba;->b(Lcom/zte/zdm/d/c/ap;)J

    move-result-wide v0

    :goto_0
    add-long v1, v2, v0

    const/4 v0, 0x0

    move-wide v7, v1

    move-wide v2, v7

    move v1, v0

    :goto_1
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/d/c/ai;

    invoke-static {v0}, Lcom/zte/zdm/d/c/ba;->b(Lcom/zte/zdm/d/c/ai;)J

    move-result-wide v5

    add-long/2addr v2, v5

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_1
    return-wide v2
.end method

.method public static b(Lcom/zte/zdm/d/c/bb;)J
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/bb;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/bb;->b()Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    :goto_0
    add-int/lit8 v1, v1, 0x4

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    :cond_0
    add-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0

    :cond_1
    move v1, v0

    goto :goto_0
.end method

.method public static b(Lcom/zte/zdm/d/c/bc;)J
    .locals 4

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/bc;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/bc;->b()Lcom/zte/zdm/d/c/bb;

    move-result-object v1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x4

    int-to-long v2, v0

    if-eqz v1, :cond_1

    invoke-static {v1}, Lcom/zte/zdm/d/c/ba;->b(Lcom/zte/zdm/d/c/bb;)J

    move-result-wide v0

    :goto_1
    add-long/2addr v0, v2

    return-wide v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_1
.end method

.method public static b(Lcom/zte/zdm/d/c/bd;)J
    .locals 15

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/bd;->a()Lcom/zte/zdm/d/c/m;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/bd;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/bd;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/bd;->n()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/bd;->i()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/bd;->j()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/bd;->d()Lcom/zte/zdm/d/c/s;

    move-result-object v7

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/bd;->l()Lcom/zte/zdm/d/c/l;

    move-result-object v8

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/bd;->m()Lcom/zte/zdm/d/c/u;

    move-result-object v9

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/bd;->k()Ljava/util/ArrayList;

    move-result-object v10

    const-wide/16 v11, 0x4

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/zte/zdm/d/c/ba;->b(Lcom/zte/zdm/d/c/m;)J

    move-result-wide v0

    :goto_0
    add-long/2addr v11, v0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    :goto_1
    int-to-long v0, v0

    add-long v1, v11, v0

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    :goto_2
    int-to-long v11, v0

    add-long/2addr v1, v11

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    :goto_3
    int-to-long v3, v0

    add-long v2, v1, v3

    if-eqz v7, :cond_4

    invoke-static {v7}, Lcom/zte/zdm/d/c/ba;->b(Lcom/zte/zdm/d/c/s;)J

    move-result-wide v0

    :goto_4
    add-long/2addr v2, v0

    if-eqz v8, :cond_5

    invoke-static {v8}, Lcom/zte/zdm/d/c/ba;->b(Lcom/zte/zdm/d/c/l;)J

    move-result-wide v0

    :goto_5
    add-long/2addr v2, v0

    if-eqz v9, :cond_6

    invoke-static {v9}, Lcom/zte/zdm/d/c/ba;->b(Lcom/zte/zdm/d/c/u;)J

    move-result-wide v0

    :goto_6
    add-long v1, v2, v0

    const/4 v0, 0x0

    move v3, v0

    :goto_7
    if-eqz v5, :cond_7

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_7

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/d/c/bn;

    invoke-static {v0}, Lcom/zte/zdm/d/c/ba;->b(Lcom/zte/zdm/d/c/bn;)J

    move-result-wide v7

    add-long/2addr v1, v7

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_7

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    goto :goto_3

    :cond_4
    const-wide/16 v0, 0x0

    goto :goto_4

    :cond_5
    const-wide/16 v0, 0x0

    goto :goto_5

    :cond_6
    const-wide/16 v0, 0x0

    goto :goto_6

    :cond_7
    const/4 v0, 0x0

    move v3, v0

    :goto_8
    if-eqz v6, :cond_8

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_8

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/d/c/bc;

    invoke-static {v0}, Lcom/zte/zdm/d/c/ba;->b(Lcom/zte/zdm/d/c/bc;)J

    move-result-wide v4

    add-long/2addr v1, v4

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_8

    :cond_8
    const/4 v0, 0x0

    move-wide v13, v1

    move-wide v2, v13

    move v1, v0

    :goto_9
    if-eqz v10, :cond_9

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_9

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/d/c/ai;

    invoke-static {v0}, Lcom/zte/zdm/d/c/ba;->b(Lcom/zte/zdm/d/c/ai;)J

    move-result-wide v4

    add-long/2addr v2, v4

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_9

    :cond_9
    return-wide v2
.end method

.method public static b(Lcom/zte/zdm/d/c/bf;)J
    .locals 12

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/bf;->g()Lcom/zte/zdm/d/c/bm;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/bf;->h()Lcom/zte/zdm/d/c/bb;

    move-result-object v6

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/bf;->e()Lcom/zte/zdm/d/c/ap;

    move-result-object v7

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/bf;->j()I

    move-result v8

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/bf;->i()Ljava/util/ArrayList;

    move-result-object v9

    const-wide/16 v4, 0x4

    invoke-static {p0}, Lcom/zte/zdm/d/c/ba;->b(Lcom/zte/zdm/d/c/a;)J

    move-result-wide v10

    add-long/2addr v10, v4

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/zte/zdm/d/c/ba;->b(Lcom/zte/zdm/d/c/bm;)J

    move-result-wide v4

    :goto_0
    add-long/2addr v10, v4

    if-eqz v6, :cond_2

    invoke-static {v6}, Lcom/zte/zdm/d/c/ba;->b(Lcom/zte/zdm/d/c/bb;)J

    move-result-wide v4

    :goto_1
    add-long/2addr v4, v10

    if-eqz v7, :cond_0

    invoke-static {v7}, Lcom/zte/zdm/d/c/ba;->b(Lcom/zte/zdm/d/c/ap;)J

    move-result-wide v2

    :cond_0
    add-long/2addr v2, v4

    if-eqz v8, :cond_3

    const/4 v0, 0x4

    :goto_2
    int-to-long v4, v0

    add-long/2addr v2, v4

    :goto_3
    if-eqz v9, :cond_4

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/d/c/a;

    invoke-static {v0}, Lcom/zte/zdm/d/c/ba;->d(Lcom/zte/zdm/d/c/a;)J

    move-result-wide v4

    add-long/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_1
    move-wide v4, v2

    goto :goto_0

    :cond_2
    move-wide v4, v2

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    :cond_4
    return-wide v2
.end method

.method public static b(Lcom/zte/zdm/d/c/bh;)J
    .locals 7

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/bh;->a()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/bh;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int/lit8 v0, v0, 0x4

    int-to-long v2, v0

    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/d/c/a;

    invoke-static {v0}, Lcom/zte/zdm/d/c/ba;->d(Lcom/zte/zdm/d/c/a;)J

    move-result-wide v5

    add-long/2addr v2, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    return-wide v2
.end method

.method public static b(Lcom/zte/zdm/d/c/bi;)J
    .locals 9

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/bi;->a()Ljava/util/ArrayList;

    move-result-object v4

    const-wide/16 v1, 0x4

    const/4 v0, 0x0

    move-wide v7, v1

    move-wide v2, v7

    move v1, v0

    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/d/c/bl;

    invoke-static {v0}, Lcom/zte/zdm/d/c/ba;->b(Lcom/zte/zdm/d/c/bl;)J

    move-result-wide v5

    add-long/2addr v2, v5

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-wide v2
.end method

.method public static b(Lcom/zte/zdm/d/c/bj;)J
    .locals 13

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/bj;->a()Lcom/zte/zdm/d/c/bo;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/bj;->b()Lcom/zte/zdm/d/c/bp;

    move-result-object v2

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/bj;->c()Lcom/zte/zdm/d/c/az;

    move-result-object v3

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/bj;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/bj;->e()Lcom/zte/zdm/d/c/bm;

    move-result-object v5

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/bj;->f()Lcom/zte/zdm/d/c/bb;

    move-result-object v6

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/bj;->g()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/bj;->h()Z

    move-result v8

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/bj;->j()Lcom/zte/zdm/d/c/s;

    move-result-object v9

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/bj;->k()Lcom/zte/zdm/d/c/ap;

    move-result-object v10

    const-wide/16 v11, 0x4

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/zte/zdm/d/c/ba;->b(Lcom/zte/zdm/d/c/bo;)J

    move-result-wide v0

    :goto_0
    add-long/2addr v11, v0

    if-eqz v2, :cond_1

    invoke-static {v2}, Lcom/zte/zdm/d/c/ba;->b(Lcom/zte/zdm/d/c/bp;)J

    move-result-wide v0

    :goto_1
    add-long/2addr v11, v0

    if-eqz v3, :cond_2

    invoke-static {v3}, Lcom/zte/zdm/d/c/ba;->b(Lcom/zte/zdm/d/c/az;)J

    move-result-wide v0

    :goto_2
    add-long v1, v11, v0

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    :goto_3
    int-to-long v3, v0

    add-long v2, v1, v3

    if-eqz v5, :cond_4

    invoke-static {v5}, Lcom/zte/zdm/d/c/ba;->b(Lcom/zte/zdm/d/c/bm;)J

    move-result-wide v0

    :goto_4
    add-long/2addr v2, v0

    if-eqz v6, :cond_5

    invoke-static {v6}, Lcom/zte/zdm/d/c/ba;->b(Lcom/zte/zdm/d/c/bb;)J

    move-result-wide v0

    :goto_5
    add-long v1, v2, v0

    if-eqz v7, :cond_6

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    :goto_6
    int-to-long v3, v0

    add-long/2addr v1, v3

    if-eqz v8, :cond_7

    const/4 v0, 0x1

    :goto_7
    int-to-long v3, v0

    add-long v2, v1, v3

    if-eqz v9, :cond_8

    invoke-static {v9}, Lcom/zte/zdm/d/c/ba;->b(Lcom/zte/zdm/d/c/s;)J

    move-result-wide v0

    :goto_8
    add-long/2addr v2, v0

    if-eqz v10, :cond_9

    invoke-static {v10}, Lcom/zte/zdm/d/c/ba;->b(Lcom/zte/zdm/d/c/ap;)J

    move-result-wide v0

    :goto_9
    add-long/2addr v0, v2

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_1

    :cond_2
    const-wide/16 v0, 0x0

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    goto :goto_3

    :cond_4
    const-wide/16 v0, 0x0

    goto :goto_4

    :cond_5
    const-wide/16 v0, 0x0

    goto :goto_5

    :cond_6
    const/16 v0, 0x50

    goto :goto_6

    :cond_7
    const/4 v0, 0x0

    goto :goto_7

    :cond_8
    const-wide/16 v0, 0x0

    goto :goto_8

    :cond_9
    const-wide/16 v0, 0x0

    goto :goto_9
.end method

.method public static b(Lcom/zte/zdm/d/c/bk;)J
    .locals 6

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/bk;->a()Lcom/zte/zdm/d/c/bj;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/bk;->b()Lcom/zte/zdm/d/c/bh;

    move-result-object v1

    const-wide/16 v2, 0x1d

    invoke-static {v0}, Lcom/zte/zdm/d/c/ba;->b(Lcom/zte/zdm/d/c/bj;)J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-static {v1}, Lcom/zte/zdm/d/c/ba;->b(Lcom/zte/zdm/d/c/bh;)J

    move-result-wide v0

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public static b(Lcom/zte/zdm/d/c/bl;)J
    .locals 2

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/bl;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    int-to-long v0, v0

    return-wide v0
.end method

.method public static b(Lcom/zte/zdm/d/c/bm;)J
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/bm;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/bm;->b()Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    :goto_0
    add-int/lit8 v1, v1, 0x4

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    :cond_0
    add-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0

    :cond_1
    move v1, v0

    goto :goto_0
.end method

.method public static b(Lcom/zte/zdm/d/c/bn;)J
    .locals 4

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/bn;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/bn;->b()Lcom/zte/zdm/d/c/bm;

    move-result-object v1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x4

    int-to-long v2, v0

    if-eqz v1, :cond_1

    invoke-static {v1}, Lcom/zte/zdm/d/c/ba;->b(Lcom/zte/zdm/d/c/bm;)J

    move-result-wide v0

    :goto_1
    add-long/2addr v0, v2

    return-wide v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_1
.end method

.method public static b(Lcom/zte/zdm/d/c/bo;)J
    .locals 2

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/bo;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    int-to-long v0, v0

    return-wide v0
.end method

.method public static b(Lcom/zte/zdm/d/c/bp;)J
    .locals 2

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/bp;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    int-to-long v0, v0

    return-wide v0
.end method

.method public static b(Lcom/zte/zdm/d/c/c;)J
    .locals 7

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/c;->g()I

    move-result v0

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/c;->k()Ljava/util/ArrayList;

    move-result-object v4

    const-wide/16 v2, 0x4

    invoke-static {p0}, Lcom/zte/zdm/d/c/ba;->b(Lcom/zte/zdm/d/c/a;)J

    move-result-wide v5

    add-long/2addr v2, v5

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    :goto_0
    int-to-long v5, v0

    add-long/2addr v2, v5

    :goto_1
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/d/c/ai;

    invoke-static {v0}, Lcom/zte/zdm/d/c/ba;->b(Lcom/zte/zdm/d/c/ai;)J

    move-result-wide v5

    add-long/2addr v2, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    return-wide v2
.end method

.method public static b(Lcom/zte/zdm/d/c/e;)J
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/e;->b()Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    :goto_0
    add-int/lit8 v1, v1, 0x19

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    :cond_0
    add-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0

    :cond_1
    move v1, v0

    goto :goto_0
.end method

.method public static b(Lcom/zte/zdm/d/c/f;)J
    .locals 9

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/f;->e()Lcom/zte/zdm/d/c/ap;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/f;->g()Ljava/util/ArrayList;

    move-result-object v4

    const-wide/16 v1, 0x4

    invoke-static {p0}, Lcom/zte/zdm/d/c/ba;->b(Lcom/zte/zdm/d/c/a;)J

    move-result-wide v5

    add-long v2, v1, v5

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/zte/zdm/d/c/ba;->b(Lcom/zte/zdm/d/c/ap;)J

    move-result-wide v0

    :goto_0
    add-long v1, v2, v0

    const/4 v0, 0x0

    move-wide v7, v1

    move-wide v2, v7

    move v1, v0

    :goto_1
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/d/c/a;

    invoke-static {v0}, Lcom/zte/zdm/d/c/ba;->d(Lcom/zte/zdm/d/c/a;)J

    move-result-wide v5

    add-long/2addr v2, v5

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_1
    return-wide v2
.end method

.method public static b(Lcom/zte/zdm/d/c/h;)J
    .locals 9

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/h;->a()Ljava/util/ArrayList;

    move-result-object v4

    const-wide/16 v1, 0x4

    const/4 v0, 0x0

    move-wide v7, v1

    move-wide v2, v7

    move v1, v0

    :goto_0
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/d/c/k;

    invoke-static {v0}, Lcom/zte/zdm/d/c/ba;->b(Lcom/zte/zdm/d/c/k;)J

    move-result-wide v5

    add-long/2addr v2, v5

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-wide v2
.end method

.method public static b(Lcom/zte/zdm/d/c/i;)J
    .locals 15

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/i;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/i;->b()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/i;->d()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/i;->e()I

    move-result v8

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/i;->c()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/i;->f()Ljava/util/ArrayList;

    move-result-object v10

    const-wide/16 v2, 0x0

    move v4, v1

    :goto_0
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_0

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    int-to-long v11, v0

    add-long/2addr v2, v11

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    :cond_0
    move-wide v13, v2

    move-wide v3, v13

    move v2, v1

    :goto_1
    if-eqz v10, :cond_1

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/d/c/q;

    invoke-static {v0}, Lcom/zte/zdm/d/c/ba;->b(Lcom/zte/zdm/d/c/q;)J

    move-result-wide v11

    add-long/2addr v3, v11

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_1
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    move v2, v0

    :goto_2
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    :goto_3
    add-int/2addr v2, v0

    if-eqz v8, :cond_4

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    :goto_4
    add-int/2addr v2, v0

    if-eqz v9, :cond_5

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    :goto_5
    add-int/2addr v0, v2

    int-to-long v0, v0

    add-long/2addr v0, v3

    return-wide v0

    :cond_2
    move v2, v1

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_3

    :cond_4
    move v0, v1

    goto :goto_4

    :cond_5
    move v0, v1

    goto :goto_5
.end method

.method public static b(Lcom/zte/zdm/d/c/j;)J
    .locals 2

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/j;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    int-to-long v0, v0

    return-wide v0
.end method

.method public static b(Lcom/zte/zdm/d/c/k;)J
    .locals 10

    const-wide/16 v1, 0x0

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/k;->a()Lcom/zte/zdm/d/c/j;

    move-result-object v6

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/k;->b()Ljava/util/ArrayList;

    move-result-object v7

    const/4 v0, 0x0

    move v3, v0

    move-wide v4, v1

    :goto_0
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_0

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/d/c/i;

    invoke-static {v0}, Lcom/zte/zdm/d/c/ba;->b(Lcom/zte/zdm/d/c/i;)J

    move-result-wide v8

    add-long/2addr v4, v8

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_0
    if-eqz v6, :cond_1

    invoke-static {v6}, Lcom/zte/zdm/d/c/ba;->b(Lcom/zte/zdm/d/c/j;)J

    move-result-wide v0

    :goto_1
    add-long/2addr v0, v4

    return-wide v0

    :cond_1
    move-wide v0, v1

    goto :goto_1
.end method

.method public static b(Lcom/zte/zdm/d/c/l;)J
    .locals 4

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/l;->a()Lcom/zte/zdm/d/c/ap;

    move-result-object v0

    const-wide/16 v2, 0x4

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/zte/zdm/d/c/ba;->a(Lcom/zte/zdm/d/c/ap;)J

    move-result-wide v0

    :goto_0
    add-long/2addr v0, v2

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static b(Lcom/zte/zdm/d/c/m;)J
    .locals 2

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/m;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    int-to-long v0, v0

    return-wide v0
.end method

.method public static b(Lcom/zte/zdm/d/c/n;)J
    .locals 7

    const-wide/16 v0, 0x0

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/n;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/n;->a()Lcom/zte/zdm/d/c/e;

    move-result-object v3

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/n;->b()Lcom/zte/zdm/d/c/y;

    move-result-object v4

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    :goto_0
    add-int/lit8 v2, v2, 0x4

    int-to-long v5, v2

    if-eqz v3, :cond_2

    invoke-static {v3}, Lcom/zte/zdm/d/c/ba;->b(Lcom/zte/zdm/d/c/e;)J

    move-result-wide v2

    :goto_1
    add-long/2addr v2, v5

    if-eqz v4, :cond_0

    invoke-static {v4}, Lcom/zte/zdm/d/c/ba;->b(Lcom/zte/zdm/d/c/y;)J

    move-result-wide v0

    :cond_0
    add-long/2addr v0, v2

    return-wide v0

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    move-wide v2, v0

    goto :goto_1
.end method

.method public static b(Lcom/zte/zdm/d/c/p;)J
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/p;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/p;->b()Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    :goto_0
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    :cond_0
    add-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0

    :cond_1
    move v1, v0

    goto :goto_0
.end method

.method public static b(Lcom/zte/zdm/d/c/q;)J
    .locals 14

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/q;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/q;->b()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/q;->d()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/q;->e()I

    move-result v8

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/q;->c()Ljava/lang/String;

    move-result-object v9

    const-wide/16 v2, 0x0

    move-wide v12, v2

    move-wide v3, v12

    move v2, v1

    :goto_0
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    int-to-long v10, v0

    add-long/2addr v3, v10

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    move v2, v0

    :goto_1
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    :goto_2
    add-int/2addr v2, v0

    if-eqz v8, :cond_3

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    :goto_3
    add-int/2addr v2, v0

    if-eqz v9, :cond_4

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    :goto_4
    add-int/2addr v0, v2

    int-to-long v0, v0

    add-long/2addr v0, v3

    return-wide v0

    :cond_1
    move v2, v1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_3

    :cond_4
    move v0, v1

    goto :goto_4
.end method

.method public static b(Lcom/zte/zdm/d/c/r;)J
    .locals 9

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/r;->e()Lcom/zte/zdm/d/c/ap;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/r;->k()Ljava/util/ArrayList;

    move-result-object v4

    const-wide/16 v1, 0x4

    invoke-static {p0}, Lcom/zte/zdm/d/c/ba;->b(Lcom/zte/zdm/d/c/a;)J

    move-result-wide v5

    add-long v2, v1, v5

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/zte/zdm/d/c/ba;->b(Lcom/zte/zdm/d/c/ap;)J

    move-result-wide v0

    :goto_0
    add-long v1, v2, v0

    const/4 v0, 0x0

    move-wide v7, v1

    move-wide v2, v7

    move v1, v0

    :goto_1
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/d/c/ai;

    invoke-static {v0}, Lcom/zte/zdm/d/c/ba;->b(Lcom/zte/zdm/d/c/ai;)J

    move-result-wide v5

    add-long/2addr v2, v5

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_1
    return-wide v2
.end method

.method public static b(Lcom/zte/zdm/d/c/s;)J
    .locals 5

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/s;->f()Lcom/zte/zdm/d/c/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/g;->g()Lcom/zte/zdm/d/c/ap;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/s;->c()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x4

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/zte/zdm/d/c/ba;->b(Lcom/zte/zdm/d/c/ap;)J

    move-result-wide v0

    :goto_0
    add-long/2addr v3, v0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    :goto_1
    int-to-long v0, v0

    add-long/2addr v0, v3

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static b(Lcom/zte/zdm/d/c/t;)J
    .locals 9

    const-wide/16 v7, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/t;->c()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/t;->d()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/t;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    add-int/lit8 v6, v1, 0x4

    cmp-long v1, v2, v7

    if-ltz v1, :cond_2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    :goto_1
    add-int/2addr v1, v6

    cmp-long v2, v4, v7

    if-ltz v2, :cond_0

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    :cond_0
    add-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0

    :cond_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v1, v0

    goto :goto_1
.end method

.method public static b(Lcom/zte/zdm/d/c/u;)J
    .locals 2

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/u;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    int-to-long v0, v0

    return-wide v0
.end method

.method public static b(Lcom/zte/zdm/d/c/v;)J
    .locals 20

    invoke-virtual/range {p0 .. p0}, Lcom/zte/zdm/d/c/v;->a()Lcom/zte/zdm/d/c/bc;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/zte/zdm/d/c/v;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/zte/zdm/d/c/v;->c()J

    move-result-wide v6

    invoke-virtual/range {p0 .. p0}, Lcom/zte/zdm/d/c/v;->d()Lcom/zte/zdm/d/c/p;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/zte/zdm/d/c/v;->e()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcom/zte/zdm/d/c/v;->f()Lcom/zte/zdm/d/c/p;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lcom/zte/zdm/d/c/v;->g()Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/zte/zdm/d/c/v;->h()Lcom/zte/zdm/d/c/t;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/zte/zdm/d/c/v;->i()Lcom/zte/zdm/d/c/bi;

    move-result-object v13

    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    move v3, v0

    :goto_0
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_0

    const-wide/16 v14, 0x4

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/d/c/p;

    invoke-static {v0}, Lcom/zte/zdm/d/c/ba;->b(Lcom/zte/zdm/d/c/p;)J

    move-result-wide v16

    add-long v14, v14, v16

    add-long/2addr v1, v14

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move-wide/from16 v18, v1

    move-wide/from16 v2, v18

    move v1, v0

    :goto_1
    if-eqz v11, :cond_1

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    const-wide/16 v14, 0x4

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/d/c/p;

    invoke-static {v0}, Lcom/zte/zdm/d/c/ba;->b(Lcom/zte/zdm/d/c/p;)J

    move-result-wide v16

    add-long v14, v14, v16

    add-long/2addr v2, v14

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    const-wide/16 v14, 0x4

    if-eqz v4, :cond_2

    invoke-static {v4}, Lcom/zte/zdm/d/c/ba;->b(Lcom/zte/zdm/d/c/bc;)J

    move-result-wide v0

    :goto_2
    add-long/2addr v14, v0

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :goto_3
    int-to-long v0, v0

    add-long v4, v14, v0

    const-wide/16 v0, 0x0

    cmp-long v0, v6, v0

    if-lez v0, :cond_4

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    :goto_4
    int-to-long v0, v0

    add-long/2addr v4, v0

    if-eqz v8, :cond_5

    const-wide/16 v0, 0x4

    invoke-static {v8}, Lcom/zte/zdm/d/c/ba;->b(Lcom/zte/zdm/d/c/p;)J

    move-result-wide v6

    add-long/2addr v0, v6

    :goto_5
    add-long/2addr v4, v0

    if-eqz v10, :cond_6

    const-wide/16 v0, 0x4

    invoke-static {v10}, Lcom/zte/zdm/d/c/ba;->b(Lcom/zte/zdm/d/c/p;)J

    move-result-wide v6

    add-long/2addr v0, v6

    :goto_6
    add-long/2addr v4, v0

    if-eqz v12, :cond_7

    invoke-static {v12}, Lcom/zte/zdm/d/c/ba;->b(Lcom/zte/zdm/d/c/t;)J

    move-result-wide v0

    :goto_7
    add-long/2addr v4, v0

    if-eqz v13, :cond_8

    invoke-static {v13}, Lcom/zte/zdm/d/c/ba;->b(Lcom/zte/zdm/d/c/bi;)J

    move-result-wide v0

    :goto_8
    add-long/2addr v0, v4

    add-long/2addr v0, v2

    return-wide v0

    :cond_2
    const-wide/16 v0, 0x0

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    goto :goto_4

    :cond_5
    const-wide/16 v0, 0x0

    goto :goto_5

    :cond_6
    const-wide/16 v0, 0x0

    goto :goto_6

    :cond_7
    const-wide/16 v0, 0x0

    goto :goto_7

    :cond_8
    const-wide/16 v0, 0x0

    goto :goto_8
.end method

.method public static b(Lcom/zte/zdm/d/c/w;)J
    .locals 10

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/w;->e()Lcom/zte/zdm/d/c/ap;

    move-result-object v3

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/w;->k()Ljava/util/ArrayList;

    move-result-object v5

    const-wide/16 v6, 0x4

    invoke-static {p0}, Lcom/zte/zdm/d/c/ba;->b(Lcom/zte/zdm/d/c/a;)J

    move-result-wide v8

    add-long/2addr v6, v8

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/w;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    int-to-long v8, v0

    add-long/2addr v6, v8

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/w;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    int-to-long v0, v1

    add-long/2addr v6, v0

    if-eqz v3, :cond_2

    invoke-static {v3}, Lcom/zte/zdm/d/c/ba;->b(Lcom/zte/zdm/d/c/ap;)J

    move-result-wide v0

    :goto_2
    add-long/2addr v0, v6

    move-wide v3, v0

    :goto_3
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/d/c/ai;

    invoke-static {v0}, Lcom/zte/zdm/d/c/ba;->b(Lcom/zte/zdm/d/c/ai;)J

    move-result-wide v0

    add-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    move-wide v3, v0

    goto :goto_3

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    const-wide/16 v0, 0x0

    goto :goto_2

    :cond_3
    return-wide v3
.end method

.method public static b(Lcom/zte/zdm/d/c/y;)J
    .locals 20

    invoke-virtual/range {p0 .. p0}, Lcom/zte/zdm/d/c/y;->a()Lcom/zte/zdm/d/c/bo;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/zte/zdm/d/c/y;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/zte/zdm/d/c/y;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/zte/zdm/d/c/y;->d()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/zte/zdm/d/c/y;->e()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/zte/zdm/d/c/y;->f()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcom/zte/zdm/d/c/y;->g()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lcom/zte/zdm/d/c/y;->h()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/zte/zdm/d/c/y;->i()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/zte/zdm/d/c/y;->j()Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/zte/zdm/d/c/y;->k()Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/zte/zdm/d/c/y;->l()Ljava/util/ArrayList;

    move-result-object v15

    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    move v3, v0

    :goto_0
    if-eqz v13, :cond_0

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_0

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/d/c/v;

    invoke-static {v0}, Lcom/zte/zdm/d/c/ba;->b(Lcom/zte/zdm/d/c/v;)J

    move-result-wide v16

    add-long v1, v1, v16

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move v3, v0

    :goto_1
    if-eqz v14, :cond_1

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_1

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/d/c/h;

    invoke-static {v0}, Lcom/zte/zdm/d/c/ba;->b(Lcom/zte/zdm/d/c/h;)J

    move-result-wide v16

    add-long v1, v1, v16

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    move-wide/from16 v18, v1

    move-wide/from16 v2, v18

    move v1, v0

    :goto_2
    if-eqz v15, :cond_2

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/d/c/af;

    invoke-static {v0}, Lcom/zte/zdm/d/c/ba;->b(Lcom/zte/zdm/d/c/af;)J

    move-result-wide v13

    add-long/2addr v2, v13

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_2
    const-wide/16 v13, 0x4

    if-eqz v4, :cond_3

    invoke-static {v4}, Lcom/zte/zdm/d/c/ba;->b(Lcom/zte/zdm/d/c/bo;)J

    move-result-wide v0

    :goto_3
    add-long/2addr v13, v0

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    :goto_4
    int-to-long v0, v0

    add-long v4, v13, v0

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    :goto_5
    int-to-long v0, v0

    add-long/2addr v4, v0

    if-eqz v7, :cond_6

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    :goto_6
    int-to-long v0, v0

    add-long/2addr v4, v0

    if-eqz v8, :cond_7

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    :goto_7
    int-to-long v0, v0

    add-long/2addr v4, v0

    if-eqz v9, :cond_8

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    :goto_8
    int-to-long v0, v0

    add-long/2addr v4, v0

    if-eqz v10, :cond_9

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    :goto_9
    int-to-long v0, v0

    add-long/2addr v4, v0

    if-eqz v11, :cond_a

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    :goto_a
    int-to-long v0, v0

    add-long/2addr v4, v0

    if-eqz v12, :cond_b

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    :goto_b
    int-to-long v0, v0

    add-long/2addr v4, v0

    invoke-virtual/range {p0 .. p0}, Lcom/zte/zdm/d/c/y;->m()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_c
    int-to-long v0, v0

    add-long/2addr v4, v0

    invoke-virtual/range {p0 .. p0}, Lcom/zte/zdm/d/c/y;->o()Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    :goto_d
    int-to-long v0, v0

    add-long/2addr v4, v0

    invoke-virtual/range {p0 .. p0}, Lcom/zte/zdm/d/c/y;->q()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_e
    int-to-long v0, v0

    add-long/2addr v0, v4

    add-long/2addr v0, v2

    return-wide v0

    :cond_3
    const-wide/16 v0, 0x0

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    goto :goto_4

    :cond_5
    const/4 v0, 0x0

    goto :goto_5

    :cond_6
    const/4 v0, 0x0

    goto :goto_6

    :cond_7
    const/4 v0, 0x0

    goto :goto_7

    :cond_8
    const/4 v0, 0x0

    goto :goto_8

    :cond_9
    const/4 v0, 0x0

    goto :goto_9

    :cond_a
    const/4 v0, 0x0

    goto :goto_a

    :cond_b
    const/4 v0, 0x0

    goto :goto_b

    :cond_c
    const/4 v0, 0x0

    goto :goto_c

    :cond_d
    const/4 v0, 0x0

    goto :goto_d

    :cond_e
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static b(Lcom/zte/zdm/d/c/z;)J
    .locals 4

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/z;->a()Lcom/zte/zdm/d/c/y;

    move-result-object v0

    const-wide/16 v2, 0x4

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/zte/zdm/d/c/ba;->b(Lcom/zte/zdm/d/c/y;)J

    move-result-wide v0

    :goto_0
    add-long/2addr v0, v2

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static c()J
    .locals 2

    const-wide/16 v0, 0x17

    return-wide v0
.end method

.method public static c(Lcom/zte/zdm/d/c/a;)J
    .locals 3

    const-wide/16 v0, 0x0

    instance-of v2, p0, Lcom/zte/zdm/d/c/b;

    if-eqz v2, :cond_1

    check-cast p0, Lcom/zte/zdm/d/c/b;

    invoke-static {p0}, Lcom/zte/zdm/d/c/ba;->a(Lcom/zte/zdm/d/c/b;)J

    move-result-wide v0

    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    instance-of v2, p0, Lcom/zte/zdm/d/c/c;

    if-eqz v2, :cond_2

    check-cast p0, Lcom/zte/zdm/d/c/c;

    invoke-static {p0}, Lcom/zte/zdm/d/c/ba;->a(Lcom/zte/zdm/d/c/c;)J

    move-result-wide v0

    goto :goto_0

    :cond_2
    instance-of v2, p0, Lcom/zte/zdm/d/c/f;

    if-eqz v2, :cond_3

    check-cast p0, Lcom/zte/zdm/d/c/f;

    invoke-static {p0}, Lcom/zte/zdm/d/c/ba;->a(Lcom/zte/zdm/d/c/f;)J

    move-result-wide v0

    goto :goto_0

    :cond_3
    instance-of v2, p0, Lcom/zte/zdm/d/c/r;

    if-eqz v2, :cond_4

    check-cast p0, Lcom/zte/zdm/d/c/r;

    invoke-static {p0}, Lcom/zte/zdm/d/c/ba;->a(Lcom/zte/zdm/d/c/r;)J

    move-result-wide v0

    goto :goto_0

    :cond_4
    instance-of v2, p0, Lcom/zte/zdm/d/c/w;

    if-eqz v2, :cond_5

    check-cast p0, Lcom/zte/zdm/d/c/w;

    invoke-static {p0}, Lcom/zte/zdm/d/c/ba;->a(Lcom/zte/zdm/d/c/w;)J

    move-result-wide v0

    goto :goto_0

    :cond_5
    instance-of v2, p0, Lcom/zte/zdm/d/c/ae;

    if-eqz v2, :cond_6

    check-cast p0, Lcom/zte/zdm/d/c/ae;

    invoke-static {p0}, Lcom/zte/zdm/d/c/ba;->a(Lcom/zte/zdm/d/c/ae;)J

    move-result-wide v0

    goto :goto_0

    :cond_6
    instance-of v2, p0, Lcom/zte/zdm/d/c/ag;

    if-eqz v2, :cond_7

    check-cast p0, Lcom/zte/zdm/d/c/ag;

    invoke-static {p0}, Lcom/zte/zdm/d/c/ba;->a(Lcom/zte/zdm/d/c/ag;)J

    move-result-wide v0

    goto :goto_0

    :cond_7
    instance-of v2, p0, Lcom/zte/zdm/d/c/ak;

    if-eqz v2, :cond_8

    check-cast p0, Lcom/zte/zdm/d/c/ak;

    invoke-static {p0}, Lcom/zte/zdm/d/c/ba;->a(Lcom/zte/zdm/d/c/ak;)J

    move-result-wide v0

    goto :goto_0

    :cond_8
    instance-of v2, p0, Lcom/zte/zdm/d/c/as;

    if-eqz v2, :cond_9

    check-cast p0, Lcom/zte/zdm/d/c/as;

    invoke-static {p0}, Lcom/zte/zdm/d/c/ba;->a(Lcom/zte/zdm/d/c/as;)J

    move-result-wide v0

    goto :goto_0

    :cond_9
    instance-of v2, p0, Lcom/zte/zdm/d/c/at;

    if-eqz v2, :cond_a

    check-cast p0, Lcom/zte/zdm/d/c/at;

    invoke-static {p0}, Lcom/zte/zdm/d/c/ba;->a(Lcom/zte/zdm/d/c/at;)J

    move-result-wide v0

    goto :goto_0

    :cond_a
    instance-of v2, p0, Lcom/zte/zdm/d/c/aw;

    if-eqz v2, :cond_b

    check-cast p0, Lcom/zte/zdm/d/c/aw;

    invoke-static {p0}, Lcom/zte/zdm/d/c/ba;->a(Lcom/zte/zdm/d/c/aw;)J

    move-result-wide v0

    goto :goto_0

    :cond_b
    instance-of v2, p0, Lcom/zte/zdm/d/c/ax;

    if-eqz v2, :cond_c

    check-cast p0, Lcom/zte/zdm/d/c/ax;

    invoke-static {p0}, Lcom/zte/zdm/d/c/ba;->a(Lcom/zte/zdm/d/c/ax;)J

    move-result-wide v0

    goto :goto_0

    :cond_c
    instance-of v2, p0, Lcom/zte/zdm/d/c/ay;

    if-eqz v2, :cond_d

    check-cast p0, Lcom/zte/zdm/d/c/ay;

    invoke-static {p0}, Lcom/zte/zdm/d/c/ba;->a(Lcom/zte/zdm/d/c/ay;)J

    move-result-wide v0

    goto/16 :goto_0

    :cond_d
    instance-of v2, p0, Lcom/zte/zdm/d/c/bd;

    if-eqz v2, :cond_e

    check-cast p0, Lcom/zte/zdm/d/c/bd;

    invoke-static {p0}, Lcom/zte/zdm/d/c/ba;->a(Lcom/zte/zdm/d/c/bd;)J

    move-result-wide v0

    goto/16 :goto_0

    :cond_e
    instance-of v2, p0, Lcom/zte/zdm/d/c/bf;

    if-eqz v2, :cond_0

    check-cast p0, Lcom/zte/zdm/d/c/bf;

    invoke-static {p0}, Lcom/zte/zdm/d/c/ba;->a(Lcom/zte/zdm/d/c/bf;)J

    move-result-wide v0

    goto/16 :goto_0
.end method

.method public static d()J
    .locals 2

    const-wide/16 v0, 0x4

    return-wide v0
.end method

.method public static d(Lcom/zte/zdm/d/c/a;)J
    .locals 3

    const-wide/16 v0, 0x0

    instance-of v2, p0, Lcom/zte/zdm/d/c/b;

    if-eqz v2, :cond_1

    check-cast p0, Lcom/zte/zdm/d/c/b;

    invoke-static {p0}, Lcom/zte/zdm/d/c/ba;->b(Lcom/zte/zdm/d/c/b;)J

    move-result-wide v0

    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    instance-of v2, p0, Lcom/zte/zdm/d/c/c;

    if-eqz v2, :cond_2

    check-cast p0, Lcom/zte/zdm/d/c/c;

    invoke-static {p0}, Lcom/zte/zdm/d/c/ba;->b(Lcom/zte/zdm/d/c/c;)J

    move-result-wide v0

    goto :goto_0

    :cond_2
    instance-of v2, p0, Lcom/zte/zdm/d/c/f;

    if-eqz v2, :cond_3

    check-cast p0, Lcom/zte/zdm/d/c/f;

    invoke-static {p0}, Lcom/zte/zdm/d/c/ba;->b(Lcom/zte/zdm/d/c/f;)J

    move-result-wide v0

    goto :goto_0

    :cond_3
    instance-of v2, p0, Lcom/zte/zdm/d/c/r;

    if-eqz v2, :cond_4

    check-cast p0, Lcom/zte/zdm/d/c/r;

    invoke-static {p0}, Lcom/zte/zdm/d/c/ba;->b(Lcom/zte/zdm/d/c/r;)J

    move-result-wide v0

    goto :goto_0

    :cond_4
    instance-of v2, p0, Lcom/zte/zdm/d/c/w;

    if-eqz v2, :cond_5

    check-cast p0, Lcom/zte/zdm/d/c/w;

    invoke-static {p0}, Lcom/zte/zdm/d/c/ba;->b(Lcom/zte/zdm/d/c/w;)J

    move-result-wide v0

    goto :goto_0

    :cond_5
    instance-of v2, p0, Lcom/zte/zdm/d/c/ae;

    if-eqz v2, :cond_6

    check-cast p0, Lcom/zte/zdm/d/c/ae;

    invoke-static {p0}, Lcom/zte/zdm/d/c/ba;->b(Lcom/zte/zdm/d/c/ae;)J

    move-result-wide v0

    goto :goto_0

    :cond_6
    instance-of v2, p0, Lcom/zte/zdm/d/c/ag;

    if-eqz v2, :cond_7

    check-cast p0, Lcom/zte/zdm/d/c/ag;

    invoke-static {p0}, Lcom/zte/zdm/d/c/ba;->b(Lcom/zte/zdm/d/c/ag;)J

    move-result-wide v0

    goto :goto_0

    :cond_7
    instance-of v2, p0, Lcom/zte/zdm/d/c/ak;

    if-eqz v2, :cond_8

    check-cast p0, Lcom/zte/zdm/d/c/ak;

    invoke-static {p0}, Lcom/zte/zdm/d/c/ba;->b(Lcom/zte/zdm/d/c/ak;)J

    move-result-wide v0

    goto :goto_0

    :cond_8
    instance-of v2, p0, Lcom/zte/zdm/d/c/as;

    if-eqz v2, :cond_9

    check-cast p0, Lcom/zte/zdm/d/c/as;

    invoke-static {p0}, Lcom/zte/zdm/d/c/ba;->b(Lcom/zte/zdm/d/c/as;)J

    move-result-wide v0

    goto :goto_0

    :cond_9
    instance-of v2, p0, Lcom/zte/zdm/d/c/at;

    if-eqz v2, :cond_a

    check-cast p0, Lcom/zte/zdm/d/c/at;

    invoke-static {p0}, Lcom/zte/zdm/d/c/ba;->b(Lcom/zte/zdm/d/c/at;)J

    move-result-wide v0

    goto :goto_0

    :cond_a
    instance-of v2, p0, Lcom/zte/zdm/d/c/aw;

    if-eqz v2, :cond_b

    check-cast p0, Lcom/zte/zdm/d/c/aw;

    invoke-static {p0}, Lcom/zte/zdm/d/c/ba;->b(Lcom/zte/zdm/d/c/aw;)J

    move-result-wide v0

    goto :goto_0

    :cond_b
    instance-of v2, p0, Lcom/zte/zdm/d/c/ax;

    if-eqz v2, :cond_c

    check-cast p0, Lcom/zte/zdm/d/c/ax;

    invoke-static {p0}, Lcom/zte/zdm/d/c/ba;->b(Lcom/zte/zdm/d/c/ax;)J

    move-result-wide v0

    goto :goto_0

    :cond_c
    instance-of v2, p0, Lcom/zte/zdm/d/c/ay;

    if-eqz v2, :cond_d

    check-cast p0, Lcom/zte/zdm/d/c/ay;

    invoke-static {p0}, Lcom/zte/zdm/d/c/ba;->b(Lcom/zte/zdm/d/c/ay;)J

    move-result-wide v0

    goto/16 :goto_0

    :cond_d
    instance-of v2, p0, Lcom/zte/zdm/d/c/bd;

    if-eqz v2, :cond_e

    check-cast p0, Lcom/zte/zdm/d/c/bd;

    invoke-static {p0}, Lcom/zte/zdm/d/c/ba;->b(Lcom/zte/zdm/d/c/bd;)J

    move-result-wide v0

    goto/16 :goto_0

    :cond_e
    instance-of v2, p0, Lcom/zte/zdm/d/c/bf;

    if-eqz v2, :cond_0

    check-cast p0, Lcom/zte/zdm/d/c/bf;

    invoke-static {p0}, Lcom/zte/zdm/d/c/ba;->b(Lcom/zte/zdm/d/c/bf;)J

    move-result-wide v0

    goto/16 :goto_0
.end method
