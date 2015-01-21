.class public Lavh;
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

.field public a:Lavf;

.field public a:Laxl;

.field public a:Z

.field public a:[F

.field public b:I

.field final synthetic b:Lavf;

.field private final b:[F

.field public c:I

.field private final c:[F

.field public d:I


# direct methods
.method public constructor <init>(Lavf;Landroid/view/ViewConfiguration;Lavf;)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 2254
    iput-object p1, p0, Lavh;->b:Lavf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2221
    new-instance v0, Landroid/graphics/Interpolator;

    const/4 v2, 0x2

    invoke-direct {v0, v3, v2}, Landroid/graphics/Interpolator;-><init>(II)V

    iput-object v0, p0, Lavh;->a:Landroid/graphics/Interpolator;

    .line 2226
    new-array v0, v3, [F

    const/high16 v2, 0x437f

    aput v2, v0, v6

    iput-object v0, p0, Lavh;->b:[F

    .line 2231
    new-array v0, v3, [F

    aput v1, v0, v6

    iput-object v0, p0, Lavh;->c:[F

    .line 2243
    iput v6, p0, Lavh;->d:I

    .line 2255
    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledScrollBarSize()I

    move-result v0

    iput v0, p0, Lavh;->c:I

    .line 2256
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v0

    iput v0, p0, Lavh;->a:I

    .line 2257
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result v0

    iput v0, p0, Lavh;->b:I

    .line 2259
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lavh;->a:Landroid/graphics/Paint;

    .line 2263
    new-instance v0, Landroid/graphics/LinearGradient;

    const/high16 v4, 0x3f80

    const/high16 v5, -0x100

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lavh;->a:Landroid/graphics/Shader;

    .line 2265
    iget-object v0, p0, Lavh;->a:Landroid/graphics/Paint;

    iget-object v1, p0, Lavh;->a:Landroid/graphics/Shader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 2266
    iget-object v0, p0, Lavh;->a:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 2267
    new-instance v0, Laxl;

    invoke-direct {v0}, Laxl;-><init>()V

    iput-object v0, p0, Lavh;->a:Laxl;

    .line 2268
    iput-object p3, p0, Lavh;->a:Lavf;

    .line 2269
    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 1
    .parameter

    .prologue
    .line 2278
    iget-object v0, p0, Lavh;->b:Lavf;

    iget-object v0, v0, Lavf;->a:Lavh;

    if-nez v0, :cond_0

    .line 2283
    :goto_0
    return-void

    .line 2280
    :cond_0
    iget-object v0, p0, Lavh;->b:Lavf;

    iget-object v0, v0, Lavf;->a:Lavh;

    invoke-virtual {v0}, Lavh;->a()Z

    .line 2281
    iget-object v0, p0, Lavh;->b:Lavf;

    iget-object v0, v0, Lavf;->a:Landroid/view/View;

    invoke-virtual {v0, p0, p1, p2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 2292
    iget-object v0, p0, Lavh;->b:Lavf;

    iget-object v0, v0, Lavf;->a:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2293
    const/4 v0, 0x1

    return v0
.end method

.method public run()V
    .locals 5

    .prologue
    .line 2302
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 2303
    iget-wide v2, p0, Lavh;->a:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 2308
    long-to-int v0, v0

    .line 2309
    const/4 v1, 0x0

    .line 2311
    iget-object v2, p0, Lavh;->a:Landroid/graphics/Interpolator;

    .line 2314
    const/4 v3, 0x1

    iget-object v4, p0, Lavh;->b:[F

    invoke-virtual {v2, v1, v0, v4}, Landroid/graphics/Interpolator;->setKeyFrame(II[F)V

    .line 2317
    iget v1, p0, Lavh;->b:I

    add-int/2addr v0, v1

    .line 2318
    iget-object v1, p0, Lavh;->c:[F

    invoke-virtual {v2, v3, v0, v1}, Landroid/graphics/Interpolator;->setKeyFrame(II[F)V

    .line 2320
    const/4 v0, 0x2

    iput v0, p0, Lavh;->d:I

    .line 2323
    iget-object v0, p0, Lavh;->a:Lavf;

    invoke-virtual {v0}, Lavf;->l()V

    .line 2325
    :cond_0
    return-void
.end method
