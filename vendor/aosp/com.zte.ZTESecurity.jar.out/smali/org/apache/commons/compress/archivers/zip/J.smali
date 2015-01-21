.class public final Lorg/apache/commons/compress/archivers/zip/J;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/commons/compress/archivers/zip/h;


# static fields
.field private static final qv:Lorg/apache/commons/compress/archivers/zip/O;

.field private static final qw:Lorg/apache/commons/compress/archivers/zip/O;

.field private static final qx:[B

.field private static final qy:Lorg/apache/commons/compress/archivers/zip/J;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/O;

    const v1, 0xcafe

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/O;-><init>(I)V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/J;->qv:Lorg/apache/commons/compress/archivers/zip/O;

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/O;

    invoke-direct {v0, v2}, Lorg/apache/commons/compress/archivers/zip/O;-><init>(I)V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/J;->qw:Lorg/apache/commons/compress/archivers/zip/O;

    new-array v0, v2, [B

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/J;->qx:[B

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/J;

    invoke-direct {v0}, Lorg/apache/commons/compress/archivers/zip/J;-><init>()V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/J;->qy:Lorg/apache/commons/compress/archivers/zip/J;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dr()Lorg/apache/commons/compress/archivers/zip/J;
    .locals 1

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/J;->qy:Lorg/apache/commons/compress/archivers/zip/J;

    return-object v0
.end method


# virtual methods
.method public a([BII)V
    .locals 2

    if-eqz p3, :cond_0

    new-instance v0, Ljava/util/zip/ZipException;

    const-string v1, "JarMarker doesn\'t expect any data"

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public b([BII)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/zip/J;->a([BII)V

    return-void
.end method

.method public e()Lorg/apache/commons/compress/archivers/zip/O;
    .locals 1

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/J;->qv:Lorg/apache/commons/compress/archivers/zip/O;

    return-object v0
.end method

.method public f()Lorg/apache/commons/compress/archivers/zip/O;
    .locals 1

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/J;->qw:Lorg/apache/commons/compress/archivers/zip/O;

    return-object v0
.end method

.method public g()Lorg/apache/commons/compress/archivers/zip/O;
    .locals 1

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/J;->qw:Lorg/apache/commons/compress/archivers/zip/O;

    return-object v0
.end method

.method public h()[B
    .locals 1

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/J;->qx:[B

    return-object v0
.end method

.method public i()[B
    .locals 1

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/J;->qx:[B

    return-object v0
.end method
