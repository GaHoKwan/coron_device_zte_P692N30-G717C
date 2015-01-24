.class public Lcom/android/mipop/cropimage/y;
.super Lcom/android/mipop/cropimage/m;


# instance fields
.field private dQ:I

.field private dR:I

.field private gX:I

.field private gY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mipop/cropimage/m;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private be()V
    .locals 5

    iget-object v0, p0, Lcom/android/mipop/cropimage/y;->cg:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/android/mipop/cropimage/y;->cg:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->right:I

    iget v0, p0, Lcom/android/mipop/cropimage/y;->dQ:I

    iget v3, p0, Lcom/android/mipop/cropimage/y;->gX:I

    sub-int/2addr v0, v3

    add-int v3, v1, v0

    iget v4, p0, Lcom/android/mipop/cropimage/y;->cb:I

    if-ge v3, v4, :cond_0

    iget v0, p0, Lcom/android/mipop/cropimage/y;->cb:I

    sub-int/2addr v0, v1

    :cond_0
    add-int v3, v1, v0

    if-le v3, v2, :cond_1

    iget-object v3, p0, Lcom/android/mipop/cropimage/y;->cg:Landroid/graphics/Rect;

    iput v2, v3, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/mipop/cropimage/y;->cg:Landroid/graphics/Rect;

    add-int/2addr v0, v1

    iput v0, v2, Landroid/graphics/Rect;->right:I

    iget v0, p0, Lcom/android/mipop/cropimage/y;->ca:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/mipop/cropimage/y;->ca:I

    iget v0, p0, Lcom/android/mipop/cropimage/y;->ca:I

    add-int/lit8 v0, v0, 0x64

    iput v0, p0, Lcom/android/mipop/cropimage/y;->ca:I

    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/mipop/cropimage/y;->cg:Landroid/graphics/Rect;

    add-int/2addr v0, v1

    iput v0, v2, Landroid/graphics/Rect;->left:I

    goto :goto_0
.end method

.method private bf()V
    .locals 5

    iget-object v0, p0, Lcom/android/mipop/cropimage/y;->cg:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/android/mipop/cropimage/y;->cg:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, p0, Lcom/android/mipop/cropimage/y;->dR:I

    iget v3, p0, Lcom/android/mipop/cropimage/y;->gY:I

    sub-int/2addr v0, v3

    add-int v3, v1, v0

    iget v4, p0, Lcom/android/mipop/cropimage/y;->cc:I

    if-ge v3, v4, :cond_0

    iget v0, p0, Lcom/android/mipop/cropimage/y;->cc:I

    sub-int/2addr v0, v1

    :cond_0
    add-int v3, v1, v0

    if-le v3, v2, :cond_1

    iget-object v3, p0, Lcom/android/mipop/cropimage/y;->cg:Landroid/graphics/Rect;

    iput v2, v3, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/mipop/cropimage/y;->cg:Landroid/graphics/Rect;

    add-int/2addr v0, v1

    iput v0, v2, Landroid/graphics/Rect;->bottom:I

    iget v0, p0, Lcom/android/mipop/cropimage/y;->ca:I

    add-int/lit8 v0, v0, -0xa

    iput v0, p0, Lcom/android/mipop/cropimage/y;->ca:I

    iget v0, p0, Lcom/android/mipop/cropimage/y;->ca:I

    add-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/android/mipop/cropimage/y;->ca:I

    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/mipop/cropimage/y;->cg:Landroid/graphics/Rect;

    add-int/2addr v0, v1

    iput v0, v2, Landroid/graphics/Rect;->top:I

    goto :goto_0
.end method

.method private bg()V
    .locals 6

    iget-object v0, p0, Lcom/android/mipop/cropimage/y;->cg:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/android/mipop/cropimage/y;->cg:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, p0, Lcom/android/mipop/cropimage/y;->dR:I

    iget v3, p0, Lcom/android/mipop/cropimage/y;->gY:I

    sub-int/2addr v0, v3

    add-int v3, v2, v0

    iget v4, p0, Lcom/android/mipop/cropimage/y;->bY:I

    iget v5, p0, Lcom/android/mipop/cropimage/y;->cc:I

    add-int/2addr v4, v5

    if-le v3, v4, :cond_0

    iget v0, p0, Lcom/android/mipop/cropimage/y;->bY:I

    iget v3, p0, Lcom/android/mipop/cropimage/y;->cc:I

    add-int/2addr v0, v3

    sub-int/2addr v0, v2

    :cond_0
    add-int v3, v2, v0

    if-ge v3, v1, :cond_1

    iget-object v3, p0, Lcom/android/mipop/cropimage/y;->cg:Landroid/graphics/Rect;

    add-int/2addr v0, v2

    iput v0, v3, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/android/mipop/cropimage/y;->cg:Landroid/graphics/Rect;

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, p0, Lcom/android/mipop/cropimage/y;->ca:I

    add-int/lit16 v0, v0, -0x3e8

    iput v0, p0, Lcom/android/mipop/cropimage/y;->ca:I

    iget v0, p0, Lcom/android/mipop/cropimage/y;->ca:I

    add-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/android/mipop/cropimage/y;->ca:I

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/mipop/cropimage/y;->cg:Landroid/graphics/Rect;

    add-int/2addr v0, v2

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0
.end method

.method private bh()V
    .locals 6

    iget-object v0, p0, Lcom/android/mipop/cropimage/y;->cg:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/android/mipop/cropimage/y;->cg:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->right:I

    iget v0, p0, Lcom/android/mipop/cropimage/y;->dQ:I

    iget v3, p0, Lcom/android/mipop/cropimage/y;->gX:I

    sub-int/2addr v0, v3

    add-int v3, v2, v0

    iget v4, p0, Lcom/android/mipop/cropimage/y;->bX:I

    iget v5, p0, Lcom/android/mipop/cropimage/y;->cb:I

    add-int/2addr v4, v5

    if-le v3, v4, :cond_0

    iget v0, p0, Lcom/android/mipop/cropimage/y;->bX:I

    iget v3, p0, Lcom/android/mipop/cropimage/y;->cb:I

    add-int/2addr v0, v3

    sub-int/2addr v0, v2

    :cond_0
    add-int v3, v2, v0

    if-ge v3, v1, :cond_1

    iget-object v3, p0, Lcom/android/mipop/cropimage/y;->cg:Landroid/graphics/Rect;

    add-int/2addr v0, v2

    iput v0, v3, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/android/mipop/cropimage/y;->cg:Landroid/graphics/Rect;

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget v0, p0, Lcom/android/mipop/cropimage/y;->ca:I

    add-int/lit8 v0, v0, -0x64

    iput v0, p0, Lcom/android/mipop/cropimage/y;->ca:I

    iget v0, p0, Lcom/android/mipop/cropimage/y;->ca:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/mipop/cropimage/y;->ca:I

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/mipop/cropimage/y;->cg:Landroid/graphics/Rect;

    add-int/2addr v0, v2

    iput v0, v1, Landroid/graphics/Rect;->right:I

    goto :goto_0
.end method

.method private bi()V
    .locals 6

    iget v0, p0, Lcom/android/mipop/cropimage/y;->dQ:I

    iget v1, p0, Lcom/android/mipop/cropimage/y;->gX:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/mipop/cropimage/y;->dR:I

    iget v2, p0, Lcom/android/mipop/cropimage/y;->gY:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/mipop/cropimage/y;->cg:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v0

    iget v3, p0, Lcom/android/mipop/cropimage/y;->cb:I

    if-ge v2, v3, :cond_0

    iget v0, p0, Lcom/android/mipop/cropimage/y;->cb:I

    iget-object v2, p0, Lcom/android/mipop/cropimage/y;->cg:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v2

    :cond_0
    iget-object v2, p0, Lcom/android/mipop/cropimage/y;->cg:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v0

    iget v3, p0, Lcom/android/mipop/cropimage/y;->bX:I

    iget v4, p0, Lcom/android/mipop/cropimage/y;->cb:I

    add-int/2addr v3, v4

    if-le v2, v3, :cond_1

    iget v0, p0, Lcom/android/mipop/cropimage/y;->bX:I

    iget v2, p0, Lcom/android/mipop/cropimage/y;->cb:I

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/android/mipop/cropimage/y;->cg:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v2

    :cond_1
    iget-object v2, p0, Lcom/android/mipop/cropimage/y;->cg:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v1

    iget v3, p0, Lcom/android/mipop/cropimage/y;->cc:I

    if-ge v2, v3, :cond_2

    iget v1, p0, Lcom/android/mipop/cropimage/y;->cc:I

    iget-object v2, p0, Lcom/android/mipop/cropimage/y;->cg:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    :cond_2
    iget-object v2, p0, Lcom/android/mipop/cropimage/y;->cg:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v1

    iget v3, p0, Lcom/android/mipop/cropimage/y;->bY:I

    iget v4, p0, Lcom/android/mipop/cropimage/y;->cc:I

    add-int/2addr v3, v4

    if-le v2, v3, :cond_3

    iget v1, p0, Lcom/android/mipop/cropimage/y;->bY:I

    iget v2, p0, Lcom/android/mipop/cropimage/y;->cc:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/mipop/cropimage/y;->cg:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    :cond_3
    iget-object v2, p0, Lcom/android/mipop/cropimage/y;->cg:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/mipop/cropimage/y;->cg:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v0

    iget-object v4, p0, Lcom/android/mipop/cropimage/y;->cg:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v1

    iget-object v5, p0, Lcom/android/mipop/cropimage/y;->cg:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v5

    iget-object v5, p0, Lcom/android/mipop/cropimage/y;->cg:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v5

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private bj()V
    .locals 5

    iget-object v0, p0, Lcom/android/mipop/cropimage/y;->cg:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/mipop/cropimage/y;->cg:Landroid/graphics/Rect;

    :cond_0
    iget-object v0, p0, Lcom/android/mipop/cropimage/y;->cg:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/mipop/cropimage/y;->dQ:I

    iget v2, p0, Lcom/android/mipop/cropimage/y;->dR:I

    iget v3, p0, Lcom/android/mipop/cropimage/y;->dQ:I

    iget v4, p0, Lcom/android/mipop/cropimage/y;->dR:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    const/16 v0, 0x3e9

    iput v0, p0, Lcom/android/mipop/cropimage/y;->ca:I

    return-void
.end method

.method private m(II)I
    .locals 7

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/android/mipop/cropimage/y;->cg:Landroid/graphics/Rect;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/mipop/cropimage/y;->cg:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/mipop/cropimage/y;->cg:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/android/mipop/cropimage/y;->cg:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/android/mipop/cropimage/y;->cg:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget v5, p0, Lcom/android/mipop/cropimage/y;->bZ:I

    sub-int v6, v1, v5

    if-lt p1, v6, :cond_2

    add-int v6, v1, v5

    if-gt p1, v6, :cond_2

    add-int v6, v3, v5

    if-gt p2, v6, :cond_2

    sub-int v6, v3, v5

    if-lt p2, v6, :cond_2

    const/16 v0, 0xb

    goto :goto_0

    :cond_2
    sub-int v6, v2, v5

    if-lt p1, v6, :cond_3

    add-int v6, v2, v5

    if-gt p1, v6, :cond_3

    add-int v6, v3, v5

    if-gt p2, v6, :cond_3

    sub-int v6, v3, v5

    if-lt p2, v6, :cond_3

    const/16 v0, 0x6e

    goto :goto_0

    :cond_3
    sub-int v6, v2, v5

    if-lt p1, v6, :cond_4

    add-int v6, v2, v5

    if-gt p1, v6, :cond_4

    add-int v6, v4, v5

    if-gt p2, v6, :cond_4

    sub-int v6, v4, v5

    if-lt p2, v6, :cond_4

    const/16 v0, 0x44c

    goto :goto_0

    :cond_4
    sub-int v6, v1, v5

    if-lt p1, v6, :cond_5

    add-int v6, v1, v5

    if-gt p1, v6, :cond_5

    add-int v6, v4, v5

    if-gt p2, v6, :cond_5

    sub-int v6, v4, v5

    if-lt p2, v6, :cond_5

    const/16 v0, 0x3e9

    goto :goto_0

    :cond_5
    sub-int v6, v1, v5

    if-lt p1, v6, :cond_6

    add-int v6, v1, v5

    if-gt p1, v6, :cond_6

    add-int v6, v4, v5

    if-gt p2, v6, :cond_6

    sub-int v6, v3, v5

    if-lt p2, v6, :cond_6

    const/4 v0, 0x1

    goto :goto_0

    :cond_6
    sub-int v6, v1, v5

    if-lt p1, v6, :cond_7

    add-int v6, v2, v5

    if-gt p1, v6, :cond_7

    add-int v6, v3, v5

    if-ge p2, v6, :cond_7

    sub-int v6, v3, v5

    if-le p2, v6, :cond_7

    const/16 v0, 0xa

    goto/16 :goto_0

    :cond_7
    sub-int v6, v2, v5

    if-lt p1, v6, :cond_8

    add-int v6, v2, v5

    if-gt p1, v6, :cond_8

    add-int v6, v4, v5

    if-ge p2, v6, :cond_8

    sub-int v6, v3, v5

    if-le p2, v6, :cond_8

    const/16 v0, 0x64

    goto/16 :goto_0

    :cond_8
    sub-int v6, v1, v5

    if-lt p1, v6, :cond_9

    add-int v6, v2, v5

    if-gt p1, v6, :cond_9

    add-int v6, v4, v5

    if-ge p2, v6, :cond_9

    sub-int v6, v4, v5

    if-le p2, v6, :cond_9

    const/16 v0, 0x3e8

    goto/16 :goto_0

    :cond_9
    add-int/2addr v1, v5

    if-lt p1, v1, :cond_0

    sub-int v1, v2, v5

    if-gt p1, v1, :cond_0

    sub-int v1, v4, v5

    if-ge p2, v1, :cond_0

    add-int v1, v3, v5

    if-le p2, v1, :cond_0

    const/4 v0, 0x2

    goto/16 :goto_0
.end method


# virtual methods
.method public a(II)V
    .locals 2

    iput p1, p0, Lcom/android/mipop/cropimage/y;->dQ:I

    iput p2, p0, Lcom/android/mipop/cropimage/y;->dR:I

    iget v0, p0, Lcom/android/mipop/cropimage/y;->dQ:I

    iput v0, p0, Lcom/android/mipop/cropimage/y;->gX:I

    iget v0, p0, Lcom/android/mipop/cropimage/y;->dR:I

    iput v0, p0, Lcom/android/mipop/cropimage/y;->gY:I

    iget v0, p0, Lcom/android/mipop/cropimage/y;->dQ:I

    iget v1, p0, Lcom/android/mipop/cropimage/y;->dR:I

    invoke-direct {p0, v0, v1}, Lcom/android/mipop/cropimage/y;->m(II)I

    move-result v0

    iput v0, p0, Lcom/android/mipop/cropimage/y;->ca:I

    return-void
.end method

.method public a([Landroid/graphics/Point;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    array-length v0, p1

    if-ge v0, v3, :cond_0

    aget-object v0, p1, v4

    if-nez v0, :cond_0

    aget-object v0, p1, v3

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mipop/cropimage/y;->cg:Landroid/graphics/Rect;

    if-nez v0, :cond_1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/mipop/cropimage/y;->cg:Landroid/graphics/Rect;

    :cond_1
    iget-object v1, p0, Lcom/android/mipop/cropimage/y;->cg:Landroid/graphics/Rect;

    aget-object v0, p1, v4

    iget v0, v0, Landroid/graphics/Point;->x:I

    aget-object v2, p1, v3

    iget v2, v2, Landroid/graphics/Point;->x:I

    if-le v0, v2, :cond_2

    aget-object v0, p1, v3

    iget v0, v0, Landroid/graphics/Point;->x:I

    :goto_1
    iput v0, v1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/mipop/cropimage/y;->cg:Landroid/graphics/Rect;

    aget-object v0, p1, v4

    iget v0, v0, Landroid/graphics/Point;->x:I

    aget-object v2, p1, v3

    iget v2, v2, Landroid/graphics/Point;->x:I

    if-le v0, v2, :cond_3

    aget-object v0, p1, v4

    iget v0, v0, Landroid/graphics/Point;->x:I

    :goto_2
    iput v0, v1, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/android/mipop/cropimage/y;->cg:Landroid/graphics/Rect;

    aget-object v0, p1, v4

    iget v0, v0, Landroid/graphics/Point;->y:I

    aget-object v2, p1, v3

    iget v2, v2, Landroid/graphics/Point;->y:I

    if-le v0, v2, :cond_4

    aget-object v0, p1, v3

    iget v0, v0, Landroid/graphics/Point;->y:I

    :goto_3
    iput v0, v1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/android/mipop/cropimage/y;->cg:Landroid/graphics/Rect;

    aget-object v0, p1, v4

    iget v0, v0, Landroid/graphics/Point;->y:I

    aget-object v2, p1, v3

    iget v2, v2, Landroid/graphics/Point;->y:I

    if-le v0, v2, :cond_5

    aget-object v0, p1, v4

    iget v0, v0, Landroid/graphics/Point;->y:I

    :goto_4
    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Lcom/android/mipop/cropimage/y;->z()V

    goto :goto_0

    :cond_2
    aget-object v0, p1, v4

    iget v0, v0, Landroid/graphics/Point;->x:I

    goto :goto_1

    :cond_3
    aget-object v0, p1, v3

    iget v0, v0, Landroid/graphics/Point;->x:I

    goto :goto_2

    :cond_4
    aget-object v0, p1, v4

    iget v0, v0, Landroid/graphics/Point;->y:I

    goto :goto_3

    :cond_5
    aget-object v0, p1, v3

    iget v0, v0, Landroid/graphics/Point;->y:I

    goto :goto_4
.end method

.method public b(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8

    iget-object v0, p0, Lcom/android/mipop/cropimage/y;->cg:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mipop/cropimage/y;->cg:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mipop/cropimage/y;->cg:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    iget-object v0, p0, Lcom/android/mipop/cropimage/y;->cg:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/mipop/cropimage/y;->cg:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/mipop/cropimage/y;->cg:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v2, p0, Lcom/android/mipop/cropimage/y;->cg:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget v4, p0, Lcom/android/mipop/cropimage/y;->cb:I

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/android/mipop/cropimage/y;->cb:I

    sub-int/2addr v0, v4

    :cond_2
    iget v4, p0, Lcom/android/mipop/cropimage/y;->cc:I

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/android/mipop/cropimage/y;->cc:I

    sub-int/2addr v1, v4

    :cond_3
    iget v4, p0, Lcom/android/mipop/cropimage/y;->cm:F

    const/high16 v5, 0x3f80

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_6

    int-to-float v0, v0

    iget v4, p0, Lcom/android/mipop/cropimage/y;->cm:F

    mul-float/2addr v0, v4

    float-to-int v5, v0

    int-to-float v0, v1

    iget v1, p0, Lcom/android/mipop/cropimage/y;->cm:F

    mul-float/2addr v0, v1

    float-to-int v4, v0

    int-to-float v0, v3

    iget v1, p0, Lcom/android/mipop/cropimage/y;->cm:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    add-int v1, v0, v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-le v1, v3, :cond_4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    sub-int/2addr v0, v5

    :cond_4
    int-to-float v1, v2

    iget v2, p0, Lcom/android/mipop/cropimage/y;->cm:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    add-int v2, v1, v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-le v2, v3, :cond_5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sub-int/2addr v1, v4

    :cond_5
    move v2, v4

    move v3, v5

    :goto_1
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/mipop/cropimage/y;->cg:Landroid/graphics/Rect;

    invoke-static {p1, v3, v2, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    :cond_6
    move v6, v2

    move v2, v1

    move v1, v6

    move v7, v3

    move v3, v0

    move v0, v7

    goto :goto_1
.end method

.method public b(II)V
    .locals 1

    iput p1, p0, Lcom/android/mipop/cropimage/y;->dQ:I

    iput p2, p0, Lcom/android/mipop/cropimage/y;->dR:I

    iget v0, p0, Lcom/android/mipop/cropimage/y;->ca:I

    sparse-switch v0, :sswitch_data_0

    :goto_0
    iget v0, p0, Lcom/android/mipop/cropimage/y;->dQ:I

    iput v0, p0, Lcom/android/mipop/cropimage/y;->gX:I

    iget v0, p0, Lcom/android/mipop/cropimage/y;->dR:I

    iput v0, p0, Lcom/android/mipop/cropimage/y;->gY:I

    invoke-virtual {p0}, Lcom/android/mipop/cropimage/y;->z()V

    return-void

    :sswitch_0
    invoke-direct {p0}, Lcom/android/mipop/cropimage/y;->be()V

    invoke-direct {p0}, Lcom/android/mipop/cropimage/y;->bf()V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Lcom/android/mipop/cropimage/y;->bh()V

    invoke-direct {p0}, Lcom/android/mipop/cropimage/y;->bf()V

    goto :goto_0

    :sswitch_2
    invoke-direct {p0}, Lcom/android/mipop/cropimage/y;->bh()V

    invoke-direct {p0}, Lcom/android/mipop/cropimage/y;->bg()V

    goto :goto_0

    :sswitch_3
    invoke-direct {p0}, Lcom/android/mipop/cropimage/y;->be()V

    invoke-direct {p0}, Lcom/android/mipop/cropimage/y;->bg()V

    goto :goto_0

    :sswitch_4
    invoke-direct {p0}, Lcom/android/mipop/cropimage/y;->be()V

    goto :goto_0

    :sswitch_5
    invoke-direct {p0}, Lcom/android/mipop/cropimage/y;->bf()V

    goto :goto_0

    :sswitch_6
    invoke-direct {p0}, Lcom/android/mipop/cropimage/y;->bh()V

    goto :goto_0

    :sswitch_7
    invoke-direct {p0}, Lcom/android/mipop/cropimage/y;->bg()V

    goto :goto_0

    :sswitch_8
    invoke-direct {p0}, Lcom/android/mipop/cropimage/y;->bi()V

    goto :goto_0

    :sswitch_9
    invoke-direct {p0}, Lcom/android/mipop/cropimage/y;->bj()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_8
        0x3 -> :sswitch_9
        0xa -> :sswitch_5
        0xb -> :sswitch_0
        0x64 -> :sswitch_6
        0x6e -> :sswitch_1
        0x3e8 -> :sswitch_7
        0x3e9 -> :sswitch_3
        0x44c -> :sswitch_2
    .end sparse-switch
.end method

.method public c(II)V
    .locals 0

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/android/mipop/cropimage/m;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/android/mipop/cropimage/y;->cg:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mipop/cropimage/y;->cg:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mipop/cropimage/y;->cg:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mipop/cropimage/y;->cg:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/mipop/cropimage/y;->cd:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/mipop/cropimage/y;->cl:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/mipop/cropimage/y;->cn:[Landroid/graphics/Point;

    aget-object v1, v1, v3

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/mipop/cropimage/y;->cn:[Landroid/graphics/Point;

    aget-object v2, v2, v3

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/mipop/cropimage/y;->cd:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/mipop/cropimage/y;->cl:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/mipop/cropimage/y;->cn:[Landroid/graphics/Point;

    aget-object v1, v1, v4

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/mipop/cropimage/y;->cn:[Landroid/graphics/Point;

    aget-object v2, v2, v4

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/mipop/cropimage/y;->cd:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/mipop/cropimage/y;->cl:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/mipop/cropimage/y;->cn:[Landroid/graphics/Point;

    aget-object v1, v1, v5

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/mipop/cropimage/y;->cn:[Landroid/graphics/Point;

    aget-object v2, v2, v5

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/mipop/cropimage/y;->cd:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/mipop/cropimage/y;->cl:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/mipop/cropimage/y;->cn:[Landroid/graphics/Point;

    aget-object v1, v1, v6

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/mipop/cropimage/y;->cn:[Landroid/graphics/Point;

    aget-object v2, v2, v6

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/mipop/cropimage/y;->cd:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method
