.class public Lcom/nuance/a/a/a/b/a/b/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/a/a/a/a/b/a/c$b;
.implements Lcom/nuance/a/a/a/b/a/a$a;
.implements Lcom/nuance/a/a/a/b/a/a/a;


# static fields
.field private static final a:Lcom/nuance/a/a/a/a/b/a/b$a;


# instance fields
.field private final b:Lcom/nuance/a/a/a/a/b/a/c;

.field private c:Lcom/nuance/a/a/a/b/a/a/a$a;

.field private d:Ljava/util/Queue;

.field private e:Lcom/nuance/a/a/a/b/a/a;

.field private final f:Ljava/util/List;

.field private g:I

.field private h:Ljava/lang/String;

.field private i:S

.field private j:Ljava/lang/String;

.field private k:[B

.field private l:Ljava/util/Vector;

.field private m:Ljava/lang/String;

.field private n:I

.field private o:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/nuance/a/a/a/b/a/b/a/c;

    invoke-static {v0}, Lcom/nuance/a/a/a/a/b/a/b;->a(Ljava/lang/Class;)Lcom/nuance/a/a/a/a/b/a/b$a;

    move-result-object v0

    sput-object v0, Lcom/nuance/a/a/a/b/a/b/a/c;->a:Lcom/nuance/a/a/a/a/b/a/b$a;

    return-void
.end method

.method public constructor <init>(Lcom/nuance/a/a/a/b/a/a/a$a;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/nuance/a/a/a/c/e;

    invoke-direct {v0}, Lcom/nuance/a/a/a/c/e;-><init>()V

    iput-object v0, p0, Lcom/nuance/a/a/a/b/a/b/a/c;->b:Lcom/nuance/a/a/a/a/b/a/c;

    iput-object v1, p0, Lcom/nuance/a/a/a/b/a/b/a/c;->c:Lcom/nuance/a/a/a/b/a/a/a$a;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/nuance/a/a/a/b/a/b/a/c;->d:Ljava/util/Queue;

    iput-object v1, p0, Lcom/nuance/a/a/a/b/a/b/a/c;->e:Lcom/nuance/a/a/a/b/a/a;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/nuance/a/a/a/b/a/b/a/c;->f:Ljava/util/List;

    iput v3, p0, Lcom/nuance/a/a/a/b/a/b/a/c;->g:I

    iput-object v1, p0, Lcom/nuance/a/a/a/b/a/b/a/c;->h:Ljava/lang/String;

    iput-short v2, p0, Lcom/nuance/a/a/a/b/a/b/a/c;->i:S

    iput-object v1, p0, Lcom/nuance/a/a/a/b/a/b/a/c;->j:Ljava/lang/String;

    iput-object v1, p0, Lcom/nuance/a/a/a/b/a/b/a/c;->k:[B

    iput-object v1, p0, Lcom/nuance/a/a/a/b/a/b/a/c;->l:Ljava/util/Vector;

    iput-object v1, p0, Lcom/nuance/a/a/a/b/a/b/a/c;->m:Ljava/lang/String;

    iput v3, p0, Lcom/nuance/a/a/a/b/a/b/a/c;->n:I

    iput v2, p0, Lcom/nuance/a/a/a/b/a/b/a/c;->o:I

    iput-object p1, p0, Lcom/nuance/a/a/a/b/a/b/a/c;->c:Lcom/nuance/a/a/a/b/a/a/a$a;

    return-void
.end method

.method private static a([BLcom/nuance/a/a/a/b/a/b/a/c$1;)[B
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x4

    new-array v0, v0, [B

    iget v1, p1, Lcom/nuance/a/a/a/b/a/b/a/c$1;->a:I

    array-length v2, v0

    invoke-static {p0, v1, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p1, Lcom/nuance/a/a/a/b/a/b/a/c$1;->a:I

    array-length v2, v0

    add-int/2addr v1, v2

    iput v1, p1, Lcom/nuance/a/a/a/b/a/b/a/c$1;->a:I

    array-length v1, v0

    if-ne v1, v4, :cond_0

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    :goto_0
    new-array v0, v0, [B

    iget v1, p1, Lcom/nuance/a/a/a/b/a/b/a/c$1;->a:I

    array-length v2, v0

    invoke-static {p0, v1, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p1, Lcom/nuance/a/a/a/b/a/b/a/c$1;->a:I

    array-length v2, v0

    add-int/2addr v1, v2

    iput v1, p1, Lcom/nuance/a/a/a/b/a/b/a/c$1;->a:I

    return-object v0

    :cond_0
    array-length v1, v0

    if-ne v1, v5, :cond_1

    aget-byte v1, v0, v4

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    array-length v1, v0

    if-ne v1, v6, :cond_2

    aget-byte v1, v0, v5

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    aget-byte v2, v0, v4

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    add-int/2addr v0, v1

    goto :goto_0

    :cond_2
    aget-byte v1, v0, v6

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    aget-byte v2, v0, v5

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    add-int/2addr v1, v2

    aget-byte v2, v0, v4

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method private b([B)Ljava/util/List;
    .locals 9

    const/4 v1, 0x0

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    new-instance v2, Lcom/nuance/a/a/a/b/a/b/a/c$1;

    invoke-direct {v2, v1}, Lcom/nuance/a/a/a/b/a/b/a/c$1;-><init>(B)V

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    iput-object v3, p0, Lcom/nuance/a/a/a/b/a/b/a/c;->l:Ljava/util/Vector;

    invoke-static {p1, v2}, Lcom/nuance/a/a/a/b/a/b/a/c;->a([BLcom/nuance/a/a/a/b/a/b/a/c$1;)[B

    move-result-object v3

    invoke-static {v3, v1}, Lcom/nuance/a/a/a/a/d/b;->b([BI)I

    move-result v3

    :try_start_0
    new-instance v4, Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/nuance/a/a/a/b/a/b/a/c;->a([BLcom/nuance/a/a/a/b/a/b/a/c$1;)[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    iput-object v4, p0, Lcom/nuance/a/a/a/b/a/b/a/c;->h:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/nuance/a/a/a/b/a/b/a/c;->a([BLcom/nuance/a/a/a/b/a/b/a/c$1;)[B

    move-result-object v4

    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    iput-short v4, p0, Lcom/nuance/a/a/a/b/a/b/a/c;->i:S

    new-instance v4, Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/nuance/a/a/a/b/a/b/a/c;->a([BLcom/nuance/a/a/a/b/a/b/a/c$1;)[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    iput-object v4, p0, Lcom/nuance/a/a/a/b/a/b/a/c;->j:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/nuance/a/a/a/b/a/b/a/c;->a([BLcom/nuance/a/a/a/b/a/b/a/c$1;)[B

    move-result-object v4

    iput-object v4, p0, Lcom/nuance/a/a/a/b/a/b/a/c;->k:[B

    new-instance v4, Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/nuance/a/a/a/b/a/b/a/c;->a([BLcom/nuance/a/a/a/b/a/b/a/c$1;)[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    iput-object v4, p0, Lcom/nuance/a/a/a/b/a/b/a/c;->m:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/nuance/a/a/a/b/a/b/a/c;->a([BLcom/nuance/a/a/a/b/a/b/a/c$1;)[B

    move-result-object v4

    :goto_0
    const/4 v5, 0x0

    aget-byte v5, v4, v5

    if-ge v1, v5, :cond_0

    new-instance v5, Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/nuance/a/a/a/b/a/b/a/c;->a([BLcom/nuance/a/a/a/b/a/b/a/c$1;)[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    invoke-static {p1, v2}, Lcom/nuance/a/a/a/b/a/b/a/c;->a([BLcom/nuance/a/a/a/b/a/b/a/c$1;)[B

    sget-object v6, Lcom/nuance/a/a/a/b/b/c$a;->a:Lcom/nuance/a/a/a/b/b/c$a;

    new-instance v7, Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/nuance/a/a/a/b/a/b/a/c;->a([BLcom/nuance/a/a/a/b/a/b/a/c$1;)[B

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>([B)V

    new-instance v8, Lcom/nuance/a/a/a/b/b/c;

    invoke-direct {v8, v5, v7, v6}, Lcom/nuance/a/a/a/b/b/c;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/nuance/a/a/a/b/b/c$a;)V

    iget-object v5, p0, Lcom/nuance/a/a/a/b/a/b/a/c;->l:Ljava/util/Vector;

    invoke-virtual {v5, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    iget v1, v2, Lcom/nuance/a/a/a/b/a/b/a/c$1;->a:I

    if-ge v1, v3, :cond_2

    new-instance v1, Lcom/nuance/a/a/a/b/a/b/a/a$a;

    invoke-direct {v1}, Lcom/nuance/a/a/a/b/a/b/a/a$a;-><init>()V

    invoke-static {p1, v2}, Lcom/nuance/a/a/a/b/a/b/a/c;->a([BLcom/nuance/a/a/a/b/a/b/a/c$1;)[B

    move-result-object v4

    iput-object v4, v1, Lcom/nuance/a/a/a/b/a/b/a/a$a;->c:[B

    new-instance v4, Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/nuance/a/a/a/b/a/b/a/c;->a([BLcom/nuance/a/a/a/b/a/b/a/c$1;)[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    iput-object v4, v1, Lcom/nuance/a/a/a/b/a/b/a/a$a;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v1, Lcom/nuance/a/a/a/b/a/b/a/c;->a:Lcom/nuance/a/a/a/a/b/a/b$a;

    invoke-virtual {v1}, Lcom/nuance/a/a/a/a/b/a/b$a;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/nuance/a/a/a/b/a/b/a/c;->a:Lcom/nuance/a/a/a/a/b/a/b$a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unserializeEvents() failed!!! : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/nuance/a/a/a/a/b/a/b$a;->e(Ljava/lang/Object;)V

    :cond_1
    const/4 v0, 0x0

    :cond_2
    return-object v0
.end method

.method private c()V
    .locals 6

    const/4 v5, 0x0

    iget v0, p0, Lcom/nuance/a/a/a/b/a/b/a/c;->o:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/a/a/a/b/a/b/a/c;->d:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/nuance/a/a/a/b/a/b/a/c;->f:Ljava/util/List;

    iget-object v0, p0, Lcom/nuance/a/a/a/b/a/b/a/c;->d:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-direct {p0, v0}, Lcom/nuance/a/a/a/b/a/b/a/c;->b([B)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/nuance/a/a/a/b/a/b/a/c;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/nuance/a/a/a/b/a/b/a/c;->o:I

    :cond_0
    sget-object v0, Lcom/nuance/a/a/a/b/a/b/a/c;->a:Lcom/nuance/a/a/a/a/b/a/b$a;

    invoke-virtual {v0}, Lcom/nuance/a/a/a/a/b/a/b$a;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/nuance/a/a/a/b/a/b/a/c;->a:Lcom/nuance/a/a/a/a/b/a/b$a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "trySendingLogs() , _events.size()"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nuance/a/a/a/b/a/b/a/c;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/a/a/a/a/b/a/b$a;->b(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/nuance/a/a/a/b/a/b/a/c;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nuance/a/a/a/b/a/b/a/c;->f:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/a/a/a/b/a/b/a/a$a;

    sget-object v1, Lcom/nuance/a/a/a/b/a/b/a/c;->a:Lcom/nuance/a/a/a/a/b/a/b$a;

    invoke-virtual {v1}, Lcom/nuance/a/a/a/a/b/a/b$a;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/nuance/a/a/a/b/a/b/a/c;->a:Lcom/nuance/a/a/a/a/b/a/b$a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bcpLog, packet len ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/nuance/a/a/a/b/a/b/a/a$a;->c:[B

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/a/a/a/a/b/a/b$a;->b(Ljava/lang/Object;)V

    :cond_2
    iget-object v1, p0, Lcom/nuance/a/a/a/b/a/b/a/c;->b:Lcom/nuance/a/a/a/a/b/a/c;

    new-instance v2, Lcom/nuance/a/a/a/a/b/a/c$a;

    const/4 v3, 0x2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-direct {v2, v3, v4}, Lcom/nuance/a/a/a/a/b/a/c$a;-><init>(BLjava/lang/Object;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v3, p0, Lcom/nuance/a/a/a/b/a/b/a/c;->b:Lcom/nuance/a/a/a/a/b/a/c;

    invoke-interface {v3}, Lcom/nuance/a/a/a/a/b/a/c;->a()[Ljava/lang/Object;

    move-result-object v3

    aget-object v3, v3, v5

    invoke-interface {v1, v2, p0, v0, v3}, Lcom/nuance/a/a/a/a/b/a/c;->a(Ljava/lang/Object;Lcom/nuance/a/a/a/a/b/a/c$b;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    sget-object v0, Lcom/nuance/a/a/a/b/a/b/a/c;->a:Lcom/nuance/a/a/a/a/b/a/b$a;

    invoke-virtual {v0}, Lcom/nuance/a/a/a/a/b/a/b$a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nuance/a/a/a/b/a/b/a/c;->a:Lcom/nuance/a/a/a/a/b/a/b$a;

    const-string v1, "socketOpened()"

    invoke-virtual {v0, v1}, Lcom/nuance/a/a/a/a/b/a/b$a;->b(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/nuance/a/a/a/a/c/b;[B)V
    .locals 0

    return-void
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 10

    const/4 v5, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v9, 0x0

    check-cast p1, Lcom/nuance/a/a/a/a/b/a/c$a;

    iget-byte v0, p1, Lcom/nuance/a/a/a/a/b/a/c$a;->a:B

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Lcom/nuance/a/a/a/a/b/a/c$a;->b:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    aget-object v0, v0, v9

    check-cast v0, [B

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/nuance/a/a/a/b/a/b/a/c;->c:Lcom/nuance/a/a/a/b/a/a/a$a;

    invoke-interface {v1, v4, v0}, Lcom/nuance/a/a/a/b/a/a/a$a;->a(S[B)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/nuance/a/a/a/b/a/b/a/c;->d:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget v1, p0, Lcom/nuance/a/a/a/b/a/b/a/c;->n:I

    if-ne v1, v3, :cond_2

    iput v4, p0, Lcom/nuance/a/a/a/b/a/b/a/c;->n:I

    invoke-direct {p0, v0}, Lcom/nuance/a/a/a/b/a/b/a/c;->b([B)Ljava/util/List;

    new-instance v0, Lcom/nuance/a/a/a/b/a/a;

    iget-object v1, p0, Lcom/nuance/a/a/a/b/a/b/a/c;->h:Ljava/lang/String;

    iget-short v2, p0, Lcom/nuance/a/a/a/b/a/b/a/c;->i:S

    iget-object v3, p0, Lcom/nuance/a/a/a/b/a/b/a/c;->j:Ljava/lang/String;

    iget-object v4, p0, Lcom/nuance/a/a/a/b/a/b/a/c;->k:[B

    iget-object v5, p0, Lcom/nuance/a/a/a/b/a/b/a/c;->m:Ljava/lang/String;

    iget-object v7, p0, Lcom/nuance/a/a/a/b/a/b/a/c;->l:Ljava/util/Vector;

    iget-object v8, p0, Lcom/nuance/a/a/a/b/a/b/a/c;->b:Lcom/nuance/a/a/a/a/b/a/c;

    move-object v6, p0

    invoke-direct/range {v0 .. v8}, Lcom/nuance/a/a/a/b/a/a;-><init>(Ljava/lang/String;SLjava/lang/String;[BLjava/lang/String;Lcom/nuance/a/a/a/b/a/a$a;Ljava/util/Vector;Lcom/nuance/a/a/a/a/b/a/c;)V

    iput-object v0, p0, Lcom/nuance/a/a/a/b/a/b/a/c;->e:Lcom/nuance/a/a/a/b/a/a;

    iget-object v0, p0, Lcom/nuance/a/a/a/b/a/b/a/c;->e:Lcom/nuance/a/a/a/b/a/a;

    invoke-virtual {v0}, Lcom/nuance/a/a/a/b/a/a;->c()V

    iget-object v0, p0, Lcom/nuance/a/a/a/b/a/b/a/c;->e:Lcom/nuance/a/a/a/b/a/a;

    invoke-virtual {v0, v9, v9}, Lcom/nuance/a/a/a/b/a/a;->a(SS)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/nuance/a/a/a/b/a/b/a/c;->n:I

    if-ne v0, v5, :cond_0

    invoke-direct {p0}, Lcom/nuance/a/a/a/b/a/b/a/c;->c()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p1, Lcom/nuance/a/a/a/a/b/a/c$a;->b:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    aget-object v0, v0, v9

    check-cast v0, Lcom/nuance/a/a/a/b/a/b/a/a$a;

    iget v1, p0, Lcom/nuance/a/a/a/b/a/b/a/c;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/nuance/a/a/a/b/a/b/a/c;->g:I

    iput v1, v0, Lcom/nuance/a/a/a/b/a/b/a/a$a;->a:I

    iget-object v1, v0, Lcom/nuance/a/a/a/b/a/b/a/a$a;->c:[B

    array-length v1, v1

    add-int/lit8 v1, v1, 0x19

    new-array v1, v1, [B

    aput-byte v9, v1, v9

    iget v2, v0, Lcom/nuance/a/a/a/b/a/b/a/a$a;->a:I

    invoke-static {v2, v1, v3}, Lcom/nuance/a/a/a/a/d/b;->a(I[BI)V

    iget-object v2, v0, Lcom/nuance/a/a/a/b/a/b/a/a$a;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/nuance/a/a/a/a/c/a;->a([B[B)[B

    move-result-object v1

    iget-object v2, v0, Lcom/nuance/a/a/a/b/a/b/a/a$a;->c:[B

    array-length v2, v2

    const/16 v3, 0x15

    invoke-static {v2, v1, v3}, Lcom/nuance/a/a/a/a/d/b;->a(I[BI)V

    iget-object v2, v0, Lcom/nuance/a/a/a/b/a/b/a/a$a;->c:[B

    const/16 v3, 0x19

    iget-object v0, v0, Lcom/nuance/a/a/a/b/a/b/a/a$a;->c:[B

    array-length v0, v0

    invoke-static {v2, v9, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v0, 0x22

    const/16 v2, 0xa50

    invoke-static {v4, v0, v2, v1}, Lcom/nuance/a/a/a/a/c/a;->a(BBS[B)[B

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/a/a/a/b/a/b/a/c;->e:Lcom/nuance/a/a/a/b/a/a;

    const-string v2, "SEND_BCP_LOG"

    invoke-virtual {v1, v0, v5, v2}, Lcom/nuance/a/a/a/b/a/a;->a([BILjava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    const-string v0, "SEND_BCP_LOG"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/nuance/a/a/a/b/a/b/a/c;->a:Lcom/nuance/a/a/a/a/b/a/b$a;

    invoke-virtual {v0}, Lcom/nuance/a/a/a/a/b/a/b$a;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/nuance/a/a/a/b/a/b/a/c;->a:Lcom/nuance/a/a/a/a/b/a/b$a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onMsgSent("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/a/a/a/a/b/a/b$a;->b(Ljava/lang/Object;)V

    :cond_2
    iget v0, p0, Lcom/nuance/a/a/a/b/a/b/a/c;->o:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/nuance/a/a/a/b/a/b/a/c;->o:I

    iget v0, p0, Lcom/nuance/a/a/a/b/a/b/a/c;->o:I

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/nuance/a/a/a/b/a/b/a/c;->c:Lcom/nuance/a/a/a/b/a/a/a$a;

    iget-object v0, p0, Lcom/nuance/a/a/a/b/a/b/a/c;->d:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-interface {v1, v0}, Lcom/nuance/a/a/a/b/a/a/a$a;->a([B)V

    invoke-direct {p0}, Lcom/nuance/a/a/a/b/a/b/a/c;->c()V

    goto :goto_0
.end method

.method public final a(SS)V
    .locals 3

    sget-object v0, Lcom/nuance/a/a/a/b/a/b/a/c;->a:Lcom/nuance/a/a/a/a/b/a/b$a;

    invoke-virtual {v0}, Lcom/nuance/a/a/a/a/b/a/b$a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nuance/a/a/a/b/a/b/a/c;->a:Lcom/nuance/a/a/a/a/b/a/b$a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "socketClosed() reason ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] subReason ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/a/a/a/a/b/a/b$a;->b(Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/nuance/a/a/a/b/a/b/a/c;->n:I

    iget-object v0, p0, Lcom/nuance/a/a/a/b/a/b/a/c;->b:Lcom/nuance/a/a/a/a/b/a/c;

    invoke-interface {v0}, Lcom/nuance/a/a/a/a/b/a/c;->c()V

    return-void
.end method

.method public final a([B)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    iput v3, p0, Lcom/nuance/a/a/a/b/a/b/a/c;->g:I

    iget-object v0, p0, Lcom/nuance/a/a/a/b/a/b/a/c;->b:Lcom/nuance/a/a/a/a/b/a/c;

    new-instance v1, Lcom/nuance/a/a/a/a/b/a/c$a;

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v4

    invoke-direct {v1, v3, v2}, Lcom/nuance/a/a/a/a/b/a/c$a;-><init>(BLjava/lang/Object;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/a/a/a/b/a/b/a/c;->b:Lcom/nuance/a/a/a/a/b/a/c;

    invoke-interface {v3}, Lcom/nuance/a/a/a/a/b/a/c;->a()[Ljava/lang/Object;

    move-result-object v3

    aget-object v3, v3, v4

    invoke-interface {v0, v1, p0, v2, v3}, Lcom/nuance/a/a/a/a/b/a/c;->a(Ljava/lang/Object;Lcom/nuance/a/a/a/a/b/a/c$b;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lcom/nuance/a/a/a/b/a/b/a/c;->n:I

    invoke-direct {p0}, Lcom/nuance/a/a/a/b/a/b/a/c;->c()V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 3

    const-string v0, "SEND_BCP_LOG"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/nuance/a/a/a/b/a/b/a/c;->a:Lcom/nuance/a/a/a/a/b/a/b$a;

    invoke-virtual {v0}, Lcom/nuance/a/a/a/a/b/a/b$a;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/nuance/a/a/a/b/a/b/a/c;->a:Lcom/nuance/a/a/a/a/b/a/b$a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onMsgNotSent("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/a/a/a/a/b/a/b$a;->b(Ljava/lang/Object;)V

    :cond_2
    iget v0, p0, Lcom/nuance/a/a/a/b/a/b/a/c;->o:I

    if-lez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/a/a/a/b/a/b/a/c;->o:I

    iget-object v0, p0, Lcom/nuance/a/a/a/b/a/b/a/c;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/nuance/a/a/a/b/a/b/a/c;->d:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    iget-object v0, p0, Lcom/nuance/a/a/a/b/a/b/a/c;->e:Lcom/nuance/a/a/a/b/a/a;

    invoke-virtual {v0}, Lcom/nuance/a/a/a/b/a/a;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/a/a/a/b/a/b/a/c;->e:Lcom/nuance/a/a/a/b/a/a;

    iget-object v1, p0, Lcom/nuance/a/a/a/b/a/b/a/c;->c:Lcom/nuance/a/a/a/b/a/a/a$a;

    const/4 v2, 0x3

    iget-object v0, p0, Lcom/nuance/a/a/a/b/a/b/a/c;->d:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-interface {v1, v2, v0}, Lcom/nuance/a/a/a/b/a/a/a$a;->a(S[B)V

    goto :goto_0
.end method
