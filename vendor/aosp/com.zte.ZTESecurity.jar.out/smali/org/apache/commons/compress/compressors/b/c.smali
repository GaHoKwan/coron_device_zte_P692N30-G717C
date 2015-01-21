.class public Lorg/apache/commons/compress/compressors/b/c;
.super Ljava/lang/Object;


# static fields
.field private static final lo:Lorg/apache/commons/compress/compressors/d;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, ".txz"

    const-string v2, ".tar"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, ".xz"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "-xz"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/commons/compress/compressors/d;

    const-string v2, ".xz"

    invoke-direct {v1, v0, v2}, Lorg/apache/commons/compress/compressors/d;-><init>(Ljava/util/Map;Ljava/lang/String;)V

    sput-object v1, Lorg/apache/commons/compress/compressors/b/c;->lo:Lorg/apache/commons/compress/compressors/d;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static E(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lorg/apache/commons/compress/compressors/b/c;->lo:Lorg/apache/commons/compress/compressors/d;

    invoke-virtual {v0, p0}, Lorg/apache/commons/compress/compressors/d;->E(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static F(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/apache/commons/compress/compressors/b/c;->lo:Lorg/apache/commons/compress/compressors/d;

    invoke-virtual {v0, p0}, Lorg/apache/commons/compress/compressors/d;->F(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static G(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/apache/commons/compress/compressors/b/c;->lo:Lorg/apache/commons/compress/compressors/d;

    invoke-virtual {v0, p0}, Lorg/apache/commons/compress/compressors/d;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
