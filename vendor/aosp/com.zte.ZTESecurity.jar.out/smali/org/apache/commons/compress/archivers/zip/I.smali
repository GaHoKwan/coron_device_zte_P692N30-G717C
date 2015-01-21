.class public final Lorg/apache/commons/compress/archivers/zip/I;
.super Ljava/lang/Object;


# static fields
.field public static final qh:Lorg/apache/commons/compress/archivers/zip/I;

.field public static final qi:Lorg/apache/commons/compress/archivers/zip/I;

.field public static final qj:Lorg/apache/commons/compress/archivers/zip/I;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/I;

    const-string v1, "always"

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/I;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/I;->qh:Lorg/apache/commons/compress/archivers/zip/I;

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/I;

    const-string v1, "never"

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/I;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/I;->qi:Lorg/apache/commons/compress/archivers/zip/I;

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/I;

    const-string v1, "not encodeable"

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/I;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/I;->qj:Lorg/apache/commons/compress/archivers/zip/I;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/I;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/I;->name:Ljava/lang/String;

    return-object v0
.end method
