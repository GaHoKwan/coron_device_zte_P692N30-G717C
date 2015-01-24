.class public Lcom/powermo/input/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final j:Ljava/lang/String;

.field private static m:Lcom/powermo/input/a/a;

.field private static n:I

.field private static o:I

.field private static final p:Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field h:Lcom/powermo/input/a/a;

.field i:Lcom/powermo/input/a/b;

.field private k:[B

.field private l:Lcom/powermo/input/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const-string v0, "InputMessage"

    invoke-static {v0}, Lcom/powermo/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/powermo/input/a/a;->j:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/powermo/input/a/a;->m:Lcom/powermo/input/a/a;

    sput v1, Lcom/powermo/input/a/a;->n:I

    sput v1, Lcom/powermo/input/a/a;->o:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/powermo/input/a/a;->p:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/powermo/input/a/a;->k:[B

    iput-object v1, p0, Lcom/powermo/input/a/a;->h:Lcom/powermo/input/a/a;

    iput-object v1, p0, Lcom/powermo/input/a/a;->l:Lcom/powermo/input/a/a;

    iput-object v1, p0, Lcom/powermo/input/a/a;->i:Lcom/powermo/input/a/b;

    return-void
.end method

.method static a(I)I
    .locals 1

    if-ltz p0, :cond_0

    const/4 v0, 0x5

    if-le p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    add-int/lit8 v0, p0, 0x10

    goto :goto_0
.end method

.method private a(II)I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v0, p2, :cond_0

    iget-object v2, p0, Lcom/powermo/input/a/a;->k:[B

    add-int v3, p1, v0

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v3, v0, 0x8

    shl-int/2addr v2, v3

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public static a(Lcom/powermo/input/a/b;IIII)Lcom/powermo/input/a/a;
    .locals 4

    const/4 v3, 0x0

    sget-object v1, Lcom/powermo/input/a/a;->p:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/powermo/input/a/a;->m:Lcom/powermo/input/a/a;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/powermo/input/a/a;->m:Lcom/powermo/input/a/a;

    iget-object v2, v0, Lcom/powermo/input/a/a;->l:Lcom/powermo/input/a/a;

    sput-object v2, Lcom/powermo/input/a/a;->m:Lcom/powermo/input/a/a;

    sget v2, Lcom/powermo/input/a/a;->o:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Lcom/powermo/input/a/a;->o:I

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v3, v0, Lcom/powermo/input/a/a;->l:Lcom/powermo/input/a/a;

    iput-object v3, v0, Lcom/powermo/input/a/a;->h:Lcom/powermo/input/a/a;

    iput-object p0, v0, Lcom/powermo/input/a/a;->i:Lcom/powermo/input/a/b;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/powermo/input/a/a;->a(IIII)V

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Lcom/powermo/input/a/a;

    invoke-direct {v0}, Lcom/powermo/input/a/a;-><init>()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(III)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    iget-object v1, p0, Lcom/powermo/input/a/a;->k:[B

    add-int v2, p2, v0

    mul-int/lit8 v3, v0, 0x8

    shr-int v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/powermo/input/a/a;)Lcom/powermo/input/a/a;
    .locals 1

    iput-object p1, p0, Lcom/powermo/input/a/a;->h:Lcom/powermo/input/a/a;

    iget-object v0, p0, Lcom/powermo/input/a/a;->h:Lcom/powermo/input/a/a;

    return-object v0
.end method

.method public a(IIII)V
    .locals 4

    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, v1, v0, v1}, Lcom/powermo/input/a/a;->a(III)V

    invoke-direct {p0, p1, v1, v1}, Lcom/powermo/input/a/a;->a(III)V

    iget v0, p0, Lcom/powermo/input/a/a;->c:I

    invoke-direct {p0, v0, v2, v2}, Lcom/powermo/input/a/a;->a(III)V

    invoke-direct {p0, p2, v3, v2}, Lcom/powermo/input/a/a;->a(III)V

    const/4 v0, 0x6

    invoke-direct {p0, p3, v0, v2}, Lcom/powermo/input/a/a;->a(III)V

    const/16 v0, 0x8

    invoke-direct {p0, p4, v0, v3}, Lcom/powermo/input/a/a;->a(III)V

    return-void
.end method

.method public a()Z
    .locals 4

    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/powermo/input/a/a;->a(II)I

    move-result v0

    iput v0, p0, Lcom/powermo/input/a/a;->a:I

    invoke-direct {p0, v1, v1}, Lcom/powermo/input/a/a;->a(II)I

    move-result v0

    iput v0, p0, Lcom/powermo/input/a/a;->b:I

    invoke-direct {p0, v2, v2}, Lcom/powermo/input/a/a;->a(II)I

    move-result v0

    iput v0, p0, Lcom/powermo/input/a/a;->c:I

    invoke-direct {p0, v3, v2}, Lcom/powermo/input/a/a;->a(II)I

    move-result v0

    iput v0, p0, Lcom/powermo/input/a/a;->d:I

    const/4 v0, 0x6

    invoke-direct {p0, v0, v2}, Lcom/powermo/input/a/a;->a(II)I

    move-result v0

    iput v0, p0, Lcom/powermo/input/a/a;->e:I

    const/16 v0, 0x8

    invoke-direct {p0, v0, v3}, Lcom/powermo/input/a/a;->a(II)I

    move-result v0

    iput v0, p0, Lcom/powermo/input/a/a;->f:I

    const/16 v0, 0xc

    invoke-direct {p0, v0, v3}, Lcom/powermo/input/a/a;->a(II)I

    move-result v0

    iput v0, p0, Lcom/powermo/input/a/a;->g:I

    return v1
.end method

.method public b(I)V
    .locals 2

    const/16 v0, 0xc

    const/4 v1, 0x4

    invoke-direct {p0, p1, v0, v1}, Lcom/powermo/input/a/a;->a(III)V

    return-void
.end method

.method b()[B
    .locals 1

    iget-object v0, p0, Lcom/powermo/input/a/a;->k:[B

    return-object v0
.end method

.method c()Lcom/powermo/input/a/a;
    .locals 1

    iget-object v0, p0, Lcom/powermo/input/a/a;->h:Lcom/powermo/input/a/a;

    return-object v0
.end method

.method public d()V
    .locals 3

    sget-object v1, Lcom/powermo/input/a/a;->p:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/powermo/input/a/a;->o:I

    const/16 v2, 0x60

    if-ge v0, v2, :cond_0

    sget-object v0, Lcom/powermo/input/a/a;->m:Lcom/powermo/input/a/a;

    iput-object v0, p0, Lcom/powermo/input/a/a;->l:Lcom/powermo/input/a/a;

    sput-object p0, Lcom/powermo/input/a/a;->m:Lcom/powermo/input/a/a;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/powermo/input/a/a;->h:Lcom/powermo/input/a/a;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/powermo/input/a/a;->i:Lcom/powermo/input/a/b;

    sget v0, Lcom/powermo/input/a/a;->o:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/powermo/input/a/a;->o:I

    sget v0, Lcom/powermo/input/a/a;->n:I

    sget v2, Lcom/powermo/input/a/a;->o:I

    if-ge v0, v2, :cond_0

    sget v0, Lcom/powermo/input/a/a;->o:I

    sput v0, Lcom/powermo/input/a/a;->n:I

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/powermo/input/a/a;->i:Lcom/powermo/input/a/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powermo/input/a/a;->i:Lcom/powermo/input/a/b;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/powermo/input/a/b;->b(Lcom/powermo/input/a/a;Z)V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/powermo/input/a/a;->a()Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/powermo/input/a/a;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/powermo/input/a/a;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(command), "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/powermo/input/a/a;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(type), "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/powermo/input/a/a;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(code), "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/powermo/input/a/a;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(value), "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
