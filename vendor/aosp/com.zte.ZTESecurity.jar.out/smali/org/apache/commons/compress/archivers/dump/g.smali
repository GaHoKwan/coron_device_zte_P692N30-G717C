.class Lorg/apache/commons/compress/archivers/dump/g;
.super Ljava/lang/Object;


# instance fields
.field private X:I

.field private name:Ljava/lang/String;

.field private rJ:I

.field private type:I


# direct methods
.method constructor <init>(IIILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/commons/compress/archivers/dump/g;->X:I

    iput p2, p0, Lorg/apache/commons/compress/archivers/dump/g;->rJ:I

    iput p3, p0, Lorg/apache/commons/compress/archivers/dump/g;->type:I

    iput-object p4, p0, Lorg/apache/commons/compress/archivers/dump/g;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method dt()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/compress/archivers/dump/g;->rJ:I

    return v0
.end method

.method getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/g;->name:Ljava/lang/String;

    return-object v0
.end method

.method getType()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/compress/archivers/dump/g;->type:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "[%d]: %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lorg/apache/commons/compress/archivers/dump/g;->X:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/dump/g;->name:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method u()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/compress/archivers/dump/g;->X:I

    return v0
.end method
