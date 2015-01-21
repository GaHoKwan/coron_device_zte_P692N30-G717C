.class public Lazb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public a:I

.field public a:J

.field public final a:Landroid/graphics/Interpolator;

.field public final a:Landroid/graphics/Paint;

.field public a:Landroid/graphics/Shader;

.field public a:Landroid/view/View;

.field public a:Laxl;

.field final synthetic a:Lcom/sohu/util/ScrollViewUtilWithScrollBar;

.field public a:Z

.field public a:[F

.field public b:I

.field private final b:[F

.field public c:I

.field private final c:[F

.field public d:I


# direct methods
.method public constructor <init>(Lcom/sohu/util/ScrollViewUtilWithScrollBar;Landroid/view/ViewConfiguration;Landroid/view/View;)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 413
    iput-object p1, p0, Lazb;->a:Lcom/sohu/util/ScrollViewUtilWithScrollBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 394
    new-instance v0, Landroid/graphics/Interpolator;

    const/4 v2, 0x2

    invoke-direct {v0, v3, v2}, Landroid/graphics/Interpolator;-><init>(II)V

    iput-object v0, p0, Lazb;->a:Landroid/graphics/Interpolator;

    .line 396
    new-array v0, v3, [F

    const/high16 v2, 0x437f

    aput v2, v0, v6

    iput-object v0, p0, Lazb;->b:[F

    .line 397
    new-array v0, v3, [F

    aput v1, v0, v6

    iput-object v0, p0, Lazb;->c:[F

    .line 409
    iput v6, p0, Lazb;->d:I

    .line 414
    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledScrollBarSize()I

    move-result v0

    iput v0, p0, Lazb;->c:I

    .line 415
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v0

    iput v0, p0, Lazb;->a:I

    .line 416
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result v0

    iput v0, p0, Lazb;->b:I

    .line 418
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lazb;->a:Landroid/graphics/Paint;

    .line 422
    new-instance v0, Landroid/graphics/LinearGradient;

    const/high16 v4, 0x3f80

    const/high16 v5, -0x100

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lazb;->a:Landroid/graphics/Shader;

    .line 424
    iget-object v0, p0, Lazb;->a:Landroid/graphics/Paint;

    iget-object v1, p0, Lazb;->a:Landroid/graphics/Shader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 425
    iget-object v0, p0, Lazb;->a:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 426
    new-instance v0, Laxl;

    invoke-direct {v0}, Laxl;-><init>()V

    iput-object v0, p0, Lazb;->a:Laxl;

    .line 427
    iput-object p3, p0, Lazb;->a:Landroid/view/View;

    .line 428
    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 1
    .parameter

    .prologue
    .line 431
    iget-object v0, p0, Lazb;->a:Lcom/sohu/util/ScrollViewUtilWithScrollBar;

    iget-object v0, v0, Lcom/sohu/util/ScrollViewUtilWithScrollBar;->a:Lazb;

    if-nez v0, :cond_0

    .line 436
    :goto_0
    return-void

    .line 433
    :cond_0
    iget-object v0, p0, Lazb;->a:Lcom/sohu/util/ScrollViewUtilWithScrollBar;

    iget-object v0, v0, Lcom/sohu/util/ScrollViewUtilWithScrollBar;->a:Lazb;

    invoke-virtual {v0}, Lazb;->a()Z

    .line 434
    iget-object v0, p0, Lazb;->a:Lcom/sohu/util/ScrollViewUtilWithScrollBar;

    invoke-virtual {v0, p0, p1, p2}, Lcom/sohu/util/ScrollViewUtilWithScrollBar;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lazb;->a:Lcom/sohu/util/ScrollViewUtilWithScrollBar;

    invoke-virtual {v0, p0}, Lcom/sohu/util/ScrollViewUtilWithScrollBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 440
    const/4 v0, 0x1

    return v0
.end method

.method public run()V
    .locals 5

    .prologue
    .line 444
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 445
    iget-wide v2, p0, Lazb;->a:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 450
    long-to-int v0, v0

    .line 451
    const/4 v1, 0x0

    .line 453
    iget-object v2, p0, Lazb;->a:Landroid/graphics/Interpolator;

    .line 456
    const/4 v3, 0x1

    iget-object v4, p0, Lazb;->b:[F

    invoke-virtual {v2, v1, v0, v4}, Landroid/graphics/Interpolator;->setKeyFrame(II[F)V

    .line 459
    iget v1, p0, Lazb;->b:I

    add-int/2addr v0, v1

    .line 460
    iget-object v1, p0, Lazb;->c:[F

    invoke-virtual {v2, v3, v0, v1}, Landroid/graphics/Interpolator;->setKeyFrame(II[F)V

    .line 462
    const/4 v0, 0x2

    iput v0, p0, Lazb;->d:I

    .line 465
    iget-object v0, p0, Lazb;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 467
    :cond_0
    return-void
.end method
