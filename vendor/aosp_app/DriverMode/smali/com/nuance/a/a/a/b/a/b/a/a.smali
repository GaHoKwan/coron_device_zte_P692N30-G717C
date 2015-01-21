.class public Lcom/nuance/a/a/a/b/a/b/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/a/a/a/a/b/a/c$b;


# static fields
.field private static final a:Lcom/nuance/a/a/a/a/b/a/b$a;


# instance fields
.field private final b:Ljava/util/List;

.field private c:J

.field private d:Lcom/nuance/a/a/a/b/a/a/b;

.field private e:Z

.field private f:Lcom/nuance/a/a/a/a/b/a/c;

.field private g:[B

.field private h:I

.field private i:Lcom/nuance/a/a/a/b/a/b/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/nuance/a/a/a/b/a/b/a/a;

    invoke-static {v0}, Lcom/nuance/a/a/a/a/b/a/b;->a(Ljava/lang/Class;)Lcom/nuance/a/a/a/a/b/a/b$a;

    move-result-object v0

    sput-object v0, Lcom/nuance/a/a/a/b/a/b/a/a;->a:Lcom/nuance/a/a/a/a/b/a/b$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;SLjava/lang/String;[BIILjava/lang/String;Ljava/util/Vector;Ljava/lang/String;Lcom/nuance/a/a/a/a/b/a/c;Lcom/nuance/a/a/a/b/a/b/a/b;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/nuance/a/a/a/b/a/b/a/a;->b:Ljava/util/List;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/nuance/a/a/a/b/a/b/a/a;->c:J

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/nuance/a/a/a/b/a/b/a/a;->e:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nuance/a/a/a/b/a/b/a/a;->g:[B

    const/4 v1, 0x0

    iput v1, p0, Lcom/nuance/a/a/a/b/a/b/a/a;->h:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nuance/a/a/a/b/a/b/a/a;->i:Lcom/nuance/a/a/a/b/a/b/a/b;

    const-string v1, "CalllogImpl(uid)"

    move-object/from16 v0, p9

    invoke-static {v1, v0}, Lcom/nuance/a/a/a/a/d/c;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p4

    move-object v5, p3

    move-object/from16 v6, p9

    move-object/from16 v7, p8

    invoke-direct/range {v1 .. v7}, Lcom/nuance/a/a/a/b/a/b/a/a;->a(Ljava/lang/String;S[BLjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    iput p5, p0, Lcom/nuance/a/a/a/b/a/b/a/a;->h:I

    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/nuance/a/a/a/b/a/b/a/a;->f:Lcom/nuance/a/a/a/a/b/a/c;

    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/nuance/a/a/a/b/a/b/a/a;->i:Lcom/nuance/a/a/a/b/a/b/a/b;

    if-nez p7, :cond_0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    :try_start_0
    const-string v2, "CLIENT"

    const-string v3, "2.0"

    const-string v6, "CLIENT"

    move v4, p6

    move-object v5, p0

    invoke-static/range {v1 .. v6}, Lcom/nuance/a/a/a/b/a/b/a/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/nuance/a/a/a/b/a/b/a/a;Ljava/lang/String;)Lcom/nuance/a/a/a/b/a/b/a/g;

    move-result-object v1

    const-string v2, "UniqueID"

    move-object/from16 v0, p9

    invoke-virtual {v1, v2, v0}, Lcom/nuance/a/a/a/b/a/b/a/g;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/nuance/a/a/a/b/a/a/d;

    move-result-object v1

    const-string v2, "ApplicationID"

    invoke-interface {v1, v2, p3}, Lcom/nuance/a/a/a/b/a/a/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/nuance/a/a/a/b/a/a/d;

    move-result-object v1

    const-string v2, "client_hardware_model"

    invoke-static {}, Lcom/nuance/a/a/a/b/b/d;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/nuance/a/a/a/b/a/a/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/nuance/a/a/a/b/a/a/d;

    move-result-object v1

    const-string v2, "client_hardware_submodel"

    invoke-static {}, Lcom/nuance/a/a/a/c/c;->e()Lcom/nuance/a/a/a/a/b/a/a;

    move-result-object v3

    invoke-interface {v3}, Lcom/nuance/a/a/a/a/b/a/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/nuance/a/a/a/b/a/a/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/nuance/a/a/a/b/a/a/d;

    move-result-object v1

    const-string v2, "client_os_type"

    invoke-static {}, Lcom/nuance/a/a/a/b/b/d;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/nuance/a/a/a/b/a/a/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/nuance/a/a/a/b/a/a/d;

    move-result-object v1

    const-string v2, "client_os_version"

    invoke-static {}, Lcom/nuance/a/a/a/b/b/d;->c()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/nuance/a/a/a/b/a/a/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/nuance/a/a/a/b/a/a/d;

    move-result-object v1

    const-string v2, "client_sdk_release"

    const-string v3, "NMSP 5.1 client SDK - build 006"

    invoke-interface {v1, v2, v3}, Lcom/nuance/a/a/a/b/a/a/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/nuance/a/a/a/b/a/a/d;

    move-result-object v1

    invoke-interface {v1}, Lcom/nuance/a/a/a/b/a/a/d;->a()Lcom/nuance/a/a/a/b/a/a/b;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/a/a/a/b/a/b/a/a;->d:Lcom/nuance/a/a/a/b/a/a/b;
    :try_end_0
    .catch Lcom/nuance/a/a/a/b/a/a/c; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_0
    move-object v1, p7

    goto :goto_0
.end method

.method private a(Ljava/lang/String;S[BLjava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 9

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v0, 0x2

    new-array v4, v0, [B

    invoke-virtual {p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {p5}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    const/4 v0, 0x1

    new-array v7, v0, [B

    const/4 v0, 0x0

    int-to-byte v1, p2

    aput-byte v1, v4, v0

    const/4 v0, 0x1

    shr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    aput-byte v1, v4, v0

    const/4 v0, 0x0

    invoke-interface {p6}, Ljava/util/List;->size()I

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, v7, v0

    array-length v0, v3

    add-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, 0x4

    array-length v1, v4

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x4

    array-length v1, v5

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x4

    array-length v1, p3

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x4

    array-length v1, v6

    add-int/2addr v0, v1

    add-int/lit8 v1, v0, 0x4

    const/4 v0, 0x0

    move v2, v1

    move v1, v0

    :goto_0
    invoke-interface {p6}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-interface {p6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/nuance/a/a/a/b/b/c;

    if-nez v0, :cond_0

    :goto_1
    return-void

    :cond_0
    invoke-interface {p6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/a/a/a/b/b/c;

    add-int/lit8 v2, v2, 0x4

    invoke-virtual {v0}, Lcom/nuance/a/a/a/b/b/c;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v2, v8

    add-int/lit8 v2, v2, 0x4

    add-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x4

    invoke-virtual {v0}, Lcom/nuance/a/a/a/b/b/c;->b()[B

    move-result-object v0

    array-length v0, v0

    add-int/2addr v2, v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    const/4 v0, 0x1

    :try_start_0
    invoke-static {v3, v2, v0}, Lcom/nuance/a/a/a/b/a/b/a/a;->a([BLjava/nio/ByteBuffer;Z)V

    const/4 v0, 0x1

    invoke-static {v4, v2, v0}, Lcom/nuance/a/a/a/b/a/b/a/a;->a([BLjava/nio/ByteBuffer;Z)V

    const/4 v0, 0x1

    invoke-static {v5, v2, v0}, Lcom/nuance/a/a/a/b/a/b/a/a;->a([BLjava/nio/ByteBuffer;Z)V

    const/4 v0, 0x1

    invoke-static {p3, v2, v0}, Lcom/nuance/a/a/a/b/a/b/a/a;->a([BLjava/nio/ByteBuffer;Z)V

    const/4 v0, 0x1

    invoke-static {v6, v2, v0}, Lcom/nuance/a/a/a/b/a/b/a/a;->a([BLjava/nio/ByteBuffer;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_2
    const/4 v0, 0x1

    invoke-static {v7, v2, v0}, Lcom/nuance/a/a/a/b/a/b/a/a;->a([BLjava/nio/ByteBuffer;Z)V

    const/4 v0, 0x0

    move v1, v0

    :goto_3
    invoke-interface {p6}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    invoke-interface {p6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/a/a/a/b/b/c;

    const/4 v3, 0x2

    :try_start_1
    new-array v3, v3, [B

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/nuance/a/a/a/b/b/c;->d()Lcom/nuance/a/a/a/b/b/c$a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/a/a/a/b/b/c$a;->a()S

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0}, Lcom/nuance/a/a/a/b/b/c;->d()Lcom/nuance/a/a/a/b/b/c$a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/a/a/a/b/b/c$a;->a()S

    move-result v5

    shr-int/lit8 v5, v5, 0x8

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    invoke-virtual {v0}, Lcom/nuance/a/a/a/b/b/c;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v4, v2, v5}, Lcom/nuance/a/a/a/b/a/b/a/a;->a([BLjava/nio/ByteBuffer;Z)V

    const/4 v4, 0x1

    invoke-static {v3, v2, v4}, Lcom/nuance/a/a/a/b/a/b/a/a;->a([BLjava/nio/ByteBuffer;Z)V

    invoke-virtual {v0}, Lcom/nuance/a/a/a/b/b/c;->b()[B

    move-result-object v0

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/nuance/a/a/a/b/a/b/a/a;->a([BLjava/nio/ByteBuffer;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_3
    :goto_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :catch_0
    move-exception v0

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    sget-object v1, Lcom/nuance/a/a/a/b/a/b/a/a;->a:Lcom/nuance/a/a/a/a/b/a/b$a;

    invoke-virtual {v1}, Lcom/nuance/a/a/a/a/b/a/b$a;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/nuance/a/a/a/b/a/b/a/a;->a:Lcom/nuance/a/a/a/a/b/a/b$a;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "serializeEvents() failed : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/nuance/a/a/a/a/b/a/b$a;->e(Ljava/lang/Object;)V

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    sget-object v3, Lcom/nuance/a/a/a/b/a/b/a/a;->a:Lcom/nuance/a/a/a/a/b/a/b$a;

    invoke-virtual {v3}, Lcom/nuance/a/a/a/a/b/a/b$a;->e()Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Lcom/nuance/a/a/a/b/a/b/a/a;->a:Lcom/nuance/a/a/a/a/b/a/b$a;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "serializeEvents() failed : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/nuance/a/a/a/a/b/a/b$a;->e(Ljava/lang/Object;)V

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/a/a/a/b/a/b/a/a;->g:[B

    goto/16 :goto_1
.end method

.method private static a([BLjava/nio/ByteBuffer;Z)V
    .locals 8

    const/4 v3, 0x4

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    if-eqz p2, :cond_0

    array-length v0, p0

    new-array v1, v7, [[B

    new-array v2, v6, [B

    aput-byte v3, v2, v5

    new-array v3, v3, [B

    int-to-byte v4, v0

    aput-byte v4, v3, v5

    shr-int/lit8 v4, v0, 0x8

    int-to-byte v4, v4

    aput-byte v4, v3, v6

    shr-int/lit8 v4, v0, 0x10

    int-to-byte v4, v4

    aput-byte v4, v3, v7

    const/4 v4, 0x3

    ushr-int/lit8 v0, v0, 0x18

    int-to-byte v0, v0

    aput-byte v0, v3, v4

    aput-object v2, v1, v5

    aput-object v3, v1, v6

    aget-object v0, v1, v6

    aget-object v1, v1, v6

    array-length v1, v1

    invoke-virtual {p1, v0, v5, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    :cond_0
    array-length v0, p0

    invoke-virtual {p1, p0, v5, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    return-void
.end method

.method private a(Ljava/util/List;)[B
    .locals 7

    const/4 v6, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x4

    new-array v4, v0, [B

    iget-object v0, p0, Lcom/nuance/a/a/a/b/a/b/a/a;->g:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x8

    move v1, v2

    move v3, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/a/a/a/b/a/b/a/a$a;

    add-int/lit8 v3, v3, 0x4

    iget-object v5, v0, Lcom/nuance/a/a/a/b/a/b/a/a$a;->c:[B

    array-length v5, v5

    add-int/2addr v3, v5

    add-int/lit8 v3, v3, 0x4

    iget-object v0, v0, Lcom/nuance/a/a/a/b/a/b/a/a$a;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    add-int/2addr v3, v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {v3, v4, v2}, Lcom/nuance/a/a/a/a/d/b;->a(I[BI)V

    invoke-static {v4, v1, v6}, Lcom/nuance/a/a/a/b/a/b/a/a;->a([BLjava/nio/ByteBuffer;Z)V

    iget-object v0, p0, Lcom/nuance/a/a/a/b/a/b/a/a;->g:[B

    invoke-static {v0, v1, v2}, Lcom/nuance/a/a/a/b/a/b/a/a;->a([BLjava/nio/ByteBuffer;Z)V

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/a/a/a/b/a/b/a/a$a;

    iget-object v3, v0, Lcom/nuance/a/a/a/b/a/b/a/a$a;->c:[B

    array-length v3, v3

    if-eqz v3, :cond_1

    :try_start_0
    iget-object v3, v0, Lcom/nuance/a/a/a/b/a/b/a/a$a;->c:[B

    const/4 v4, 0x1

    invoke-static {v3, v1, v4}, Lcom/nuance/a/a/a/b/a/b/a/a;->a([BLjava/nio/ByteBuffer;Z)V

    iget-object v0, v0, Lcom/nuance/a/a/a/b/a/b/a/a$a;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v3, 0x1

    invoke-static {v0, v1, v3}, Lcom/nuance/a/a/a/b/a/b/a/a;->a([BLjava/nio/ByteBuffer;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    sget-object v3, Lcom/nuance/a/a/a/b/a/b/a/a;->a:Lcom/nuance/a/a/a/a/b/a/b$a;

    invoke-virtual {v3}, Lcom/nuance/a/a/a/a/b/a/b$a;->e()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/nuance/a/a/a/b/a/b/a/a;->a:Lcom/nuance/a/a/a/a/b/a/b$a;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "serializeEvents() failed : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/nuance/a/a/a/a/b/a/b$a;->e(Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method private c()V
    .locals 3

    iget-object v0, p0, Lcom/nuance/a/a/a/b/a/b/a/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/nuance/a/a/a/b/a/b/a/a;->a:Lcom/nuance/a/a/a/a/b/a/b$a;

    const-string v1, "Trying to close with zero events"

    invoke-virtual {v0, v1}, Lcom/nuance/a/a/a/a/b/a/b$a;->d(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/nuance/a/a/a/b/a/b/a/a;->b:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/nuance/a/a/a/b/a/b/a/a;->a(Ljava/util/List;)[B

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v1, Lcom/nuance/a/a/a/b/a/b/a/a;->a:Lcom/nuance/a/a/a/a/b/a/b$a;

    const-string v2, "CalllogImpl.close serialized data is null"

    invoke-virtual {v1, v2}, Lcom/nuance/a/a/a/a/b/a/b$a;->e(Ljava/lang/Object;)V

    :cond_1
    iget-object v1, p0, Lcom/nuance/a/a/a/b/a/b/a/a;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/nuance/a/a/a/b/a/b/a/a;->c:J

    iget-object v1, p0, Lcom/nuance/a/a/a/b/a/b/a/a;->i:Lcom/nuance/a/a/a/b/a/b/a/b;

    invoke-interface {v1, v0}, Lcom/nuance/a/a/a/b/a/b/a/b;->a([B)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/nuance/a/a/a/b/a/a/b;
    .locals 1

    iget-object v0, p0, Lcom/nuance/a/a/a/b/a/b/a/a;->d:Lcom/nuance/a/a/a/b/a/a/b;

    return-object v0
.end method

.method public final a(Lcom/nuance/a/a/a/b/a/b/a/h;Lcom/nuance/a/a/a/b/a/b/a/g$a;)V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/nuance/a/a/a/b/a/b/a/a;->f:Lcom/nuance/a/a/a/a/b/a/c;

    new-instance v1, Lcom/nuance/a/a/a/a/b/a/c$a;

    const/16 v2, 0x14

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v5

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-direct {v1, v2, v3}, Lcom/nuance/a/a/a/a/b/a/c$a;-><init>(BLjava/lang/Object;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/a/a/a/b/a/b/a/a;->f:Lcom/nuance/a/a/a/a/b/a/c;

    invoke-interface {v3}, Lcom/nuance/a/a/a/a/b/a/c;->a()[Ljava/lang/Object;

    move-result-object v3

    aget-object v3, v3, v5

    invoke-interface {v0, v1, p0, v2, v3}, Lcom/nuance/a/a/a/a/b/a/c;->a(Ljava/lang/Object;Lcom/nuance/a/a/a/a/b/a/c$b;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method final a(Lcom/nuance/a/a/a/b/a/b/a/h;Lcom/nuance/a/a/a/b/a/b/a/g$b;)V
    .locals 6

    const/4 v5, 0x0

    iget-boolean v0, p0, Lcom/nuance/a/a/a/b/a/b/a/a;->e:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nuance/a/a/a/b/a/b/a/a;->f:Lcom/nuance/a/a/a/a/b/a/c;

    new-instance v1, Lcom/nuance/a/a/a/a/b/a/c$a;

    const/16 v2, 0x10

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v5

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-direct {v1, v2, v3}, Lcom/nuance/a/a/a/a/b/a/c$a;-><init>(BLjava/lang/Object;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/a/a/a/b/a/b/a/a;->f:Lcom/nuance/a/a/a/a/b/a/c;

    invoke-interface {v3}, Lcom/nuance/a/a/a/a/b/a/c;->a()[Ljava/lang/Object;

    move-result-object v3

    aget-object v3, v3, v5

    invoke-interface {v0, v1, p0, v2, v3}, Lcom/nuance/a/a/a/a/b/a/c;->a(Ljava/lang/Object;Lcom/nuance/a/a/a/a/b/a/c$b;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 9

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-wide/16 v7, 0x4

    check-cast p1, Lcom/nuance/a/a/a/a/b/a/c$a;

    iget-byte v0, p1, Lcom/nuance/a/a/a/a/b/a/c$a;->a:B

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p1, Lcom/nuance/a/a/a/a/b/a/c$a;->b:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    aget-object v1, v0, v1

    check-cast v1, Lcom/nuance/a/a/a/b/a/b/a/h;

    aget-object v0, v0, v2

    check-cast v0, Lcom/nuance/a/a/a/b/a/b/a/g$a;

    invoke-virtual {v1}, Lcom/nuance/a/a/a/b/a/b/a/h;->c()V

    if-eqz v0, :cond_0

    instance-of v2, v1, Lcom/nuance/a/a/a/b/a/b/a/e;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/nuance/a/a/a/b/a/b/a/e;

    invoke-virtual {v1}, Lcom/nuance/a/a/a/b/a/b/a/e;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/a/a/a/b/a/b/a/g$a;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/nuance/a/a/a/b/a/b/a/g$a;->a(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p1, Lcom/nuance/a/a/a/a/b/a/c$a;->b:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    aget-object v1, v0, v1

    check-cast v1, Lcom/nuance/a/a/a/b/a/b/a/h;

    aget-object v0, v0, v2

    check-cast v0, Lcom/nuance/a/a/a/b/a/b/a/g$b;

    new-instance v2, Lcom/nuance/a/a/a/b/a/b/a/a$a;

    invoke-direct {v2}, Lcom/nuance/a/a/a/b/a/b/a/a$a;-><init>()V

    invoke-virtual {v1}, Lcom/nuance/a/a/a/b/a/b/a/h;->g()[B

    move-result-object v3

    iput-object v3, v2, Lcom/nuance/a/a/a/b/a/b/a/a$a;->c:[B

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/nuance/a/a/a/b/a/b/a/h;->b:Lcom/nuance/a/a/a/b/a/b/a/f;

    invoke-virtual {v4}, Lcom/nuance/a/a/a/b/a/b/a/f;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/nuance/a/a/a/b/a/b/a/h;->d:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/nuance/a/a/a/b/a/b/a/a$a;->b:Ljava/lang/String;

    iget-wide v3, p0, Lcom/nuance/a/a/a/b/a/b/a/a;->c:J

    add-long/2addr v3, v7

    add-long/2addr v3, v7

    iget-object v5, p0, Lcom/nuance/a/a/a/b/a/b/a/a;->g:[B

    array-length v5, v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    add-long/2addr v3, v7

    iget-object v5, v2, Lcom/nuance/a/a/a/b/a/b/a/a$a;->c:[B

    array-length v5, v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    add-long/2addr v3, v7

    iget-object v5, v2, Lcom/nuance/a/a/a/b/a/b/a/a$a;->b:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    array-length v5, v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    iget v5, p0, Lcom/nuance/a/a/a/b/a/b/a/a;->h:I

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-lez v3, :cond_2

    invoke-direct {p0}, Lcom/nuance/a/a/a/b/a/b/a/a;->c()V

    :cond_2
    iget-object v3, p0, Lcom/nuance/a/a/a/b/a/b/a/a;->b:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-wide v3, p0, Lcom/nuance/a/a/a/b/a/b/a/a;->c:J

    iget-object v5, v2, Lcom/nuance/a/a/a/b/a/b/a/a$a;->c:[B

    array-length v5, v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/nuance/a/a/a/b/a/b/a/a;->c:J

    iget-wide v3, p0, Lcom/nuance/a/a/a/b/a/b/a/a;->c:J

    add-long/2addr v3, v7

    iput-wide v3, p0, Lcom/nuance/a/a/a/b/a/b/a/a;->c:J

    iget-wide v3, p0, Lcom/nuance/a/a/a/b/a/b/a/a;->c:J

    iget-object v2, v2, Lcom/nuance/a/a/a/b/a/b/a/a$a;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    int-to-long v5, v2

    add-long v2, v3, v5

    iput-wide v2, p0, Lcom/nuance/a/a/a/b/a/b/a/a;->c:J

    iget-wide v2, p0, Lcom/nuance/a/a/a/b/a/b/a/a;->c:J

    add-long/2addr v2, v7

    iput-wide v2, p0, Lcom/nuance/a/a/a/b/a/b/a/a;->c:J

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Lcom/nuance/a/a/a/b/a/b/a/g$b;->a(Lcom/nuance/a/a/a/b/a/b/a/h;)V

    goto/16 :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/nuance/a/a/a/b/a/b/a/a;->c()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public final b()V
    .locals 5

    iget-object v0, p0, Lcom/nuance/a/a/a/b/a/b/a/a;->f:Lcom/nuance/a/a/a/a/b/a/c;

    new-instance v1, Lcom/nuance/a/a/a/a/b/a/c$a;

    const/16 v2, 0x15

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/nuance/a/a/a/a/b/a/c$a;-><init>(BLjava/lang/Object;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/a/a/a/b/a/b/a/a;->f:Lcom/nuance/a/a/a/a/b/a/c;

    invoke-interface {v3}, Lcom/nuance/a/a/a/a/b/a/c;->a()[Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-interface {v0, v1, p0, v2, v3}, Lcom/nuance/a/a/a/a/b/a/c;->a(Ljava/lang/Object;Lcom/nuance/a/a/a/a/b/a/c$b;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
