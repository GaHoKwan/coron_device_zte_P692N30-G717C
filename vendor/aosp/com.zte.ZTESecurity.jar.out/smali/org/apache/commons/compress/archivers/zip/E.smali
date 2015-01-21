.class public Lorg/apache/commons/compress/archivers/zip/E;
.super Ljava/util/zip/ZipEntry;

# interfaces
.implements Lorg/apache/commons/compress/archivers/c;


# static fields
.field public static final nt:I = 0x3

.field public static final nu:I = 0x0

.field private static final nv:I = 0xffff

.field private static final nw:I = 0x10


# instance fields
.field private nA:J

.field private nB:Ljava/util/LinkedHashMap;

.field private nC:Lorg/apache/commons/compress/archivers/zip/r;

.field private nD:[B

.field private nE:Lorg/apache/commons/compress/archivers/zip/v;

.field private name:Ljava/lang/String;

.field private nx:I

.field private ny:I

.field private nz:I

.field private size:J


# direct methods
.method protected constructor <init>()V
    .locals 1

    const-string v0, ""

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/E;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_0
    invoke-direct {p0, p2}, Lorg/apache/commons/compress/archivers/zip/E;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/archivers/zip/E;->setSize(J)V

    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/archivers/zip/E;->setTime(J)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/compress/archivers/zip/E;->nx:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/E;->size:J

    iput v3, p0, Lorg/apache/commons/compress/archivers/zip/E;->ny:I

    iput v3, p0, Lorg/apache/commons/compress/archivers/zip/E;->nz:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/E;->nA:J

    iput-object v2, p0, Lorg/apache/commons/compress/archivers/zip/E;->nB:Ljava/util/LinkedHashMap;

    iput-object v2, p0, Lorg/apache/commons/compress/archivers/zip/E;->nC:Lorg/apache/commons/compress/archivers/zip/r;

    iput-object v2, p0, Lorg/apache/commons/compress/archivers/zip/E;->name:Ljava/lang/String;

    iput-object v2, p0, Lorg/apache/commons/compress/archivers/zip/E;->nD:[B

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/v;

    invoke-direct {v0}, Lorg/apache/commons/compress/archivers/zip/v;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/E;->nE:Lorg/apache/commons/compress/archivers/zip/v;

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/zip/E;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/zip/ZipEntry;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/util/zip/ZipEntry;)V

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/compress/archivers/zip/E;->nx:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/E;->size:J

    iput v3, p0, Lorg/apache/commons/compress/archivers/zip/E;->ny:I

    iput v3, p0, Lorg/apache/commons/compress/archivers/zip/E;->nz:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/E;->nA:J

    iput-object v2, p0, Lorg/apache/commons/compress/archivers/zip/E;->nB:Ljava/util/LinkedHashMap;

    iput-object v2, p0, Lorg/apache/commons/compress/archivers/zip/E;->nC:Lorg/apache/commons/compress/archivers/zip/r;

    iput-object v2, p0, Lorg/apache/commons/compress/archivers/zip/E;->name:Ljava/lang/String;

    iput-object v2, p0, Lorg/apache/commons/compress/archivers/zip/E;->nD:[B

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/v;

    invoke-direct {v0}, Lorg/apache/commons/compress/archivers/zip/v;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/E;->nE:Lorg/apache/commons/compress/archivers/zip/v;

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/E;->setName(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getExtra()[B

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    sget-object v2, Lorg/apache/commons/compress/archivers/zip/n;->hC:Lorg/apache/commons/compress/archivers/zip/n;

    invoke-static {v0, v1, v2}, Lorg/apache/commons/compress/archivers/zip/t;->a([BZLorg/apache/commons/compress/archivers/zip/n;)[Lorg/apache/commons/compress/archivers/zip/h;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/E;->c([Lorg/apache/commons/compress/archivers/zip/h;)V

    :goto_0
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getMethod()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/E;->setMethod(I)V

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/E;->size:J

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/E;->cJ()V

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/commons/compress/archivers/zip/E;)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/E;-><init>(Ljava/util/zip/ZipEntry;)V

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/E;->cC()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/E;->V(I)V

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/E;->cD()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/archivers/zip/E;->u(J)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/apache/commons/compress/archivers/zip/E;->o(Z)[Lorg/apache/commons/compress/archivers/zip/h;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/E;->c([Lorg/apache/commons/compress/archivers/zip/h;)V

    return-void
.end method

.method private a([Lorg/apache/commons/compress/archivers/zip/h;Z)V
    .locals 6

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/E;->nB:Ljava/util/LinkedHashMap;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/zip/E;->c([Lorg/apache/commons/compress/archivers/zip/h;)V

    :goto_0
    return-void

    :cond_0
    array-length v3, p1

    move v1, v2

    :goto_1
    if-ge v1, v3, :cond_4

    aget-object v4, p1, v1

    instance-of v0, v4, Lorg/apache/commons/compress/archivers/zip/r;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/E;->nC:Lorg/apache/commons/compress/archivers/zip/r;

    :goto_2
    if-nez v0, :cond_2

    invoke-virtual {p0, v4}, Lorg/apache/commons/compress/archivers/zip/E;->a(Lorg/apache/commons/compress/archivers/zip/h;)V

    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    invoke-interface {v4}, Lorg/apache/commons/compress/archivers/zip/h;->e()Lorg/apache/commons/compress/archivers/zip/O;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/E;->d(Lorg/apache/commons/compress/archivers/zip/O;)Lorg/apache/commons/compress/archivers/zip/h;

    move-result-object v0

    goto :goto_2

    :cond_2
    if-eqz p2, :cond_3

    invoke-interface {v4}, Lorg/apache/commons/compress/archivers/zip/h;->h()[B

    move-result-object v4

    array-length v5, v4

    invoke-interface {v0, v4, v2, v5}, Lorg/apache/commons/compress/archivers/zip/h;->a([BII)V

    goto :goto_3

    :cond_3
    invoke-interface {v4}, Lorg/apache/commons/compress/archivers/zip/h;->i()[B

    move-result-object v4

    array-length v5, v4

    invoke-interface {v0, v4, v2, v5}, Lorg/apache/commons/compress/archivers/zip/h;->b([BII)V

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/E;->cJ()V

    goto :goto_0
.end method


# virtual methods
.method public V(I)V
    .locals 0

    iput p1, p0, Lorg/apache/commons/compress/archivers/zip/E;->ny:I

    return-void
.end method

.method public W(I)V
    .locals 3

    const/4 v1, 0x0

    shl-int/lit8 v2, p1, 0x10

    and-int/lit16 v0, p1, 0x80

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v2

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/E;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x10

    :cond_0
    or-int/2addr v0, v1

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/archivers/zip/E;->u(J)V

    const/4 v0, 0x3

    iput v0, p0, Lorg/apache/commons/compress/archivers/zip/E;->nz:I

    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method protected X(I)V
    .locals 0

    iput p1, p0, Lorg/apache/commons/compress/archivers/zip/E;->nz:I

    return-void
.end method

.method public a(Lorg/apache/commons/compress/archivers/zip/h;)V
    .locals 2

    instance-of v0, p1, Lorg/apache/commons/compress/archivers/zip/r;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/apache/commons/compress/archivers/zip/r;

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/E;->nC:Lorg/apache/commons/compress/archivers/zip/r;

    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/E;->cJ()V

    return-void

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/E;->nB:Ljava/util/LinkedHashMap;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/E;->nB:Ljava/util/LinkedHashMap;

    :cond_1
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/E;->nB:Ljava/util/LinkedHashMap;

    invoke-interface {p1}, Lorg/apache/commons/compress/archivers/zip/h;->e()Lorg/apache/commons/compress/archivers/zip/O;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public a(Lorg/apache/commons/compress/archivers/zip/v;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/E;->nE:Lorg/apache/commons/compress/archivers/zip/v;

    return-void
.end method

.method public b(Lorg/apache/commons/compress/archivers/zip/h;)V
    .locals 3

    instance-of v0, p1, Lorg/apache/commons/compress/archivers/zip/r;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/apache/commons/compress/archivers/zip/r;

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/E;->nC:Lorg/apache/commons/compress/archivers/zip/r;

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/E;->cJ()V

    return-void

    :cond_1
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/E;->nB:Ljava/util/LinkedHashMap;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/E;->nB:Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/E;->nB:Ljava/util/LinkedHashMap;

    invoke-interface {p1}, Lorg/apache/commons/compress/archivers/zip/h;->e()Lorg/apache/commons/compress/archivers/zip/O;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/apache/commons/compress/archivers/zip/h;->e()Lorg/apache/commons/compress/archivers/zip/O;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/E;->nB:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    goto :goto_0
.end method

.method public bg()Ljava/util/Date;
    .locals 3

    new-instance v0, Ljava/util/Date;

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/E;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method protected c(Ljava/lang/String;[B)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/zip/E;->setName(Ljava/lang/String;)V

    iput-object p2, p0, Lorg/apache/commons/compress/archivers/zip/E;->nD:[B

    return-void
.end method

.method public c(Lorg/apache/commons/compress/archivers/zip/O;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/E;->nB:Ljava/util/LinkedHashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/E;->nB:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/E;->cJ()V

    return-void
.end method

.method public c([Lorg/apache/commons/compress/archivers/zip/h;)V
    .locals 5

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/E;->nB:Ljava/util/LinkedHashMap;

    array-length v2, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v0, p1, v1

    instance-of v3, v0, Lorg/apache/commons/compress/archivers/zip/r;

    if-eqz v3, :cond_0

    check-cast v0, Lorg/apache/commons/compress/archivers/zip/r;

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/E;->nC:Lorg/apache/commons/compress/archivers/zip/r;

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/E;->nB:Ljava/util/LinkedHashMap;

    invoke-interface {v0}, Lorg/apache/commons/compress/archivers/zip/h;->e()Lorg/apache/commons/compress/archivers/zip/O;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/E;->cJ()V

    return-void
.end method

.method public cC()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/compress/archivers/zip/E;->ny:I

    return v0
.end method

.method public cD()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/E;->nA:J

    return-wide v0
.end method

.method public cE()I
    .locals 4

    iget v0, p0, Lorg/apache/commons/compress/archivers/zip/E;->nz:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/E;->cD()J

    move-result-wide v0

    const/16 v2, 0x10

    shr-long/2addr v0, v2

    const-wide/32 v2, 0xffff

    and-long/2addr v0, v2

    long-to-int v0, v0

    goto :goto_0
.end method

.method public cF()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/compress/archivers/zip/E;->nz:I

    return v0
.end method

.method public cG()[Lorg/apache/commons/compress/archivers/zip/h;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/E;->o(Z)[Lorg/apache/commons/compress/archivers/zip/h;

    move-result-object v0

    return-object v0
.end method

.method public cH()V
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/E;->nC:Lorg/apache/commons/compress/archivers/zip/r;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/E;->nC:Lorg/apache/commons/compress/archivers/zip/r;

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/E;->cJ()V

    return-void
.end method

.method public cI()Lorg/apache/commons/compress/archivers/zip/r;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/E;->nC:Lorg/apache/commons/compress/archivers/zip/r;

    return-object v0
.end method

.method protected cJ()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/E;->o(Z)[Lorg/apache/commons/compress/archivers/zip/h;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/t;->a([Lorg/apache/commons/compress/archivers/zip/h;)[B

    move-result-object v0

    invoke-super {p0, v0}, Ljava/util/zip/ZipEntry;->setExtra([B)V

    return-void
.end method

.method public cK()[B
    .locals 1

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/E;->getExtra()[B

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [B

    goto :goto_0
.end method

.method public cL()[B
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/E;->o(Z)[Lorg/apache/commons/compress/archivers/zip/h;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/t;->b([Lorg/apache/commons/compress/archivers/zip/h;)[B

    move-result-object v0

    return-object v0
.end method

.method public cM()[B
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/E;->nD:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/E;->nD:[B

    array-length v0, v0

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/E;->nD:[B

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/E;->nD:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public cN()Lorg/apache/commons/compress/archivers/zip/v;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/E;->nE:Lorg/apache/commons/compress/archivers/zip/v;

    return-object v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 3

    invoke-super {p0}, Ljava/util/zip/ZipEntry;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/compress/archivers/zip/E;

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/E;->cC()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/zip/E;->V(I)V

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/E;->cD()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/compress/archivers/zip/E;->u(J)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/archivers/zip/E;->o(Z)[Lorg/apache/commons/compress/archivers/zip/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/zip/E;->c([Lorg/apache/commons/compress/archivers/zip/h;)V

    return-object v0
.end method

.method public d(Lorg/apache/commons/compress/archivers/zip/O;)Lorg/apache/commons/compress/archivers/zip/h;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/E;->nB:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/E;->nB:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/compress/archivers/zip/h;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    move v1, v0

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_0

    check-cast p1, Lorg/apache/commons/compress/archivers/zip/E;

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/E;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/E;->getName()Ljava/lang/String;

    move-result-object v3

    if-nez v2, :cond_4

    if-nez v3, :cond_0

    :cond_2
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/E;->getComment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/E;->getComment()Ljava/lang/String;

    move-result-object v3

    if-nez v2, :cond_5

    if-nez v3, :cond_0

    :cond_3
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/E;->getTime()J

    move-result-wide v2

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/E;->getTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_6

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/E;->cC()I

    move-result v2

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/E;->cC()I

    move-result v3

    if-ne v2, v3, :cond_6

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/E;->cF()I

    move-result v2

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/E;->cF()I

    move-result v3

    if-ne v2, v3, :cond_6

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/E;->cD()J

    move-result-wide v2

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/E;->cD()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_6

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/E;->getMethod()I

    move-result v2

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/E;->getMethod()I

    move-result v3

    if-ne v2, v3, :cond_6

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/E;->getSize()J

    move-result-wide v2

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/E;->getSize()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_6

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/E;->getCrc()J

    move-result-wide v2

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/E;->getCrc()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_6

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/E;->getCompressedSize()J

    move-result-wide v2

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/E;->getCompressedSize()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_6

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/E;->cL()[B

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/E;->cL()[B

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/E;->cK()[B

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/E;->cK()[B

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/E;->nE:Lorg/apache/commons/compress/archivers/zip/v;

    iget-object v3, p1, Lorg/apache/commons/compress/archivers/zip/E;->nE:Lorg/apache/commons/compress/archivers/zip/v;

    invoke-virtual {v2, v3}, Lorg/apache/commons/compress/archivers/zip/v;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :goto_1
    move v1, v0

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto/16 :goto_0

    :cond_6
    move v0, v1

    goto :goto_1
.end method

.method public getMethod()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/compress/archivers/zip/E;->nx:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/E;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-super {p0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/E;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method public getSize()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/E;->size:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/E;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isDirectory()Z
    .locals 2

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/E;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public o(Z)[Lorg/apache/commons/compress/archivers/zip/h;
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/E;->nB:Ljava/util/LinkedHashMap;

    if-nez v0, :cond_2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/E;->nC:Lorg/apache/commons/compress/archivers/zip/r;

    if-nez v0, :cond_1

    :cond_0
    new-array v0, v2, [Lorg/apache/commons/compress/archivers/zip/h;

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/commons/compress/archivers/zip/h;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/E;->nC:Lorg/apache/commons/compress/archivers/zip/r;

    aput-object v1, v0, v2

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/E;->nB:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    if-eqz p1, :cond_3

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/E;->nC:Lorg/apache/commons/compress/archivers/zip/r;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/E;->nC:Lorg/apache/commons/compress/archivers/zip/r;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    new-array v1, v2, [Lorg/apache/commons/compress/archivers/zip/h;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/compress/archivers/zip/h;

    goto :goto_0
.end method

.method public setExtra([B)V
    .locals 4

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lorg/apache/commons/compress/archivers/zip/n;->hC:Lorg/apache/commons/compress/archivers/zip/n;

    invoke-static {p1, v0, v1}, Lorg/apache/commons/compress/archivers/zip/t;->a([BZLorg/apache/commons/compress/archivers/zip/n;)[Lorg/apache/commons/compress/archivers/zip/h;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/compress/archivers/zip/E;->a([Lorg/apache/commons/compress/archivers/zip/h;Z)V
    :try_end_0
    .catch Ljava/util/zip/ZipException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error parsing extra fields for entry: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/E;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/zip/ZipException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setMethod(I)V
    .locals 3

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ZIP compression method can not be negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Lorg/apache/commons/compress/archivers/zip/E;->nx:I

    return-void
.end method

.method protected setName(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/E;->cF()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x5c

    const/16 v1, 0x2f

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/E;->name:Ljava/lang/String;

    return-void
.end method

.method public setSize(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid entry size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/zip/E;->size:J

    return-void
.end method

.method public u(J)V
    .locals 0

    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/zip/E;->nA:J

    return-void
.end method

.method public y([B)V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lorg/apache/commons/compress/archivers/zip/n;->hC:Lorg/apache/commons/compress/archivers/zip/n;

    invoke-static {p1, v0, v1}, Lorg/apache/commons/compress/archivers/zip/t;->a([BZLorg/apache/commons/compress/archivers/zip/n;)[Lorg/apache/commons/compress/archivers/zip/h;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/compress/archivers/zip/E;->a([Lorg/apache/commons/compress/archivers/zip/h;Z)V
    :try_end_0
    .catch Ljava/util/zip/ZipException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/util/zip/ZipException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
