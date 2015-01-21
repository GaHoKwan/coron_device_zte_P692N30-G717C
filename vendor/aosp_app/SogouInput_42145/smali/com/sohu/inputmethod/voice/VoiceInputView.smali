.class public Lcom/sohu/inputmethod/voice/VoiceInputView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field private a:F

.field private a:I

.field private a:Landroid/content/Context;

.field private a:Landroid/graphics/Paint;

.field private a:Landroid/graphics/drawable/Drawable;

.field private a:Landroid/os/Handler;

.field private a:Landroid/view/View;

.field private a:Landroid/widget/ImageView;

.field private a:Landroid/widget/TextView;

.field private a:Lawv;

.field private a:Laxw;

.field private a:Layl;

.field private a:Lcom/sohu/inputmethod/sogou/ImageTextButton;

.field private a:Ljava/lang/Runnable;

.field private b:F

.field private b:I

.field private b:Landroid/graphics/drawable/Drawable;

.field private b:Landroid/widget/ImageView;

.field private c:F

.field private c:I

.field private c:Landroid/graphics/drawable/Drawable;

.field private c:Landroid/widget/ImageView;

.field private d:I

.field private final e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 94
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 81
    const/4 v0, 0x0

    iput v0, p0, Lcom/sohu/inputmethod/voice/VoiceInputView;->a:F

    .line 82
    const/4 v0, 0x0

    iput v0, p0, Lcom/sohu/inputmethod/voice/VoiceInputView;->d:I

    .line 84
    sget-object v0, Layl;->c:Layl;

    iput-object v0, p0, Lcom/sohu/inputmethod/voice/VoiceInputView;->a:Layl;

    .line 91
    const/4 v0, 0x6

    iput v0, p0, Lcom/sohu/inputmethod/voice/VoiceInputView;->e:I

    .line 207
    new-instance v0, Layd;

    invoke-direct {v0, p0}, Layd;-><init>(Lcom/sohu/inputmethod/voice/VoiceInputView;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/voice/VoiceInputView;->a:Ljava/lang/Runnable;

    .line 95
    iput-object p1, p0, Lcom/sohu/inputmethod/voice/VoiceInputView;->a:Landroid/content/Context;

    .line 96
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sohu/inputmethod/voice/VoiceInputView;->a:Landroid/os/Handler;

    .line 97
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sohu/inputmethod/voice/VoiceInputView;->a:Landroid/graphics/Paint;

    .line 100
    return-void
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/voice/VoiceInputView;)F
    .locals 1
    .parameter

    .prologue
    .line 46
    iget v0, p0, Lcom/sohu/inputmethod/voice/VoiceInputView;->b:F

    return v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/voice/VoiceInputView;)I
    .locals 1
    .parameter

    .prologue
    .line 46
    iget v0, p0, Lcom/sohu/inputmethod/voice/VoiceInputView;->d:I

    return v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/voice/VoiceInputView;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    iput p1, p0, Lcom/sohu/inputmethod/voice/VoiceInputView;->d:I

    return p1
.end method

.method private static a(Ljava/nio/ShortBuffer;III)I
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 509
    mul-int v0, p2, p3

    add-int/2addr v0, p1

    .line 510
    add-int v2, v0, p3

    .line 511
    const/4 v1, 0x0

    .line 512
    :goto_0
    if-ge v0, v2, :cond_0

    .line 513
    invoke-virtual {p0, v0}, Ljava/nio/ShortBuffer;->get(I)S

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int/2addr v1, v3

    .line 512
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 515
    :cond_0
    div-int v0, v1, p3

    return v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/voice/VoiceInputView;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sohu/inputmethod/voice/VoiceInputView;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/voice/VoiceInputView;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sohu/inputmethod/voice/VoiceInputView;->a:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/voice/VoiceInputView;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sohu/inputmethod/voice/VoiceInputView;->a:Landroid/os/Handler;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/voice/VoiceInputView;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sohu/inputmethod/voice/VoiceInputView;->a:Landroid/view/View;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/voice/VoiceInputView;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sohu/inputmethod/voice/VoiceInputView;->a:Landroid/widget/ImageView;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/voice/VoiceInputView;)Laxw;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sohu/inputmethod/voice/VoiceInputView;->a:Laxw;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/voice/VoiceInputView;)Layl;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sohu/inputmethod/voice/VoiceInputView;->a:Layl;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/voice/VoiceInputView;Layl;)Layl;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/sohu/inputmethod/voice/VoiceInputView;->a:Layl;

    return-object p1
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/voice/VoiceInputView;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sohu/inputmethod/voice/VoiceInputView;->a:Ljava/lang/Runnable;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/voice/VoiceInputView;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/sohu/inputmethod/voice/VoiceInputView;->n()V

    return-void
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/voice/VoiceInputView;Ljava/nio/ShortBuffer;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/sohu/inputmethod/voice/VoiceInputView;->a(Ljava/nio/ShortBuffer;II)V

    return-void
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/voice/VoiceInputView;ZLjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sohu/inputmethod/voice/VoiceInputView;->a(ZLjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    return-void
.end method

.method private a(Ljava/nio/ShortBuffer;II)V
    .locals 16
    .parameter
    .parameter
    .parameter

    .prologue
    .line 543
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sohu/inputmethod/voice/VoiceInputView;->a:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sohu/inputmethod/voice/VoiceInputView;->b:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sohu/inputmethod/voice/VoiceInputView;->a:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_1

    .line 614
    :cond_0
    :goto_0
    return-void

    .line 545
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sohu/inputmethod/voice/VoiceInputView;->a:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 546
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sohu/inputmethod/voice/VoiceInputView;->a:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v5

    .line 547
    if-lez v3, :cond_0

    if-lez v5, :cond_0

    .line 552
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sohu/inputmethod/voice/VoiceInputView;->b:Landroid/widget/ImageView;

    invoke-static {v1}, Laox;->a(Landroid/view/View;)V

    .line 553
    const v1, 0x7f0701a6

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/voice/VoiceInputView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sohu/inputmethod/voice/VoiceInputView;->b:Landroid/widget/ImageView;

    .line 556
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v5, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 557
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 558
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    .line 559
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sohu/inputmethod/voice/VoiceInputView;->a:Lawv;

    iget v1, v1, Lawv;->b:I

    invoke-static {v1}, Lawh;->a(I)I

    move-result v1

    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 560
    const/4 v1, 0x1

    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 561
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 562
    const/16 v1, 0x90

    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 564
    new-instance v1, Landroid/graphics/CornerPathEffect;

    const/high16 v2, 0x4040

    invoke-direct {v1, v2}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    .line 565
    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 567
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v1

    .line 569
    if-nez p3, :cond_3

    move v2, v1

    .line 575
    :goto_1
    move/from16 v0, p2

    add-int/lit16 v1, v0, -0x7d0

    .line 576
    if-gez v1, :cond_2

    .line 577
    const/4 v1, 0x0

    .line 582
    :cond_2
    sub-int/2addr v2, v1

    div-int/lit16 v9, v2, 0xc8

    .line 583
    const/high16 v2, 0x3f80

    int-to-float v3, v3

    mul-float/2addr v2, v3

    int-to-float v3, v9

    div-float v10, v2, v3

    .line 584
    div-int/lit8 v2, v5, 0x2

    add-int/lit8 v11, v2, -0x8

    .line 585
    new-instance v12, Landroid/graphics/Path;

    invoke-direct {v12}, Landroid/graphics/Path;-><init>()V

    .line 586
    const/4 v2, 0x0

    int-to-float v3, v11

    invoke-virtual {v7, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 587
    const/4 v3, 0x0

    .line 588
    const/4 v2, 0x0

    invoke-virtual {v12, v3, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 589
    const/4 v2, 0x0

    move v4, v3

    move v3, v2

    :goto_2
    if-ge v3, v9, :cond_5

    .line 590
    const/16 v2, 0xc8

    move-object/from16 v0, p1

    invoke-static {v0, v1, v3, v2}, Lcom/sohu/inputmethod/voice/VoiceInputView;->a(Ljava/nio/ShortBuffer;III)I

    move-result v13

    .line 591
    and-int/lit8 v2, v3, 0x1

    if-nez v2, :cond_4

    const/4 v2, -0x1

    .line 592
    :goto_3
    int-to-float v14, v11

    mul-int/2addr v13, v5

    int-to-float v13, v13

    const/high16 v15, 0x3920

    mul-float/2addr v13, v15

    invoke-static {v14, v13}, Ljava/lang/Math;->min(FF)F

    move-result v13

    int-to-float v2, v2

    mul-float/2addr v2, v13

    .line 593
    invoke-virtual {v12, v4, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 594
    add-float/2addr v4, v10

    .line 595
    invoke-virtual {v12, v4, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 589
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_2

    .line 572
    :cond_3
    move/from16 v0, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    move v2, v1

    goto :goto_1

    .line 591
    :cond_4
    const/4 v2, 0x1

    goto :goto_3

    .line 597
    :cond_5
    const/high16 v1, 0x4080

    cmpl-float v1, v10, v1

    if-lez v1, :cond_6

    .line 598
    const/high16 v1, 0x4040

    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 602
    :goto_4
    invoke-virtual {v7, v12, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 603
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sohu/inputmethod/voice/VoiceInputView;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 604
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sohu/inputmethod/voice/VoiceInputView;->b:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 600
    :cond_6
    const/4 v1, 0x1

    float-to-double v2, v10

    const-wide v4, 0x3fa999999999999aL

    sub-double/2addr v2, v4

    double-to-int v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto :goto_4
.end method

.method private a(ZLjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 485
    if-eqz p1, :cond_1

    .line 486
    iget-object v0, p0, Lcom/sohu/inputmethod/voice/VoiceInputView;->a:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 487
    iget-object v0, p0, Lcom/sohu/inputmethod/voice/VoiceInputView;->a:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 488
    iget-object v0, p0, Lcom/sohu/inputmethod/voice/VoiceInputView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 498
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sohu/inputmethod/voice/VoiceInputView;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 499
    iget-object v0, p0, Lcom/sohu/inputmethod/voice/VoiceInputView;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 501
    iget-object v0, p0, Lcom/sohu/inputmethod/voice/VoiceInputView;->a:Lcom/sohu/inputmethod/sogou/ImageTextButton;

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/sogou/ImageTextButton;->setText(Ljava/lang/String;)V

    .line 502
    iget-object v0, p0, Lcom/sohu/inputmethod/voice/VoiceInputView;->a:Lcom/sohu/inputmethod/sogou/ImageTextButton;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/ImageTextButton;->invalidate()V

    .line 503
    return-void

    .line 491
    :cond_1
    iget-object v0, p0, Lcom/sohu/inputmethod/voice/VoiceInputView;->a:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 492
    iget-object v0, p0, Lcom/sohu/inputmethod/voice/VoiceInputView;->a:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 493
    iget-object v0, p0, Lcom/sohu/inputmethod/voice/VoiceInputView;->a:Landroid/widget/ImageView;

    invoke-static {p3}, Lawh;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 494
    iget-object v0, p0, Lcom/sohu/inputmethod/voice/VoiceInputView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 495
    iget-object v0, p0, Lcom/sohu/inputmethod/voice/VoiceInputView;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public static synthetic b(Lcom/sohu/inputmethod/voice/VoiceInputView;)F
    .locals 1
    .parameter

    .prologue
    .line 46
    iget v0, p0, Lcom/sohu/inputmethod/voice/VoiceInputView;->c:F

    return v0
.end method

.method public static synthetic b(Lcom/sohu/inputmethod/voice/VoiceInputView;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sohu/inputmethod/voice/VoiceInputView;->b:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 641
    return-void
.end method

.method public static synthetic c(Lcom/sohu/inputmethod/voice/VoiceInputView;)F
    .locals 1
    .parameter

    .prologue
    .line 46
    iget v0, p0, Lcom/sohu/inputmethod/voice/VoiceInputView;->a:F

    return v0
.end method

.method private n()V
    .locals 2

    .prologue
    .line 628
    iget-object v0, p0, Lcom/sohu/inputmethod/voice/VoiceInputView;->a:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 629
    iget-object v0, p0, Lcom/sohu/inputmethod/voice/VoiceInputView;->a:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 630
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/sohu/inputmethod/voice/VoiceInputView;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 114
    const v1, 0x7f020126

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sohu/inputmethod/voice/VoiceInputView;->c:Landroid/graphics/drawable/Drawable;

    .line 123
    const v1, 0x7f02009f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sohu/inputmethod/voice/VoiceInputView;->a:Landroid/graphics/drawable/Drawable;

    .line 124
    const v1, 0x7f020049

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/voice/VoiceInputView;->b:Landroid/graphics/drawable/Drawable;

    .line 125
    return-void
.end method

.method public a(F)V
    .locals 0
    .parameter

    .prologue
    .line 431
    iput p1, p0, Lcom/sohu/inputmethod/voice/VoiceInputView;->a:F

    .line 432
    return-void
.end method

.method public a(II)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 250
    iput p2, p0, Lcom/sohu/inputmethod/voice/VoiceInputView;->b:I

    .line 251
    iput p1, p0, Lcom/sohu/inputmethod/voice/VoiceInputView;->c:I

    .line 252
    return-void
.end method

.method public a(Ljava/io/ByteArrayOutputStream;II)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 451
    const-string v0, "       [showWorking]"

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/voice/VoiceInputView;->b(Ljava/lang/String;)V

    .line 452
    iget-object v0, p0, Lcom/sohu/inputmethod/voice/VoiceInputView;->a:Landroid/os/Handler;

    new-instance v1, Layj;

    invoke-direct {v1, p0, p1, p2, p3}, Layj;-><init>(Lcom/sohu/inputmethod/voice/VoiceInputView;Ljava/io/ByteArrayOutputStream;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 466
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 435
    const-string v0, "      [showError]"

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/voice/VoiceInputView;->b(Ljava/lang/String;)V

    .line 436
    iget-object v0, p0, Lcom/sohu/inputmethod/voice/VoiceInputView;->a:Landroid/os/Handler;

    new-instance v1, Layi;

    invoke-direct {v1, p0, p1}, Layi;-><init>(Lcom/sohu/inputmethod/voice/VoiceInputView;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 446
    return-void
.end method

.method public a(Ljava/util/Observable;Ljava/lang/Object;II)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 242
    instance-of v0, p1, Laxc;

    if-eqz v0, :cond_0

    .line 243
    invoke-virtual {p0}, Lcom/sohu/inputmethod/voice/VoiceInputView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Laxc;->a(Landroid/content/Context;)Laxc;

    move-result-object v0

    invoke-virtual {v0}, Laxc;->b()Lawc;

    move-result-object v0

    iget-object v1, p0, Lcom/sohu/inputmethod/voice/VoiceInputView;->a:Landroid/content/Context;

    invoke-static {v1}, Laxc;->a(Landroid/content/Context;)Laxc;

    move-result-object v1

    iget v2, p0, Lcom/sohu/inputmethod/voice/VoiceInputView;->a:I

    invoke-virtual {v1, v2}, Laxc;->a(I)Lawe;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p3, p4}, Lcom/sohu/inputmethod/voice/VoiceInputView;->setTheme(Lawc;Lawe;II)V

    .line 247
    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 128
    iget-object v0, p0, Lcom/sohu/inputmethod/voice/VoiceInputView;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/sohu/inputmethod/voice/VoiceInputView;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/sohu/inputmethod/voice/VoiceInputView;->b:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sohu/inputmethod/voice/VoiceInputView;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/sohu/inputmethod/voice/VoiceInputView;->a:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sohu/inputmethod/voice/VoiceInputView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 141
    :cond_2
    iget-object v0, p0, Lcom/sohu/inputmethod/voice/VoiceInputView;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 142
    iget-object v0, p0, Lcom/sohu/inputmethod/voice/VoiceInputView;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 143
    iput-object v1, p0, Lcom/sohu/inputmethod/voice/VoiceInputView;->c:Landroid/graphics/drawable/Drawable;

    .line 145
    :cond_3
    iget-object v0, p0, Lcom/sohu/inputmethod/voice/VoiceInputView;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    .line 146
    iget-object v0, p0, Lcom/sohu/inputmethod/voice/VoiceInputView;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 147
    iput-object v1, p0, Lcom/sohu/inputmethod/voice/VoiceInputView;->a:Landroid/graphics/drawable/Drawable;

    .line 149
    :cond_4
    iget-object v0, p0, Lcom/sohu/inputmethod/voice/VoiceInputView;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    .line 150
    iget-object v0, p0, Lcom/sohu/inputmethod/voice/VoiceInputView;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 151
    iput-object v1, p0, Lcom/sohu/inputmethod/voice/VoiceInputView;->b:Landroid/graphics/drawable/Drawable;

    .line 153
    :cond_5
    return-void
.end method

.method public c()V
    .locals 3

    .prologue
    .line 156
    iget-object v0, p0, Lcom/sohu/inputmethod/voice/VoiceInputView;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 157
    const-string v1, "latin_ime_min_microphone_level"

    const/high16 v2, 0x4170

    invoke-static {v0, v1, v2}, Laxv;->a(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lcom/sohu/inputmethod/voice/VoiceInputView;->b:F

    .line 159
    const-string v1, "latin_ime_max_microphone_level"

    const/high16 v2, 0x41f0

    invoke-static {v0, v1, v2}, Laxv;->a(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/sohu/inputmethod/voice/VoiceInputView;->c:F

    .line 163
    const v0, 0x7f0701a4

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/voice/VoiceInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/sogou/ImageTextButton;

    iput-object v0, p0, Lcom/sohu/inputmethod/voice/VoiceInputView;->a:Lcom/sohu/inputmethod/sogou/ImageTextButton;

    .line 164
    iget-object v0, p0, Lcom/sohu/inputmethod/voice/VoiceInputView;->a:Lcom/sohu/inputmethod/sogou/ImageTextButton;

    new-instance v1, Laya;

    invoke-direct {v1, p0}, Laya;-><init>(Lcom/sohu/inputmethod/voice/VoiceInputView;)V

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/sogou/ImageTextButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    const v0, 0x7f070103

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/voice/VoiceInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sohu/inputmethod/voice/VoiceInputView;->a:Landroid/widget/ImageView;

    .line 188
    const v0, 0x7f0701a5

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/voice/VoiceInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sohu/inputmethod/voice/VoiceInputView;->c:Landroid/widget/ImageView;

    .line 191
    const v0, 0x7f0701a6

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/voice/VoiceInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sohu/inputmethod/voice/VoiceInputView;->b:Landroid/widget/ImageView;

    .line 192
    const v0, 0x7f0701a3

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/voice/VoiceInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sohu/inputmethod/voice/VoiceInputView;->a:Landroid/widget/TextView;

    .line 195
    const v0, 0x7f0701a7

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/voice/VoiceInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/voice/VoiceInputView;->a:Landroid/view/View;

    .line 198
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/sohu/inputmethod/voice/VoiceInputView;->a:Laxw;

    if-eqz v0, :cond_0

    .line 204
    :cond_0
    return-void
.end method

.method public e()V
    .locals 2

    .prologue
    .line 356
    iget-object v0, p0, Lcom/sohu/inputmethod/voice/VoiceInputView;->a:Landroid/os/Handler;

    new-instance v1, Laye;

    invoke-direct {v1, p0}, Laye;-><init>(Lcom/sohu/inputmethod/voice/VoiceInputView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 366
    return-void
.end method

.method public f()V
    .locals 2

    .prologue
    .line 369
    iget-object v0, p0, Lcom/sohu/inputmethod/voice/VoiceInputView;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sohu/inputmethod/voice/VoiceInputView;->c:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/sohu/inputmethod/voice/VoiceInputView;->c:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sohu/inputmethod/voice/VoiceInputView;->c:Landroid/graphics/drawable/Drawable;

    invoke-static {v1}, Lawh;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 371
    iget-object v0, p0, Lcom/sohu/inputmethod/voice/VoiceInputView;->c:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/sohu/inputmethod/voice/VoiceInputView;->c:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 376
    :cond_0
    return-void
.end method

.method public g()V
    .locals 2

    .prologue
    .line 379
    iget-object v0, p0, Lcom/sohu/inputmethod/voice/VoiceInputView;->c:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/sohu/inputmethod/voice/VoiceInputView;->c:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/sohu/inputmethod/voice/VoiceInputView;->c:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 385
    :cond_0
    return-void
.end method

.method public h()V
    .locals 2

    .prologue
    .line 388
    const-string v0, "       [showDefault]"

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/voice/VoiceInputView;->b(Ljava/lang/String;)V

    .line 389
    iget-object v0, p0, Lcom/sohu/inputmethod/voice/VoiceInputView;->a:Landroid/os/Handler;

    new-instance v1, Layf;

    invoke-direct {v1, p0}, Layf;-><init>(Lcom/sohu/inputmethod/voice/VoiceInputView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 400
    return-void
.end method

.method public i()V
    .locals 2

    .prologue
    .line 403
    const-string v0, "       [showInitializing]"

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/voice/VoiceInputView;->b(Ljava/lang/String;)V

    .line 404
    iget-object v0, p0, Lcom/sohu/inputmethod/voice/VoiceInputView;->a:Landroid/os/Handler;

    new-instance v1, Layg;

    invoke-direct {v1, p0}, Layg;-><init>(Lcom/sohu/inputmethod/voice/VoiceInputView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 414
    return-void
.end method

.method public j()V
    .locals 4

    .prologue
    .line 417
    iget-object v0, p0, Lcom/sohu/inputmethod/voice/VoiceInputView;->a:Landroid/os/Handler;

    new-instance v1, Layh;

    invoke-direct {v1, p0}, Layh;-><init>(Lcom/sohu/inputmethod/voice/VoiceInputView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 427
    iget-object v0, p0, Lcom/sohu/inputmethod/voice/VoiceInputView;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sohu/inputmethod/voice/VoiceInputView;->a:Ljava/lang/Runnable;

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 428
    return-void
.end method

.method public k()V
    .locals 2

    .prologue
    .line 469
    const-string v0, "[       showCandidates]"

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/voice/VoiceInputView;->b(Ljava/lang/String;)V

    .line 470
    iget-object v0, p0, Lcom/sohu/inputmethod/voice/VoiceInputView;->a:Landroid/os/Handler;

    new-instance v1, Layk;

    invoke-direct {v1, p0}, Layk;-><init>(Lcom/sohu/inputmethod/voice/VoiceInputView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 480
    return-void
.end method

.method public l()V
    .locals 2

    .prologue
    .line 619
    iget-object v0, p0, Lcom/sohu/inputmethod/voice/VoiceInputView;->a:Landroid/os/Handler;

    new-instance v1, Layb;

    invoke-direct {v1, p0}, Layb;-><init>(Lcom/sohu/inputmethod/voice/VoiceInputView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 625
    return-void
.end method

.method public m()V
    .locals 1

    .prologue
    .line 633
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/voice/VoiceInputView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 634
    invoke-virtual {p0}, Lcom/sohu/inputmethod/voice/VoiceInputView;->b()V

    .line 636
    return-void
.end method

.method public setCandidateId(I)V
    .locals 0
    .parameter

    .prologue
    .line 103
    iput p1, p0, Lcom/sohu/inputmethod/voice/VoiceInputView;->a:I

    .line 104
    return-void
.end method

.method public setService(Laxw;)V
    .locals 0
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/sohu/inputmethod/voice/VoiceInputView;->a:Laxw;

    .line 108
    return-void
.end method

.method public setTheme(Lawc;Lawe;II)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 255
    if-nez p2, :cond_0

    .line 346
    :goto_0
    return-void

    .line 256
    :cond_0
    invoke-virtual {p2}, Lawe;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 257
    if-eqz v5, :cond_1

    .line 258
    sget-object v0, Laxr;->i:[I

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 259
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 260
    if-eqz v1, :cond_5

    instance-of v0, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_5

    .line 262
    iget-object v0, p0, Lcom/sohu/inputmethod/voice/VoiceInputView;->a:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0}, Lafp;->C()Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, v1

    .line 263
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeX(Landroid/graphics/Shader$TileMode;)V

    move v2, v3

    .line 269
    :goto_1
    iget-object v0, p0, Lcom/sohu/inputmethod/voice/VoiceInputView;->a:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0}, Lafp;->B()Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, v1

    .line 270
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeY(Landroid/graphics/Shader$TileMode;)V

    move v2, v3

    .line 276
    :goto_2
    if-eqz v2, :cond_4

    .line 277
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 282
    :goto_3
    invoke-static {v5}, Lawh;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/voice/VoiceInputView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 294
    :cond_1
    :goto_4
    invoke-virtual {p0, p3, p4}, Lcom/sohu/inputmethod/voice/VoiceInputView;->a(II)V

    .line 297
    invoke-virtual {p2}, Lawe;->a()Lawv;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/voice/VoiceInputView;->a:Lawv;

    .line 298
    iget-object v0, p0, Lcom/sohu/inputmethod/voice/VoiceInputView;->a:Lawv;

    iget v0, v0, Lawv;->a:I

    invoke-virtual {p2}, Lawe;->b()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    .line 299
    const v1, 0x3f333333

    mul-float/2addr v0, v1

    .line 300
    sget v1, Laox;->a:F

    div-float/2addr v0, v1

    .line 301
    iget-object v1, p0, Lcom/sohu/inputmethod/voice/VoiceInputView;->a:Lawv;

    iget v1, v1, Lawv;->b:I

    invoke-static {v1}, Lawh;->a(I)I

    move-result v1

    .line 306
    iget-object v2, p0, Lcom/sohu/inputmethod/voice/VoiceInputView;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 307
    iget-object v0, p0, Lcom/sohu/inputmethod/voice/VoiceInputView;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 311
    iget-object v0, p0, Lcom/sohu/inputmethod/voice/VoiceInputView;->a:Lcom/sohu/inputmethod/sogou/ImageTextButton;

    const-wide v2, 0x3fe6666666666666L

    iget-object v4, p0, Lcom/sohu/inputmethod/voice/VoiceInputView;->a:Lawv;

    iget v4, v4, Lawv;->a:I

    invoke-virtual {p2}, Lawe;->b()I

    move-result v5

    add-int/2addr v4, v5

    int-to-double v4, v4

    mul-double/2addr v2, v4

    double-to-float v2, v2

    invoke-virtual {v0, v2}, Lcom/sohu/inputmethod/sogou/ImageTextButton;->setTextSize(F)V

    .line 312
    iget-object v0, p0, Lcom/sohu/inputmethod/voice/VoiceInputView;->a:Lcom/sohu/inputmethod/sogou/ImageTextButton;

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/sogou/ImageTextButton;->setColor(I)V

    .line 314
    iget-object v0, p0, Lcom/sohu/inputmethod/voice/VoiceInputView;->a:Lcom/sohu/inputmethod/sogou/ImageTextButton;

    sget-object v1, Lawd;->l:Ljava/lang/Integer;

    invoke-virtual {p1, v1}, Lawc;->a(Ljava/lang/Integer;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Lawh;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/sogou/ImageTextButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 316
    iget-object v0, p0, Lcom/sohu/inputmethod/voice/VoiceInputView;->a:Lcom/sohu/inputmethod/sogou/ImageTextButton;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/ImageTextButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 317
    iget v1, p0, Lcom/sohu/inputmethod/voice/VoiceInputView;->c:I

    mul-int/lit8 v1, v1, 0x2

    div-int/lit8 v1, v1, 0x3

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 318
    iget-object v1, p0, Lcom/sohu/inputmethod/voice/VoiceInputView;->a:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/sohu/inputmethod/voice/VoiceInputView;->a:Lawv;

    iget v2, v2, Lawv;->a:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 319
    iget-object v1, p0, Lcom/sohu/inputmethod/voice/VoiceInputView;->a:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v1

    .line 320
    iget v2, v1, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float v1, v2, v1

    invoke-static {v1}, Landroid/util/FloatMath;->ceil(F)F

    move-result v1

    float-to-double v1, v1

    const-wide/high16 v3, 0x3ff8

    mul-double/2addr v1, v3

    const-wide v3, 0x3ff3333333333333L

    mul-double/2addr v1, v3

    double-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 321
    iget-object v1, p0, Lcom/sohu/inputmethod/voice/VoiceInputView;->a:Lcom/sohu/inputmethod/sogou/ImageTextButton;

    invoke-virtual {v1, v0}, Lcom/sohu/inputmethod/sogou/ImageTextButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 323
    iget-object v0, p0, Lcom/sohu/inputmethod/voice/VoiceInputView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 324
    iget v1, p0, Lcom/sohu/inputmethod/voice/VoiceInputView;->b:I

    div-int/lit8 v1, v1, 0x3

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 325
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 326
    iget-object v1, p0, Lcom/sohu/inputmethod/voice/VoiceInputView;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 328
    iget-object v1, p0, Lcom/sohu/inputmethod/voice/VoiceInputView;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 330
    iget-object v0, p0, Lcom/sohu/inputmethod/voice/VoiceInputView;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 331
    iget v1, p0, Lcom/sohu/inputmethod/voice/VoiceInputView;->b:I

    div-int/lit8 v1, v1, 0x5

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 332
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 333
    iget-object v1, p0, Lcom/sohu/inputmethod/voice/VoiceInputView;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 336
    iget-object v0, p0, Lcom/sohu/inputmethod/voice/VoiceInputView;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 337
    iget v1, p0, Lcom/sohu/inputmethod/voice/VoiceInputView;->b:I

    div-int/lit8 v1, v1, 0x3

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 338
    iget v1, p0, Lcom/sohu/inputmethod/voice/VoiceInputView;->c:I

    mul-int/lit8 v1, v1, 0x2

    div-int/lit8 v1, v1, 0x3

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 339
    iget-object v1, p0, Lcom/sohu/inputmethod/voice/VoiceInputView;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 344
    invoke-virtual {p0}, Lcom/sohu/inputmethod/voice/VoiceInputView;->invalidate()V

    .line 345
    invoke-virtual {p0}, Lcom/sohu/inputmethod/voice/VoiceInputView;->requestLayout()V

    goto/16 :goto_0

    :cond_2
    move-object v0, v1

    .line 266
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeX(Landroid/graphics/Shader$TileMode;)V

    move v2, v4

    goto/16 :goto_1

    :cond_3
    move-object v0, v1

    .line 273
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeY(Landroid/graphics/Shader$TileMode;)V

    goto/16 :goto_2

    .line 279
    :cond_4
    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    goto/16 :goto_3

    .line 284
    :cond_5
    invoke-virtual {v5, v4}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 285
    invoke-static {v5}, Lawh;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/voice/VoiceInputView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4
.end method
