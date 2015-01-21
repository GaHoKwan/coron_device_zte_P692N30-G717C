.class public Laoc;
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

.field public a:Landroid/graphics/drawable/ClipDrawable;

.field public a:Landroid/view/View;

.field final synthetic a:Lcom/sohu/inputmethod/sogou/CandidateCloudView;

.field public a:Z

.field public a:[F

.field public b:I

.field public b:Z

.field private final b:[F

.field public c:I

.field private final c:[F


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/sogou/CandidateCloudView;Landroid/view/ViewConfiguration;Landroid/view/View;)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 1886
    iput-object p1, p0, Laoc;->a:Lcom/sohu/inputmethod/sogou/CandidateCloudView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1862
    iput-boolean v6, p0, Laoc;->b:Z

    .line 1867
    new-instance v0, Landroid/graphics/Interpolator;

    const/4 v2, 0x2

    invoke-direct {v0, v3, v2}, Landroid/graphics/Interpolator;-><init>(II)V

    iput-object v0, p0, Laoc;->a:Landroid/graphics/Interpolator;

    .line 1869
    new-array v0, v3, [F

    aput v1, v0, v6

    iput-object v0, p0, Laoc;->b:[F

    .line 1871
    new-array v0, v3, [F

    const v2, 0x461c4000

    aput v2, v0, v6

    iput-object v0, p0, Laoc;->c:[F

    .line 1882
    iput v6, p0, Laoc;->c:I

    .line 1887
    const/16 v0, 0x320

    iput v0, p0, Laoc;->a:I

    .line 1888
    const/16 v0, 0x514

    iput v0, p0, Laoc;->b:I

    .line 1889
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Laoc;->a:Landroid/graphics/Paint;

    .line 1893
    new-instance v0, Landroid/graphics/LinearGradient;

    const/high16 v4, 0x3f80

    const/high16 v5, -0x100

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Laoc;->a:Landroid/graphics/Shader;

    .line 1895
    iget-object v0, p0, Laoc;->a:Landroid/graphics/Paint;

    iget-object v1, p0, Laoc;->a:Landroid/graphics/Shader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1896
    iget-object v0, p0, Laoc;->a:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1898
    iput-object p3, p0, Laoc;->a:Landroid/view/View;

    .line 1899
    return-void
.end method

.method public static synthetic a(Laoc;)[F
    .locals 1
    .parameter

    .prologue
    .line 1836
    iget-object v0, p0, Laoc;->c:[F

    return-object v0
.end method

.method public static synthetic b(Laoc;)[F
    .locals 1
    .parameter

    .prologue
    .line 1836
    iget-object v0, p0, Laoc;->b:[F

    return-object v0
.end method


# virtual methods
.method public a(J)V
    .locals 1
    .parameter

    .prologue
    .line 1902
    iget-object v0, p0, Laoc;->a:Lcom/sohu/inputmethod/sogou/CandidateCloudView;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->a(Lcom/sohu/inputmethod/sogou/CandidateCloudView;)Laoc;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1907
    :goto_0
    return-void

    .line 1904
    :cond_0
    iget-object v0, p0, Laoc;->a:Lcom/sohu/inputmethod/sogou/CandidateCloudView;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->a(Lcom/sohu/inputmethod/sogou/CandidateCloudView;)Laoc;

    move-result-object v0

    invoke-virtual {v0}, Laoc;->a()Z

    .line 1905
    iget-object v0, p0, Laoc;->a:Lcom/sohu/inputmethod/sogou/CandidateCloudView;

    invoke-virtual {v0, p0, p1, p2}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 1910
    iget-object v0, p0, Laoc;->a:Lcom/sohu/inputmethod/sogou/CandidateCloudView;

    invoke-virtual {v0, p0}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1911
    const/4 v0, 0x1

    return v0
.end method

.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1915
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 1916
    iget-wide v2, p0, Laoc;->a:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 1921
    long-to-int v0, v0

    .line 1922
    const/4 v1, 0x0

    .line 1924
    iget-object v2, p0, Laoc;->a:Landroid/graphics/Interpolator;

    .line 1927
    iget-object v3, p0, Laoc;->c:[F

    invoke-virtual {v2, v1, v0, v3}, Landroid/graphics/Interpolator;->setKeyFrame(II[F)V

    .line 1930
    iget v1, p0, Laoc;->b:I

    add-int/2addr v0, v1

    .line 1931
    iget-object v1, p0, Laoc;->b:[F

    invoke-virtual {v2, v4, v0, v1}, Landroid/graphics/Interpolator;->setKeyFrame(II[F)V

    .line 1933
    const/4 v0, 0x2

    iput v0, p0, Laoc;->c:I

    .line 1934
    iput-boolean v4, p0, Laoc;->b:Z

    .line 1937
    iget-object v0, p0, Laoc;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 1939
    :cond_0
    return-void
.end method
