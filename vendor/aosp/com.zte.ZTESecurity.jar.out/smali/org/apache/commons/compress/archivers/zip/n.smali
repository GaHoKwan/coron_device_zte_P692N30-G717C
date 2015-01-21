.class public final Lorg/apache/commons/compress/archivers/zip/n;
.super Ljava/lang/Object;


# static fields
.field public static final hA:Lorg/apache/commons/compress/archivers/zip/n; = null

.field public static final hB:Lorg/apache/commons/compress/archivers/zip/n; = null

.field public static final hC:Lorg/apache/commons/compress/archivers/zip/n; = null

.field public static final hx:I = 0x0

.field public static final hy:I = 0x1

.field public static final hz:I = 0x2


# instance fields
.field private final key:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/n;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/n;-><init>(I)V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/n;->hA:Lorg/apache/commons/compress/archivers/zip/n;

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/n;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/n;-><init>(I)V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/n;->hB:Lorg/apache/commons/compress/archivers/zip/n;

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/n;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/n;-><init>(I)V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/n;->hC:Lorg/apache/commons/compress/archivers/zip/n;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/commons/compress/archivers/zip/n;->key:I

    return-void
.end method


# virtual methods
.method public bp()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/compress/archivers/zip/n;->key:I

    return v0
.end method
