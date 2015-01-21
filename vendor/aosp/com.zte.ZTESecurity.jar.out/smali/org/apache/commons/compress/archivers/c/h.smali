.class public Lorg/apache/commons/compress/archivers/c/h;
.super Lorg/apache/commons/compress/archivers/d;


# static fields
.field private static final lH:Lorg/apache/commons/compress/archivers/zip/e; = null

.field public static final lq:I = 0x0

.field public static final lr:I = 0x1

.field public static final ls:I = 0x2

.field public static final lt:I = 0x3

.field public static final lu:I = 0x0

.field public static final lv:I = 0x1

.field public static final lw:I = 0x2


# instance fields
.field private b:Z

.field private closed:Z

.field private final lA:[B

.field private lB:I

.field private final lC:[B

.field private lD:I

.field private lE:I

.field private lF:Z

.field private lG:Z

.field private lx:J

.field private ly:Ljava/lang/String;

.field private lz:J

.field private final out:Ljava/io/OutputStream;

.field protected final v:Lorg/apache/commons/compress/archivers/c/c;

.field private final x:Lorg/apache/commons/compress/archivers/zip/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ASCII"

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/B;->I(Ljava/lang/String;)Lorg/apache/commons/compress/archivers/zip/e;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/compress/archivers/c/h;->lH:Lorg/apache/commons/compress/archivers/zip/e;

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 2

    const/16 v0, 0x2800

    const/16 v1, 0x200

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/compress/archivers/c/h;-><init>(Ljava/io/OutputStream;II)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 1

    const/16 v0, 0x200

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/compress/archivers/c/h;-><init>(Ljava/io/OutputStream;II)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/compress/archivers/c/h;-><init>(Ljava/io/OutputStream;IILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;IILjava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/d;-><init>()V

    iput v2, p0, Lorg/apache/commons/compress/archivers/c/h;->lD:I

    iput v2, p0, Lorg/apache/commons/compress/archivers/c/h;->lE:I

    iput-boolean v2, p0, Lorg/apache/commons/compress/archivers/c/h;->closed:Z

    iput-boolean v2, p0, Lorg/apache/commons/compress/archivers/c/h;->lF:Z

    iput-boolean v2, p0, Lorg/apache/commons/compress/archivers/c/h;->b:Z

    iput-boolean v2, p0, Lorg/apache/commons/compress/archivers/c/h;->lG:Z

    new-instance v0, Lorg/apache/commons/compress/a/e;

    invoke-direct {v0, p1}, Lorg/apache/commons/compress/a/e;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/c/h;->out:Ljava/io/OutputStream;

    invoke-static {p4}, Lorg/apache/commons/compress/archivers/zip/B;->I(Ljava/lang/String;)Lorg/apache/commons/compress/archivers/zip/e;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/c/h;->x:Lorg/apache/commons/compress/archivers/zip/e;

    new-instance v0, Lorg/apache/commons/compress/archivers/c/c;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/c/h;->out:Ljava/io/OutputStream;

    invoke-direct {v0, v1, p2, p3}, Lorg/apache/commons/compress/archivers/c/c;-><init>(Ljava/io/OutputStream;II)V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/c/h;->v:Lorg/apache/commons/compress/archivers/c/c;

    iput v2, p0, Lorg/apache/commons/compress/archivers/c/h;->lB:I

    new-array v0, p3, [B

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/c/h;->lC:[B

    new-array v0, p3, [B

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/c/h;->lA:[B

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;ILjava/lang/String;)V
    .locals 1

    const/16 v0, 0x200

    invoke-direct {p0, p1, p2, v0, p3}, Lorg/apache/commons/compress/archivers/c/h;-><init>(Ljava/io/OutputStream;IILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0x2800

    const/16 v1, 0x200

    invoke-direct {p0, p1, v0, v1, p2}, Lorg/apache/commons/compress/archivers/c/h;-><init>(Ljava/io/OutputStream;IILjava/lang/String;)V

    return-void
.end method

.method private H(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    and-int/lit8 v3, v3, 0x7f

    int-to-char v3, v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;JJ)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_0

    cmp-long v0, p2, p4

    if-lez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is too big ( > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method private a(Ljava/util/Map;Ljava/lang/String;JJ)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-ltz v0, :cond_0

    cmp-long v0, p3, p5

    if-lez v0, :cond_1

    :cond_0
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method private a(Ljava/util/Map;Lorg/apache/commons/compress/archivers/c/f;)V
    .locals 7

    const-string v2, "size"

    invoke-virtual {p2}, Lorg/apache/commons/compress/archivers/c/f;->getSize()J

    move-result-wide v3

    const-wide v5, 0x1ffffffffL

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/compress/archivers/c/h;->a(Ljava/util/Map;Ljava/lang/String;JJ)V

    const-string v2, "gid"

    invoke-virtual {p2}, Lorg/apache/commons/compress/archivers/c/f;->getGroupId()I

    move-result v0

    int-to-long v3, v0

    const-wide/32 v5, 0x1fffff

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/compress/archivers/c/h;->a(Ljava/util/Map;Ljava/lang/String;JJ)V

    const-string v2, "mtime"

    invoke-virtual {p2}, Lorg/apache/commons/compress/archivers/c/f;->bt()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v3, 0x3e8

    div-long v3, v0, v3

    const-wide v5, 0x1ffffffffL

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/compress/archivers/c/h;->a(Ljava/util/Map;Ljava/lang/String;JJ)V

    const-string v2, "uid"

    invoke-virtual {p2}, Lorg/apache/commons/compress/archivers/c/f;->getUserId()I

    move-result v0

    int-to-long v3, v0

    const-wide/32 v5, 0x1fffff

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/compress/archivers/c/h;->a(Ljava/util/Map;Ljava/lang/String;JJ)V

    const-string v2, "SCHILY.devmajor"

    invoke-virtual {p2}, Lorg/apache/commons/compress/archivers/c/f;->bv()I

    move-result v0

    int-to-long v3, v0

    const-wide/32 v5, 0x1fffff

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/compress/archivers/c/h;->a(Ljava/util/Map;Ljava/lang/String;JJ)V

    const-string v2, "SCHILY.devminor"

    invoke-virtual {p2}, Lorg/apache/commons/compress/archivers/c/f;->bw()I

    move-result v0

    int-to-long v3, v0

    const-wide/32 v5, 0x1fffff

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/compress/archivers/c/h;->a(Ljava/util/Map;Ljava/lang/String;JJ)V

    const-string v1, "mode"

    invoke-virtual {p2}, Lorg/apache/commons/compress/archivers/c/f;->getMode()I

    move-result v0

    int-to-long v2, v0

    const-wide/32 v4, 0x1fffff

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/compress/archivers/c/h;->a(Ljava/lang/String;JJ)V

    return-void
.end method

.method private cw()V
    .locals 3

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/c/h;->lA:[B

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/c/h;->lA:[B

    aput-byte v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/c/h;->v:Lorg/apache/commons/compress/archivers/c/c;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/c/h;->lA:[B

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/c/c;->d([B)V

    return-void
.end method

.method private d(Lorg/apache/commons/compress/archivers/c/f;)V
    .locals 12

    const-wide v4, 0x1ffffffffL

    const-wide/32 v10, 0x1fffff

    const-string v1, "entry size"

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/c/f;->getSize()J

    move-result-wide v2

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/compress/archivers/c/h;->a(Ljava/lang/String;JJ)V

    const-string v7, "group id"

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/c/f;->getGroupId()I

    move-result v0

    int-to-long v8, v0

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Lorg/apache/commons/compress/archivers/c/h;->a(Ljava/lang/String;JJ)V

    const-string v1, "last modification time"

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/c/f;->bt()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v6, 0x3e8

    div-long/2addr v2, v6

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/compress/archivers/c/h;->a(Ljava/lang/String;JJ)V

    const-string v7, "user id"

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/c/f;->getUserId()I

    move-result v0

    int-to-long v8, v0

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Lorg/apache/commons/compress/archivers/c/h;->a(Ljava/lang/String;JJ)V

    const-string v7, "mode"

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/c/f;->getMode()I

    move-result v0

    int-to-long v8, v0

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Lorg/apache/commons/compress/archivers/c/h;->a(Ljava/lang/String;JJ)V

    const-string v7, "major device number"

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/c/f;->bv()I

    move-result v0

    int-to-long v8, v0

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Lorg/apache/commons/compress/archivers/c/h;->a(Ljava/lang/String;JJ)V

    const-string v7, "minor device number"

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/c/f;->bw()I

    move-result v0

    int-to-long v8, v0

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Lorg/apache/commons/compress/archivers/c/h;->a(Ljava/lang/String;JJ)V

    return-void
.end method


# virtual methods
.method public Q(I)V
    .locals 0

    iput p1, p0, Lorg/apache/commons/compress/archivers/c/h;->lD:I

    return-void
.end method

.method public R(I)V
    .locals 0

    iput p1, p0, Lorg/apache/commons/compress/archivers/c/h;->lE:I

    return-void
.end method

.method public a(Ljava/io/File;Ljava/lang/String;)Lorg/apache/commons/compress/archivers/c;
    .locals 2

    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/c/h;->b:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream has already been finished"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lorg/apache/commons/compress/archivers/c/f;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/compress/archivers/c/f;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "./PaxHeaders.X/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/c/h;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x64

    if-lt v1, v2, :cond_0

    const/4 v1, 0x0

    const/16 v2, 0x63

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v5, Lorg/apache/commons/compress/archivers/c/f;

    const/16 v1, 0x78

    invoke-direct {v5, v0, v1}, Lorg/apache/commons/compress/archivers/c/f;-><init>(Ljava/lang/String;B)V

    new-instance v6, Ljava/io/StringWriter;

    invoke-direct {v6}, Ljava/io/StringWriter;-><init>()V

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x3

    add-int/lit8 v4, v2, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v2, "UTF-8"

    invoke-virtual {v3, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    array-length v2, v2

    :goto_1
    if-eq v4, v2, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v3, "UTF-8"

    invoke-virtual {v4, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    array-length v3, v3

    move v8, v3

    move-object v3, v4

    move v4, v2

    move v2, v8

    goto :goto_1

    :cond_1
    invoke-virtual {v6, v3}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    invoke-virtual {v6}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v1, v0

    int-to-long v1, v1

    invoke-virtual {v5, v1, v2}, Lorg/apache/commons/compress/archivers/c/f;->setSize(J)V

    invoke-virtual {p0, v5}, Lorg/apache/commons/compress/archivers/c/h;->a(Lorg/apache/commons/compress/archivers/c;)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/c/h;->write([B)V

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/c/h;->c()V

    return-void
.end method

.method public a(Lorg/apache/commons/compress/archivers/c;)V
    .locals 11

    const-wide/16 v9, 0x0

    const/16 v7, 0x64

    const/4 v8, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/c/h;->b:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream has already been finished"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast p1, Lorg/apache/commons/compress/archivers/c/f;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/c/f;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/c/h;->x:Lorg/apache/commons/compress/archivers/zip/e;

    invoke-interface {v0, v4}, Lorg/apache/commons/compress/archivers/zip/e;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    array-length v5, v0

    if-lt v5, v7, :cond_b

    iget v5, p0, Lorg/apache/commons/compress/archivers/c/h;->lD:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_7

    const-string v0, "path"

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v1

    :goto_0
    iget v5, p0, Lorg/apache/commons/compress/archivers/c/h;->lE:I

    if-ne v5, v8, :cond_9

    invoke-direct {p0, v3, p1}, Lorg/apache/commons/compress/archivers/c/h;->a(Ljava/util/Map;Lorg/apache/commons/compress/archivers/c/f;)V

    :cond_1
    :goto_1
    iget-boolean v5, p0, Lorg/apache/commons/compress/archivers/c/h;->lG:Z

    if-eqz v5, :cond_2

    if-nez v0, :cond_2

    sget-object v0, Lorg/apache/commons/compress/archivers/c/h;->lH:Lorg/apache/commons/compress/archivers/zip/e;

    invoke-interface {v0, v4}, Lorg/apache/commons/compress/archivers/zip/e;->f(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "path"

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/c/h;->lG:Z

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/c/f;->k()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/c/f;->bo()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    sget-object v0, Lorg/apache/commons/compress/archivers/c/h;->lH:Lorg/apache/commons/compress/archivers/zip/e;

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/c/f;->br()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Lorg/apache/commons/compress/archivers/zip/e;->f(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "linkpath"

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/c/f;->br()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_5

    invoke-virtual {p0, v4, v3}, Lorg/apache/commons/compress/archivers/c/h;->a(Ljava/lang/String;Ljava/util/Map;)V

    :cond_5
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/c/h;->lA:[B

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/c/h;->x:Lorg/apache/commons/compress/archivers/zip/e;

    iget v5, p0, Lorg/apache/commons/compress/archivers/c/h;->lE:I

    if-ne v5, v1, :cond_6

    move v2, v1

    :cond_6
    invoke-virtual {p1, v0, v3, v2}, Lorg/apache/commons/compress/archivers/c/f;->a([BLorg/apache/commons/compress/archivers/zip/e;Z)V

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/c/h;->v:Lorg/apache/commons/compress/archivers/c/c;

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/c/h;->lA:[B

    invoke-virtual {v0, v2}, Lorg/apache/commons/compress/archivers/c/c;->d([B)V

    iput-wide v9, p0, Lorg/apache/commons/compress/archivers/c/h;->lz:J

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/c/f;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_a

    iput-wide v9, p0, Lorg/apache/commons/compress/archivers/c/h;->lx:J

    :goto_2
    iput-object v4, p0, Lorg/apache/commons/compress/archivers/c/h;->ly:Ljava/lang/String;

    iput-boolean v1, p0, Lorg/apache/commons/compress/archivers/c/h;->lF:Z

    return-void

    :cond_7
    iget v5, p0, Lorg/apache/commons/compress/archivers/c/h;->lD:I

    if-ne v5, v8, :cond_8

    new-instance v5, Lorg/apache/commons/compress/archivers/c/f;

    const-string v6, "././@LongLink"

    const/16 v7, 0x4c

    invoke-direct {v5, v6, v7}, Lorg/apache/commons/compress/archivers/c/f;-><init>(Ljava/lang/String;B)V

    array-length v6, v0

    add-int/lit8 v6, v6, 0x1

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Lorg/apache/commons/compress/archivers/c/f;->setSize(J)V

    invoke-virtual {p0, v5}, Lorg/apache/commons/compress/archivers/c/h;->a(Lorg/apache/commons/compress/archivers/c;)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/c/h;->write([B)V

    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/archivers/c/h;->write(I)V

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/c/h;->c()V

    move v0, v2

    goto/16 :goto_0

    :cond_8
    iget v0, p0, Lorg/apache/commons/compress/archivers/c/h;->lD:I

    if-eq v0, v1, :cond_b

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file name \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is too long ( > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    iget v5, p0, Lorg/apache/commons/compress/archivers/c/h;->lE:I

    if-eq v5, v1, :cond_1

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/c/h;->d(Lorg/apache/commons/compress/archivers/c/f;)V

    goto/16 :goto_1

    :cond_a
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/c/f;->getSize()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/commons/compress/archivers/c/h;->lx:J

    goto :goto_2

    :cond_b
    move v0, v2

    goto/16 :goto_0
.end method

.method public c()V
    .locals 5

    const/4 v4, 0x0

    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/c/h;->b:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream has already been finished"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/c/h;->lF:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "No current entry to close"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p0, Lorg/apache/commons/compress/archivers/c/h;->lB:I

    if-lez v0, :cond_3

    iget v0, p0, Lorg/apache/commons/compress/archivers/c/h;->lB:I

    :goto_0
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/c/h;->lC:[B

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/c/h;->lC:[B

    aput-byte v4, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/c/h;->v:Lorg/apache/commons/compress/archivers/c/c;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/c/h;->lC:[B

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/c/c;->d([B)V

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/c/h;->lz:J

    iget v2, p0, Lorg/apache/commons/compress/archivers/c/h;->lB:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/c/h;->lz:J

    iput v4, p0, Lorg/apache/commons/compress/archivers/c/h;->lB:I

    :cond_3
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/c/h;->lz:J

    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/c/h;->lx:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_4

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "entry \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/c/h;->ly:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' closed at \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/c/h;->lz:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' before the \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/c/h;->lx:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' bytes specified in the header were written"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iput-boolean v4, p0, Lorg/apache/commons/compress/archivers/c/h;->lF:Z

    return-void
.end method

.method public close()V
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/c/h;->b:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/c/h;->finish()V

    :cond_0
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/c/h;->closed:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/c/h;->v:Lorg/apache/commons/compress/archivers/c/c;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/c/c;->close()V

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/c/h;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/c/h;->closed:Z

    :cond_1
    return-void
.end method

.method public finish()V
    .locals 2

    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/c/h;->b:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "This archive has already been finished"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/c/h;->lF:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "This archives contains unclosed entries."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/c/h;->cw()V

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/c/h;->cw()V

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/c/h;->v:Lorg/apache/commons/compress/archivers/c/c;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/c/c;->ao()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/c/h;->b:Z

    return-void
.end method

.method public flush()V
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/c/h;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public getBytesWritten()J
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/c/h;->out:Ljava/io/OutputStream;

    check-cast v0, Lorg/apache/commons/compress/a/e;

    invoke-virtual {v0}, Lorg/apache/commons/compress/a/e;->getBytesWritten()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCount()I
    .locals 2

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/c/h;->getBytesWritten()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public l()I
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/c/h;->v:Lorg/apache/commons/compress/archivers/c/c;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/c/c;->l()I

    move-result v0

    return v0
.end method

.method public n(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/c/h;->lG:Z

    return-void
.end method

.method public write([BII)V
    .locals 6

    const/4 v0, 0x0

    iget-wide v1, p0, Lorg/apache/commons/compress/archivers/c/h;->lz:J

    int-to-long v3, p3

    add-long/2addr v1, v3

    iget-wide v3, p0, Lorg/apache/commons/compress/archivers/c/h;->lx:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "request to write \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' bytes exceeds size in header of \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/c/h;->lx:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' bytes for entry \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/c/h;->ly:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v1, p0, Lorg/apache/commons/compress/archivers/c/h;->lB:I

    if-lez v1, :cond_1

    iget v1, p0, Lorg/apache/commons/compress/archivers/c/h;->lB:I

    add-int/2addr v1, p3

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/c/h;->lA:[B

    array-length v2, v2

    if-lt v1, v2, :cond_3

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/c/h;->lA:[B

    array-length v1, v1

    iget v2, p0, Lorg/apache/commons/compress/archivers/c/h;->lB:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/c/h;->lC:[B

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/c/h;->lA:[B

    iget v4, p0, Lorg/apache/commons/compress/archivers/c/h;->lB:I

    invoke-static {v2, v0, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/c/h;->lA:[B

    iget v3, p0, Lorg/apache/commons/compress/archivers/c/h;->lB:I

    invoke-static {p1, p2, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/c/h;->v:Lorg/apache/commons/compress/archivers/c/c;

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/c/h;->lA:[B

    invoke-virtual {v2, v3}, Lorg/apache/commons/compress/archivers/c/c;->d([B)V

    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/c/h;->lz:J

    iget-object v4, p0, Lorg/apache/commons/compress/archivers/c/h;->lA:[B

    array-length v4, v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/apache/commons/compress/archivers/c/h;->lz:J

    add-int/2addr p2, v1

    sub-int/2addr p3, v1

    iput v0, p0, Lorg/apache/commons/compress/archivers/c/h;->lB:I

    :cond_1
    :goto_0
    if-lez p3, :cond_2

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/c/h;->lA:[B

    array-length v0, v0

    if-ge p3, v0, :cond_4

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/c/h;->lC:[B

    iget v1, p0, Lorg/apache/commons/compress/archivers/c/h;->lB:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lorg/apache/commons/compress/archivers/c/h;->lB:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/apache/commons/compress/archivers/c/h;->lB:I

    :cond_2
    return-void

    :cond_3
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/c/h;->lC:[B

    iget v2, p0, Lorg/apache/commons/compress/archivers/c/h;->lB:I

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, p3

    iget v1, p0, Lorg/apache/commons/compress/archivers/c/h;->lB:I

    add-int/2addr v1, p3

    iput v1, p0, Lorg/apache/commons/compress/archivers/c/h;->lB:I

    move p3, v0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/c/h;->v:Lorg/apache/commons/compress/archivers/c/c;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/compress/archivers/c/c;->b([BI)V

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/c/h;->lA:[B

    array-length v0, v0

    iget-wide v1, p0, Lorg/apache/commons/compress/archivers/c/h;->lz:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/apache/commons/compress/archivers/c/h;->lz:J

    sub-int/2addr p3, v0

    add-int/2addr p2, v0

    goto :goto_0
.end method
