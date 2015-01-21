.class final Lcom/powermo/input/a/i;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lcom/powermo/input/a/g;

.field private final b:[Lcom/powermo/input/a/j;

.field private final c:I

.field private final d:I

.field private final e:Lcom/powermo/input/a/a;

.field private f:Lcom/powermo/input/a/a;

.field private g:Ljava/util/concurrent/atomic/AtomicInteger;

.field private h:I

.field private i:I


# direct methods
.method constructor <init>(Lcom/powermo/input/a/g;)V
    .locals 5

    const/4 v4, 0x0

    const/16 v3, 0xa

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/powermo/input/a/i;->a:Lcom/powermo/input/a/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v1, v3, [Lcom/powermo/input/a/j;

    iput-object v1, p0, Lcom/powermo/input/a/i;->b:[Lcom/powermo/input/a/j;

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/powermo/input/a/a;->a(I)I

    move-result v1

    iput v1, p0, Lcom/powermo/input/a/i;->c:I

    const/4 v1, 0x3

    iput v1, p0, Lcom/powermo/input/a/i;->d:I

    invoke-direct {p0}, Lcom/powermo/input/a/i;->b()Lcom/powermo/input/a/a;

    move-result-object v1

    iput-object v1, p0, Lcom/powermo/input/a/i;->e:Lcom/powermo/input/a/a;

    iput-object v4, p0, Lcom/powermo/input/a/i;->f:Lcom/powermo/input/a/a;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v2, 0x45

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/powermo/input/a/i;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    iput v0, p0, Lcom/powermo/input/a/i;->h:I

    iput v0, p0, Lcom/powermo/input/a/i;->i:I

    :goto_0
    if-ge v0, v3, :cond_0

    iget-object v1, p0, Lcom/powermo/input/a/i;->b:[Lcom/powermo/input/a/j;

    new-instance v2, Lcom/powermo/input/a/j;

    invoke-direct {v2, p0, v4}, Lcom/powermo/input/a/j;-><init>(Lcom/powermo/input/a/i;Lcom/powermo/input/a/h;)V

    aput-object v2, v1, v0

    iget-object v1, p0, Lcom/powermo/input/a/i;->b:[Lcom/powermo/input/a/j;

    aget-object v1, v1, v0

    const/4 v2, -0x1

    iput v2, v1, Lcom/powermo/input/a/j;->a:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(F)I
    .locals 3

    const/16 v0, 0x3ff

    iget v1, p0, Lcom/powermo/input/a/i;->h:I

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

.method private b(F)I
    .locals 2

    const v0, 0x43ff8000

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    move p1, v0

    :cond_0
    float-to-int v0, p1

    return v0
.end method

.method private b()Lcom/powermo/input/a/a;
    .locals 2

    iget-object v0, p0, Lcom/powermo/input/a/i;->a:Lcom/powermo/input/a/g;

    iget v1, p0, Lcom/powermo/input/a/i;->c:I

    invoke-static {v0, v1}, Lcom/powermo/input/a/g;->a(Lcom/powermo/input/a/g;I)Lcom/powermo/input/a/a;

    move-result-object v0

    return-object v0
.end method

.method private b(II)Lcom/powermo/input/a/a;
    .locals 3

    iget-object v0, p0, Lcom/powermo/input/a/i;->a:Lcom/powermo/input/a/g;

    iget v1, p0, Lcom/powermo/input/a/i;->c:I

    const/4 v2, 0x3

    invoke-static {v0, v1, v2, p1, p2}, Lcom/powermo/input/a/g;->a(Lcom/powermo/input/a/g;IIII)Lcom/powermo/input/a/a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/powermo/input/a/i;->f:Lcom/powermo/input/a/a;

    iget-object v1, p0, Lcom/powermo/input/a/i;->e:Lcom/powermo/input/a/a;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/powermo/input/a/i;->f:Lcom/powermo/input/a/a;

    invoke-direct {p0}, Lcom/powermo/input/a/i;->b()Lcom/powermo/input/a/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powermo/input/a/a;->a(Lcom/powermo/input/a/a;)Lcom/powermo/input/a/a;

    iget-object v0, p0, Lcom/powermo/input/a/i;->a:Lcom/powermo/input/a/g;

    iget-object v1, p0, Lcom/powermo/input/a/i;->e:Lcom/powermo/input/a/a;

    invoke-virtual {v1}, Lcom/powermo/input/a/a;->c()Lcom/powermo/input/a/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powermo/input/a/g;->a(Lcom/powermo/input/a/a;)V

    :cond_0
    iget-object v0, p0, Lcom/powermo/input/a/i;->e:Lcom/powermo/input/a/a;

    invoke-virtual {v0, v2}, Lcom/powermo/input/a/a;->a(Lcom/powermo/input/a/a;)Lcom/powermo/input/a/a;

    iput-object v2, p0, Lcom/powermo/input/a/i;->f:Lcom/powermo/input/a/a;

    return-void
.end method

.method public a(Lcom/powermo/input/c;IFFFF)V
    .locals 7

    const/16 v0, 0xa

    if-lt p2, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    shl-int/2addr v0, p2

    iget v1, p0, Lcom/powermo/input/a/i;->i:I

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    invoke-virtual {p1, p3, p4, v0}, Lcom/powermo/input/c;->a(FFLandroid/graphics/PointF;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget v1, v0, Landroid/graphics/PointF;->x:F

    float-to-int v1, v1

    iget v0, v0, Landroid/graphics/PointF;->y:F

    float-to-int v2, v0

    invoke-direct {p0, p5}, Lcom/powermo/input/a/i;->a(F)I

    move-result v3

    invoke-direct {p0, p6}, Lcom/powermo/input/a/i;->b(F)I

    move-result v4

    iget-object v0, p0, Lcom/powermo/input/a/i;->b:[Lcom/powermo/input/a/j;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Lcom/powermo/input/a/j;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/powermo/input/a/i;->f:Lcom/powermo/input/a/a;

    const/16 v5, 0x2f

    invoke-direct {p0, v5, p2}, Lcom/powermo/input/a/i;->b(II)Lcom/powermo/input/a/a;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/powermo/input/a/a;->a(Lcom/powermo/input/a/a;)Lcom/powermo/input/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/powermo/input/a/i;->f:Lcom/powermo/input/a/a;

    iget-object v0, p0, Lcom/powermo/input/a/i;->b:[Lcom/powermo/input/a/j;

    aget-object v0, v0, p2

    iget v0, v0, Lcom/powermo/input/a/j;->d:I

    if-eq v0, v3, :cond_2

    iget-object v0, p0, Lcom/powermo/input/a/i;->f:Lcom/powermo/input/a/a;

    const/16 v5, 0x3a

    invoke-direct {p0, v5, v3}, Lcom/powermo/input/a/i;->b(II)Lcom/powermo/input/a/a;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/powermo/input/a/a;->a(Lcom/powermo/input/a/a;)Lcom/powermo/input/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/powermo/input/a/i;->f:Lcom/powermo/input/a/a;

    iget-object v0, p0, Lcom/powermo/input/a/i;->b:[Lcom/powermo/input/a/j;

    aget-object v0, v0, p2

    iput v3, v0, Lcom/powermo/input/a/j;->d:I

    :cond_2
    iget-object v0, p0, Lcom/powermo/input/a/i;->b:[Lcom/powermo/input/a/j;

    aget-object v0, v0, p2

    iget v0, v0, Lcom/powermo/input/a/j;->b:I

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/powermo/input/a/i;->f:Lcom/powermo/input/a/a;

    const/16 v3, 0x35

    invoke-direct {p0, v3, v1}, Lcom/powermo/input/a/i;->b(II)Lcom/powermo/input/a/a;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/powermo/input/a/a;->a(Lcom/powermo/input/a/a;)Lcom/powermo/input/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/powermo/input/a/i;->f:Lcom/powermo/input/a/a;

    iget-object v0, p0, Lcom/powermo/input/a/i;->b:[Lcom/powermo/input/a/j;

    aget-object v0, v0, p2

    iput v1, v0, Lcom/powermo/input/a/j;->b:I

    :cond_3
    iget-object v0, p0, Lcom/powermo/input/a/i;->b:[Lcom/powermo/input/a/j;

    aget-object v0, v0, p2

    iget v0, v0, Lcom/powermo/input/a/j;->c:I

    if-eq v0, v2, :cond_4

    iget-object v0, p0, Lcom/powermo/input/a/i;->f:Lcom/powermo/input/a/a;

    const/16 v1, 0x36

    invoke-direct {p0, v1, v2}, Lcom/powermo/input/a/i;->b(II)Lcom/powermo/input/a/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powermo/input/a/a;->a(Lcom/powermo/input/a/a;)Lcom/powermo/input/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/powermo/input/a/i;->f:Lcom/powermo/input/a/a;

    iget-object v0, p0, Lcom/powermo/input/a/i;->b:[Lcom/powermo/input/a/j;

    aget-object v0, v0, p2

    iput v2, v0, Lcom/powermo/input/a/j;->c:I

    :cond_4
    iget-object v0, p0, Lcom/powermo/input/a/i;->b:[Lcom/powermo/input/a/j;

    aget-object v0, v0, p2

    iget v0, v0, Lcom/powermo/input/a/j;->e:I

    if-eq v0, v4, :cond_0

    iget-object v0, p0, Lcom/powermo/input/a/i;->f:Lcom/powermo/input/a/a;

    const/16 v1, 0x30

    invoke-direct {p0, v1, v4}, Lcom/powermo/input/a/i;->b(II)Lcom/powermo/input/a/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powermo/input/a/a;->a(Lcom/powermo/input/a/a;)Lcom/powermo/input/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/powermo/input/a/i;->f:Lcom/powermo/input/a/a;

    iget-object v0, p0, Lcom/powermo/input/a/i;->b:[Lcom/powermo/input/a/j;

    aget-object v0, v0, p2

    iput v4, v0, Lcom/powermo/input/a/j;->e:I

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/powermo/input/a/i;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    const v5, 0xffff

    if-le v0, v5, :cond_6

    const/16 v0, 0x45

    iget-object v5, p0, Lcom/powermo/input/a/i;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v6, 0x45

    invoke-virtual {v5, v6}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :cond_6
    iget-object v5, p0, Lcom/powermo/input/a/i;->f:Lcom/powermo/input/a/a;

    const/16 v6, 0x2f

    invoke-direct {p0, v6, p2}, Lcom/powermo/input/a/i;->b(II)Lcom/powermo/input/a/a;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/powermo/input/a/a;->a(Lcom/powermo/input/a/a;)Lcom/powermo/input/a/a;

    move-result-object v5

    iput-object v5, p0, Lcom/powermo/input/a/i;->f:Lcom/powermo/input/a/a;

    iget-object v5, p0, Lcom/powermo/input/a/i;->f:Lcom/powermo/input/a/a;

    const/16 v6, 0x39

    invoke-direct {p0, v6, v0}, Lcom/powermo/input/a/i;->b(II)Lcom/powermo/input/a/a;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/powermo/input/a/a;->a(Lcom/powermo/input/a/a;)Lcom/powermo/input/a/a;

    move-result-object v5

    iput-object v5, p0, Lcom/powermo/input/a/i;->f:Lcom/powermo/input/a/a;

    iget-object v5, p0, Lcom/powermo/input/a/i;->f:Lcom/powermo/input/a/a;

    const/16 v6, 0x3a

    invoke-direct {p0, v6, v3}, Lcom/powermo/input/a/i;->b(II)Lcom/powermo/input/a/a;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/powermo/input/a/a;->a(Lcom/powermo/input/a/a;)Lcom/powermo/input/a/a;

    move-result-object v5

    iput-object v5, p0, Lcom/powermo/input/a/i;->f:Lcom/powermo/input/a/a;

    iget-object v5, p0, Lcom/powermo/input/a/i;->f:Lcom/powermo/input/a/a;

    const/16 v6, 0x35

    invoke-direct {p0, v6, v1}, Lcom/powermo/input/a/i;->b(II)Lcom/powermo/input/a/a;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/powermo/input/a/a;->a(Lcom/powermo/input/a/a;)Lcom/powermo/input/a/a;

    move-result-object v5

    iput-object v5, p0, Lcom/powermo/input/a/i;->f:Lcom/powermo/input/a/a;

    iget-object v5, p0, Lcom/powermo/input/a/i;->f:Lcom/powermo/input/a/a;

    const/16 v6, 0x36

    invoke-direct {p0, v6, v2}, Lcom/powermo/input/a/i;->b(II)Lcom/powermo/input/a/a;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/powermo/input/a/a;->a(Lcom/powermo/input/a/a;)Lcom/powermo/input/a/a;

    move-result-object v5

    iput-object v5, p0, Lcom/powermo/input/a/i;->f:Lcom/powermo/input/a/a;

    iget-object v5, p0, Lcom/powermo/input/a/i;->f:Lcom/powermo/input/a/a;

    const/16 v6, 0x30

    invoke-direct {p0, v6, v4}, Lcom/powermo/input/a/i;->b(II)Lcom/powermo/input/a/a;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/powermo/input/a/a;->a(Lcom/powermo/input/a/a;)Lcom/powermo/input/a/a;

    move-result-object v5

    iput-object v5, p0, Lcom/powermo/input/a/i;->f:Lcom/powermo/input/a/a;

    iget-object v5, p0, Lcom/powermo/input/a/i;->b:[Lcom/powermo/input/a/j;

    aget-object v5, v5, p2

    iput v0, v5, Lcom/powermo/input/a/j;->a:I

    iget-object v0, p0, Lcom/powermo/input/a/i;->b:[Lcom/powermo/input/a/j;

    aget-object v0, v0, p2

    iput v1, v0, Lcom/powermo/input/a/j;->b:I

    iget-object v0, p0, Lcom/powermo/input/a/i;->b:[Lcom/powermo/input/a/j;

    aget-object v0, v0, p2

    iput v2, v0, Lcom/powermo/input/a/j;->c:I

    iget-object v0, p0, Lcom/powermo/input/a/i;->b:[Lcom/powermo/input/a/j;

    aget-object v0, v0, p2

    iput v3, v0, Lcom/powermo/input/a/j;->d:I

    iget-object v0, p0, Lcom/powermo/input/a/i;->b:[Lcom/powermo/input/a/j;

    aget-object v0, v0, p2

    iput v4, v0, Lcom/powermo/input/a/j;->e:I

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/powermo/input/a/i;->b:[Lcom/powermo/input/a/j;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Lcom/powermo/input/a/j;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powermo/input/a/i;->f:Lcom/powermo/input/a/a;

    const/16 v1, 0x2f

    invoke-direct {p0, v1, p2}, Lcom/powermo/input/a/i;->b(II)Lcom/powermo/input/a/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powermo/input/a/a;->a(Lcom/powermo/input/a/a;)Lcom/powermo/input/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/powermo/input/a/i;->f:Lcom/powermo/input/a/a;

    iget-object v0, p0, Lcom/powermo/input/a/i;->f:Lcom/powermo/input/a/a;

    const/16 v1, 0x3a

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/powermo/input/a/i;->b(II)Lcom/powermo/input/a/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powermo/input/a/a;->a(Lcom/powermo/input/a/a;)Lcom/powermo/input/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/powermo/input/a/i;->f:Lcom/powermo/input/a/a;

    iget-object v0, p0, Lcom/powermo/input/a/i;->f:Lcom/powermo/input/a/a;

    const/16 v1, 0x30

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/powermo/input/a/i;->b(II)Lcom/powermo/input/a/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powermo/input/a/a;->a(Lcom/powermo/input/a/a;)Lcom/powermo/input/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/powermo/input/a/i;->f:Lcom/powermo/input/a/a;

    iget-object v0, p0, Lcom/powermo/input/a/i;->f:Lcom/powermo/input/a/a;

    invoke-direct {p0}, Lcom/powermo/input/a/i;->b()Lcom/powermo/input/a/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powermo/input/a/a;->a(Lcom/powermo/input/a/a;)Lcom/powermo/input/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/powermo/input/a/i;->f:Lcom/powermo/input/a/a;

    iget-object v0, p0, Lcom/powermo/input/a/i;->f:Lcom/powermo/input/a/a;

    const/16 v1, 0x2f

    invoke-direct {p0, v1, p2}, Lcom/powermo/input/a/i;->b(II)Lcom/powermo/input/a/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powermo/input/a/a;->a(Lcom/powermo/input/a/a;)Lcom/powermo/input/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/powermo/input/a/i;->f:Lcom/powermo/input/a/a;

    iget-object v0, p0, Lcom/powermo/input/a/i;->f:Lcom/powermo/input/a/a;

    const/16 v1, 0x39

    const/4 v2, -0x1

    invoke-direct {p0, v1, v2}, Lcom/powermo/input/a/i;->b(II)Lcom/powermo/input/a/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powermo/input/a/a;->a(Lcom/powermo/input/a/a;)Lcom/powermo/input/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/powermo/input/a/i;->f:Lcom/powermo/input/a/a;

    iget-object v0, p0, Lcom/powermo/input/a/i;->b:[Lcom/powermo/input/a/j;

    aget-object v0, v0, p2

    const/4 v1, -0x1

    iput v1, v0, Lcom/powermo/input/a/j;->a:I

    goto/16 :goto_0
.end method

.method public a(II)Z
    .locals 5

    const/4 v1, 0x0

    const/4 v4, -0x1

    iget-object v0, p0, Lcom/powermo/input/a/i;->e:Lcom/powermo/input/a/a;

    iput-object v0, p0, Lcom/powermo/input/a/i;->f:Lcom/powermo/input/a/a;

    iget v0, p0, Lcom/powermo/input/a/i;->h:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/powermo/input/a/i;->i:I

    if-eq v0, p2, :cond_3

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/powermo/input/a/i;->b:[Lcom/powermo/input/a/j;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/powermo/input/a/i;->b:[Lcom/powermo/input/a/j;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/powermo/input/a/j;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/powermo/input/a/i;->f:Lcom/powermo/input/a/a;

    const/16 v3, 0x2f

    invoke-direct {p0, v3, v0}, Lcom/powermo/input/a/i;->b(II)Lcom/powermo/input/a/a;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/powermo/input/a/a;->a(Lcom/powermo/input/a/a;)Lcom/powermo/input/a/a;

    move-result-object v2

    iput-object v2, p0, Lcom/powermo/input/a/i;->f:Lcom/powermo/input/a/a;

    iget-object v2, p0, Lcom/powermo/input/a/i;->f:Lcom/powermo/input/a/a;

    const/16 v3, 0x39

    invoke-direct {p0, v3, v4}, Lcom/powermo/input/a/i;->b(II)Lcom/powermo/input/a/a;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/powermo/input/a/a;->a(Lcom/powermo/input/a/a;)Lcom/powermo/input/a/a;

    move-result-object v2

    iput-object v2, p0, Lcom/powermo/input/a/i;->f:Lcom/powermo/input/a/a;

    iget-object v2, p0, Lcom/powermo/input/a/i;->f:Lcom/powermo/input/a/a;

    invoke-direct {p0}, Lcom/powermo/input/a/i;->b()Lcom/powermo/input/a/a;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/powermo/input/a/a;->a(Lcom/powermo/input/a/a;)Lcom/powermo/input/a/a;

    move-result-object v2

    iput-object v2, p0, Lcom/powermo/input/a/i;->f:Lcom/powermo/input/a/a;

    iget-object v2, p0, Lcom/powermo/input/a/i;->b:[Lcom/powermo/input/a/j;

    aget-object v2, v2, v0

    iput v4, v2, Lcom/powermo/input/a/j;->a:I

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iput p1, p0, Lcom/powermo/input/a/i;->h:I

    iput p2, p0, Lcom/powermo/input/a/i;->i:I

    :cond_3
    iget v0, p0, Lcom/powermo/input/a/i;->i:I

    if-eq v0, v4, :cond_4

    const/4 v1, 0x1

    :cond_4
    return v1
.end method
