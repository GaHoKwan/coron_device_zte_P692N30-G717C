.class public Lcom/zte/zdm/b/c/e;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/zte/zdm/d/c/a;Ljava/lang/String;)Lcom/zte/zdm/d/c/ai;
    .locals 4

    const/4 v1, 0x0

    instance-of v0, p0, Lcom/zte/zdm/d/c/aj;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    check-cast p0, Lcom/zte/zdm/d/c/aj;

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/aj;->k()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/d/c/ai;

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/ai;->a()Lcom/zte/zdm/d/c/bm;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zte/zdm/d/c/bm;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/zte/zdm/d/c/ai;
    .locals 6

    new-instance v4, Lcom/zte/zdm/d/c/n;

    invoke-direct {v4, p1}, Lcom/zte/zdm/d/c/n;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/zte/zdm/d/c/ap;

    invoke-direct {v3}, Lcom/zte/zdm/d/c/ap;-><init>()V

    const-string v0, "chr"

    invoke-virtual {v3, v0}, Lcom/zte/zdm/d/c/ap;->a(Ljava/lang/String;)V

    new-instance v2, Lcom/zte/zdm/d/c/bb;

    invoke-direct {v2, p0}, Lcom/zte/zdm/d/c/bb;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/zte/zdm/d/c/ai;

    const/4 v1, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/zte/zdm/d/c/ai;-><init>(Lcom/zte/zdm/d/c/bm;Lcom/zte/zdm/d/c/bb;Lcom/zte/zdm/d/c/ap;Lcom/zte/zdm/d/c/n;Z)V

    return-object v0
.end method

.method public static a()Lcom/zte/zdm/d/c/ar;
    .locals 2

    new-instance v0, Lcom/zte/zdm/d/c/ar;

    invoke-static {}, Lcom/zte/zdm/b/g/f;->a()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zte/zdm/d/c/ar;-><init>([B)V

    return-object v0
.end method

.method public static a(Lcom/zte/zdm/d/c/m;Lcom/zte/zdm/mos/b/b/a;)Lcom/zte/zdm/d/c/at;
    .locals 6

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x5

    new-array v5, v0, [Lcom/zte/zdm/d/c/ai;

    const-string v0, "./DevInfo/DevId"

    invoke-virtual {p1}, Lcom/zte/zdm/mos/b/b/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zte/zdm/b/c/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/zte/zdm/d/c/ai;

    move-result-object v0

    aput-object v0, v5, v2

    const/4 v0, 0x1

    const-string v1, "./DevInfo/Mod"

    invoke-virtual {p1}, Lcom/zte/zdm/mos/b/b/a;->c()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/zte/zdm/b/c/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/zte/zdm/d/c/ai;

    move-result-object v1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    const-string v1, "./DevInfo/Man"

    invoke-virtual {p1}, Lcom/zte/zdm/mos/b/b/a;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/zte/zdm/b/c/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/zte/zdm/d/c/ai;

    move-result-object v1

    aput-object v1, v5, v0

    const/4 v0, 0x3

    const-string v1, "./DevInfo/Lang"

    invoke-virtual {p1}, Lcom/zte/zdm/mos/b/b/a;->e()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/zte/zdm/b/c/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/zte/zdm/d/c/ai;

    move-result-object v1

    aput-object v1, v5, v0

    const/4 v0, 0x4

    const-string v1, "./DevInfo/DmV"

    invoke-virtual {p1}, Lcom/zte/zdm/mos/b/b/a;->d()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/zte/zdm/b/c/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/zte/zdm/d/c/ai;

    move-result-object v1

    aput-object v1, v5, v0

    new-instance v0, Lcom/zte/zdm/d/c/at;

    move-object v1, p0

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/zte/zdm/d/c/at;-><init>(Lcom/zte/zdm/d/c/m;ZLcom/zte/zdm/d/c/s;Lcom/zte/zdm/d/c/ap;[Lcom/zte/zdm/d/c/ai;)V

    return-object v0
.end method

.method public static a(Lcom/zte/zdm/d/c/bh;)Lcom/zte/zdm/d/c/bd;
    .locals 4

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/bh;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/zte/zdm/d/c/a;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zte/zdm/d/c/a;

    const-class v1, Lcom/zte/zdm/d/c/bd;

    new-instance v2, Lcom/zte/zdm/d/c/m;

    const-string v3, "1"

    invoke-direct {v2, v3}, Lcom/zte/zdm/d/c/m;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Lcom/zte/zdm/b/c/e;->a([Lcom/zte/zdm/d/c/a;Ljava/lang/Class;Lcom/zte/zdm/d/c/m;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/d/c/bd;

    goto :goto_0
.end method

.method public static a(Lcom/zte/zdm/d/c/m;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/zte/zdm/d/c/bn;I)Lcom/zte/zdm/d/c/bd;
    .locals 12

    new-instance v1, Lcom/zte/zdm/d/c/bd;

    if-nez p0, :cond_0

    new-instance v2, Lcom/zte/zdm/d/c/m;

    const-string v3, "1"

    invoke-direct {v2, v3}, Lcom/zte/zdm/d/c/m;-><init>(Ljava/lang/String;)V

    :goto_0
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    new-instance v10, Lcom/zte/zdm/d/c/u;

    move/from16 v0, p5

    int-to-long v3, v0

    invoke-direct {v10, v3, v4}, Lcom/zte/zdm/d/c/u;-><init>(J)V

    const/4 v11, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    invoke-direct/range {v1 .. v11}, Lcom/zte/zdm/d/c/bd;-><init>(Lcom/zte/zdm/d/c/m;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/zte/zdm/d/c/bn;Lcom/zte/zdm/d/c/bc;Lcom/zte/zdm/d/c/s;Lcom/zte/zdm/d/c/l;Lcom/zte/zdm/d/c/u;[Lcom/zte/zdm/d/c/ai;)V

    return-object v1

    :cond_0
    move-object v2, p0

    goto :goto_0
.end method

.method public static a(Lcom/zte/zdm/d/c/m;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/zte/zdm/d/c/c;
    .locals 9

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v0, 0x1

    new-array v8, v0, [Lcom/zte/zdm/d/c/ai;

    new-instance v3, Lcom/zte/zdm/d/c/ap;

    invoke-direct {v3}, Lcom/zte/zdm/d/c/ap;-><init>()V

    const-string v0, "int"

    invoke-virtual {v3, v0}, Lcom/zte/zdm/d/c/ap;->a(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Lcom/zte/zdm/d/c/ap;->b(Ljava/lang/String;)V

    const-string v0, "indeterminate"

    invoke-virtual {v3, v0}, Lcom/zte/zdm/d/c/ap;->c(Ljava/lang/String;)V

    if-eqz p4, :cond_0

    new-instance v2, Lcom/zte/zdm/d/c/bb;

    invoke-direct {v2, p4}, Lcom/zte/zdm/d/c/bb;-><init>(Ljava/lang/String;)V

    :goto_0
    new-instance v4, Lcom/zte/zdm/d/c/n;

    invoke-direct {v4, p2}, Lcom/zte/zdm/d/c/n;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/zte/zdm/d/c/ai;

    invoke-direct/range {v0 .. v5}, Lcom/zte/zdm/d/c/ai;-><init>(Lcom/zte/zdm/d/c/bm;Lcom/zte/zdm/d/c/bb;Lcom/zte/zdm/d/c/ap;Lcom/zte/zdm/d/c/n;Z)V

    aput-object v0, v8, v5

    new-instance v3, Lcom/zte/zdm/d/c/c;

    const/16 v7, 0x4ca

    move-object v4, p0

    move-object v6, v1

    invoke-direct/range {v3 .. v8}, Lcom/zte/zdm/d/c/c;-><init>(Lcom/zte/zdm/d/c/m;ZLcom/zte/zdm/d/c/s;I[Lcom/zte/zdm/d/c/ai;)V

    invoke-virtual {v3, p3}, Lcom/zte/zdm/d/c/c;->a(Ljava/lang/String;)V

    return-object v3

    :cond_0
    move-object v2, v1

    goto :goto_0
.end method

.method public static a(Lcom/zte/zdm/d/c/m;ZLcom/zte/zdm/d/c/s;I)Lcom/zte/zdm/d/c/c;
    .locals 6

    new-instance v0, Lcom/zte/zdm/d/c/c;

    const/4 v5, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/zte/zdm/d/c/c;-><init>(Lcom/zte/zdm/d/c/m;ZLcom/zte/zdm/d/c/s;I[Lcom/zte/zdm/d/c/ai;)V

    return-object v0
.end method

.method public static a(Lcom/zte/zdm/d/c/l;Ljava/lang/String;Ljava/lang/String;)Lcom/zte/zdm/d/c/s;
    .locals 8

    const/4 v2, 0x0

    const/16 v7, 0x3a

    const/4 v6, 0x0

    if-nez p0, :cond_0

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/zte/zdm/d/c/l;->c()Ljava/lang/String;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v0, "syncml:auth-basic"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/zte/zdm/b/g/b;->a([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    :goto_1
    new-instance v4, Lcom/zte/zdm/d/c/ap;

    invoke-direct {v4}, Lcom/zte/zdm/d/c/ap;-><init>()V

    invoke-virtual {v4, v3}, Lcom/zte/zdm/d/c/ap;->b(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Lcom/zte/zdm/d/c/ap;->a(Lcom/zte/zdm/d/c/ar;)V

    new-instance v1, Lcom/zte/zdm/d/c/s;

    new-instance v2, Lcom/zte/zdm/d/c/g;

    invoke-direct {v2, v4, v0}, Lcom/zte/zdm/d/c/g;-><init>(Lcom/zte/zdm/d/c/ap;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/zte/zdm/d/c/s;-><init>(Lcom/zte/zdm/d/c/g;)V

    move-object v0, v1

    goto :goto_0

    :cond_1
    const-string v0, "syncml:auth-md5"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/l;->b()Lcom/zte/zdm/d/c/ar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/ar;->a()[B

    move-result-object v0

    if-eqz v0, :cond_2

    array-length v4, v0

    if-nez v4, :cond_4

    :cond_2
    new-array v0, v6, [B

    :cond_3
    :goto_2
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/zte/zdm/b/g/f;->a([B)[B

    move-result-object v1

    invoke-static {v1}, Lcom/zte/zdm/b/g/b;->a([B)[B

    move-result-object v1

    array-length v4, v1

    add-int/lit8 v4, v4, 0x1

    array-length v5, v0

    add-int/2addr v4, v5

    new-array v4, v4, [B

    array-length v5, v1

    invoke-static {v1, v6, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v5, v1

    aput-byte v7, v4, v5

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    array-length v5, v0

    invoke-static {v0, v6, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v0, Ljava/lang/String;

    invoke-static {v4}, Lcom/zte/zdm/b/g/f;->a([B)[B

    move-result-object v1

    invoke-static {v1}, Lcom/zte/zdm/b/g/b;->a([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_1

    :cond_4
    const-string v4, "b64"

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/l;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {v0}, Lcom/zte/zdm/b/g/b;->b([B)[B

    move-result-object v0

    goto :goto_2

    :cond_5
    const-string v0, "syncml:auth-MAC"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_6
    move-object v0, v1

    goto :goto_1
.end method

.method public static a(Lcom/zte/zdm/d/c/ai;)Ljava/lang/Long;
    .locals 1

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/ai;->c()Lcom/zte/zdm/d/c/ap;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/zte/zdm/d/c/ap;->c()Ljava/lang/Long;

    move-result-object v0

    goto :goto_0
.end method

.method public static a([Lcom/zte/zdm/d/c/a;Lcom/zte/zdm/d/c/m;)Ljava/util/ArrayList;
    .locals 3

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_1

    aget-object v0, p0, v1

    instance-of v0, v0, Lcom/zte/zdm/d/c/av;

    if-eqz v0, :cond_0

    aget-object v0, p0, v1

    check-cast v0, Lcom/zte/zdm/d/c/av;

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/av;->a()Lcom/zte/zdm/d/c/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zte/zdm/d/c/m;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    aget-object v0, p0, v1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public static a([Lcom/zte/zdm/d/c/a;Ljava/lang/Class;)Ljava/util/ArrayList;
    .locals 3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    aget-object v2, p0, v0

    invoke-virtual {p1, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    aget-object v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static a([Lcom/zte/zdm/d/c/a;Ljava/lang/Class;Lcom/zte/zdm/d/c/m;)Ljava/util/ArrayList;
    .locals 5

    invoke-static {p0, p2}, Lcom/zte/zdm/b/c/e;->a([Lcom/zte/zdm/d/c/a;Lcom/zte/zdm/d/c/m;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v4, v3, [Lcom/zte/zdm/d/c/a;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/d/c/a;

    aput-object v0, v4, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-static {v4, p1}, Lcom/zte/zdm/b/c/e;->a([Lcom/zte/zdm/d/c/a;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/util/List;[Ljava/lang/String;)Ljava/util/List;
    .locals 7

    const/16 v6, 0x2c

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v0, ","

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_0

    array-length v2, p1

    if-ge v0, v2, :cond_0

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/d/c/a;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/a;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object v2
.end method

.method public static a(Lcom/zte/zdm/d/c/a;)Z
    .locals 3

    const/4 v1, 0x0

    instance-of v0, p0, Lcom/zte/zdm/d/c/aj;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    check-cast p0, Lcom/zte/zdm/d/c/aj;

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/aj;->k()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/d/c/ai;

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/ai;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public static a(Lcom/zte/zdm/d/c/bk;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/bk;->b()Lcom/zte/zdm/d/c/bh;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/zte/zdm/d/c/bk;->b()Lcom/zte/zdm/d/c/bh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/bh;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zdm/b/c/e;->a(Ljava/util/List;)Z

    move-result v0

    goto :goto_0
.end method

.method public static a(Ljava/util/List;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    move v3, v2

    :goto_1
    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_2

    sget-object v4, Lcom/zte/zdm/d/c/bd;->j:Ljava/lang/String;

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/d/c/a;

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/a;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public static b(Lcom/zte/zdm/d/c/bk;)I
    .locals 1

    invoke-static {p0}, Lcom/zte/zdm/b/c/e;->d(Lcom/zte/zdm/d/c/bk;)Lcom/zte/zdm/d/c/bd;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/bd;->o()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static b(Lcom/zte/zdm/d/c/a;)Lcom/zte/zdm/d/c/ai;
    .locals 4

    const/4 v1, 0x0

    instance-of v0, p0, Lcom/zte/zdm/d/c/aj;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    check-cast p0, Lcom/zte/zdm/d/c/aj;

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/aj;->k()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/d/c/ai;

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/ai;->f()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public static b(Ljava/util/List;)Lcom/zte/zdm/d/c/ai;
    .locals 4

    const/4 v1, 0x0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/d/c/a;

    instance-of v2, v0, Lcom/zte/zdm/d/c/aj;

    if-nez v2, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/zte/zdm/d/c/aj;

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/aj;->k()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/d/c/ai;

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/ai;->f()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public static c(Lcom/zte/zdm/d/c/bk;)Lcom/zte/zdm/d/c/l;
    .locals 1

    invoke-static {p0}, Lcom/zte/zdm/b/c/e;->d(Lcom/zte/zdm/d/c/bk;)Lcom/zte/zdm/d/c/bd;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/bd;->l()Lcom/zte/zdm/d/c/l;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d(Lcom/zte/zdm/d/c/bk;)Lcom/zte/zdm/d/c/bd;
    .locals 1

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/bk;->b()Lcom/zte/zdm/d/c/bh;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zdm/b/c/e;->a(Lcom/zte/zdm/d/c/bh;)Lcom/zte/zdm/d/c/bd;

    move-result-object v0

    return-object v0
.end method
