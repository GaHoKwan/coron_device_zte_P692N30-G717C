.class public Lorg/apache/commons/compress/archivers/d/b;
.super Lorg/apache/commons/compress/archivers/b;


# static fields
.field static final mm:Ljava/lang/String; = "#1/"

#the value of this static final field might be set in the static constructor
.field private static final mn:I = 0x0

.field private static final mo:Ljava/lang/String; = "^#1/\\d+"

.field private static final mp:Ljava/lang/String; = "//"

.field private static final mq:Ljava/lang/String; = "^/\\d+"


# instance fields
.field private closed:Z

.field private final input:Ljava/io/InputStream;

.field private mk:Lorg/apache/commons/compress/archivers/d/a;

.field private ml:[B

.field private offset:J

.field private t:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "#1/"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lorg/apache/commons/compress/archivers/d/b;->mn:I

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/b;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/d/b;->offset:J

    iput-object v2, p0, Lorg/apache/commons/compress/archivers/d/b;->mk:Lorg/apache/commons/compress/archivers/d/a;

    iput-object v2, p0, Lorg/apache/commons/compress/archivers/d/b;->ml:[B

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/d/b;->t:J

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/d/b;->input:Ljava/io/InputStream;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/d/b;->closed:Z

    return-void
.end method

.method private static K(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "^#1/\\d+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private L(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    sget v0, Lorg/apache/commons/compress/archivers/d/b;->mn:I

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    new-array v2, v1, [B

    const/4 v0, 0x0

    :cond_0
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/d/b;->input:Ljava/io/InputStream;

    sub-int v4, v1, v0

    invoke-virtual {v3, v2, v0, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    if-ltz v3, :cond_1

    add-int/2addr v0, v3

    invoke-virtual {p0, v3}, Lorg/apache/commons/compress/archivers/d/b;->z(I)V

    if-ne v0, v1, :cond_0

    :cond_1
    if-eq v0, v1, :cond_2

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_2
    invoke-static {v2}, Lorg/apache/commons/compress/a/d;->toAsciiString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static M(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "//"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private N(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "^/\\d+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private S(I)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/d/b;->ml:[B

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Cannot process GNU long filename as no // record was found"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v0, p1

    :goto_0
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/d/b;->ml:[B

    array-length v1, v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/d/b;->ml:[B

    aget-byte v1, v1, v0

    const/16 v2, 0xa

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/d/b;->ml:[B

    add-int/lit8 v2, v0, -0x1

    aget-byte v1, v1, v2

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_1

    add-int/lit8 v0, v0, -0x1

    :cond_1
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/d/b;->ml:[B

    sub-int/2addr v0, p1

    invoke-static {v1, p1, v0}, Lorg/apache/commons/compress/a/d;->k([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to read entry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a([BIZ)I
    .locals 2

    invoke-static {p1}, Lorg/apache/commons/compress/a/d;->toAsciiString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    if-eqz p3, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {v0, p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public static a([BI)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/16 v2, 0x8

    if-ge p1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    aget-byte v2, p0, v0

    const/16 v3, 0x21

    if-ne v2, v3, :cond_0

    aget-byte v2, p0, v1

    const/16 v3, 0x3c

    if-ne v2, v3, :cond_0

    const/4 v2, 0x2

    aget-byte v2, p0, v2

    const/16 v3, 0x61

    if-ne v2, v3, :cond_0

    const/4 v2, 0x3

    aget-byte v2, p0, v2

    const/16 v3, 0x72

    if-ne v2, v3, :cond_0

    const/4 v2, 0x4

    aget-byte v2, p0, v2

    const/16 v3, 0x63

    if-ne v2, v3, :cond_0

    const/4 v2, 0x5

    aget-byte v2, p0, v2

    const/16 v3, 0x68

    if-ne v2, v3, :cond_0

    const/4 v2, 0x6

    aget-byte v2, p0, v2

    const/16 v3, 0x3e

    if-ne v2, v3, :cond_0

    const/4 v2, 0x7

    aget-byte v2, p0, v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private b([BZ)I
    .locals 1

    const/16 v0, 0xa

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/commons/compress/archivers/d/b;->a([BIZ)I

    move-result v0

    return v0
.end method

.method private h([BI)I
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/compress/archivers/d/b;->a([BIZ)I

    move-result v0

    return v0
.end method

.method private v([B)J
    .locals 2

    invoke-static {p1}, Lorg/apache/commons/compress/a/d;->toAsciiString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private w([B)I
    .locals 2

    const/16 v0, 0xa

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/compress/archivers/d/b;->a([BIZ)I

    move-result v0

    return v0
.end method

.method private x([B)Lorg/apache/commons/compress/archivers/d/a;
    .locals 5

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/d/b;->w([B)I

    move-result v0

    new-array v1, v0, [B

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/d/b;->ml:[B

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/d/b;->ml:[B

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lorg/apache/commons/compress/archivers/d/b;->read([BII)I

    move-result v1

    if-eq v1, v0, :cond_0

    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to read complete // record: expected="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " read="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    new-instance v1, Lorg/apache/commons/compress/archivers/d/a;

    const-string v2, "//"

    int-to-long v3, v0

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/commons/compress/archivers/d/a;-><init>(Ljava/lang/String;J)V

    return-object v1
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/d/b;->closed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/d/b;->closed:Z

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/d/b;->input:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/d/b;->mk:Lorg/apache/commons/compress/archivers/d/a;

    return-void
.end method

.method public cx()Lorg/apache/commons/compress/archivers/d/a;
    .locals 14

    const/16 v13, 0x8

    const/4 v8, 0x6

    const/4 v12, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/d/b;->mk:Lorg/apache/commons/compress/archivers/d/a;

    if-eqz v0, :cond_2

    iget-wide v3, p0, Lorg/apache/commons/compress/archivers/d/b;->t:J

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/d/b;->mk:Lorg/apache/commons/compress/archivers/d/a;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/d/a;->getLength()J

    move-result-wide v5

    add-long/2addr v3, v5

    :cond_0
    iget-wide v5, p0, Lorg/apache/commons/compress/archivers/d/b;->offset:J

    cmp-long v0, v5, v3

    if-gez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/d/b;->read()I

    move-result v0

    const/4 v5, -0x1

    if-ne v0, v5, :cond_0

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_1
    iput-object v2, p0, Lorg/apache/commons/compress/archivers/d/b;->mk:Lorg/apache/commons/compress/archivers/d/a;

    :cond_2
    iget-wide v3, p0, Lorg/apache/commons/compress/archivers/d/b;->offset:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-nez v0, :cond_5

    const-string v0, "!<arch>\n"

    invoke-static {v0}, Lorg/apache/commons/compress/a/d;->y(Ljava/lang/String;)[B

    move-result-object v3

    array-length v0, v3

    new-array v4, v0, [B

    invoke-virtual {p0, v4}, Lorg/apache/commons/compress/archivers/d/b;->read([B)I

    move-result v0

    array-length v5, v3

    if-eq v0, v5, :cond_3

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to read header. Occured at byte: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/d/b;->getBytesRead()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move v0, v1

    :goto_1
    array-length v5, v3

    if-ge v0, v5, :cond_5

    aget-byte v5, v3, v0

    aget-byte v6, v4, v0

    if-eq v5, v6, :cond_4

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid header "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v4}, Lorg/apache/commons/compress/a/d;->toAsciiString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    iget-wide v3, p0, Lorg/apache/commons/compress/archivers/d/b;->offset:J

    const-wide/16 v5, 0x2

    rem-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/d/b;->read()I

    move-result v0

    if-gez v0, :cond_6

    move-object v0, v2

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/d/b;->input:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    if-nez v0, :cond_7

    move-object v0, v2

    goto :goto_0

    :cond_7
    const/16 v0, 0x10

    new-array v2, v0, [B

    const/16 v0, 0xc

    new-array v7, v0, [B

    new-array v4, v8, [B

    new-array v5, v8, [B

    new-array v6, v13, [B

    const/16 v0, 0xa

    new-array v8, v0, [B

    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/archivers/d/b;->read([B)I

    invoke-virtual {p0, v7}, Lorg/apache/commons/compress/archivers/d/b;->read([B)I

    invoke-virtual {p0, v4}, Lorg/apache/commons/compress/archivers/d/b;->read([B)I

    invoke-virtual {p0, v5}, Lorg/apache/commons/compress/archivers/d/b;->read([B)I

    invoke-virtual {p0, v6}, Lorg/apache/commons/compress/archivers/d/b;->read([B)I

    invoke-virtual {p0, v8}, Lorg/apache/commons/compress/archivers/d/b;->read([B)I

    const-string v0, "`\n"

    invoke-static {v0}, Lorg/apache/commons/compress/a/d;->y(Ljava/lang/String;)[B

    move-result-object v3

    array-length v0, v3

    new-array v9, v0, [B

    invoke-virtual {p0, v9}, Lorg/apache/commons/compress/archivers/d/b;->read([B)I

    move-result v0

    array-length v10, v3

    if-eq v0, v10, :cond_8

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to read entry trailer. Occured at byte: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/d/b;->getBytesRead()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    move v0, v1

    :goto_2
    array-length v10, v3

    if-ge v0, v10, :cond_a

    aget-byte v10, v3, v0

    aget-byte v11, v9, v0

    if-eq v10, v11, :cond_9

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid entry trailer. not read the content? Occured at byte: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/d/b;->getBytesRead()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_a
    iget-wide v9, p0, Lorg/apache/commons/compress/archivers/d/b;->offset:J

    iput-wide v9, p0, Lorg/apache/commons/compress/archivers/d/b;->t:J

    invoke-static {v2}, Lorg/apache/commons/compress/a/d;->toAsciiString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v8}, Lorg/apache/commons/compress/archivers/d/b;->v([B)J

    move-result-wide v2

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/d/b;->M(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-direct {p0, v8}, Lorg/apache/commons/compress/archivers/d/b;->x([B)Lorg/apache/commons/compress/archivers/d/a;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/d/b;->mk:Lorg/apache/commons/compress/archivers/d/a;

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/d/b;->cx()Lorg/apache/commons/compress/archivers/d/a;

    move-result-object v0

    goto/16 :goto_0

    :cond_b
    const-string v8, "/"

    invoke-virtual {v0, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v0, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :goto_3
    new-instance v0, Lorg/apache/commons/compress/archivers/d/a;

    invoke-direct {p0, v4, v12}, Lorg/apache/commons/compress/archivers/d/b;->b([BZ)I

    move-result v4

    invoke-direct {p0, v5, v12}, Lorg/apache/commons/compress/archivers/d/b;->b([BZ)I

    move-result v5

    invoke-direct {p0, v6, v13}, Lorg/apache/commons/compress/archivers/d/b;->h([BI)I

    move-result v6

    invoke-direct {p0, v7}, Lorg/apache/commons/compress/archivers/d/b;->v([B)J

    move-result-wide v7

    invoke-direct/range {v0 .. v8}, Lorg/apache/commons/compress/archivers/d/a;-><init>(Ljava/lang/String;JIIIJ)V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/d/b;->mk:Lorg/apache/commons/compress/archivers/d/a;

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/d/b;->mk:Lorg/apache/commons/compress/archivers/d/a;

    goto/16 :goto_0

    :cond_c
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/d/b;->N(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {v0, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/d/b;->S(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_d
    invoke-static {v0}, Lorg/apache/commons/compress/archivers/d/b;->K(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/d/b;->L(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    int-to-long v8, v0

    sub-long/2addr v2, v8

    iget-wide v8, p0, Lorg/apache/commons/compress/archivers/d/b;->t:J

    int-to-long v10, v0

    add-long/2addr v8, v10

    iput-wide v8, p0, Lorg/apache/commons/compress/archivers/d/b;->t:J

    goto :goto_3

    :cond_e
    move-object v1, v0

    goto :goto_3
.end method

.method public q()Lorg/apache/commons/compress/archivers/c;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/d/b;->cx()Lorg/apache/commons/compress/archivers/d/a;

    move-result-object v0

    return-object v0
.end method

.method public read([BII)I
    .locals 6

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/d/b;->mk:Lorg/apache/commons/compress/archivers/d/a;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/d/b;->t:J

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/d/b;->mk:Lorg/apache/commons/compress/archivers/d/a;

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/d/a;->getLength()J

    move-result-wide v2

    add-long/2addr v0, v2

    if-lez p3, :cond_1

    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/d/b;->offset:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    int-to-long v2, p3

    iget-wide v4, p0, Lorg/apache/commons/compress/archivers/d/b;->offset:J

    sub-long/2addr v0, v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/d/b;->input:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/archivers/d/b;->z(I)V

    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/d/b;->offset:J

    if-lez v1, :cond_2

    move v0, v1

    :goto_0
    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/apache/commons/compress/archivers/d/b;->offset:J

    :goto_1
    return v1

    :cond_1
    const/4 v1, -0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
