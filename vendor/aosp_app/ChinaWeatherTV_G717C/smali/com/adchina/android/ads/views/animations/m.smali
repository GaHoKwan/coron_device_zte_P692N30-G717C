.class public final Lcom/adchina/android/ads/views/animations/m;
.super Landroid/view/animation/Animation;


# static fields
.field private static synthetic i:[I


# instance fields
.field private a:Lcom/adchina/android/ads/views/animations/n;

.field private b:[I

.field private c:Landroid/graphics/Camera;

.field private d:I

.field private e:F

.field private f:I

.field private g:F

.field private h:[I


# direct methods
.method public constructor <init>(Lcom/adchina/android/ads/views/animations/n;[I)V
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    iput v1, p0, Lcom/adchina/android/ads/views/animations/m;->d:I

    iput v2, p0, Lcom/adchina/android/ads/views/animations/m;->e:F

    iput v1, p0, Lcom/adchina/android/ads/views/animations/m;->f:I

    iput v2, p0, Lcom/adchina/android/ads/views/animations/m;->g:F

    iput-object p1, p0, Lcom/adchina/android/ads/views/animations/m;->a:Lcom/adchina/android/ads/views/animations/n;

    iput-object p2, p0, Lcom/adchina/android/ads/views/animations/m;->b:[I

    if-nez p2, :cond_0

    array-length v0, p2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "aPoints\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput v1, p0, Lcom/adchina/android/ads/views/animations/m;->f:I

    iput v2, p0, Lcom/adchina/android/ads/views/animations/m;->g:F

    array-length v0, p2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/adchina/android/ads/views/animations/m;->h:[I

    move v0, v1

    :goto_0
    array-length v2, p2

    add-int/lit8 v2, v2, -0x1

    if-lt v0, v2, :cond_1

    aget v0, p2, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/adchina/android/ads/views/animations/m;->e:F

    return-void

    :cond_1
    iget v2, p0, Lcom/adchina/android/ads/views/animations/m;->f:I

    aget v3, p2, v0

    add-int/lit8 v4, v0, 0x1

    aget v4, p2, v4

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/adchina/android/ads/views/animations/m;->f:I

    iget-object v2, p0, Lcom/adchina/android/ads/views/animations/m;->h:[I

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Lcom/adchina/android/ads/views/animations/m;->f:I

    aput v4, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static synthetic a()[I
    .locals 3

    sget-object v0, Lcom/adchina/android/ads/views/animations/m;->i:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/adchina/android/ads/views/animations/n;->values()[Lcom/adchina/android/ads/views/animations/n;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/adchina/android/ads/views/animations/n;->a:Lcom/adchina/android/ads/views/animations/n;

    invoke-virtual {v1}, Lcom/adchina/android/ads/views/animations/n;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    :try_start_1
    sget-object v1, Lcom/adchina/android/ads/views/animations/n;->b:Lcom/adchina/android/ads/views/animations/n;

    invoke-virtual {v1}, Lcom/adchina/android/ads/views/animations/n;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    sput-object v0, Lcom/adchina/android/ads/views/animations/m;->i:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method protected final applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 8

    const/4 v7, 0x0

    invoke-super {p0, p1, p2}, Landroid/view/animation/Animation;->applyTransformation(FLandroid/view/animation/Transformation;)V

    iget-object v1, p0, Lcom/adchina/android/ads/views/animations/m;->c:Landroid/graphics/Camera;

    iget v0, p0, Lcom/adchina/android/ads/views/animations/m;->f:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/adchina/android/ads/views/animations/m;->g:F

    iget v0, p0, Lcom/adchina/android/ads/views/animations/m;->d:I

    iget-object v2, p0, Lcom/adchina/android/ads/views/animations/m;->b:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-le v0, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/adchina/android/ads/views/animations/m;->g:F

    iget-object v2, p0, Lcom/adchina/android/ads/views/animations/m;->h:[I

    iget v3, p0, Lcom/adchina/android/ads/views/animations/m;->d:I

    aget v2, v2, v3

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_2

    iget v0, p0, Lcom/adchina/android/ads/views/animations/m;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/adchina/android/ads/views/animations/m;->d:I

    iget v0, p0, Lcom/adchina/android/ads/views/animations/m;->d:I

    iget-object v2, p0, Lcom/adchina/android/ads/views/animations/m;->b:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-gt v0, v2, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/adchina/android/ads/views/animations/m;->b:[I

    iget v2, p0, Lcom/adchina/android/ads/views/animations/m;->d:I

    add-int/lit8 v2, v2, -0x1

    aget v0, v0, v2

    iget-object v2, p0, Lcom/adchina/android/ads/views/animations/m;->b:[I

    iget v3, p0, Lcom/adchina/android/ads/views/animations/m;->d:I

    aget v2, v2, v3

    if-le v0, v2, :cond_3

    const/4 v0, -0x1

    :goto_1
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v1}, Landroid/graphics/Camera;->save()V

    iget-object v3, p0, Lcom/adchina/android/ads/views/animations/m;->b:[I

    iget v4, p0, Lcom/adchina/android/ads/views/animations/m;->d:I

    add-int/lit8 v4, v4, -0x1

    aget v3, v3, v4

    int-to-float v3, v3

    int-to-float v0, v0

    iget v4, p0, Lcom/adchina/android/ads/views/animations/m;->f:I

    int-to-float v4, v4

    mul-float/2addr v4, p1

    iget-object v5, p0, Lcom/adchina/android/ads/views/animations/m;->h:[I

    iget v6, p0, Lcom/adchina/android/ads/views/animations/m;->d:I

    add-int/lit8 v6, v6, -0x1

    aget v5, v5, v6

    int-to-float v5, v5

    sub-float/2addr v4, v5

    mul-float/2addr v0, v4

    add-float/2addr v0, v3

    iput v0, p0, Lcom/adchina/android/ads/views/animations/m;->e:F

    invoke-static {}, Lcom/adchina/android/ads/views/animations/m;->a()[I

    move-result-object v0

    iget-object v3, p0, Lcom/adchina/android/ads/views/animations/m;->a:Lcom/adchina/android/ads/views/animations/n;

    invoke-virtual {v3}, Lcom/adchina/android/ads/views/animations/n;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    :goto_2
    invoke-virtual {v1, v2}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {v1}, Landroid/graphics/Camera;->restore()V

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_1

    :pswitch_0
    iget v0, p0, Lcom/adchina/android/ads/views/animations/m;->e:F

    invoke-virtual {v1, v0, v7, v7}, Landroid/graphics/Camera;->translate(FFF)V

    goto :goto_2

    :pswitch_1
    iget v0, p0, Lcom/adchina/android/ads/views/animations/m;->e:F

    const/high16 v3, -0x4080

    mul-float/2addr v0, v3

    invoke-virtual {v1, v7, v0, v7}, Landroid/graphics/Camera;->translate(FFF)V

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final initialize(IIII)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/adchina/android/ads/views/animations/m;->c:Landroid/graphics/Camera;

    return-void
.end method
