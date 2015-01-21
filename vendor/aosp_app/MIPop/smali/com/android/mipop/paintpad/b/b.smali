.class public Lcom/android/mipop/paintpad/b/b;
.super Landroid/graphics/Paint;


# static fields
.field private static count:I

.field private static ha:Lcom/android/mipop/paintpad/b/b;

.field private static hb:Landroid/graphics/MaskFilter;

.field private static hc:Landroid/graphics/MaskFilter;

.field private static hd:F

.field private static he:Z

.field private static final hf:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Lcom/android/mipop/paintpad/b/b;

    invoke-direct {v0}, Lcom/android/mipop/paintpad/b/b;-><init>()V

    sput-object v0, Lcom/android/mipop/paintpad/b/b;->ha:Lcom/android/mipop/paintpad/b/b;

    const/high16 v0, 0x3f80

    sput v0, Lcom/android/mipop/paintpad/b/b;->hd:F

    sput-boolean v1, Lcom/android/mipop/paintpad/b/b;->he:Z

    sput v1, Lcom/android/mipop/paintpad/b/b;->count:I

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/mipop/paintpad/b/b;->hf:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0xfft 0xfft
        0x2dt 0xfft 0xfdt 0xfft
        0x79t 0xcct 0x16t 0xfft
        0xfft 0xa8t 0x38t 0xfft
        0xc9t 0x49t 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0x0t 0x0t 0x0t 0xfft
    .end array-data
.end method

.method private constructor <init>()V
    .locals 5

    invoke-direct {p0}, Landroid/graphics/Paint;-><init>()V

    new-instance v0, Landroid/graphics/EmbossMaskFilter;

    const/4 v1, 0x3

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const v2, 0x3ecccccd

    const/high16 v3, 0x40c0

    const/high16 v4, 0x4060

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/EmbossMaskFilter;-><init>([FFFF)V

    sput-object v0, Lcom/android/mipop/paintpad/b/b;->hb:Landroid/graphics/MaskFilter;

    new-instance v0, Landroid/graphics/BlurMaskFilter;

    const/high16 v1, 0x4120

    sget-object v2, Landroid/graphics/BlurMaskFilter$Blur;->SOLID:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v0, v1, v2}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    sput-object v0, Lcom/android/mipop/paintpad/b/b;->hc:Landroid/graphics/MaskFilter;

    return-void

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method public static bk()F
    .locals 1

    sget v0, Lcom/android/mipop/paintpad/b/b;->hd:F

    return v0
.end method

.method public static bl()Lcom/android/mipop/paintpad/b/b;
    .locals 3

    sget-boolean v0, Lcom/android/mipop/paintpad/b/b;->he:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/android/mipop/paintpad/b/b;->count:I

    sget-object v1, Lcom/android/mipop/paintpad/b/b;->hf:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    sput v0, Lcom/android/mipop/paintpad/b/b;->count:I

    sget-object v0, Lcom/android/mipop/paintpad/b/b;->ha:Lcom/android/mipop/paintpad/b/b;

    sget-object v1, Lcom/android/mipop/paintpad/b/b;->hf:[I

    sget v2, Lcom/android/mipop/paintpad/b/b;->count:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/mipop/paintpad/b/b;->setColor(I)V

    sget v0, Lcom/android/mipop/paintpad/b/b;->count:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/mipop/paintpad/b/b;->count:I

    :cond_0
    sget-object v0, Lcom/android/mipop/paintpad/b/b;->ha:Lcom/android/mipop/paintpad/b/b;

    return-object v0
.end method

.method public static bm()Lcom/android/mipop/paintpad/b/b;
    .locals 1

    sget-object v0, Lcom/android/mipop/paintpad/b/b;->ha:Lcom/android/mipop/paintpad/b/b;

    return-object v0
.end method

.method public static bn()V
    .locals 2

    sget-object v0, Lcom/android/mipop/paintpad/b/b;->ha:Lcom/android/mipop/paintpad/b/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mipop/paintpad/b/b;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    sget-object v0, Lcom/android/mipop/paintpad/b/b;->ha:Lcom/android/mipop/paintpad/b/b;

    sget-object v1, Lcom/android/mipop/paintpad/b/b;->hb:Landroid/graphics/MaskFilter;

    invoke-virtual {v0, v1}, Lcom/android/mipop/paintpad/b/b;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    return-void
.end method

.method public static bo()V
    .locals 2

    sget-object v0, Lcom/android/mipop/paintpad/b/b;->ha:Lcom/android/mipop/paintpad/b/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mipop/paintpad/b/b;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    sget-object v0, Lcom/android/mipop/paintpad/b/b;->ha:Lcom/android/mipop/paintpad/b/b;

    sget-object v1, Lcom/android/mipop/paintpad/b/b;->hc:Landroid/graphics/MaskFilter;

    invoke-virtual {v0, v1}, Lcom/android/mipop/paintpad/b/b;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    return-void
.end method

.method public static bp()V
    .locals 2

    sget-object v0, Lcom/android/mipop/paintpad/b/b;->ha:Lcom/android/mipop/paintpad/b/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mipop/paintpad/b/b;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    return-void
.end method

.method public static c(F)V
    .locals 0

    sput p0, Lcom/android/mipop/paintpad/b/b;->hd:F

    return-void
.end method

.method public static i(Z)V
    .locals 0

    sput-boolean p0, Lcom/android/mipop/paintpad/b/b;->he:Z

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 2

    const/4 v1, 0x1

    sget-object v0, Lcom/android/mipop/paintpad/b/b;->ha:Lcom/android/mipop/paintpad/b/b;

    invoke-virtual {v0, v1}, Lcom/android/mipop/paintpad/b/b;->setAntiAlias(Z)V

    sget-object v0, Lcom/android/mipop/paintpad/b/b;->ha:Lcom/android/mipop/paintpad/b/b;

    invoke-virtual {v0, v1}, Lcom/android/mipop/paintpad/b/b;->setDither(Z)V

    sget-object v0, Lcom/android/mipop/paintpad/b/b;->ha:Lcom/android/mipop/paintpad/b/b;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Lcom/android/mipop/paintpad/b/b;->setColor(I)V

    sget-object v0, Lcom/android/mipop/paintpad/b/b;->ha:Lcom/android/mipop/paintpad/b/b;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Lcom/android/mipop/paintpad/b/b;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v0, Lcom/android/mipop/paintpad/b/b;->ha:Lcom/android/mipop/paintpad/b/b;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Lcom/android/mipop/paintpad/b/b;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    sget-object v0, Lcom/android/mipop/paintpad/b/b;->ha:Lcom/android/mipop/paintpad/b/b;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Lcom/android/mipop/paintpad/b/b;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    sget-object v0, Lcom/android/mipop/paintpad/b/b;->ha:Lcom/android/mipop/paintpad/b/b;

    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Lcom/android/mipop/paintpad/b/b;->setStrokeWidth(F)V

    sget-object v0, Lcom/android/mipop/paintpad/b/b;->ha:Lcom/android/mipop/paintpad/b/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mipop/paintpad/b/b;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    return-void
.end method
