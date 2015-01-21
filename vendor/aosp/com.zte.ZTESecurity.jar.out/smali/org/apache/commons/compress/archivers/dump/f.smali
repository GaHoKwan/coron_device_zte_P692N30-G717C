.class public Lorg/apache/commons/compress/archivers/dump/f;
.super Lorg/apache/commons/compress/archivers/b;


# instance fields
.field private dj:[B

.field private nF:Lorg/apache/commons/compress/archivers/dump/e;

.field private nG:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;

.field private nH:Z

.field private nI:I

.field private nJ:I

.field private nK:J

.field protected nL:Lorg/apache/commons/compress/archivers/dump/c;

.field private nM:Ljava/util/Map;

.field private nN:Ljava/util/Map;

.field private nO:Ljava/util/Queue;

.field private r:Z

.field private s:J

.field private t:J

.field private u:[B


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 4

    const/4 v3, 0x2

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/b;-><init>()V

    const/16 v0, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/dump/f;->u:[B

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/dump/f;->nM:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/dump/f;->nN:Ljava/util/Map;

    new-instance v0, Lorg/apache/commons/compress/archivers/dump/c;

    invoke-direct {v0, p1}, Lorg/apache/commons/compress/archivers/dump/c;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/dump/f;->nL:Lorg/apache/commons/compress/archivers/dump/c;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/dump/f;->r:Z

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/f;->nL:Lorg/apache/commons/compress/archivers/dump/c;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/dump/c;->aj()[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/dump/h;->verify([B)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Lorg/apache/commons/compress/archivers/dump/UnrecognizedFormatException;

    invoke-direct {v0}, Lorg/apache/commons/compress/archivers/dump/UnrecognizedFormatException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/apache/commons/compress/archivers/ArchiveException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/compress/archivers/ArchiveException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :cond_0
    :try_start_1
    new-instance v1, Lorg/apache/commons/compress/archivers/dump/e;

    invoke-direct {v1, v0}, Lorg/apache/commons/compress/archivers/dump/e;-><init>([B)V

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/dump/f;->nF:Lorg/apache/commons/compress/archivers/dump/e;

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/f;->nL:Lorg/apache/commons/compress/archivers/dump/c;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/dump/f;->nF:Lorg/apache/commons/compress/archivers/dump/e;

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/dump/e;->cm()I

    move-result v1

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/dump/f;->nF:Lorg/apache/commons/compress/archivers/dump/e;

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/dump/e;->cp()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/compress/archivers/dump/c;->a(IZ)V

    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/dump/f;->dj:[B

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/dump/f;->cP()V

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/dump/f;->cQ()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    new-instance v0, Lorg/apache/commons/compress/archivers/dump/g;

    const/4 v1, 0x4

    const-string v2, "."

    invoke-direct {v0, v3, v3, v1, v2}, Lorg/apache/commons/compress/archivers/dump/g;-><init>(IIILjava/lang/String;)V

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/dump/f;->nM:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/PriorityQueue;

    const/16 v1, 0xa

    new-instance v2, Lorg/apache/commons/compress/archivers/dump/b;

    invoke-direct {v2, p0}, Lorg/apache/commons/compress/archivers/dump/b;-><init>(Lorg/apache/commons/compress/archivers/dump/f;)V

    invoke-direct {v0, v1, v2}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/dump/f;->nO:Ljava/util/Queue;

    return-void
.end method

.method private a(Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;)V
    .locals 13

    const/4 v4, 0x0

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->dG()J

    move-result-wide v1

    const/4 v0, 0x1

    move-wide v5, v1

    :goto_0
    if-nez v0, :cond_0

    sget-object v1, Lorg/apache/commons/compress/archivers/dump/DumpArchiveConstants$SEGMENT_TYPE;->dt:Lorg/apache/commons/compress/archivers/dump/DumpArchiveConstants$SEGMENT_TYPE;

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->dx()Lorg/apache/commons/compress/archivers/dump/DumpArchiveConstants$SEGMENT_TYPE;

    move-result-object v2

    if-ne v1, v2, :cond_b

    :cond_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/f;->nL:Lorg/apache/commons/compress/archivers/dump/c;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/dump/c;->aj()[B

    :cond_1
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/f;->nM:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->u()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveConstants$SEGMENT_TYPE;->dr:Lorg/apache/commons/compress/archivers/dump/DumpArchiveConstants$SEGMENT_TYPE;

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->dx()Lorg/apache/commons/compress/archivers/dump/DumpArchiveConstants$SEGMENT_TYPE;

    move-result-object v1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/f;->nN:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->u()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->dy()I

    move-result v0

    mul-int/lit16 v7, v0, 0x400

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/f;->dj:[B

    array-length v0, v0

    if-ge v0, v7, :cond_3

    new-array v0, v7, [B

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/dump/f;->dj:[B

    :cond_3
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/f;->nL:Lorg/apache/commons/compress/archivers/dump/c;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/dump/f;->dj:[B

    invoke-virtual {v0, v1, v4, v7}, Lorg/apache/commons/compress/archivers/dump/c;->read([BII)I

    move-result v0

    if-eq v0, v7, :cond_4

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_4
    move v3, v4

    :goto_1
    add-int/lit8 v0, v7, -0x8

    if-ge v3, v0, :cond_9

    int-to-long v0, v3

    const-wide/16 v8, 0x8

    sub-long v8, v5, v8

    cmp-long v0, v0, v8

    if-gez v0, :cond_9

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/f;->dj:[B

    invoke-static {v0, v3}, Lorg/apache/commons/compress/archivers/dump/h;->j([BI)I

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/dump/f;->dj:[B

    add-int/lit8 v2, v3, 0x4

    invoke-static {v1, v2}, Lorg/apache/commons/compress/archivers/dump/h;->k([BI)I

    move-result v8

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/dump/f;->dj:[B

    add-int/lit8 v2, v3, 0x6

    aget-byte v1, v1, v2

    new-instance v2, Ljava/lang/String;

    iget-object v9, p0, Lorg/apache/commons/compress/archivers/dump/f;->dj:[B

    add-int/lit8 v10, v3, 0x8

    iget-object v11, p0, Lorg/apache/commons/compress/archivers/dump/f;->dj:[B

    add-int/lit8 v12, v3, 0x7

    aget-byte v11, v11, v12

    invoke-direct {v2, v9, v10, v11}, Ljava/lang/String;-><init>([BII)V

    const-string v9, "."

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    const-string v9, ".."

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    :cond_5
    add-int v0, v3, v8

    move v3, v0

    goto :goto_1

    :cond_6
    new-instance v9, Lorg/apache/commons/compress/archivers/dump/g;

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->u()I

    move-result v10

    invoke-direct {v9, v0, v10, v1, v2}, Lorg/apache/commons/compress/archivers/dump/g;-><init>(IIILjava/lang/String;)V

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/dump/f;->nM:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/f;->nN:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_7
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;

    invoke-direct {p0, v1}, Lorg/apache/commons/compress/archivers/dump/f;->b(Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;

    invoke-virtual {v1, v2}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->setName(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/dump/f;->nM:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v2, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/compress/archivers/dump/g;

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/dump/g;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->U(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/dump/f;->nO:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/f;->nO:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/dump/f;->nN:Ljava/util/Map;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->u()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_9
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/f;->nL:Lorg/apache/commons/compress/archivers/dump/c;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/dump/c;->ar()[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/dump/h;->verify([B)Z

    move-result v1

    if-nez v1, :cond_a

    new-instance v0, Lorg/apache/commons/compress/archivers/dump/InvalidFormatException;

    invoke-direct {v0}, Lorg/apache/commons/compress/archivers/dump/InvalidFormatException;-><init>()V

    throw v0

    :cond_a
    invoke-static {v0}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->C([B)Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;

    move-result-object p1

    const-wide/16 v0, 0x400

    sub-long v0, v5, v0

    move-wide v5, v0

    move v0, v4

    goto/16 :goto_0

    :cond_b
    return-void
.end method

.method public static a([BI)Z
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x20

    if-ge p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x400

    if-lt p1, v1, :cond_2

    invoke-static {p0}, Lorg/apache/commons/compress/archivers/dump/h;->verify([B)Z

    move-result v0

    goto :goto_0

    :cond_2
    const v1, 0xea6c

    const/16 v2, 0x18

    invoke-static {p0, v2}, Lorg/apache/commons/compress/archivers/dump/h;->j([BI)I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private b(Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;)Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->u()I

    move-result v0

    :goto_0
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/dump/f;->nM:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/util/Stack;->clear()V

    :cond_0
    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/f;->nN:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->u()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_1
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/dump/f;->nM:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/compress/archivers/dump/g;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/dump/g;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/dump/g;->u()I

    move-result v2

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/dump/g;->dt()I

    move-result v3

    if-eq v2, v3, :cond_0

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/dump/g;->dt()I

    move-result v0

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_2
    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const/16 v0, 0x2f

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private cP()V
    .locals 4

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/f;->nL:Lorg/apache/commons/compress/archivers/dump/c;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/dump/c;->aj()[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/dump/h;->verify([B)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Lorg/apache/commons/compress/archivers/dump/InvalidFormatException;

    invoke-direct {v0}, Lorg/apache/commons/compress/archivers/dump/InvalidFormatException;-><init>()V

    throw v0

    :cond_0
    invoke-static {v0}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->C([B)Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/dump/f;->nG:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;

    sget-object v0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveConstants$SEGMENT_TYPE;->dv:Lorg/apache/commons/compress/archivers/dump/DumpArchiveConstants$SEGMENT_TYPE;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/dump/f;->nG:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->dx()Lorg/apache/commons/compress/archivers/dump/DumpArchiveConstants$SEGMENT_TYPE;

    move-result-object v1

    if-eq v0, v1, :cond_1

    new-instance v0, Lorg/apache/commons/compress/archivers/dump/InvalidFormatException;

    invoke-direct {v0}, Lorg/apache/commons/compress/archivers/dump/InvalidFormatException;-><init>()V

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/f;->nL:Lorg/apache/commons/compress/archivers/dump/c;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/dump/f;->nG:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->dy()I

    move-result v1

    mul-int/lit16 v1, v1, 0x400

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/compress/archivers/dump/c;->skip(J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_2
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/f;->nG:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->dy()I

    move-result v0

    iput v0, p0, Lorg/apache/commons/compress/archivers/dump/f;->nI:I

    return-void
.end method

.method private cQ()V
    .locals 4

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/f;->nL:Lorg/apache/commons/compress/archivers/dump/c;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/dump/c;->aj()[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/dump/h;->verify([B)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Lorg/apache/commons/compress/archivers/dump/InvalidFormatException;

    invoke-direct {v0}, Lorg/apache/commons/compress/archivers/dump/InvalidFormatException;-><init>()V

    throw v0

    :cond_0
    invoke-static {v0}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->C([B)Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/dump/f;->nG:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;

    sget-object v0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveConstants$SEGMENT_TYPE;->ds:Lorg/apache/commons/compress/archivers/dump/DumpArchiveConstants$SEGMENT_TYPE;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/dump/f;->nG:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->dx()Lorg/apache/commons/compress/archivers/dump/DumpArchiveConstants$SEGMENT_TYPE;

    move-result-object v1

    if-eq v0, v1, :cond_1

    new-instance v0, Lorg/apache/commons/compress/archivers/dump/InvalidFormatException;

    invoke-direct {v0}, Lorg/apache/commons/compress/archivers/dump/InvalidFormatException;-><init>()V

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/f;->nL:Lorg/apache/commons/compress/archivers/dump/c;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/dump/f;->nG:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->dy()I

    move-result v1

    mul-int/lit16 v1, v1, 0x400

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/compress/archivers/dump/c;->skip(J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_2
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/f;->nG:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->dy()I

    move-result v0

    iput v0, p0, Lorg/apache/commons/compress/archivers/dump/f;->nI:I

    return-void
.end method


# virtual methods
.method public cO()Lorg/apache/commons/compress/archivers/dump/e;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/f;->nF:Lorg/apache/commons/compress/archivers/dump/e;

    return-object v0
.end method

.method public cR()Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/dump/f;->cS()Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;

    move-result-object v0

    return-object v0
.end method

.method public cS()Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;
    .locals 11

    const-wide/16 v8, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/f;->nO:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/f;->nO:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;

    move-object v1, v0

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/f;->nG:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/dump/f;->nG:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;

    invoke-direct {p0, v2}, Lorg/apache/commons/compress/archivers/dump/f;->a(Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;)V

    iput-wide v4, p0, Lorg/apache/commons/compress/archivers/dump/f;->t:J

    iput-wide v4, p0, Lorg/apache/commons/compress/archivers/dump/f;->s:J

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/dump/f;->nG:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->dy()I

    move-result v2

    iput v2, p0, Lorg/apache/commons/compress/archivers/dump/f;->nI:I

    :goto_1
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/dump/f;->u:[B

    array-length v2, v2

    iput v2, p0, Lorg/apache/commons/compress/archivers/dump/f;->nJ:I

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/dump/f;->b(Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    move-object v0, v1

    :cond_2
    move-object v10, v2

    move-object v2, v0

    move-object v0, v10

    :goto_2
    if-nez v2, :cond_a

    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/dump/f;->r:Z

    if-nez v0, :cond_0

    :cond_3
    iget v0, p0, Lorg/apache/commons/compress/archivers/dump/f;->nI:I

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/dump/f;->nG:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->dy()I

    move-result v2

    if-ge v0, v2, :cond_4

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/f;->nG:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;

    iget v2, p0, Lorg/apache/commons/compress/archivers/dump/f;->nI:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/apache/commons/compress/archivers/dump/f;->nI:I

    invoke-virtual {v0, v2}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->ag(I)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/f;->nL:Lorg/apache/commons/compress/archivers/dump/c;

    const-wide/16 v2, 0x400

    invoke-virtual {v0, v2, v3}, Lorg/apache/commons/compress/archivers/dump/c;->skip(J)J

    move-result-wide v2

    cmp-long v0, v2, v8

    if-nez v0, :cond_3

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_4
    iput v6, p0, Lorg/apache/commons/compress/archivers/dump/f;->nI:I

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/f;->nL:Lorg/apache/commons/compress/archivers/dump/c;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/dump/c;->getBytesRead()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/commons/compress/archivers/dump/f;->nK:J

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/f;->nL:Lorg/apache/commons/compress/archivers/dump/c;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/dump/c;->aj()[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/dump/h;->verify([B)Z

    move-result v2

    if-nez v2, :cond_5

    new-instance v0, Lorg/apache/commons/compress/archivers/dump/InvalidFormatException;

    invoke-direct {v0}, Lorg/apache/commons/compress/archivers/dump/InvalidFormatException;-><init>()V

    throw v0

    :cond_5
    invoke-static {v0}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->C([B)Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/dump/f;->nG:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;

    :goto_3
    sget-object v0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveConstants$SEGMENT_TYPE;->dt:Lorg/apache/commons/compress/archivers/dump/DumpArchiveConstants$SEGMENT_TYPE;

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/dump/f;->nG:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->dx()Lorg/apache/commons/compress/archivers/dump/DumpArchiveConstants$SEGMENT_TYPE;

    move-result-object v2

    if-ne v0, v2, :cond_8

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/f;->nL:Lorg/apache/commons/compress/archivers/dump/c;

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/dump/f;->nG:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->dy()I

    move-result v2

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/dump/f;->nG:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;

    invoke-virtual {v3}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->dz()I

    move-result v3

    sub-int/2addr v2, v3

    mul-int/lit16 v2, v2, 0x400

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lorg/apache/commons/compress/archivers/dump/c;->skip(J)J

    move-result-wide v2

    cmp-long v0, v2, v8

    if-nez v0, :cond_6

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_6
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/f;->nL:Lorg/apache/commons/compress/archivers/dump/c;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/dump/c;->getBytesRead()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/commons/compress/archivers/dump/f;->nK:J

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/f;->nL:Lorg/apache/commons/compress/archivers/dump/c;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/dump/c;->aj()[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/dump/h;->verify([B)Z

    move-result v2

    if-nez v2, :cond_7

    new-instance v0, Lorg/apache/commons/compress/archivers/dump/InvalidFormatException;

    invoke-direct {v0}, Lorg/apache/commons/compress/archivers/dump/InvalidFormatException;-><init>()V

    throw v0

    :cond_7
    invoke-static {v0}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->C([B)Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/dump/f;->nG:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;

    goto :goto_3

    :cond_8
    sget-object v0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveConstants$SEGMENT_TYPE;->du:Lorg/apache/commons/compress/archivers/dump/DumpArchiveConstants$SEGMENT_TYPE;

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/dump/f;->nG:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->dx()Lorg/apache/commons/compress/archivers/dump/DumpArchiveConstants$SEGMENT_TYPE;

    move-result-object v2

    if-ne v0, v2, :cond_1

    iput-boolean v7, p0, Lorg/apache/commons/compress/archivers/dump/f;->r:Z

    iput-boolean v7, p0, Lorg/apache/commons/compress/archivers/dump/f;->nH:Z

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/f;->nL:Lorg/apache/commons/compress/archivers/dump/c;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/dump/c;->close()V

    goto/16 :goto_0

    :cond_9
    iput-wide v4, p0, Lorg/apache/commons/compress/archivers/dump/f;->t:J

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/dump/f;->nG:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->dG()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/commons/compress/archivers/dump/f;->s:J

    iput v6, p0, Lorg/apache/commons/compress/archivers/dump/f;->nI:I

    goto/16 :goto_1

    :cond_a
    invoke-virtual {v2, v0}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->setName(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/f;->nM:Ljava/util/Map;

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->u()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/compress/archivers/dump/g;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/dump/g;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->U(Ljava/lang/String;)V

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/dump/f;->nK:J

    invoke-virtual {v2, v0, v1}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->w(J)V

    move-object v1, v2

    goto/16 :goto_0

    :cond_b
    move-object v0, v1

    move-object v2, v1

    goto/16 :goto_2
.end method

.method public close()V
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/dump/f;->nH:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/dump/f;->nH:Z

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/f;->nL:Lorg/apache/commons/compress/archivers/dump/c;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/dump/c;->close()V

    :cond_0
    return-void
.end method

.method public getBytesRead()J
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/f;->nL:Lorg/apache/commons/compress/archivers/dump/c;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/dump/c;->getBytesRead()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCount()I
    .locals 2

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/dump/f;->getBytesRead()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public bridge synthetic q()Lorg/apache/commons/compress/archivers/c;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/dump/f;->cS()Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;

    move-result-object v0

    return-object v0
.end method

.method public read([BII)I
    .locals 7

    const/4 v4, 0x0

    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/dump/f;->nH:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/dump/f;->t:J

    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/dump/f;->s:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    int-to-long v0, p3

    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/dump/f;->t:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/dump/f;->s:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_a

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/dump/f;->s:J

    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/dump/f;->t:J

    sub-long/2addr v0, v2

    long-to-int v1, v0

    move v2, v4

    move v3, p2

    :goto_1
    if-lez v1, :cond_8

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/f;->u:[B

    array-length v0, v0

    iget v5, p0, Lorg/apache/commons/compress/archivers/dump/f;->nJ:I

    sub-int/2addr v0, v5

    if-le v1, v0, :cond_2

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/f;->u:[B

    array-length v0, v0

    iget v5, p0, Lorg/apache/commons/compress/archivers/dump/f;->nJ:I

    sub-int/2addr v0, v5

    :goto_2
    iget v5, p0, Lorg/apache/commons/compress/archivers/dump/f;->nJ:I

    add-int/2addr v5, v0

    iget-object v6, p0, Lorg/apache/commons/compress/archivers/dump/f;->u:[B

    array-length v6, v6

    if-gt v5, v6, :cond_9

    iget-object v5, p0, Lorg/apache/commons/compress/archivers/dump/f;->u:[B

    iget v6, p0, Lorg/apache/commons/compress/archivers/dump/f;->nJ:I

    invoke-static {v5, v6, p1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, v0

    iget v5, p0, Lorg/apache/commons/compress/archivers/dump/f;->nJ:I

    add-int/2addr v5, v0

    iput v5, p0, Lorg/apache/commons/compress/archivers/dump/f;->nJ:I

    sub-int/2addr v1, v0

    add-int/2addr v0, v3

    :goto_3
    if-lez v1, :cond_7

    iget v3, p0, Lorg/apache/commons/compress/archivers/dump/f;->nI:I

    const/16 v5, 0x200

    if-lt v3, v5, :cond_4

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/dump/f;->nL:Lorg/apache/commons/compress/archivers/dump/c;

    invoke-virtual {v3}, Lorg/apache/commons/compress/archivers/dump/c;->aj()[B

    move-result-object v3

    invoke-static {v3}, Lorg/apache/commons/compress/archivers/dump/h;->verify([B)Z

    move-result v5

    if-nez v5, :cond_3

    new-instance v0, Lorg/apache/commons/compress/archivers/dump/InvalidFormatException;

    invoke-direct {v0}, Lorg/apache/commons/compress/archivers/dump/InvalidFormatException;-><init>()V

    throw v0

    :cond_2
    move v0, v1

    goto :goto_2

    :cond_3
    invoke-static {v3}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->C([B)Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/commons/compress/archivers/dump/f;->nG:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;

    iput v4, p0, Lorg/apache/commons/compress/archivers/dump/f;->nI:I

    :cond_4
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/dump/f;->nG:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;

    iget v5, p0, Lorg/apache/commons/compress/archivers/dump/f;->nI:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/apache/commons/compress/archivers/dump/f;->nI:I

    invoke-virtual {v3, v5}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->ag(I)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/dump/f;->nL:Lorg/apache/commons/compress/archivers/dump/c;

    iget-object v5, p0, Lorg/apache/commons/compress/archivers/dump/f;->u:[B

    iget-object v6, p0, Lorg/apache/commons/compress/archivers/dump/f;->u:[B

    array-length v6, v6

    invoke-virtual {v3, v5, v4, v6}, Lorg/apache/commons/compress/archivers/dump/c;->read([BII)I

    move-result v3

    iget-object v5, p0, Lorg/apache/commons/compress/archivers/dump/f;->u:[B

    array-length v5, v5

    if-eq v3, v5, :cond_6

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_5
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/dump/f;->u:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([BB)V

    :cond_6
    iput v4, p0, Lorg/apache/commons/compress/archivers/dump/f;->nJ:I

    :cond_7
    move v3, v0

    goto :goto_1

    :cond_8
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/dump/f;->t:J

    int-to-long v3, v2

    add-long/2addr v0, v3

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/dump/f;->t:J

    move v0, v2

    goto/16 :goto_0

    :cond_9
    move v0, v3

    goto :goto_3

    :cond_a
    move v2, v4

    move v1, p3

    move v3, p2

    goto/16 :goto_1
.end method
