.class public Lorg/apache/commons/compress/archivers/zip/i;
.super Ljava/lang/Object;


# static fields
.field public static final ek:Lorg/apache/commons/compress/archivers/zip/i;

.field public static final el:Lorg/apache/commons/compress/archivers/zip/i;

.field public static final em:Lorg/apache/commons/compress/archivers/zip/i;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/i;

    const-string v1, "encryption"

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/i;->ek:Lorg/apache/commons/compress/archivers/zip/i;

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/i;

    const-string v1, "compression method"

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/i;->el:Lorg/apache/commons/compress/archivers/zip/i;

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/i;

    const-string v1, "data descriptor"

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/i;->em:Lorg/apache/commons/compress/archivers/zip/i;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/i;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/i;->name:Ljava/lang/String;

    return-object v0
.end method
