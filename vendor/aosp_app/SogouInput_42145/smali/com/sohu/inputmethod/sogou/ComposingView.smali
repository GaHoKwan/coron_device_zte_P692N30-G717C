.class public Lcom/sohu/inputmethod/sogou/ComposingView;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Ljava/util/Observer;


# static fields
.field private static a:I

.field private static final a:Landroid/text/style/UnderlineSpan;

.field private static b:I

.field private static final k:I


# instance fields
.field private a:F

.field private a:Landroid/graphics/Paint$FontMetricsInt;

.field private a:Landroid/graphics/Paint;

.field private a:Landroid/graphics/Shader;

.field private a:Landroid/graphics/Typeface;

.field private a:Landroid/text/SpannableStringBuilder;

.field private a:Landroid/text/style/BackgroundColorSpan;

.field private a:Landroid/text/style/ForegroundColorSpan;

.field private a:Landroid/view/GestureDetector;

.field private a:Laou;

.field private a:Lawv;

.field private a:Z

.field private b:F

.field private b:Lawv;

.field private b:Z

.field private c:F

.field private c:I

.field private c:Z

.field private d:F

.field private d:I

.field private d:Z

.field private e:I

.field private e:Z

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private l:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 45
    new-instance v0, Landroid/text/style/UnderlineSpan;

    invoke-direct {v0}, Landroid/text/style/UnderlineSpan;-><init>()V

    sput-object v0, Lcom/sohu/inputmethod/sogou/ComposingView;->a:Landroid/text/style/UnderlineSpan;

    .line 47
    const/4 v0, 0x6

    sput v0, Lcom/sohu/inputmethod/sogou/ComposingView;->a:I

    .line 49
    const/16 v0, 0x14

    sput v0, Lcom/sohu/inputmethod/sogou/ComposingView;->b:I

    .line 88
    const/high16 v0, 0x4000

    sget v1, Laox;->a:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/sohu/inputmethod/sogou/ComposingView;->k:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 92
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    iput-boolean v2, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->a:Z

    .line 51
    iput-boolean v2, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->b:Z

    .line 55
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->a:Landroid/text/SpannableStringBuilder;

    .line 77
    const/16 v0, 0x14

    iput v0, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->i:I

    .line 80
    iput-boolean v2, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->c:Z

    .line 81
    iput v1, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->c:F

    .line 82
    iput v1, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->d:F

    .line 84
    iput-boolean v2, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->d:Z

    .line 86
    iput-boolean v2, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->e:Z

    .line 89
    iput v2, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->l:I

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 96
    const/high16 v1, 0x7f0a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->d:I

    .line 97
    const v1, 0x7f090002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->c:I

    .line 98
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->a:Landroid/graphics/Typeface;

    .line 100
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->a:Landroid/graphics/Paint;

    .line 101
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 102
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->a:Landroid/graphics/Paint;

    iget v1, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->c:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 103
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->a:Landroid/graphics/Paint;

    iget v1, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->d:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 105
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->a:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->a:Landroid/graphics/Paint$FontMetricsInt;

    .line 107
    sget v0, Laox;->a:I

    int-to-float v0, v0

    const v1, 0x3c99999a

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/sohu/inputmethod/sogou/ComposingView;->a:I

    .line 109
    sget v0, Laox;->a:I

    int-to-float v0, v0

    const/high16 v1, 0x3d80

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/sohu/inputmethod/sogou/ComposingView;->b:I

    .line 111
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Laow;

    invoke-direct {v1, p0}, Laow;-><init>(Lcom/sohu/inputmethod/sogou/ComposingView;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->a:Landroid/view/GestureDetector;

    .line 151
    invoke-virtual {p0, v3}, Lcom/sohu/inputmethod/sogou/ComposingView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 152
    invoke-virtual {p0, v2}, Lcom/sohu/inputmethod/sogou/ComposingView;->setWillNotDraw(Z)V

    .line 153
    invoke-virtual {p0, v2}, Lcom/sohu/inputmethod/sogou/ComposingView;->setHorizontalScrollBarEnabled(Z)V

    .line 154
    invoke-virtual {p0, v2}, Lcom/sohu/inputmethod/sogou/ComposingView;->setVerticalScrollBarEnabled(Z)V

    .line 155
    iput v2, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->h:I

    .line 156
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/ComposingView;->getScrollY()I

    move-result v0

    invoke-virtual {p0, v2, v0}, Lcom/sohu/inputmethod/sogou/ComposingView;->scrollTo(II)V

    .line 157
    return-void
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/sogou/ComposingView;)F
    .locals 1
    .parameter

    .prologue
    .line 40
    iget v0, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->b:F

    return v0
.end method

.method private a(Ljava/lang/CharSequence;IILawv;Z)F
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 480
    or-int v0, p2, p3

    sub-int v1, p3, p2

    or-int/2addr v0, v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v1, p3

    or-int/2addr v0, v1

    if-gez v0, :cond_0

    .line 481
    const/4 v0, 0x0

    .line 484
    :goto_0
    return v0

    .line 483
    :cond_0
    invoke-direct {p0, p4, p5}, Lcom/sohu/inputmethod/sogou/ComposingView;->a(Lawv;Z)V

    .line 484
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v0

    goto :goto_0
.end method

.method private a(I)I
    .locals 3
    .parameter

    .prologue
    .line 488
    iget v0, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->c:F

    float-to-int v0, v0

    .line 489
    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 490
    :cond_0
    add-int v1, p1, v0

    int-to-float v1, v1

    iget v2, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->b:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    iget v1, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->b:F

    int-to-float v0, v0

    sub-float v0, v1, v0

    float-to-int p1, v0

    .line 491
    :cond_1
    return p1
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/sogou/ComposingView;)I
    .locals 1
    .parameter

    .prologue
    .line 40
    iget v0, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->j:I

    return v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/sogou/ComposingView;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 40
    iput p1, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->h:I

    return p1
.end method

.method private a(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 512
    sget v0, Lcom/sohu/inputmethod/sogou/ComposingView;->b:I

    iput v0, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->i:I

    .line 513
    iput p1, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->h:I

    .line 514
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/ComposingView;->invalidate()V

    .line 515
    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 12
    .parameter

    .prologue
    .line 424
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->a:Laou;

    if-nez v0, :cond_1

    .line 477
    :cond_0
    :goto_0
    return-void

    .line 425
    :cond_1
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/ComposingView;->getPaddingLeft()I

    move-result v0

    sget v1, Lcom/sohu/inputmethod/sogou/ComposingView;->a:I

    add-int/2addr v0, v1

    int-to-float v5, v0

    .line 426
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->a:Landroid/graphics/Paint$FontMetricsInt;

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    neg-int v0, v0

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/ComposingView;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v6, v0

    .line 427
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->c:Z

    if-eqz v0, :cond_3

    .line 429
    const/4 v0, 0x0

    .line 430
    iget v1, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->b:F

    iget v2, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->j:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 431
    iget v0, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->b:F

    iget v1, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->j:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    .line 432
    :cond_2
    sub-float/2addr v5, v0

    .line 434
    :cond_3
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->d:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->a:Laou;

    invoke-virtual {v0}, Laou;->a()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    .line 438
    :goto_1
    if-eqz v10, :cond_0

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->a:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->a:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 443
    :cond_4
    iget v0, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->g:I

    if-lez v0, :cond_8

    .line 444
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    iget v2, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->g:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 445
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "commited text is :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sohu/inputmethod/sogou/ComposingView;->a(Ljava/lang/String;)V

    .line 446
    if-eqz v0, :cond_7

    const-string v1, "\\u"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 447
    const-string v1, "\\\\u"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 448
    const/4 v0, 0x0

    aget-object v2, v11, v0

    const/4 v3, 0x0

    const/4 v0, 0x0

    aget-object v0, v11, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    iget-object v7, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->a:Lawv;

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/sohu/inputmethod/sogou/ComposingView;->a(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFFLawv;Z)V

    .line 449
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->a:Landroid/graphics/Paint;

    const/4 v1, 0x0

    aget-object v1, v11, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    aget-object v3, v11, v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v0

    add-float/2addr v5, v0

    .line 450
    const/4 v0, 0x1

    move v9, v0

    :goto_2
    array-length v0, v11

    if-ge v9, v0, :cond_8

    .line 451
    aget-object v0, v11, v9

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_6

    .line 452
    aget-object v0, v11, v9

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 453
    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 454
    sget-object v1, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    iget v2, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->d:F

    float-to-int v2, v2

    invoke-virtual {v1, v0, v2}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 455
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/ComposingView;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v5

    sget v2, Lcom/sohu/inputmethod/sogou/ComposingView;->k:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/ComposingView;->getPaddingTop()I

    move-result v2

    sget v3, Lcom/sohu/inputmethod/sogou/ComposingView;->k:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->d:F

    add-float/2addr v3, v5

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/ComposingView;->getPaddingBottom()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sget v4, Lcom/sohu/inputmethod/sogou/ComposingView;->k:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iget v4, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->d:F

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/ComposingView;->getPaddingBottom()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v4, v7

    sget v7, Lcom/sohu/inputmethod/sogou/ComposingView;->k:I

    int-to-float v7, v7

    sub-float/2addr v4, v7

    float-to-int v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 458
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 459
    iget v0, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->d:F

    add-float/2addr v5, v0

    .line 461
    aget-object v0, v11, v9

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 462
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reset string is :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/sogou/ComposingView;->a(Ljava/lang/String;)V

    .line 463
    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    iget-object v7, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->a:Lawv;

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/sohu/inputmethod/sogou/ComposingView;->a(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFFLawv;Z)V

    .line 464
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->a:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v2, v1, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v0

    add-float/2addr v5, v0

    .line 450
    :goto_3
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto/16 :goto_2

    .line 434
    :cond_5
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->a:Laou;

    invoke-virtual {v0}, Laou;->a()Ljava/lang/CharSequence;

    move-result-object v0

    move-object v10, v0

    goto/16 :goto_1

    .line 466
    :cond_6
    aget-object v2, v11, v9

    const/4 v3, 0x0

    aget-object v0, v11, v9

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    iget-object v7, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->a:Lawv;

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/sohu/inputmethod/sogou/ComposingView;->a(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFFLawv;Z)V

    .line 467
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->a:Landroid/graphics/Paint;

    aget-object v1, v11, v9

    const/4 v2, 0x0

    aget-object v3, v11, v9

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v0

    add-float/2addr v5, v0

    goto :goto_3

    .line 471
    :cond_7
    const/4 v3, 0x0

    iget v4, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->g:I

    iget-object v7, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->a:Lawv;

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, v10

    invoke-direct/range {v0 .. v8}, Lcom/sohu/inputmethod/sogou/ComposingView;->a(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFFLawv;Z)V

    .line 472
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->a:Landroid/graphics/Paint;

    const/4 v1, 0x0

    iget v2, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->g:I

    invoke-virtual {v0, v10, v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v0

    add-float/2addr v5, v0

    .line 475
    :cond_8
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->a:Landroid/graphics/Paint;

    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->b:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->a:Landroid/graphics/Shader;

    :goto_4
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 476
    iget v3, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->g:I

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v4

    iget-object v7, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->b:Lawv;

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, v10

    invoke-direct/range {v0 .. v8}, Lcom/sohu/inputmethod/sogou/ComposingView;->a(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFFLawv;Z)V

    goto/16 :goto_0

    .line 475
    :cond_9
    const/4 v0, 0x0

    goto :goto_4
.end method

.method private a(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFFLawv;Z)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 418
    invoke-direct {p0, p7, p8}, Lcom/sohu/inputmethod/sogou/ComposingView;->a(Lawv;Z)V

    .line 419
    iget-object v6, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->a:Landroid/graphics/Paint;

    move-object v0, p1

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 420
    return-void
.end method

.method private final a(Landroid/text/SpannableStringBuilder;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/16 v3, 0x121

    const/4 v2, 0x0

    .line 202
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 203
    if-le p2, v0, :cond_0

    .line 209
    :goto_0
    return-void

    .line 204
    :cond_0
    sget-object v1, Lcom/sohu/inputmethod/sogou/ComposingView;->a:Landroid/text/style/UnderlineSpan;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 207
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->a:Landroid/text/style/BackgroundColorSpan;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 208
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->a:Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0
.end method

.method private a(Laou;)V
    .locals 1
    .parameter

    .prologue
    .line 282
    iput-object p1, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->a:Laou;

    .line 283
    invoke-virtual {p1}, Laou;->a()I

    move-result v0

    iput v0, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->g:I

    .line 284
    invoke-virtual {p1}, Laou;->a()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iput v0, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->f:I

    .line 285
    return-void
.end method

.method private a(Lawv;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 408
    if-nez p1, :cond_0

    .line 415
    :goto_0
    return-void

    .line 409
    :cond_0
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->a:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFlags(I)V

    .line 410
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->a:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 411
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->a:Landroid/graphics/Paint;

    iget v1, p1, Lawv;->a:I

    iget v2, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->e:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 412
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->a:Landroid/graphics/Paint;

    iget v1, p1, Lawv;->b:I

    invoke-static {v1}, Lawh;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 413
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->a:Landroid/graphics/Paint;

    iget-object v1, p1, Lawv;->a:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 414
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->a:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->a:Landroid/graphics/Paint$FontMetricsInt;

    goto :goto_0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/sogou/ComposingView;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/sohu/inputmethod/sogou/ComposingView;->c()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 599
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->a:Z

    if-eqz v0, :cond_0

    .line 600
    const-string v0, "ComposingView"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/sogou/ComposingView;)Z
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->c:Z

    return v0
.end method

.method public static synthetic b(Lcom/sohu/inputmethod/sogou/ComposingView;)F
    .locals 1
    .parameter

    .prologue
    .line 40
    iget v0, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->c:F

    return v0
.end method

.method private b(I)I
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 495
    .line 496
    iget-boolean v1, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->c:Z

    if-eqz v1, :cond_2

    .line 497
    iget v1, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->j:I

    .line 498
    if-lez p1, :cond_0

    move p1, v0

    .line 500
    :cond_0
    neg-int v0, p1

    .line 501
    add-int/2addr v0, v1

    int-to-float v0, v0

    iget v2, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->b:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    int-to-float v0, v1

    iget v1, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->b:F

    sub-float/2addr v0, v1

    float-to-int p1, v0

    .line 507
    :cond_1
    :goto_0
    return p1

    .line 504
    :cond_2
    iget v1, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->c:F

    float-to-int v1, v1

    .line 505
    if-gez p1, :cond_4

    .line 506
    :goto_1
    add-int v2, v0, v1

    int-to-float v2, v2

    iget v3, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->b:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    iget v0, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->b:F

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    :cond_3
    move p1, v0

    .line 507
    goto :goto_0

    :cond_4
    move v0, p1

    goto :goto_1
.end method

.method public static synthetic b(Lcom/sohu/inputmethod/sogou/ComposingView;)I
    .locals 1
    .parameter

    .prologue
    .line 40
    iget v0, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->i:I

    return v0
.end method

.method public static synthetic b(Lcom/sohu/inputmethod/sogou/ComposingView;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 40
    iput p1, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->i:I

    return p1
.end method

.method private b()V
    .locals 2

    .prologue
    .line 381
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/ComposingView;->getScrollX()I

    move-result v0

    .line 382
    iget v1, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->h:I

    if-le v1, v0, :cond_2

    .line 383
    iget v1, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->i:I

    add-int/2addr v0, v1

    .line 384
    iget v1, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->h:I

    if-lt v0, v1, :cond_1

    .line 385
    iget v0, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->h:I

    .line 386
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/ComposingView;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sohu/inputmethod/sogou/ComposingView;->scrollTo(II)V

    .line 387
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/ComposingView;->requestLayout()V

    .line 401
    :goto_0
    iget v1, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->i:I

    if-nez v1, :cond_0

    .line 402
    iput v0, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->h:I

    .line 404
    :cond_0
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/ComposingView;->invalidate()V

    .line 405
    return-void

    .line 389
    :cond_1
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/ComposingView;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sohu/inputmethod/sogou/ComposingView;->scrollTo(II)V

    goto :goto_0

    .line 392
    :cond_2
    iget v1, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->i:I

    sub-int/2addr v0, v1

    .line 393
    iget v1, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->h:I

    if-gt v0, v1, :cond_3

    .line 394
    iget v0, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->h:I

    .line 395
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/ComposingView;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sohu/inputmethod/sogou/ComposingView;->scrollTo(II)V

    .line 396
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/ComposingView;->requestLayout()V

    goto :goto_0

    .line 398
    :cond_3
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/ComposingView;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sohu/inputmethod/sogou/ComposingView;->scrollTo(II)V

    goto :goto_0
.end method

.method public static synthetic c(Lcom/sohu/inputmethod/sogou/ComposingView;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/sohu/inputmethod/sogou/ComposingView;->b(I)I

    move-result v0

    return v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 518
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/ComposingView;->getScrollX()I

    move-result v0

    .line 519
    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/sogou/ComposingView;->b(I)I

    move-result v1

    .line 520
    if-eq v1, v0, :cond_0

    .line 521
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/ComposingView;->getScrollY()I

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/sohu/inputmethod/sogou/ComposingView;->a(II)V

    .line 523
    :cond_0
    return-void
.end method

.method private d()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 591
    sget v0, Laox;->a:I

    int-to-float v0, v0

    const v1, 0x3ca3d70a

    mul-float/2addr v0, v1

    float-to-int v1, v0

    .line 592
    iget v0, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->c:I

    invoke-static {v0}, Lawh;->a(I)I

    move-result v5

    .line 593
    iget v0, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->l:I

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/ComposingView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v0, v3

    sget v3, Lcom/sohu/inputmethod/sogou/ComposingView;->a:I

    sub-int v3, v0, v3

    .line 594
    new-instance v0, Landroid/graphics/LinearGradient;

    sub-int v1, v3, v1

    int-to-float v1, v1

    int-to-float v3, v3

    const v4, 0xffffff

    and-int/2addr v4, v5

    const/high16 v6, 0x6000

    or-int/2addr v6, v4

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v4, v2

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->a:Landroid/graphics/Shader;

    .line 596
    return-void
.end method


# virtual methods
.method public a(Z)I
    .locals 2
    .parameter

    .prologue
    .line 578
    sget-object v0, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    if-eqz v0, :cond_0

    .line 579
    sget-object v0, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a()I

    move-result v0

    invoke-static {v0}, Lcom/sohu/inputmethod/engine/IMEInterface;->supportCloudInput(I)Z

    move-result v0

    and-int/2addr p1, v0

    .line 581
    :cond_0
    if-eqz p1, :cond_1

    .line 582
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/ComposingView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    sget v1, Lafp;->a:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->l:I

    .line 586
    :goto_0
    invoke-direct {p0}, Lcom/sohu/inputmethod/sogou/ComposingView;->d()V

    .line 587
    iget v0, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->l:I

    return v0

    .line 584
    :cond_1
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/ComposingView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    const/high16 v1, 0x3f80

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->l:I

    goto :goto_0
.end method

.method public a()V
    .locals 12

    .prologue
    .line 288
    const/4 v0, 0x0

    iput v0, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->c:F

    .line 289
    const/4 v0, 0x0

    iput v0, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->d:F

    .line 290
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->a:Laou;

    if-eqz v0, :cond_3

    .line 291
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->a:Laou;

    invoke-virtual {v0}, Laou;->a()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 294
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 295
    const/4 v7, 0x0

    .line 296
    const/4 v6, 0x0

    .line 297
    iget v2, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->g:I

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    iget-object v4, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->b:Lawv;

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sohu/inputmethod/sogou/ComposingView;->a(Ljava/lang/CharSequence;IILawv;Z)F

    move-result v9

    .line 298
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->a:Landroid/graphics/Paint$FontMetricsInt;

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->a:Landroid/graphics/Paint$FontMetricsInt;

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/ComposingView;->getPaddingTop()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/ComposingView;->getPaddingBottom()I

    move-result v2

    add-int v10, v0, v2

    .line 300
    iget v0, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->g:I

    if-lez v0, :cond_7

    .line 301
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->a:Landroid/graphics/Paint$FontMetricsInt;

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->a:Landroid/graphics/Paint$FontMetricsInt;

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/ComposingView;->getPaddingTop()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/ComposingView;->getPaddingBottom()I

    move-result v2

    add-int v8, v0, v2

    .line 302
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    iget v3, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->g:I

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 303
    if-eqz v0, :cond_6

    const-string v2, "\\u"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 304
    const-string v1, "\\\\u"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 305
    const/4 v0, 0x0

    aget-object v1, v11, v0

    const/4 v2, 0x0

    const/4 v0, 0x0

    aget-object v0, v11, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->a:Lawv;

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sohu/inputmethod/sogou/ComposingView;->a(Ljava/lang/CharSequence;IILawv;Z)F

    move-result v0

    add-float v1, v7, v0

    .line 306
    const/4 v0, 0x1

    move v6, v0

    move v7, v1

    :goto_1
    array-length v0, v11

    if-ge v6, v0, :cond_2

    .line 307
    aget-object v0, v11, v6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_1

    .line 308
    int-to-float v0, v8

    add-float/2addr v7, v0

    .line 309
    aget-object v0, v11, v6

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 310
    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->a:Lawv;

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sohu/inputmethod/sogou/ComposingView;->a(Ljava/lang/CharSequence;IILawv;Z)F

    move-result v0

    add-float v1, v7, v0

    .line 306
    :goto_2
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    move v7, v1

    goto :goto_1

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->a:Laou;

    invoke-virtual {v0}, Laou;->a()Ljava/lang/CharSequence;

    move-result-object v1

    goto/16 :goto_0

    .line 312
    :cond_1
    aget-object v1, v11, v6

    const/4 v2, 0x0

    aget-object v0, v11, v6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->a:Lawv;

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sohu/inputmethod/sogou/ComposingView;->a(Ljava/lang/CharSequence;IILawv;Z)F

    move-result v0

    add-float v1, v7, v0

    goto :goto_2

    :cond_2
    move v0, v8

    .line 320
    :goto_3
    iput v7, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->a:F

    .line 321
    add-float v1, v7, v9

    iput v1, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->c:F

    .line 322
    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->d:F

    .line 325
    :cond_3
    iget v0, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->c:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_4

    .line 326
    iget v0, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->c:F

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/ComposingView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/ComposingView;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    sget v2, Lcom/sohu/inputmethod/sogou/ComposingView;->a:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->c:F

    .line 327
    iget v0, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->c:F

    iput v0, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->b:F

    .line 328
    iget v0, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->c:F

    iget v1, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->l:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    .line 329
    iget v0, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->l:I

    int-to-float v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->c:F

    .line 332
    :cond_4
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->c:Z

    if-eqz v0, :cond_5

    .line 333
    iget v0, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->j:I

    int-to-float v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->c:F

    .line 334
    :cond_5
    return-void

    .line 316
    :cond_6
    const/4 v2, 0x0

    iget v3, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->g:I

    iget-object v4, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->a:Lawv;

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sohu/inputmethod/sogou/ComposingView;->a(Ljava/lang/CharSequence;IILawv;Z)F

    move-result v7

    move v0, v8

    goto :goto_3

    :cond_7
    move v0, v6

    goto :goto_3
.end method

.method public a(Laou;Landroid/view/inputmethod/InputConnection;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 212
    iput-boolean v3, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->c:Z

    .line 213
    invoke-direct {p0, p1}, Lcom/sohu/inputmethod/sogou/ComposingView;->a(Laou;)V

    .line 214
    invoke-virtual {p1}, Laou;->a()Ljava/lang/CharSequence;

    move-result-object v0

    .line 215
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->a:Landroid/text/SpannableStringBuilder;

    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->a:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    invoke-virtual {v1, v3, v2, v0}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 216
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->a:Landroid/text/SpannableStringBuilder;

    iget v1, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->g:I

    invoke-direct {p0, v0, v1}, Lcom/sohu/inputmethod/sogou/ComposingView;->a(Landroid/text/SpannableStringBuilder;I)V

    .line 217
    if-eqz p2, :cond_0

    .line 218
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->a:Landroid/text/SpannableStringBuilder;

    const/4 v1, 0x1

    invoke-interface {p2, v0, v1}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 220
    :cond_0
    return-void
.end method

.method public a(Laou;Z)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 232
    iget v0, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->g:I

    invoke-virtual {p1}, Laou;->a()I

    move-result v3

    if-eq v0, v3, :cond_3

    move v0, v1

    .line 235
    :goto_0
    invoke-direct {p0, p1}, Lcom/sohu/inputmethod/sogou/ComposingView;->a(Laou;)V

    .line 237
    invoke-virtual {p1}, Laou;->c()Z

    move-result v3

    if-nez v3, :cond_6

    .line 238
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/ComposingView;->a()V

    .line 239
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/ComposingView;->requestLayout()V

    .line 241
    iget v3, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->c:F

    float-to-int v3, v3

    .line 243
    if-nez p2, :cond_0

    if-eqz v0, :cond_4

    :cond_0
    iget v5, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->a:F

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float v3, v5, v3

    float-to-int v3, v3

    .line 246
    :goto_1
    invoke-direct {p0, v3}, Lcom/sohu/inputmethod/sogou/ComposingView;->a(I)I

    move-result v3

    .line 247
    iput v3, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->h:I

    .line 248
    if-nez p2, :cond_1

    if-eqz v0, :cond_5

    :cond_1
    iget v0, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->h:I

    if-nez v0, :cond_5

    :goto_2
    iput-boolean v1, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->b:Z

    .line 249
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/ComposingView;->getScrollY()I

    move-result v0

    invoke-virtual {p0, v3, v0}, Lcom/sohu/inputmethod/sogou/ComposingView;->scrollTo(II)V

    .line 250
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->e:Z

    if-eqz v0, :cond_2

    move v2, v4

    :cond_2
    invoke-virtual {p0, v2}, Lcom/sohu/inputmethod/sogou/ComposingView;->setVisibility(I)V

    .line 251
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/ComposingView;->invalidate()V

    .line 258
    :goto_3
    return-void

    :cond_3
    move v0, v2

    .line 232
    goto :goto_0

    .line 243
    :cond_4
    iget v5, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->b:F

    int-to-float v3, v3

    sub-float v3, v5, v3

    float-to-int v3, v3

    goto :goto_1

    :cond_5
    move v1, v2

    .line 248
    goto :goto_2

    .line 253
    :cond_6
    invoke-virtual {p0, v4}, Lcom/sohu/inputmethod/sogou/ComposingView;->setVisibility(I)V

    .line 254
    sget-object v0, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->p()V

    .line 255
    iput v2, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->h:I

    .line 256
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/ComposingView;->getScrollY()I

    move-result v0

    invoke-virtual {p0, v2, v0}, Lcom/sohu/inputmethod/sogou/ComposingView;->scrollTo(II)V

    goto :goto_3
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 223
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->e:Z

    return v0
.end method

.method public b(Laou;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 266
    iput-boolean v0, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->c:Z

    .line 267
    iput-boolean p2, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->d:Z

    .line 268
    invoke-virtual {p0, p1, v0}, Lcom/sohu/inputmethod/sogou/ComposingView;->a(Laou;Z)V

    .line 269
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 570
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->c:Z

    return v0
.end method

.method public c(Laou;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 272
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->c:Z

    .line 273
    iput-boolean p2, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->d:Z

    .line 274
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/sohu/inputmethod/sogou/ComposingView;->a(Laou;Z)V

    .line 275
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter

    .prologue
    .line 371
    invoke-direct {p0, p1}, Lcom/sohu/inputmethod/sogou/ComposingView;->a(Landroid/graphics/Canvas;)V

    .line 373
    iget v0, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->h:I

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/ComposingView;->getScrollX()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 374
    invoke-direct {p0}, Lcom/sohu/inputmethod/sogou/ComposingView;->b()V

    .line 376
    :cond_0
    sget-object v0, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(J)V

    .line 378
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 365
    iget v0, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->c:F

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->d:F

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/sohu/inputmethod/sogou/ComposingView;->setMeasuredDimension(II)V

    .line 366
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 529
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->b:Z

    .line 530
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->a:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 554
    :cond_0
    :goto_0
    :pswitch_0
    return v2

    .line 534
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 535
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 536
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 538
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 540
    :pswitch_1
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/ComposingView;->getScrollX()I

    move-result v0

    .line 541
    iget v1, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->h:I

    if-eq v1, v0, :cond_0

    .line 542
    iput v0, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->h:I

    goto :goto_0

    .line 548
    :pswitch_2
    invoke-direct {p0}, Lcom/sohu/inputmethod/sogou/ComposingView;->c()V

    goto :goto_0

    .line 538
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public setCloudLimited(Z)V
    .locals 0
    .parameter

    .prologue
    .line 278
    iput-boolean p1, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->c:Z

    .line 279
    return-void
.end method

.method public setIsHandWriting(Z)V
    .locals 0
    .parameter

    .prologue
    .line 227
    iput-boolean p1, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->e:Z

    .line 228
    return-void
.end method

.method public setTheme(Lawg;Lawc;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 160
    if-nez p1, :cond_0

    .line 199
    :goto_0
    return-void

    .line 161
    :cond_0
    new-instance v0, Landroid/text/style/BackgroundColorSpan;

    invoke-virtual {p1}, Lawg;->a()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->a:Landroid/text/style/BackgroundColorSpan;

    .line 163
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/ComposingView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 164
    if-eqz v0, :cond_1

    .line 165
    sget-object v1, Lawd;->u:Ljava/lang/Integer;

    invoke-virtual {p2, v1}, Lawc;->b(Ljava/lang/Integer;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 166
    sget-object v2, Lawd;->v:Ljava/lang/Integer;

    invoke-virtual {p2, v2}, Lawc;->b(Ljava/lang/Integer;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 167
    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    .line 168
    new-instance v3, Landroid/graphics/drawable/LayerDrawable;

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/graphics/drawable/Drawable;

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v2, v4, v1

    invoke-direct {v3, v4}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-static {v3}, Lawh;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 177
    :goto_1
    invoke-virtual {p1}, Lawg;->a()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0, v5, v5, v1, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 180
    :cond_1
    invoke-virtual {p1}, Lawg;->b()Lawv;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->b:Lawv;

    .line 181
    invoke-virtual {p1}, Lawg;->a()Lawv;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->a:Lawv;

    .line 182
    invoke-virtual {p1}, Lawg;->c()I

    move-result v0

    iput v0, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->e:I

    .line 184
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->b:Lawv;

    if-eqz v0, :cond_2

    .line 185
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->b:Lawv;

    iget v0, v0, Lawv;->a:I

    invoke-virtual {p1}, Lawg;->c()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->d:I

    .line 186
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->b:Lawv;

    iget v0, v0, Lawv;->b:I

    iput v0, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->c:I

    .line 187
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->b:Lawv;

    iget-object v0, v0, Lawv;->a:Landroid/graphics/Typeface;

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->a:Landroid/graphics/Typeface;

    .line 190
    :cond_2
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p1}, Lawg;->b()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->a:Landroid/text/style/ForegroundColorSpan;

    .line 192
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->a:Landroid/graphics/Paint;

    iget v1, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->d:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 193
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->a:Landroid/graphics/Paint;

    iget v1, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->c:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 194
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->a:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->a:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 196
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->a:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->a:Landroid/graphics/Paint$FontMetricsInt;

    .line 197
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->a:Landroid/graphics/Paint$FontMetricsInt;

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->a:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/ComposingView;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/ComposingView;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->d:F

    .line 198
    sget-boolean v0, Lcom/sohu/inputmethod/sogou/SogouIME;->f:Z

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/ComposingView;->a(Z)I

    move-result v0

    iput v0, p0, Lcom/sohu/inputmethod/sogou/ComposingView;->l:I

    goto/16 :goto_0

    .line 170
    :cond_3
    invoke-virtual {p1}, Lawg;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 171
    if-eqz v1, :cond_4

    .line 172
    invoke-virtual {p1}, Lawg;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Lawh;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 174
    :cond_4
    const/4 v1, -0x1

    invoke-static {v1}, Lawh;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_1
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 560
    instance-of v0, p1, Laxc;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 561
    check-cast v0, Laxc;

    invoke-virtual {v0}, Laxc;->a()Lawg;

    move-result-object v0

    check-cast p1, Laxc;

    invoke-virtual {p1}, Laxc;->b()Lawc;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sohu/inputmethod/sogou/ComposingView;->setTheme(Lawg;Lawc;)V

    .line 563
    :cond_0
    return-void
.end method
