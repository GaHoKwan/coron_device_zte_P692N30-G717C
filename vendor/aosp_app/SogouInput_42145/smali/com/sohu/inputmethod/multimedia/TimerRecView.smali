.class public Lcom/sohu/inputmethod/multimedia/TimerRecView;
.super Landroid/widget/TextView;
.source "SourceFile"


# static fields
.field public static a:I


# instance fields
.field private a:F

.field private a:Landroid/graphics/Paint;

.field public a:Landroid/os/Handler;

.field private a:Ljava/lang/String;

.field private a:Ljava/util/Timer;

.field private b:F

.field private b:I

.field private b:Ljava/lang/String;

.field private c:F

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const v0, -0xcc510b

    sput v0, Lcom/sohu/inputmethod/multimedia/TimerRecView;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/sohu/inputmethod/multimedia/TimerRecView;->b:I

    .line 21
    const-string v0, "00:00"

    iput-object v0, p0, Lcom/sohu/inputmethod/multimedia/TimerRecView;->a:Ljava/lang/String;

    .line 22
    const-string v0, " | 01:00"

    iput-object v0, p0, Lcom/sohu/inputmethod/multimedia/TimerRecView;->b:Ljava/lang/String;

    .line 31
    const v0, -0x91847b

    iput v0, p0, Lcom/sohu/inputmethod/multimedia/TimerRecView;->c:I

    .line 47
    new-instance v0, Lvh;

    invoke-direct {v0, p0}, Lvh;-><init>(Lcom/sohu/inputmethod/multimedia/TimerRecView;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/multimedia/TimerRecView;->a:Landroid/os/Handler;

    .line 92
    invoke-direct {p0}, Lcom/sohu/inputmethod/multimedia/TimerRecView;->d()V

    .line 93
    return-void
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/multimedia/TimerRecView;)I
    .locals 1
    .parameter

    .prologue
    .line 18
    iget v0, p0, Lcom/sohu/inputmethod/multimedia/TimerRecView;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sohu/inputmethod/multimedia/TimerRecView;->b:I

    return v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/multimedia/TimerRecView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 18
    iput-object p1, p0, Lcom/sohu/inputmethod/multimedia/TimerRecView;->a:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/multimedia/TimerRecView;)Ljava/util/Timer;
    .locals 1
    .parameter

    .prologue
    .line 18
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/TimerRecView;->a:Ljava/util/Timer;

    return-object v0
.end method

.method public static synthetic b(Lcom/sohu/inputmethod/multimedia/TimerRecView;)I
    .locals 1
    .parameter

    .prologue
    .line 18
    iget v0, p0, Lcom/sohu/inputmethod/multimedia/TimerRecView;->b:I

    return v0
.end method

.method private d()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 96
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sohu/inputmethod/multimedia/TimerRecView;->a:Landroid/graphics/Paint;

    .line 97
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/TimerRecView;->a:Landroid/graphics/Paint;

    const v1, -0xcc510b

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 98
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/TimerRecView;->a:Landroid/graphics/Paint;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextScaleX(F)V

    .line 99
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/TimerRecView;->a:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSkewX(F)V

    .line 100
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/TimerRecView;->a:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 101
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/TimerRecView;->a:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/sohu/inputmethod/multimedia/TimerRecView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Laox;->a(Landroid/content/Context;)I

    move-result v1

    int-to-double v1, v1

    const-wide v3, 0x3fb5555555555555L

    mul-double/2addr v1, v3

    double-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 102
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/TimerRecView;->a:Landroid/graphics/Paint;

    const-string v1, "00:00 | 01:00"

    const-string v2, "00:00 | 01:00"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v5, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v0

    iput v0, p0, Lcom/sohu/inputmethod/multimedia/TimerRecView;->a:F

    .line 103
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/TimerRecView;->a:Landroid/graphics/Paint;

    const-string v1, "00:00"

    const-string v2, "00:00"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v5, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v0

    iput v0, p0, Lcom/sohu/inputmethod/multimedia/TimerRecView;->b:F

    .line 104
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Paint;)D
    .locals 2
    .parameter

    .prologue
    .line 132
    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 133
    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float v0, v1, v0

    invoke-static {v0}, Landroid/util/FloatMath;->ceil(F)F

    move-result v0

    const/high16 v1, 0x41c0

    sub-float/2addr v0, v1

    float-to-double v0, v0

    return-wide v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    iput v0, p0, Lcom/sohu/inputmethod/multimedia/TimerRecView;->b:I

    .line 72
    const-string v0, "00:00"

    iput-object v0, p0, Lcom/sohu/inputmethod/multimedia/TimerRecView;->a:Ljava/lang/String;

    .line 73
    invoke-virtual {p0}, Lcom/sohu/inputmethod/multimedia/TimerRecView;->invalidate()V

    .line 74
    return-void
.end method

.method public b()V
    .locals 6

    .prologue
    const-wide/16 v2, 0x3e8

    .line 77
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/sohu/inputmethod/multimedia/TimerRecView;->a:Ljava/util/Timer;

    .line 78
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/TimerRecView;->a:Ljava/util/Timer;

    new-instance v1, Lvi;

    invoke-direct {v1, p0}, Lvi;-><init>(Lcom/sohu/inputmethod/multimedia/TimerRecView;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 79
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/TimerRecView;->a:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 83
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 110
    invoke-virtual {p0}, Lcom/sohu/inputmethod/multimedia/TimerRecView;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    .line 111
    invoke-virtual {p0}, Lcom/sohu/inputmethod/multimedia/TimerRecView;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    .line 113
    float-to-double v1, v1

    iget-object v3, p0, Lcom/sohu/inputmethod/multimedia/TimerRecView;->a:Landroid/graphics/Paint;

    invoke-virtual {p0, v3}, Lcom/sohu/inputmethod/multimedia/TimerRecView;->a(Landroid/graphics/Paint;)D

    move-result-wide v3

    add-double/2addr v1, v3

    const-wide/high16 v3, 0x4000

    div-double/2addr v1, v3

    double-to-float v1, v1

    .line 114
    invoke-virtual {p1, v5, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 115
    iget v1, p0, Lcom/sohu/inputmethod/multimedia/TimerRecView;->a:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sohu/inputmethod/multimedia/TimerRecView;->c:F

    .line 116
    iget v0, p0, Lcom/sohu/inputmethod/multimedia/TimerRecView;->c:F

    invoke-virtual {p1, v0, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 117
    iget v0, p0, Lcom/sohu/inputmethod/multimedia/TimerRecView;->b:F

    invoke-virtual {p1, v0, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 118
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/TimerRecView;->a:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/sohu/inputmethod/multimedia/TimerRecView;->a:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sohu/inputmethod/multimedia/TimerRecView;->a:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v0

    .line 119
    neg-float v1, v0

    invoke-virtual {p1, v1, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 121
    iget-object v1, p0, Lcom/sohu/inputmethod/multimedia/TimerRecView;->a:Landroid/graphics/Paint;

    sget v2, Lcom/sohu/inputmethod/multimedia/TimerRecView;->a:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 122
    iget-object v1, p0, Lcom/sohu/inputmethod/multimedia/TimerRecView;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/sohu/inputmethod/multimedia/TimerRecView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v5, v5, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 123
    invoke-virtual {p1, v0, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 124
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/TimerRecView;->a:Landroid/graphics/Paint;

    iget v1, p0, Lcom/sohu/inputmethod/multimedia/TimerRecView;->c:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 125
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/TimerRecView;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/sohu/inputmethod/multimedia/TimerRecView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v5, v5, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 128
    return-void
.end method
