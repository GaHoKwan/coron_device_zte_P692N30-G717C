.class public Lcom/android/mipop/cropimage/k;
.super Lcom/android/mipop/cropimage/m;


# instance fields
.field private aX:Landroid/graphics/Path;

.field private aY:I

.field private aZ:I

.field private ba:Ljava/util/List;

.field private bb:Landroid/graphics/RectF;

.field private bc:Z

.field private bd:Z

.field private be:Landroid/graphics/Point;

.field private bf:Z

.field private bg:I

.field private bh:I

.field private bi:I

.field private bj:I

.field bk:[[I

.field private mBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/android/mipop/cropimage/m;-><init>(Landroid/content/Context;)V

    iput-boolean v1, p0, Lcom/android/mipop/cropimage/k;->bc:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mipop/cropimage/k;->bd:Z

    iput-boolean v1, p0, Lcom/android/mipop/cropimage/k;->bf:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mipop/cropimage/k;->ba:Ljava/util/List;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/mipop/cropimage/k;->bb:Landroid/graphics/RectF;

    return-void
.end method

.method private a(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 6

    iget v0, p1, Landroid/graphics/Point;->y:I

    iget v1, p3, Landroid/graphics/Point;->y:I

    if-ne v0, v1, :cond_2

    :goto_0
    iget v0, p1, Landroid/graphics/Point;->x:I

    iget v1, p2, Landroid/graphics/Point;->x:I

    if-ne v0, v1, :cond_6

    iget v0, p2, Landroid/graphics/Point;->y:I

    iget v1, p1, Landroid/graphics/Point;->y:I

    if-le v0, v1, :cond_0

    iget v0, p1, Landroid/graphics/Point;->y:I

    iget v1, p4, Landroid/graphics/Point;->y:I

    if-gt v0, v1, :cond_1

    :cond_0
    iget v0, p2, Landroid/graphics/Point;->y:I

    iget v1, p1, Landroid/graphics/Point;->y:I

    if-ge v0, v1, :cond_4

    iget v0, p1, Landroid/graphics/Point;->y:I

    iget v1, p4, Landroid/graphics/Point;->y:I

    if-ge v0, v1, :cond_4

    :cond_1
    iget v0, p2, Landroid/graphics/Point;->y:I

    iget v1, p1, Landroid/graphics/Point;->y:I

    if-ge v0, v1, :cond_3

    iget v0, p2, Landroid/graphics/Point;->y:I

    :goto_1
    iget v1, p1, Landroid/graphics/Point;->y:I

    if-ge v0, v1, :cond_7

    iget-object v1, p0, Lcom/android/mipop/cropimage/k;->bk:[[I

    iget v2, p0, Lcom/android/mipop/cropimage/k;->bh:I

    sub-int v2, v0, v2

    aget-object v1, v1, v2

    iget v2, p1, Landroid/graphics/Point;->x:I

    iget v3, p0, Lcom/android/mipop/cropimage/k;->bg:I

    sub-int/2addr v2, v3

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object p4, p3

    goto :goto_0

    :cond_3
    iget v0, p2, Landroid/graphics/Point;->y:I

    :goto_2
    iget v1, p1, Landroid/graphics/Point;->y:I

    if-le v0, v1, :cond_7

    iget-object v1, p0, Lcom/android/mipop/cropimage/k;->bk:[[I

    iget v2, p0, Lcom/android/mipop/cropimage/k;->bh:I

    sub-int v2, v0, v2

    aget-object v1, v1, v2

    iget v2, p1, Landroid/graphics/Point;->x:I

    iget v3, p0, Lcom/android/mipop/cropimage/k;->bg:I

    sub-int/2addr v2, v3

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_4
    iget v0, p2, Landroid/graphics/Point;->y:I

    iget v1, p1, Landroid/graphics/Point;->y:I

    if-ge v0, v1, :cond_5

    iget v0, p2, Landroid/graphics/Point;->y:I

    :goto_3
    iget v1, p1, Landroid/graphics/Point;->y:I

    if-gt v0, v1, :cond_7

    iget-object v1, p0, Lcom/android/mipop/cropimage/k;->bk:[[I

    iget v2, p0, Lcom/android/mipop/cropimage/k;->bh:I

    sub-int v2, v0, v2

    aget-object v1, v1, v2

    iget v2, p1, Landroid/graphics/Point;->x:I

    iget v3, p0, Lcom/android/mipop/cropimage/k;->bg:I

    sub-int/2addr v2, v3

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    iget v0, p2, Landroid/graphics/Point;->y:I

    :goto_4
    iget v1, p1, Landroid/graphics/Point;->y:I

    if-lt v0, v1, :cond_7

    iget-object v1, p0, Lcom/android/mipop/cropimage/k;->bk:[[I

    iget v2, p0, Lcom/android/mipop/cropimage/k;->bh:I

    sub-int v2, v0, v2

    aget-object v1, v1, v2

    iget v2, p1, Landroid/graphics/Point;->x:I

    iget v3, p0, Lcom/android/mipop/cropimage/k;->bg:I

    sub-int/2addr v2, v3

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    :cond_6
    iget v0, p1, Landroid/graphics/Point;->y:I

    iget v1, p2, Landroid/graphics/Point;->y:I

    if-ne v0, v1, :cond_8

    :cond_7
    return-void

    :cond_8
    iget v0, p1, Landroid/graphics/Point;->y:I

    iget v1, p2, Landroid/graphics/Point;->y:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p1, Landroid/graphics/Point;->x:I

    iget v2, p2, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float v2, v0, v1

    iget v0, p2, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    iget v1, p2, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    mul-float/2addr v1, v2

    sub-float v3, v0, v1

    iget v0, p2, Landroid/graphics/Point;->y:I

    iget v1, p1, Landroid/graphics/Point;->y:I

    if-le v0, v1, :cond_9

    iget v0, p1, Landroid/graphics/Point;->y:I

    iget v1, p4, Landroid/graphics/Point;->y:I

    if-gt v0, v1, :cond_a

    :cond_9
    iget v0, p2, Landroid/graphics/Point;->y:I

    iget v1, p1, Landroid/graphics/Point;->y:I

    if-ge v0, v1, :cond_10

    iget v0, p1, Landroid/graphics/Point;->y:I

    iget v1, p4, Landroid/graphics/Point;->y:I

    if-ge v0, v1, :cond_10

    :cond_a
    iget v0, p2, Landroid/graphics/Point;->y:I

    iget v1, p1, Landroid/graphics/Point;->y:I

    if-ge v0, v1, :cond_d

    iget v0, p2, Landroid/graphics/Point;->y:I

    :goto_5
    iget v1, p1, Landroid/graphics/Point;->y:I

    if-ge v0, v1, :cond_7

    int-to-float v1, v0

    sub-float/2addr v1, v3

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget v4, p0, Lcom/android/mipop/cropimage/k;->bi:I

    if-lt v1, v4, :cond_b

    iget v1, p0, Lcom/android/mipop/cropimage/k;->bi:I

    add-int/lit8 v1, v1, -0x1

    :cond_b
    iget v4, p0, Lcom/android/mipop/cropimage/k;->bg:I

    if-ge v1, v4, :cond_c

    iget v1, p0, Lcom/android/mipop/cropimage/k;->bg:I

    :cond_c
    iget-object v4, p0, Lcom/android/mipop/cropimage/k;->bk:[[I

    iget v5, p0, Lcom/android/mipop/cropimage/k;->bh:I

    sub-int v5, v0, v5

    aget-object v4, v4, v5

    iget v5, p0, Lcom/android/mipop/cropimage/k;->bg:I

    sub-int/2addr v1, v5

    aget v5, v4, v1

    add-int/lit8 v5, v5, 0x1

    aput v5, v4, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_d
    iget v0, p2, Landroid/graphics/Point;->y:I

    :goto_6
    iget v1, p1, Landroid/graphics/Point;->y:I

    if-le v0, v1, :cond_7

    int-to-float v1, v0

    sub-float/2addr v1, v3

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget v4, p0, Lcom/android/mipop/cropimage/k;->bi:I

    if-lt v1, v4, :cond_e

    iget v1, p0, Lcom/android/mipop/cropimage/k;->bi:I

    add-int/lit8 v1, v1, -0x1

    :cond_e
    iget v4, p0, Lcom/android/mipop/cropimage/k;->bg:I

    if-ge v1, v4, :cond_f

    iget v1, p0, Lcom/android/mipop/cropimage/k;->bg:I

    :cond_f
    iget-object v4, p0, Lcom/android/mipop/cropimage/k;->bk:[[I

    iget v5, p0, Lcom/android/mipop/cropimage/k;->bh:I

    sub-int v5, v0, v5

    aget-object v4, v4, v5

    iget v5, p0, Lcom/android/mipop/cropimage/k;->bg:I

    sub-int/2addr v1, v5

    aget v5, v4, v1

    add-int/lit8 v5, v5, 0x1

    aput v5, v4, v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_10
    iget v0, p2, Landroid/graphics/Point;->y:I

    iget v1, p1, Landroid/graphics/Point;->y:I

    if-ge v0, v1, :cond_13

    iget v0, p2, Landroid/graphics/Point;->y:I

    :goto_7
    iget v1, p1, Landroid/graphics/Point;->y:I

    if-gt v0, v1, :cond_7

    int-to-float v1, v0

    sub-float/2addr v1, v3

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget v4, p0, Lcom/android/mipop/cropimage/k;->bi:I

    if-lt v1, v4, :cond_11

    iget v1, p0, Lcom/android/mipop/cropimage/k;->bi:I

    add-int/lit8 v1, v1, -0x1

    :cond_11
    iget v4, p0, Lcom/android/mipop/cropimage/k;->bg:I

    if-ge v1, v4, :cond_12

    iget v1, p0, Lcom/android/mipop/cropimage/k;->bg:I

    :cond_12
    iget-object v4, p0, Lcom/android/mipop/cropimage/k;->bk:[[I

    iget v5, p0, Lcom/android/mipop/cropimage/k;->bh:I

    sub-int v5, v0, v5

    aget-object v4, v4, v5

    iget v5, p0, Lcom/android/mipop/cropimage/k;->bg:I

    sub-int/2addr v1, v5

    aget v5, v4, v1

    add-int/lit8 v5, v5, 0x1

    aput v5, v4, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_13
    iget v0, p2, Landroid/graphics/Point;->y:I

    :goto_8
    iget v1, p1, Landroid/graphics/Point;->y:I

    if-lt v0, v1, :cond_7

    int-to-float v1, v0

    sub-float/2addr v1, v3

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget v4, p0, Lcom/android/mipop/cropimage/k;->bi:I

    if-lt v1, v4, :cond_14

    iget v1, p0, Lcom/android/mipop/cropimage/k;->bi:I

    add-int/lit8 v1, v1, -0x1

    :cond_14
    iget v4, p0, Lcom/android/mipop/cropimage/k;->bg:I

    if-ge v1, v4, :cond_15

    iget v1, p0, Lcom/android/mipop/cropimage/k;->bg:I

    :cond_15
    iget-object v4, p0, Lcom/android/mipop/cropimage/k;->bk:[[I

    iget v5, p0, Lcom/android/mipop/cropimage/k;->bh:I

    sub-int v5, v0, v5

    aget-object v4, v4, v5

    iget v5, p0, Lcom/android/mipop/cropimage/k;->bg:I

    sub-int/2addr v1, v5

    aget v5, v4, v1

    add-int/lit8 v5, v5, 0x1

    aput v5, v4, v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_8
.end method

.method private a(Ljava/util/List;)V
    .locals 7

    const/4 v1, 0x0

    iget v0, p0, Lcom/android/mipop/cropimage/k;->bj:I

    add-int/lit8 v0, v0, 0x1

    iget v2, p0, Lcom/android/mipop/cropimage/k;->bh:I

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/android/mipop/cropimage/k;->bi:I

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/android/mipop/cropimage/k;->bg:I

    sub-int/2addr v2, v3

    filled-new-array {v0, v2}, [I

    move-result-object v0

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lcom/android/mipop/cropimage/k;->bk:[[I

    new-array v0, v1, [Landroid/graphics/Point;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/Point;

    array-length v2, v0

    :goto_0
    if-eq v1, v2, :cond_0

    aget-object v3, v0, v1

    add-int/lit8 v4, v1, -0x1

    add-int/2addr v4, v2

    rem-int/2addr v4, v2

    aget-object v4, v0, v4

    add-int/lit8 v5, v1, 0x1

    rem-int/2addr v5, v2

    aget-object v5, v0, v5

    add-int/lit8 v6, v1, 0x2

    rem-int/2addr v6, v2

    aget-object v6, v0, v6

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/android/mipop/cropimage/k;->a(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)Z
    .locals 3

    const/4 v0, 0x1

    iget v1, p1, Landroid/graphics/Point;->x:I

    iget v2, p2, Landroid/graphics/Point;->x:I

    if-ne v1, v2, :cond_1

    iget v1, p2, Landroid/graphics/Point;->x:I

    iget v2, p3, Landroid/graphics/Point;->x:I

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p1, Landroid/graphics/Point;->y:I

    iget v2, p2, Landroid/graphics/Point;->y:I

    if-ne v1, v2, :cond_2

    iget v1, p2, Landroid/graphics/Point;->y:I

    iget v2, p3, Landroid/graphics/Point;->y:I

    if-eq v1, v2, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private u()Landroid/graphics/Bitmap;
    .locals 9

    const/4 v8, 0x1

    const/4 v2, 0x0

    new-instance v4, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/mipop/cropimage/k;->ba:Ljava/util/List;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Point;

    invoke-direct {p0, v0, v1, v3}, Lcom/android/mipop/cropimage/k;->a(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_1
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iget-object v1, p0, Lcom/android/mipop/cropimage/k;->aX:Landroid/graphics/Path;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    iget v1, v0, Landroid/graphics/RectF;->left:F

    invoke-static {v1}, Landroid/util/FloatMath;->floor(F)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/mipop/cropimage/k;->bg:I

    iget v1, v0, Landroid/graphics/RectF;->top:F

    invoke-static {v1}, Landroid/util/FloatMath;->floor(F)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/mipop/cropimage/k;->bh:I

    iget v1, v0, Landroid/graphics/RectF;->right:F

    invoke-static {v1}, Landroid/util/FloatMath;->ceil(F)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/mipop/cropimage/k;->bi:I

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    invoke-static {v0}, Landroid/util/FloatMath;->ceil(F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/mipop/cropimage/k;->bj:I

    invoke-direct {p0, v4}, Lcom/android/mipop/cropimage/k;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/mipop/cropimage/k;->ck:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/android/mipop/cropimage/k;->bi:I

    iget v3, p0, Lcom/android/mipop/cropimage/k;->bg:I

    sub-int/2addr v1, v3

    iget v3, p0, Lcom/android/mipop/cropimage/k;->bj:I

    iget v4, p0, Lcom/android/mipop/cropimage/k;->bh:I

    sub-int/2addr v3, v4

    invoke-static {v0, v1, v3, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mipop/cropimage/k;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/android/mipop/cropimage/k;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/mipop/cropimage/k;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    new-array v1, v0, [I

    iget-object v0, p0, Lcom/android/mipop/cropimage/k;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/android/mipop/cropimage/k;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/android/mipop/cropimage/k;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    iget-object v4, p0, Lcom/android/mipop/cropimage/k;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/android/mipop/cropimage/k;->bk:[[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-eq v0, v3, :cond_6

    move v3, v2

    move v4, v2

    :goto_1
    iget-object v5, p0, Lcom/android/mipop/cropimage/k;->bk:[[I

    aget-object v5, v5, v0

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-eq v3, v5, :cond_5

    iget-object v5, p0, Lcom/android/mipop/cropimage/k;->bk:[[I

    aget-object v5, v5, v0

    aget v5, v5, v3

    rem-int/lit8 v5, v5, 0x2

    if-ne v5, v8, :cond_2

    if-nez v4, :cond_4

    move v4, v8

    :cond_2
    :goto_2
    if-eqz v4, :cond_3

    iget-object v5, p0, Lcom/android/mipop/cropimage/k;->bk:[[I

    aget-object v5, v5, v0

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    mul-int/2addr v5, v0

    add-int/2addr v5, v3

    const v6, 0xffffff

    aput v6, v1, v5

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    move v4, v2

    goto :goto_2

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/android/mipop/cropimage/k;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v2, p0, Lcom/android/mipop/cropimage/k;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mipop/cropimage/k;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/android/mipop/cropimage/k;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method


# virtual methods
.method public a(II)V
    .locals 3

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/mipop/cropimage/k;->bc:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mipop/cropimage/k;->bd:Z

    iput-boolean v1, p0, Lcom/android/mipop/cropimage/k;->bf:Z

    iput p1, p0, Lcom/android/mipop/cropimage/k;->aY:I

    iput p2, p0, Lcom/android/mipop/cropimage/k;->aZ:I

    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Lcom/android/mipop/cropimage/k;->aY:I

    iget v2, p0, Lcom/android/mipop/cropimage/k;->aZ:I

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/android/mipop/cropimage/k;->be:Landroid/graphics/Point;

    return-void
.end method

.method public a([Landroid/graphics/Point;)V
    .locals 1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mipop/cropimage/k;->ba:Ljava/util/List;

    return-void
.end method

.method public b(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/mipop/cropimage/k;->ba:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mipop/cropimage/k;->ba:Ljava/util/List;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    iget-object v0, p0, Lcom/android/mipop/cropimage/k;->ba:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    iget-object v1, p0, Lcom/android/mipop/cropimage/k;->ba:Ljava/util/List;

    iget-object v3, p0, Lcom/android/mipop/cropimage/k;->ba:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mipop/cropimage/k;->ba:Ljava/util/List;

    iget-object v1, p0, Lcom/android/mipop/cropimage/k;->ba:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_2
    iget-object v0, p0, Lcom/android/mipop/cropimage/k;->ba:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    iget-object v1, p0, Lcom/android/mipop/cropimage/k;->ba:Ljava/util/List;

    iget-object v3, p0, Lcom/android/mipop/cropimage/k;->ba:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    iget-object v3, p0, Lcom/android/mipop/cropimage/k;->ba:Ljava/util/List;

    iget-object v4, p0, Lcom/android/mipop/cropimage/k;->ba:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Point;

    invoke-direct {p0, v0, v1, v3}, Lcom/android/mipop/cropimage/k;->a(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/mipop/cropimage/k;->ba:Ljava/util/List;

    iget-object v1, p0, Lcom/android/mipop/cropimage/k;->ba:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_3
    iget v0, p0, Lcom/android/mipop/cropimage/k;->cb:I

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/mipop/cropimage/k;->ba:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v4, p0, Lcom/android/mipop/cropimage/k;->cb:I

    sub-int/2addr v1, v4

    iput v1, v0, Landroid/graphics/Point;->x:I

    iget v1, v0, Landroid/graphics/Point;->x:I

    if-lez v1, :cond_4

    iget v1, v0, Landroid/graphics/Point;->x:I

    :goto_2
    iput v1, v0, Landroid/graphics/Point;->x:I

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_2

    :cond_5
    iget v0, p0, Lcom/android/mipop/cropimage/k;->cc:I

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/mipop/cropimage/k;->ba:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->y:I

    iget v4, p0, Lcom/android/mipop/cropimage/k;->cc:I

    sub-int/2addr v1, v4

    iput v1, v0, Landroid/graphics/Point;->y:I

    iget v1, v0, Landroid/graphics/Point;->y:I

    if-lez v1, :cond_6

    iget v1, v0, Landroid/graphics/Point;->y:I

    :goto_4
    iput v1, v0, Landroid/graphics/Point;->y:I

    goto :goto_3

    :cond_6
    move v1, v2

    goto :goto_4

    :cond_7
    iget v0, p0, Lcom/android/mipop/cropimage/k;->cm:F

    const/high16 v1, 0x3f80

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/mipop/cropimage/k;->ba:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    iget v3, v0, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/mipop/cropimage/k;->cm:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v0, Landroid/graphics/Point;->y:I

    iget v3, v0, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/mipop/cropimage/k;->cm:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v0, Landroid/graphics/Point;->x:I

    goto :goto_5

    :cond_8
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iget-object v1, p0, Lcom/android/mipop/cropimage/k;->aX:Landroid/graphics/Path;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    iget v1, v0, Landroid/graphics/RectF;->left:F

    invoke-static {v1}, Landroid/util/FloatMath;->floor(F)F

    move-result v1

    iget v3, p0, Lcom/android/mipop/cropimage/k;->cb:I

    int-to-float v3, v3

    sub-float/2addr v1, v3

    iget v3, p0, Lcom/android/mipop/cropimage/k;->cm:F

    mul-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p0, Lcom/android/mipop/cropimage/k;->bg:I

    iget v1, v0, Landroid/graphics/RectF;->top:F

    invoke-static {v1}, Landroid/util/FloatMath;->floor(F)F

    move-result v1

    iget v3, p0, Lcom/android/mipop/cropimage/k;->cc:I

    int-to-float v3, v3

    sub-float/2addr v1, v3

    iget v3, p0, Lcom/android/mipop/cropimage/k;->cm:F

    mul-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p0, Lcom/android/mipop/cropimage/k;->bh:I

    iget v1, v0, Landroid/graphics/RectF;->right:F

    invoke-static {v1}, Landroid/util/FloatMath;->ceil(F)F

    move-result v1

    iget v3, p0, Lcom/android/mipop/cropimage/k;->cb:I

    int-to-float v3, v3

    sub-float/2addr v1, v3

    iget v3, p0, Lcom/android/mipop/cropimage/k;->cm:F

    mul-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p0, Lcom/android/mipop/cropimage/k;->bi:I

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    invoke-static {v0}, Landroid/util/FloatMath;->ceil(F)F

    move-result v0

    iget v1, p0, Lcom/android/mipop/cropimage/k;->cc:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/android/mipop/cropimage/k;->cm:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/mipop/cropimage/k;->bj:I

    iget-object v0, p0, Lcom/android/mipop/cropimage/k;->ba:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/android/mipop/cropimage/k;->a(Ljava/util/List;)V

    iget v0, p0, Lcom/android/mipop/cropimage/k;->bg:I

    iget v1, p0, Lcom/android/mipop/cropimage/k;->bh:I

    iget v3, p0, Lcom/android/mipop/cropimage/k;->bi:I

    iget v4, p0, Lcom/android/mipop/cropimage/k;->bg:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/mipop/cropimage/k;->bj:I

    iget v5, p0, Lcom/android/mipop/cropimage/k;->bh:I

    sub-int/2addr v4, v5

    invoke-static {p1, v0, v1, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mipop/cropimage/k;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/android/mipop/cropimage/k;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/mipop/cropimage/k;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    new-array v1, v0, [I

    iget-object v0, p0, Lcom/android/mipop/cropimage/k;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/android/mipop/cropimage/k;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/android/mipop/cropimage/k;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    iget-object v4, p0, Lcom/android/mipop/cropimage/k;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    move v0, v2

    :goto_6
    iget-object v3, p0, Lcom/android/mipop/cropimage/k;->bk:[[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-eq v0, v3, :cond_d

    move v3, v2

    move v4, v8

    :goto_7
    iget-object v5, p0, Lcom/android/mipop/cropimage/k;->bk:[[I

    aget-object v5, v5, v0

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-eq v3, v5, :cond_c

    iget-object v5, p0, Lcom/android/mipop/cropimage/k;->bk:[[I

    aget-object v5, v5, v0

    aget v5, v5, v3

    rem-int/lit8 v5, v5, 0x2

    if-ne v5, v8, :cond_9

    if-nez v4, :cond_b

    move v4, v8

    :cond_9
    :goto_8
    if-eqz v4, :cond_a

    iget-object v5, p0, Lcom/android/mipop/cropimage/k;->bk:[[I

    aget-object v5, v5, v0

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    mul-int/2addr v5, v0

    add-int/2addr v5, v3

    const v6, 0xffffff

    aput v6, v1, v5

    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_b
    move v4, v2

    goto :goto_8

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_d
    iget-object v0, p0, Lcom/android/mipop/cropimage/k;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v2, p0, Lcom/android/mipop/cropimage/k;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mipop/cropimage/k;->mBitmap:Landroid/graphics/Bitmap;

    iput-object v9, p0, Lcom/android/mipop/cropimage/k;->aX:Landroid/graphics/Path;

    iput-object v9, p0, Lcom/android/mipop/cropimage/k;->cg:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/mipop/cropimage/k;->ba:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lcom/android/mipop/cropimage/k;->mBitmap:Landroid/graphics/Bitmap;

    goto/16 :goto_0
.end method

.method public b(II)V
    .locals 6

    const/4 v5, 0x1

    iget-boolean v0, p0, Lcom/android/mipop/cropimage/k;->bd:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/mipop/cropimage/k;->aY:I

    iget v2, p0, Lcom/android/mipop/cropimage/k;->aZ:I

    invoke-direct {v0, v1, v2, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/mipop/cropimage/k;->cg:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/mipop/cropimage/k;->aX:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/android/mipop/cropimage/k;->ba:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/mipop/cropimage/k;->aX:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/android/mipop/cropimage/k;->aX:Landroid/graphics/Path;

    iget v1, p0, Lcom/android/mipop/cropimage/k;->aY:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/mipop/cropimage/k;->aZ:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Lcom/android/mipop/cropimage/k;->ba:Ljava/util/List;

    iget-object v1, p0, Lcom/android/mipop/cropimage/k;->be:Landroid/graphics/Point;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mipop/cropimage/k;->bd:Z

    :cond_0
    iget-object v0, p0, Lcom/android/mipop/cropimage/k;->aX:Landroid/graphics/Path;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/android/mipop/cropimage/k;->be:Landroid/graphics/Point;

    iget-object v0, p0, Lcom/android/mipop/cropimage/k;->be:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/android/mipop/cropimage/k;->ba:Ljava/util/List;

    iget-object v2, p0, Lcom/android/mipop/cropimage/k;->ba:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/mipop/cropimage/k;->ba:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/mipop/cropimage/k;->ba:Ljava/util/List;

    iget-object v1, p0, Lcom/android/mipop/cropimage/k;->ba:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    iget-object v1, p0, Lcom/android/mipop/cropimage/k;->ba:Ljava/util/List;

    iget-object v2, p0, Lcom/android/mipop/cropimage/k;->ba:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    iget-object v2, p0, Lcom/android/mipop/cropimage/k;->be:Landroid/graphics/Point;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/mipop/cropimage/k;->a(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/mipop/cropimage/k;->ba:Ljava/util/List;

    iget-object v1, p0, Lcom/android/mipop/cropimage/k;->be:Landroid/graphics/Point;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/mipop/cropimage/k;->aX:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/mipop/cropimage/k;->bb:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v5}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    iget-object v0, p0, Lcom/android/mipop/cropimage/k;->cg:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/mipop/cropimage/k;->bb:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    invoke-static {v1}, Landroid/util/FloatMath;->floor(F)F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/android/mipop/cropimage/k;->bb:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-static {v2}, Landroid/util/FloatMath;->floor(F)F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/android/mipop/cropimage/k;->bb:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    invoke-static {v3}, Landroid/util/FloatMath;->ceil(F)F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/android/mipop/cropimage/k;->bb:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    invoke-static {v4}, Landroid/util/FloatMath;->ceil(F)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iput-boolean v5, p0, Lcom/android/mipop/cropimage/k;->bf:Z

    invoke-virtual {p0}, Lcom/android/mipop/cropimage/k;->z()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/mipop/cropimage/k;->ba:Ljava/util/List;

    iget-object v1, p0, Lcom/android/mipop/cropimage/k;->ba:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/mipop/cropimage/k;->be:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/android/mipop/cropimage/k;->ba:Ljava/util/List;

    iget-object v2, p0, Lcom/android/mipop/cropimage/k;->ba:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/mipop/cropimage/k;->ba:Ljava/util/List;

    iget-object v1, p0, Lcom/android/mipop/cropimage/k;->be:Landroid/graphics/Point;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/mipop/cropimage/k;->ba:Ljava/util/List;

    iget-object v1, p0, Lcom/android/mipop/cropimage/k;->be:Landroid/graphics/Point;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public c(II)V
    .locals 5

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/mipop/cropimage/k;->bc:Z

    iget-boolean v0, p0, Lcom/android/mipop/cropimage/k;->bf:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mipop/cropimage/k;->aX:Landroid/graphics/Path;

    iget v1, p0, Lcom/android/mipop/cropimage/k;->aY:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/mipop/cropimage/k;->aZ:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/android/mipop/cropimage/k;->aX:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/mipop/cropimage/k;->bb:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    iget-object v0, p0, Lcom/android/mipop/cropimage/k;->cg:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/mipop/cropimage/k;->bb:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    invoke-static {v1}, Landroid/util/FloatMath;->floor(F)F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/android/mipop/cropimage/k;->bb:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-static {v2}, Landroid/util/FloatMath;->floor(F)F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/android/mipop/cropimage/k;->bb:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    invoke-static {v3}, Landroid/util/FloatMath;->ceil(F)F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/android/mipop/cropimage/k;->bb:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    invoke-static {v4}, Landroid/util/FloatMath;->ceil(F)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p0}, Lcom/android/mipop/cropimage/k;->z()V

    :cond_0
    return-void
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mipop/cropimage/k;->aX:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/android/mipop/cropimage/k;->ba:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/mipop/cropimage/m;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/android/mipop/cropimage/k;->aX:Landroid/graphics/Path;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mipop/cropimage/k;->aX:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/mipop/cropimage/k;->cg:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/mipop/cropimage/k;->cg:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/mipop/cropimage/k;->bc:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/mipop/cropimage/k;->u()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mipop/cropimage/k;->cg:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/mipop/cropimage/k;->cg:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/mipop/cropimage/k;->ce:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :goto_0
    iget-object v0, p0, Lcom/android/mipop/cropimage/k;->aX:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/mipop/cropimage/k;->cd:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/mipop/cropimage/k;->ck:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/mipop/cropimage/k;->ch:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/mipop/cropimage/k;->cg:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/mipop/cropimage/k;->ce:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0
.end method
