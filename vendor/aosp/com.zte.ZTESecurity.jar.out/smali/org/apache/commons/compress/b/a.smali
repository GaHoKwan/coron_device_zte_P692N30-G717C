.class Lorg/apache/commons/compress/b/a;
.super Ljava/lang/Object;


# static fields
.field static final TYPE_DELETE:I = 0x1

.field static final aX:I = 0x2

.field static final aY:I = 0x3

.field static final aZ:I = 0x4


# instance fields
.field private final aU:Ljava/lang/String;

.field private final aV:Lorg/apache/commons/compress/archivers/c;

.field private final aW:Z

.field private final input:Ljava/io/InputStream;

.field private final type:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Lorg/apache/commons/compress/b/a;->aU:Ljava/lang/String;

    iput p2, p0, Lorg/apache/commons/compress/b/a;->type:I

    iput-object v0, p0, Lorg/apache/commons/compress/b/a;->input:Ljava/io/InputStream;

    iput-object v0, p0, Lorg/apache/commons/compress/b/a;->aV:Lorg/apache/commons/compress/archivers/c;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/compress/b/a;->aW:Z

    return-void
.end method

.method constructor <init>(Lorg/apache/commons/compress/archivers/c;Ljava/io/InputStream;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1
    iput-object p1, p0, Lorg/apache/commons/compress/b/a;->aV:Lorg/apache/commons/compress/archivers/c;

    iput-object p2, p0, Lorg/apache/commons/compress/b/a;->input:Ljava/io/InputStream;

    const/4 v0, 0x2

    iput v0, p0, Lorg/apache/commons/compress/b/a;->type:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/compress/b/a;->aU:Ljava/lang/String;

    iput-boolean p3, p0, Lorg/apache/commons/compress/b/a;->aW:Z

    return-void
.end method


# virtual methods
.method G()Lorg/apache/commons/compress/archivers/c;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/b/a;->aV:Lorg/apache/commons/compress/archivers/c;

    return-object v0
.end method

.method H()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/b/a;->input:Ljava/io/InputStream;

    return-object v0
.end method

.method I()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/b/a;->aU:Ljava/lang/String;

    return-object v0
.end method

.method J()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/compress/b/a;->type:I

    return v0
.end method

.method K()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/compress/b/a;->aW:Z

    return v0
.end method
