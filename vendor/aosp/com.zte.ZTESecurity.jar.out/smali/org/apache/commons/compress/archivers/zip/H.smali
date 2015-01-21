.class public Lorg/apache/commons/compress/archivers/zip/H;
.super Lorg/apache/commons/compress/archivers/d;


# static fields
.field static final BUFFER_SIZE:I = 0x200

.field public static final DEFAULT_COMPRESSION:I = -0x1

.field public static final DEFLATED:I = 0x8

.field public static final STORED:I = 0x0

.field private static final oP:I = 0x2000

.field static final oQ:Ljava/lang/String; = "UTF8"

.field public static final oR:I = 0x800

.field private static final oX:[B

.field private static final oY:[B

.field static final pg:[B

.field static final ph:[B

.field static final pi:[B

.field static final pj:[B

.field static final pk:[B

.field static final pl:[B

.field private static final pm:[B


# instance fields
.field protected b:Z

.field private be:Lorg/apache/commons/compress/archivers/zip/e;

.field private final buf:[B

.field private comment:Ljava/lang/String;

.field private final crc:Ljava/util/zip/CRC32;

.field protected final def:Ljava/util/zip/Deflater;

.field private e:J

.field private encoding:Ljava/lang/String;

.field private level:I

.field private nx:I

.field private oS:Lorg/apache/commons/compress/archivers/zip/p;

.field private oT:Z

.field private final oU:Ljava/util/List;

.field private oV:J

.field private oW:J

.field private final oZ:Ljava/util/Map;

.field private final out:Ljava/io/OutputStream;

.field private final pa:Ljava/io/RandomAccessFile;

.field private pb:Z

.field private pc:Z

.field private pd:Lorg/apache/commons/compress/archivers/zip/I;

.field private pe:Z

.field private pf:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/H;->oX:[B

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/H;->oY:[B

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/l;->fa:Lorg/apache/commons/compress/archivers/zip/l;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/l;->getBytes()[B

    move-result-object v0

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/H;->pg:[B

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/l;->fb:Lorg/apache/commons/compress/archivers/zip/l;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/l;->getBytes()[B

    move-result-object v0

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/H;->ph:[B

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/l;->eZ:Lorg/apache/commons/compress/archivers/zip/l;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/l;->getBytes()[B

    move-result-object v0

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/H;->pi:[B

    const-wide/32 v0, 0x6054b50

    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/zip/l;->c(J)[B

    move-result-object v0

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/H;->pj:[B

    const-wide/32 v0, 0x6064b50

    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/zip/l;->c(J)[B

    move-result-object v0

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/H;->pk:[B

    const-wide/32 v0, 0x7064b50

    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/zip/l;->c(J)[B

    move-result-object v0

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/H;->pl:[B

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/zip/l;->c(J)[B

    move-result-object v0

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/H;->pm:[B

    return-void

    :array_0
    .array-data 0x1
        0x0t
        0x0t
    .end array-data

    nop

    :array_1
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 8

    const/4 v6, 0x1

    const/4 v0, 0x0

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/d;-><init>()V

    iput-boolean v3, p0, Lorg/apache/commons/compress/archivers/zip/H;->b:Z

    const-string v1, ""

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/H;->comment:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, Lorg/apache/commons/compress/archivers/zip/H;->level:I

    iput-boolean v3, p0, Lorg/apache/commons/compress/archivers/zip/H;->oT:Z

    const/16 v1, 0x8

    iput v1, p0, Lorg/apache/commons/compress/archivers/zip/H;->nx:I

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/H;->oU:Ljava/util/List;

    new-instance v1, Ljava/util/zip/CRC32;

    invoke-direct {v1}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/H;->crc:Ljava/util/zip/CRC32;

    iput-wide v4, p0, Lorg/apache/commons/compress/archivers/zip/H;->e:J

    iput-wide v4, p0, Lorg/apache/commons/compress/archivers/zip/H;->oV:J

    iput-wide v4, p0, Lorg/apache/commons/compress/archivers/zip/H;->oW:J

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/H;->oZ:Ljava/util/Map;

    const-string v1, "UTF8"

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/H;->encoding:Ljava/lang/String;

    const-string v1, "UTF8"

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/B;->I(Ljava/lang/String;)Lorg/apache/commons/compress/archivers/zip/e;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/H;->be:Lorg/apache/commons/compress/archivers/zip/e;

    new-instance v1, Ljava/util/zip/Deflater;

    iget v2, p0, Lorg/apache/commons/compress/archivers/zip/H;->level:I

    invoke-direct {v1, v2, v6}, Ljava/util/zip/Deflater;-><init>(IZ)V

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/H;->def:Ljava/util/zip/Deflater;

    const/16 v1, 0x200

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/H;->buf:[B

    iput-boolean v6, p0, Lorg/apache/commons/compress/archivers/zip/H;->pb:Z

    iput-boolean v3, p0, Lorg/apache/commons/compress/archivers/zip/H;->pc:Z

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/I;->qi:Lorg/apache/commons/compress/archivers/zip/I;

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/H;->pd:Lorg/apache/commons/compress/archivers/zip/I;

    iput-boolean v3, p0, Lorg/apache/commons/compress/archivers/zip/H;->pe:Z

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/Zip64Mode;->jx:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/H;->pf:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {v1, p1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v2, 0x0

    :try_start_1
    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->setLength(J)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    :goto_0
    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/H;->out:Ljava/io/OutputStream;

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->pa:Ljava/io/RandomAccessFile;

    return-void

    :catch_0
    move-exception v1

    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v2

    goto :goto_1

    :cond_0
    move-object v0, v1

    goto :goto_2
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 6

    const/4 v5, 0x1

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/d;-><init>()V

    iput-boolean v2, p0, Lorg/apache/commons/compress/archivers/zip/H;->b:Z

    const-string v0, ""

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->comment:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->level:I

    iput-boolean v2, p0, Lorg/apache/commons/compress/archivers/zip/H;->oT:Z

    const/16 v0, 0x8

    iput v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->nx:I

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->oU:Ljava/util/List;

    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->crc:Ljava/util/zip/CRC32;

    iput-wide v3, p0, Lorg/apache/commons/compress/archivers/zip/H;->e:J

    iput-wide v3, p0, Lorg/apache/commons/compress/archivers/zip/H;->oV:J

    iput-wide v3, p0, Lorg/apache/commons/compress/archivers/zip/H;->oW:J

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->oZ:Ljava/util/Map;

    const-string v0, "UTF8"

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->encoding:Ljava/lang/String;

    const-string v0, "UTF8"

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/B;->I(Ljava/lang/String;)Lorg/apache/commons/compress/archivers/zip/e;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->be:Lorg/apache/commons/compress/archivers/zip/e;

    new-instance v0, Ljava/util/zip/Deflater;

    iget v1, p0, Lorg/apache/commons/compress/archivers/zip/H;->level:I

    invoke-direct {v0, v1, v5}, Ljava/util/zip/Deflater;-><init>(IZ)V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->def:Ljava/util/zip/Deflater;

    const/16 v0, 0x200

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->buf:[B

    iput-boolean v5, p0, Lorg/apache/commons/compress/archivers/zip/H;->pb:Z

    iput-boolean v2, p0, Lorg/apache/commons/compress/archivers/zip/H;->pc:Z

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/I;->qi:Lorg/apache/commons/compress/archivers/zip/I;

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->pd:Lorg/apache/commons/compress/archivers/zip/I;

    iput-boolean v2, p0, Lorg/apache/commons/compress/archivers/zip/H;->pe:Z

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/Zip64Mode;->jx:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->pf:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/H;->out:Ljava/io/OutputStream;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->pa:Ljava/io/RandomAccessFile;

    return-void
.end method

.method private a(IZZ)V
    .locals 4

    const/4 v1, 0x1

    const/16 v2, 0xa

    new-instance v3, Lorg/apache/commons/compress/archivers/zip/v;

    invoke-direct {v3}, Lorg/apache/commons/compress/archivers/zip/v;-><init>()V

    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->pb:Z

    if-nez v0, :cond_0

    if-eqz p2, :cond_2

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lorg/apache/commons/compress/archivers/zip/v;->j(Z)V

    const/16 v0, 0x8

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->pa:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_3

    const/16 v0, 0x14

    invoke-virtual {v3, v1}, Lorg/apache/commons/compress/archivers/zip/v;->k(Z)V

    :goto_1
    if-eqz p3, :cond_1

    const/16 v0, 0x2d

    :cond_1
    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/O;->getBytes(I)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/H;->z([B)V

    invoke-virtual {v3}, Lorg/apache/commons/compress/archivers/zip/v;->encode()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/H;->z([B)V

    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method private a(Lorg/apache/commons/compress/archivers/zip/E;JZ)V
    .locals 6

    const/4 v3, 0x0

    const-wide v4, 0xffffffffL

    if-eqz p4, :cond_2

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/H;->l(Lorg/apache/commons/compress/archivers/zip/E;)Lorg/apache/commons/compress/archivers/zip/s;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/E;->getCompressedSize()J

    move-result-wide v1

    cmp-long v1, v1, v4

    if-gez v1, :cond_0

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/E;->getSize()J

    move-result-wide v1

    cmp-long v1, v1, v4

    if-ltz v1, :cond_3

    :cond_0
    new-instance v1, Lorg/apache/commons/compress/archivers/zip/y;

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/E;->getCompressedSize()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/compress/archivers/zip/y;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/zip/s;->b(Lorg/apache/commons/compress/archivers/zip/y;)V

    new-instance v1, Lorg/apache/commons/compress/archivers/zip/y;

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/E;->getSize()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/compress/archivers/zip/y;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/zip/s;->a(Lorg/apache/commons/compress/archivers/zip/y;)V

    :goto_0
    cmp-long v1, p2, v4

    if-ltz v1, :cond_1

    new-instance v1, Lorg/apache/commons/compress/archivers/zip/y;

    invoke-direct {v1, p2, p3}, Lorg/apache/commons/compress/archivers/zip/y;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/zip/s;->c(Lorg/apache/commons/compress/archivers/zip/y;)V

    :cond_1
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/E;->cJ()V

    :cond_2
    return-void

    :cond_3
    invoke-virtual {v0, v3}, Lorg/apache/commons/compress/archivers/zip/s;->b(Lorg/apache/commons/compress/archivers/zip/y;)V

    invoke-virtual {v0, v3}, Lorg/apache/commons/compress/archivers/zip/s;->a(Lorg/apache/commons/compress/archivers/zip/y;)V

    goto :goto_0
.end method

.method private a(Lorg/apache/commons/compress/archivers/zip/E;ZLjava/nio/ByteBuffer;)V
    .locals 5

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->pd:Lorg/apache/commons/compress/archivers/zip/I;

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/I;->qh:Lorg/apache/commons/compress/archivers/zip/I;

    if-eq v0, v1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/g;

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/E;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v3

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/compress/archivers/zip/g;-><init>(Ljava/lang/String;[BII)V

    invoke-virtual {p1, v0}, Lorg/apache/commons/compress/archivers/zip/E;->a(Lorg/apache/commons/compress/archivers/zip/h;)V

    :cond_1
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/E;->getComment()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/H;->be:Lorg/apache/commons/compress/archivers/zip/e;

    invoke-interface {v1, v0}, Lorg/apache/commons/compress/archivers/zip/e;->f(Ljava/lang/String;)Z

    move-result v1

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/H;->pd:Lorg/apache/commons/compress/archivers/zip/I;

    sget-object v3, Lorg/apache/commons/compress/archivers/zip/I;->qh:Lorg/apache/commons/compress/archivers/zip/I;

    if-eq v2, v3, :cond_2

    if-nez v1, :cond_3

    :cond_2
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/H;->o(Lorg/apache/commons/compress/archivers/zip/E;)Lorg/apache/commons/compress/archivers/zip/e;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/apache/commons/compress/archivers/zip/e;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v1

    new-instance v2, Lorg/apache/commons/compress/archivers/zip/A;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v4

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-direct {v2, v0, v3, v4, v1}, Lorg/apache/commons/compress/archivers/zip/A;-><init>(Ljava/lang/String;[BII)V

    invoke-virtual {p1, v2}, Lorg/apache/commons/compress/archivers/zip/E;->a(Lorg/apache/commons/compress/archivers/zip/h;)V

    :cond_3
    return-void
.end method

.method private a(JJLorg/apache/commons/compress/archivers/zip/Zip64Mode;)Z
    .locals 5

    const-wide v3, 0xffffffffL

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->oS:Lorg/apache/commons/compress/archivers/zip/p;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/p;->b(Lorg/apache/commons/compress/archivers/zip/p;)Lorg/apache/commons/compress/archivers/zip/E;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/E;->getMethod()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->oS:Lorg/apache/commons/compress/archivers/zip/p;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/p;->b(Lorg/apache/commons/compress/archivers/zip/p;)Lorg/apache/commons/compress/archivers/zip/E;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/H;->oS:Lorg/apache/commons/compress/archivers/zip/p;

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/p;->d(Lorg/apache/commons/compress/archivers/zip/p;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/compress/archivers/zip/E;->setSize(J)V

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->oS:Lorg/apache/commons/compress/archivers/zip/p;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/p;->b(Lorg/apache/commons/compress/archivers/zip/p;)Lorg/apache/commons/compress/archivers/zip/E;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/compress/archivers/zip/E;->setCompressedSize(J)V

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->oS:Lorg/apache/commons/compress/archivers/zip/p;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/p;->b(Lorg/apache/commons/compress/archivers/zip/p;)Lorg/apache/commons/compress/archivers/zip/E;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lorg/apache/commons/compress/archivers/zip/E;->setCrc(J)V

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->reset()V

    :cond_0
    :goto_0
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/Zip64Mode;->jv:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    if-eq p5, v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->oS:Lorg/apache/commons/compress/archivers/zip/p;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/p;->b(Lorg/apache/commons/compress/archivers/zip/p;)Lorg/apache/commons/compress/archivers/zip/E;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/E;->getSize()J

    move-result-wide v0

    cmp-long v0, v0, v3

    if-gez v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->oS:Lorg/apache/commons/compress/archivers/zip/p;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/p;->b(Lorg/apache/commons/compress/archivers/zip/p;)Lorg/apache/commons/compress/archivers/zip/E;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/E;->getCompressedSize()J

    move-result-wide v0

    cmp-long v0, v0, v3

    if-ltz v0, :cond_5

    :cond_1
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_6

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/Zip64Mode;->jw:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    if-ne p5, v1, :cond_6

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/Zip64RequiredException;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/H;->oS:Lorg/apache/commons/compress/archivers/zip/p;

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/p;->b(Lorg/apache/commons/compress/archivers/zip/p;)Lorg/apache/commons/compress/archivers/zip/E;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/Zip64RequiredException;->q(Lorg/apache/commons/compress/archivers/zip/E;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/Zip64RequiredException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->pa:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->oS:Lorg/apache/commons/compress/archivers/zip/p;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/p;->b(Lorg/apache/commons/compress/archivers/zip/p;)Lorg/apache/commons/compress/archivers/zip/E;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/E;->getCrc()J

    move-result-wide v0

    cmp-long v0, v0, p3

    if-eqz v0, :cond_3

    new-instance v0, Ljava/util/zip/ZipException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad CRC checksum for entry "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/H;->oS:Lorg/apache/commons/compress/archivers/zip/p;

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/p;->b(Lorg/apache/commons/compress/archivers/zip/p;)Lorg/apache/commons/compress/archivers/zip/E;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/zip/E;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/H;->oS:Lorg/apache/commons/compress/archivers/zip/p;

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/p;->b(Lorg/apache/commons/compress/archivers/zip/p;)Lorg/apache/commons/compress/archivers/zip/E;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/zip/E;->getCrc()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " instead of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3, p4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->oS:Lorg/apache/commons/compress/archivers/zip/p;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/p;->b(Lorg/apache/commons/compress/archivers/zip/p;)Lorg/apache/commons/compress/archivers/zip/E;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/E;->getSize()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/zip/ZipException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad size for entry "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/H;->oS:Lorg/apache/commons/compress/archivers/zip/p;

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/p;->b(Lorg/apache/commons/compress/archivers/zip/p;)Lorg/apache/commons/compress/archivers/zip/E;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/zip/E;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/H;->oS:Lorg/apache/commons/compress/archivers/zip/p;

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/p;->b(Lorg/apache/commons/compress/archivers/zip/p;)Lorg/apache/commons/compress/archivers/zip/E;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/zip/E;->getSize()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " instead of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->oS:Lorg/apache/commons/compress/archivers/zip/p;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/p;->b(Lorg/apache/commons/compress/archivers/zip/p;)Lorg/apache/commons/compress/archivers/zip/E;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/compress/archivers/zip/E;->setSize(J)V

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->oS:Lorg/apache/commons/compress/archivers/zip/p;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/p;->b(Lorg/apache/commons/compress/archivers/zip/p;)Lorg/apache/commons/compress/archivers/zip/E;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/compress/archivers/zip/E;->setCompressedSize(J)V

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->oS:Lorg/apache/commons/compress/archivers/zip/p;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/p;->b(Lorg/apache/commons/compress/archivers/zip/p;)Lorg/apache/commons/compress/archivers/zip/E;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lorg/apache/commons/compress/archivers/zip/E;->setCrc(J)V

    goto/16 :goto_0

    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_6
    return v0
.end method

.method private a(Lorg/apache/commons/compress/archivers/zip/E;Lorg/apache/commons/compress/archivers/zip/Zip64Mode;)Z
    .locals 4

    const-wide v2, 0xffffffffL

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/Zip64Mode;->jv:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    if-eq p2, v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/E;->getSize()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/E;->getCompressedSize()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/E;->getSize()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->pa:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_1

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/Zip64Mode;->jw:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    if-eq p2, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Lorg/apache/commons/compress/archivers/zip/Zip64Mode;)V
    .locals 6

    const-wide v4, 0xffffffffL

    const-wide/16 v2, -0x1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->oS:Lorg/apache/commons/compress/archivers/zip/p;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/p;->b(Lorg/apache/commons/compress/archivers/zip/p;)Lorg/apache/commons/compress/archivers/zip/E;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/E;->getMethod()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->pa:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->oS:Lorg/apache/commons/compress/archivers/zip/p;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/p;->b(Lorg/apache/commons/compress/archivers/zip/p;)Lorg/apache/commons/compress/archivers/zip/E;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/E;->getSize()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/zip/ZipException;

    const-string v1, "uncompressed size is required for STORED method when not writing to a file"

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->oS:Lorg/apache/commons/compress/archivers/zip/p;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/p;->b(Lorg/apache/commons/compress/archivers/zip/p;)Lorg/apache/commons/compress/archivers/zip/E;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/E;->getCrc()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/zip/ZipException;

    const-string v1, "crc checksum is required for STORED method when not writing to a file"

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->oS:Lorg/apache/commons/compress/archivers/zip/p;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/p;->b(Lorg/apache/commons/compress/archivers/zip/p;)Lorg/apache/commons/compress/archivers/zip/E;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/H;->oS:Lorg/apache/commons/compress/archivers/zip/p;

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/p;->b(Lorg/apache/commons/compress/archivers/zip/p;)Lorg/apache/commons/compress/archivers/zip/E;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/E;->getSize()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/compress/archivers/zip/E;->setCompressedSize(J)V

    :cond_2
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->oS:Lorg/apache/commons/compress/archivers/zip/p;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/p;->b(Lorg/apache/commons/compress/archivers/zip/p;)Lorg/apache/commons/compress/archivers/zip/E;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/E;->getSize()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-gez v0, :cond_3

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->oS:Lorg/apache/commons/compress/archivers/zip/p;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/p;->b(Lorg/apache/commons/compress/archivers/zip/p;)Lorg/apache/commons/compress/archivers/zip/E;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/E;->getCompressedSize()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-ltz v0, :cond_4

    :cond_3
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/Zip64Mode;->jw:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    if-ne p1, v0, :cond_4

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/Zip64RequiredException;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/H;->oS:Lorg/apache/commons/compress/archivers/zip/p;

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/p;->b(Lorg/apache/commons/compress/archivers/zip/p;)Lorg/apache/commons/compress/archivers/zip/E;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/Zip64RequiredException;->q(Lorg/apache/commons/compress/archivers/zip/E;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/Zip64RequiredException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    return-void
.end method

.method private dj()V
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->oS:Lorg/apache/commons/compress/archivers/zip/p;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/p;->b(Lorg/apache/commons/compress/archivers/zip/p;)Lorg/apache/commons/compress/archivers/zip/E;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/E;->getMethod()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finish()V

    :goto_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finished()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/H;->deflate()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private dm()V
    .locals 1

    :goto_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->needsInput()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/H;->deflate()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private h(Lorg/apache/commons/compress/archivers/zip/E;)V
    .locals 4

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/E;->getMethod()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->nx:I

    invoke-virtual {p1, v0}, Lorg/apache/commons/compress/archivers/zip/E;->setMethod(I)V

    :cond_0
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/E;->getTime()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lorg/apache/commons/compress/archivers/zip/E;->setTime(J)V

    :cond_1
    return-void
.end method

.method private l(Lorg/apache/commons/compress/archivers/zip/E;)Lorg/apache/commons/compress/archivers/zip/s;
    .locals 3

    const/4 v1, 0x1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->oS:Lorg/apache/commons/compress/archivers/zip/p;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/H;->oS:Lorg/apache/commons/compress/archivers/zip/p;

    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->pe:Z

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    invoke-static {v2, v0}, Lorg/apache/commons/compress/archivers/zip/p;->b(Lorg/apache/commons/compress/archivers/zip/p;Z)Z

    :cond_0
    iput-boolean v1, p0, Lorg/apache/commons/compress/archivers/zip/H;->pe:Z

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/s;->j:Lorg/apache/commons/compress/archivers/zip/O;

    invoke-virtual {p1, v0}, Lorg/apache/commons/compress/archivers/zip/E;->d(Lorg/apache/commons/compress/archivers/zip/O;)Lorg/apache/commons/compress/archivers/zip/h;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/compress/archivers/zip/s;

    if-nez v0, :cond_1

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/s;

    invoke-direct {v0}, Lorg/apache/commons/compress/archivers/zip/s;-><init>()V

    :cond_1
    invoke-virtual {p1, v0}, Lorg/apache/commons/compress/archivers/zip/E;->b(Lorg/apache/commons/compress/archivers/zip/h;)V

    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private m(Lorg/apache/commons/compress/archivers/zip/E;)Z
    .locals 1

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/s;->j:Lorg/apache/commons/compress/archivers/zip/O;

    invoke-virtual {p1, v0}, Lorg/apache/commons/compress/archivers/zip/E;->d(Lorg/apache/commons/compress/archivers/zip/O;)Lorg/apache/commons/compress/archivers/zip/h;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private n(Lorg/apache/commons/compress/archivers/zip/E;)Lorg/apache/commons/compress/archivers/zip/Zip64Mode;
    .locals 4

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->pf:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/Zip64Mode;->jx:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->pa:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/E;->getMethod()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/E;->getSize()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->pf:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/Zip64Mode;->jw:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    goto :goto_0
.end method

.method private o(Lorg/apache/commons/compress/archivers/zip/E;)Lorg/apache/commons/compress/archivers/zip/e;
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->be:Lorg/apache/commons/compress/archivers/zip/e;

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/E;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/compress/archivers/zip/e;->f(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->pc:Z

    if-eqz v0, :cond_0

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/B;->lS:Lorg/apache/commons/compress/archivers/zip/e;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->be:Lorg/apache/commons/compress/archivers/zip/e;

    goto :goto_0
.end method

.method private o([BII)V
    .locals 5

    const/16 v4, 0x2000

    if-lez p3, :cond_0

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finished()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->oS:Lorg/apache/commons/compress/archivers/zip/p;

    int-to-long v1, p3

    invoke-static {v0, v1, v2}, Lorg/apache/commons/compress/archivers/zip/p;->a(Lorg/apache/commons/compress/archivers/zip/p;J)J

    if-gt p3, v4, :cond_1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/Deflater;->setInput([BII)V

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/H;->dm()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    div-int/lit16 v1, p3, 0x2000

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_2

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/H;->def:Ljava/util/zip/Deflater;

    mul-int/lit16 v3, v0, 0x2000

    add-int/2addr v3, p2

    invoke-virtual {v2, p1, v3, v4}, Ljava/util/zip/Deflater;->setInput([BII)V

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/H;->dm()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    mul-int/lit16 v0, v1, 0x2000

    if-ge v0, p3, :cond_0

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/H;->def:Ljava/util/zip/Deflater;

    add-int v2, p2, v0

    sub-int v0, p3, v0

    invoke-virtual {v1, p1, v2, v0}, Ljava/util/zip/Deflater;->setInput([BII)V

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/H;->dm()V

    goto :goto_0
.end method

.method private p(Lorg/apache/commons/compress/archivers/zip/E;)Ljava/nio/ByteBuffer;
    .locals 2

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/H;->o(Lorg/apache/commons/compress/archivers/zip/E;)Lorg/apache/commons/compress/archivers/zip/e;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/E;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/compress/archivers/zip/e;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method private r(Z)V
    .locals 9

    const-wide/16 v7, 0x4

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->pa:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/H;->pa:Ljava/io/RandomAccessFile;

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/H;->oS:Lorg/apache/commons/compress/archivers/zip/p;

    invoke-static {v3}, Lorg/apache/commons/compress/archivers/zip/p;->e(Lorg/apache/commons/compress/archivers/zip/p;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/H;->oS:Lorg/apache/commons/compress/archivers/zip/p;

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/p;->b(Lorg/apache/commons/compress/archivers/zip/p;)Lorg/apache/commons/compress/archivers/zip/E;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/zip/E;->getCrc()J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/commons/compress/archivers/zip/l;->c(J)[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/archivers/zip/H;->z([B)V

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/H;->oS:Lorg/apache/commons/compress/archivers/zip/p;

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/p;->b(Lorg/apache/commons/compress/archivers/zip/p;)Lorg/apache/commons/compress/archivers/zip/E;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/commons/compress/archivers/zip/H;->m(Lorg/apache/commons/compress/archivers/zip/E;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez p1, :cond_2

    :cond_0
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/H;->oS:Lorg/apache/commons/compress/archivers/zip/p;

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/p;->b(Lorg/apache/commons/compress/archivers/zip/p;)Lorg/apache/commons/compress/archivers/zip/E;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/zip/E;->getCompressedSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/commons/compress/archivers/zip/l;->c(J)[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/archivers/zip/H;->z([B)V

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/H;->oS:Lorg/apache/commons/compress/archivers/zip/p;

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/p;->b(Lorg/apache/commons/compress/archivers/zip/p;)Lorg/apache/commons/compress/archivers/zip/E;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/zip/E;->getSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/commons/compress/archivers/zip/l;->c(J)[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/archivers/zip/H;->z([B)V

    :goto_0
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/H;->oS:Lorg/apache/commons/compress/archivers/zip/p;

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/p;->b(Lorg/apache/commons/compress/archivers/zip/p;)Lorg/apache/commons/compress/archivers/zip/E;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/commons/compress/archivers/zip/H;->m(Lorg/apache/commons/compress/archivers/zip/E;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/H;->pa:Ljava/io/RandomAccessFile;

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/H;->oS:Lorg/apache/commons/compress/archivers/zip/p;

    invoke-static {v3}, Lorg/apache/commons/compress/archivers/zip/p;->e(Lorg/apache/commons/compress/archivers/zip/p;)J

    move-result-wide v3

    const-wide/16 v5, 0xc

    add-long/2addr v3, v5

    add-long/2addr v3, v7

    iget-object v5, p0, Lorg/apache/commons/compress/archivers/zip/H;->oS:Lorg/apache/commons/compress/archivers/zip/p;

    invoke-static {v5}, Lorg/apache/commons/compress/archivers/zip/p;->b(Lorg/apache/commons/compress/archivers/zip/p;)Lorg/apache/commons/compress/archivers/zip/E;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/apache/commons/compress/archivers/zip/H;->p(Lorg/apache/commons/compress/archivers/zip/E;)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    add-long/2addr v3, v7

    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/H;->oS:Lorg/apache/commons/compress/archivers/zip/p;

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/p;->b(Lorg/apache/commons/compress/archivers/zip/p;)Lorg/apache/commons/compress/archivers/zip/E;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/zip/E;->getSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/commons/compress/archivers/zip/y;->c(J)[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/archivers/zip/H;->z([B)V

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/H;->oS:Lorg/apache/commons/compress/archivers/zip/p;

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/p;->b(Lorg/apache/commons/compress/archivers/zip/p;)Lorg/apache/commons/compress/archivers/zip/E;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/zip/E;->getCompressedSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/commons/compress/archivers/zip/y;->c(J)[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/archivers/zip/H;->z([B)V

    if-nez p1, :cond_1

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/H;->pa:Ljava/io/RandomAccessFile;

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/H;->oS:Lorg/apache/commons/compress/archivers/zip/p;

    invoke-static {v3}, Lorg/apache/commons/compress/archivers/zip/p;->e(Lorg/apache/commons/compress/archivers/zip/p;)J

    move-result-wide v3

    const-wide/16 v5, 0xa

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    const/16 v2, 0xa

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/O;->getBytes(I)[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/archivers/zip/H;->z([B)V

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/H;->oS:Lorg/apache/commons/compress/archivers/zip/p;

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/p;->b(Lorg/apache/commons/compress/archivers/zip/p;)Lorg/apache/commons/compress/archivers/zip/E;

    move-result-object v2

    sget-object v3, Lorg/apache/commons/compress/archivers/zip/s;->j:Lorg/apache/commons/compress/archivers/zip/O;

    invoke-virtual {v2, v3}, Lorg/apache/commons/compress/archivers/zip/E;->c(Lorg/apache/commons/compress/archivers/zip/O;)V

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/H;->oS:Lorg/apache/commons/compress/archivers/zip/p;

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/p;->b(Lorg/apache/commons/compress/archivers/zip/p;)Lorg/apache/commons/compress/archivers/zip/E;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/zip/E;->cJ()V

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/H;->oS:Lorg/apache/commons/compress/archivers/zip/p;

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/p;->f(Lorg/apache/commons/compress/archivers/zip/p;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/apache/commons/compress/archivers/zip/H;->pe:Z

    :cond_1
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/H;->pa:Ljava/io/RandomAccessFile;

    invoke-virtual {v2, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    return-void

    :cond_2
    sget-object v2, Lorg/apache/commons/compress/archivers/zip/l;->fc:Lorg/apache/commons/compress/archivers/zip/l;

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/zip/l;->getBytes()[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/archivers/zip/H;->z([B)V

    sget-object v2, Lorg/apache/commons/compress/archivers/zip/l;->fc:Lorg/apache/commons/compress/archivers/zip/l;

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/zip/l;->getBytes()[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/archivers/zip/H;->z([B)V

    goto/16 :goto_0
.end method


# virtual methods
.method public a(Ljava/io/File;Ljava/lang/String;)Lorg/apache/commons/compress/archivers/c;
    .locals 2

    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->b:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream has already been finished"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/E;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/compress/archivers/zip/E;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public a(Lorg/apache/commons/compress/archivers/c;)V
    .locals 6

    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->b:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream has already been finished"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->oS:Lorg/apache/commons/compress/archivers/zip/p;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/H;->c()V

    :cond_1
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/p;

    check-cast p1, Lorg/apache/commons/compress/archivers/zip/E;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/apache/commons/compress/archivers/zip/p;-><init>(Lorg/apache/commons/compress/archivers/zip/E;Lorg/apache/commons/compress/archivers/zip/C;)V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->oS:Lorg/apache/commons/compress/archivers/zip/p;

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->oU:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/H;->oS:Lorg/apache/commons/compress/archivers/zip/p;

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/p;->b(Lorg/apache/commons/compress/archivers/zip/p;)Lorg/apache/commons/compress/archivers/zip/E;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->oS:Lorg/apache/commons/compress/archivers/zip/p;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/p;->b(Lorg/apache/commons/compress/archivers/zip/p;)Lorg/apache/commons/compress/archivers/zip/E;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/H;->h(Lorg/apache/commons/compress/archivers/zip/E;)V

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->oS:Lorg/apache/commons/compress/archivers/zip/p;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/p;->b(Lorg/apache/commons/compress/archivers/zip/p;)Lorg/apache/commons/compress/archivers/zip/E;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/H;->n(Lorg/apache/commons/compress/archivers/zip/E;)Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/H;->b(Lorg/apache/commons/compress/archivers/zip/Zip64Mode;)V

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/H;->oS:Lorg/apache/commons/compress/archivers/zip/p;

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/p;->b(Lorg/apache/commons/compress/archivers/zip/p;)Lorg/apache/commons/compress/archivers/zip/E;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lorg/apache/commons/compress/archivers/zip/H;->a(Lorg/apache/commons/compress/archivers/zip/E;Lorg/apache/commons/compress/archivers/zip/Zip64Mode;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->oS:Lorg/apache/commons/compress/archivers/zip/p;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/p;->b(Lorg/apache/commons/compress/archivers/zip/p;)Lorg/apache/commons/compress/archivers/zip/E;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/H;->l(Lorg/apache/commons/compress/archivers/zip/E;)Lorg/apache/commons/compress/archivers/zip/s;

    move-result-object v1

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/y;->ll:Lorg/apache/commons/compress/archivers/zip/y;

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/H;->oS:Lorg/apache/commons/compress/archivers/zip/p;

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/p;->b(Lorg/apache/commons/compress/archivers/zip/p;)Lorg/apache/commons/compress/archivers/zip/E;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/zip/E;->getMethod()I

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/H;->oS:Lorg/apache/commons/compress/archivers/zip/p;

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/p;->b(Lorg/apache/commons/compress/archivers/zip/p;)Lorg/apache/commons/compress/archivers/zip/E;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/zip/E;->getSize()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/y;

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/H;->oS:Lorg/apache/commons/compress/archivers/zip/p;

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/p;->b(Lorg/apache/commons/compress/archivers/zip/p;)Lorg/apache/commons/compress/archivers/zip/E;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/zip/E;->getSize()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/apache/commons/compress/archivers/zip/y;-><init>(J)V

    :cond_2
    invoke-virtual {v1, v0}, Lorg/apache/commons/compress/archivers/zip/s;->a(Lorg/apache/commons/compress/archivers/zip/y;)V

    invoke-virtual {v1, v0}, Lorg/apache/commons/compress/archivers/zip/s;->b(Lorg/apache/commons/compress/archivers/zip/y;)V

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->oS:Lorg/apache/commons/compress/archivers/zip/p;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/p;->b(Lorg/apache/commons/compress/archivers/zip/p;)Lorg/apache/commons/compress/archivers/zip/E;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/E;->cJ()V

    :cond_3
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->oS:Lorg/apache/commons/compress/archivers/zip/p;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/p;->b(Lorg/apache/commons/compress/archivers/zip/p;)Lorg/apache/commons/compress/archivers/zip/E;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/E;->getMethod()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_4

    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->oT:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->def:Ljava/util/zip/Deflater;

    iget v1, p0, Lorg/apache/commons/compress/archivers/zip/H;->level:I

    invoke-virtual {v0, v1}, Ljava/util/zip/Deflater;->setLevel(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->oT:Z

    :cond_4
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->oS:Lorg/apache/commons/compress/archivers/zip/p;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/p;->b(Lorg/apache/commons/compress/archivers/zip/p;)Lorg/apache/commons/compress/archivers/zip/E;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/H;->i(Lorg/apache/commons/compress/archivers/zip/E;)V

    return-void
.end method

.method public a(Lorg/apache/commons/compress/archivers/zip/I;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/H;->pd:Lorg/apache/commons/compress/archivers/zip/I;

    return-void
.end method

.method public a(Lorg/apache/commons/compress/archivers/zip/Zip64Mode;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/H;->pf:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    return-void
.end method

.method public c()V
    .locals 6

    const/4 v1, 0x0

    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->b:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream has already been finished"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->oS:Lorg/apache/commons/compress/archivers/zip/p;

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "No current entry to close"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->oS:Lorg/apache/commons/compress/archivers/zip/p;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/p;->a(Lorg/apache/commons/compress/archivers/zip/p;)Z

    move-result v0

    if-nez v0, :cond_2

    new-array v0, v1, [B

    invoke-virtual {p0, v0, v1, v1}, Lorg/apache/commons/compress/archivers/zip/H;->write([BII)V

    :cond_2
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/H;->dj()V

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->oS:Lorg/apache/commons/compress/archivers/zip/p;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/p;->b(Lorg/apache/commons/compress/archivers/zip/p;)Lorg/apache/commons/compress/archivers/zip/E;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/H;->n(Lorg/apache/commons/compress/archivers/zip/E;)Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    move-result-object v5

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->e:J

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/H;->oS:Lorg/apache/commons/compress/archivers/zip/p;

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/p;->c(Lorg/apache/commons/compress/archivers/zip/p;)J

    move-result-wide v2

    sub-long v1, v0, v2

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v3

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->reset()V

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/compress/archivers/zip/H;->a(JJLorg/apache/commons/compress/archivers/zip/Zip64Mode;)Z

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/H;->pa:Ljava/io/RandomAccessFile;

    if-eqz v1, :cond_3

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/H;->r(Z)V

    :cond_3
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->oS:Lorg/apache/commons/compress/archivers/zip/p;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/p;->b(Lorg/apache/commons/compress/archivers/zip/p;)Lorg/apache/commons/compress/archivers/zip/E;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/H;->j(Lorg/apache/commons/compress/archivers/zip/E;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->oS:Lorg/apache/commons/compress/archivers/zip/p;

    return-void
.end method

.method public close()V
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->b:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/H;->finish()V

    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/H;->destroy()V

    return-void
.end method

.method public d(Lorg/apache/commons/compress/archivers/c;)Z
    .locals 1

    instance-of v0, p1, Lorg/apache/commons/compress/archivers/zip/E;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/apache/commons/compress/archivers/zip/E;

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/zip/x;->d(Lorg/apache/commons/compress/archivers/zip/E;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final deflate()V
    .locals 5

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->def:Ljava/util/zip/Deflater;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/H;->buf:[B

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/H;->buf:[B

    array-length v2, v2

    invoke-virtual {v0, v1, v3, v2}, Ljava/util/zip/Deflater;->deflate([BII)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/H;->buf:[B

    invoke-virtual {p0, v1, v3, v0}, Lorg/apache/commons/compress/archivers/zip/H;->p([BII)V

    iget-wide v1, p0, Lorg/apache/commons/compress/archivers/zip/H;->e:J

    int-to-long v3, v0

    add-long v0, v1, v3

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->e:J

    :cond_0
    return-void
.end method

.method destroy()V
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->pa:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->pa:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->out:Ljava/io/OutputStream;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :cond_1
    return-void
.end method

.method public di()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->pa:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected dk()V
    .locals 6

    const v5, 0xffff

    const-wide v3, 0xffffffffL

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/H;->pj:[B

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/H;->z([B)V

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/H;->oX:[B

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/H;->z([B)V

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/H;->oX:[B

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/H;->z([B)V

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->oU:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v5, :cond_0

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/H;->pf:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    sget-object v2, Lorg/apache/commons/compress/archivers/zip/Zip64Mode;->jw:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    if-ne v1, v2, :cond_0

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/Zip64RequiredException;

    const-string v1, "archive contains more than 65535 entries."

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/Zip64RequiredException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-wide v1, p0, Lorg/apache/commons/compress/archivers/zip/H;->oV:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/H;->pf:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    sget-object v2, Lorg/apache/commons/compress/archivers/zip/Zip64Mode;->jw:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    if-ne v1, v2, :cond_1

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/Zip64RequiredException;

    const-string v1, "archive\'s size exceeds the limit of 4GByte."

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/Zip64RequiredException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/O;->getBytes(I)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/H;->z([B)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/H;->z([B)V

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->oW:J

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/zip/l;->c(J)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/H;->z([B)V

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->oV:J

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/zip/l;->c(J)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/H;->z([B)V

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->be:Lorg/apache/commons/compress/archivers/zip/e;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/H;->comment:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/apache/commons/compress/archivers/zip/e;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/O;->getBytes(I)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/archivers/zip/H;->z([B)V

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {p0, v1, v2, v0}, Lorg/apache/commons/compress/archivers/zip/H;->p([BII)V

    return-void
.end method

.method protected dl()V
    .locals 5

    const-wide v2, 0xffffffffL

    const/16 v4, 0x2d

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->pf:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/Zip64Mode;->jw:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->pe:Z

    if-nez v0, :cond_3

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->oV:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->oW:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->oU:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const v1, 0xffff

    if-lt v0, v1, :cond_3

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->pe:Z

    :cond_3
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->pe:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->e:J

    sget-object v2, Lorg/apache/commons/compress/archivers/zip/H;->pk:[B

    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/archivers/zip/H;->z([B)V

    const-wide/16 v2, 0x2c

    invoke-static {v2, v3}, Lorg/apache/commons/compress/archivers/zip/y;->c(J)[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/archivers/zip/H;->z([B)V

    invoke-static {v4}, Lorg/apache/commons/compress/archivers/zip/O;->getBytes(I)[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/archivers/zip/H;->z([B)V

    invoke-static {v4}, Lorg/apache/commons/compress/archivers/zip/O;->getBytes(I)[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/archivers/zip/H;->z([B)V

    sget-object v2, Lorg/apache/commons/compress/archivers/zip/H;->oY:[B

    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/archivers/zip/H;->z([B)V

    sget-object v2, Lorg/apache/commons/compress/archivers/zip/H;->oY:[B

    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/archivers/zip/H;->z([B)V

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/H;->oU:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Lorg/apache/commons/compress/archivers/zip/y;->c(J)[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/archivers/zip/H;->z([B)V

    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/archivers/zip/H;->z([B)V

    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/zip/H;->oW:J

    invoke-static {v2, v3}, Lorg/apache/commons/compress/archivers/zip/y;->c(J)[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/archivers/zip/H;->z([B)V

    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/zip/H;->oV:J

    invoke-static {v2, v3}, Lorg/apache/commons/compress/archivers/zip/y;->c(J)[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/archivers/zip/H;->z([B)V

    sget-object v2, Lorg/apache/commons/compress/archivers/zip/H;->pl:[B

    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/archivers/zip/H;->z([B)V

    sget-object v2, Lorg/apache/commons/compress/archivers/zip/H;->oY:[B

    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/archivers/zip/H;->z([B)V

    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/zip/y;->c(J)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/H;->z([B)V

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/H;->pm:[B

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/H;->z([B)V

    goto/16 :goto_0
.end method

.method public finish()V
    .locals 4

    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->b:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "This archive has already been finished"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->oS:Lorg/apache/commons/compress/archivers/zip/p;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "This archives contains unclosed entries."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->e:J

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->oV:J

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->oU:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/compress/archivers/zip/E;

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/H;->k(Lorg/apache/commons/compress/archivers/zip/E;)V

    goto :goto_0

    :cond_2
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->e:J

    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/zip/H;->oV:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->oW:J

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/H;->dl()V

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/H;->dk()V

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->oZ:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->oU:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->end()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->b:Z

    return-void
.end method

.method public flush()V
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->out:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    :cond_0
    return-void
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method protected i(Lorg/apache/commons/compress/archivers/zip/E;)V
    .locals 10

    const-wide/16 v8, 0x4

    const-wide/16 v6, 0x2

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->be:Lorg/apache/commons/compress/archivers/zip/e;

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/E;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/compress/archivers/zip/e;->f(Ljava/lang/String;)Z

    move-result v0

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/H;->p(Lorg/apache/commons/compress/archivers/zip/E;)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/H;->pd:Lorg/apache/commons/compress/archivers/zip/I;

    sget-object v3, Lorg/apache/commons/compress/archivers/zip/I;->qi:Lorg/apache/commons/compress/archivers/zip/I;

    if-eq v2, v3, :cond_0

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/compress/archivers/zip/H;->a(Lorg/apache/commons/compress/archivers/zip/E;ZLjava/nio/ByteBuffer;)V

    :cond_0
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/H;->oZ:Ljava/util/Map;

    iget-wide v3, p0, Lorg/apache/commons/compress/archivers/zip/H;->e:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lorg/apache/commons/compress/archivers/zip/H;->pg:[B

    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/archivers/zip/H;->z([B)V

    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/zip/H;->e:J

    add-long/2addr v2, v8

    iput-wide v2, p0, Lorg/apache/commons/compress/archivers/zip/H;->e:J

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/E;->getMethod()I

    move-result v2

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->pc:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/H;->m(Lorg/apache/commons/compress/archivers/zip/E;)Z

    move-result v3

    invoke-direct {p0, v2, v0, v3}, Lorg/apache/commons/compress/archivers/zip/H;->a(IZZ)V

    iget-wide v3, p0, Lorg/apache/commons/compress/archivers/zip/H;->e:J

    add-long/2addr v3, v8

    iput-wide v3, p0, Lorg/apache/commons/compress/archivers/zip/H;->e:J

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/O;->getBytes(I)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/H;->z([B)V

    iget-wide v3, p0, Lorg/apache/commons/compress/archivers/zip/H;->e:J

    add-long/2addr v3, v6

    iput-wide v3, p0, Lorg/apache/commons/compress/archivers/zip/H;->e:J

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/E;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Lorg/apache/commons/compress/archivers/zip/x;->s(J)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/H;->z([B)V

    iget-wide v3, p0, Lorg/apache/commons/compress/archivers/zip/H;->e:J

    add-long/2addr v3, v8

    iput-wide v3, p0, Lorg/apache/commons/compress/archivers/zip/H;->e:J

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->oS:Lorg/apache/commons/compress/archivers/zip/p;

    iget-wide v3, p0, Lorg/apache/commons/compress/archivers/zip/H;->e:J

    invoke-static {v0, v3, v4}, Lorg/apache/commons/compress/archivers/zip/p;->b(Lorg/apache/commons/compress/archivers/zip/p;J)J

    const/16 v0, 0x8

    if-eq v2, v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->pa:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_4

    :cond_1
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/H;->oY:[B

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/H;->z([B)V

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->oS:Lorg/apache/commons/compress/archivers/zip/p;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/p;->b(Lorg/apache/commons/compress/archivers/zip/p;)Lorg/apache/commons/compress/archivers/zip/E;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/H;->m(Lorg/apache/commons/compress/archivers/zip/E;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/l;->fc:Lorg/apache/commons/compress/archivers/zip/l;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/l;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/H;->z([B)V

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/l;->fc:Lorg/apache/commons/compress/archivers/zip/l;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/l;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/H;->z([B)V

    :goto_1
    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/zip/H;->e:J

    const-wide/16 v4, 0xc

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/apache/commons/compress/archivers/zip/H;->e:J

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/O;->getBytes(I)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/H;->z([B)V

    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/zip/H;->e:J

    add-long/2addr v2, v6

    iput-wide v2, p0, Lorg/apache/commons/compress/archivers/zip/H;->e:J

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/E;->cK()[B

    move-result-object v0

    array-length v2, v0

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/O;->getBytes(I)[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/archivers/zip/H;->z([B)V

    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/zip/H;->e:J

    add-long/2addr v2, v6

    iput-wide v2, p0, Lorg/apache/commons/compress/archivers/zip/H;->e:J

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v3

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    invoke-virtual {p0, v2, v3, v4}, Lorg/apache/commons/compress/archivers/zip/H;->p([BII)V

    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/zip/H;->e:J

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    int-to-long v4, v1

    add-long v1, v2, v4

    iput-wide v1, p0, Lorg/apache/commons/compress/archivers/zip/H;->e:J

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/H;->z([B)V

    iget-wide v1, p0, Lorg/apache/commons/compress/archivers/zip/H;->e:J

    array-length v0, v0

    int-to-long v3, v0

    add-long v0, v1, v3

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->e:J

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->oS:Lorg/apache/commons/compress/archivers/zip/p;

    iget-wide v1, p0, Lorg/apache/commons/compress/archivers/zip/H;->e:J

    invoke-static {v0, v1, v2}, Lorg/apache/commons/compress/archivers/zip/p;->c(Lorg/apache/commons/compress/archivers/zip/p;J)J

    return-void

    :cond_2
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_3
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/H;->oY:[B

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/H;->z([B)V

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/H;->oY:[B

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/H;->z([B)V

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/E;->getCrc()J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/commons/compress/archivers/zip/l;->c(J)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/H;->z([B)V

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/l;->fc:Lorg/apache/commons/compress/archivers/zip/l;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/l;->getBytes()[B

    move-result-object v0

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/H;->m(Lorg/apache/commons/compress/archivers/zip/E;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/E;->getSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/commons/compress/archivers/zip/l;->c(J)[B

    move-result-object v0

    :cond_5
    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/H;->z([B)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/H;->z([B)V

    goto/16 :goto_1
.end method

.method protected j(Lorg/apache/commons/compress/archivers/zip/E;)V
    .locals 5

    const/16 v1, 0x8

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/E;->getMethod()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->pa:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/H;->ph:[B

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/H;->z([B)V

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/E;->getCrc()J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/commons/compress/archivers/zip/l;->c(J)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/H;->z([B)V

    const/4 v0, 0x4

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/H;->m(Lorg/apache/commons/compress/archivers/zip/E;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/E;->getCompressedSize()J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/apache/commons/compress/archivers/zip/l;->c(J)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/archivers/zip/H;->z([B)V

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/E;->getSize()J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/apache/commons/compress/archivers/zip/l;->c(J)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/archivers/zip/H;->z([B)V

    :goto_1
    iget-wide v1, p0, Lorg/apache/commons/compress/archivers/zip/H;->e:J

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x8

    int-to-long v3, v0

    add-long v0, v1, v3

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->e:J

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/E;->getCompressedSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/commons/compress/archivers/zip/y;->c(J)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/H;->z([B)V

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/E;->getSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/commons/compress/archivers/zip/y;->c(J)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/H;->z([B)V

    move v0, v1

    goto :goto_1
.end method

.method protected k(Lorg/apache/commons/compress/archivers/zip/E;)V
    .locals 14

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide/16 v12, 0x4

    const-wide v10, 0xffffffffL

    const-wide/16 v8, 0x2

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/H;->pi:[B

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/H;->z([B)V

    iget-wide v3, p0, Lorg/apache/commons/compress/archivers/zip/H;->e:J

    add-long/2addr v3, v12

    iput-wide v3, p0, Lorg/apache/commons/compress/archivers/zip/H;->e:J

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->oZ:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/H;->m(Lorg/apache/commons/compress/archivers/zip/E;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/E;->getCompressedSize()J

    move-result-wide v6

    cmp-long v0, v6, v10

    if-gez v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/E;->getSize()J

    move-result-wide v6

    cmp-long v0, v6, v10

    if-gez v0, :cond_0

    cmp-long v0, v4, v10

    if-ltz v0, :cond_1

    :cond_0
    move v3, v1

    :goto_0
    if-eqz v3, :cond_2

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->pf:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    sget-object v6, Lorg/apache/commons/compress/archivers/zip/Zip64Mode;->jw:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    if-ne v0, v6, :cond_2

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/Zip64RequiredException;

    const-string v1, "archive\'s size exceeds the limit of 4GByte."

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/Zip64RequiredException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v3, v2

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, v4, v5, v3}, Lorg/apache/commons/compress/archivers/zip/H;->a(Lorg/apache/commons/compress/archivers/zip/E;JZ)V

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/E;->cF()I

    move-result v0

    shl-int/lit8 v6, v0, 0x8

    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->pe:Z

    if-nez v0, :cond_5

    const/16 v0, 0x14

    :goto_1
    or-int/2addr v0, v6

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/O;->getBytes(I)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/H;->z([B)V

    iget-wide v6, p0, Lorg/apache/commons/compress/archivers/zip/H;->e:J

    add-long/2addr v6, v8

    iput-wide v6, p0, Lorg/apache/commons/compress/archivers/zip/H;->e:J

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/E;->getMethod()I

    move-result v6

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->be:Lorg/apache/commons/compress/archivers/zip/e;

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/E;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Lorg/apache/commons/compress/archivers/zip/e;->f(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->pc:Z

    if-eqz v0, :cond_6

    move v0, v1

    :goto_2
    invoke-direct {p0, v6, v0, v3}, Lorg/apache/commons/compress/archivers/zip/H;->a(IZZ)V

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->e:J

    add-long/2addr v0, v12

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->e:J

    invoke-static {v6}, Lorg/apache/commons/compress/archivers/zip/O;->getBytes(I)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/H;->z([B)V

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->e:J

    add-long/2addr v0, v8

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->e:J

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/E;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/zip/x;->s(J)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/H;->z([B)V

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->e:J

    add-long/2addr v0, v12

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->e:J

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/E;->getCrc()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/zip/l;->c(J)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/H;->z([B)V

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/E;->getCompressedSize()J

    move-result-wide v0

    cmp-long v0, v0, v10

    if-gez v0, :cond_3

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/E;->getSize()J

    move-result-wide v0

    cmp-long v0, v0, v10

    if-ltz v0, :cond_7

    :cond_3
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/l;->fc:Lorg/apache/commons/compress/archivers/zip/l;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/l;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/H;->z([B)V

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/l;->fc:Lorg/apache/commons/compress/archivers/zip/l;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/l;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/H;->z([B)V

    :goto_3
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->e:J

    const-wide/16 v2, 0xc

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->e:J

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/H;->p(Lorg/apache/commons/compress/archivers/zip/E;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/O;->getBytes(I)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/H;->z([B)V

    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/zip/H;->e:J

    add-long/2addr v2, v8

    iput-wide v2, p0, Lorg/apache/commons/compress/archivers/zip/H;->e:J

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/E;->cL()[B

    move-result-object v2

    array-length v0, v2

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/O;->getBytes(I)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/H;->z([B)V

    iget-wide v6, p0, Lorg/apache/commons/compress/archivers/zip/H;->e:J

    add-long/2addr v6, v8

    iput-wide v6, p0, Lorg/apache/commons/compress/archivers/zip/H;->e:J

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/E;->getComment()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    const-string v0, ""

    :cond_4
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/H;->o(Lorg/apache/commons/compress/archivers/zip/E;)Lorg/apache/commons/compress/archivers/zip/e;

    move-result-object v3

    invoke-interface {v3, v0}, Lorg/apache/commons/compress/archivers/zip/e;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    invoke-static {v3}, Lorg/apache/commons/compress/archivers/zip/O;->getBytes(I)[B

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/commons/compress/archivers/zip/H;->z([B)V

    iget-wide v6, p0, Lorg/apache/commons/compress/archivers/zip/H;->e:J

    add-long/2addr v6, v8

    iput-wide v6, p0, Lorg/apache/commons/compress/archivers/zip/H;->e:J

    sget-object v3, Lorg/apache/commons/compress/archivers/zip/H;->oX:[B

    invoke-virtual {p0, v3}, Lorg/apache/commons/compress/archivers/zip/H;->z([B)V

    iget-wide v6, p0, Lorg/apache/commons/compress/archivers/zip/H;->e:J

    add-long/2addr v6, v8

    iput-wide v6, p0, Lorg/apache/commons/compress/archivers/zip/H;->e:J

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/E;->cC()I

    move-result v3

    invoke-static {v3}, Lorg/apache/commons/compress/archivers/zip/O;->getBytes(I)[B

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/commons/compress/archivers/zip/H;->z([B)V

    iget-wide v6, p0, Lorg/apache/commons/compress/archivers/zip/H;->e:J

    add-long/2addr v6, v8

    iput-wide v6, p0, Lorg/apache/commons/compress/archivers/zip/H;->e:J

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/E;->cD()J

    move-result-wide v6

    invoke-static {v6, v7}, Lorg/apache/commons/compress/archivers/zip/l;->c(J)[B

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/commons/compress/archivers/zip/H;->z([B)V

    iget-wide v6, p0, Lorg/apache/commons/compress/archivers/zip/H;->e:J

    add-long/2addr v6, v12

    iput-wide v6, p0, Lorg/apache/commons/compress/archivers/zip/H;->e:J

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    invoke-static {v3, v4}, Lorg/apache/commons/compress/archivers/zip/l;->c(J)[B

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/commons/compress/archivers/zip/H;->z([B)V

    iget-wide v3, p0, Lorg/apache/commons/compress/archivers/zip/H;->e:J

    add-long/2addr v3, v12

    iput-wide v3, p0, Lorg/apache/commons/compress/archivers/zip/H;->e:J

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v4

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    invoke-virtual {p0, v3, v4, v5}, Lorg/apache/commons/compress/archivers/zip/H;->p([BII)V

    iget-wide v3, p0, Lorg/apache/commons/compress/archivers/zip/H;->e:J

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    int-to-long v5, v1

    add-long/2addr v3, v5

    iput-wide v3, p0, Lorg/apache/commons/compress/archivers/zip/H;->e:J

    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/archivers/zip/H;->z([B)V

    iget-wide v3, p0, Lorg/apache/commons/compress/archivers/zip/H;->e:J

    array-length v1, v2

    int-to-long v1, v1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/apache/commons/compress/archivers/zip/H;->e:J

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Lorg/apache/commons/compress/archivers/zip/H;->p([BII)V

    iget-wide v1, p0, Lorg/apache/commons/compress/archivers/zip/H;->e:J

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    int-to-long v3, v0

    add-long v0, v1, v3

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->e:J

    return-void

    :cond_5
    const/16 v0, 0x2d

    goto/16 :goto_1

    :cond_6
    move v0, v2

    goto/16 :goto_2

    :cond_7
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/E;->getCompressedSize()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/zip/l;->c(J)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/H;->z([B)V

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/E;->getSize()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/zip/l;->c(J)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/H;->z([B)V

    goto/16 :goto_3
.end method

.method public p(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->encoding:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/B;->J(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->pb:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final p([BII)V
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->pa:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->pa:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->write([BII)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0
.end method

.method public q(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/zip/H;->pc:Z

    return-void
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/H;->comment:Ljava/lang/String;

    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/H;->encoding:Ljava/lang/String;

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/zip/B;->I(Ljava/lang/String;)Lorg/apache/commons/compress/archivers/zip/e;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->be:Lorg/apache/commons/compress/archivers/zip/e;

    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->pb:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/zip/B;->J(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->pb:Z

    :cond_0
    return-void
.end method

.method public setLevel(I)V
    .locals 3

    const/4 v0, -0x1

    if-lt p1, v0, :cond_0

    const/16 v0, 0x9

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid compression level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->level:I

    if-eq v0, p1, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->oT:Z

    iput p1, p0, Lorg/apache/commons/compress/archivers/zip/H;->level:I

    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setMethod(I)V
    .locals 0

    iput p1, p0, Lorg/apache/commons/compress/archivers/zip/H;->nx:I

    return-void
.end method

.method public write([BII)V
    .locals 4

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->oS:Lorg/apache/commons/compress/archivers/zip/p;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/p;->b(Lorg/apache/commons/compress/archivers/zip/p;)Lorg/apache/commons/compress/archivers/zip/E;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/x;->g(Lorg/apache/commons/compress/archivers/zip/E;)V

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->oS:Lorg/apache/commons/compress/archivers/zip/p;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/zip/p;->a(Lorg/apache/commons/compress/archivers/zip/p;Z)Z

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->oS:Lorg/apache/commons/compress/archivers/zip/p;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/p;->b(Lorg/apache/commons/compress/archivers/zip/p;)Lorg/apache/commons/compress/archivers/zip/E;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/E;->getMethod()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/zip/H;->o([BII)V

    :goto_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/CRC32;->update([BII)V

    invoke-virtual {p0, p3}, Lorg/apache/commons/compress/archivers/zip/H;->z(I)V

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/zip/H;->p([BII)V

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->e:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/H;->e:J

    goto :goto_0
.end method

.method protected final z([B)V
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/compress/archivers/zip/H;->p([BII)V

    return-void
.end method
