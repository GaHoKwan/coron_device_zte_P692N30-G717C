.class public Lorg/apache/commons/compress/archivers/zip/s;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/commons/compress/archivers/zip/h;


# static fields
.field static final j:Lorg/apache/commons/compress/archivers/zip/O; = null

.field private static final jF:Ljava/lang/String; = "Zip64 extended information must contain both size values in the local file header."


# instance fields
.field private jG:Lorg/apache/commons/compress/archivers/zip/y;

.field private jH:Lorg/apache/commons/compress/archivers/zip/y;

.field private jI:Lorg/apache/commons/compress/archivers/zip/y;

.field private jJ:Lorg/apache/commons/compress/archivers/zip/l;

.field private jK:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/O;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/O;-><init>(I)V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/s;->j:Lorg/apache/commons/compress/archivers/zip/O;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/compress/archivers/zip/y;Lorg/apache/commons/compress/archivers/zip/y;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lorg/apache/commons/compress/archivers/zip/s;-><init>(Lorg/apache/commons/compress/archivers/zip/y;Lorg/apache/commons/compress/archivers/zip/y;Lorg/apache/commons/compress/archivers/zip/y;Lorg/apache/commons/compress/archivers/zip/l;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/compress/archivers/zip/y;Lorg/apache/commons/compress/archivers/zip/y;Lorg/apache/commons/compress/archivers/zip/y;Lorg/apache/commons/compress/archivers/zip/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/s;->jG:Lorg/apache/commons/compress/archivers/zip/y;

    iput-object p2, p0, Lorg/apache/commons/compress/archivers/zip/s;->jH:Lorg/apache/commons/compress/archivers/zip/y;

    iput-object p3, p0, Lorg/apache/commons/compress/archivers/zip/s;->jI:Lorg/apache/commons/compress/archivers/zip/y;

    iput-object p4, p0, Lorg/apache/commons/compress/archivers/zip/s;->jJ:Lorg/apache/commons/compress/archivers/zip/l;

    return-void
.end method

.method private m([B)I
    .locals 4

    const/16 v1, 0x8

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/s;->jG:Lorg/apache/commons/compress/archivers/zip/y;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/s;->jG:Lorg/apache/commons/compress/archivers/zip/y;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/y;->getBytes()[B

    move-result-object v0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v0, v1

    :goto_0
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/s;->jH:Lorg/apache/commons/compress/archivers/zip/y;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/s;->jH:Lorg/apache/commons/compress/archivers/zip/y;

    invoke-virtual {v3}, Lorg/apache/commons/compress/archivers/zip/y;->getBytes()[B

    move-result-object v3

    invoke-static {v3, v2, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v0, 0x8

    :cond_0
    return v0

    :cond_1
    move v0, v2

    goto :goto_0
.end method


# virtual methods
.method public a(Lorg/apache/commons/compress/archivers/zip/l;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/s;->jJ:Lorg/apache/commons/compress/archivers/zip/l;

    return-void
.end method

.method public a(Lorg/apache/commons/compress/archivers/zip/y;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/s;->jG:Lorg/apache/commons/compress/archivers/zip/y;

    return-void
.end method

.method public a(ZZZZ)V
    .locals 4

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/s;->jK:[B

    if-eqz v0, :cond_7

    if-eqz p1, :cond_0

    move v3, v2

    :goto_0
    if-eqz p2, :cond_1

    move v0, v2

    :goto_1
    add-int/2addr v3, v0

    if-eqz p3, :cond_2

    move v0, v2

    :goto_2
    add-int/2addr v3, v0

    if-eqz p4, :cond_3

    const/4 v0, 0x4

    :goto_3
    add-int/2addr v0, v3

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/s;->jK:[B

    array-length v3, v3

    if-eq v3, v0, :cond_4

    new-instance v1, Ljava/util/zip/ZipException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "central directory zip64 extended information extra field\'s length doesn\'t match central directory data.  Expected length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " but is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/s;->jK:[B

    array-length v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    move v3, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_3

    :cond_4
    if-eqz p1, :cond_8

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/y;

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/s;->jK:[B

    invoke-direct {v0, v3, v1}, Lorg/apache/commons/compress/archivers/zip/y;-><init>([BI)V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/s;->jG:Lorg/apache/commons/compress/archivers/zip/y;

    move v0, v2

    :goto_4
    if-eqz p2, :cond_5

    new-instance v1, Lorg/apache/commons/compress/archivers/zip/y;

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/s;->jK:[B

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/compress/archivers/zip/y;-><init>([BI)V

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/s;->jH:Lorg/apache/commons/compress/archivers/zip/y;

    add-int/lit8 v0, v0, 0x8

    :cond_5
    if-eqz p3, :cond_6

    new-instance v1, Lorg/apache/commons/compress/archivers/zip/y;

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/s;->jK:[B

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/compress/archivers/zip/y;-><init>([BI)V

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/s;->jI:Lorg/apache/commons/compress/archivers/zip/y;

    add-int/lit8 v0, v0, 0x8

    :cond_6
    if-eqz p4, :cond_7

    new-instance v1, Lorg/apache/commons/compress/archivers/zip/l;

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/s;->jK:[B

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/compress/archivers/zip/l;-><init>([BI)V

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/s;->jJ:Lorg/apache/commons/compress/archivers/zip/l;

    add-int/lit8 v0, v0, 0x4

    :cond_7
    return-void

    :cond_8
    move v0, v1

    goto :goto_4
.end method

.method public a([BII)V
    .locals 3

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x10

    if-ge p3, v0, :cond_2

    new-instance v0, Ljava/util/zip/ZipException;

    const-string v1, "Zip64 extended information must contain both size values in the local file header."

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/y;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/compress/archivers/zip/y;-><init>([BI)V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/s;->jG:Lorg/apache/commons/compress/archivers/zip/y;

    add-int/lit8 v0, p2, 0x8

    new-instance v1, Lorg/apache/commons/compress/archivers/zip/y;

    invoke-direct {v1, p1, v0}, Lorg/apache/commons/compress/archivers/zip/y;-><init>([BI)V

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/s;->jH:Lorg/apache/commons/compress/archivers/zip/y;

    add-int/lit8 v1, v0, 0x8

    add-int/lit8 v0, p3, -0x10

    const/16 v2, 0x8

    if-lt v0, v2, :cond_3

    new-instance v2, Lorg/apache/commons/compress/archivers/zip/y;

    invoke-direct {v2, p1, v1}, Lorg/apache/commons/compress/archivers/zip/y;-><init>([BI)V

    iput-object v2, p0, Lorg/apache/commons/compress/archivers/zip/s;->jI:Lorg/apache/commons/compress/archivers/zip/y;

    add-int/lit8 v1, v1, 0x8

    add-int/lit8 v0, v0, -0x8

    :cond_3
    const/4 v2, 0x4

    if-lt v0, v2, :cond_0

    new-instance v2, Lorg/apache/commons/compress/archivers/zip/l;

    invoke-direct {v2, p1, v1}, Lorg/apache/commons/compress/archivers/zip/l;-><init>([BI)V

    iput-object v2, p0, Lorg/apache/commons/compress/archivers/zip/s;->jJ:Lorg/apache/commons/compress/archivers/zip/l;

    add-int/lit8 v1, v1, 0x4

    add-int/lit8 v0, v0, -0x4

    goto :goto_0
.end method

.method public b(Lorg/apache/commons/compress/archivers/zip/y;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/s;->jH:Lorg/apache/commons/compress/archivers/zip/y;

    return-void
.end method

.method public b([BII)V
    .locals 2

    new-array v0, p3, [B

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/s;->jK:[B

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/s;->jK:[B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v0, 0x1c

    if-lt p3, v0, :cond_1

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/zip/s;->a([BII)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x18

    if-ne p3, v0, :cond_2

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/y;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/compress/archivers/zip/y;-><init>([BI)V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/s;->jG:Lorg/apache/commons/compress/archivers/zip/y;

    add-int/lit8 v0, p2, 0x8

    new-instance v1, Lorg/apache/commons/compress/archivers/zip/y;

    invoke-direct {v1, p1, v0}, Lorg/apache/commons/compress/archivers/zip/y;-><init>([BI)V

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/s;->jH:Lorg/apache/commons/compress/archivers/zip/y;

    add-int/lit8 v0, v0, 0x8

    new-instance v1, Lorg/apache/commons/compress/archivers/zip/y;

    invoke-direct {v1, p1, v0}, Lorg/apache/commons/compress/archivers/zip/y;-><init>([BI)V

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/s;->jI:Lorg/apache/commons/compress/archivers/zip/y;

    goto :goto_0

    :cond_2
    rem-int/lit8 v0, p3, 0x8

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/l;

    add-int v1, p2, p3

    add-int/lit8 v1, v1, -0x4

    invoke-direct {v0, p1, v1}, Lorg/apache/commons/compress/archivers/zip/l;-><init>([BI)V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/s;->jJ:Lorg/apache/commons/compress/archivers/zip/l;

    goto :goto_0
.end method

.method public bV()Lorg/apache/commons/compress/archivers/zip/y;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/s;->jG:Lorg/apache/commons/compress/archivers/zip/y;

    return-object v0
.end method

.method public bW()Lorg/apache/commons/compress/archivers/zip/y;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/s;->jH:Lorg/apache/commons/compress/archivers/zip/y;

    return-object v0
.end method

.method public bX()Lorg/apache/commons/compress/archivers/zip/y;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/s;->jI:Lorg/apache/commons/compress/archivers/zip/y;

    return-object v0
.end method

.method public bY()Lorg/apache/commons/compress/archivers/zip/l;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/s;->jJ:Lorg/apache/commons/compress/archivers/zip/l;

    return-object v0
.end method

.method public c(Lorg/apache/commons/compress/archivers/zip/y;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/s;->jI:Lorg/apache/commons/compress/archivers/zip/y;

    return-void
.end method

.method public e()Lorg/apache/commons/compress/archivers/zip/O;
    .locals 1

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/s;->j:Lorg/apache/commons/compress/archivers/zip/O;

    return-object v0
.end method

.method public f()Lorg/apache/commons/compress/archivers/zip/O;
    .locals 2

    new-instance v1, Lorg/apache/commons/compress/archivers/zip/O;

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/s;->jG:Lorg/apache/commons/compress/archivers/zip/y;

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    :goto_0
    invoke-direct {v1, v0}, Lorg/apache/commons/compress/archivers/zip/O;-><init>(I)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Lorg/apache/commons/compress/archivers/zip/O;
    .locals 5

    const/16 v1, 0x8

    const/4 v2, 0x0

    new-instance v4, Lorg/apache/commons/compress/archivers/zip/O;

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/s;->jG:Lorg/apache/commons/compress/archivers/zip/y;

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/s;->jH:Lorg/apache/commons/compress/archivers/zip/y;

    if-eqz v3, :cond_2

    move v3, v1

    :goto_1
    add-int/2addr v0, v3

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/s;->jI:Lorg/apache/commons/compress/archivers/zip/y;

    if-eqz v3, :cond_3

    :goto_2
    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/s;->jJ:Lorg/apache/commons/compress/archivers/zip/l;

    if-eqz v1, :cond_0

    const/4 v2, 0x4

    :cond_0
    add-int/2addr v0, v2

    invoke-direct {v4, v0}, Lorg/apache/commons/compress/archivers/zip/O;-><init>(I)V

    return-object v4

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v3, v2

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2
.end method

.method public h()[B
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/s;->jG:Lorg/apache/commons/compress/archivers/zip/y;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/s;->jH:Lorg/apache/commons/compress/archivers/zip/y;

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/s;->jG:Lorg/apache/commons/compress/archivers/zip/y;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/s;->jH:Lorg/apache/commons/compress/archivers/zip/y;

    if-nez v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Zip64 extended information must contain both size values in the local file header."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/16 v0, 0x10

    new-array v0, v0, [B

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/s;->m([B)I

    :goto_0
    return-object v0

    :cond_3
    const/4 v0, 0x0

    new-array v0, v0, [B

    goto :goto_0
.end method

.method public i()[B
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/s;->g()Lorg/apache/commons/compress/archivers/zip/O;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/O;->getValue()I

    move-result v0

    new-array v1, v0, [B

    invoke-direct {p0, v1}, Lorg/apache/commons/compress/archivers/zip/s;->m([B)I

    move-result v0

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/s;->jI:Lorg/apache/commons/compress/archivers/zip/y;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/s;->jI:Lorg/apache/commons/compress/archivers/zip/y;

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/zip/y;->getBytes()[B

    move-result-object v2

    const/16 v3, 0x8

    invoke-static {v2, v4, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v0, 0x8

    :cond_0
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/s;->jJ:Lorg/apache/commons/compress/archivers/zip/l;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/s;->jJ:Lorg/apache/commons/compress/archivers/zip/l;

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/zip/l;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x4

    invoke-static {v2, v4, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v0, 0x4

    :cond_1
    return-object v1
.end method
