.class public final Ltmsdkobf/ft;
.super Ljava/lang/Object;


# direct methods
.method public static varargs a([Ljava/lang/String;)[I
    .locals 10

    const/4 v0, 0x0

    const/4 v9, -0x1

    array-length v2, p0

    new-array v3, v2, [I

    invoke-static {v3, v9}, Ljava/util/Arrays;->fill([II)V

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-static {}, Ltmsdkobf/ft;->bB()[I

    move-result-object v5

    array-length v6, v5

    move v1, v0

    :goto_0
    if-ge v1, v6, :cond_1

    aget v7, v5, v1

    invoke-static {v7}, Ltmsdkobf/ft;->aL(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v8

    if-eq v8, v9, :cond_0

    aput v7, v3, v8

    add-int/lit8 v0, v0, 0x1

    :cond_0
    if-ne v0, v2, :cond_2

    :cond_1
    return-object v3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static aL(I)Ljava/lang/String;
    .locals 4

    const-string v0, "/proc/%d/cmdline"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltmsdkobf/fs;->aK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static aM(Ljava/lang/String;)Z
    .locals 5

    const/16 v4, 0x39

    const/16 v3, 0x30

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-gt v3, v1, :cond_0

    if-gt v1, v4, :cond_0

    if-gt v3, v2, :cond_0

    if-gt v2, v4, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static bB()[I
    .locals 7

    const/4 v1, 0x0

    new-instance v0, Ljava/io/File;

    const-string v2, "/proc"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    array-length v0, v4

    new-array v5, v0, [I

    move v0, v1

    move v2, v1

    :goto_0
    array-length v3, v5

    if-ge v0, v3, :cond_1

    aget-object v3, v4, v0

    invoke-static {v3}, Ltmsdkobf/ft;->aM(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v3, v2, 0x1

    aget-object v6, v4, v0

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aput v6, v5, v2

    move v2, v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-array v0, v2, [I

    invoke-static {v5, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method
