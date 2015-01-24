.class public final Lcom/powermo/input/e;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:[Lcom/powermo/input/d;

.field private final c:[Lcom/powermo/input/d;

.field private d:Ljava/util/concurrent/atomic/AtomicInteger;

.field private e:I

.field private f:I

.field private g:I

.field private final h:Lcom/powermo/input/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "MultiTouchTracer"

    invoke-static {v0}, Lcom/powermo/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/powermo/input/e;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/powermo/input/a;)V
    .locals 6

    const/16 v5, 0xa

    const/4 v4, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v5, [Lcom/powermo/input/d;

    iput-object v0, p0, Lcom/powermo/input/e;->b:[Lcom/powermo/input/d;

    new-array v0, v4, [Lcom/powermo/input/d;

    iput-object v0, p0, Lcom/powermo/input/e;->c:[Lcom/powermo/input/d;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v2, 0x45

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/powermo/input/e;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    iput v1, p0, Lcom/powermo/input/e;->e:I

    iput v1, p0, Lcom/powermo/input/e;->f:I

    iput v1, p0, Lcom/powermo/input/e;->g:I

    iput-object p1, p0, Lcom/powermo/input/e;->h:Lcom/powermo/input/a;

    move v0, v1

    :goto_0
    if-ge v0, v5, :cond_0

    iget-object v2, p0, Lcom/powermo/input/e;->b:[Lcom/powermo/input/d;

    new-instance v3, Lcom/powermo/input/d;

    invoke-direct {v3, v0}, Lcom/powermo/input/d;-><init>(I)V

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/powermo/input/e;->c:[Lcom/powermo/input/d;

    new-instance v2, Lcom/powermo/input/d;

    invoke-direct {v2, v1}, Lcom/powermo/input/d;-><init>(I)V

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/powermo/input/e;->c:[Lcom/powermo/input/d;

    aget-object v0, v0, v1

    iput-boolean v4, v0, Lcom/powermo/input/d;->a:Z

    iget-object v0, p0, Lcom/powermo/input/e;->c:[Lcom/powermo/input/d;

    aget-object v0, v0, v1

    const/4 v2, 0x3

    iput v2, v0, Lcom/powermo/input/d;->b:I

    iget-object v0, p0, Lcom/powermo/input/e;->c:[Lcom/powermo/input/d;

    aget-object v0, v0, v1

    const/4 v1, -0x1

    iput v1, v0, Lcom/powermo/input/d;->d:I

    return-void
.end method

.method private a(F)I
    .locals 3

    const/16 v0, 0x3ff

    iget v1, p0, Lcom/powermo/input/e;->e:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    const v1, 0x447fc000

    mul-float/2addr v1, p1

    float-to-int v1, v1

    if-gt v1, v0, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private a()V
    .locals 6

    const/4 v1, 0x0

    move v0, v1

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/powermo/input/e;->b:[Lcom/powermo/input/d;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Lcom/powermo/input/e;->b:[Lcom/powermo/input/d;

    aget-object v3, v3, v0

    iget-boolean v3, v3, Lcom/powermo/input/d;->a:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/powermo/input/e;->b:[Lcom/powermo/input/d;

    aget-object v3, v3, v0

    iget-boolean v3, v3, Lcom/powermo/input/d;->j:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/powermo/input/e;->b:[Lcom/powermo/input/d;

    aget-object v3, v3, v0

    const/4 v4, -0x1

    iput v4, v3, Lcom/powermo/input/d;->d:I

    iget-object v3, p0, Lcom/powermo/input/e;->b:[Lcom/powermo/input/d;

    aget-object v3, v3, v0

    iput-boolean v1, v3, Lcom/powermo/input/d;->a:Z

    iget-object v3, p0, Lcom/powermo/input/e;->b:[Lcom/powermo/input/d;

    aget-object v3, v3, v0

    iput-boolean v1, v3, Lcom/powermo/input/d;->j:Z

    iget v3, p0, Lcom/powermo/input/e;->g:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/powermo/input/e;->g:I

    iget-object v3, p0, Lcom/powermo/input/e;->c:[Lcom/powermo/input/d;

    aget-object v3, v3, v1

    iput v0, v3, Lcom/powermo/input/d;->c:I

    iget-object v3, p0, Lcom/powermo/input/e;->h:Lcom/powermo/input/a;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/powermo/input/e;->h:Lcom/powermo/input/a;

    iget-object v4, p0, Lcom/powermo/input/e;->c:[Lcom/powermo/input/d;

    iget v5, p0, Lcom/powermo/input/e;->g:I

    invoke-interface {v3, v4, v5}, Lcom/powermo/input/a;->a([Lcom/powermo/input/d;I)Z

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/powermo/input/e;->g:I

    if-eq v0, v2, :cond_3

    iput v2, p0, Lcom/powermo/input/e;->g:I

    :cond_3
    return-void
.end method

.method private a(Lcom/powermo/input/c;IFFFFF)V
    .locals 8

    const/16 v0, 0xa

    if-lt p2, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    shl-int/2addr v0, p2

    iget v1, p0, Lcom/powermo/input/e;->f:I

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    invoke-virtual {p1, p3, p4, v0}, Lcom/powermo/input/c;->a(FFLandroid/graphics/PointF;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget v1, v0, Landroid/graphics/PointF;->x:F

    float-to-int v1, v1

    iget v0, v0, Landroid/graphics/PointF;->y:F

    float-to-int v2, v0

    invoke-direct {p0, p5}, Lcom/powermo/input/e;->a(F)I

    move-result v3

    invoke-direct {p0, p6}, Lcom/powermo/input/e;->b(F)I

    move-result v4

    invoke-direct {p0, p7}, Lcom/powermo/input/e;->c(F)I

    move-result v5

    iget-object v0, p0, Lcom/powermo/input/e;->b:[Lcom/powermo/input/d;

    aget-object v0, v0, p2

    iget-boolean v0, v0, Lcom/powermo/input/d;->a:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/powermo/input/e;->b:[Lcom/powermo/input/d;

    aget-object v0, v0, p2

    const/4 v6, 0x0

    iput v6, v0, Lcom/powermo/input/d;->b:I

    iget-object v0, p0, Lcom/powermo/input/e;->b:[Lcom/powermo/input/d;

    aget-object v0, v0, p2

    iget v6, v0, Lcom/powermo/input/d;->b:I

    or-int/lit8 v6, v6, 0x1

    iput v6, v0, Lcom/powermo/input/d;->b:I

    iget-object v0, p0, Lcom/powermo/input/e;->b:[Lcom/powermo/input/d;

    aget-object v0, v0, p2

    iget v0, v0, Lcom/powermo/input/d;->g:I

    if-eq v0, v3, :cond_2

    iget-object v0, p0, Lcom/powermo/input/e;->b:[Lcom/powermo/input/d;

    aget-object v0, v0, p2

    iget v6, v0, Lcom/powermo/input/d;->b:I

    or-int/lit8 v6, v6, 0x20

    iput v6, v0, Lcom/powermo/input/d;->b:I

    iget-object v0, p0, Lcom/powermo/input/e;->b:[Lcom/powermo/input/d;

    aget-object v0, v0, p2

    iput v3, v0, Lcom/powermo/input/d;->g:I

    :cond_2
    iget-object v0, p0, Lcom/powermo/input/e;->b:[Lcom/powermo/input/d;

    aget-object v0, v0, p2

    iget v0, v0, Lcom/powermo/input/d;->e:I

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/powermo/input/e;->b:[Lcom/powermo/input/d;

    aget-object v0, v0, p2

    iget v3, v0, Lcom/powermo/input/d;->b:I

    or-int/lit8 v3, v3, 0x8

    iput v3, v0, Lcom/powermo/input/d;->b:I

    iget-object v0, p0, Lcom/powermo/input/e;->b:[Lcom/powermo/input/d;

    aget-object v0, v0, p2

    iput v1, v0, Lcom/powermo/input/d;->e:I

    :cond_3
    iget-object v0, p0, Lcom/powermo/input/e;->b:[Lcom/powermo/input/d;

    aget-object v0, v0, p2

    iget v0, v0, Lcom/powermo/input/d;->f:I

    if-eq v0, v2, :cond_4

    iget-object v0, p0, Lcom/powermo/input/e;->b:[Lcom/powermo/input/d;

    aget-object v0, v0, p2

    iget v1, v0, Lcom/powermo/input/d;->b:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Lcom/powermo/input/d;->b:I

    iget-object v0, p0, Lcom/powermo/input/e;->b:[Lcom/powermo/input/d;

    aget-object v0, v0, p2

    iput v2, v0, Lcom/powermo/input/d;->f:I

    :cond_4
    iget-object v0, p0, Lcom/powermo/input/e;->b:[Lcom/powermo/input/d;

    aget-object v0, v0, p2

    iget v0, v0, Lcom/powermo/input/d;->h:I

    if-eq v0, v4, :cond_5

    iget-object v0, p0, Lcom/powermo/input/e;->b:[Lcom/powermo/input/d;

    aget-object v0, v0, p2

    iget v1, v0, Lcom/powermo/input/d;->b:I

    or-int/lit8 v1, v1, 0x40

    iput v1, v0, Lcom/powermo/input/d;->b:I

    iget-object v0, p0, Lcom/powermo/input/e;->b:[Lcom/powermo/input/d;

    aget-object v0, v0, p2

    iput v4, v0, Lcom/powermo/input/d;->h:I

    :cond_5
    iget-object v0, p0, Lcom/powermo/input/e;->b:[Lcom/powermo/input/d;

    aget-object v0, v0, p2

    iget v0, v0, Lcom/powermo/input/d;->i:I

    if-eq v0, v5, :cond_0

    iget-object v0, p0, Lcom/powermo/input/e;->b:[Lcom/powermo/input/d;

    aget-object v0, v0, p2

    iget v1, v0, Lcom/powermo/input/d;->b:I

    or-int/lit16 v1, v1, 0x80

    iput v1, v0, Lcom/powermo/input/d;->b:I

    iget-object v0, p0, Lcom/powermo/input/e;->b:[Lcom/powermo/input/d;

    aget-object v0, v0, p2

    iput v5, v0, Lcom/powermo/input/d;->i:I

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/powermo/input/e;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    const v6, 0xffff

    if-le v0, v6, :cond_7

    const v0, 0xffff

    iget-object v6, p0, Lcom/powermo/input/e;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v7, 0x45

    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :cond_7
    iget-object v6, p0, Lcom/powermo/input/e;->b:[Lcom/powermo/input/d;

    aget-object v6, v6, p2

    const/4 v7, 0x0

    iput v7, v6, Lcom/powermo/input/d;->b:I

    iget-object v6, p0, Lcom/powermo/input/e;->b:[Lcom/powermo/input/d;

    aget-object v6, v6, p2

    iget v7, v6, Lcom/powermo/input/d;->b:I

    or-int/lit8 v7, v7, 0x1

    iput v7, v6, Lcom/powermo/input/d;->b:I

    iget-object v6, p0, Lcom/powermo/input/e;->b:[Lcom/powermo/input/d;

    aget-object v6, v6, p2

    iget v7, v6, Lcom/powermo/input/d;->b:I

    or-int/lit8 v7, v7, 0x2

    iput v7, v6, Lcom/powermo/input/d;->b:I

    iget-object v6, p0, Lcom/powermo/input/e;->b:[Lcom/powermo/input/d;

    aget-object v6, v6, p2

    iput v0, v6, Lcom/powermo/input/d;->d:I

    iget-object v0, p0, Lcom/powermo/input/e;->b:[Lcom/powermo/input/d;

    aget-object v0, v0, p2

    iget v6, v0, Lcom/powermo/input/d;->b:I

    or-int/lit8 v6, v6, 0x8

    iput v6, v0, Lcom/powermo/input/d;->b:I

    iget-object v0, p0, Lcom/powermo/input/e;->b:[Lcom/powermo/input/d;

    aget-object v0, v0, p2

    iput v1, v0, Lcom/powermo/input/d;->e:I

    iget-object v0, p0, Lcom/powermo/input/e;->b:[Lcom/powermo/input/d;

    aget-object v0, v0, p2

    iget v1, v0, Lcom/powermo/input/d;->b:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Lcom/powermo/input/d;->b:I

    iget-object v0, p0, Lcom/powermo/input/e;->b:[Lcom/powermo/input/d;

    aget-object v0, v0, p2

    iput v2, v0, Lcom/powermo/input/d;->f:I

    iget-object v0, p0, Lcom/powermo/input/e;->b:[Lcom/powermo/input/d;

    aget-object v0, v0, p2

    iget v1, v0, Lcom/powermo/input/d;->b:I

    or-int/lit8 v1, v1, 0x20

    iput v1, v0, Lcom/powermo/input/d;->b:I

    iget-object v0, p0, Lcom/powermo/input/e;->b:[Lcom/powermo/input/d;

    aget-object v0, v0, p2

    iput v3, v0, Lcom/powermo/input/d;->g:I

    iget-object v0, p0, Lcom/powermo/input/e;->b:[Lcom/powermo/input/d;

    aget-object v0, v0, p2

    iget v1, v0, Lcom/powermo/input/d;->b:I

    or-int/lit8 v1, v1, 0x40

    iput v1, v0, Lcom/powermo/input/d;->b:I

    iget-object v0, p0, Lcom/powermo/input/e;->b:[Lcom/powermo/input/d;

    aget-object v0, v0, p2

    iput v4, v0, Lcom/powermo/input/d;->h:I

    iget-object v0, p0, Lcom/powermo/input/e;->b:[Lcom/powermo/input/d;

    aget-object v0, v0, p2

    iget v1, v0, Lcom/powermo/input/d;->b:I

    or-int/lit16 v1, v1, 0x80

    iput v1, v0, Lcom/powermo/input/d;->b:I

    iget-object v0, p0, Lcom/powermo/input/e;->b:[Lcom/powermo/input/d;

    aget-object v0, v0, p2

    iput v5, v0, Lcom/powermo/input/d;->i:I

    iget-object v0, p0, Lcom/powermo/input/e;->b:[Lcom/powermo/input/d;

    aget-object v0, v0, p2

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/powermo/input/d;->a:Z

    iget-object v0, p0, Lcom/powermo/input/e;->b:[Lcom/powermo/input/d;

    aget-object v0, v0, p2

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/powermo/input/d;->j:Z

    iget v0, p0, Lcom/powermo/input/e;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/powermo/input/e;->g:I

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/powermo/input/e;->b:[Lcom/powermo/input/d;

    aget-object v0, v0, p2

    iget-boolean v0, v0, Lcom/powermo/input/d;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powermo/input/e;->b:[Lcom/powermo/input/d;

    aget-object v0, v0, p2

    invoke-direct {p0, v0}, Lcom/powermo/input/e;->a(Lcom/powermo/input/d;)V

    goto/16 :goto_0
.end method

.method private a(Lcom/powermo/input/d;)V
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p1, Lcom/powermo/input/d;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p1, Lcom/powermo/input/d;->b:I

    iput-boolean v1, p1, Lcom/powermo/input/d;->j:Z

    iget v0, p1, Lcom/powermo/input/d;->b:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p1, Lcom/powermo/input/d;->b:I

    iput v1, p1, Lcom/powermo/input/d;->g:I

    iget v0, p1, Lcom/powermo/input/d;->b:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p1, Lcom/powermo/input/d;->b:I

    iput v1, p1, Lcom/powermo/input/d;->h:I

    iget v0, p1, Lcom/powermo/input/d;->b:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p1, Lcom/powermo/input/d;->b:I

    iput v1, p1, Lcom/powermo/input/d;->i:I

    :cond_0
    return-void
.end method

.method private a(II)Z
    .locals 4

    const/4 v1, 0x0

    iget v0, p0, Lcom/powermo/input/e;->e:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/powermo/input/e;->f:I

    if-eq v0, p2, :cond_4

    :cond_0
    iget v0, p0, Lcom/powermo/input/e;->g:I

    if-lez v0, :cond_3

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/powermo/input/e;->b:[Lcom/powermo/input/d;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/powermo/input/e;->b:[Lcom/powermo/input/d;

    aget-object v2, v2, v0

    invoke-direct {p0, v2}, Lcom/powermo/input/e;->a(Lcom/powermo/input/d;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/powermo/input/e;->h:Lcom/powermo/input/a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/powermo/input/e;->h:Lcom/powermo/input/a;

    iget-object v2, p0, Lcom/powermo/input/e;->b:[Lcom/powermo/input/d;

    iget v3, p0, Lcom/powermo/input/e;->g:I

    invoke-interface {v0, v2, v3}, Lcom/powermo/input/a;->a([Lcom/powermo/input/d;I)Z

    :cond_2
    invoke-direct {p0}, Lcom/powermo/input/e;->a()V

    :cond_3
    iput p1, p0, Lcom/powermo/input/e;->e:I

    iput p2, p0, Lcom/powermo/input/e;->f:I

    :cond_4
    iget v0, p0, Lcom/powermo/input/e;->f:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_5

    const/4 v1, 0x1

    :cond_5
    return v1
.end method

.method private b(F)I
    .locals 2

    const/high16 v0, 0x437f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    move p1, v0

    :cond_0
    float-to-int v0, p1

    return v0
.end method

.method private b()V
    .locals 3

    iget v0, p0, Lcom/powermo/input/e;->g:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/powermo/input/e;->h:Lcom/powermo/input/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powermo/input/e;->h:Lcom/powermo/input/a;

    iget-object v1, p0, Lcom/powermo/input/e;->b:[Lcom/powermo/input/d;

    iget v2, p0, Lcom/powermo/input/e;->g:I

    invoke-interface {v0, v1, v2}, Lcom/powermo/input/a;->a([Lcom/powermo/input/d;I)Z

    :cond_0
    invoke-direct {p0}, Lcom/powermo/input/e;->a()V

    :cond_1
    return-void
.end method

.method private c(F)I
    .locals 2

    const/high16 v0, 0x437f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    move p1, v0

    :cond_0
    float-to-int v0, p1

    return v0
.end method


# virtual methods
.method public a(Landroid/view/MotionEvent;Lcom/powermo/input/c;II)V
    .locals 9

    const v5, 0xff00

    const/4 v4, 0x6

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ltz v1, :cond_0

    if-le v1, v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p3, p4}, Lcom/powermo/input/e;->a(II)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    :cond_2
    move v8, v0

    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ge v8, v0, :cond_5

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    float-to-int v0, v0

    int-to-float v3, v0

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    int-to-float v4, v0

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v5

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getTouchMajor(I)F

    move-result v6

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getTouchMinor(I)F

    move-result v7

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v7}, Lcom/powermo/input/e;->a(Lcom/powermo/input/c;IFFFFF)V

    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_4

    and-int/lit16 v2, v1, 0xff

    const/4 v3, 0x5

    if-ne v2, v3, :cond_6

    :cond_4
    and-int v0, v1, v5

    shr-int/lit8 v0, v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v5

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getTouchMajor(I)F

    move-result v6

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getTouchMinor(I)F

    move-result v7

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v7}, Lcom/powermo/input/e;->a(Lcom/powermo/input/c;IFFFFF)V

    :cond_5
    :goto_2
    invoke-direct {p0}, Lcom/powermo/input/e;->b()V

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_6
    const/4 v2, 0x1

    if-eq v1, v2, :cond_7

    and-int/lit16 v2, v1, 0xff

    if-ne v2, v4, :cond_8

    :cond_7
    and-int v0, v1, v5

    shr-int/lit8 v0, v0, 0x8

    :try_start_1
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    const/high16 v3, 0x7fc0

    const/high16 v4, 0x7fc0

    const/high16 v5, 0x3f80

    const/high16 v6, 0x3f80

    const/high16 v7, 0x3f80

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v7}, Lcom/powermo/input/e;->a(Lcom/powermo/input/c;IFFFFF)V

    goto :goto_2

    :cond_8
    const/4 v2, 0x3

    if-ne v1, v2, :cond_5

    :goto_3
    iget-object v1, p0, Lcom/powermo/input/e;->b:[Lcom/powermo/input/d;

    array-length v1, v1

    if-ge v0, v1, :cond_5

    iget-object v1, p0, Lcom/powermo/input/e;->b:[Lcom/powermo/input/d;

    aget-object v1, v1, v0

    invoke-direct {p0, v1}, Lcom/powermo/input/e;->a(Lcom/powermo/input/d;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method
