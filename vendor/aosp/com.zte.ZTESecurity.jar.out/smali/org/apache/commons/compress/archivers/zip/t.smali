.class public Lorg/apache/commons/compress/archivers/zip/t;
.super Ljava/lang/Object;


# static fields
.field private static final jL:Ljava/util/Map; = null

.field private static final k:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/t;->jL:Ljava/util/Map;

    const-class v0, Lorg/apache/commons/compress/archivers/zip/a;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/t;->a(Ljava/lang/Class;)V

    const-class v0, Lorg/apache/commons/compress/archivers/zip/J;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/t;->a(Ljava/lang/Class;)V

    const-class v0, Lorg/apache/commons/compress/archivers/zip/g;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/t;->a(Ljava/lang/Class;)V

    const-class v0, Lorg/apache/commons/compress/archivers/zip/A;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/t;->a(Ljava/lang/Class;)V

    const-class v0, Lorg/apache/commons/compress/archivers/zip/s;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/t;->a(Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lorg/apache/commons/compress/archivers/zip/O;)Lorg/apache/commons/compress/archivers/zip/h;
    .locals 1

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/t;->jL:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/compress/archivers/zip/h;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/w;

    invoke-direct {v0}, Lorg/apache/commons/compress/archivers/zip/w;-><init>()V

    invoke-virtual {v0, p0}, Lorg/apache/commons/compress/archivers/zip/w;->b(Lorg/apache/commons/compress/archivers/zip/O;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/Class;)V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/compress/archivers/zip/h;

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/t;->jL:Ljava/util/Map;

    invoke-interface {v0}, Lorg/apache/commons/compress/archivers/zip/h;->e()Lorg/apache/commons/compress/archivers/zip/O;

    move-result-object v0

    invoke-interface {v1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    return-void

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " doesn\'t implement ZipExtraField"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a concrete class"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_2
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'s no-arg constructor is not public"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a([Lorg/apache/commons/compress/archivers/zip/h;)[B
    .locals 10

    const/4 v9, 0x2

    const/4 v2, 0x0

    array-length v0, p0

    if-lez v0, :cond_0

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget-object v0, p0, v0

    instance-of v0, v0, Lorg/apache/commons/compress/archivers/zip/r;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    move v4, v0

    :goto_0
    if-eqz v4, :cond_1

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    mul-int/lit8 v1, v0, 0x4

    array-length v5, p0

    move v3, v1

    move v1, v2

    :goto_2
    if-ge v1, v5, :cond_2

    aget-object v6, p0, v1

    invoke-interface {v6}, Lorg/apache/commons/compress/archivers/zip/h;->f()Lorg/apache/commons/compress/archivers/zip/O;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/commons/compress/archivers/zip/O;->getValue()I

    move-result v6

    add-int/2addr v3, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_0
    move v4, v2

    goto :goto_0

    :cond_1
    array-length v0, p0

    goto :goto_1

    :cond_2
    new-array v5, v3, [B

    move v1, v2

    move v3, v2

    :goto_3
    if-ge v1, v0, :cond_3

    aget-object v6, p0, v1

    invoke-interface {v6}, Lorg/apache/commons/compress/archivers/zip/h;->e()Lorg/apache/commons/compress/archivers/zip/O;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/commons/compress/archivers/zip/O;->getBytes()[B

    move-result-object v6

    invoke-static {v6, v2, v5, v3, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v6, p0, v1

    invoke-interface {v6}, Lorg/apache/commons/compress/archivers/zip/h;->f()Lorg/apache/commons/compress/archivers/zip/O;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/commons/compress/archivers/zip/O;->getBytes()[B

    move-result-object v6

    add-int/lit8 v7, v3, 0x2

    invoke-static {v6, v2, v5, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v6, p0, v1

    invoke-interface {v6}, Lorg/apache/commons/compress/archivers/zip/h;->h()[B

    move-result-object v6

    add-int/lit8 v7, v3, 0x4

    array-length v8, v6

    invoke-static {v6, v2, v5, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v6, v6

    add-int/lit8 v6, v6, 0x4

    add-int/2addr v3, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    if-eqz v4, :cond_4

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget-object v0, p0, v0

    invoke-interface {v0}, Lorg/apache/commons/compress/archivers/zip/h;->h()[B

    move-result-object v0

    array-length v1, v0

    invoke-static {v0, v2, v5, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    return-object v5
.end method

.method public static a([BZ)[Lorg/apache/commons/compress/archivers/zip/h;
    .locals 1

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/n;->hA:Lorg/apache/commons/compress/archivers/zip/n;

    invoke-static {p0, p1, v0}, Lorg/apache/commons/compress/archivers/zip/t;->a([BZLorg/apache/commons/compress/archivers/zip/n;)[Lorg/apache/commons/compress/archivers/zip/h;

    move-result-object v0

    return-object v0
.end method

.method public static a([BZLorg/apache/commons/compress/archivers/zip/n;)[Lorg/apache/commons/compress/archivers/zip/h;
    .locals 6

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    add-int/lit8 v2, v2, -0x4

    if-gt v0, v2, :cond_0

    new-instance v2, Lorg/apache/commons/compress/archivers/zip/O;

    invoke-direct {v2, p0, v0}, Lorg/apache/commons/compress/archivers/zip/O;-><init>([BI)V

    new-instance v3, Lorg/apache/commons/compress/archivers/zip/O;

    add-int/lit8 v4, v0, 0x2

    invoke-direct {v3, p0, v4}, Lorg/apache/commons/compress/archivers/zip/O;-><init>([BI)V

    invoke-virtual {v3}, Lorg/apache/commons/compress/archivers/zip/O;->getValue()I

    move-result v3

    add-int/lit8 v4, v0, 0x4

    add-int/2addr v4, v3

    array-length v5, p0

    if-le v4, v5, :cond_2

    invoke-virtual {p2}, Lorg/apache/commons/compress/archivers/zip/n;->bp()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    new-instance v0, Ljava/util/zip/ZipException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown UnparseableExtraField key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lorg/apache/commons/compress/archivers/zip/n;->bp()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    new-instance v1, Ljava/util/zip/ZipException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bad extra field starting at "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ".  Block length of "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes exceeds remaining"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " data of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p0

    sub-int v0, v3, v0

    add-int/lit8 v0, v0, -0x4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " bytes."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_1
    new-instance v2, Lorg/apache/commons/compress/archivers/zip/r;

    invoke-direct {v2}, Lorg/apache/commons/compress/archivers/zip/r;-><init>()V

    if-eqz p1, :cond_1

    array-length v3, p0

    sub-int/2addr v3, v0

    invoke-virtual {v2, p0, v0, v3}, Lorg/apache/commons/compress/archivers/zip/r;->a([BII)V

    :goto_1
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    :pswitch_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/apache/commons/compress/archivers/zip/h;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/compress/archivers/zip/h;

    return-object v0

    :cond_1
    array-length v3, p0

    sub-int/2addr v3, v0

    invoke-virtual {v2, p0, v0, v3}, Lorg/apache/commons/compress/archivers/zip/r;->b([BII)V

    goto :goto_1

    :cond_2
    :try_start_0
    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/t;->a(Lorg/apache/commons/compress/archivers/zip/O;)Lorg/apache/commons/compress/archivers/zip/h;

    move-result-object v2

    if-eqz p1, :cond_3

    add-int/lit8 v4, v0, 0x4

    invoke-interface {v2, p0, v4, v3}, Lorg/apache/commons/compress/archivers/zip/h;->a([BII)V

    :goto_2
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v3, 0x4

    add-int/2addr v0, v2

    goto/16 :goto_0

    :cond_3
    add-int/lit8 v4, v0, 0x4

    invoke-interface {v2, p0, v4, v3}, Lorg/apache/commons/compress/archivers/zip/h;->b([BII)V
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    :catch_0
    move-exception v0

    new-instance v1, Ljava/util/zip/ZipException;

    invoke-virtual {v0}, Ljava/lang/InstantiationException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/util/zip/ZipException;

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static b([Lorg/apache/commons/compress/archivers/zip/h;)[B
    .locals 10

    const/4 v9, 0x2

    const/4 v2, 0x0

    array-length v0, p0

    if-lez v0, :cond_0

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget-object v0, p0, v0

    instance-of v0, v0, Lorg/apache/commons/compress/archivers/zip/r;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    move v4, v0

    :goto_0
    if-eqz v4, :cond_1

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    mul-int/lit8 v1, v0, 0x4

    array-length v5, p0

    move v3, v1

    move v1, v2

    :goto_2
    if-ge v1, v5, :cond_2

    aget-object v6, p0, v1

    invoke-interface {v6}, Lorg/apache/commons/compress/archivers/zip/h;->g()Lorg/apache/commons/compress/archivers/zip/O;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/commons/compress/archivers/zip/O;->getValue()I

    move-result v6

    add-int/2addr v3, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_0
    move v4, v2

    goto :goto_0

    :cond_1
    array-length v0, p0

    goto :goto_1

    :cond_2
    new-array v5, v3, [B

    move v1, v2

    move v3, v2

    :goto_3
    if-ge v1, v0, :cond_3

    aget-object v6, p0, v1

    invoke-interface {v6}, Lorg/apache/commons/compress/archivers/zip/h;->e()Lorg/apache/commons/compress/archivers/zip/O;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/commons/compress/archivers/zip/O;->getBytes()[B

    move-result-object v6

    invoke-static {v6, v2, v5, v3, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v6, p0, v1

    invoke-interface {v6}, Lorg/apache/commons/compress/archivers/zip/h;->g()Lorg/apache/commons/compress/archivers/zip/O;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/commons/compress/archivers/zip/O;->getBytes()[B

    move-result-object v6

    add-int/lit8 v7, v3, 0x2

    invoke-static {v6, v2, v5, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v6, p0, v1

    invoke-interface {v6}, Lorg/apache/commons/compress/archivers/zip/h;->i()[B

    move-result-object v6

    add-int/lit8 v7, v3, 0x4

    array-length v8, v6

    invoke-static {v6, v2, v5, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v6, v6

    add-int/lit8 v6, v6, 0x4

    add-int/2addr v3, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    if-eqz v4, :cond_4

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget-object v0, p0, v0

    invoke-interface {v0}, Lorg/apache/commons/compress/archivers/zip/h;->i()[B

    move-result-object v0

    array-length v1, v0

    invoke-static {v0, v2, v5, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    return-object v5
.end method

.method public static n([B)[Lorg/apache/commons/compress/archivers/zip/h;
    .locals 2

    const/4 v0, 0x1

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/n;->hA:Lorg/apache/commons/compress/archivers/zip/n;

    invoke-static {p0, v0, v1}, Lorg/apache/commons/compress/archivers/zip/t;->a([BZLorg/apache/commons/compress/archivers/zip/n;)[Lorg/apache/commons/compress/archivers/zip/h;

    move-result-object v0

    return-object v0
.end method
