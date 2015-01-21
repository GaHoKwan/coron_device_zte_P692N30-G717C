.class public Lcom/sohu/inputmethod/sogou/VerticalCandidateView;
.super Lcom/sohu/inputmethod/sogou/CandidateView;
.source "SourceFile"


# static fields
.field private static a:Ljava/util/List;

.field private static b:Ljava/util/List;


# instance fields
.field private A:I

.field private B:I

.field private C:I

.field private D:I

.field private a:Landroid/content/Context;

.field private a:Laoa;

.field private b:Landroid/graphics/Rect;

.field private b:Ljava/util/Vector;

.field private c:Landroid/graphics/Rect;

.field private c:Ljava/util/Vector;

.field private d:Ljava/util/Vector;

.field private h:F

.field private i:F

.field private j:F

.field private k:F

.field private l:F

.field public r:I

.field public s:I

.field public s:Z

.field public t:I

.field private t:Z

.field private u:I

.field private u:Z

.field private v:I

.field private v:Z

.field private w:I

.field private w:Z

.field private final x:I

.field private x:Z

.field private y:I

.field private y:Z

.field private z:I

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 68
    sput-object v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Ljava/util/List;

    .line 69
    sput-object v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 135
    invoke-direct {p0, p1, p2}, Lcom/sohu/inputmethod/sogou/CandidateView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    iput-boolean v3, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->t:Z

    .line 49
    iput-boolean v3, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->u:Z

    .line 60
    iput-boolean v3, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->v:Z

    .line 62
    iput v3, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->u:I

    .line 64
    const/16 v0, 0x8

    iput v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->w:I

    .line 66
    iput-boolean v3, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->w:Z

    .line 71
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->h:F

    .line 72
    iput v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->i:F

    .line 74
    const/16 v0, 0x9

    iput v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->x:I

    .line 77
    iput v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->j:F

    .line 78
    iput v3, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->y:I

    .line 79
    iput v3, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->z:I

    .line 80
    iput v3, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->A:I

    .line 81
    iput v3, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->B:I

    .line 83
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b:Landroid/graphics/Rect;

    .line 84
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->c:Landroid/graphics/Rect;

    .line 88
    iput-boolean v3, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->x:Z

    .line 89
    iput-boolean v3, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->y:Z

    .line 94
    iput-boolean v3, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->z:Z

    .line 97
    iput v3, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->t:I

    .line 98
    iput-boolean v3, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->s:Z

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->d:Ljava/util/Vector;

    .line 137
    iput-object p1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Landroid/content/Context;

    .line 138
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 140
    sget-object v1, Lapr;->CandidateView:[I

    invoke-virtual {p1, p2, v1, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 143
    const/4 v2, 0x4

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->m:I

    .line 145
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Ljava/lang/String;

    .line 146
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 150
    const v1, 0x7f090001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->i:I

    .line 156
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Landroid/graphics/Paint;

    .line 157
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 159
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    iput-object v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Landroid/graphics/Paint$FontMetricsInt;

    .line 161
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b:Landroid/graphics/Paint;

    .line 162
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 163
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b:Landroid/graphics/Paint;

    const/high16 v2, 0x7f09

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 164
    invoke-virtual {p0, v3}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->setFootnoteShown(Z)V

    .line 166
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Ljava/util/Vector;

    .line 167
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b:Ljava/util/Vector;

    .line 169
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->c:Ljava/util/Vector;

    .line 171
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->d:Ljava/util/Vector;

    .line 173
    sget v0, Laox;->a:I

    int-to-float v0, v0

    const v1, 0x3c99999a

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->f:F

    .line 174
    sget v0, Laox;->a:I

    int-to-float v0, v0

    const v1, 0x3d99999a

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:F

    .line 175
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Landroid/text/Layout$Alignment;

    .line 176
    iput v4, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->v:I

    iput v4, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->l:I

    .line 177
    new-instance v0, Lapn;

    invoke-direct {v0, p1, p0, v3}, Lapn;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Lapn;

    .line 180
    iput-boolean v3, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->e:Z

    .line 182
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b:Landroid/graphics/Rect;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 183
    return-void
.end method

.method private a(I)I
    .locals 8
    .parameter

    .prologue
    .line 463
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->k:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Laor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Laor;

    invoke-virtual {v0}, Laor;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->l:Z

    if-eqz v0, :cond_1

    .line 506
    :cond_0
    :goto_0
    return p1

    .line 465
    :cond_1
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sohu/inputmethod/engine/IMEInterface;->getInstance(Landroid/content/Context;)Lcom/sohu/inputmethod/engine/IMEInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sohu/inputmethod/engine/IMEInterface;->getCandidateProbableNumNative()I

    move-result v2

    .line 466
    sget v0, Laox;->e:I

    if-le v2, v0, :cond_2

    sget v2, Laox;->e:I

    .line 467
    :cond_2
    if-ge p1, v2, :cond_0

    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-gt v0, v2, :cond_0

    .line 469
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->getPaddingLeft()I

    move-result v0

    int-to-float v5, v0

    .line 470
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->getPaddingTop()I

    move-result v0

    int-to-float v6, v0

    .line 472
    const/4 v1, 0x0

    .line 474
    iget v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->v:I

    .line 475
    iget v3, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->w:I

    .line 478
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-le v0, p1, :cond_3

    .line 479
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v5

    .line 482
    :cond_3
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-le v0, p1, :cond_4

    .line 483
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->c:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v6

    .line 486
    :cond_4
    if-lez p1, :cond_6

    .line 489
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->c:Ljava/util/Vector;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 490
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b:Ljava/util/Vector;

    add-int/lit8 v4, p1, -0x1

    invoke-virtual {v0, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 491
    cmpl-float v1, v6, v1

    if-nez v1, :cond_5

    .line 492
    sub-float v0, v5, v0

    .line 496
    :goto_1
    iget v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->k:F

    float-to-int v1, v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 500
    :goto_2
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 501
    iget v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->k:F

    div-float v0, v5, v0

    float-to-int v4, v0

    .line 502
    iget v7, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->k:F

    move-object v0, p0

    move v1, p1

    .line 503
    invoke-direct/range {v0 .. v7}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a(IIIIFFF)V

    move p1, v2

    .line 504
    goto/16 :goto_0

    .line 494
    :cond_5
    iget v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:I

    int-to-float v1, v1

    sub-float v0, v1, v0

    iget v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->j:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    goto :goto_1

    :cond_6
    move v0, v1

    goto :goto_2
.end method

.method private a(Ljava/lang/CharSequence;F)I
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1349
    const/4 v0, 0x1

    move v1, v0

    move v0, p2

    .line 1350
    :goto_0
    iget v2, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->w:I

    if-gt v1, v2, :cond_0

    .line 1351
    invoke-virtual {p0, p1}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a(Ljava/lang/CharSequence;)F

    move-result v2

    cmpg-float v2, v2, v0

    if-gtz v2, :cond_2

    .line 1354
    :cond_0
    iget v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->w:I

    if-le v1, v0, :cond_1

    .line 1355
    iget v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->w:I

    .line 1356
    :cond_1
    return v1

    .line 1350
    :cond_2
    add-int/lit8 v1, v1, 0x1

    add-float/2addr v0, p2

    goto :goto_0
.end method

.method private a(Ljava/lang/CharSequence;FI)I
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1336
    const/4 v0, 0x1

    move v1, v0

    move v0, p2

    .line 1337
    :goto_0
    iget v2, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->w:I

    if-gt v1, v2, :cond_0

    .line 1338
    invoke-virtual {p0, p1, p3}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a(Ljava/lang/CharSequence;I)F

    move-result v2

    cmpg-float v2, v2, v0

    if-gtz v2, :cond_2

    .line 1341
    :cond_0
    iget v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->w:I

    if-le v1, v0, :cond_1

    .line 1342
    iget v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->w:I

    .line 1343
    :cond_1
    return v1

    .line 1337
    :cond_2
    add-int/lit8 v1, v1, 0x1

    add-float/2addr v0, p2

    goto :goto_0
.end method

.method private a(IIIIFFF)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 512
    const/4 v3, 0x1

    move v1, p6

    .line 513
    :goto_0
    if-ge p1, p2, :cond_7

    .line 514
    sub-int v0, p3, p4

    if-ge v3, v0, :cond_3

    .line 515
    add-int v2, p4, v3

    .line 516
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 517
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    add-float v4, p5, p7

    iget v5, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->l:F

    add-float/2addr v5, v1

    invoke-virtual {v0, p5, v1, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 524
    :goto_1
    iget v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->j:I

    int-to-float v0, v0

    add-float/2addr v0, p7

    add-float/2addr v0, p5

    .line 525
    iget-object v4, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    add-int/lit8 v5, p1, 0x1

    if-le v4, v5, :cond_1

    .line 526
    iget-object v4, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b:Ljava/util/Vector;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    add-int/lit8 v6, p1, 0x1

    invoke-virtual {v4, v5, v6}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 532
    :goto_2
    iget-object v4, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->c:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    add-int/lit8 v5, p1, 0x1

    if-le v4, v5, :cond_2

    .line 533
    iget-object v4, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->c:Ljava/util/Vector;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    add-int/lit8 v6, p1, 0x1

    invoke-virtual {v4, v5, v6}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    move v7, v1

    move v1, v0

    move v0, v7

    .line 513
    :goto_3
    add-int/lit8 p1, p1, 0x1

    move p5, v1

    move p4, v2

    move v1, v0

    goto :goto_0

    .line 520
    :cond_0
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Ljava/util/Vector;

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v0, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 521
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    add-float v4, p5, p7

    iget v5, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->l:F

    add-float/2addr v5, v1

    invoke-virtual {v0, p5, v1, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_1

    .line 528
    :cond_1
    iget-object v4, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b:Ljava/util/Vector;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 535
    :cond_2
    iget-object v4, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->c:Ljava/util/Vector;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    move v7, v1

    move v1, v0

    move v0, v7

    goto :goto_3

    .line 538
    :cond_3
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-le v0, p1, :cond_4

    .line 539
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    add-float v2, p5, p7

    iget v4, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->l:F

    add-float/2addr v4, v1

    invoke-virtual {v0, p5, v1, v2, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 546
    :goto_4
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->getPaddingLeft()I

    move-result v0

    int-to-float v2, v0

    .line 547
    iget v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->l:F

    iget v4, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->k:I

    int-to-float v4, v4

    add-float/2addr v0, v4

    add-float/2addr v0, v1

    .line 548
    const/4 v1, 0x0

    .line 549
    iget-object v4, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    add-int/lit8 v5, p1, 0x1

    if-le v4, v5, :cond_5

    .line 550
    iget-object v4, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b:Ljava/util/Vector;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    add-int/lit8 v6, p1, 0x1

    invoke-virtual {v4, v5, v6}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 556
    :goto_5
    iget-object v4, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->c:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    add-int/lit8 v5, p1, 0x1

    if-le v4, v5, :cond_6

    .line 557
    iget-object v4, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->c:Ljava/util/Vector;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    add-int/lit8 v6, p1, 0x1

    invoke-virtual {v4, v5, v6}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    move v7, v2

    move v2, v1

    move v1, v7

    goto/16 :goto_3

    .line 542
    :cond_4
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Ljava/util/Vector;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 543
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    add-float v2, p5, p7

    iget v4, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->l:F

    add-float/2addr v4, v1

    invoke-virtual {v0, p5, v1, v2, v4}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_4

    .line 552
    :cond_5
    iget-object v4, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b:Ljava/util/Vector;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 559
    :cond_6
    iget-object v4, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->c:Ljava/util/Vector;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    move v7, v2

    move v2, v1

    move v1, v7

    goto/16 :goto_3

    .line 563
    :cond_7
    return-void
.end method

.method private a(IILandroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1679
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->p:Z

    if-nez v0, :cond_1

    .line 1765
    :cond_0
    return-void

    .line 1681
    :cond_1
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v4

    .line 1682
    const/high16 v0, 0x4000

    div-float v3, v4, v0

    .line 1684
    iget v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->f:F

    iget v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->g:F

    add-float v7, v0, v1

    move v6, p1

    move v1, v4

    .line 1692
    :goto_0
    if-gt v6, p2, :cond_c

    .line 1693
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b:Ljava/util/Vector;

    invoke-virtual {v0, v6}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 1694
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->c:Ljava/util/Vector;

    invoke-virtual {v0, v6}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v5

    .line 1695
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->c:Ljava/util/Vector;

    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v0, v8}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 1698
    cmpl-float v0, v0, v5

    if-nez v0, :cond_3

    .line 1699
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b:Ljava/util/Vector;

    add-int/lit8 v2, v6, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b:Ljava/util/Vector;

    invoke-virtual {v0, v6}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sub-float v0, v2, v0

    iget v2, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->j:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    .line 1707
    :goto_1
    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Laor;

    invoke-virtual {v2, v6}, Laor;->a(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1709
    invoke-virtual {p0, v2}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 1710
    if-nez v8, :cond_4

    move v0, v1

    .line 1692
    :cond_2
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    move v1, v0

    goto :goto_0

    .line 1704
    :cond_3
    iget v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:I

    iget v5, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->j:I

    sub-int/2addr v0, v5

    int-to-float v0, v0

    sub-float/2addr v0, v2

    goto :goto_1

    .line 1712
    :cond_4
    invoke-virtual {p0, v6}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b(I)Z

    move-result v5

    .line 1713
    if-eqz v5, :cond_5

    iget v2, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->c:F

    .line 1715
    :cond_5
    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Landroid/graphics/Paint;

    const/4 v9, 0x0

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v10

    invoke-virtual {v2, v8, v9, v10}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v2

    .line 1717
    const/high16 v9, 0x4000

    mul-float/2addr v9, v7

    sub-float/2addr v0, v9

    .line 1719
    if-eqz v5, :cond_6

    iget v5, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->c:F

    sub-float/2addr v0, v5

    :cond_6
    move v5, v2

    move v2, v4

    .line 1722
    :cond_7
    cmpl-float v5, v5, v0

    if-lez v5, :cond_b

    .line 1723
    const/high16 v5, 0x3f80

    sub-float/2addr v2, v5

    .line 1724
    cmpg-float v5, v2, v1

    if-gez v5, :cond_8

    move v1, v2

    .line 1726
    :cond_8
    iget-object v5, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Landroid/graphics/Paint;

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1727
    iget-object v5, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Landroid/graphics/Paint;

    const/4 v9, 0x0

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v10

    invoke-virtual {v5, v8, v9, v10}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v5

    .line 1729
    cmpg-float v9, v2, v3

    if-gtz v9, :cond_7

    .line 1731
    cmpl-float v1, v5, v0

    if-lez v1, :cond_a

    .line 1732
    invoke-virtual {p0, v8, v0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a(Ljava/lang/CharSequence;F)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1733
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-virtual {v1, v0, v2, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move v0, v3

    .line 1740
    :goto_2
    cmpg-float v1, v0, v3

    if-gtz v1, :cond_2

    move v9, v0

    :goto_3
    move v3, p1

    .line 1746
    :goto_4
    if-gt v3, p2, :cond_0

    .line 1747
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 1749
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->c:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v5

    .line 1750
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->c:Ljava/util/Vector;

    add-int/lit8 v1, v3, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 1752
    cmpl-float v0, v0, v5

    if-nez v0, :cond_9

    .line 1753
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b:Ljava/util/Vector;

    add-int/lit8 v1, v3, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sub-float v0, v1, v0

    iget v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->j:I

    int-to-float v1, v1

    sub-float v6, v0, v1

    .line 1761
    :goto_5
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Laor;

    invoke-virtual {v0, v3}, Laor;->a(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1763
    iget-boolean v8, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->p:Z

    move-object v0, p0

    move-object v1, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v9}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IFFFLandroid/graphics/drawable/Drawable;ZF)V

    .line 1746
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1758
    :cond_9
    iget v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:I

    iget v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->j:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    sub-float v6, v0, v4

    goto :goto_5

    :cond_a
    move v0, v3

    goto :goto_2

    :cond_b
    move v0, v1

    goto :goto_2

    :cond_c
    move v9, v1

    goto :goto_3
.end method

.method private a(IZ)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1145
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Laor;

    if-nez v0, :cond_1

    .line 1166
    :cond_0
    :goto_0
    return-void

    .line 1148
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->p:I

    .line 1149
    iput p1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->e:I

    .line 1150
    iput-boolean v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->c:Z

    .line 1151
    iput-boolean p2, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b:Z

    .line 1152
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->w:Z

    if-eqz v0, :cond_2

    .line 1153
    iput-boolean v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b:Z

    .line 1156
    :cond_2
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->m:Z

    if-nez v0, :cond_3

    .line 1157
    invoke-direct {p0, v1}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->e(I)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->v:Z

    .line 1159
    :cond_3
    iput v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->c:I

    .line 1163
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Laoa;

    if-eqz v0, :cond_0

    .line 1164
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Laoa;

    invoke-interface {v0}, Laoa;->a()V

    goto :goto_0

    :cond_4
    move v0, v1

    .line 1157
    goto :goto_1
.end method

.method private a(Landroid/graphics/Canvas;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2631
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b(Landroid/graphics/Canvas;IZ)V

    .line 2632
    return-void
.end method

.method private a(Landroid/graphics/Canvas;ILandroid/graphics/drawable/Drawable;Z)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1657
    if-eqz p4, :cond_0

    .line 1676
    :goto_0
    return-void

    .line 1659
    :cond_0
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 1660
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->c:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v5

    .line 1661
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->c:Ljava/util/Vector;

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 1664
    cmpl-float v0, v0, v5

    if-nez v0, :cond_1

    .line 1665
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b:Ljava/util/Vector;

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sub-float v0, v1, v0

    iget v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->j:I

    int-to-float v1, v1

    sub-float v6, v0, v1

    .line 1673
    :goto_1
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Laor;

    invoke-virtual {v0, p2}, Laor;->a(I)Ljava/lang/CharSequence;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v7, p3

    move v8, p4

    .line 1675
    invoke-direct/range {v0 .. v8}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IFFFLandroid/graphics/drawable/Drawable;Z)V

    goto :goto_0

    .line 1670
    :cond_1
    iget v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:I

    iget v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->j:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    sub-float v6, v0, v4

    goto :goto_1
.end method

.method private a(Landroid/graphics/Canvas;IZ)V
    .locals 19
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1439
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Laor;

    invoke-virtual {v1}, Laor;->b()I

    move-result v15

    .line 1441
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->f:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->g:F

    add-float/2addr v1, v2

    .line 1443
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->e:I

    add-int/lit8 v2, v15, -0x1

    if-le v1, v2, :cond_0

    .line 1444
    add-int/lit8 v1, v15, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->e:I

    .line 1446
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->l:Z

    if-nez v1, :cond_1

    .line 1447
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->removeAllElements()V

    .line 1449
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->v:I

    move/from16 v16, v0

    .line 1450
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->w:I

    move/from16 v17, v0

    .line 1452
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->l:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Landroid/graphics/Paint$FontMetricsInt;

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Landroid/graphics/Paint$FontMetricsInt;

    iget v3, v3, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Landroid/graphics/Paint$FontMetricsInt;

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->top:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    .line 1454
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Landroid/graphics/Paint$FontMetricsInt;

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->top:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b:Landroid/graphics/Paint$FontMetricsInt;

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->top:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    .line 1456
    mul-int v18, v16, v17

    .line 1458
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b:Landroid/graphics/drawable/Drawable;

    .line 1460
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->i:I

    invoke-static {v2}, Lawh;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1463
    const/4 v3, 0x0

    .line 1464
    const/4 v4, 0x0

    .line 1465
    const/4 v11, -0x1

    .line 1466
    move-object/from16 v0, p0

    iput v4, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->r:I

    .line 1467
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v1

    .line 1468
    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    .line 1470
    invoke-virtual/range {p0 .. p0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->getPaddingTop()I

    move-result v1

    int-to-float v6, v1

    .line 1471
    const/4 v1, 0x0

    move v14, v1

    :goto_0
    move/from16 v0, v16

    if-ge v14, v0, :cond_8

    .line 1472
    invoke-virtual/range {p0 .. p0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->getPaddingLeft()I

    move-result v1

    int-to-float v5, v1

    .line 1473
    const/4 v1, 0x0

    const/4 v2, 0x1

    move v12, v1

    move v13, v3

    move v1, v11

    :goto_1
    move/from16 v0, v17

    if-ge v12, v0, :cond_7

    .line 1474
    move-object/from16 v0, p0

    iget v7, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->k:F

    .line 1475
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Laor;

    invoke-virtual {v3, v4}, Laor;->a(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1476
    const/4 v9, -0x1

    if-ne v1, v9, :cond_6

    if-ge v4, v15, :cond_6

    .line 1477
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Laor;

    invoke-virtual {v1, v4}, Laor;->a(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1478
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->k:F

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v1, v4}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a(Ljava/lang/CharSequence;FI)I

    move-result v1

    .line 1483
    :cond_2
    :goto_2
    if-lez v1, :cond_3

    .line 1484
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->k:F

    int-to-float v7, v1

    mul-float/2addr v7, v2

    .line 1487
    :cond_3
    const/4 v2, -0x1

    .line 1490
    sub-int v9, v17, v12

    if-ge v1, v9, :cond_9

    add-int/lit8 v9, v15, -0x1

    if-ge v4, v9, :cond_9

    .line 1491
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Laor;

    add-int/lit8 v9, v4, 0x1

    invoke-virtual {v2, v9}, Laor;->a(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1492
    move-object/from16 v0, p0

    iget v9, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->k:F

    add-int/lit8 v10, v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v9, v10}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a(Ljava/lang/CharSequence;FI)I

    move-result v2

    .line 1496
    add-int v9, v12, v1

    add-int/2addr v9, v2

    move/from16 v0, v17

    if-le v9, v0, :cond_9

    .line 1497
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->j:I

    sub-int/2addr v1, v7

    int-to-float v1, v1

    sub-float v7, v1, v5

    .line 1499
    sub-int v1, v17, v12

    move v10, v1

    move v11, v2

    .line 1502
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->l:Z

    if-nez v1, :cond_5

    .line 1503
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    move/from16 v0, v18

    if-ge v1, v0, :cond_4

    .line 1504
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Ljava/util/Vector;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1505
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Ljava/util/Vector;

    invoke-virtual {v1, v13}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/RectF;

    add-float v2, v5, v7

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->l:F

    add-float/2addr v9, v6

    invoke-virtual {v1, v5, v6, v2, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1508
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->p:Z

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v9}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IFFFLandroid/graphics/drawable/Drawable;Z)V

    .line 1509
    add-int/lit8 v4, v4, 0x1

    .line 1510
    add-int/lit8 v2, v13, 0x1

    .line 1511
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->j:I

    int-to-float v1, v1

    add-float/2addr v1, v7

    add-float/2addr v5, v1

    .line 1473
    add-int v1, v12, v10

    move v12, v1

    move v13, v2

    move v1, v11

    move v2, v10

    goto/16 :goto_1

    .line 1479
    :cond_6
    if-lt v4, v15, :cond_2

    move v1, v2

    goto/16 :goto_2

    .line 1514
    :cond_7
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->l:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->k:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    add-float/2addr v6, v2

    .line 1471
    add-int/lit8 v2, v14, 0x1

    move v14, v2

    move v11, v1

    move v3, v13

    goto/16 :goto_0

    .line 1516
    :cond_8
    add-int/lit8 v1, v4, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->s:I

    .line 1520
    return-void

    :cond_9
    move v10, v1

    move v11, v2

    goto :goto_3
.end method

.method private a(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IFFFLandroid/graphics/drawable/Drawable;Z)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1524
    const/high16 v9, -0x4080

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IFFFLandroid/graphics/drawable/Drawable;ZF)V

    .line 1525
    return-void
.end method

.method private a(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IFFFLandroid/graphics/drawable/Drawable;ZF)V
    .locals 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1529
    iget v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->l:F

    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Landroid/graphics/Paint$FontMetricsInt;

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget-object v3, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Landroid/graphics/Paint$FontMetricsInt;

    iget v3, v3, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Landroid/graphics/Paint$FontMetricsInt;

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->top:I

    int-to-float v2, v2

    sub-float v12, v1, v2

    .line 1531
    iget v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->v:I

    .line 1533
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Landroid/graphics/Paint;

    iget v2, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->i:I

    invoke-static {v2}, Lawh;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1536
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v11

    .line 1537
    const/high16 v1, 0x4000

    div-float v6, v11, v1

    .line 1538
    if-eqz p8, :cond_0

    const/4 v1, 0x0

    cmpl-float v1, p9, v1

    if-lez v1, :cond_0

    .line 1539
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Landroid/graphics/Paint;

    move/from16 v0, p9

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1542
    :cond_0
    iget v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->f:F

    iget v2, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->g:F

    add-float v13, v1, v2

    .line 1543
    if-eqz p7, :cond_1

    .line 1544
    move/from16 v0, p3

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a(I)[I

    move-result-object v1

    move-object/from16 v0, p7

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1545
    move/from16 v0, p4

    float-to-int v1, v0

    move/from16 v0, p5

    float-to-int v2, v0

    add-float v3, p4, p6

    float-to-int v3, v3

    iget v4, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->l:F

    add-float v4, v4, p5

    float-to-int v4, v4

    move-object/from16 v0, p7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1548
    invoke-static/range {p7 .. p7}, Lawh;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1549
    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1552
    :cond_1
    move-object/from16 v0, p2

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 1553
    if-nez v4, :cond_2

    .line 1644
    :goto_0
    return-void

    .line 1557
    :cond_2
    move/from16 v0, p3

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b(I)Z

    move-result v14

    .line 1558
    if-eqz v14, :cond_5

    iget v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->c:F

    move v8, v1

    .line 1561
    :goto_1
    move/from16 v0, p3

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->c(I)Z

    move-result v7

    .line 1562
    if-eqz v7, :cond_6

    .line 1563
    sget v1, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->q:I

    int-to-float v2, v1

    .line 1569
    :goto_2
    const/high16 v1, 0x4000

    mul-float/2addr v1, v13

    sub-float v3, p6, v1

    .line 1571
    if-nez p8, :cond_c

    .line 1573
    if-eqz v14, :cond_7

    iget v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->c:F

    sub-float v1, v3, v1

    :goto_3
    move v5, v11

    .line 1576
    :cond_3
    cmpl-float v9, v2, v1

    if-lez v9, :cond_c

    .line 1577
    const/high16 v2, 0x3f80

    sub-float/2addr v5, v2

    .line 1578
    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1579
    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Landroid/graphics/Paint;

    const/4 v9, 0x0

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v10

    invoke-virtual {v2, v4, v9, v10}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v2

    .line 1581
    cmpg-float v9, v5, v6

    if-gtz v9, :cond_3

    .line 1582
    cmpl-float v5, v2, v1

    if-lez v5, :cond_c

    .line 1583
    invoke-virtual {p0, v4, v1}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a(Ljava/lang/CharSequence;F)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1584
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-virtual {v1, v2, v4, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v1

    move v9, v1

    .line 1592
    :goto_4
    const/4 v1, 0x0

    .line 1593
    sget-object v4, Lavb;->a:[I

    iget-object v5, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Landroid/text/Layout$Alignment;

    invoke-virtual {v5}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 1604
    :goto_5
    add-float v3, v13, p4

    add-float v5, v1, v3

    .line 1606
    const/4 v1, 0x0

    .line 1607
    iget v3, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->e:I

    move/from16 v0, p3

    if-ne v0, v3, :cond_b

    iget-boolean v3, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->c:Z

    if-eqz v3, :cond_b

    .line 1608
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Landroid/graphics/Paint;

    iget v3, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->h:I

    invoke-static {v3}, Lawh;->a(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1610
    const/4 v1, 0x1

    move v10, v1

    .line 1613
    :goto_6
    if-eqz v7, :cond_8

    .line 1614
    sget-object v1, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    sget v3, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->q:I

    invoke-virtual {v1, v2, v3}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Ljava/lang/CharSequence;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 1615
    if-eqz v3, :cond_8

    .line 1616
    const/4 v1, 0x0

    .line 1617
    iget v2, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->l:F

    sget v4, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->q:I

    int-to-float v4, v4

    cmpl-float v2, v2, v4

    if-lez v2, :cond_4

    .line 1618
    iget v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->l:F

    float-to-int v1, v1

    sget v2, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->q:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 1620
    :cond_4
    float-to-int v2, v5

    int-to-float v4, v1

    add-float v4, v4, p5

    float-to-int v4, v4

    sget v6, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->q:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    float-to-int v5, v5

    int-to-float v1, v1

    add-float v1, v1, p5

    sget v6, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->q:I

    int-to-float v6, v6

    add-float/2addr v1, v6

    float-to-int v1, v1

    invoke-virtual {v3, v2, v4, v5, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1623
    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    .line 1558
    :cond_5
    const/4 v1, 0x0

    move v8, v1

    goto/16 :goto_1

    .line 1565
    :cond_6
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v1, v4, v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v2

    goto/16 :goto_2

    :cond_7
    move v1, v3

    .line 1573
    goto/16 :goto_3

    .line 1595
    :pswitch_0
    sub-float v1, v3, v9

    sub-float/2addr v1, v8

    .line 1596
    goto :goto_5

    .line 1598
    :pswitch_1
    sub-float v1, v3, v9

    sub-float/2addr v1, v8

    const/high16 v3, 0x4000

    div-float/2addr v1, v3

    .line 1599
    goto :goto_5

    .line 1628
    :cond_8
    const/4 v3, 0x0

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-float v6, p5, v12

    iget-object v7, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 1630
    if-eqz v10, :cond_9

    .line 1631
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Landroid/graphics/Paint;

    iget v2, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->i:I

    invoke-static {v2}, Lawh;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1635
    :cond_9
    if-eqz v14, :cond_a

    .line 1636
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    int-to-float v1, v1

    add-float/2addr v1, v12

    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b:Landroid/graphics/Paint$FontMetricsInt;

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->top:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    .line 1638
    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Landroid/graphics/drawable/Drawable;

    add-float v3, v5, v9

    const/high16 v4, 0x4000

    div-float v4, v13, v4

    add-float/2addr v3, v4

    float-to-int v3, v3

    const/high16 v4, 0x4000

    div-float v4, v1, v4

    add-float v4, v4, p5

    float-to-int v4, v4

    add-float/2addr v5, v9

    add-float/2addr v5, v8

    const/high16 v6, 0x4000

    div-float v6, v13, v6

    add-float/2addr v5, v6

    float-to-int v5, v5

    const/high16 v6, 0x4000

    div-float/2addr v1, v6

    add-float v1, v1, p5

    iget v6, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->d:F

    add-float/2addr v1, v6

    float-to-int v1, v1

    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1641
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1643
    :cond_a
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Landroid/graphics/Paint;

    invoke-virtual {v1, v11}, Landroid/graphics/Paint;->setTextSize(F)V

    goto/16 :goto_0

    :cond_b
    move v10, v1

    goto/16 :goto_6

    :cond_c
    move v9, v2

    move-object v2, v4

    goto/16 :goto_4

    .line 1593
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private a(Laor;)V
    .locals 4
    .parameter

    .prologue
    .line 1112
    if-nez p1, :cond_0

    .line 1141
    :goto_0
    return-void

    .line 1114
    :cond_0
    iput-object p1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Laor;

    .line 1115
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->d:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 1116
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Laor;

    invoke-virtual {v0}, Laor;->b()I

    move-result v1

    .line 1117
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_1

    .line 1119
    new-instance v2, Ljava/lang/StringBuffer;

    iget-object v3, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Laor;

    invoke-virtual {v3, v0}, Laor;->a(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/CharSequence;)V

    .line 1120
    iget-object v3, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->d:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1117
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1124
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->g:I

    .line 1140
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Laom;

    invoke-virtual {v0}, Laom;->a()Z

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 2393
    return-void
.end method

.method private b(I)I
    .locals 7
    .parameter

    .prologue
    .line 2491
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Laor;

    invoke-virtual {v0}, Laor;->b()I

    move-result v3

    .line 2492
    const/4 v2, 0x0

    .line 2493
    const/4 v1, 0x2

    .line 2495
    iget v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->v:I

    mul-int/2addr v0, v1

    add-int/2addr v0, p1

    :goto_0
    iget v4, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->w:I

    if-gt v1, v4, :cond_3

    .line 2498
    iget v4, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:I

    add-int/lit8 v5, v1, -0x1

    iget v6, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->j:I

    mul-int/2addr v5, v6

    sub-int/2addr v4, v5

    div-int/2addr v4, v1

    int-to-float v5, v4

    .line 2500
    if-lt v0, v3, :cond_0

    .line 2502
    const/4 v2, 0x1

    move v0, v3

    :cond_0
    move v4, p1

    .line 2504
    :goto_1
    if-ge v4, v0, :cond_2

    .line 2505
    iget-object v6, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Laor;

    invoke-virtual {v6, v4}, Laor;->a(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {p0, v6, v4}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a(Ljava/lang/CharSequence;I)F

    move-result v6

    cmpl-float v6, v6, v5

    if-lez v6, :cond_1

    .line 2506
    add-int/lit8 v0, v1, -0x1

    .line 2516
    :goto_2
    return v0

    .line 2504
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2508
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 2509
    if-nez v2, :cond_3

    .line 2510
    iget v4, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->v:I

    add-int/2addr v0, v4

    .line 2514
    goto :goto_0

    .line 2516
    :cond_3
    add-int/lit8 v0, v1, -0x1

    goto :goto_2
.end method

.method private b(II)I
    .locals 6
    .parameter
    .parameter

    .prologue
    const v3, 0x7fffffff

    .line 2039
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 2136
    :cond_0
    :goto_0
    return v3

    .line 2044
    :cond_1
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->m:Z

    if-eqz v0, :cond_3

    .line 2045
    iget v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->r:I

    move v1, v0

    move v2, v3

    :goto_1
    iget v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->s:I

    if-gt v1, v0, :cond_4

    .line 2046
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 2049
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    .line 2050
    iget v4, v0, Landroid/graphics/RectF;->left:F

    int-to-float v5, p1

    cmpg-float v4, v4, v5

    if-gez v4, :cond_2

    iget v4, v0, Landroid/graphics/RectF;->right:F

    int-to-float v5, p1

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    iget v4, v0, Landroid/graphics/RectF;->top:F

    int-to-float v5, p2

    cmpg-float v4, v4, v5

    if-gez v4, :cond_2

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    int-to-float v4, p2

    cmpl-float v0, v0, v4

    if-lez v0, :cond_2

    move v2, v1

    .line 2045
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 2056
    :cond_3
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Laor;

    iget v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->c:I

    invoke-virtual {v0, v1}, Laor;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2064
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Laor;

    iget-object v0, v0, Laor;->a:Ljava/util/Vector;

    iget v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->c:I

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2065
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Laor;

    iget-object v0, v0, Laor;->a:Ljava/util/Vector;

    iget v2, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->c:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v4, v0, v1

    .line 2066
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v0, v4, :cond_0

    .line 2072
    const/4 v1, 0x0

    move v2, v3

    :goto_2
    if-ge v1, v4, :cond_4

    .line 2073
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    .line 2074
    iget v3, v0, Landroid/graphics/RectF;->left:F

    int-to-float v5, p1

    cmpg-float v3, v3, v5

    if-gez v3, :cond_5

    iget v3, v0, Landroid/graphics/RectF;->right:F

    int-to-float v5, p1

    cmpl-float v3, v3, v5

    if-lez v3, :cond_5

    iget v3, v0, Landroid/graphics/RectF;->top:F

    int-to-float v5, p2

    cmpg-float v3, v3, v5

    if-gez v3, :cond_5

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    int-to-float v3, p2

    cmpl-float v0, v0, v3

    if-lez v0, :cond_5

    move v0, v1

    .line 2072
    :goto_3
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_2

    :cond_4
    move v3, v2

    .line 2136
    goto/16 :goto_0

    :cond_5
    move v0, v2

    goto :goto_3
.end method

.method private b(Landroid/graphics/Canvas;)V
    .locals 17
    .parameter

    .prologue
    .line 1770
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->m:Z

    if-nez v2, :cond_1

    .line 2036
    :cond_0
    return-void

    .line 1772
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Laor;

    invoke-virtual {v2}, Laor;->b()I

    move-result v10

    .line 1774
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->r:I

    if-ltz v2, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->s:I

    if-le v2, v10, :cond_3

    .line 1775
    :cond_2
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->r:I

    .line 1777
    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->s:I

    if-lt v2, v10, :cond_4

    .line 1778
    add-int/lit8 v2, v10, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->s:I

    .line 1781
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v10, v2, :cond_0

    .line 1794
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->top:I

    .line 1795
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b:Landroid/graphics/Rect;

    iget v7, v2, Landroid/graphics/Rect;->bottom:I

    .line 1796
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->c:Landroid/graphics/Rect;

    iget v8, v2, Landroid/graphics/Rect;->top:I

    .line 1797
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->c:Landroid/graphics/Rect;

    iget v9, v2, Landroid/graphics/Rect;->bottom:I

    .line 1799
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b:Landroid/graphics/drawable/Drawable;

    .line 1803
    invoke-virtual/range {p0 .. p0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    .line 1804
    invoke-virtual/range {p0 .. p0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->getPaddingTop()I

    move-result v2

    int-to-float v3, v2

    .line 1809
    if-le v7, v9, :cond_c

    .line 1810
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->r:I

    move v5, v2

    move v2, v3

    :goto_0
    if-ge v5, v10, :cond_26

    .line 1811
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->c:Ljava/util/Vector;

    invoke-virtual {v2, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 1812
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->c:Ljava/util/Vector;

    add-int/lit8 v11, v5, 0x1

    invoke-virtual {v2, v11}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 1813
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->l:F

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->j:I

    int-to-float v11, v11

    add-float/2addr v2, v11

    .line 1814
    add-float/2addr v2, v3

    int-to-float v11, v6

    cmpg-float v2, v2, v11

    if-gez v2, :cond_6

    .line 1815
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->r:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->r:I

    .line 1817
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->r:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Laor;

    iget v11, v11, Laor;->a:I

    sub-int v11, v10, v11

    if-ne v2, v11, :cond_5

    .line 1819
    invoke-virtual/range {p0 .. p0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->o()Z

    .line 1810
    :cond_5
    :goto_1
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    move v2, v3

    goto :goto_0

    .line 1825
    :cond_6
    add-int/lit8 v2, v10, -0x1

    if-ne v5, v2, :cond_7

    .line 1826
    move-object/from16 v0, p0

    iput v5, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->s:I

    .line 1830
    :cond_7
    int-to-float v2, v7

    cmpl-float v2, v3, v2

    if-lez v2, :cond_b

    .line 1831
    add-int/lit8 v2, v5, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->s:I

    .line 1832
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->s:I

    add-int/lit8 v5, v10, -0x1

    if-le v2, v5, :cond_8

    .line 1833
    add-int/lit8 v2, v10, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->s:I

    .line 1889
    :cond_8
    :goto_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->r:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->s:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v2, v5, v1, v4}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a(IILandroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;)V

    .line 1891
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->z:Z

    if-eqz v2, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Laoa;

    if-eqz v2, :cond_13

    .line 1893
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Laoa;

    invoke-interface {v2}, Laoa;->a()V

    .line 1894
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->z:Z

    .line 1909
    :cond_9
    :goto_3
    if-eqz v10, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Laor;

    invoke-virtual {v2}, Laor;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1911
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    .line 1912
    if-eqz v10, :cond_24

    .line 1913
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->c:Ljava/util/Vector;

    add-int/lit8 v5, v10, -0x1

    invoke-virtual {v2, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    move v9, v2

    .line 1916
    :goto_4
    int-to-float v2, v7

    cmpl-float v2, v2, v9

    if-lez v2, :cond_0

    .line 1918
    if-nez v10, :cond_17

    .line 1919
    const/4 v2, 0x0

    .line 1920
    const/4 v8, 0x1

    .line 1921
    invoke-virtual/range {p0 .. p0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v6, 0x7f0c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->v:I

    .line 1922
    :goto_5
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->v:I

    if-ge v2, v5, :cond_0

    .line 1923
    invoke-virtual/range {p0 .. p0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->getPaddingLeft()I

    move-result v5

    int-to-float v6, v5

    .line 1924
    const/4 v5, 0x0

    :goto_6
    move-object/from16 v0, p0

    iget v7, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->w:I

    if-ge v5, v7, :cond_16

    .line 1925
    move-object/from16 v0, p0

    iget v7, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->k:F

    int-to-float v9, v8

    mul-float/2addr v9, v7

    .line 1927
    if-eqz v4, :cond_23

    .line 1928
    sget-object v7, Laxr;->i:[I

    invoke-virtual {v4, v7}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1929
    float-to-int v7, v6

    float-to-int v10, v3

    add-float v11, v6, v9

    float-to-int v11, v11

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->l:F

    add-float/2addr v12, v3

    float-to-int v12, v12

    invoke-virtual {v4, v7, v10, v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1932
    invoke-static {v4}, Lawh;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 1933
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1935
    :goto_7
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->j:I

    int-to-float v4, v4

    add-float/2addr v4, v9

    add-float/2addr v6, v4

    .line 1924
    add-int v4, v5, v8

    move v5, v4

    move-object v4, v7

    goto :goto_6

    .line 1839
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->p:Z

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v4, v2}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a(Landroid/graphics/Canvas;ILandroid/graphics/drawable/Drawable;Z)V

    goto/16 :goto_1

    .line 1844
    :cond_c
    if-ge v7, v9, :cond_12

    .line 1846
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->s:I

    .line 1847
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->s:I

    move v5, v2

    move v2, v3

    :goto_8
    if-ltz v5, :cond_f

    .line 1848
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->c:Ljava/util/Vector;

    invoke-virtual {v2, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 1849
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->c:Ljava/util/Vector;

    add-int/lit8 v12, v5, 0x1

    invoke-virtual {v2, v12}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 1850
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->l:F

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->j:I

    int-to-float v12, v12

    add-float/2addr v2, v12

    .line 1851
    int-to-float v12, v7

    cmpl-float v12, v3, v12

    if-lez v12, :cond_e

    .line 1852
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->s:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->s:I

    .line 1847
    :cond_d
    :goto_9
    add-int/lit8 v2, v5, -0x1

    move v5, v2

    move v2, v3

    goto :goto_8

    .line 1856
    :cond_e
    add-float/2addr v2, v3

    int-to-float v12, v6

    cmpg-float v2, v2, v12

    if-gez v2, :cond_10

    .line 1857
    add-int/lit8 v2, v5, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->r:I

    .line 1859
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->r:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Laor;

    iget-object v5, v5, Laor;->a:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int v5, v10, v5

    add-int/lit8 v5, v5, -0x1

    if-gt v2, v5, :cond_25

    .line 1862
    invoke-virtual/range {p0 .. p0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->p()Z

    move v2, v3

    :cond_f
    :goto_a
    move v3, v2

    .line 1883
    goto/16 :goto_2

    .line 1867
    :cond_10
    if-nez v5, :cond_11

    .line 1868
    move-object/from16 v0, p0

    iput v5, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->r:I

    .line 1872
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->p:Z

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v4, v2}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a(Landroid/graphics/Canvas;ILandroid/graphics/drawable/Drawable;Z)V

    .line 1874
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Laor;

    invoke-virtual {v2, v5}, Laor;->a(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1876
    if-nez v2, :cond_d

    .line 1877
    if-ne v5, v11, :cond_d

    .line 1878
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->s:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->s:I

    goto :goto_9

    .line 1883
    :cond_12
    if-ne v7, v9, :cond_8

    .line 1884
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->r:I

    :goto_b
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->s:I

    if-gt v2, v5, :cond_8

    .line 1885
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->p:Z

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a(Landroid/graphics/Canvas;ILandroid/graphics/drawable/Drawable;Z)V

    .line 1884
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 1895
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Laoa;

    if-eqz v2, :cond_9

    .line 1896
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->v:Z

    .line 1897
    invoke-virtual/range {p0 .. p0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->h()I

    move-result v2

    .line 1899
    if-lez v6, :cond_14

    if-eqz v8, :cond_14

    if-ge v7, v2, :cond_14

    if-ne v9, v2, :cond_15

    .line 1901
    :cond_14
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->v:Z

    .line 1903
    :cond_15
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->v:Z

    if-eqz v2, :cond_9

    .line 1905
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Laoa;

    invoke-interface {v2}, Laoa;->a()V

    .line 1906
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->v:Z

    goto/16 :goto_3

    .line 1937
    :cond_16
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->l:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->k:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    add-float/2addr v3, v5

    .line 1922
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_5

    .line 1940
    :cond_17
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->v:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->w:I

    mul-int/2addr v3, v2

    .line 1941
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->c:Ljava/util/Vector;

    invoke-virtual {v2, v10}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v7

    .line 1943
    if-le v3, v10, :cond_1c

    .line 1944
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->l:F

    div-float v2, v7, v2

    float-to-int v5, v2

    .line 1945
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->v:I

    if-ge v5, v2, :cond_1c

    .line 1946
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->w:I

    .line 1949
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b:Ljava/util/Vector;

    invoke-virtual {v2, v10}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v6

    .line 1951
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->c:Ljava/util/Vector;

    add-int/lit8 v3, v10, -0x1

    invoke-virtual {v2, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 1952
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b:Ljava/util/Vector;

    add-int/lit8 v8, v10, -0x1

    invoke-virtual {v2, v8}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 1954
    cmpl-float v3, v7, v3

    if-nez v3, :cond_19

    .line 1955
    sub-float v2, v6, v2

    .line 1959
    :goto_c
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->k:F

    float-to-int v3, v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    .line 1960
    if-gtz v2, :cond_22

    .line 1961
    const/4 v2, 0x1

    move v3, v2

    .line 1965
    :goto_d
    invoke-virtual/range {p0 .. p0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v6, v2

    if-lez v2, :cond_21

    .line 1966
    invoke-virtual/range {p0 .. p0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    .line 1967
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:I

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b:Ljava/util/Vector;

    add-int/lit8 v8, v10, -0x1

    invoke-virtual {v2, v8}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    sub-float v2, v6, v2

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->j:I

    int-to-float v6, v6

    sub-float/2addr v2, v6

    .line 1968
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->l:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->k:I

    int-to-float v6, v6

    add-float/2addr v2, v6

    add-float v6, v7, v2

    .line 1969
    add-int/lit8 v2, v5, 0x1

    move v5, v6

    .line 1972
    :goto_e
    move-object/from16 v0, p0

    iget v6, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->v:I

    if-ge v2, v6, :cond_1b

    .line 1973
    invoke-virtual/range {p0 .. p0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->getPaddingLeft()I

    move-result v6

    int-to-float v8, v6

    .line 1974
    const/4 v6, 0x0

    :goto_f
    if-ge v6, v11, :cond_1a

    .line 1975
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->k:F

    int-to-float v13, v3

    mul-float/2addr v12, v13

    .line 1977
    if-eqz v4, :cond_18

    .line 1978
    sget-object v13, Laxr;->i:[I

    invoke-virtual {v4, v13}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1979
    float-to-int v13, v8

    float-to-int v14, v5

    add-float v15, v8, v12

    float-to-int v15, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->l:F

    move/from16 v16, v0

    add-float v16, v16, v5

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v4, v13, v14, v15, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1982
    invoke-static {v4}, Lawh;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 1983
    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1985
    :cond_18
    move-object/from16 v0, p0

    iget v13, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->j:I

    int-to-float v13, v13

    add-float/2addr v12, v13

    add-float/2addr v8, v12

    .line 1974
    add-int/2addr v6, v3

    goto :goto_f

    .line 1957
    :cond_19
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:I

    int-to-float v3, v3

    sub-float v2, v3, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->j:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    goto/16 :goto_c

    .line 1987
    :cond_1a
    move-object/from16 v0, p0

    iget v6, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->l:F

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->k:I

    int-to-float v8, v8

    add-float/2addr v6, v8

    add-float/2addr v5, v6

    .line 1972
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 1989
    :cond_1b
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->v:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 1998
    :cond_1c
    float-to-int v2, v9

    float-to-int v3, v7

    if-ne v2, v3, :cond_0

    .line 1999
    move-object/from16 v0, p0

    iget v6, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->w:I

    .line 2000
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b:Ljava/util/Vector;

    invoke-virtual {v2, v10}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 2003
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b:Ljava/util/Vector;

    add-int/lit8 v5, v10, -0x1

    invoke-virtual {v2, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    sub-float v2, v3, v2

    .line 2005
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->k:F

    float-to-int v5, v5

    int-to-float v5, v5

    div-float/2addr v2, v5

    float-to-int v2, v2

    .line 2006
    if-gtz v2, :cond_1d

    .line 2007
    const/4 v2, 0x1

    :cond_1d
    move v5, v3

    move v3, v2

    .line 2011
    :goto_10
    if-eq v2, v6, :cond_0

    .line 2012
    add-int/2addr v2, v3

    .line 2013
    :cond_1e
    if-le v2, v6, :cond_1f

    .line 2014
    add-int/lit8 v3, v3, -0x1

    .line 2015
    add-int/lit8 v2, v2, -0x1

    .line 2016
    const/4 v8, 0x1

    if-gt v3, v8, :cond_1e

    .line 2019
    :cond_1f
    int-to-float v8, v3

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->k:F

    mul-float/2addr v8, v9

    .line 2020
    if-eqz v4, :cond_20

    .line 2022
    sget-object v9, Laxr;->i:[I

    invoke-virtual {v4, v9}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2023
    float-to-int v9, v5

    float-to-int v10, v7

    add-float v11, v5, v8

    float-to-int v11, v11

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->l:F

    add-float/2addr v12, v7

    float-to-int v12, v12

    invoke-virtual {v4, v9, v10, v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2026
    invoke-static {v4}, Lawh;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 2027
    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2029
    :cond_20
    move-object/from16 v0, p0

    iget v9, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->j:I

    int-to-float v9, v9

    add-float/2addr v8, v9

    add-float/2addr v5, v8

    goto :goto_10

    :cond_21
    move v2, v5

    move v5, v7

    goto/16 :goto_e

    :cond_22
    move v3, v2

    goto/16 :goto_d

    :cond_23
    move-object v7, v4

    goto/16 :goto_7

    :cond_24
    move v9, v2

    goto/16 :goto_4

    :cond_25
    move v2, v3

    goto/16 :goto_a

    :cond_26
    move v3, v2

    goto/16 :goto_2
.end method

.method private b(Landroid/graphics/Canvas;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2635
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b(Landroid/graphics/Canvas;IZ)V

    .line 2636
    return-void
.end method

.method private b(Landroid/graphics/Canvas;IZ)V
    .locals 32
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2640
    add-int/lit8 v2, p2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Laor;

    iget-object v3, v3, Laor;->a:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt v2, v3, :cond_1

    .line 2818
    :cond_0
    return-void

    .line 2652
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Laor;

    iget-object v2, v2, Laor;->a:Ljava/util/Vector;

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v22

    .line 2653
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Laor;

    iget-object v2, v2, Laor;->a:Ljava/util/Vector;

    add-int/lit8 v3, p2, 0x1

    invoke-virtual {v2, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int v23, v2, v22

    .line 2655
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->f:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->g:F

    add-float v24, v2, v3

    .line 2656
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->e:I

    add-int/lit8 v3, v23, -0x1

    if-le v2, v3, :cond_2

    .line 2657
    add-int/lit8 v2, v23, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->e:I

    .line 2660
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->removeAllElements()V

    .line 2662
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->v:I

    move/from16 v25, v0

    .line 2663
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->u:I

    .line 2665
    if-nez v2, :cond_15

    .line 2667
    add-int v2, v22, v23

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Laor;

    invoke-virtual {v3}, Laor;->b()I

    move-result v3

    if-ne v2, v3, :cond_4

    add-int/lit8 v2, p2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Laor;

    iget-object v3, v3, Laor;->a:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_4

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b(I)I

    move-result v2

    :goto_0
    move v9, v2

    .line 2672
    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b:I

    add-int/lit8 v3, v25, -0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->k:I

    mul-int/2addr v3, v4

    sub-int/2addr v2, v3

    div-int v2, v2, v25

    int-to-float v0, v2

    move/from16 v26, v0

    .line 2674
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:I

    add-int/lit8 v3, v9, -0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->j:I

    mul-int/2addr v3, v4

    sub-int/2addr v2, v3

    div-int/2addr v2, v9

    int-to-float v0, v2

    move/from16 v17, v0

    .line 2676
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Landroid/graphics/Paint$FontMetricsInt;

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Landroid/graphics/Paint$FontMetricsInt;

    iget v3, v3, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sub-float v2, v26, v2

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Landroid/graphics/Paint$FontMetricsInt;

    iget v3, v3, Landroid/graphics/Paint$FontMetricsInt;->top:I

    int-to-float v3, v3

    sub-float v27, v2, v3

    .line 2678
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Landroid/graphics/Paint$FontMetricsInt;

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->top:I

    int-to-float v2, v2

    add-float v2, v2, v27

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b:Landroid/graphics/Paint$FontMetricsInt;

    iget v3, v3, Landroid/graphics/Paint$FontMetricsInt;->top:I

    int-to-float v3, v3

    sub-float v28, v2, v3

    .line 2680
    mul-int v29, v25, v9

    .line 2682
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b:Landroid/graphics/drawable/Drawable;

    move-object/from16 v16, v0

    .line 2684
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->i:I

    invoke-static {v3}, Lawh;->a(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 2687
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextSize()F

    move-result v15

    .line 2688
    const/high16 v2, 0x4000

    div-float v30, v15, v2

    .line 2690
    const/4 v14, 0x0

    .line 2691
    invoke-virtual/range {p0 .. p0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->getPaddingTop()I

    move-result v2

    int-to-float v3, v2

    .line 2692
    const/4 v2, 0x0

    move/from16 v20, v2

    move/from16 v21, v3

    :goto_2
    move/from16 v0, v20

    move/from16 v1, v25

    if-ge v0, v1, :cond_0

    .line 2693
    invoke-virtual/range {p0 .. p0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->getPaddingLeft()I

    move-result v2

    int-to-float v13, v2

    .line 2694
    const/4 v3, 0x0

    const/4 v2, 0x1

    move/from16 v19, v3

    move-object/from16 v3, v16

    :goto_3
    move/from16 v0, v19

    if-ge v0, v9, :cond_3

    .line 2697
    if-eqz p3, :cond_14

    move/from16 v0, v23

    if-ge v14, v0, :cond_14

    .line 2698
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Laor;

    add-int v4, v22, v14

    invoke-virtual {v2, v4}, Laor;->a(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 2699
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v2, v1}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a(Ljava/lang/CharSequence;F)I

    move-result v4

    .line 2700
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->w:I

    sub-int v2, v2, v19

    if-le v4, v2, :cond_5

    .line 2813
    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->k:I

    int-to-float v2, v2

    add-float v2, v2, v26

    add-float v4, v21, v2

    .line 2692
    add-int/lit8 v2, v20, 0x1

    move/from16 v20, v2

    move/from16 v21, v4

    move-object/from16 v16, v3

    goto :goto_2

    .line 2667
    :cond_4
    add-int v2, v23, v25

    add-int/lit8 v2, v2, -0x1

    div-int v2, v2, v25

    goto/16 :goto_0

    .line 2702
    :cond_5
    int-to-float v2, v4

    mul-float v2, v2, v17

    move/from16 v18, v4

    .line 2705
    :goto_4
    add-int v4, v19, v18

    if-ne v4, v9, :cond_13

    .line 2706
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->j:I

    sub-int/2addr v2, v4

    int-to-float v2, v2

    sub-float/2addr v2, v13

    move v10, v2

    .line 2708
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    move/from16 v0, v29

    if-ge v2, v0, :cond_6

    .line 2709
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Ljava/util/Vector;

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v2, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 2710
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Ljava/util/Vector;

    mul-int v4, v20, v9

    add-int v4, v4, v19

    invoke-virtual {v2, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/RectF;

    add-float v4, v13, v10

    add-float v5, v21, v26

    move/from16 v0, v21

    invoke-virtual {v2, v13, v0, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 2712
    if-eqz v3, :cond_12

    .line 2713
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a(I)[I

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2714
    float-to-int v2, v13

    move/from16 v0, v21

    float-to-int v4, v0

    add-float v5, v13, v10

    float-to-int v5, v5

    add-float v6, v21, v26

    float-to-int v6, v6

    invoke-virtual {v3, v2, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2717
    invoke-static {v3}, Lawh;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 2718
    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    move-object/from16 v16, v2

    .line 2721
    :goto_6
    move/from16 v0, v23

    if-ge v14, v0, :cond_b

    .line 2722
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Laor;

    add-int v3, v22, v14

    invoke-virtual {v2, v3}, Laor;->a(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 2723
    add-int v2, v22, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b(I)Z

    move-result v31

    .line 2724
    if-eqz v31, :cond_7

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->c:F

    move v11, v2

    .line 2727
    :goto_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 2728
    if-nez v5, :cond_8

    move v2, v13

    move v3, v14

    .line 2694
    :goto_8
    add-int v4, v19, v18

    move/from16 v19, v4

    move v13, v2

    move v14, v3

    move/from16 v2, v18

    move-object/from16 v3, v16

    goto/16 :goto_3

    .line 2724
    :cond_7
    const/4 v2, 0x0

    move v11, v2

    goto :goto_7

    .line 2731
    :cond_8
    add-int v2, v22, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->c(I)Z

    move-result v7

    .line 2732
    if-eqz v7, :cond_c

    .line 2733
    sget v2, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->q:I

    int-to-float v3, v2

    .line 2738
    :goto_9
    const/high16 v2, 0x4000

    mul-float v2, v2, v24

    sub-float v4, v10, v2

    .line 2741
    if-eqz v31, :cond_d

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->c:F

    sub-float v2, v4, v2

    :goto_a
    move v6, v15

    .line 2744
    :cond_9
    cmpl-float v8, v3, v2

    if-lez v8, :cond_11

    .line 2745
    const/high16 v3, 0x3f80

    sub-float/2addr v6, v3

    .line 2746
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Landroid/graphics/Paint;

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2747
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Landroid/graphics/Paint;

    const/4 v8, 0x0

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v12

    invoke-virtual {v3, v5, v8, v12}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v3

    .line 2749
    cmpg-float v8, v6, v30

    if-gtz v8, :cond_9

    .line 2750
    cmpl-float v6, v3, v2

    if-lez v6, :cond_11

    .line 2751
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v2}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a(Ljava/lang/CharSequence;F)Ljava/lang/CharSequence;

    move-result-object v3

    .line 2752
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Landroid/graphics/Paint;

    const/4 v5, 0x0

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v6

    invoke-virtual {v2, v3, v5, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v2

    move v12, v2

    .line 2764
    :goto_b
    const/4 v2, 0x0

    .line 2765
    sget-object v5, Lavb;->a:[I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Landroid/text/Layout$Alignment;

    invoke-virtual {v6}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 2776
    :goto_c
    add-float v4, v24, v13

    add-float v6, v2, v4

    .line 2778
    if-eqz v7, :cond_e

    .line 2779
    sget-object v2, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    sget v4, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->q:I

    invoke-virtual {v2, v3, v4}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Ljava/lang/CharSequence;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 2780
    if-eqz v3, :cond_b

    .line 2781
    const/4 v2, 0x0

    .line 2782
    sget v4, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->q:I

    int-to-float v4, v4

    cmpl-float v4, v26, v4

    if-lez v4, :cond_a

    .line 2783
    move/from16 v0, v26

    float-to-int v2, v0

    sget v4, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->q:I

    sub-int/2addr v2, v4

    div-int/lit8 v2, v2, 0x2

    .line 2785
    :cond_a
    float-to-int v4, v6

    int-to-float v5, v2

    add-float v5, v5, v21

    float-to-int v5, v5

    sget v7, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->q:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    float-to-int v6, v6

    int-to-float v2, v2

    add-float v2, v2, v21

    sget v7, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->q:I

    int-to-float v7, v7

    add-float/2addr v2, v7

    float-to-int v2, v2

    invoke-virtual {v3, v4, v5, v6, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2788
    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2810
    :cond_b
    :goto_d
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->j:I

    int-to-float v2, v2

    add-float/2addr v2, v10

    add-float/2addr v2, v13

    .line 2811
    add-int/lit8 v3, v14, 0x1

    goto/16 :goto_8

    .line 2735
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-virtual {v2, v5, v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v3

    goto/16 :goto_9

    :cond_d
    move v2, v4

    .line 2741
    goto/16 :goto_a

    .line 2767
    :pswitch_0
    sub-float v2, v4, v12

    sub-float/2addr v2, v11

    .line 2768
    goto :goto_c

    .line 2770
    :pswitch_1
    sub-float v2, v4, v12

    sub-float/2addr v2, v11

    const/high16 v4, 0x4000

    div-float/2addr v2, v4

    .line 2771
    goto :goto_c

    .line 2791
    :cond_e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->e:I

    if-ne v14, v2, :cond_f

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->c:Z

    if-eqz v2, :cond_f

    .line 2792
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->h:I

    invoke-static {v4}, Lawh;->a(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 2794
    :cond_f
    const/4 v4, 0x0

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    add-float v7, v21, v27

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 2796
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->i:I

    invoke-static {v3}, Lawh;->a(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 2799
    if-eqz v31, :cond_10

    .line 2800
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Landroid/graphics/drawable/Drawable;

    add-float v3, v6, v12

    const/high16 v4, 0x4000

    div-float v4, v24, v4

    add-float/2addr v3, v4

    float-to-int v3, v3

    const/high16 v4, 0x4000

    div-float v4, v28, v4

    add-float v4, v4, v21

    float-to-int v4, v4

    add-float v5, v6, v12

    add-float/2addr v5, v11

    const/high16 v6, 0x4000

    div-float v6, v24, v6

    add-float/2addr v5, v6

    float-to-int v5, v5

    const/high16 v6, 0x4000

    div-float v6, v28, v6

    add-float v6, v6, v21

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->d:F

    add-float/2addr v6, v7

    float-to-int v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2803
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2805
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Landroid/graphics/Paint;

    invoke-virtual {v2, v15}, Landroid/graphics/Paint;->setTextSize(F)V

    goto/16 :goto_d

    :cond_11
    move v12, v3

    move-object v3, v5

    goto/16 :goto_b

    :cond_12
    move-object/from16 v16, v3

    goto/16 :goto_6

    :cond_13
    move v10, v2

    goto/16 :goto_5

    :cond_14
    move/from16 v18, v2

    move/from16 v2, v17

    goto/16 :goto_4

    :cond_15
    move v9, v2

    goto/16 :goto_1

    .line 2765
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private e(I)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 2471
    iget v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->g:I

    if-ne p1, v1, :cond_0

    .line 2487
    :goto_0
    return v0

    .line 2474
    :cond_0
    iget v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:I

    if-lez v1, :cond_1

    iget v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b:I

    if-gtz v1, :cond_2

    .line 2475
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 2477
    :cond_2
    iget v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->v:I

    if-gtz v1, :cond_3

    .line 2478
    iput v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->v:I

    .line 2480
    :cond_3
    iget v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->m:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 2482
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->f(I)Z

    move-result v0

    goto :goto_0

    .line 2484
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->g(I)Z

    move-result v0

    goto :goto_0

    .line 2480
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private f(I)Z
    .locals 11
    .parameter

    .prologue
    const/4 v10, 0x1

    const/4 v1, 0x0

    .line 2520
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Laor;

    iget-object v0, v0, Laor;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v2, p1, 0x1

    if-le v0, v2, :cond_0

    .line 2548
    :goto_0
    return v10

    .line 2523
    :cond_0
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Laor;

    iget-object v0, v0, Laor;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 2524
    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Laor;

    invoke-virtual {v2}, Laor;->b()I

    move-result v5

    .line 2526
    iget v2, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:I

    iget v3, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->w:I

    add-int/lit8 v3, v3, -0x1

    iget v4, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->j:I

    mul-int/2addr v3, v4

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->w:I

    div-int/2addr v2, v3

    int-to-float v6, v2

    move v4, v0

    .line 2529
    :goto_1
    if-gt v4, p1, :cond_4

    .line 2530
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Laor;

    iget-object v0, v0, Laor;->a:Ljava/util/Vector;

    invoke-virtual {v0, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move v0, v1

    move v2, v1

    .line 2533
    :goto_2
    iget v3, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->v:I

    if-ge v0, v3, :cond_3

    add-int v3, v7, v2

    if-ge v3, v5, :cond_3

    move v3, v1

    .line 2534
    :goto_3
    iget v8, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->w:I

    if-ge v3, v8, :cond_1

    .line 2535
    add-int v8, v7, v2

    if-lt v8, v5, :cond_2

    .line 2533
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2537
    :cond_2
    iget-object v8, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Laor;

    add-int v9, v7, v2

    invoke-virtual {v8, v9}, Laor;->a(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-direct {p0, v8, v6}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a(Ljava/lang/CharSequence;F)I

    move-result v8

    .line 2539
    iget v9, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->w:I

    sub-int/2addr v9, v3

    if-gt v8, v9, :cond_1

    .line 2534
    add-int/2addr v3, v8

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 2543
    :cond_3
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Laor;

    iget-object v0, v0, Laor;->a:Ljava/util/Vector;

    add-int/2addr v2, v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 2529
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    .line 2545
    :cond_4
    iget v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->w:I

    iput v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->u:I

    .line 2546
    const/4 v0, 0x0

    iput v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->g:F

    .line 2547
    iput p1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->g:I

    goto :goto_0
.end method

.method private g(I)Z
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 2552
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Laor;

    iget-object v0, v0, Laor;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    if-le v0, v1, :cond_0

    .line 2571
    :goto_0
    return v5

    .line 2555
    :cond_0
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Laor;

    iget-object v0, v0, Laor;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 2556
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Laor;

    invoke-virtual {v1}, Laor;->b()I

    move-result v2

    move v1, v0

    .line 2561
    :goto_1
    if-gt v1, p1, :cond_3

    .line 2562
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Laor;

    iget-object v0, v0, Laor;->a:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 2563
    iget v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->u:I

    if-lez v0, :cond_2

    iget v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->u:I

    .line 2564
    :goto_2
    iget v4, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->v:I

    mul-int/2addr v0, v4

    .line 2565
    add-int v4, v3, v0

    if-le v4, v2, :cond_1

    .line 2566
    sub-int v0, v2, v3

    .line 2567
    :cond_1
    iget-object v4, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Laor;

    iget-object v4, v4, Laor;->a:Ljava/util/Vector;

    add-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 2561
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 2563
    :cond_2
    invoke-direct {p0, v3}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b(I)I

    move-result v0

    goto :goto_2

    .line 2569
    :cond_3
    const/4 v0, 0x0

    iput v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->g:F

    .line 2570
    iput p1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->g:I

    goto :goto_0
.end method

.method private t()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 259
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Laor;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->u:I

    if-lez v1, :cond_0

    iget v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->v:I

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->c:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-gt v1, v0, :cond_1

    .line 260
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->t:I

    .line 261
    :cond_1
    iget v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->v:I

    move v2, v1

    move v1, v0

    .line 263
    :goto_0
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 264
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->c:Ljava/util/Vector;

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v0, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->intValue()I

    move-result v3

    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->c:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->intValue()I

    move-result v0

    if-ne v3, v0, :cond_3

    .line 263
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 267
    :cond_3
    add-int/lit8 v2, v2, -0x1

    .line 268
    if-gtz v2, :cond_2

    .line 273
    :cond_4
    add-int/lit8 v0, v1, -0x1

    iput v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->t:I

    .line 274
    return-void
.end method

.method private u()V
    .locals 3

    .prologue
    .line 1221
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b:Z

    if-eqz v0, :cond_1

    .line 1223
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->m:Z

    if-eqz v0, :cond_2

    .line 1224
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->f()I

    move-result v0

    .line 1228
    :goto_0
    iget v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->f:I

    if-eq v1, v0, :cond_1

    .line 1229
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Laoq;

    if-eqz v1, :cond_0

    .line 1230
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Laoq;

    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Laor;

    invoke-virtual {v2, v0}, Laor;->a(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Laoq;->b(ILjava/lang/CharSequence;)Z

    .line 1232
    :cond_0
    iput v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->f:I

    .line 1235
    :cond_1
    return-void

    .line 1226
    :cond_2
    iget v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->e:I

    goto :goto_0
.end method


# virtual methods
.method public a(FZ)F
    .locals 4
    .parameter
    .parameter

    .prologue
    const/high16 v1, -0x4080

    .line 3151
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Laor;

    if-nez v0, :cond_0

    move v0, v1

    .line 3170
    :goto_0
    return v0

    .line 3153
    :cond_0
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    iget v2, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->r:I

    if-gt v0, v2, :cond_1

    move v0, v1

    .line 3154
    goto :goto_0

    .line 3156
    :cond_1
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->c:Ljava/util/Vector;

    iget v2, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->r:I

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 3157
    iget v2, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->l:F

    add-float/2addr v2, v0

    iget v3, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->k:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    .line 3158
    if-eqz p2, :cond_2

    .line 3159
    iget-object v3, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    cmpg-float v0, v0, v3

    if-gez v0, :cond_3

    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    cmpl-float v0, v2, v0

    if-lez v0, :cond_3

    .line 3161
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v1, v0

    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->c:Ljava/util/Vector;

    iget v2, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->r:I

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sub-float v0, v1, v0

    goto :goto_0

    .line 3165
    :cond_2
    iget-object v3, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    cmpg-float v0, v0, v3

    if-gez v0, :cond_3

    float-to-int v0, v2

    iget-object v3, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-le v0, v3, :cond_3

    .line 3167
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    sub-float v0, v2, v0

    goto :goto_0

    :cond_3
    move v0, v1

    .line 3170
    goto :goto_0
.end method

.method protected a(II)I
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 2417
    iget v2, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->l:I

    .line 2418
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Laor;

    iget-object v0, v0, Laor;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 2419
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Laor;

    iget-object v0, v0, Laor;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 p1, v0, -0x1

    .line 2421
    :cond_0
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Laor;

    invoke-virtual {v0}, Laor;->b()I

    move-result v0

    if-nez v0, :cond_2

    move p2, v1

    .line 2467
    :cond_1
    :goto_0
    return p2

    .line 2424
    :cond_2
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Laor;

    invoke-virtual {v0}, Laor;->b()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Laor;

    iget-object v0, v0, Laor;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v0, v3, v0

    .line 2427
    if-le p2, v0, :cond_3

    move p2, v1

    :cond_3
    move v0, v2

    .line 2436
    :goto_1
    invoke-direct {p0, p1}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->e(I)Z

    move-result v2

    .line 2437
    if-nez v2, :cond_4

    .line 2440
    const/4 v0, -0x1

    iput v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->g:I

    goto :goto_0

    .line 2445
    :cond_4
    add-int v2, p1, v0

    .line 2449
    iget-object v3, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Laor;

    iget-object v3, v3, Laor;->a:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt v2, v3, :cond_7

    .line 2450
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Laor;

    iget-object v0, v0, Laor;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 2451
    sub-int v2, v0, p1

    .line 2452
    if-eq v0, p1, :cond_1

    .line 2455
    :goto_2
    iget-object v3, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Laor;

    iget-object v3, v3, Laor;->a:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Laor;

    iget-object v0, v0, Laor;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v0, v3, v0

    .line 2459
    if-ge p2, v0, :cond_6

    .line 2464
    iget v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->g:I

    if-eq v0, p1, :cond_5

    const/4 v1, 0x1

    :cond_5
    iput-boolean v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->v:Z

    .line 2465
    iput p1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->g:I

    goto :goto_0

    .line 2461
    :cond_6
    sub-int/2addr p2, v0

    .line 2462
    add-int/2addr p1, v2

    move v0, v2

    .line 2463
    goto :goto_1

    :cond_7
    move v4, v2

    move v2, v0

    move v0, v4

    goto :goto_2
.end method

.method public a(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 125
    sget-object v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Ljava/util/List;

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 131
    :goto_0
    return-object v0

    .line 127
    :cond_1
    sget-object v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sget-object v2, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 128
    if-ltz p1, :cond_2

    if-ge p1, v0, :cond_2

    sget-object v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 129
    sget-object v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 131
    goto :goto_0
.end method

.method public a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .parameter

    .prologue
    .line 109
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gtz v0, :cond_2

    .line 110
    :cond_0
    const/4 p1, 0x0

    .line 116
    :cond_1
    :goto_0
    return-object p1

    .line 111
    :cond_2
    iget v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->n:I

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->w:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_1

    .line 114
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Landroid/content/Context;

    const v1, 0x7f0b03fd

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public a(I)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 1209
    iput-boolean v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->c:Z

    .line 1210
    iput p1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->e:I

    .line 1211
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b()V

    .line 1213
    iput-boolean v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b:Z

    .line 1214
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->w:Z

    if-eqz v0, :cond_0

    .line 1215
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b:Z

    .line 1217
    :cond_0
    invoke-direct {p0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->u()V

    .line 1218
    return-void
.end method

.method public a(IIFF)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 570
    const/4 v0, -0x1

    .line 571
    const/4 v1, 0x0

    .line 572
    const/4 v2, 0x0

    .line 575
    iget-object v3, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Laor;

    invoke-virtual {v3}, Laor;->b()I

    move-result v7

    move v3, p4

    move v6, p3

    .line 577
    :goto_0
    if-ge p2, v7, :cond_17

    .line 578
    iget-object v4, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Laor;

    invoke-virtual {v4, p2}, Laor;->a(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 579
    if-nez v4, :cond_0

    move v4, v6

    move v10, v0

    move v0, v2

    move v2, v10

    .line 577
    :goto_1
    add-int/lit8 p2, p2, 0x1

    move v6, v4

    move v10, v2

    move v2, v0

    move v0, v10

    goto :goto_0

    .line 582
    :cond_0
    const/4 v5, -0x1

    if-ne v0, v5, :cond_2

    .line 583
    iget v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->k:F

    invoke-direct {p0, v4, v0, p2}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a(Ljava/lang/CharSequence;FI)I

    move-result v0

    move v1, v0

    .line 589
    :cond_1
    :goto_2
    iget v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->k:F

    int-to-float v4, v1

    mul-float v8, v0, v4

    .line 590
    const/4 v4, -0x1

    .line 593
    sub-int v0, p1, v2

    if-ge v1, v0, :cond_b

    add-int/lit8 v0, v7, -0x1

    if-ge p2, v0, :cond_b

    .line 594
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Laor;

    add-int/lit8 v5, p2, 0x1

    invoke-virtual {v0, v5}, Laor;->a(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 596
    if-nez v0, :cond_3

    move v0, v2

    move v2, v4

    move v4, v6

    .line 597
    goto :goto_1

    .line 584
    :cond_2
    if-lez v0, :cond_1

    move v1, v0

    .line 586
    goto :goto_2

    .line 599
    :cond_3
    iget v4, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->k:F

    invoke-direct {p0, v0, v4, p2}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a(Ljava/lang/CharSequence;FI)I

    move-result v5

    .line 603
    add-int v0, v2, v1

    add-int/2addr v0, v5

    if-le v0, p1, :cond_7

    .line 605
    iget v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:I

    iget v2, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->j:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    sub-float v2, v0, v6

    .line 607
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-le v0, p2, :cond_4

    .line 608
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    add-float/2addr v2, v6

    iget v4, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->l:F

    add-float/2addr v4, v3

    invoke-virtual {v0, v6, v3, v2, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 615
    :goto_3
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->getPaddingLeft()I

    move-result v0

    int-to-float v4, v0

    .line 616
    iget v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->l:F

    iget v2, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->k:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    add-float v2, v3, v0

    .line 617
    const/4 v0, 0x0

    .line 618
    iget-object v3, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    add-int/lit8 v6, p2, 0x1

    if-le v3, v6, :cond_5

    .line 619
    iget-object v3, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b:Ljava/util/Vector;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    add-int/lit8 v8, p2, 0x1

    invoke-virtual {v3, v6, v8}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 625
    :goto_4
    iget-object v3, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->c:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    add-int/lit8 v6, p2, 0x1

    if-le v3, v6, :cond_6

    .line 626
    iget-object v3, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->c:Ljava/util/Vector;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    add-int/lit8 v8, p2, 0x1

    invoke-virtual {v3, v6, v8}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    move v3, v4

    :goto_5
    move v4, v3

    move v3, v2

    move v2, v5

    .line 657
    goto/16 :goto_1

    .line 611
    :cond_4
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Ljava/util/Vector;

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v0, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 612
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    add-float/2addr v2, v6

    iget v4, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->l:F

    add-float/2addr v4, v3

    invoke-virtual {v0, v6, v3, v2, v4}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_3

    .line 621
    :cond_5
    iget-object v3, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b:Ljava/util/Vector;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 628
    :cond_6
    iget-object v3, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->c:Ljava/util/Vector;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    move v3, v4

    goto :goto_5

    .line 632
    :cond_7
    add-int/2addr v2, v1

    .line 634
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-le v0, p2, :cond_8

    .line 635
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    add-float v4, v6, v8

    iget v9, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->l:F

    add-float/2addr v9, v3

    invoke-virtual {v0, v6, v3, v4, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 642
    :goto_6
    iget v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->j:I

    int-to-float v0, v0

    add-float/2addr v0, v8

    add-float/2addr v0, v6

    .line 643
    iget-object v4, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    add-int/lit8 v6, p2, 0x1

    if-le v4, v6, :cond_9

    .line 644
    iget-object v4, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b:Ljava/util/Vector;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    add-int/lit8 v8, p2, 0x1

    invoke-virtual {v4, v6, v8}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 650
    :goto_7
    iget-object v4, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->c:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    add-int/lit8 v6, p2, 0x1

    if-le v4, v6, :cond_a

    .line 651
    iget-object v4, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->c:Ljava/util/Vector;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    add-int/lit8 v8, p2, 0x1

    invoke-virtual {v4, v6, v8}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    move v10, v2

    move v2, v3

    move v3, v0

    move v0, v10

    goto :goto_5

    .line 638
    :cond_8
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Ljava/util/Vector;

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v0, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 639
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    add-float v4, v6, v8

    iget v9, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->l:F

    add-float/2addr v9, v3

    invoke-virtual {v0, v6, v3, v4, v9}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_6

    .line 646
    :cond_9
    iget-object v4, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b:Ljava/util/Vector;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 653
    :cond_a
    iget-object v4, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->c:Ljava/util/Vector;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    move v10, v2

    move v2, v3

    move v3, v0

    move v0, v10

    goto/16 :goto_5

    .line 657
    :cond_b
    add-int/lit8 v0, v7, -0x1

    if-ne p2, v0, :cond_13

    .line 659
    sub-int v0, p1, v2

    if-ge v1, v0, :cond_f

    .line 660
    add-int/2addr v2, v1

    .line 661
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-le v0, p2, :cond_c

    .line 662
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    add-float v5, v6, v8

    iget v9, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->l:F

    add-float/2addr v9, v3

    invoke-virtual {v0, v6, v3, v5, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 669
    :goto_8
    iget v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->j:I

    int-to-float v0, v0

    add-float/2addr v0, v8

    add-float/2addr v0, v6

    .line 670
    iget-object v5, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    add-int/lit8 v6, p2, 0x1

    if-le v5, v6, :cond_d

    .line 671
    iget-object v5, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b:Ljava/util/Vector;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    add-int/lit8 v8, p2, 0x1

    invoke-virtual {v5, v6, v8}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 677
    :goto_9
    iget-object v5, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->c:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    add-int/lit8 v6, p2, 0x1

    if-le v5, v6, :cond_e

    .line 678
    iget-object v5, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->c:Ljava/util/Vector;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    add-int/lit8 v8, p2, 0x1

    invoke-virtual {v5, v6, v8}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    move v10, v2

    move v2, v4

    move v4, v0

    move v0, v10

    goto/16 :goto_1

    .line 665
    :cond_c
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Ljava/util/Vector;

    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v0, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 666
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    add-float v5, v6, v8

    iget v9, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->l:F

    add-float/2addr v9, v3

    invoke-virtual {v0, v6, v3, v5, v9}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_8

    .line 673
    :cond_d
    iget-object v5, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b:Ljava/util/Vector;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 680
    :cond_e
    iget-object v5, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->c:Ljava/util/Vector;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    move v10, v2

    move v2, v4

    move v4, v0

    move v0, v10

    goto/16 :goto_1

    .line 684
    :cond_f
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-le v0, p2, :cond_10

    .line 685
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    add-float v2, v6, v8

    iget v5, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->l:F

    add-float/2addr v5, v3

    invoke-virtual {v0, v6, v3, v2, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 692
    :goto_a
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->getPaddingLeft()I

    move-result v0

    int-to-float v2, v0

    .line 693
    iget v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->l:F

    iget v5, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->k:I

    int-to-float v5, v5

    add-float/2addr v0, v5

    add-float/2addr v3, v0

    .line 694
    const/4 v0, 0x0

    .line 695
    iget-object v5, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    add-int/lit8 v6, p2, 0x1

    if-le v5, v6, :cond_11

    .line 696
    iget-object v5, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b:Ljava/util/Vector;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    add-int/lit8 v8, p2, 0x1

    invoke-virtual {v5, v6, v8}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 702
    :goto_b
    iget-object v5, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->c:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    add-int/lit8 v6, p2, 0x1

    if-le v5, v6, :cond_12

    .line 703
    iget-object v5, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->c:Ljava/util/Vector;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    add-int/lit8 v8, p2, 0x1

    invoke-virtual {v5, v6, v8}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    move v10, v4

    move v4, v2

    move v2, v10

    goto/16 :goto_1

    .line 688
    :cond_10
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Ljava/util/Vector;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 689
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    add-float v2, v6, v8

    iget v5, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->l:F

    add-float/2addr v5, v3

    invoke-virtual {v0, v6, v3, v2, v5}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_a

    .line 698
    :cond_11
    iget-object v5, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b:Ljava/util/Vector;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 705
    :cond_12
    iget-object v5, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->c:Ljava/util/Vector;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    move v10, v4

    move v4, v2

    move v2, v10

    goto/16 :goto_1

    .line 709
    :cond_13
    sub-int v0, p1, v2

    if-lt v1, v0, :cond_18

    .line 713
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-le v0, p2, :cond_14

    .line 714
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    add-float v2, v6, v8

    iget v5, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->l:F

    add-float/2addr v5, v3

    invoke-virtual {v0, v6, v3, v2, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 721
    :goto_c
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->getPaddingLeft()I

    move-result v0

    int-to-float v2, v0

    .line 722
    iget v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->l:F

    iget v5, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->k:I

    int-to-float v5, v5

    add-float/2addr v0, v5

    add-float/2addr v3, v0

    .line 723
    const/4 v0, 0x0

    .line 724
    iget-object v5, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    add-int/lit8 v6, p2, 0x1

    if-le v5, v6, :cond_15

    .line 725
    iget-object v5, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b:Ljava/util/Vector;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    add-int/lit8 v8, p2, 0x1

    invoke-virtual {v5, v6, v8}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 731
    :goto_d
    iget-object v5, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->c:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    add-int/lit8 v6, p2, 0x1

    if-le v5, v6, :cond_16

    .line 732
    iget-object v5, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->c:Ljava/util/Vector;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    add-int/lit8 v8, p2, 0x1

    invoke-virtual {v5, v6, v8}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    move v10, v4

    move v4, v2

    move v2, v10

    goto/16 :goto_1

    .line 717
    :cond_14
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Ljava/util/Vector;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 718
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    add-float v2, v6, v8

    iget v5, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->l:F

    add-float/2addr v5, v3

    invoke-virtual {v0, v6, v3, v2, v5}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_c

    .line 727
    :cond_15
    iget-object v5, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b:Ljava/util/Vector;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 734
    :cond_16
    iget-object v5, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->c:Ljava/util/Vector;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    move v10, v4

    move v4, v2

    move v2, v10

    goto/16 :goto_1

    .line 739
    :cond_17
    return-void

    :cond_18
    move v0, v2

    move v2, v4

    move v4, v6

    goto/16 :goto_1
.end method

.method protected a(IIZ)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1171
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Laor;

    if-nez v0, :cond_1

    .line 1195
    :cond_0
    :goto_0
    return-void

    .line 1173
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->p:I

    .line 1174
    iput p2, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->e:I

    .line 1175
    iput-boolean v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->c:Z

    .line 1176
    iput-boolean p3, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b:Z

    .line 1177
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->w:Z

    if-eqz v0, :cond_2

    .line 1178
    iput-boolean v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b:Z

    .line 1180
    :cond_2
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->m:Z

    if-nez v0, :cond_3

    .line 1181
    invoke-direct {p0, p1}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->e(I)Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->v:Z

    .line 1183
    :cond_3
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Laor;

    invoke-virtual {v0, p1}, Laor;->b(I)I

    move-result v0

    .line 1184
    if-gt v0, p2, :cond_4

    .line 1185
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->e:I

    .line 1186
    :cond_4
    iget v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->e:I

    if-gez v0, :cond_5

    .line 1187
    iput v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->e:I

    .line 1189
    :cond_5
    iput p1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->c:I

    .line 1191
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b()V

    .line 1193
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Laoa;

    if-eqz v0, :cond_0

    .line 1194
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Laoa;

    invoke-interface {v0}, Laoa;->a()V

    goto :goto_0

    :cond_6
    move v0, v1

    .line 1181
    goto :goto_1
.end method

.method protected a(Landroid/graphics/Bitmap;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 2821
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Landroid/graphics/Canvas;

    if-nez v0, :cond_1

    .line 2863
    :cond_0
    :goto_0
    return-void

    .line 2823
    :cond_1
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Landroid/graphics/Canvas;

    .line 2824
    invoke-virtual {v0, p1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 2825
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Landroid/graphics/Rect;

    sget-object v2, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 2826
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 2831
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Laor;

    if-eqz v1, :cond_0

    .line 2837
    iget v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->c:I

    iget v2, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->e:I

    invoke-virtual {p0, v1, v2}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a(II)I

    move-result v1

    iput v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->e:I

    .line 2838
    iget v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->g:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 2842
    iget v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->g:I

    iput v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->c:I

    .line 2843
    invoke-direct {p0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->u()V

    .line 2845
    iget v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->m:I

    packed-switch v1, :pswitch_data_0

    .line 2856
    :goto_1
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Laoa;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->v:Z

    if-eqz v0, :cond_2

    .line 2857
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Laoa;

    invoke-interface {v0}, Laoa;->a()V

    .line 2858
    iput-boolean v3, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->v:Z

    .line 2861
    :cond_2
    iput-boolean v3, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->q:Z

    .line 2862
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_0

    .line 2847
    :pswitch_0
    iget v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->c:I

    invoke-direct {p0, v0, v1}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b(Landroid/graphics/Canvas;I)V

    goto :goto_1

    .line 2850
    :pswitch_1
    iget v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->c:I

    invoke-direct {p0, v0, v1}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a(Landroid/graphics/Canvas;I)V

    goto :goto_1

    .line 2845
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected a(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1387
    if-nez p1, :cond_1

    .line 1423
    :cond_0
    :goto_0
    return-void

    .line 1395
    :cond_1
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Laor;

    if-eqz v0, :cond_0

    .line 1397
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->n:Z

    if-eqz v0, :cond_2

    .line 1398
    iget v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->m:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1401
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 1409
    :cond_2
    invoke-direct {p0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->u()V

    .line 1410
    iget v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->m:I

    packed-switch v0, :pswitch_data_1

    .line 1418
    :goto_1
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Laoa;

    if-eqz v0, :cond_0

    .line 1419
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Laoa;

    invoke-interface {v0}, Laoa;->a()V

    .line 1420
    iput-boolean v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->v:Z

    goto :goto_0

    .line 1413
    :pswitch_1
    iget v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->c:I

    invoke-direct {p0, p1, v0, v1}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a(Landroid/graphics/Canvas;IZ)V

    goto :goto_1

    .line 1398
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 1410
    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public a(Laor;IZ)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1293
    if-nez p1, :cond_1

    .line 1311
    :cond_0
    :goto_0
    return-void

    .line 1295
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a(Laor;IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1299
    invoke-direct {p0, p1}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a(Laor;)V

    .line 1301
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->m:Z

    if-eqz v0, :cond_2

    .line 1302
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->p()V

    .line 1306
    :goto_1
    if-eqz p3, :cond_3

    const/4 v0, 0x0

    :goto_2
    iput v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->f:I

    .line 1307
    invoke-direct {p0, p2, p3}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a(IZ)V

    .line 1309
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b()V

    goto :goto_0

    .line 1304
    :cond_2
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Lawk;

    invoke-virtual {v0}, Lawk;->c()V

    goto :goto_1

    .line 1306
    :cond_3
    const/4 v0, -0x1

    goto :goto_2
.end method

.method public a(Laor;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1254
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a(Laor;IZ)V

    .line 1255
    return-void
.end method

.method public a(ZZ)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 3234
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Laoa;

    if-eqz v0, :cond_0

    .line 3236
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Laoa;

    invoke-interface {v0, p1, p2}, Laoa;->a(ZZ)V

    .line 3238
    :cond_0
    return-void
.end method

.method public a(Laor;IZ)Z
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1274
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->d:Ljava/util/Vector;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->n:I

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    .line 1288
    :goto_0
    return v0

    .line 1276
    :cond_1
    invoke-virtual {p1}, Laor;->b()I

    move-result v0

    .line 1277
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->d:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    .line 1279
    if-ne v0, v1, :cond_2

    iget v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->e:I

    if-ne p2, v1, :cond_2

    iget-boolean v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b:Z

    if-eq v1, p3, :cond_3

    :cond_2
    move v0, v2

    .line 1281
    goto :goto_0

    .line 1282
    :cond_3
    iget v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->v:I

    if-lez v1, :cond_6

    iget v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->v:I

    if-le v0, v1, :cond_6

    .line 1283
    iget v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->v:I

    move v1, v0

    :goto_1
    move v4, v3

    .line 1284
    :goto_2
    if-ge v4, v1, :cond_5

    .line 1285
    invoke-virtual {p1, v4}, Laor;->a(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->d:Ljava/util/Vector;

    invoke-virtual {v0, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v2

    .line 1286
    goto :goto_0

    .line 1284
    :cond_4
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_2

    :cond_5
    move v0, v3

    .line 1288
    goto :goto_0

    :cond_6
    move v1, v0

    goto :goto_1
.end method

.method public a(ZZZI)Z
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 2577
    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Laor;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->m:Z

    if-eqz v2, :cond_2

    :cond_0
    move v0, v1

    .line 2598
    :cond_1
    :goto_0
    return v0

    .line 2579
    :cond_2
    iget v2, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->c:I

    if-eq p4, v2, :cond_1

    .line 2581
    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Laor;

    invoke-virtual {v2, p4, v0}, Laor;->a(IZ)Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    .line 2582
    goto :goto_0

    .line 2584
    :cond_3
    iget v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->e:I

    .line 2594
    invoke-virtual {p0, p4, v1, p2}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a(IIZ)V

    .line 2596
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Lawk;

    invoke-virtual {v1, p1, p3, p0}, Lawk;->a(ZZLandroid/view/animation/Animation$AnimationListener;)V

    .line 2597
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Lawk;

    invoke-virtual {v1}, Lawk;->b()V

    goto :goto_0
.end method

.method public b()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1361
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->m:Z

    if-nez v0, :cond_0

    .line 1362
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->union(IIII)V

    .line 1363
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->q:Z

    .line 1365
    :cond_0
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->invalidate()V

    .line 1366
    return-void
.end method

.method public b(IIFF)V
    .locals 12
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 746
    const/4 v1, 0x0

    .line 753
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Laor;

    invoke-virtual {v0}, Laor;->b()I

    move-result v5

    .line 754
    const/4 v0, 0x3

    new-array v6, v0, [I

    const/4 v0, 0x0

    const/4 v2, 0x1

    aput v2, v6, v0

    const/4 v0, 0x1

    div-int/lit8 v2, p1, 0x2

    aput v2, v6, v0

    const/4 v0, 0x2

    aput p1, v6, v0

    .line 755
    new-array v7, p1, [I

    .line 756
    const/4 v0, 0x0

    :goto_0
    array-length v2, v7

    if-ge v0, v2, :cond_0

    .line 757
    const/4 v2, -0x1

    aput v2, v7, v0

    .line 756
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 759
    :cond_0
    if-lez p2, :cond_2

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p3, v0

    if-lez v0, :cond_2

    .line 760
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b:Ljava/util/Vector;

    add-int/lit8 v3, p2, -0x1

    invoke-virtual {v0, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sub-float v0, v2, v0

    iget v2, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->k:F

    div-float/2addr v0, v2

    float-to-int v0, v0

    .line 763
    const/4 v2, 0x0

    aget v2, v6, v2

    if-le v0, v2, :cond_5

    .line 764
    const/4 v0, 0x0

    const/4 v1, 0x1

    aget v1, v6, v1

    aput v1, v7, v0

    .line 765
    add-int/lit8 v2, p2, -0x1

    .line 782
    :cond_1
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result p3

    .line 783
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->c:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result p4

    move p2, v2

    :cond_2
    move/from16 v3, p4

    move v4, p3

    .line 786
    :cond_3
    :goto_1
    if-ge p2, v5, :cond_2b

    .line 787
    const/4 v2, 0x0

    .line 789
    const/4 v0, 0x0

    :goto_2
    array-length v1, v7

    if-ge v0, v1, :cond_9

    .line 790
    aget v1, v7, v0

    if-gez v1, :cond_4

    .line 791
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Laor;

    add-int v8, p2, v0

    invoke-virtual {v1, v8}, Laor;->a(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 792
    if-nez v1, :cond_6

    .line 793
    const/4 v1, -0x1

    aput v1, v7, v0

    .line 789
    :cond_4
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 769
    :cond_5
    add-int/lit8 v0, p2, -0x1

    move v3, v0

    move v2, p2

    :goto_4
    if-lez v3, :cond_1

    .line 770
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->c:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v0, v0, p4

    if-nez v0, :cond_2c

    .line 771
    add-int/lit8 v2, v2, -0x1

    .line 774
    const/4 v0, 0x0

    aget v0, v6, v0

    aput v0, v7, v1

    .line 775
    add-int/lit8 v0, v1, 0x1

    .line 776
    if-gt v0, p1, :cond_1

    move v1, v2

    .line 769
    :goto_5
    add-int/lit8 v2, v3, -0x1

    move v3, v2

    move v2, v1

    move v1, v0

    goto :goto_4

    .line 797
    :cond_6
    iget v8, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->k:F

    add-int v9, p2, v0

    invoke-direct {p0, v1, v8, v9}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a(Ljava/lang/CharSequence;FI)I

    move-result v1

    .line 798
    const/4 v8, 0x0

    aget v8, v6, v8

    if-le v1, v8, :cond_8

    const/4 v8, 0x1

    aget v8, v6, v8

    if-ge v1, v8, :cond_8

    .line 799
    const/4 v1, 0x1

    aget v1, v6, v1

    .line 802
    :cond_7
    :goto_6
    aput v1, v7, v0

    goto :goto_3

    .line 800
    :cond_8
    const/4 v8, 0x1

    aget v8, v6, v8

    if-le v1, v8, :cond_7

    .line 801
    const/4 v1, 0x2

    aget v1, v6, v1

    goto :goto_6

    .line 806
    :cond_9
    const/4 v0, 0x0

    move v1, v0

    move v0, v2

    :goto_7
    array-length v2, v7

    if-ge v1, v2, :cond_3

    .line 807
    aget v2, v7, v1

    .line 808
    if-gez v2, :cond_b

    .line 806
    :cond_a
    :goto_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 810
    :cond_b
    const/4 v8, 0x0

    aget v8, v6, v8

    if-ne v2, v8, :cond_16

    .line 813
    add-int v8, v0, v2

    if-lt v8, p1, :cond_11

    .line 814
    add-int/lit8 v2, p1, -0x1

    if-ne v1, v2, :cond_a

    .line 816
    const/4 v0, 0x0

    move v2, v3

    move v3, v4

    move v4, v0

    :goto_9
    if-gt v4, v1, :cond_10

    .line 817
    iget v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->k:F

    aget v8, v7, v4

    int-to-float v8, v8

    mul-float/2addr v8, v0

    .line 820
    const/4 v0, -0x1

    aput v0, v7, v4

    .line 821
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int v9, p2, v4

    if-le v0, v9, :cond_c

    .line 822
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Ljava/util/Vector;

    add-int v9, p2, v4

    invoke-virtual {v0, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    add-float v9, v3, v8

    iget v10, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->l:F

    add-float/2addr v10, v2

    invoke-virtual {v0, v3, v2, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 829
    :goto_a
    if-eq v4, v1, :cond_d

    .line 830
    iget v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->j:I

    int-to-float v0, v0

    add-float/2addr v0, v8

    add-float/2addr v0, v3

    move v11, v2

    move v2, v0

    move v0, v11

    .line 835
    :goto_b
    iget-object v3, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    add-int v8, p2, v4

    add-int/lit8 v8, v8, 0x1

    if-le v3, v8, :cond_e

    .line 836
    iget-object v3, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b:Ljava/util/Vector;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    add-int v9, p2, v4

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v3, v8, v9}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 840
    :goto_c
    iget-object v3, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->c:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    add-int v8, p2, v4

    add-int/lit8 v8, v8, 0x1

    if-le v3, v8, :cond_f

    .line 841
    iget-object v3, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->c:Ljava/util/Vector;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    add-int v9, p2, v4

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v3, v8, v9}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 816
    :goto_d
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v2

    move v2, v0

    goto :goto_9

    .line 825
    :cond_c
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Ljava/util/Vector;

    new-instance v9, Landroid/graphics/RectF;

    invoke-direct {v9}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v0, v9}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 826
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Ljava/util/Vector;

    add-int v9, p2, v4

    invoke-virtual {v0, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    add-float v9, v3, v8

    iget v10, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->l:F

    add-float/2addr v10, v2

    invoke-virtual {v0, v3, v2, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_a

    .line 832
    :cond_d
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->getPaddingLeft()I

    move-result v0

    int-to-float v3, v0

    .line 833
    iget v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->l:F

    iget v8, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->k:I

    int-to-float v8, v8

    add-float/2addr v0, v8

    add-float/2addr v0, v2

    move v2, v3

    goto :goto_b

    .line 838
    :cond_e
    iget-object v3, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b:Ljava/util/Vector;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 843
    :cond_f
    iget-object v3, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->c:Ljava/util/Vector;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 847
    :cond_10
    add-int/2addr p2, p1

    move v4, v3

    move v3, v2

    .line 848
    goto/16 :goto_1

    .line 854
    :cond_11
    add-int/2addr v0, v2

    .line 857
    add-int v2, p2, v1

    add-int/lit8 v8, v5, -0x1

    if-ne v2, v8, :cond_a

    .line 859
    const/4 v0, 0x0

    move v2, v0

    :goto_e
    if-gt v2, v1, :cond_15

    .line 860
    iget v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->k:F

    aget v8, v7, v2

    int-to-float v8, v8

    mul-float/2addr v8, v0

    .line 862
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int v9, p2, v2

    if-le v0, v9, :cond_12

    .line 863
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Ljava/util/Vector;

    add-int v9, p2, v2

    invoke-virtual {v0, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    add-float v9, v4, v8

    iget v10, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->l:F

    add-float/2addr v10, v3

    invoke-virtual {v0, v4, v3, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 871
    :goto_f
    iget v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->j:I

    int-to-float v0, v0

    add-float/2addr v0, v8

    add-float/2addr v4, v0

    .line 873
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int v8, p2, v2

    add-int/lit8 v8, v8, 0x1

    if-le v0, v8, :cond_13

    .line 874
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b:Ljava/util/Vector;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    add-int v9, p2, v2

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v0, v8, v9}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 878
    :goto_10
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int v8, p2, v2

    add-int/lit8 v8, v8, 0x1

    if-le v0, v8, :cond_14

    .line 879
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->c:Ljava/util/Vector;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    add-int v9, p2, v2

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v0, v8, v9}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 859
    :goto_11
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_e

    .line 866
    :cond_12
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Ljava/util/Vector;

    new-instance v9, Landroid/graphics/RectF;

    invoke-direct {v9}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v0, v9}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 867
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Ljava/util/Vector;

    add-int v9, p2, v2

    invoke-virtual {v0, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    add-float v9, v4, v8

    iget v10, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->l:F

    add-float/2addr v10, v3

    invoke-virtual {v0, v4, v3, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_f

    .line 876
    :cond_13
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b:Ljava/util/Vector;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 881
    :cond_14
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->c:Ljava/util/Vector;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 886
    :cond_15
    add-int/lit8 v0, v1, 0x1

    add-int/2addr p2, v0

    .line 887
    goto/16 :goto_1

    .line 891
    :cond_16
    const/4 v8, 0x1

    aget v8, v6, v8

    if-ne v2, v8, :cond_23

    .line 892
    if-nez v1, :cond_1b

    .line 895
    add-int/lit8 v8, v5, -0x1

    if-ne p2, v8, :cond_1a

    .line 896
    iget v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->k:F

    int-to-float v1, v2

    mul-float/2addr v1, v0

    .line 897
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-le v0, p2, :cond_17

    .line 898
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    add-float v2, v4, v1

    iget v8, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->l:F

    add-float/2addr v8, v3

    invoke-virtual {v0, v4, v3, v2, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 905
    :goto_12
    iget v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->j:I

    int-to-float v0, v0

    add-float/2addr v0, v1

    add-float/2addr v4, v0

    .line 906
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v1, p2, 0x1

    if-le v0, v1, :cond_18

    .line 907
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b:Ljava/util/Vector;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 911
    :goto_13
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v1, p2, 0x1

    if-le v0, v1, :cond_19

    .line 912
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->c:Ljava/util/Vector;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 917
    :goto_14
    add-int/lit8 p2, p2, 0x1

    .line 918
    goto/16 :goto_1

    .line 901
    :cond_17
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Ljava/util/Vector;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 902
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    add-float v2, v4, v1

    iget v8, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->l:F

    add-float/2addr v8, v3

    invoke-virtual {v0, v4, v3, v2, v8}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_12

    .line 909
    :cond_18
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b:Ljava/util/Vector;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 914
    :cond_19
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->c:Ljava/util/Vector;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 923
    :cond_1a
    const/4 v8, 0x1

    aget v8, v7, v8

    if-ge v8, v2, :cond_a

    .line 924
    const/4 v8, 0x1

    aput v2, v7, v8

    goto/16 :goto_8

    .line 933
    :cond_1b
    const/4 v0, 0x0

    :goto_15
    if-ge v0, v1, :cond_1c

    .line 934
    aput v2, v7, v0

    .line 933
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 936
    :cond_1c
    const/4 v8, 0x1

    .line 938
    const/4 v0, 0x0

    move v1, v3

    move v2, v4

    move v3, v0

    :goto_16
    if-gt v3, v8, :cond_21

    .line 939
    iget v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->k:F

    aget v4, v7, v3

    int-to-float v4, v4

    mul-float/2addr v4, v0

    .line 941
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int v9, p2, v3

    if-le v0, v9, :cond_1d

    .line 942
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Ljava/util/Vector;

    add-int v9, p2, v3

    invoke-virtual {v0, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    add-float v9, v2, v4

    iget v10, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->l:F

    add-float/2addr v10, v1

    invoke-virtual {v0, v2, v1, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 949
    :goto_17
    if-eq v3, v8, :cond_1e

    .line 950
    iget v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->j:I

    int-to-float v0, v0

    add-float/2addr v0, v4

    add-float/2addr v0, v2

    move v11, v1

    move v1, v0

    move v0, v11

    .line 955
    :goto_18
    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    add-int v4, p2, v3

    add-int/lit8 v4, v4, 0x1

    if-le v2, v4, :cond_1f

    .line 956
    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b:Ljava/util/Vector;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    add-int v9, p2, v3

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v2, v4, v9}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 960
    :goto_19
    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->c:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    add-int v4, p2, v3

    add-int/lit8 v4, v4, 0x1

    if-le v2, v4, :cond_20

    .line 961
    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->c:Ljava/util/Vector;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    add-int v9, p2, v3

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v2, v4, v9}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 938
    :goto_1a
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v1

    move v1, v0

    goto :goto_16

    .line 945
    :cond_1d
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Ljava/util/Vector;

    new-instance v9, Landroid/graphics/RectF;

    invoke-direct {v9}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v0, v9}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 946
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Ljava/util/Vector;

    add-int v9, p2, v3

    invoke-virtual {v0, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    add-float v9, v2, v4

    iget v10, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->l:F

    add-float/2addr v10, v1

    invoke-virtual {v0, v2, v1, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_17

    .line 952
    :cond_1e
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->getPaddingLeft()I

    move-result v0

    int-to-float v2, v0

    .line 953
    iget v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->l:F

    iget v4, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->k:I

    int-to-float v4, v4

    add-float/2addr v0, v4

    add-float/2addr v0, v1

    move v1, v2

    goto :goto_18

    .line 958
    :cond_1f
    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b:Ljava/util/Vector;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_19

    .line 963
    :cond_20
    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->c:Ljava/util/Vector;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    .line 967
    :cond_21
    add-int/lit8 p2, p2, 0x2

    .line 969
    const/4 v0, 0x0

    :goto_1b
    add-int/lit8 v3, p1, -0x2

    if-ge v0, v3, :cond_22

    .line 970
    add-int/lit8 v3, v0, 0x2

    aget v3, v7, v3

    aput v3, v7, v0

    .line 969
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 972
    :cond_22
    add-int/lit8 v0, p1, -0x2

    const/4 v3, -0x1

    aput v3, v7, v0

    .line 973
    add-int/lit8 v0, p1, -0x1

    const/4 v3, -0x1

    aput v3, v7, v0

    move v3, v1

    move v4, v2

    .line 974
    goto/16 :goto_1

    .line 975
    :cond_23
    const/4 v8, 0x2

    aget v8, v6, v8

    if-ne v2, v8, :cond_a

    .line 977
    rem-int/lit8 v0, v1, 0x2

    if-nez v0, :cond_29

    .line 979
    if-nez v1, :cond_28

    .line 980
    iget v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->k:F

    int-to-float v1, v2

    mul-float/2addr v1, v0

    .line 981
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-le v0, p2, :cond_24

    .line 982
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    add-float/2addr v1, v4

    iget v2, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->l:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v4, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 989
    :goto_1c
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->getPaddingLeft()I

    move-result v0

    int-to-float v4, v0

    .line 990
    iget v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->l:F

    iget v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->k:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    add-float/2addr v3, v0

    .line 991
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v1, p2, 0x1

    if-le v0, v1, :cond_25

    .line 992
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b:Ljava/util/Vector;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 996
    :goto_1d
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v1, p2, 0x1

    if-le v0, v1, :cond_26

    .line 997
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->c:Ljava/util/Vector;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 1002
    :goto_1e
    add-int/lit8 p2, p2, 0x1

    .line 1003
    const/4 v0, 0x0

    :goto_1f
    add-int/lit8 v1, p1, -0x1

    if-ge v0, v1, :cond_27

    .line 1004
    add-int/lit8 v1, v0, 0x1

    aget v1, v7, v1

    aput v1, v7, v0

    .line 1003
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 985
    :cond_24
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Ljava/util/Vector;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 986
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    add-float/2addr v1, v4

    iget v2, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->l:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v4, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_1c

    .line 994
    :cond_25
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b:Ljava/util/Vector;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    .line 999
    :cond_26
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->c:Ljava/util/Vector;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    .line 1006
    :cond_27
    add-int/lit8 v0, p1, -0x1

    const/4 v1, -0x1

    aput v1, v7, v0

    goto/16 :goto_1

    .line 1009
    :cond_28
    const/4 v0, 0x0

    :goto_20
    if-ge v0, v1, :cond_3

    .line 1010
    const/4 v2, 0x1

    aget v2, v6, v2

    aput v2, v7, v0

    .line 1009
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 1018
    :cond_29
    const/4 v0, 0x1

    if-ne v1, v0, :cond_2a

    .line 1019
    const/4 v0, 0x0

    aput v2, v7, v0

    goto/16 :goto_1

    .line 1022
    :cond_2a
    add-int/lit8 v0, v1, -0x1

    const/4 v2, 0x2

    aget v2, v6, v2

    aput v2, v7, v0

    .line 1023
    const/4 v0, 0x0

    :goto_21
    add-int/lit8 v2, v1, -0x1

    if-ge v0, v2, :cond_3

    .line 1024
    const/4 v2, 0x1

    aget v2, v6, v2

    aput v2, v7, v0

    .line 1023
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 1032
    :cond_2b
    return-void

    :cond_2c
    move v0, v1

    move v1, v2

    goto/16 :goto_5
.end method

.method public c()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 200
    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b:Landroid/graphics/drawable/Drawable;

    .line 201
    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->c:Landroid/graphics/drawable/Drawable;

    .line 202
    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 203
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Lapn;

    invoke-virtual {v0}, Lapn;->a()V

    .line 204
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b:Ljava/util/Vector;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->c:Ljava/util/Vector;

    if-eqz v0, :cond_1

    .line 208
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 210
    :cond_1
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->f()V

    .line 212
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;

    .line 213
    if-eqz v0, :cond_2

    .line 214
    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->b()V

    .line 217
    :cond_2
    return-void
.end method

.method public c(I)V
    .locals 12
    .parameter

    .prologue
    const-wide/16 v1, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v4, -0x1

    .line 2325
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Lapn;

    invoke-virtual {v0}, Lapn;->b()V

    .line 2327
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    .line 2328
    iget v3, v0, Landroid/graphics/RectF;->right:F

    iget v5, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v5

    float-to-int v5, v3

    .line 2329
    iget v3, v0, Landroid/graphics/RectF;->bottom:F

    iget v6, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v6

    float-to-int v6, v3

    .line 2332
    iget-boolean v3, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->m:Z

    if-nez v3, :cond_4

    .line 2333
    iget-object v3, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Laor;

    iget-object v3, v3, Laor;->a:Ljava/util/Vector;

    iget v7, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->c:I

    invoke-virtual {v3, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v3, p1

    .line 2335
    :goto_0
    iget-object v7, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Laor;

    invoke-virtual {v7, v3}, Laor;->a(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 2336
    invoke-virtual {p0, v7}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 2337
    if-nez v7, :cond_0

    .line 2367
    :goto_1
    return-void

    .line 2339
    :cond_0
    iget-boolean v8, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->w:Z

    if-eqz v8, :cond_1

    .line 2340
    iget-object v8, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Lapn;

    invoke-virtual {p0, v3, v7}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v8, v3}, Lapn;->a(Ljava/lang/CharSequence;)V

    .line 2353
    :goto_2
    iget-object v3, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Lapn;

    invoke-virtual {v3, v5, v6}, Lapn;->a(II)V

    .line 2355
    iget-object v3, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b:[I

    invoke-virtual {p0, v3}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->getLocationOnScreen([I)V

    .line 2356
    iget-object v3, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:[I

    iget-object v6, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b:[I

    aget v6, v6, v10

    iget v7, v0, Landroid/graphics/RectF;->left:F

    iget-object v8, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Lapn;

    invoke-virtual {v8}, Lapn;->getWidth()I

    move-result v8

    sub-int v5, v8, v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float v5, v7, v5

    float-to-int v5, v5

    add-int/2addr v5, v6

    aput v5, v3, v10

    .line 2358
    iget-object v3, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:[I

    iget-object v5, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b:[I

    aget v5, v5, v11

    iget v0, v0, Landroid/graphics/RectF;->top:F

    float-to-int v0, v0

    add-int/2addr v0, v5

    iget-object v5, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Lapn;

    invoke-virtual {v5}, Lapn;->getHeight()I

    move-result v5

    sub-int/2addr v0, v5

    aput v0, v3, v11

    .line 2361
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Lapn;

    invoke-virtual {v0}, Lapn;->dismiss()V

    .line 2362
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Lapn;

    invoke-virtual {v0}, Lapn;->isShowing()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2363
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Lapn;

    iget-object v3, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:[I

    invoke-virtual {v0, v1, v2, v3}, Lapn;->a(J[I)V

    goto :goto_1

    .line 2343
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->c(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2344
    sget-object v3, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    sget v8, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->q:I

    invoke-virtual {v3, v7, v8}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Ljava/lang/CharSequence;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 2346
    iget-object v7, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Lapn;

    sget v8, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->q:I

    sget v9, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->q:I

    invoke-virtual {v7, v3, v8, v9}, Lapn;->a(Landroid/graphics/drawable/Drawable;II)V

    goto :goto_2

    .line 2348
    :cond_2
    iget-object v3, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Lapn;

    invoke-virtual {v3, v7}, Lapn;->a(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 2365
    :cond_3
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Lapn;

    iget-object v3, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:[I

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lapn;->a(J[III)V

    goto :goto_1

    :cond_4
    move v3, p1

    goto/16 :goto_0
.end method

.method public d()V
    .locals 3

    .prologue
    .line 3176
    iget v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->C:I

    iget v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->D:I

    invoke-direct {p0, v0, v1}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 3177
    const v0, 0x7fffffff

    if-eq v1, v0, :cond_0

    .line 3179
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->m:Z

    if-nez v0, :cond_1

    .line 3180
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Laor;

    iget-object v0, v0, Laor;->a:Ljava/util/Vector;

    iget v2, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->c:I

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v1

    .line 3182
    :goto_0
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Laoq;

    if-eqz v1, :cond_0

    .line 3183
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Laoq;

    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Laor;

    invoke-virtual {v2, v0}, Laor;->a(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Laoq;->a(ILjava/lang/CharSequence;)Z

    move-result v0

    .line 3185
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v1

    iget v2, v1, Lamo;->ae:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lamo;->ae:I

    .line 3186
    if-eqz v0, :cond_0

    .line 3187
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->c:Z

    .line 3188
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b()V

    .line 3189
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->d:Z

    .line 3190
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Lapn;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lapn;->a(J)V

    .line 3195
    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public d(I)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 1199
    iput-boolean v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->c:Z

    .line 1200
    iput p1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->p:I

    .line 1201
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b()V

    .line 1203
    iput-boolean v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b:Z

    .line 1204
    return-void
.end method

.method public d()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2605
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Laor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Laor;

    iget-object v1, v1, Laor;->a:Ljava/util/List;

    if-nez v1, :cond_1

    .line 2610
    :cond_0
    :goto_0
    return v0

    .line 2607
    :cond_1
    iget-boolean v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->m:Z

    if-eqz v1, :cond_3

    .line 2608
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->h()I

    move-result v2

    if-lt v1, v2, :cond_2

    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Laor;

    invoke-virtual {v1}, Laor;->b()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 2610
    :cond_3
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Laor;

    iget-object v1, v1, Laor;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Laor;

    iget v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->c:I

    invoke-virtual {v0, v1}, Laor;->c(I)Z

    move-result v0

    goto :goto_0
.end method

.method public d(I)Z
    .locals 1
    .parameter

    .prologue
    .line 277
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->t:I

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2619
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Laor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Laor;

    iget-object v1, v1, Laor;->a:Ljava/util/List;

    if-nez v1, :cond_1

    .line 2624
    :cond_0
    :goto_0
    return v0

    .line 2621
    :cond_1
    iget-boolean v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->m:Z

    if-eqz v1, :cond_2

    .line 2622
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 2624
    :cond_2
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Laor;

    iget-object v1, v1, Laor;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Laor;

    iget v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->c:I

    invoke-virtual {v0, v1}, Laor;->d(I)Z

    move-result v0

    goto :goto_0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 2929
    iget v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->B:I

    return v0
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->n:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public l()Z
    .locals 1

    .prologue
    .line 2319
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->w:Z

    return v0
.end method

.method public m()V
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b:Ljava/util/Vector;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->c:Ljava/util/Vector;

    if-eqz v0, :cond_1

    .line 191
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 193
    :cond_1
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Ljava/util/Vector;

    if-eqz v0, :cond_2

    .line 194
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 196
    :cond_2
    return-void
.end method

.method public m()Z
    .locals 1

    .prologue
    .line 2901
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->m:Z

    return v0
.end method

.method public n()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2869
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->isShown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2880
    :cond_0
    :goto_0
    return-void

    .line 2872
    :cond_1
    iget v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->e:I

    if-ltz v0, :cond_0

    .line 2875
    const/4 v0, -0x1

    iput v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->f:I

    .line 2876
    iput-boolean v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b:Z

    .line 2877
    iput-boolean v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->c:Z

    .line 2878
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b()V

    goto :goto_0
.end method

.method public n()Z
    .locals 1

    .prologue
    .line 2913
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->n:Z

    return v0
.end method

.method public o()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3028
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->m:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->l:Z

    if-nez v0, :cond_1

    .line 3048
    :cond_0
    :goto_0
    return-void

    .line 3030
    :cond_1
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    .line 3031
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    .line 3032
    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->clear()V

    .line 3033
    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->clear()V

    .line 3034
    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b:Ljava/util/Vector;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 3035
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 3036
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->c:Ljava/util/Vector;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 3037
    iput v3, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->o:I

    .line 3038
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;

    .line 3039
    if-eqz v0, :cond_3

    .line 3040
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->a(Z)V

    .line 3041
    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->getScrollX()I

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->getScrollY()I

    move-result v1

    if-eqz v1, :cond_3

    .line 3044
    :cond_2
    invoke-virtual {v0, v3, v3}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->scrollTo(II)V

    .line 3047
    :cond_3
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->requestLayout()V

    goto :goto_0
.end method

.method public o()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2942
    const-string v2, "scrollForward!"

    invoke-static {v2}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a(Ljava/lang/String;)V

    .line 2943
    iget-boolean v2, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->s:Z

    if-eqz v2, :cond_1

    move v0, v1

    .line 3003
    :cond_0
    :goto_0
    return v0

    .line 2947
    :cond_1
    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Laor;

    if-nez v2, :cond_2

    .line 2949
    iput-boolean v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->s:Z

    move v0, v1

    .line 2950
    goto :goto_0

    .line 2952
    :cond_2
    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Laor;

    invoke-virtual {v2}, Laor;->b()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2954
    iput-boolean v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->s:Z

    move v0, v1

    .line 2955
    goto :goto_0

    .line 2959
    :cond_3
    iput-boolean v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->s:Z

    .line 2960
    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Laor;

    invoke-virtual {v2}, Laor;->b()I

    move-result v2

    .line 2961
    iget-object v3, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Laor;

    invoke-virtual {v3}, Laor;->c()Z

    .line 2964
    iget-object v3, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Laor;

    invoke-virtual {v3}, Laor;->b()I

    move-result v3

    .line 2965
    iget-object v4, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Laor;

    invoke-virtual {v4}, Laor;->b()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2967
    if-ne v2, v3, :cond_4

    .line 2968
    iput-boolean v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->s:Z

    move v0, v1

    .line 2969
    goto :goto_0

    .line 2972
    :cond_4
    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Laor;

    invoke-virtual {v2}, Laor;->a()I

    move-result v2

    if-lez v2, :cond_6

    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->c:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-le v2, v3, :cond_6

    .line 2973
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->c:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 2974
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->c:Ljava/util/Vector;

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 2977
    float-to-int v3, v2

    float-to-int v0, v0

    if-ne v3, v0, :cond_5

    .line 2978
    iget v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->l:F

    add-float/2addr v0, v2

    iget v2, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->k:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->B:I

    .line 2983
    :goto_1
    iput-boolean v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->s:Z

    move v0, v1

    .line 2985
    goto :goto_0

    .line 2981
    :cond_5
    float-to-int v0, v2

    iput v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->B:I

    goto :goto_1

    .line 2989
    :cond_6
    iget-boolean v2, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->m:Z

    if-eqz v2, :cond_0

    .line 2990
    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->c:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-gt v2, v3, :cond_8

    .line 2992
    iget-boolean v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->l:Z

    if-nez v1, :cond_7

    .line 2993
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->requestLayout()V

    goto/16 :goto_0

    .line 2995
    :cond_7
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->getMeasuredHeight()I

    move-result v1

    iget v2, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->z:I

    if-ge v1, v2, :cond_0

    .line 2996
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->requestLayout()V

    goto/16 :goto_0

    .line 2999
    :cond_8
    iput-boolean v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->s:Z

    move v0, v1

    .line 3000
    goto/16 :goto_0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter

    .prologue
    .line 1371
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->m:Z

    if-eqz v0, :cond_1

    .line 1372
    invoke-virtual {p0, p1}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a(Landroid/graphics/Canvas;)V

    .line 1384
    :cond_0
    :goto_0
    return-void

    .line 1374
    :cond_1
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Lawk;

    if-eqz v0, :cond_0

    .line 1377
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->q:Z

    if-eqz v0, :cond_2

    .line 1378
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Lawk;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lawk;->a(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a(Landroid/graphics/Bitmap;)V

    .line 1380
    :cond_2
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Lawk;

    invoke-virtual {v0, p1}, Lawk;->b(Landroid/graphics/Canvas;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1381
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->invalidate()V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 11
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x0

    .line 282
    .line 284
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    .line 285
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    .line 286
    if-eqz v10, :cond_0

    iget v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:I

    if-eq v0, v10, :cond_0

    .line 287
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->getPaddingLeft()I

    move-result v0

    sub-int v0, v10, v0

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:I

    .line 290
    :cond_0
    if-eqz v9, :cond_1

    iget v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b:I

    if-eq v0, v9, :cond_1

    .line 291
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->getPaddingLeft()I

    move-result v0

    sub-int v0, v9, v0

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b:I

    .line 294
    :cond_1
    iget v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:I

    iget v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->w:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->j:I

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->w:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->k:F

    .line 296
    iget v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b:I

    iget v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->v:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->k:I

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->v:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->l:F

    .line 299
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Laor;

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->n:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->m:Z

    if-eqz v0, :cond_e

    .line 302
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Laor;

    invoke-virtual {v0}, Laor;->b()I

    move-result v2

    .line 304
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Laor;

    iget v0, v0, Laor;->a:I

    .line 305
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Laor;

    invoke-virtual {v1}, Laor;->a()I

    move-result v1

    .line 309
    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-eqz v3, :cond_2

    if-lez v1, :cond_3

    iget-object v3, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    mul-int/lit8 v4, v0, 0x2

    sub-int v4, v2, v4

    if-ge v3, v4, :cond_3

    .line 311
    :cond_2
    invoke-virtual {p0, v10, v9}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->setMeasuredDimension(II)V

    .line 314
    iput v10, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->A:I

    .line 315
    iput v9, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->B:I

    .line 316
    iput-boolean v8, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->s:Z

    .line 460
    :goto_0
    return-void

    .line 320
    :cond_3
    iget-object v3, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->c:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-le v3, v2, :cond_4

    .line 334
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->getMeasuredWidth()I

    move-result v0

    .line 335
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->getMeasuredHeight()I

    move-result v1

    .line 336
    invoke-virtual {p0, v0, v1}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->setMeasuredDimension(II)V

    .line 337
    invoke-direct {p0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->t()V

    .line 343
    iput-boolean v8, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->s:Z

    goto :goto_0

    .line 347
    :cond_4
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->getPaddingLeft()I

    move-result v3

    int-to-float v5, v3

    .line 348
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->getPaddingTop()I

    move-result v3

    int-to-float v6, v3

    .line 349
    iget v3, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->v:I

    .line 350
    iget v3, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->w:I

    .line 363
    if-lt v2, v0, :cond_12

    if-lez v1, :cond_12

    .line 364
    sub-int v1, v2, v0

    .line 371
    :goto_1
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-le v0, v1, :cond_5

    .line 372
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v5

    .line 374
    :cond_5
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-le v0, v1, :cond_6

    .line 375
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->c:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v6

    .line 377
    :cond_6
    if-lez v1, :cond_11

    .line 380
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->c:Ljava/util/Vector;

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v0, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 381
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b:Ljava/util/Vector;

    add-int/lit8 v7, v1, -0x1

    invoke-virtual {v0, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 382
    cmpl-float v4, v6, v4

    if-nez v4, :cond_9

    .line 383
    sub-float v0, v5, v0

    .line 387
    :goto_2
    iget v4, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->k:F

    float-to-int v4, v4

    int-to-float v4, v4

    div-float/2addr v0, v4

    float-to-int v0, v0

    .line 392
    :goto_3
    const/4 v4, 0x1

    if-ne v0, v4, :cond_a

    sget-object v0, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a()I

    move-result v0

    invoke-static {v0}, Lcom/sohu/inputmethod/engine/IMEInterface;->isPinyinIME(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 393
    iget v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->k:F

    div-float v0, v5, v0

    float-to-int v4, v0

    .line 394
    iget v7, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->k:F

    move-object v0, p0

    .line 396
    invoke-direct/range {v0 .. v7}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a(IIIIFFF)V

    .line 406
    :goto_4
    invoke-direct {p0, v2}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a(I)I

    move-result v3

    .line 409
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->c:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 410
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->c:Ljava/util/Vector;

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 414
    float-to-int v3, v1

    float-to-int v0, v0

    if-ne v3, v0, :cond_c

    .line 415
    iget v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->l:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->k:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 422
    :goto_5
    int-to-float v1, v9

    cmpg-float v1, v0, v1

    if-gez v1, :cond_7

    .line 423
    int-to-float v0, v9

    .line 425
    :cond_7
    iget-boolean v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->l:Z

    if-eqz v1, :cond_d

    .line 426
    iget v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->o:I

    if-le v1, v2, :cond_8

    iget v2, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->o:I

    :cond_8
    iput v2, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->o:I

    .line 427
    iget v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->l:F

    iget v2, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->o:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->k:I

    iget v3, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->o:I

    add-int/lit8 v3, v3, -0x1

    mul-int/2addr v2, v3

    int-to-float v2, v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    .line 429
    invoke-virtual {p0, v10, v1}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->setMeasuredDimension(II)V

    .line 435
    :goto_6
    float-to-int v0, v0

    move v1, v10

    .line 455
    :goto_7
    iput v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->A:I

    .line 456
    iput v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->B:I

    .line 459
    iput-boolean v8, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->s:Z

    goto/16 :goto_0

    .line 385
    :cond_9
    iget v4, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:I

    int-to-float v4, v4

    sub-float v0, v4, v0

    iget v4, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->j:I

    int-to-float v4, v4

    sub-float/2addr v0, v4

    goto/16 :goto_2

    .line 399
    :cond_a
    const/4 v0, 0x2

    if-le v3, v0, :cond_b

    rem-int/lit8 v0, v3, 0x2

    if-nez v0, :cond_b

    .line 400
    invoke-virtual {p0, v3, v1, v5, v6}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b(IIFF)V

    goto :goto_4

    .line 402
    :cond_b
    invoke-virtual {p0, v3, v1, v5, v6}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a(IIFF)V

    goto :goto_4

    :cond_c
    move v0, v1

    .line 418
    goto :goto_5

    .line 431
    :cond_d
    float-to-int v1, v0

    invoke-virtual {p0, v10, v1}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->setMeasuredDimension(II)V

    goto :goto_6

    .line 437
    :cond_e
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->l:Z

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->m:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Laor;

    if-eqz v0, :cond_10

    .line 438
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Laor;

    invoke-virtual {v0}, Laor;->b()I

    move-result v0

    .line 439
    iget v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->o:I

    if-le v1, v0, :cond_f

    iget v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->o:I

    :cond_f
    iput v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->o:I

    .line 440
    iget v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->l:F

    iget v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->o:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->k:I

    iget v2, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->o:I

    add-int/lit8 v2, v2, -0x1

    mul-int/2addr v1, v2

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    .line 442
    invoke-virtual {p0, v10, v0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->setMeasuredDimension(II)V

    :goto_8
    move v0, v9

    move v1, v10

    .line 447
    goto :goto_7

    .line 444
    :cond_10
    invoke-virtual {p0, v10, v9}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->setMeasuredDimension(II)V

    goto :goto_8

    :cond_11
    move v0, v8

    goto/16 :goto_3

    :cond_12
    move v1, v8

    goto/16 :goto_1
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 222
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sohu/inputmethod/sogou/CandidateView;->onSizeChanged(IIII)V

    .line 223
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->m:Z

    if-eqz v0, :cond_1

    .line 256
    :cond_0
    :goto_0
    return-void

    .line 226
    :cond_1
    if-ne p3, p1, :cond_2

    if-eq p4, p2, :cond_0

    .line 228
    :cond_2
    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 230
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Lawk;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Lawk;

    invoke-virtual {v0, p1, p2}, Lawk;->a(II)V

    .line 235
    iget v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->y:I

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:I

    .line 237
    iget v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->z:I

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b:I

    .line 242
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:F

    .line 244
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Laor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Laor;

    invoke-virtual {v0}, Laor;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 248
    const/4 v0, -0x1

    iput v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->g:I

    .line 249
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Laor;

    invoke-virtual {v0}, Laor;->c()V

    .line 250
    iget v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->c:I

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->e(I)Z

    .line 251
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->v:Z

    .line 252
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b()V

    .line 253
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Laoa;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Laoa;

    invoke-interface {v0}, Laoa;->a()V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter

    .prologue
    const-wide/16 v8, 0x0

    const v4, 0x7fffffff

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2147
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Laor;

    if-nez v0, :cond_1

    .line 2306
    :cond_0
    :goto_0
    :pswitch_0
    return v7

    .line 2152
    :cond_1
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->m:Z

    if-nez v0, :cond_2

    .line 2153
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Laor;

    iget v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->c:I

    invoke-virtual {v0, v1}, Laor;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2158
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v2, v0

    .line 2159
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v3, v0

    .line 2162
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2225
    :pswitch_1
    iput v2, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->C:I

    .line 2226
    iput v3, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->D:I

    .line 2227
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->j:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->w:Z

    if-nez v0, :cond_a

    .line 2228
    invoke-direct {p0, v2, v3}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 2229
    if-eq v0, v4, :cond_0

    .line 2231
    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->d(I)V

    .line 2232
    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b(I)V

    goto :goto_0

    .line 2164
    :pswitch_2
    const-string v0, "MotionEvent.ACTION_UP"

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a(Ljava/lang/String;)V

    .line 2165
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->d:Z

    if-eqz v0, :cond_3

    .line 2166
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a()V

    goto :goto_0

    .line 2170
    :cond_3
    invoke-direct {p0, v2, v3}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 2172
    if-eq v1, v4, :cond_8

    .line 2175
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->m:Z

    if-nez v0, :cond_d

    .line 2176
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Laor;

    iget-object v0, v0, Laor;->a:Ljava/util/Vector;

    iget v4, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->c:I

    invoke-virtual {v0, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v1

    .line 2178
    :goto_1
    iget-boolean v4, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->j:Z

    if-eqz v4, :cond_4

    .line 2179
    iget-object v4, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Laom;

    iget v5, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->c:I

    invoke-virtual {v4, v8, v9, v5, v1}, Laom;->a(JII)V

    .line 2182
    :cond_4
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Laoq;

    if-eqz v1, :cond_7

    .line 2193
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Laoq;

    iget-object v4, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Laor;

    invoke-virtual {v4, v0}, Laor;->a(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v1, v0, v4, v2, v3}, Laoq;->a(ILjava/lang/CharSequence;II)Z

    move-result v0

    .line 2196
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v1

    iget v2, v1, Lamo;->ae:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lamo;->ae:I

    .line 2197
    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->j:Z

    if-nez v0, :cond_7

    .line 2198
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->t:Z

    if-ne v0, v7, :cond_5

    .line 2199
    iput-boolean v6, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b:Z

    .line 2200
    iput-boolean v6, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->t:Z

    .line 2202
    :cond_5
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->w:Z

    if-eqz v0, :cond_6

    .line 2203
    iput-boolean v6, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b:Z

    .line 2204
    iput-boolean v6, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->u:Z

    .line 2206
    :cond_6
    iput-boolean v6, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->c:Z

    .line 2207
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b()V

    .line 2218
    :cond_7
    :goto_2
    const/4 v0, -0x1

    iput v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->p:I

    .line 2219
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Laxn;

    iget v0, v0, Laxn;->f:I

    .line 2220
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Lapn;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lapn;->a(J)V

    goto/16 :goto_0

    .line 2211
    :cond_8
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->w:Z

    if-eqz v0, :cond_9

    .line 2212
    iput-boolean v6, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b:Z

    .line 2213
    iput-boolean v6, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->c:Z

    .line 2214
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b()V

    goto :goto_2

    .line 2216
    :cond_9
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b()V

    goto :goto_2

    .line 2236
    :cond_a
    iput-boolean v6, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->d:Z

    .line 2275
    invoke-direct {p0, v2, v3}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 2276
    if-eq v0, v4, :cond_0

    .line 2278
    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b(I)V

    .line 2279
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Laom;

    iget v2, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->c:I

    invoke-virtual {v1, v8, v9, v2, v0}, Laom;->a(JII)V

    goto/16 :goto_0

    .line 2288
    :pswitch_3
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->m:Z

    if-nez v0, :cond_0

    .line 2291
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->d:Z

    if-nez v0, :cond_0

    .line 2294
    invoke-direct {p0, v2, v3}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 2295
    if-eq v0, v4, :cond_0

    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Laom;

    invoke-virtual {v1}, Laom;->b()I

    move-result v1

    if-ne v0, v1, :cond_b

    iget v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->c:I

    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Laom;

    invoke-virtual {v2}, Laom;->a()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 2299
    :cond_b
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Lapn;

    invoke-virtual {v1}, Lapn;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 2300
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Lapn;

    invoke-virtual {v1}, Lapn;->b()V

    .line 2301
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Lapn;

    invoke-virtual {v1}, Lapn;->dismiss()V

    .line 2303
    :cond_c
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Laom;

    iget v2, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->c:I

    invoke-virtual {v1, v8, v9, v2, v0}, Laom;->a(JII)V

    goto/16 :goto_0

    :cond_d
    move v0, v1

    goto/16 :goto_1

    .line 2162
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public p()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 3051
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->m:Z

    if-nez v0, :cond_1

    .line 3147
    :cond_0
    :goto_0
    return-void

    .line 3053
    :cond_1
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    .line 3054
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    .line 3055
    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Laor;

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->l:Z

    if-nez v2, :cond_2

    .line 3056
    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->clear()V

    .line 3057
    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->clear()V

    .line 3058
    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b:Ljava/util/Vector;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 3059
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 3060
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->c:Ljava/util/Vector;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 3063
    :cond_2
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;

    .line 3064
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Laor;

    invoke-virtual {v1}, Laor;->b()I

    move-result v1

    .line 3067
    iget-boolean v2, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->l:Z

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->l:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_5

    iget v2, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->u:I

    if-lez v2, :cond_5

    iget v2, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->o:I

    if-eqz v2, :cond_5

    .line 3069
    iget v2, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->o:I

    if-le v1, v2, :cond_4

    .line 3070
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->o()V

    .line 3071
    iput v5, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->r:I

    .line 3072
    iget v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->v:I

    iget v2, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->w:I

    mul-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->s:I

    .line 3073
    iget v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->s:I

    iput v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->t:I

    .line 3074
    iget v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->s:I

    if-lt v0, v1, :cond_3

    .line 3075
    add-int/lit8 v0, v1, -0x1

    iput v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->s:I

    .line 3076
    :cond_3
    iput-boolean v5, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->s:Z

    goto :goto_0

    .line 3079
    :cond_4
    iget v2, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->u:I

    if-ne v2, v6, :cond_9

    .line 3080
    iget v2, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->l:F

    int-to-float v3, v1

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->k:I

    add-int/lit8 v4, v1, -0x1

    mul-int/2addr v3, v4

    int-to-float v3, v3

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->B:I

    .line 3090
    :goto_1
    if-eqz v0, :cond_5

    .line 3091
    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->d()V

    .line 3097
    :cond_5
    iget-boolean v2, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->k:Z

    if-eqz v2, :cond_c

    .line 3098
    invoke-virtual {p0, v6}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->setHasScrolled(Z)V

    .line 3099
    if-eqz v0, :cond_0

    .line 3100
    invoke-virtual {v0, v6}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->a(Z)V

    .line 3101
    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->getScrollX()I

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->getScrollY()I

    move-result v2

    if-eqz v2, :cond_7

    .line 3104
    :cond_6
    invoke-virtual {v0, v5, v5}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->scrollTo(II)V

    .line 3106
    :cond_7
    iput v5, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->r:I

    .line 3107
    iget v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->v:I

    iget v2, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->w:I

    mul-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->s:I

    .line 3108
    iget v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->s:I

    iput v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->t:I

    .line 3109
    iget v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->s:I

    if-lt v0, v1, :cond_8

    .line 3110
    add-int/lit8 v0, v1, -0x1

    iput v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->s:I

    .line 3113
    :cond_8
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->l:Z

    if-nez v0, :cond_b

    .line 3114
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->o()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3115
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->requestLayout()V

    goto/16 :goto_0

    .line 3082
    :cond_9
    iget v2, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->u:I

    rem-int v2, v1, v2

    if-nez v2, :cond_a

    .line 3083
    iget v2, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->u:I

    div-int v2, v1, v2

    .line 3084
    iget v3, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->l:F

    int-to-float v4, v2

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->k:I

    add-int/lit8 v2, v2, -0x1

    mul-int/2addr v2, v4

    int-to-float v2, v2

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->B:I

    goto :goto_1

    .line 3086
    :cond_a
    iget v2, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->u:I

    div-int v2, v1, v2

    add-int/lit8 v2, v2, 0x1

    .line 3087
    iget v3, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->l:F

    int-to-float v4, v2

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->k:I

    add-int/lit8 v2, v2, -0x1

    mul-int/2addr v2, v4

    int-to-float v2, v2

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->B:I

    goto :goto_1

    .line 3118
    :cond_b
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->getMeasuredHeight()I

    move-result v0

    iget v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->z:I

    if-ge v0, v1, :cond_0

    .line 3119
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->requestLayout()V

    goto/16 :goto_0

    .line 3125
    :cond_c
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->n()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3127
    invoke-virtual {p0, v5}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->setHasScrolled(Z)V

    .line 3128
    if-eqz v0, :cond_f

    .line 3129
    invoke-virtual {v0, v6}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->a(Z)V

    .line 3131
    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->getScrollX()I

    move-result v1

    if-nez v1, :cond_d

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->getScrollY()I

    move-result v1

    if-eqz v1, :cond_e

    .line 3133
    :cond_d
    invoke-virtual {v0, v5, v5}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->scrollTo(II)V

    .line 3136
    :cond_e
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->l:Z

    if-nez v0, :cond_10

    .line 3137
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->getMeasuredHeight()I

    move-result v0

    iget v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->z:I

    if-eq v0, v1, :cond_f

    .line 3138
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->requestLayout()V

    .line 3145
    :cond_f
    :goto_2
    iput-boolean v5, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->s:Z

    goto/16 :goto_0

    .line 3140
    :cond_10
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->getMeasuredHeight()I

    move-result v0

    iget v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->z:I

    if-ge v0, v1, :cond_f

    .line 3141
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->requestLayout()V

    goto :goto_2
.end method

.method public p()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 3007
    iget-boolean v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->s:Z

    if-eqz v1, :cond_0

    .line 3024
    :goto_0
    return v0

    .line 3011
    :cond_0
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Laor;

    if-nez v1, :cond_1

    .line 3013
    iput-boolean v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->s:Z

    goto :goto_0

    .line 3016
    :cond_1
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Laor;

    invoke-virtual {v1}, Laor;->a()I

    move-result v1

    if-gtz v1, :cond_2

    .line 3018
    iput-boolean v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->s:Z

    goto :goto_0

    .line 3021
    :cond_2
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Laor;

    invoke-virtual {v1}, Laor;->d()Z

    .line 3023
    iput-boolean v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->s:Z

    .line 3024
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public q()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3198
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->j:Z

    if-nez v0, :cond_0

    .line 3200
    iput-boolean v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b:Z

    .line 3201
    iput-boolean v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->c:Z

    .line 3202
    iput-boolean v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->u:Z

    .line 3203
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b()V

    .line 3205
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->p:I

    .line 3206
    return-void
.end method

.method public r()V
    .locals 2

    .prologue
    .line 3214
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->x:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->n:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 3215
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->cb:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->cb:I

    .line 3217
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->x:Z

    .line 3219
    :cond_0
    return-void
.end method

.method public s()V
    .locals 2

    .prologue
    .line 3222
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->y:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->n:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 3223
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->cc:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->cc:I

    .line 3225
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->y:Z

    .line 3227
    :cond_0
    return-void
.end method

.method public setArrowUpdater(Laoa;)V
    .locals 0
    .parameter

    .prologue
    .line 1035
    iput-object p1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Laoa;

    .line 1036
    return-void
.end method

.method public setCanScrollVertical(Z)V
    .locals 0
    .parameter

    .prologue
    .line 2905
    iput-boolean p1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->m:Z

    .line 2906
    return-void
.end method

.method public setContactSignTheme(Lawc;)V
    .locals 1
    .parameter

    .prologue
    .line 2370
    if-eqz p1, :cond_0

    .line 2371
    sget-object v0, Lawd;->p:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Lawc;->b(Ljava/lang/Integer;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Landroid/graphics/drawable/Drawable;

    .line 2372
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lawh;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Landroid/graphics/drawable/Drawable;

    .line 2373
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2374
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->c:F

    .line 2375
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->d:F

    .line 2379
    :cond_0
    return-void
.end method

.method public setEnterGridView(Z)V
    .locals 0
    .parameter

    .prologue
    .line 3209
    iput-boolean p1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->x:Z

    .line 3210
    iput-boolean p1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->y:Z

    .line 3211
    return-void
.end method

.method public setFocusState()V
    .locals 1

    .prologue
    .line 2883
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2890
    :goto_0
    return-void

    .line 2887
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b:Z

    .line 2888
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->c:Z

    .line 2889
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b()V

    goto :goto_0
.end method

.method public setForceUpdateArrowStatus(Z)V
    .locals 0
    .parameter

    .prologue
    .line 3230
    iput-boolean p1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->z:Z

    .line 3231
    return-void
.end method

.method public setHardKeyboardEnable(Z)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 2398
    if-nez p1, :cond_1

    .line 2409
    :cond_0
    :goto_0
    return-void

    .line 2400
    :cond_1
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;

    check-cast v0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;

    .line 2401
    if-eqz v0, :cond_0

    .line 2403
    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->setCanScrollVertical(Z)V

    .line 2404
    invoke-virtual {p0, v1}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->setHasScrolled(Z)V

    .line 2405
    invoke-virtual {p0, v1}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->setUpdateWhenUp(Z)V

    .line 2406
    invoke-virtual {p0, v1}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->setMeasureEarlier(Z)V

    .line 2407
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->e()V

    goto :goto_0
.end method

.method public setHasScrolled(Z)V
    .locals 0
    .parameter

    .prologue
    .line 2909
    iput-boolean p1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->n:Z

    .line 2910
    return-void
.end method

.method public setMaxColumns(I)V
    .locals 0
    .parameter

    .prologue
    .line 1314
    iput p1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->w:I

    .line 1315
    return-void
.end method

.method public setRowColumns(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1318
    iput p1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->v:I

    .line 1319
    iput p2, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->u:I

    .line 1320
    iget v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->u:I

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->m:Z

    if-eqz v0, :cond_0

    .line 1321
    iget v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->u:I

    iput v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->w:I

    .line 1323
    :cond_0
    return-void
.end method

.method public setScrollDrawRect(IIII)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2933
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->c:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2934
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2939
    return-void
.end method

.method public setScrollViewHeight(I)V
    .locals 0
    .parameter

    .prologue
    .line 2921
    iput p1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->z:I

    .line 2922
    return-void
.end method

.method public setScrollViewWidth(I)V
    .locals 0
    .parameter

    .prologue
    .line 2917
    iput p1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->y:I

    .line 2918
    return-void
.end method

.method public setSymbolPressed()V
    .locals 1

    .prologue
    .line 1326
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->t:Z

    .line 1327
    return-void
.end method

.method public setSymbols(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 120
    sput-object p1, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Ljava/util/List;

    .line 121
    sput-object p2, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b:Ljava/util/List;

    .line 122
    return-void
.end method

.method public setTheme(Lawc;Lawe;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/high16 v5, -0x4080

    .line 1040
    if-nez p2, :cond_0

    .line 1109
    :goto_0
    return-void

    .line 1043
    :cond_0
    iput v6, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->j:I

    .line 1045
    invoke-virtual {p2}, Lawe;->a()Lawv;

    move-result-object v1

    .line 1046
    invoke-virtual {p2}, Lawe;->d()Lawv;

    move-result-object v2

    .line 1047
    iget v0, v1, Lawv;->a:I

    invoke-virtual {p2}, Lawe;->b()I

    move-result v3

    add-int/2addr v3, v0

    .line 1049
    int-to-float v0, v3

    iput v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->i:F

    .line 1051
    invoke-virtual {p2}, Lawe;->c()Lawv;

    move-result-object v0

    .line 1052
    iput v5, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->h:F

    .line 1053
    if-eqz v0, :cond_1

    .line 1054
    iget v0, v0, Lawv;->a:I

    invoke-virtual {p2}, Lawe;->b()I

    move-result v4

    add-int/2addr v0, v4

    int-to-float v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->h:F

    .line 1057
    :cond_1
    iget-object v4, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Landroid/graphics/Paint;

    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->w:Z

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->h:F

    cmpl-float v0, v0, v5

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->h:F

    :goto_1
    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1061
    sget-boolean v0, Laox;->b:Z

    if-eqz v0, :cond_2

    .line 1062
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Landroid/graphics/Paint;

    iget-object v4, v1, Lawv;->a:Landroid/graphics/Typeface;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1063
    :cond_2
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Landroid/graphics/Paint$FontMetricsInt;

    .line 1064
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Landroid/graphics/Paint;

    const-string v4, "..."

    const-string v5, "..."

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v0, v4, v6, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v0

    iput v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->e:F

    .line 1067
    int-to-float v0, v3

    const v3, 0x3ecccccd

    mul-float/2addr v0, v3

    .line 1068
    iget-object v3, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b:Landroid/graphics/Paint;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1069
    iget-object v3, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v3

    iput-object v3, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b:Landroid/graphics/Paint$FontMetricsInt;

    .line 1073
    iget-boolean v3, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Z

    if-eqz v3, :cond_9

    :goto_2
    iput v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b:F

    .line 1075
    iget v0, v1, Lawv;->b:I

    iput v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->i:I

    .line 1076
    iget v0, v1, Lawv;->b:I

    iput v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->h:I

    .line 1077
    if-eqz v2, :cond_3

    .line 1078
    iget v0, v2, Lawv;->b:I

    iput v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->h:I

    .line 1080
    :cond_3
    iget v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->u:I

    if-lez v0, :cond_4

    .line 1081
    iget v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:I

    iget v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->u:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->j:I

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->u:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->k:F

    .line 1082
    :cond_4
    iget v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->v:I

    if-lez v0, :cond_5

    .line 1083
    iget v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b:I

    iget v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->v:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->k:I

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->v:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->l:F

    .line 1088
    :cond_5
    invoke-virtual {p2}, Lawe;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b:Landroid/graphics/drawable/Drawable;

    .line 1090
    invoke-virtual {p2}, Lawe;->a()Laxn;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Laxn;

    .line 1091
    invoke-virtual {p2}, Lawe;->e()Lawv;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Lawv;

    .line 1093
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Lapn;

    invoke-virtual {v0, p2}, Lapn;->a(Lawe;)V

    .line 1095
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;

    .line 1096
    if-eqz v0, :cond_6

    .line 1097
    invoke-virtual {p2}, Lawe;->a()Landroid/graphics/Rect;

    move-result-object v6

    .line 1099
    invoke-virtual {p2}, Lawe;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Lawh;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Laxc;->a(Landroid/content/Context;)Laxc;

    move-result-object v2

    invoke-virtual {v2}, Laxc;->b()Lawc;

    move-result-object v2

    sget-object v3, Lawd;->m:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Lawc;->a(Ljava/lang/Integer;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget v3, v6, Landroid/graphics/Rect;->left:I

    iget v4, v6, Landroid/graphics/Rect;->top:I

    iget v5, v6, Landroid/graphics/Rect;->right:I

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    invoke-virtual/range {v0 .. v6}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->setTheme(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;IIII)V

    .line 1104
    :cond_6
    invoke-virtual {p0, p1}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->setContactSignTheme(Lawc;)V

    .line 1105
    iget v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->y:I

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:I

    .line 1106
    iget v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->z:I

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b:I

    .line 1107
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->invalidate()V

    .line 1108
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->requestLayout()V

    goto/16 :goto_0

    .line 1057
    :cond_7
    iget v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->i:F

    goto/16 :goto_1

    :cond_8
    iget v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->i:F

    goto/16 :goto_1

    .line 1073
    :cond_9
    const/4 v0, 0x0

    goto/16 :goto_2
.end method

.method public setUserSymbolPressed()V
    .locals 1

    .prologue
    .line 1330
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->u:Z

    .line 1331
    return-void
.end method

.method public setmShowUserSymbols(Z)V
    .locals 3
    .parameter

    .prologue
    .line 2310
    iput-boolean p1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->w:Z

    .line 2311
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Landroid/graphics/Paint;

    if-eqz p1, :cond_1

    iget v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->h:F

    const/high16 v2, -0x4080

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->h:F

    :goto_0
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2315
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a:Landroid/graphics/Paint$FontMetricsInt;

    .line 2316
    return-void

    .line 2311
    :cond_0
    iget v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->i:F

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->i:F

    goto :goto_0
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 2383
    instance-of v0, p1, Laxc;

    if-eqz v0, :cond_0

    .line 2384
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Laxc;->a(Landroid/content/Context;)Laxc;

    move-result-object v0

    invoke-virtual {v0}, Laxc;->b()Lawc;

    move-result-object v0

    check-cast p1, Laxc;

    iget v1, p0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->n:I

    invoke-virtual {p1, v1}, Laxc;->a(I)Lawe;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->setTheme(Lawc;Lawe;)V

    .line 2387
    :cond_0
    return-void
.end method
