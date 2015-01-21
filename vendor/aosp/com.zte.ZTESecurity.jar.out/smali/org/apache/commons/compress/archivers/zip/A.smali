.class public Lorg/apache/commons/compress/archivers/zip/A;
.super Lorg/apache/commons/compress/archivers/zip/u;


# static fields
.field public static final lI:Lorg/apache/commons/compress/archivers/zip/O;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/O;

    const/16 v1, 0x6375

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/O;-><init>(I)V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/A;->lI:Lorg/apache/commons/compress/archivers/zip/O;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/u;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/compress/archivers/zip/u;-><init>(Ljava/lang/String;[B)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[BII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/compress/archivers/zip/u;-><init>(Ljava/lang/String;[BII)V

    return-void
.end method


# virtual methods
.method public e()Lorg/apache/commons/compress/archivers/zip/O;
    .locals 1

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/A;->lI:Lorg/apache/commons/compress/archivers/zip/O;

    return-object v0
.end method
