.class public final Lcom/nuance/dragon/toolkit/data/a/a;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lcom/nuance/dragon/toolkit/data/Data$Dictionary;Lcom/nuance/a/a/a/b/c/c/c;)Lcom/nuance/a/a/a/b/a/c/a;
    .locals 5

    invoke-interface {p1}, Lcom/nuance/a/a/a/b/c/c/c;->j()Lcom/nuance/a/a/a/b/a/c/a;

    move-result-object v2

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->getEntries()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/data/Data;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/data/Data;->getType()S

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    check-cast v0, Lcom/nuance/dragon/toolkit/data/Data$Bytes;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/data/Data$Bytes;->value:[B

    invoke-interface {v2, v1, v0}, Lcom/nuance/a/a/a/b/a/c/a;->a(Ljava/lang/String;[B)V

    goto :goto_0

    :sswitch_1
    check-cast v0, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    invoke-static {v0, p1}, Lcom/nuance/dragon/toolkit/data/a/a;->a(Lcom/nuance/dragon/toolkit/data/Data$Dictionary;Lcom/nuance/a/a/a/b/c/c/c;)Lcom/nuance/a/a/a/b/a/c/a;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Lcom/nuance/a/a/a/b/a/c/a;->a(Ljava/lang/String;Lcom/nuance/a/a/a/b/a/c/a;)V

    goto :goto_0

    :sswitch_2
    check-cast v0, Lcom/nuance/dragon/toolkit/data/Data$Sequence;

    invoke-static {v0, p1}, Lcom/nuance/dragon/toolkit/data/a/a;->a(Lcom/nuance/dragon/toolkit/data/Data$Sequence;Lcom/nuance/a/a/a/b/c/c/c;)Lcom/nuance/a/a/a/b/a/c/b;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Lcom/nuance/a/a/a/b/a/c/a;->a(Ljava/lang/String;Lcom/nuance/a/a/a/b/a/c/b;)V

    goto :goto_0

    :sswitch_3
    check-cast v0, Lcom/nuance/dragon/toolkit/data/Data$Integer;

    iget v0, v0, Lcom/nuance/dragon/toolkit/data/Data$Integer;->value:I

    invoke-interface {v2, v1, v0}, Lcom/nuance/a/a/a/b/a/c/a;->b(Ljava/lang/String;I)V

    goto :goto_0

    :sswitch_4
    check-cast v0, Lcom/nuance/dragon/toolkit/data/Data$String;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/data/Data$String;->value:Ljava/lang/String;

    invoke-interface {v2, v1, v0}, Lcom/nuance/a/a/a/b/a/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_5
    check-cast v0, Lcom/nuance/dragon/toolkit/data/Data$String;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/data/Data$String;->value:Ljava/lang/String;

    invoke-interface {v2, v1, v0}, Lcom/nuance/a/a/a/b/a/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-object v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x10 -> :sswitch_2
        0x16 -> :sswitch_5
        0xc0 -> :sswitch_3
        0xc1 -> :sswitch_4
        0xe0 -> :sswitch_1
    .end sparse-switch
.end method

.method private static a(Lcom/nuance/dragon/toolkit/data/Data$Sequence;Lcom/nuance/a/a/a/b/c/c/c;)Lcom/nuance/a/a/a/b/a/c/b;
    .locals 4

    invoke-interface {p1}, Lcom/nuance/a/a/a/b/c/c/c;->k()Lcom/nuance/a/a/a/b/a/c/b;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/data/Data$Sequence;->getValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/data/Data;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/data/Data;->getType()S

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    check-cast v0, Lcom/nuance/dragon/toolkit/data/Data$Bytes;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/data/Data$Bytes;->value:[B

    invoke-interface {v1, v0}, Lcom/nuance/a/a/a/b/a/c/b;->b([B)V

    goto :goto_0

    :sswitch_1
    check-cast v0, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    invoke-static {v0, p1}, Lcom/nuance/dragon/toolkit/data/a/a;->a(Lcom/nuance/dragon/toolkit/data/Data$Dictionary;Lcom/nuance/a/a/a/b/c/c/c;)Lcom/nuance/a/a/a/b/a/c/a;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/nuance/a/a/a/b/a/c/b;->a(Lcom/nuance/a/a/a/b/a/c/a;)V

    goto :goto_0

    :sswitch_2
    check-cast v0, Lcom/nuance/dragon/toolkit/data/Data$Sequence;

    invoke-static {v0, p1}, Lcom/nuance/dragon/toolkit/data/a/a;->a(Lcom/nuance/dragon/toolkit/data/Data$Sequence;Lcom/nuance/a/a/a/b/c/c/c;)Lcom/nuance/a/a/a/b/a/c/b;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/nuance/a/a/a/b/a/c/b;->a(Lcom/nuance/a/a/a/b/a/c/b;)V

    goto :goto_0

    :sswitch_3
    check-cast v0, Lcom/nuance/dragon/toolkit/data/Data$Integer;

    iget v0, v0, Lcom/nuance/dragon/toolkit/data/Data$Integer;->value:I

    invoke-interface {v1, v0}, Lcom/nuance/a/a/a/b/a/c/b;->i(I)V

    goto :goto_0

    :sswitch_4
    check-cast v0, Lcom/nuance/dragon/toolkit/data/Data$String;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/data/Data$String;->value:Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/nuance/a/a/a/b/a/c/b;->b(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_5
    check-cast v0, Lcom/nuance/dragon/toolkit/data/Data$String;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/data/Data$String;->value:Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/nuance/a/a/a/b/a/c/b;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x10 -> :sswitch_2
        0x16 -> :sswitch_5
        0xc0 -> :sswitch_3
        0xc1 -> :sswitch_4
        0xe0 -> :sswitch_1
    .end sparse-switch
.end method

.method public static a(Lcom/nuance/a/a/a/b/a/c/a;)Lcom/nuance/dragon/toolkit/data/Data$Dictionary;
    .locals 5

    new-instance v1, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    invoke-direct {v1}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;-><init>()V

    invoke-interface {p0}, Lcom/nuance/a/a/a/b/a/c/a;->a()Ljava/util/Enumeration;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p0, v0}, Lcom/nuance/a/a/a/b/a/c/a;->c(Ljava/lang/String;)S

    move-result v3

    sparse-switch v3, :sswitch_data_0

    const-string v0, "Data"

    const-string v3, "Unsupported PDX type found in dictionary, skipping"

    invoke-static {v0, v3}, Lcom/nuance/dragon/toolkit/util/Logger;->warn(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_0
    invoke-interface {p0, v0}, Lcom/nuance/a/a/a/b/a/c/a;->h(Ljava/lang/String;)Lcom/nuance/a/a/a/b/a/c/a;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/dragon/toolkit/data/a/a;->a(Lcom/nuance/a/a/a/b/a/c/a;)Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->put(Ljava/lang/String;Lcom/nuance/dragon/toolkit/data/Data;)V

    goto :goto_0

    :sswitch_1
    invoke-interface {p0, v0}, Lcom/nuance/a/a/a/b/a/c/a;->i(Ljava/lang/String;)Lcom/nuance/a/a/a/b/a/c/b;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/dragon/toolkit/data/a/a;->a(Lcom/nuance/a/a/a/b/a/c/b;)Lcom/nuance/dragon/toolkit/data/Data$Sequence;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->put(Ljava/lang/String;Lcom/nuance/dragon/toolkit/data/Data;)V

    goto :goto_0

    :sswitch_2
    new-instance v3, Lcom/nuance/dragon/toolkit/data/Data$Integer;

    invoke-interface {p0, v0}, Lcom/nuance/a/a/a/b/a/c/a;->d(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v3, v4}, Lcom/nuance/dragon/toolkit/data/Data$Integer;-><init>(I)V

    invoke-virtual {v1, v0, v3}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->put(Ljava/lang/String;Lcom/nuance/dragon/toolkit/data/Data;)V

    goto :goto_0

    :sswitch_3
    new-instance v3, Lcom/nuance/dragon/toolkit/data/Data$String;

    invoke-interface {p0, v0}, Lcom/nuance/a/a/a/b/a/c/a;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/nuance/dragon/toolkit/data/Data$String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v3}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->put(Ljava/lang/String;Lcom/nuance/dragon/toolkit/data/Data;)V

    goto :goto_0

    :sswitch_4
    new-instance v3, Lcom/nuance/dragon/toolkit/data/Data$String;

    invoke-interface {p0, v0}, Lcom/nuance/a/a/a/b/a/c/a;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/nuance/dragon/toolkit/data/Data$String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v3}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->put(Ljava/lang/String;Lcom/nuance/dragon/toolkit/data/Data;)V

    goto :goto_0

    :sswitch_5
    new-instance v3, Lcom/nuance/dragon/toolkit/data/Data$Bytes;

    invoke-interface {p0, v0}, Lcom/nuance/a/a/a/b/a/c/a;->e(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/nuance/dragon/toolkit/data/Data$Bytes;-><init>([B)V

    invoke-virtual {v1, v0, v3}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->put(Ljava/lang/String;Lcom/nuance/dragon/toolkit/data/Data;)V

    goto :goto_0

    :sswitch_6
    new-instance v3, Lcom/nuance/dragon/toolkit/data/Data$Null;

    invoke-direct {v3}, Lcom/nuance/dragon/toolkit/data/Data$Null;-><init>()V

    invoke-virtual {v1, v0, v3}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->put(Ljava/lang/String;Lcom/nuance/dragon/toolkit/data/Data;)V

    goto :goto_0

    :cond_0
    return-object v1

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_5
        0x5 -> :sswitch_6
        0x10 -> :sswitch_1
        0x16 -> :sswitch_4
        0xc0 -> :sswitch_2
        0xc1 -> :sswitch_3
        0xe0 -> :sswitch_0
    .end sparse-switch
.end method

.method private static a(Lcom/nuance/a/a/a/b/a/c/b;)Lcom/nuance/dragon/toolkit/data/Data$Sequence;
    .locals 4

    new-instance v1, Lcom/nuance/dragon/toolkit/data/Data$Sequence;

    invoke-direct {v1}, Lcom/nuance/dragon/toolkit/data/Data$Sequence;-><init>()V

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Lcom/nuance/a/a/a/b/a/c/b;->a()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-interface {p0, v0}, Lcom/nuance/a/a/a/b/a/c/b;->b(I)S

    move-result v2

    sparse-switch v2, :sswitch_data_0

    const-string v2, "PdxValue"

    const-string v3, "Unsupported PDX type found in sequence, skipping"

    invoke-static {v2, v3}, Lcom/nuance/dragon/toolkit/util/Logger;->warn(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :sswitch_0
    invoke-interface {p0, v0}, Lcom/nuance/a/a/a/b/a/c/b;->g(I)Lcom/nuance/a/a/a/b/a/c/a;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/dragon/toolkit/data/a/a;->a(Lcom/nuance/a/a/a/b/a/c/a;)Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/dragon/toolkit/data/Data$Sequence;->add(Lcom/nuance/dragon/toolkit/data/Data;)V

    goto :goto_1

    :sswitch_1
    invoke-interface {p0, v0}, Lcom/nuance/a/a/a/b/a/c/b;->h(I)Lcom/nuance/a/a/a/b/a/c/b;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/dragon/toolkit/data/a/a;->a(Lcom/nuance/a/a/a/b/a/c/b;)Lcom/nuance/dragon/toolkit/data/Data$Sequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/dragon/toolkit/data/Data$Sequence;->add(Lcom/nuance/dragon/toolkit/data/Data;)V

    goto :goto_1

    :sswitch_2
    new-instance v2, Lcom/nuance/dragon/toolkit/data/Data$Integer;

    invoke-interface {p0, v0}, Lcom/nuance/a/a/a/b/a/c/b;->c(I)I

    move-result v3

    invoke-direct {v2, v3}, Lcom/nuance/dragon/toolkit/data/Data$Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/nuance/dragon/toolkit/data/Data$Sequence;->add(Lcom/nuance/dragon/toolkit/data/Data;)V

    goto :goto_1

    :sswitch_3
    new-instance v2, Lcom/nuance/dragon/toolkit/data/Data$String;

    invoke-interface {p0, v0}, Lcom/nuance/a/a/a/b/a/c/b;->e(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/nuance/dragon/toolkit/data/Data$String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/nuance/dragon/toolkit/data/Data$Sequence;->add(Lcom/nuance/dragon/toolkit/data/Data;)V

    goto :goto_1

    :sswitch_4
    new-instance v2, Lcom/nuance/dragon/toolkit/data/Data$String;

    invoke-interface {p0, v0}, Lcom/nuance/a/a/a/b/a/c/b;->f(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/nuance/dragon/toolkit/data/Data$String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/nuance/dragon/toolkit/data/Data$Sequence;->add(Lcom/nuance/dragon/toolkit/data/Data;)V

    goto :goto_1

    :sswitch_5
    new-instance v2, Lcom/nuance/dragon/toolkit/data/Data$Bytes;

    invoke-interface {p0, v0}, Lcom/nuance/a/a/a/b/a/c/b;->d(I)[B

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/nuance/dragon/toolkit/data/Data$Bytes;-><init>([B)V

    invoke-virtual {v1, v2}, Lcom/nuance/dragon/toolkit/data/Data$Sequence;->add(Lcom/nuance/dragon/toolkit/data/Data;)V

    goto :goto_1

    :sswitch_6
    new-instance v2, Lcom/nuance/dragon/toolkit/data/Data$Null;

    invoke-direct {v2}, Lcom/nuance/dragon/toolkit/data/Data$Null;-><init>()V

    invoke-virtual {v1, v2}, Lcom/nuance/dragon/toolkit/data/Data$Sequence;->add(Lcom/nuance/dragon/toolkit/data/Data;)V

    goto :goto_1

    :cond_0
    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_5
        0x5 -> :sswitch_6
        0x10 -> :sswitch_1
        0x16 -> :sswitch_4
        0xc0 -> :sswitch_2
        0xc1 -> :sswitch_3
        0xe0 -> :sswitch_0
    .end sparse-switch
.end method
