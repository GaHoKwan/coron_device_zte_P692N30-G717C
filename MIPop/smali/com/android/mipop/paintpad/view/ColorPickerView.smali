.class public Lcom/android/mipop/paintpad/view/ColorPickerView;
.super Landroid/view/View;


# static fields
.field private static bu:F

.field private static bv:F

.field private static bw:F


# instance fields
.field private aQ:Landroid/graphics/Paint;

.field private bA:F

.field private bB:F

.field private bC:F

.field private bD:Landroid/graphics/Bitmap;

.field private bE:Landroid/graphics/Bitmap;

.field private bF:Landroid/graphics/Paint;

.field private bG:Landroid/graphics/Paint;

.field private bH:[F

.field private bI:F

.field private bJ:F

.field private bK:[F

.field private bL:F

.field private bM:[I

.field private bN:[I

.field private bO:F

.field private bP:F

.field private bQ:F

.field private bR:F

.field private bS:F

.field private bT:F

.field private bU:F

.field private bV:I

.field private bW:I

.field private bt:Lcom/android/mipop/paintpad/view/b;

.field private bx:I

.field private by:I

.field private bz:F

.field private c:F

.field private d:F

.field private density:F

.field private n:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Lcom/android/mipop/paintpad/view/ColorPickerView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, p1}, Lcom/android/mipop/paintpad/view/ColorPickerView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0, p1}, Lcom/android/mipop/paintpad/view/ColorPickerView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private a(F)V
    .locals 8

    const/16 v7, 0x169

    const/16 v6, 0x65

    const/4 v1, 0x0

    iput p1, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bJ:F

    move v2, v1

    :goto_0
    if-eq v2, v6, :cond_1

    move v0, v1

    :goto_1
    if-eq v0, v7, :cond_0

    const/4 v3, 0x3

    new-array v3, v3, [F

    iget-object v4, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bH:[F

    aget v4, v4, v0

    aput v4, v3, v1

    const/4 v4, 0x1

    aput p1, v3, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bK:[F

    aget v5, v5, v2

    aput v5, v3, v4

    iget-object v4, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bM:[I

    mul-int/lit16 v5, v2, 0x169

    add-int/2addr v5, v0

    invoke-static {v3}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v3

    aput v3, v4, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bM:[I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v7, v6, v2}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget v2, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bx:I

    iget v3, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->by:I

    invoke-static {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bD:Landroid/graphics/Bitmap;

    return-void
.end method

.method private a(FF)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iput p2, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bI:F

    iput p1, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bL:F

    const/16 v0, 0x168

    :goto_0
    if-ltz v0, :cond_0

    const/4 v1, 0x3

    new-array v1, v1, [F

    aput p2, v1, v4

    int-to-float v2, v0

    const/high16 v3, 0x43b4

    div-float/2addr v2, v3

    aput v2, v1, v5

    const/4 v2, 0x2

    aput p1, v1, v2

    iget-object v2, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bN:[I

    rsub-int v3, v0, 0x168

    invoke-static {v1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v1

    aput v1, v2, v3

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bN:[I

    const/16 v1, 0x169

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v5, v1, v2}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget v1, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bz:F

    float-to-int v1, v1

    iget v2, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->by:I

    invoke-static {v0, v1, v2, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bE:Landroid/graphics/Bitmap;

    return-void
.end method

.method private w()Z
    .locals 3

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->c:F

    iget v1, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bR:F

    iget v2, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bx:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    sget v2, Lcom/android/mipop/paintpad/view/ColorPickerView;->bu:F

    add-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->c:F

    iget v1, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bR:F

    sget v2, Lcom/android/mipop/paintpad/view/ColorPickerView;->bu:F

    sub-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->d:F

    iget v1, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->by:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bS:F

    add-float/2addr v1, v2

    sget v2, Lcom/android/mipop/paintpad/view/ColorPickerView;->bu:F

    add-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->d:F

    iget v1, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bS:F

    sget v2, Lcom/android/mipop/paintpad/view/ColorPickerView;->bu:F

    sub-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private x()Z
    .locals 3

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->c:F

    iget v1, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bT:F

    iget v2, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bz:F

    add-float/2addr v1, v2

    sget v2, Lcom/android/mipop/paintpad/view/ColorPickerView;->bu:F

    add-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->c:F

    iget v1, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bT:F

    sget v2, Lcom/android/mipop/paintpad/view/ColorPickerView;->bu:F

    sub-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->d:F

    iget v1, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bU:F

    iget v2, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->by:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    sget v2, Lcom/android/mipop/paintpad/view/ColorPickerView;->bu:F

    add-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->d:F

    iget v1, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bU:F

    sget v2, Lcom/android/mipop/paintpad/view/ColorPickerView;->bu:F

    sub-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private y()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bI:F

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bJ:F

    aput v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bL:F

    aput v2, v0, v1

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Lcom/android/mipop/paintpad/view/b;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bt:Lcom/android/mipop/paintpad/view/b;

    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 8

    const/16 v7, 0x65

    const/4 v0, 0x0

    const/high16 v6, 0x3f80

    const/16 v5, 0x169

    const/4 v4, 0x1

    new-instance v1, Lcom/android/mipop/paintpad/view/a;

    invoke-direct {v1, p0}, Lcom/android/mipop/paintpad/view/a;-><init>(Lcom/android/mipop/paintpad/view/ColorPickerView;)V

    iput-object v1, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bt:Lcom/android/mipop/paintpad/view/b;

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->density:F

    const/high16 v1, 0x40a0

    iget v2, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->density:F

    mul-float/2addr v1, v2

    sput v1, Lcom/android/mipop/paintpad/view/ColorPickerView;->bu:F

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->aQ:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->aQ:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->aQ:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->aQ:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->density:F

    mul-float/2addr v2, v6

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->aQ:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setFlags(I)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bF:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bF:Landroid/graphics/Paint;

    const/high16 v2, -0x100

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bF:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bF:Landroid/graphics/Paint;

    const/high16 v2, 0x4000

    iget v3, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->density:F

    mul-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bF:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setFlags(I)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bG:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bG:Landroid/graphics/Paint;

    const v2, -0xb0b1b2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bG:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bG:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->density:F

    mul-float/2addr v2, v6

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bG:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setFlags(I)V

    new-array v1, v5, [F

    iput-object v1, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bH:[F

    new-array v1, v7, [F

    iput-object v1, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bK:[F

    move v1, v0

    :goto_0
    if-eq v1, v5, :cond_0

    iget-object v2, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bH:[F

    rsub-int v3, v1, 0x168

    int-to-float v4, v1

    aput v4, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-eq v0, v7, :cond_1

    iget-object v1, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bK:[F

    rsub-int/lit8 v2, v0, 0x64

    int-to-float v3, v0

    const/high16 v4, 0x42c8

    div-float/2addr v3, v4

    aput v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const v0, 0x8e6d

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bM:[I

    new-array v0, v5, [I

    iput-object v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bN:[I

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    const v9, -0x9b9c9d

    const v8, -0xb0b1b2

    const/high16 v2, 0x4000

    const/4 v7, 0x0

    const/high16 v6, 0x4080

    iget-boolean v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->n:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mipop/paintpad/view/ColorPickerView;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bV:I

    invoke-virtual {p0}, Lcom/android/mipop/paintpad/view/ColorPickerView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bW:I

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->density:F

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bB:F

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->density:F

    iput v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bC:F

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->density:F

    div-float/2addr v0, v2

    sput v0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bv:F

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->density:F

    const/high16 v1, 0x4040

    mul-float/2addr v0, v1

    div-float/2addr v0, v2

    sput v0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bw:F

    const/high16 v0, 0x41a0

    iget v1, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->density:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bz:F

    const/high16 v0, 0x4170

    iget v1, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->density:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bA:F

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->density:F

    mul-float/2addr v0, v6

    iput v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bR:F

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->density:F

    mul-float/2addr v0, v6

    iput v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bS:F

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bV:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->density:F

    mul-float/2addr v1, v6

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bz:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bT:F

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->density:F

    mul-float/2addr v0, v6

    iput v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bU:F

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bW:I

    int-to-float v0, v0

    const/high16 v1, 0x4100

    iget v2, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->density:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->by:I

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bV:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bz:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bA:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x4140

    iget v2, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->density:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bx:I

    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bJ:F

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bJ:F

    invoke-direct {p0, v0}, Lcom/android/mipop/paintpad/view/ColorPickerView;->a(F)V

    iget-object v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bK:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v1, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bH:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/android/mipop/paintpad/view/ColorPickerView;->a(FF)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->n:Z

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bG:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bR:F

    sget v1, Lcom/android/mipop/paintpad/view/ColorPickerView;->bw:F

    sub-float v1, v0, v1

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bS:F

    sget v2, Lcom/android/mipop/paintpad/view/ColorPickerView;->bw:F

    sub-float v2, v0, v2

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bR:F

    iget v3, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bx:I

    int-to-float v3, v3

    add-float/2addr v0, v3

    sget v3, Lcom/android/mipop/paintpad/view/ColorPickerView;->bw:F

    add-float/2addr v3, v0

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bS:F

    sget v4, Lcom/android/mipop/paintpad/view/ColorPickerView;->bw:F

    sub-float v4, v0, v4

    iget-object v5, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bG:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bR:F

    sget v1, Lcom/android/mipop/paintpad/view/ColorPickerView;->bw:F

    sub-float v1, v0, v1

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bS:F

    sget v2, Lcom/android/mipop/paintpad/view/ColorPickerView;->bw:F

    sub-float v2, v0, v2

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bR:F

    sget v3, Lcom/android/mipop/paintpad/view/ColorPickerView;->bw:F

    sub-float v3, v0, v3

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bS:F

    iget v4, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->by:I

    int-to-float v4, v4

    add-float/2addr v0, v4

    sget v4, Lcom/android/mipop/paintpad/view/ColorPickerView;->bw:F

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bG:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bT:F

    sget v1, Lcom/android/mipop/paintpad/view/ColorPickerView;->bw:F

    sub-float v1, v0, v1

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bU:F

    sget v2, Lcom/android/mipop/paintpad/view/ColorPickerView;->bw:F

    sub-float v2, v0, v2

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bT:F

    iget v3, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bz:F

    add-float/2addr v0, v3

    sget v3, Lcom/android/mipop/paintpad/view/ColorPickerView;->bw:F

    add-float/2addr v3, v0

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bU:F

    sget v4, Lcom/android/mipop/paintpad/view/ColorPickerView;->bw:F

    sub-float v4, v0, v4

    iget-object v5, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bG:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bT:F

    sget v1, Lcom/android/mipop/paintpad/view/ColorPickerView;->bw:F

    sub-float v1, v0, v1

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bU:F

    sget v2, Lcom/android/mipop/paintpad/view/ColorPickerView;->bw:F

    sub-float v2, v0, v2

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bT:F

    sget v3, Lcom/android/mipop/paintpad/view/ColorPickerView;->bw:F

    sub-float v3, v0, v3

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bU:F

    iget v4, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->by:I

    int-to-float v4, v4

    add-float/2addr v0, v4

    sget v4, Lcom/android/mipop/paintpad/view/ColorPickerView;->bw:F

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bG:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bG:Landroid/graphics/Paint;

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bR:F

    sget v1, Lcom/android/mipop/paintpad/view/ColorPickerView;->bv:F

    sub-float v1, v0, v1

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bS:F

    sget v2, Lcom/android/mipop/paintpad/view/ColorPickerView;->bv:F

    sub-float v2, v0, v2

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bR:F

    iget v3, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bx:I

    int-to-float v3, v3

    add-float/2addr v0, v3

    sget v3, Lcom/android/mipop/paintpad/view/ColorPickerView;->bv:F

    add-float/2addr v3, v0

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bS:F

    sget v4, Lcom/android/mipop/paintpad/view/ColorPickerView;->bv:F

    sub-float v4, v0, v4

    iget-object v5, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bG:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bR:F

    sget v1, Lcom/android/mipop/paintpad/view/ColorPickerView;->bv:F

    sub-float v1, v0, v1

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bS:F

    sget v2, Lcom/android/mipop/paintpad/view/ColorPickerView;->bv:F

    sub-float v2, v0, v2

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bR:F

    sget v3, Lcom/android/mipop/paintpad/view/ColorPickerView;->bv:F

    sub-float v3, v0, v3

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bS:F

    iget v4, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->by:I

    int-to-float v4, v4

    add-float/2addr v0, v4

    sget v4, Lcom/android/mipop/paintpad/view/ColorPickerView;->bv:F

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bG:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bT:F

    sget v1, Lcom/android/mipop/paintpad/view/ColorPickerView;->bv:F

    sub-float v1, v0, v1

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bU:F

    sget v2, Lcom/android/mipop/paintpad/view/ColorPickerView;->bv:F

    sub-float v2, v0, v2

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bT:F

    iget v3, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bz:F

    add-float/2addr v0, v3

    sget v3, Lcom/android/mipop/paintpad/view/ColorPickerView;->bv:F

    add-float/2addr v3, v0

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bU:F

    sget v4, Lcom/android/mipop/paintpad/view/ColorPickerView;->bv:F

    sub-float v4, v0, v4

    iget-object v5, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bG:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bT:F

    sget v1, Lcom/android/mipop/paintpad/view/ColorPickerView;->bv:F

    sub-float v1, v0, v1

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bU:F

    sget v2, Lcom/android/mipop/paintpad/view/ColorPickerView;->bv:F

    sub-float v2, v0, v2

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bT:F

    sget v3, Lcom/android/mipop/paintpad/view/ColorPickerView;->bv:F

    sub-float v3, v0, v3

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bU:F

    iget v4, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->by:I

    int-to-float v4, v4

    add-float/2addr v0, v4

    sget v4, Lcom/android/mipop/paintpad/view/ColorPickerView;->bv:F

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bG:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bG:Landroid/graphics/Paint;

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bR:F

    sget v1, Lcom/android/mipop/paintpad/view/ColorPickerView;->bv:F

    sub-float v1, v0, v1

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bS:F

    iget v2, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->by:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    sget v2, Lcom/android/mipop/paintpad/view/ColorPickerView;->bv:F

    add-float/2addr v2, v0

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bR:F

    iget v3, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bx:I

    int-to-float v3, v3

    add-float/2addr v0, v3

    sget v3, Lcom/android/mipop/paintpad/view/ColorPickerView;->bv:F

    add-float/2addr v3, v0

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bS:F

    iget v4, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->by:I

    int-to-float v4, v4

    add-float/2addr v0, v4

    sget v4, Lcom/android/mipop/paintpad/view/ColorPickerView;->bv:F

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bG:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bR:F

    iget v1, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bx:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    sget v1, Lcom/android/mipop/paintpad/view/ColorPickerView;->bv:F

    add-float/2addr v1, v0

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bS:F

    sget v2, Lcom/android/mipop/paintpad/view/ColorPickerView;->bv:F

    sub-float v2, v0, v2

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bR:F

    iget v3, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bx:I

    int-to-float v3, v3

    add-float/2addr v0, v3

    sget v3, Lcom/android/mipop/paintpad/view/ColorPickerView;->bv:F

    add-float/2addr v3, v0

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bS:F

    iget v4, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->by:I

    int-to-float v4, v4

    add-float/2addr v0, v4

    sget v4, Lcom/android/mipop/paintpad/view/ColorPickerView;->bv:F

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bG:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bT:F

    iget v1, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bz:F

    add-float/2addr v0, v1

    sget v1, Lcom/android/mipop/paintpad/view/ColorPickerView;->bv:F

    add-float/2addr v1, v0

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bU:F

    sget v2, Lcom/android/mipop/paintpad/view/ColorPickerView;->bv:F

    sub-float v2, v0, v2

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bT:F

    iget v3, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bz:F

    add-float/2addr v0, v3

    sget v3, Lcom/android/mipop/paintpad/view/ColorPickerView;->bv:F

    add-float/2addr v3, v0

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bU:F

    iget v4, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->by:I

    int-to-float v4, v4

    add-float/2addr v0, v4

    sget v4, Lcom/android/mipop/paintpad/view/ColorPickerView;->bv:F

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bG:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bT:F

    sget v1, Lcom/android/mipop/paintpad/view/ColorPickerView;->bv:F

    sub-float v1, v0, v1

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bU:F

    iget v2, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->by:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    sget v2, Lcom/android/mipop/paintpad/view/ColorPickerView;->bv:F

    add-float/2addr v2, v0

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bT:F

    iget v3, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bz:F

    add-float/2addr v0, v3

    sget v3, Lcom/android/mipop/paintpad/view/ColorPickerView;->bv:F

    add-float/2addr v3, v0

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bU:F

    iget v4, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->by:I

    int-to-float v4, v4

    add-float/2addr v0, v4

    sget v4, Lcom/android/mipop/paintpad/view/ColorPickerView;->bv:F

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bG:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bG:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bR:F

    sget v1, Lcom/android/mipop/paintpad/view/ColorPickerView;->bw:F

    sub-float v1, v0, v1

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bS:F

    iget v2, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->by:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    sget v2, Lcom/android/mipop/paintpad/view/ColorPickerView;->bw:F

    add-float/2addr v2, v0

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bR:F

    iget v3, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bx:I

    int-to-float v3, v3

    add-float/2addr v0, v3

    sget v3, Lcom/android/mipop/paintpad/view/ColorPickerView;->bw:F

    add-float/2addr v3, v0

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bS:F

    iget v4, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->by:I

    int-to-float v4, v4

    add-float/2addr v0, v4

    sget v4, Lcom/android/mipop/paintpad/view/ColorPickerView;->bw:F

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bG:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bR:F

    iget v1, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bx:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    sget v1, Lcom/android/mipop/paintpad/view/ColorPickerView;->bw:F

    add-float/2addr v1, v0

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bS:F

    sget v2, Lcom/android/mipop/paintpad/view/ColorPickerView;->bw:F

    sub-float v2, v0, v2

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bR:F

    iget v3, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bx:I

    int-to-float v3, v3

    add-float/2addr v0, v3

    sget v3, Lcom/android/mipop/paintpad/view/ColorPickerView;->bw:F

    add-float/2addr v3, v0

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bS:F

    iget v4, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->by:I

    int-to-float v4, v4

    add-float/2addr v0, v4

    sget v4, Lcom/android/mipop/paintpad/view/ColorPickerView;->bw:F

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bG:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bT:F

    sget v1, Lcom/android/mipop/paintpad/view/ColorPickerView;->bw:F

    sub-float v1, v0, v1

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bU:F

    iget v2, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->by:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    sget v2, Lcom/android/mipop/paintpad/view/ColorPickerView;->bw:F

    add-float/2addr v2, v0

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bT:F

    iget v3, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bz:F

    add-float/2addr v0, v3

    sget v3, Lcom/android/mipop/paintpad/view/ColorPickerView;->bw:F

    add-float/2addr v3, v0

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bU:F

    iget v4, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->by:I

    int-to-float v4, v4

    add-float/2addr v0, v4

    sget v4, Lcom/android/mipop/paintpad/view/ColorPickerView;->bw:F

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bG:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bT:F

    iget v1, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bz:F

    add-float/2addr v0, v1

    sget v1, Lcom/android/mipop/paintpad/view/ColorPickerView;->bw:F

    add-float/2addr v1, v0

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bU:F

    sget v2, Lcom/android/mipop/paintpad/view/ColorPickerView;->bw:F

    sub-float v2, v0, v2

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bT:F

    iget v3, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bz:F

    add-float/2addr v0, v3

    sget v3, Lcom/android/mipop/paintpad/view/ColorPickerView;->bw:F

    add-float/2addr v3, v0

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bU:F

    iget v4, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->by:I

    int-to-float v4, v4

    add-float/2addr v0, v4

    sget v4, Lcom/android/mipop/paintpad/view/ColorPickerView;->bw:F

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bG:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bD:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bR:F

    iget v2, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bS:F

    iget-object v3, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->aQ:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bO:F

    cmpl-float v0, v0, v7

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bR:F

    :goto_0
    iget v1, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bP:F

    cmpl-float v1, v1, v7

    if-nez v1, :cond_2

    iget v1, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bS:F

    :goto_1
    iget v2, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bB:F

    iget-object v3, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->aQ:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bE:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bT:F

    iget v2, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bU:F

    iget-object v3, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->aQ:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bT:F

    iget v1, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bC:F

    sub-float v1, v0, v1

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bQ:F

    cmpl-float v0, v0, v7

    if-nez v0, :cond_3

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bU:F

    iget v2, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bC:F

    sub-float v2, v0, v2

    :goto_2
    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bT:F

    iget v3, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bz:F

    add-float/2addr v0, v3

    iget v3, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bC:F

    add-float/2addr v3, v0

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bQ:F

    cmpl-float v0, v0, v7

    if-nez v0, :cond_4

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bU:F

    iget v4, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->density:F

    mul-float/2addr v4, v6

    add-float/2addr v0, v4

    iget v4, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bC:F

    add-float/2addr v4, v0

    :goto_3
    iget-object v5, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bF:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void

    :cond_1
    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bO:F

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bP:F

    goto :goto_1

    :cond_3
    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bQ:F

    iget v2, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bC:F

    sub-float v2, v0, v2

    goto :goto_2

    :cond_4
    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bQ:F

    iget v4, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->density:F

    mul-float/2addr v4, v6

    add-float/2addr v0, v4

    iget v4, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bC:F

    add-float/2addr v4, v0

    goto :goto_3
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const/high16 v4, 0x4080

    const/high16 v3, 0x3f80

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->c:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->d:F

    invoke-direct {p0}, Lcom/android/mipop/paintpad/view/ColorPickerView;->w()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bO:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bP:F

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bO:F

    iget v1, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bR:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bR:F

    :goto_0
    iput v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bO:F

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bO:F

    iget v1, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bR:F

    iget v2, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bx:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bR:F

    iget v1, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bx:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    sub-float/2addr v0, v3

    :goto_1
    iput v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bO:F

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bP:F

    iget v1, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bS:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bS:F

    :goto_2
    iput v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bP:F

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bP:F

    iget v1, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bS:F

    iget v2, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->by:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bS:F

    iget v1, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->by:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    sub-float/2addr v0, v3

    :goto_3
    iput v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bP:F

    iget-object v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bK:[F

    iget v1, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bP:F

    iget v2, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bS:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x42ca

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->by:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    aget v0, v0, v1

    iget-object v1, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bH:[F

    iget v2, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bO:F

    iget v3, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bR:F

    sub-float/2addr v2, v3

    const v3, 0x43b48000

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bx:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    aget v1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/android/mipop/paintpad/view/ColorPickerView;->a(FF)V

    invoke-virtual {p0}, Lcom/android/mipop/paintpad/view/ColorPickerView;->invalidate()V

    :cond_0
    :goto_4
    iget-object v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bt:Lcom/android/mipop/paintpad/view/b;

    invoke-direct {p0}, Lcom/android/mipop/paintpad/view/ColorPickerView;->y()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/mipop/paintpad/view/b;->b(I)V

    const/4 v0, 0x1

    return v0

    :cond_1
    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bO:F

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bO:F

    goto :goto_1

    :cond_3
    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bP:F

    goto :goto_2

    :cond_4
    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bP:F

    goto :goto_3

    :cond_5
    invoke-direct {p0}, Lcom/android/mipop/paintpad/view/ColorPickerView;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bQ:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bU:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_6

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bU:F

    :goto_5
    iput v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bQ:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bU:F

    iget v2, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->by:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->density:F

    mul-float/2addr v2, v4

    sub-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_7

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bU:F

    iget v1, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->by:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->density:F

    mul-float/2addr v1, v4

    sub-float/2addr v0, v1

    :goto_6
    iput v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bQ:F

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bQ:F

    iget v1, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bU:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->by:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    sub-float v0, v3, v0

    iput v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bJ:F

    invoke-virtual {p0}, Lcom/android/mipop/paintpad/view/ColorPickerView;->invalidate()V

    goto :goto_4

    :cond_6
    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bQ:F

    goto :goto_5

    :cond_7
    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bQ:F

    goto :goto_6
.end method
