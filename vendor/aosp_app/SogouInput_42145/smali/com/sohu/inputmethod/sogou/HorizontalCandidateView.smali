.class public Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;
.super Lcom/sohu/inputmethod/sogou/CandidateView;
.source "SourceFile"


# instance fields
.field private A:I

.field private B:I

.field private C:I

.field private D:I

.field private a:Landroid/content/Context;

.field private a:Landroid/view/View;

.field private b:Landroid/graphics/Rect;

.field private b:Ljava/util/Vector;

.field private c:Landroid/graphics/Rect;

.field private c:Ljava/util/Vector;

.field private h:F

.field private i:F

.field public r:I

.field public s:I

.field public s:Z

.field private t:I

.field private u:I

.field private v:I

.field private final w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 97
    invoke-direct {p0, p1, p2}, Lcom/sohu/inputmethod/sogou/CandidateView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    const/16 v0, 0x9

    iput v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->w:I

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->i:F

    .line 67
    iput v3, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->y:I

    .line 68
    iput v3, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->z:I

    .line 69
    iput v3, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->A:I

    .line 70
    iput v3, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->B:I

    .line 72
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->b:Landroid/graphics/Rect;

    .line 73
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->c:Landroid/graphics/Rect;

    .line 82
    iput-boolean v3, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->s:Z

    .line 99
    iput-object p1, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Landroid/content/Context;

    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 102
    sget-object v1, Lapr;->CandidateView:[I

    invoke-virtual {p1, p2, v1, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 105
    invoke-virtual {v1, v3, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->m:I

    .line 107
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Ljava/lang/String;

    .line 108
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 110
    const v1, 0x7f090001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->i:I

    .line 116
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Landroid/graphics/Paint;

    .line 117
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 119
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->b:Landroid/graphics/Paint;

    .line 120
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->b:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 121
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->b:Landroid/graphics/Paint;

    const/high16 v2, 0x7f09

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 122
    invoke-virtual {p0, v3}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->setFootnoteShown(Z)V

    .line 124
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Ljava/util/Vector;

    .line 125
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->b:Ljava/util/Vector;

    .line 126
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->c:Ljava/util/Vector;

    .line 127
    sget v0, Laox;->a:I

    int-to-float v0, v0

    const v1, 0x3c99999a

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->f:F

    .line 128
    iget v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->f:F

    iput v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->h:F

    .line 129
    iget v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->f:F

    iget v1, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->f:F

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->i:F

    .line 130
    sget v0, Laox;->a:I

    int-to-float v0, v0

    const v1, 0x3d99999a

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:F

    .line 131
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Landroid/text/Layout$Alignment;

    .line 132
    iput v4, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->t:I

    iput v4, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->l:I

    .line 133
    iget v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->m:I

    if-eq v0, v4, :cond_0

    iget v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->m:I

    if-ne v0, v5, :cond_1

    .line 134
    :cond_0
    iget v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->t:I

    iput v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->l:I

    .line 137
    :cond_1
    new-instance v0, Lapn;

    invoke-direct {v0, p1, p0, v3}, Lapn;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Lapn;

    .line 141
    iput-boolean v3, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->e:Z

    .line 143
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->b:Landroid/graphics/Rect;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 144
    return-void
.end method

.method private a(IIII)I
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 671
    if-ne p3, p1, :cond_1

    .line 680
    :cond_0
    :goto_0
    return v0

    .line 672
    :cond_1
    if-ge p3, p1, :cond_3

    .line 673
    if-gt p4, p1, :cond_2

    const v0, 0x7fffffff

    goto :goto_0

    .line 674
    :cond_2
    if-ge p4, p2, :cond_0

    .line 675
    const/4 v0, 0x1

    goto :goto_0

    .line 677
    :cond_3
    if-lt p3, p2, :cond_4

    const/high16 v0, -0x8000

    goto :goto_0

    .line 679
    :cond_4
    if-le p4, p2, :cond_0

    .line 680
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private a(IZ)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 507
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Laor;

    if-nez v0, :cond_0

    .line 518
    :goto_0
    return-void

    .line 510
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->p:I

    .line 511
    iput p1, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->e:I

    .line 512
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->l()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->e:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->e:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_2

    .line 513
    :cond_1
    iput-boolean v2, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->c:Z

    .line 516
    :goto_1
    iput-boolean p2, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->b:Z

    .line 517
    iput v2, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->c:I

    goto :goto_0

    .line 515
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->c:Z

    goto :goto_1
.end method

.method private a(Landroid/graphics/Canvas;I)V
    .locals 27
    .parameter
    .parameter

    .prologue
    .line 1611
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->t:I

    add-int v2, v2, p2

    .line 1612
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Laor;

    iget-object v3, v3, Laor;->b:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-le v2, v3, :cond_15

    .line 1613
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Laor;

    iget-object v2, v2, Laor;->b:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    move v9, v2

    .line 1614
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Laor;

    iget-object v2, v2, Laor;->a:Ljava/util/Vector;

    invoke-virtual {v2, v9}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v19

    .line 1615
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->e:I

    add-int/lit8 v3, v19, -0x1

    if-le v2, v3, :cond_0

    .line 1616
    add-int/lit8 v2, v19, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->e:I

    .line 1618
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->removeAllElements()V

    .line 1619
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->t:I

    .line 1620
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->b:I

    add-int/lit8 v4, v2, -0x1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->k:I

    mul-int/2addr v4, v5

    sub-int/2addr v3, v4

    div-int v2, v3, v2

    int-to-float v0, v2

    move/from16 v20, v0

    .line 1622
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Landroid/graphics/Paint$FontMetricsInt;

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Landroid/graphics/Paint$FontMetricsInt;

    iget v3, v3, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sub-float v2, v20, v2

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Landroid/graphics/Paint$FontMetricsInt;

    iget v3, v3, Landroid/graphics/Paint$FontMetricsInt;->top:I

    int-to-float v3, v3

    sub-float v21, v2, v3

    .line 1624
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Landroid/graphics/Paint$FontMetricsInt;

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->top:I

    int-to-float v2, v2

    add-float v2, v2, v21

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->b:Landroid/graphics/Paint$FontMetricsInt;

    iget v3, v3, Landroid/graphics/Paint$FontMetricsInt;->top:I

    int-to-float v3, v3

    sub-float v22, v2, v3

    .line 1626
    invoke-virtual/range {p0 .. p0}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    .line 1629
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->b:Landroid/graphics/drawable/Drawable;

    .line 1631
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->i:I

    invoke-static {v4}, Lawh;->a(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 1633
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->b:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->i:I

    invoke-static {v4}, Lawh;->a(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 1636
    const/4 v15, 0x0

    move/from16 v18, v2

    .line 1638
    :goto_1
    move/from16 v0, p2

    if-ge v0, v9, :cond_11

    .line 1639
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Laor;

    iget-object v2, v2, Laor;->a:Ljava/util/Vector;

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v23

    .line 1640
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Laor;

    iget-object v2, v2, Laor;->a:Ljava/util/Vector;

    add-int/lit8 v3, p2, 0x1

    invoke-virtual {v2, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int v24, v2, v23

    .line 1642
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Laor;

    iget-object v2, v2, Laor;->b:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    move/from16 v0, p2

    if-ge v0, v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Laor;

    iget-object v2, v2, Laor;->b:Ljava/util/Vector;

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    :goto_2
    move-object/from16 v0, p0

    iput v2, v0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->g:F

    .line 1644
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->g:F

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    .line 1645
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->g:F

    .line 1646
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->f:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->g:F

    add-float v25, v2, v3

    .line 1648
    invoke-virtual/range {p0 .. p0}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->getPaddingLeft()I

    move-result v2

    int-to-float v14, v2

    .line 1652
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->r:I

    .line 1653
    add-int v2, v23, v24

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->s:I

    .line 1655
    const/4 v2, 0x0

    move/from16 v17, v2

    :goto_3
    move/from16 v0, v17

    move/from16 v1, v24

    if-ge v0, v1, :cond_f

    .line 1656
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Laor;

    add-int v3, v23, v15

    invoke-virtual {v2, v3}, Laor;->a(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1658
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 1659
    if-nez v4, :cond_3

    move v2, v14

    move v3, v15

    .line 1655
    :goto_4
    add-int/lit8 v4, v17, 0x1

    move/from16 v17, v4

    move v14, v2

    move v15, v3

    goto :goto_3

    .line 1642
    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    .line 1662
    :cond_3
    const/4 v3, 0x0

    .line 1664
    add-int v2, v23, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->b(I)Z

    move-result v26

    .line 1665
    add-int v2, v23, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->c(I)Z

    move-result v7

    .line 1666
    if-eqz v26, :cond_8

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->c:F

    move/from16 v16, v2

    .line 1667
    :goto_5
    if-eqz v7, :cond_9

    .line 1668
    sget v2, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->q:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->b:F

    add-float/2addr v2, v6

    .line 1673
    :goto_6
    move-object/from16 v0, p0

    iget v6, v0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:F

    cmpg-float v6, v2, v6

    if-gez v6, :cond_14

    .line 1674
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->b:F

    sub-float/2addr v3, v6

    sub-float v3, v3, v16

    sub-float v2, v3, v2

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    .line 1676
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:F

    move v6, v2

    .line 1680
    :goto_7
    add-float v2, v14, v25

    .line 1683
    if-nez v15, :cond_13

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->n:I

    const/4 v10, 0x1

    if-ne v8, v10, :cond_13

    .line 1685
    move-object/from16 v0, p0

    iget v8, v0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->h:F

    add-float/2addr v2, v8

    move v10, v2

    .line 1687
    :goto_8
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:I

    int-to-float v2, v2

    sub-float/2addr v2, v10

    sub-float/2addr v2, v6

    float-to-int v2, v2

    int-to-float v2, v2

    cmpl-float v2, v3, v2

    if-lez v2, :cond_b

    .line 1688
    if-nez v15, :cond_a

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->n:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_a

    .line 1690
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:I

    int-to-float v2, v2

    sub-float/2addr v2, v10

    sub-float/2addr v2, v6

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->h:F

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v2}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a(Ljava/lang/CharSequence;F)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1692
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:I

    int-to-float v2, v2

    sub-float/2addr v2, v10

    sub-float/2addr v2, v6

    sub-float v2, v2, v25

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->h:F

    sub-float/2addr v2, v4

    float-to-int v2, v2

    int-to-float v2, v2

    .line 1694
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:I

    int-to-float v4, v4

    sub-float/2addr v4, v14

    float-to-int v4, v4

    int-to-float v4, v4

    move v11, v2

    move v12, v4

    .line 1712
    :goto_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    move/from16 v0, v19

    if-ge v2, v0, :cond_4

    .line 1713
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Ljava/util/Vector;

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v2, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1714
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Ljava/util/Vector;

    invoke-virtual {v2, v15}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/RectF;

    add-float v4, v14, v12

    add-float v8, v18, v20

    move/from16 v0, v18

    invoke-virtual {v2, v14, v0, v4, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1716
    if-eqz v5, :cond_12

    .line 1717
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a(I)[I

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1718
    float-to-int v2, v14

    move/from16 v0, v18

    float-to-int v4, v0

    add-float v8, v14, v12

    float-to-int v8, v8

    add-float v13, v18, v20

    float-to-int v13, v13

    invoke-virtual {v5, v2, v4, v8, v13}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1721
    invoke-static {v5}, Lawh;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1722
    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    move-object v13, v2

    .line 1727
    :goto_a
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Z

    if-eqz v2, :cond_5

    if-ltz v15, :cond_5

    const/16 v2, 0x9

    if-gt v15, v2, :cond_5

    .line 1728
    add-int/lit8 v2, v15, 0x1

    rem-int/lit8 v2, v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 1729
    add-float v4, v18, v22

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->b:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v10, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1733
    :cond_5
    if-eqz v7, :cond_d

    .line 1734
    sget-object v2, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    sget v4, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->q:I

    invoke-virtual {v2, v3, v4}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Ljava/lang/CharSequence;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 1735
    if-eqz v3, :cond_7

    .line 1736
    const/4 v2, 0x0

    .line 1737
    sget v4, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->q:I

    int-to-float v4, v4

    cmpl-float v4, v20, v4

    if-lez v4, :cond_6

    .line 1738
    move/from16 v0, v20

    float-to-int v2, v0

    sget v4, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->q:I

    sub-int/2addr v2, v4

    div-int/lit8 v2, v2, 0x2

    .line 1740
    :cond_6
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->b:F

    add-float/2addr v4, v10

    add-float/2addr v4, v6

    float-to-int v4, v4

    int-to-float v5, v2

    add-float v5, v5, v18

    float-to-int v5, v5

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->b:F

    add-float/2addr v7, v10

    add-float/2addr v6, v7

    sget v7, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->q:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    float-to-int v6, v6

    int-to-float v2, v2

    add-float v2, v2, v18

    sget v7, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->q:I

    int-to-float v7, v7

    add-float/2addr v2, v7

    float-to-int v2, v2

    invoke-virtual {v3, v4, v5, v6, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1743
    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1766
    :cond_7
    :goto_b
    add-float v2, v14, v12

    .line 1767
    add-int/lit8 v3, v15, 0x1

    move-object v5, v13

    goto/16 :goto_4

    .line 1666
    :cond_8
    const/4 v2, 0x0

    move/from16 v16, v2

    goto/16 :goto_5

    .line 1670
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Landroid/graphics/Paint;

    const/4 v6, 0x0

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v8

    invoke-virtual {v2, v4, v6, v8}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v2

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->b:F

    add-float/2addr v2, v6

    add-float v2, v2, v16

    goto/16 :goto_6

    .line 1696
    :cond_a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:I

    int-to-float v2, v2

    sub-float/2addr v2, v10

    sub-float/2addr v2, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v2}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a(Ljava/lang/CharSequence;F)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1698
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:I

    int-to-float v2, v2

    sub-float/2addr v2, v10

    sub-float/2addr v2, v6

    sub-float v2, v2, v25

    float-to-int v2, v2

    int-to-float v2, v2

    .line 1700
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:I

    int-to-float v4, v4

    sub-float/2addr v4, v14

    float-to-int v4, v4

    int-to-float v4, v4

    move v11, v2

    move v12, v4

    goto/16 :goto_9

    .line 1703
    :cond_b
    if-nez v15, :cond_c

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->n:I

    const/4 v8, 0x1

    if-ne v2, v8, :cond_c

    .line 1705
    const/high16 v2, 0x4000

    mul-float v2, v2, v25

    add-float/2addr v2, v3

    const/high16 v8, 0x4000

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->h:F

    mul-float/2addr v8, v11

    add-float/2addr v2, v8

    move v11, v3

    move v12, v2

    move-object v3, v4

    goto/16 :goto_9

    .line 1708
    :cond_c
    const/high16 v2, 0x4000

    mul-float v2, v2, v25

    add-float/2addr v2, v3

    move v11, v3

    move v12, v2

    move-object v3, v4

    goto/16 :goto_9

    .line 1746
    :cond_d
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->e:I

    if-ne v15, v2, :cond_e

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->b:Z

    if-eqz v2, :cond_e

    .line 1747
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->h:I

    invoke-static {v4}, Lawh;->a(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 1749
    :cond_e
    const/4 v4, 0x0

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->b:F

    add-float/2addr v2, v10

    add-float/2addr v6, v2

    add-float v7, v18, v21

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 1751
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->i:I

    invoke-static {v3}, Lawh;->a(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1754
    if-eqz v26, :cond_7

    .line 1755
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Landroid/graphics/drawable/Drawable;

    add-float v3, v10, v11

    const/high16 v4, 0x4000

    mul-float v4, v4, v16

    const/high16 v5, 0x4040

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    float-to-int v3, v3

    move/from16 v0, v18

    float-to-int v4, v0

    add-float v5, v10, v11

    const/high16 v6, 0x3f80

    mul-float v6, v6, v16

    const/high16 v7, 0x4040

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    float-to-int v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->d:F

    add-float v6, v6, v18

    float-to-int v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1758
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_b

    .line 1777
    :cond_f
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->n:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_10

    .line 1778
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->d:I

    .line 1779
    :cond_10
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->k:I

    int-to-float v2, v2

    add-float v2, v2, v20

    add-float v2, v2, v18

    .line 1638
    add-int/lit8 p2, p2, 0x1

    move/from16 v18, v2

    goto/16 :goto_1

    .line 1785
    :cond_11
    return-void

    :cond_12
    move-object v13, v5

    goto/16 :goto_a

    :cond_13
    move v10, v2

    goto/16 :goto_8

    :cond_14
    move v6, v3

    move v3, v2

    goto/16 :goto_7

    :cond_15
    move v9, v2

    goto/16 :goto_0
.end method

.method private a(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IFFFFF)V
    .locals 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1000
    invoke-virtual {p0, p2}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1001
    if-nez v2, :cond_1

    .line 1098
    :cond_0
    :goto_0
    return-void

    .line 1005
    :cond_1
    iget-object v3, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->b:Landroid/graphics/drawable/Drawable;

    .line 1007
    iget v10, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->i:F

    .line 1009
    invoke-virtual {p0, p3}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->b(I)Z

    move-result v11

    .line 1011
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Landroid/graphics/Paint;

    iget v4, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->i:I

    invoke-static {v4}, Lawh;->a(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 1017
    add-float v1, p4, v10

    .line 1018
    if-nez p3, :cond_9

    iget v4, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->n:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_9

    .line 1020
    iget v4, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->h:F

    add-float/2addr v1, v4

    move v8, v1

    .line 1023
    :goto_1
    invoke-virtual {p0, p3}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a(I)[I

    move-result-object v1

    .line 1024
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->l()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1025
    sget-object v4, Laxr;->i:[I

    if-eq v1, v4, :cond_2

    .line 1026
    if-eqz v3, :cond_2

    .line 1027
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1028
    move/from16 v0, p4

    float-to-int v1, v0

    move/from16 v0, p5

    float-to-int v4, v0

    add-float v5, p4, p6

    float-to-int v5, v5

    add-float v6, p5, p7

    float-to-int v6, v6

    invoke-virtual {v3, v1, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1031
    invoke-static {v3}, Lawh;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1032
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1046
    :cond_2
    :goto_2
    invoke-virtual {p0, p3}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->c(I)Z

    move-result v1

    .line 1047
    if-eqz v1, :cond_5

    .line 1048
    sget-object v1, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    sget v3, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->q:I

    invoke-virtual {v1, v2, v3}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Ljava/lang/CharSequence;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 1049
    if-eqz v3, :cond_5

    .line 1050
    const/4 v1, 0x0

    .line 1051
    sget v2, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->q:I

    int-to-float v2, v2

    cmpl-float v2, p7, v2

    if-lez v2, :cond_3

    .line 1052
    move/from16 v0, p7

    float-to-int v1, v0

    sget v2, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->q:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 1054
    :cond_3
    float-to-int v2, v8

    int-to-float v4, v1

    add-float v4, v4, p5

    float-to-int v4, v4

    sget v5, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->q:I

    int-to-float v5, v5

    add-float/2addr v5, v8

    float-to-int v5, v5

    int-to-float v1, v1

    add-float v1, v1, p5

    sget v6, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->q:I

    int-to-float v6, v6

    add-float/2addr v1, v6

    float-to-int v1, v1

    invoke-virtual {v3, v2, v4, v5, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1057
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    .line 1036
    :cond_4
    if-eqz v3, :cond_2

    .line 1037
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1038
    move/from16 v0, p4

    float-to-int v1, v0

    move/from16 v0, p5

    float-to-int v4, v0

    add-float v5, p4, p6

    float-to-int v5, v5

    add-float v6, p5, p7

    float-to-int v6, v6

    invoke-virtual {v3, v1, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1041
    invoke-static {v3}, Lawh;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1042
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_2

    .line 1062
    :cond_5
    const/4 v1, 0x0

    .line 1063
    iget v3, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->e:I

    if-ne p3, v3, :cond_8

    iget-boolean v3, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->b:Z

    if-eqz v3, :cond_8

    .line 1064
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Landroid/graphics/Paint;

    iget v3, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->h:I

    invoke-static {v3}, Lawh;->a(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1066
    const/4 v1, 0x1

    move v9, v1

    .line 1080
    :goto_3
    const/4 v3, 0x0

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    float-to-int v1, v8

    int-to-float v5, v1

    add-float v1, p5, p8

    float-to-int v1, v1

    int-to-float v6, v1

    iget-object v7, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 1082
    if-eqz v9, :cond_6

    .line 1083
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 1084
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Landroid/graphics/Paint;

    iget v3, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->i:I

    invoke-static {v3}, Lawh;->a(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1088
    :cond_6
    if-eqz v11, :cond_0

    .line 1089
    if-eqz v11, :cond_7

    iget v1, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->c:F

    .line 1090
    :goto_4
    iget-object v3, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-virtual {v3, v2, v4, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v2

    add-float/2addr v2, v1

    .line 1092
    iget-object v3, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Landroid/graphics/drawable/Drawable;

    add-float v4, v8, v2

    sub-float v1, v4, v1

    const/high16 v4, 0x4000

    div-float v4, v10, v4

    add-float/2addr v1, v4

    float-to-int v1, v1

    move/from16 v0, p5

    float-to-int v4, v0

    add-float/2addr v2, v8

    const/high16 v5, 0x4000

    div-float v5, v10, v5

    add-float/2addr v2, v5

    float-to-int v2, v2

    iget v5, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->d:F

    add-float v5, v5, p5

    float-to-int v5, v5

    invoke-virtual {v3, v1, v4, v2, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1096
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    .line 1089
    :cond_7
    const/4 v1, 0x0

    goto :goto_4

    :cond_8
    move v9, v1

    goto :goto_3

    :cond_9
    move v8, v1

    goto/16 :goto_1
.end method

.method private a(Laor;)V
    .locals 1
    .parameter

    .prologue
    .line 496
    if-nez p1, :cond_0

    .line 503
    :goto_0
    return-void

    .line 498
    :cond_0
    iput-object p1, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Laor;

    .line 499
    const/4 v0, -0x1

    iput v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->g:I

    .line 502
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Laom;

    invoke-virtual {v0}, Laom;->a()Z

    goto :goto_0
.end method

.method private b(II)I
    .locals 6
    .parameter
    .parameter

    .prologue
    const v2, 0x7fffffff

    .line 1229
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 1319
    :cond_0
    :goto_0
    return v2

    .line 1234
    :cond_1
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->o:Z

    if-eqz v0, :cond_4

    .line 1235
    iget v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->r:I

    move v1, v0

    :goto_1
    iget v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->s:I

    if-gt v1, v0, :cond_6

    .line 1236
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    .line 1237
    iget v3, v0, Landroid/graphics/RectF;->left:F

    int-to-float v4, p1

    cmpg-float v3, v3, v4

    if-gez v3, :cond_3

    iget v3, v0, Landroid/graphics/RectF;->right:F

    int-to-float v4, p1

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    iget v3, v0, Landroid/graphics/RectF;->top:F

    int-to-float v4, p2

    cmpg-float v3, v3, v4

    if-gez v3, :cond_3

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    int-to-float v3, p2

    cmpl-float v0, v0, v3

    if-lez v0, :cond_3

    :cond_2
    :goto_2
    move v2, v1

    .line 1319
    goto :goto_0

    .line 1235
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 1244
    :cond_4
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Laor;

    iget v1, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->c:I

    invoke-virtual {v0, v1}, Laor;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1252
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Laor;

    iget-object v0, v0, Laor;->a:Ljava/util/Vector;

    iget v1, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->c:I

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1253
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Laor;

    iget-object v0, v0, Laor;->a:Ljava/util/Vector;

    iget v3, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->c:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v3, v0, v1

    .line 1254
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v0, v3, :cond_0

    .line 1260
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v3, :cond_6

    .line 1261
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    .line 1262
    iget v4, v0, Landroid/graphics/RectF;->left:F

    int-to-float v5, p1

    cmpg-float v4, v4, v5

    if-gez v4, :cond_5

    iget v4, v0, Landroid/graphics/RectF;->right:F

    int-to-float v5, p1

    cmpl-float v4, v4, v5

    if-lez v4, :cond_5

    iget v4, v0, Landroid/graphics/RectF;->top:F

    int-to-float v5, p2

    cmpg-float v4, v4, v5

    if-gez v4, :cond_5

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    int-to-float v4, p2

    cmpl-float v0, v0, v4

    if-gtz v0, :cond_2

    .line 1260
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    move v1, v2

    goto :goto_2
.end method

.method private b(Landroid/graphics/Canvas;)V
    .locals 12
    .parameter

    .prologue
    .line 848
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 849
    iget v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->t:I

    .line 850
    iget v1, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->b:I

    add-int/lit8 v2, v0, -0x1

    iget v3, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->k:I

    mul-int/2addr v2, v3

    sub-int/2addr v1, v2

    div-int v0, v1, v0

    int-to-float v7, v0

    .line 853
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Landroid/graphics/Paint$FontMetricsInt;

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    sub-float v0, v7, v0

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    int-to-float v1, v1

    sub-float v8, v0, v1

    .line 856
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->getPaddingTop()I

    move-result v0

    int-to-float v5, v0

    .line 858
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Laor;

    invoke-virtual {v0}, Laor;->b()I

    move-result v9

    .line 860
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Laor;

    iget v0, v0, Laor;->a:I

    if-le v9, v0, :cond_1

    .line 995
    :cond_0
    :goto_0
    return-void

    .line 863
    :cond_1
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->b:Landroid/graphics/drawable/Drawable;

    .line 865
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Landroid/graphics/Paint;

    iget v1, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->i:I

    invoke-static {v1}, Lawh;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 869
    iget v10, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->i:F

    .line 870
    const/4 v0, 0x0

    iput v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->r:I

    .line 871
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->getPaddingLeft()I

    move-result v0

    int-to-float v4, v0

    .line 875
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v9, :cond_5

    .line 876
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Laor;

    invoke-virtual {v0, v3}, Laor;->a(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 877
    if-nez v2, :cond_3

    .line 875
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 884
    :cond_3
    invoke-virtual {p0, v3}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->c(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 885
    sget v0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->q:I

    int-to-float v0, v0

    .line 895
    :goto_2
    add-float v1, v4, v10

    .line 898
    if-nez v3, :cond_9

    iget v6, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->n:I

    const/4 v11, 0x1

    if-ne v6, v11, :cond_9

    .line 900
    iget v6, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->h:F

    add-float/2addr v1, v6

    .line 901
    const/high16 v1, 0x4000

    mul-float/2addr v1, v10

    add-float/2addr v0, v1

    const/high16 v1, 0x4000

    iget v6, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->h:F

    mul-float/2addr v1, v6

    add-float v6, v0, v1

    .line 908
    :goto_3
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-le v0, v3, :cond_a

    .line 909
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    add-float v1, v4, v6

    add-float v11, v5, v7

    invoke-virtual {v0, v4, v5, v1, v11}, Landroid/graphics/RectF;->set(FFFF)V

    :goto_4
    move-object v0, p0

    move-object v1, p1

    .line 917
    invoke-direct/range {v0 .. v8}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IFFFFF)V

    .line 972
    iget v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->n:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 973
    iput v3, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->d:I

    .line 975
    :cond_4
    add-float/2addr v4, v6

    .line 976
    iput v3, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->s:I

    .line 977
    iget v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:I

    int-to-float v0, v0

    cmpl-float v0, v4, v0

    if-lez v0, :cond_2

    .line 982
    :cond_5
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 983
    sget-object v0, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a()I

    move-result v0

    invoke-static {v0}, Lcom/sohu/inputmethod/engine/IMEInterface;->isEnglishIME(I)Z

    move-result v0

    if-nez v0, :cond_b

    const/4 v0, 0x1

    if-le v9, v0, :cond_6

    iget v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:I

    int-to-float v0, v0

    cmpg-float v0, v4, v0

    if-gez v0, :cond_b

    .line 985
    :cond_6
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Landroid/view/View;

    check-cast v0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 986
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Landroid/view/View;

    check-cast v0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->setButtonMoreEnabled(Z)V

    goto/16 :goto_0

    .line 887
    :cond_7
    invoke-virtual {p0, v3}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->b(I)Z

    move-result v0

    .line 888
    if-eqz v0, :cond_8

    iget v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->c:F

    .line 889
    :goto_5
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Landroid/graphics/Paint;

    const/4 v6, 0x0

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v11

    invoke-virtual {v1, v2, v6, v11}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v1

    add-float/2addr v0, v1

    goto/16 :goto_2

    .line 888
    :cond_8
    const/4 v0, 0x0

    goto :goto_5

    .line 904
    :cond_9
    const/high16 v1, 0x4000

    mul-float/2addr v1, v10

    add-float v6, v0, v1

    goto :goto_3

    .line 912
    :cond_a
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Ljava/util/Vector;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 913
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    add-float v1, v4, v6

    add-float v11, v5, v7

    invoke-virtual {v0, v4, v5, v1, v11}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_4

    .line 988
    :cond_b
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Landroid/view/View;

    check-cast v0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 989
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Landroid/view/View;

    check-cast v0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->setButtonMoreEnabled(Z)V

    goto/16 :goto_0
.end method

.method private b(IZ)Z
    .locals 13
    .parameter
    .parameter

    .prologue
    const/high16 v12, 0x4000

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v11, 0x1

    .line 1796
    iput v3, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->g:F

    .line 1798
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Laor;

    invoke-virtual {v0}, Laor;->b()I

    move-result v8

    .line 1801
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Laor;

    iget-object v0, v0, Laor;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v2, p1, 0x1

    if-le v0, v2, :cond_0

    .line 1881
    :goto_0
    return v11

    .line 1804
    :cond_0
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Laor;

    iget-object v0, v0, Laor;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v7, v0

    .line 1807
    :goto_1
    if-gt v7, p1, :cond_a

    .line 1808
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Laor;

    iget-object v0, v0, Laor;->a:Ljava/util/Vector;

    invoke-virtual {v0, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v2, v3

    move v4, v1

    move v5, v0

    move v0, v1

    .line 1818
    :goto_2
    iget v6, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->t:I

    if-ge v0, v6, :cond_5

    .line 1819
    :cond_1
    iget v6, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:I

    int-to-float v6, v6

    cmpg-float v6, v2, v6

    if-gez v6, :cond_4

    add-int v6, v5, v4

    if-ge v6, v8, :cond_4

    .line 1820
    add-int v6, v5, v4

    .line 1821
    iget-object v9, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Laor;

    invoke-virtual {v9, v6}, Laor;->a(I)Ljava/lang/CharSequence;

    move-result-object v9

    .line 1822
    invoke-virtual {p0, v9, v6}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a(Ljava/lang/CharSequence;I)F

    move-result v6

    .line 1824
    if-nez v4, :cond_2

    iget v9, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->n:I

    if-ne v9, v11, :cond_2

    .line 1826
    iget v9, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->h:F

    mul-float/2addr v9, v12

    add-float/2addr v6, v9

    .line 1830
    :cond_2
    add-float v9, v2, v6

    iget v10, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:I

    int-to-float v10, v10

    cmpg-float v9, v9, v10

    if-ltz v9, :cond_3

    if-nez v4, :cond_4

    .line 1831
    :cond_3
    iget v9, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->j:I

    int-to-float v9, v9

    add-float/2addr v6, v9

    add-float/2addr v2, v6

    .line 1833
    add-int/lit8 v4, v4, 0x1

    .line 1837
    iget-boolean v6, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Z

    if-eqz v6, :cond_1

    const/16 v6, 0x9

    if-ne v4, v6, :cond_1

    .line 1842
    :cond_4
    if-nez v4, :cond_6

    .line 1807
    :cond_5
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_1

    .line 1845
    :cond_6
    add-int/2addr v5, v4

    .line 1846
    iget-object v6, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Laor;

    iget-object v6, v6, Laor;->a:Ljava/util/Vector;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1847
    if-eqz p2, :cond_9

    .line 1848
    iget v6, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:I

    int-to-float v6, v6

    sub-float/2addr v6, v2

    int-to-float v9, v4

    div-float/2addr v6, v9

    div-float/2addr v6, v12

    .line 1849
    if-ne v4, v11, :cond_8

    move v6, v3

    .line 1858
    :cond_7
    :goto_3
    iput v6, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->g:F

    .line 1860
    iget-object v6, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Laor;

    iget-object v6, v6, Laor;->b:Ljava/util/Vector;

    iget v9, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->g:F

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1818
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1851
    :cond_8
    if-lt v5, v8, :cond_7

    .line 1853
    iget v9, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->g:F

    cmpg-float v9, v9, v6

    if-gtz v9, :cond_7

    .line 1854
    iget v6, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->g:F

    goto :goto_3

    .line 1862
    :cond_9
    iput v3, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->g:F

    goto :goto_4

    .line 1870
    :cond_a
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Landroid/view/View;

    if-eqz v0, :cond_c

    .line 1871
    if-le v8, v11, :cond_b

    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Laor;

    iget-object v0, v0, Laor;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_d

    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Laor;

    iget-object v0, v0, Laor;->a:Ljava/util/Vector;

    invoke-virtual {v0, v11}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v8, :cond_d

    .line 1872
    :cond_b
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Landroid/view/View;

    check-cast v0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->b()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1873
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Landroid/view/View;

    check-cast v0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->setButtonMoreEnabled(Z)V

    .line 1880
    :cond_c
    :goto_5
    iput p1, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->g:I

    goto/16 :goto_0

    .line 1876
    :cond_d
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Landroid/view/View;

    check-cast v0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->b()Z

    move-result v0

    if-nez v0, :cond_c

    .line 1877
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Landroid/view/View;

    check-cast v0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;

    invoke-virtual {v0, v11}, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->setButtonMoreEnabled(Z)V

    goto :goto_5
.end method

.method private c(Landroid/graphics/Canvas;)V
    .locals 13
    .parameter

    .prologue
    .line 1102
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->o:Z

    if-nez v0, :cond_1

    .line 1225
    :cond_0
    :goto_0
    return-void

    .line 1105
    :cond_1
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Laor;

    invoke-virtual {v0}, Laor;->b()I

    move-result v9

    .line 1106
    iget v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->r:I

    if-ltz v0, :cond_2

    iget v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->s:I

    if-le v0, v9, :cond_3

    .line 1107
    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->r:I

    .line 1109
    :cond_3
    iget v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->s:I

    if-lt v0, v9, :cond_4

    .line 1110
    add-int/lit8 v0, v9, -0x1

    iput v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->s:I

    .line 1113
    :cond_4
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v9, v0, :cond_0

    .line 1126
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->b:Landroid/graphics/Rect;

    iget v10, v0, Landroid/graphics/Rect;->left:I

    .line 1127
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->b:Landroid/graphics/Rect;

    iget v11, v0, Landroid/graphics/Rect;->right:I

    .line 1128
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->c:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 1129
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->c:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    .line 1131
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->getPaddingTop()I

    move-result v1

    int-to-float v5, v1

    .line 1136
    iget v1, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->t:I

    .line 1137
    iget v2, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->b:I

    add-int/lit8 v3, v1, -0x1

    iget v4, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->k:I

    mul-int/2addr v3, v4

    sub-int/2addr v2, v3

    div-int v1, v2, v1

    int-to-float v7, v1

    .line 1140
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Landroid/graphics/Paint$FontMetricsInt;

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    sub-float v1, v7, v1

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Landroid/graphics/Paint$FontMetricsInt;

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->top:I

    int-to-float v2, v2

    sub-float v8, v1, v2

    .line 1144
    if-le v10, v0, :cond_9

    .line 1145
    iget v3, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->r:I

    :goto_1
    if-ge v3, v9, :cond_0

    .line 1146
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->b:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 1147
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->b:Ljava/util/Vector;

    add-int/lit8 v1, v3, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->b:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sub-float v6, v1, v0

    .line 1149
    add-float v0, v4, v6

    int-to-float v1, v10

    cmpg-float v0, v0, v1

    if-gez v0, :cond_6

    .line 1150
    iget v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->r:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->r:I

    .line 1151
    iget v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->r:I

    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Laor;

    iget v1, v1, Laor;->a:I

    sub-int v1, v9, v1

    if-ne v0, v1, :cond_5

    .line 1153
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->p()Z

    .line 1145
    :cond_5
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1159
    :cond_6
    add-int/lit8 v0, v9, -0x1

    if-ne v3, v0, :cond_7

    .line 1160
    iput v3, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->s:I

    .line 1164
    :cond_7
    int-to-float v0, v11

    cmpl-float v0, v4, v0

    if-lez v0, :cond_8

    .line 1165
    add-int/lit8 v0, v3, -0x1

    iput v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->s:I

    goto/16 :goto_0

    .line 1169
    :cond_8
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Laor;

    invoke-virtual {v0, v3}, Laor;->a(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1171
    if-eqz v2, :cond_5

    move-object v0, p0

    move-object v1, p1

    .line 1174
    invoke-direct/range {v0 .. v8}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IFFFFF)V

    goto :goto_2

    .line 1178
    :cond_9
    if-ge v10, v0, :cond_f

    .line 1180
    iget v12, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->s:I

    .line 1181
    iget v3, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->s:I

    :goto_3
    if-ltz v3, :cond_0

    .line 1182
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->b:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 1183
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->b:Ljava/util/Vector;

    add-int/lit8 v1, v3, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->b:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sub-float v6, v1, v0

    .line 1185
    int-to-float v0, v11

    cmpl-float v0, v4, v0

    if-lez v0, :cond_b

    .line 1186
    iget v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->s:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->s:I

    .line 1181
    :cond_a
    :goto_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    .line 1190
    :cond_b
    add-float v0, v4, v6

    int-to-float v1, v10

    cmpg-float v0, v0, v1

    if-gez v0, :cond_c

    .line 1191
    add-int/lit8 v0, v3, 0x1

    iput v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->r:I

    .line 1192
    iget v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->r:I

    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Laor;

    iget-object v1, v1, Laor;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int v1, v9, v1

    add-int/lit8 v1, v1, -0x1

    if-gt v0, v1, :cond_0

    .line 1195
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->q()Z

    goto/16 :goto_0

    .line 1200
    :cond_c
    if-nez v3, :cond_d

    .line 1201
    iput v3, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->r:I

    .line 1203
    :cond_d
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Laor;

    invoke-virtual {v0, v3}, Laor;->a(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1204
    if-nez v2, :cond_e

    .line 1205
    if-ne v3, v12, :cond_a

    .line 1206
    iget v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->s:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->s:I

    goto :goto_4

    :cond_e
    move-object v0, p0

    move-object v1, p1

    .line 1211
    invoke-direct/range {v0 .. v8}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IFFFFF)V

    goto :goto_4

    .line 1213
    :cond_f
    if-ne v10, v0, :cond_0

    .line 1214
    iget v3, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->r:I

    :goto_5
    iget v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->s:I

    if-gt v3, v0, :cond_0

    .line 1216
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->b:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 1217
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Laor;

    invoke-virtual {v0, v3}, Laor;->a(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1218
    if-nez v2, :cond_10

    .line 1214
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 1220
    :cond_10
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->b:Ljava/util/Vector;

    add-int/lit8 v1, v3, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->b:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sub-float v6, v1, v0

    move-object v0, p0

    move-object v1, p1

    .line 1222
    invoke-direct/range {v0 .. v8}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IFFFFF)V

    goto :goto_6
.end method

.method private g(I)Z
    .locals 1
    .parameter

    .prologue
    .line 1788
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->b(IZ)Z

    move-result v0

    return v0
.end method

.method private h(I)Z
    .locals 1
    .parameter

    .prologue
    .line 1792
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->b(IZ)Z

    move-result v0

    return v0
.end method

.method private i(I)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 1971
    iget v1, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->g:I

    if-ne p1, v1, :cond_0

    .line 1988
    :goto_0
    return v0

    .line 1974
    :cond_0
    iget v1, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:I

    if-lez v1, :cond_1

    iget v1, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->b:I

    if-gtz v1, :cond_2

    .line 1975
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1977
    :cond_2
    iget v1, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->t:I

    if-gtz v1, :cond_3

    .line 1978
    iput v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->t:I

    .line 1980
    :cond_3
    iget v1, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->m:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1982
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->h(I)Z

    move-result v0

    goto :goto_0

    .line 1984
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->g(I)Z

    move-result v0

    goto :goto_0

    .line 1980
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private q()V
    .locals 3

    .prologue
    .line 706
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->b:Z

    if-eqz v0, :cond_1

    .line 708
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->o:Z

    if-eqz v0, :cond_2

    .line 709
    iget v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->e:I

    .line 713
    :goto_0
    iget v1, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->f:I

    if-eq v1, v0, :cond_1

    .line 714
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Laoq;

    if-eqz v1, :cond_0

    .line 715
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Laoq;

    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Laor;

    invoke-virtual {v2, v0}, Laor;->a(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Laoq;->b(ILjava/lang/CharSequence;)Z

    .line 717
    :cond_0
    iput v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->f:I

    .line 720
    :cond_1
    return-void

    .line 711
    :cond_2
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->f()I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public a(II)I
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1921
    iget v1, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->l:I

    .line 1922
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Laor;

    iget-object v0, v0, Laor;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 1923
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Laor;

    iget-object v0, v0, Laor;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 p1, v0, -0x1

    .line 1924
    :cond_0
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Laor;

    invoke-virtual {v0}, Laor;->b()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Laor;

    iget-object v0, v0, Laor;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v0, v2, v0

    .line 1927
    if-le p2, v0, :cond_1

    .line 1928
    const/4 p2, 0x0

    :cond_1
    move v0, v1

    .line 1936
    :goto_0
    invoke-direct {p0, p1}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->i(I)Z

    move-result v1

    .line 1937
    if-nez v1, :cond_3

    .line 1940
    const/4 v0, -0x1

    iput v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->g:I

    .line 1967
    :cond_2
    :goto_1
    return p2

    .line 1945
    :cond_3
    add-int v1, p1, v0

    .line 1949
    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Laor;

    iget-object v2, v2, Laor;->a:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v1, v2, :cond_6

    .line 1950
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Laor;

    iget-object v0, v0, Laor;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 1951
    sub-int v1, v0, p1

    .line 1952
    if-eq v0, p1, :cond_2

    .line 1955
    :goto_2
    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Laor;

    iget-object v2, v2, Laor;->a:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Laor;

    iget-object v0, v0, Laor;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v0, v2, v0

    .line 1959
    if-lt p2, v0, :cond_4

    if-nez v0, :cond_5

    .line 1965
    :cond_4
    iput p1, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->g:I

    goto :goto_1

    .line 1961
    :cond_5
    sub-int/2addr p2, v0

    .line 1962
    add-int/2addr p1, v1

    move v0, v1

    .line 1963
    goto :goto_0

    :cond_6
    move v3, v1

    move v1, v0

    move v0, v3

    goto :goto_2
.end method

.method public a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .parameter

    .prologue
    .line 87
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gtz v0, :cond_2

    .line 88
    :cond_0
    const/4 p1, 0x0

    .line 93
    :cond_1
    :goto_0
    return-object p1

    .line 89
    :cond_2
    iget v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->n:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_1

    .line 91
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Landroid/content/Context;

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

    .line 697
    iput-boolean v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->c:Z

    .line 698
    iput p1, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->e:I

    .line 699
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->b()V

    .line 701
    iput-boolean v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->b:Z

    .line 702
    invoke-direct {p0}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->q()V

    .line 703
    return-void
.end method

.method public a(II)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v5, -0x1

    const/4 v1, 0x0

    .line 621
    add-int v6, p1, p2

    .line 623
    iget v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->e:I

    move v2, v1

    move v3, v0

    move v0, v1

    .line 627
    :cond_0
    iget-object v7, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    if-le v7, v3, :cond_1

    .line 629
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    float-to-int v7, v0

    .line 630
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    float-to-int v0, v0

    .line 631
    invoke-direct {p0, p1, v6, v7, v0}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a(IIII)I

    move-result v0

    .line 633
    sparse-switch v0, :sswitch_data_0

    .line 662
    :goto_0
    if-nez v0, :cond_0

    .line 663
    :cond_1
    if-nez v0, :cond_2

    .line 664
    iput v3, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->e:I

    .line 666
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->b()V

    .line 668
    :cond_2
    return-void

    .line 635
    :sswitch_0
    add-int/lit8 v3, v3, 0x1

    .line 636
    goto :goto_0

    .line 638
    :sswitch_1
    add-int/lit8 v3, v3, -0x1

    .line 639
    goto :goto_0

    .line 641
    :sswitch_2
    if-ne v2, v5, :cond_3

    .line 642
    add-int/lit8 v3, v3, 0x1

    move v0, v1

    .line 644
    goto :goto_0

    .line 647
    :cond_3
    add-int/lit8 v3, v3, 0x1

    move v2, v4

    .line 648
    goto :goto_0

    .line 650
    :sswitch_3
    if-ne v2, v4, :cond_4

    .line 651
    add-int/lit8 v3, v3, -0x1

    move v0, v1

    .line 653
    goto :goto_0

    .line 656
    :cond_4
    add-int/lit8 v3, v3, -0x1

    move v2, v5

    .line 657
    goto :goto_0

    .line 633
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        -0x1 -> :sswitch_3
        0x1 -> :sswitch_2
        0x7fffffff -> :sswitch_0
    .end sparse-switch
.end method

.method protected a(IIZ)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 523
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Laor;

    if-nez v0, :cond_0

    .line 543
    :goto_0
    return-void

    .line 525
    :cond_0
    iput p2, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->e:I

    .line 526
    const/4 v0, -0x1

    iput v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->p:I

    .line 528
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->l()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->e:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->e:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_4

    .line 529
    :cond_1
    iput-boolean v2, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->c:Z

    .line 533
    :goto_1
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Laor;

    invoke-virtual {v0, p1}, Laor;->b(I)I

    move-result v0

    .line 534
    if-gt v0, p2, :cond_2

    .line 535
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->e:I

    .line 536
    :cond_2
    iget v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->e:I

    if-gez v0, :cond_3

    .line 537
    iput v2, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->e:I

    .line 539
    :cond_3
    iput p1, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->c:I

    .line 540
    iput-boolean p3, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->b:Z

    .line 542
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->b()V

    goto :goto_0

    .line 531
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->c:Z

    goto :goto_1
.end method

.method protected a(Landroid/graphics/Bitmap;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1992
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Landroid/graphics/Canvas;

    if-nez v0, :cond_1

    .line 2025
    :cond_0
    :goto_0
    return-void

    .line 1994
    :cond_1
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Landroid/graphics/Canvas;

    .line 1995
    invoke-virtual {v0, p1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1996
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Landroid/graphics/Rect;

    sget-object v2, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 1997
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 2007
    iget v1, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->c:I

    iget v2, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->e:I

    invoke-virtual {p0, v1, v2}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a(II)I

    move-result v1

    iput v1, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->e:I

    .line 2008
    iget v1, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->g:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 2012
    iget v1, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->g:I

    iput v1, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->c:I

    .line 2013
    invoke-direct {p0}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->q()V

    .line 2015
    iget v1, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->m:I

    packed-switch v1, :pswitch_data_0

    .line 2023
    :goto_1
    iput-boolean v3, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->q:Z

    .line 2024
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_0

    .line 2018
    :pswitch_0
    iget v1, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->c:I

    invoke-direct {p0, v0, v1}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a(Landroid/graphics/Canvas;I)V

    goto :goto_1

    .line 2015
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected a(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter

    .prologue
    .line 794
    if-nez p1, :cond_0

    .line 824
    :goto_0
    return-void

    .line 807
    :cond_0
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->n:Z

    if-eqz v0, :cond_1

    .line 808
    iget v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->m:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 811
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->c(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 816
    :cond_1
    iget v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->m:I

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 819
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->b(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 808
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 816
    :pswitch_data_1
    .packed-switch 0x1
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
    .line 729
    if-nez p1, :cond_0

    .line 748
    :goto_0
    return-void

    .line 735
    :cond_0
    invoke-direct {p0, p1}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a(Laor;)V

    .line 736
    iput p2, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->e:I

    .line 738
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->o:Z

    if-eqz v0, :cond_1

    .line 739
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->o()V

    .line 743
    :goto_1
    if-eqz p3, :cond_2

    const/4 v0, 0x0

    :goto_2
    iput v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->f:I

    .line 744
    invoke-direct {p0, p2, p3}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a(IZ)V

    .line 746
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->b()V

    goto :goto_0

    .line 741
    :cond_1
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Lawk;

    invoke-virtual {v0}, Lawk;->c()V

    goto :goto_1

    .line 743
    :cond_2
    const/4 v0, -0x1

    goto :goto_2
.end method

.method public a(Laor;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 724
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a(Laor;IZ)V

    .line 725
    return-void
.end method

.method protected a(IZ)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 553
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Laor;

    if-nez v0, :cond_1

    .line 577
    :cond_0
    :goto_0
    return v1

    .line 556
    :cond_1
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Laor;

    invoke-virtual {v0}, Laor;->b()I

    move-result v0

    .line 557
    if-gt v0, p1, :cond_6

    .line 558
    add-int/lit8 v0, v0, -0x1

    .line 559
    :goto_1
    if-gez v0, :cond_2

    move v0, v1

    .line 562
    :cond_2
    iget v3, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->e:I

    if-ne v3, v0, :cond_3

    move v1, v2

    .line 563
    goto :goto_0

    .line 565
    :cond_3
    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->e(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 566
    iget v3, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->e:I

    if-ltz v3, :cond_4

    iget v3, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->e:I

    const v4, 0x7fffffff

    if-eq v3, v4, :cond_4

    if-nez p2, :cond_5

    .line 567
    :cond_4
    iput-boolean v1, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->c:Z

    .line 570
    :goto_2
    iput v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->e:I

    .line 571
    const/4 v0, -0x1

    iput v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->p:I

    .line 573
    iput-boolean p2, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->b:Z

    .line 574
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->b()V

    move v1, v2

    .line 575
    goto :goto_0

    .line 569
    :cond_5
    iput-boolean v2, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->c:Z

    goto :goto_2

    :cond_6
    move v0, p1

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

    .line 1887
    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Laor;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->o:Z

    if-eqz v2, :cond_2

    :cond_0
    move v0, v1

    .line 1908
    :cond_1
    :goto_0
    return v0

    .line 1889
    :cond_2
    iget v2, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->c:I

    if-eq p4, v2, :cond_1

    .line 1891
    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Laor;

    invoke-virtual {v2, p4, v0}, Laor;->a(IZ)Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    .line 1892
    goto :goto_0

    .line 1894
    :cond_3
    iget v1, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->e:I

    .line 1904
    invoke-virtual {p0, p4, v1, p2}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a(IIZ)V

    .line 1906
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Lawk;

    invoke-virtual {v1, p1, p3, p0}, Lawk;->a(ZZLandroid/view/animation/Animation$AnimationListener;)V

    .line 1907
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Lawk;

    invoke-virtual {v1}, Lawk;->b()V

    goto :goto_0
.end method

.method public b()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 752
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->o:Z

    if-nez v0, :cond_0

    .line 753
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->union(IIII)V

    .line 754
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->q:Z

    .line 756
    :cond_0
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->invalidate()V

    .line 757
    return-void
.end method

.method public b(II)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 1331
    .line 1332
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->d:Z

    if-eqz v0, :cond_0

    .line 1333
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a()V

    .line 1389
    :goto_0
    return-void

    .line 1337
    :cond_0
    iget v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->C:I

    iget v1, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->D:I

    invoke-direct {p0, v0, v1}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->b(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 1339
    const v0, 0x7fffffff

    if-eq v1, v0, :cond_3

    .line 1342
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->o:Z

    if-nez v0, :cond_4

    .line 1343
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Laor;

    iget-object v0, v0, Laor;->a:Ljava/util/Vector;

    iget v2, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->c:I

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v1

    .line 1345
    :goto_1
    iget-boolean v2, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->j:Z

    if-eqz v2, :cond_1

    .line 1346
    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Laom;

    const-wide/16 v3, 0x0

    iget v5, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->c:I

    invoke-virtual {v2, v3, v4, v5, v1}, Laom;->a(JII)V

    .line 1349
    :cond_1
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Laoq;

    if-eqz v1, :cond_2

    .line 1360
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Laoq;

    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Laor;

    invoke-virtual {v2, v0}, Laor;->a(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v1, v0, v2, p1, p2}, Laoq;->a(ILjava/lang/CharSequence;II)Z

    move-result v0

    .line 1363
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v1

    iget v2, v1, Lamo;->ae:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lamo;->ae:I

    .line 1364
    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->j:Z

    if-nez v0, :cond_2

    .line 1365
    iput-boolean v6, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->c:Z

    .line 1386
    :cond_2
    :goto_2
    const/4 v0, -0x1

    iput v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->p:I

    .line 1387
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Laxn;

    iget v0, v0, Laxn;->f:I

    .line 1388
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Lapn;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lapn;->a(J)V

    goto :goto_0

    .line 1371
    :cond_3
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Laor;

    invoke-virtual {v0}, Laor;->b()I

    move-result v0

    .line 1372
    iget v1, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->e:I

    if-ltz v1, :cond_2

    iget v1, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->e:I

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Laoq;

    if-eqz v0, :cond_2

    .line 1375
    iget v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->C:I

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->f(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1376
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Laoq;

    iget v1, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->e:I

    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Laor;

    iget v3, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->e:I

    invoke-virtual {v2, v3}, Laor;->a(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1, p2}, Laoq;->a(ILjava/lang/CharSequence;II)Z

    move-result v0

    .line 1379
    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->j:Z

    if-nez v0, :cond_2

    .line 1380
    iput-boolean v6, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->c:Z

    .line 1381
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->b()V

    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method public c()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 154
    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->b:Landroid/graphics/drawable/Drawable;

    .line 155
    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->c:Landroid/graphics/drawable/Drawable;

    .line 156
    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Landroid/view/View;

    .line 157
    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 158
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Lapn;

    invoke-virtual {v0}, Lapn;->a()V

    .line 159
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->b:Ljava/util/Vector;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->c:Ljava/util/Vector;

    if-eqz v0, :cond_1

    .line 163
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 165
    :cond_1
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->f()V

    .line 166
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

    .line 1525
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Lapn;

    invoke-virtual {v0}, Lapn;->b()V

    .line 1527
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    .line 1528
    iget v3, v0, Landroid/graphics/RectF;->right:F

    iget v5, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v5

    float-to-int v5, v3

    .line 1529
    iget v3, v0, Landroid/graphics/RectF;->bottom:F

    iget v6, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v6

    float-to-int v6, v3

    .line 1533
    iget-boolean v3, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->m:Z

    if-nez v3, :cond_3

    .line 1534
    iget-object v3, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Laor;

    iget-object v3, v3, Laor;->a:Ljava/util/Vector;

    iget v7, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->c:I

    invoke-virtual {v3, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v3, p1

    .line 1536
    :goto_0
    iget-object v7, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Laor;

    invoke-virtual {v7, v3}, Laor;->a(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1537
    invoke-virtual {p0, v3}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1538
    if-nez v3, :cond_0

    .line 1567
    :goto_1
    return-void

    .line 1544
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->c(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1545
    sget-object v7, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    sget v8, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->q:I

    invoke-virtual {v7, v3, v8}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Ljava/lang/CharSequence;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 1546
    iget-object v7, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Lapn;

    sget v8, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->q:I

    sget v9, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->q:I

    invoke-virtual {v7, v3, v8, v9}, Lapn;->a(Landroid/graphics/drawable/Drawable;II)V

    .line 1553
    :goto_2
    iget-object v3, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Lapn;

    invoke-virtual {v3, v5, v6}, Lapn;->a(II)V

    .line 1555
    iget-object v3, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->b:[I

    invoke-virtual {p0, v3}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->getLocationOnScreen([I)V

    .line 1556
    iget-object v3, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:[I

    iget-object v6, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->b:[I

    aget v6, v6, v10

    iget v7, v0, Landroid/graphics/RectF;->left:F

    iget-object v8, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Lapn;

    invoke-virtual {v8}, Lapn;->getWidth()I

    move-result v8

    sub-int v5, v8, v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float v5, v7, v5

    float-to-int v5, v5

    add-int/2addr v5, v6

    aput v5, v3, v10

    .line 1558
    iget-object v3, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:[I

    iget-object v5, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->b:[I

    aget v5, v5, v11

    iget v0, v0, Landroid/graphics/RectF;->top:F

    float-to-int v0, v0

    add-int/2addr v0, v5

    iget-object v5, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Lapn;

    invoke-virtual {v5}, Lapn;->getHeight()I

    move-result v5

    sub-int/2addr v0, v5

    aput v0, v3, v11

    .line 1561
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Lapn;

    invoke-virtual {v0}, Lapn;->dismiss()V

    .line 1562
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Lapn;

    invoke-virtual {v0}, Lapn;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1563
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Lapn;

    iget-object v3, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:[I

    invoke-virtual {v0, v1, v2, v3}, Lapn;->a(J[I)V

    goto :goto_1

    .line 1548
    :cond_1
    iget-object v7, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Lapn;

    invoke-virtual {v7, v3}, Lapn;->a(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1565
    :cond_2
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Lapn;

    iget-object v3, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:[I

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lapn;->a(J[III)V

    goto :goto_1

    :cond_3
    move v3, p1

    goto :goto_0
.end method

.method public d()V
    .locals 3

    .prologue
    .line 2247
    iget v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->C:I

    iget v1, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->D:I

    invoke-direct {p0, v0, v1}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->b(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 2248
    const v0, 0x7fffffff

    if-eq v1, v0, :cond_0

    .line 2250
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->o:Z

    if-nez v0, :cond_1

    .line 2251
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Laor;

    iget-object v0, v0, Laor;->a:Ljava/util/Vector;

    iget v2, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->c:I

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v1

    .line 2253
    :goto_0
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Laoq;

    if-eqz v1, :cond_0

    .line 2254
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Laoq;

    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Laor;

    invoke-virtual {v2, v0}, Laor;->a(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Laoq;->a(ILjava/lang/CharSequence;)Z

    move-result v0

    .line 2256
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v1

    iget v2, v1, Lamo;->ae:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lamo;->ae:I

    .line 2257
    if-eqz v0, :cond_0

    .line 2258
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->c:Z

    .line 2259
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->b()V

    .line 2260
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->d:Z

    .line 2261
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Lapn;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lapn;->a(J)V

    .line 2266
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

    .line 687
    iput-boolean v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->c:Z

    .line 688
    iput p1, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->p:I

    .line 689
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->b()V

    .line 691
    iput-boolean v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->b:Z

    .line 692
    return-void
.end method

.method public d(I)Z
    .locals 1
    .parameter

    .prologue
    .line 546
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->b:Z

    invoke-virtual {p0, p1, v0}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a(IZ)Z

    move-result v0

    return v0
.end method

.method public e(I)Z
    .locals 4
    .parameter

    .prologue
    const/high16 v3, -0x4080

    const/4 v1, 0x0

    .line 588
    if-gez p1, :cond_0

    move v0, v1

    .line 617
    :goto_0
    return v0

    .line 590
    :cond_0
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;

    .line 591
    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->b:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-gt v2, p1, :cond_2

    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-gt v2, p1, :cond_2

    .line 592
    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    iget-object v3, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Laor;

    invoke-virtual {v3}, Laor;->b()I

    move-result v3

    if-ge v2, v3, :cond_1

    if-eqz v0, :cond_1

    .line 593
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->o()Z

    move-result v2

    if-nez v2, :cond_1

    .line 594
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->setHasScrolled(Z)V

    .line 595
    invoke-virtual {v0, p1}, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->setScrollAdjust(I)V

    .line 596
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->p()Z

    move-result v0

    if-nez v0, :cond_1

    .line 597
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->requestLayout()V

    :cond_1
    move v0, v1

    .line 601
    goto :goto_0

    .line 603
    :cond_2
    if-eqz v0, :cond_5

    .line 606
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-le v1, p1, :cond_4

    .line 607
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    move v2, v1

    .line 611
    :goto_1
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-le v1, p1, :cond_3

    .line 612
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/RectF;

    iget v3, v1, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v1

    .line 613
    :cond_3
    invoke-virtual {v0, v2, v3}, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->a(FF)Z

    move-result v0

    goto :goto_0

    .line 608
    :cond_4
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->b:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-le v1, p1, :cond_6

    .line 609
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->b:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    move v2, v1

    goto :goto_1

    :cond_5
    move v0, v1

    .line 617
    goto/16 :goto_0

    :cond_6
    move v2, v3

    goto :goto_1
.end method

.method public f(I)Z
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 1392
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Ljava/util/Vector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    .line 1398
    :goto_0
    return v0

    .line 1394
    :cond_1
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    .line 1395
    int-to-float v2, p1

    iget v0, v0, Landroid/graphics/RectF;->right:F

    cmpl-float v0, v2, v0

    if-lez v0, :cond_2

    move v0, v1

    .line 1396
    goto :goto_0

    .line 1398
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 400
    iget v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->u:I

    return v0
.end method

.method public i()I
    .locals 1

    .prologue
    .line 404
    iget v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->v:I

    return v0
.end method

.method public k()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 147
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Laor;

    if-nez v1, :cond_1

    .line 149
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Laor;

    invoke-virtual {v1}, Laor;->a()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public l()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 393
    const/4 v1, 0x0

    .line 394
    iget v2, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->n:I

    if-ne v2, v0, :cond_0

    .line 396
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public m()V
    .locals 1

    .prologue
    .line 786
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->j:Z

    if-nez v0, :cond_0

    .line 787
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->b:Z

    .line 788
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->c:Z

    .line 790
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->p:I

    .line 791
    return-void
.end method

.method public m()Z
    .locals 1

    .prologue
    .line 581
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Laor;

    if-nez v0, :cond_0

    .line 582
    const/4 v0, 0x0

    .line 584
    :goto_0
    return v0

    .line 583
    :cond_0
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Laor;

    invoke-virtual {v0}, Laor;->d()V

    .line 584
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public n()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2031
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->isShown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2042
    :cond_0
    :goto_0
    return-void

    .line 2034
    :cond_1
    iget v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->e:I

    if-ltz v0, :cond_0

    .line 2035
    const/4 v0, -0x1

    iput v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->f:I

    .line 2038
    iput-boolean v1, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->b:Z

    .line 2039
    iput-boolean v1, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->c:Z

    .line 2040
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->b()V

    goto :goto_0
.end method

.method public n()Z
    .locals 1

    .prologue
    .line 2057
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->o:Z

    return v0
.end method

.method public o()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2155
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->o:Z

    if-nez v0, :cond_1

    .line 2215
    :cond_0
    :goto_0
    return-void

    .line 2157
    :cond_1
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    .line 2158
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    .line 2159
    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Laor;

    if-eqz v2, :cond_2

    .line 2160
    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->clear()V

    .line 2161
    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->b:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->clear()V

    .line 2162
    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->b:Ljava/util/Vector;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 2163
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 2164
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->c:Ljava/util/Vector;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 2169
    :cond_2
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->k:Z

    if-eqz v0, :cond_5

    .line 2170
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->setHasScrolled(Z)V

    .line 2171
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;

    .line 2172
    if-eqz v0, :cond_0

    .line 2173
    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->h()V

    .line 2174
    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->getScrollX()I

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->getScrollY()I

    move-result v1

    if-eqz v1, :cond_4

    .line 2177
    :cond_3
    invoke-virtual {v0, v3, v3}, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->scrollTo(II)V

    .line 2179
    :cond_4
    iput v3, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->r:I

    .line 2180
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Laor;

    invoke-virtual {v0}, Laor;->b()I

    move-result v0

    .line 2181
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->s:I

    .line 2183
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->o:Z

    if-eqz v0, :cond_0

    .line 2185
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->p()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2186
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->requestLayout()V

    goto :goto_0

    .line 2192
    :cond_5
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2194
    invoke-virtual {p0, v3}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->setHasScrolled(Z)V

    .line 2195
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;

    .line 2196
    if-eqz v0, :cond_8

    .line 2197
    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->h()V

    .line 2200
    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->getScrollX()I

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->getScrollY()I

    move-result v1

    if-eqz v1, :cond_7

    .line 2202
    :cond_6
    invoke-virtual {v0, v3, v3}, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->scrollTo(II)V

    .line 2204
    :cond_7
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->o:Z

    if-eqz v0, :cond_8

    .line 2205
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->y:I

    if-eq v0, v1, :cond_8

    .line 2207
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->requestLayout()V

    .line 2213
    :cond_8
    iput-boolean v3, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->s:Z

    goto/16 :goto_0
.end method

.method public o()Z
    .locals 1

    .prologue
    .line 2069
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->n:Z

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter

    .prologue
    .line 762
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Laor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Laor;

    invoke-virtual {v0}, Laor;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 763
    :cond_0
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 764
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Landroid/view/View;

    check-cast v0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 765
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Landroid/view/View;

    check-cast v0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->setButtonMoreEnabled(Z)V

    .line 782
    :cond_1
    :goto_0
    return-void

    .line 769
    :cond_2
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->o:Z

    if-eqz v0, :cond_3

    .line 770
    invoke-virtual {p0, p1}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 772
    :cond_3
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Lawk;

    if-eqz v0, :cond_1

    .line 775
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->q:Z

    if-eqz v0, :cond_4

    .line 776
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Lawk;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lawk;->a(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a(Landroid/graphics/Bitmap;)V

    .line 778
    :cond_4
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Lawk;

    invoke-virtual {v0, p1}, Lawk;->b(Landroid/graphics/Canvas;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 779
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->invalidate()V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 12
    .parameter
    .parameter

    .prologue
    .line 208
    .line 210
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 211
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 213
    iget v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:I

    if-eq v0, v2, :cond_0

    .line 214
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->getPaddingLeft()I

    move-result v0

    sub-int v0, v2, v0

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:I

    .line 217
    :cond_0
    iget v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->v:I

    if-lez v0, :cond_5

    .line 218
    iget v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->x:I

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->b:I

    .line 223
    :cond_1
    :goto_0
    iget v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->n:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    iget v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->v:I

    if-gtz v0, :cond_3

    :cond_2
    iget v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->n:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_19

    .line 225
    :cond_3
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Laor;

    if-eqz v0, :cond_17

    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->n:Z

    if-eqz v0, :cond_17

    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->o:Z

    if-eqz v0, :cond_17

    .line 227
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Laor;

    invoke-virtual {v0}, Laor;->b()I

    move-result v5

    .line 229
    if-eqz v5, :cond_4

    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_7

    .line 230
    :cond_4
    iget v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->n:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_6

    .line 231
    iget v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->x:I

    invoke-virtual {p0, v2, v0}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->setMeasuredDimension(II)V

    .line 232
    iget v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->x:I

    .line 240
    :goto_1
    iput v2, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->A:I

    .line 241
    iput v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->B:I

    .line 390
    :goto_2
    return-void

    .line 219
    :cond_5
    iget v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->b:I

    if-eq v0, v1, :cond_1

    .line 220
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->getPaddingTop()I

    move-result v0

    sub-int v0, v1, v0

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->b:I

    goto :goto_0

    .line 234
    :cond_6
    invoke-virtual {p0, v2, v1}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->setMeasuredDimension(II)V

    move v0, v1

    .line 235
    goto :goto_1

    .line 249
    :cond_7
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-le v0, v5, :cond_a

    .line 250
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->b:Ljava/util/Vector;

    invoke-virtual {v0, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 251
    iget v2, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->y:I

    int-to-float v2, v2

    cmpg-float v2, v0, v2

    if-gez v2, :cond_8

    .line 252
    iget v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->y:I

    int-to-float v0, v0

    .line 253
    :cond_8
    iget v2, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->n:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_9

    .line 254
    float-to-int v1, v0

    iget v2, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->x:I

    invoke-virtual {p0, v1, v2}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->setMeasuredDimension(II)V

    .line 255
    iget v1, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->x:I

    .line 262
    :goto_3
    float-to-int v0, v0

    .line 263
    iput v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->A:I

    .line 264
    iput v1, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->B:I

    .line 266
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->s:Z

    goto :goto_2

    .line 257
    :cond_9
    float-to-int v2, v0

    invoke-virtual {p0, v2, v1}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->setMeasuredDimension(II)V

    .line 260
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->p()V

    goto :goto_3

    .line 270
    :cond_a
    iget v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->t:I

    .line 271
    iget v2, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->b:I

    add-int/lit8 v3, v0, -0x1

    iget v4, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->k:I

    mul-int/2addr v3, v4

    sub-int/2addr v2, v3

    div-int v0, v2, v0

    int-to-float v6, v0

    .line 276
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->getPaddingTop()I

    move-result v0

    int-to-float v7, v0

    .line 277
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Laor;

    iget v2, v0, Laor;->a:I

    .line 278
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Laor;

    invoke-virtual {v0}, Laor;->a()I

    move-result v3

    .line 279
    const/4 v0, 0x0

    .line 284
    if-lt v5, v2, :cond_1a

    if-lez v3, :cond_1a

    .line 285
    sub-int v0, v5, v2

    move v2, v0

    .line 287
    :goto_4
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-le v0, v2, :cond_b

    .line 288
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->b:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 295
    :goto_5
    iget v8, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->i:F

    move v4, v2

    move v3, v0

    .line 298
    :goto_6
    if-ge v4, v5, :cond_14

    .line 299
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Laor;

    invoke-virtual {v0, v4}, Laor;->a(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 301
    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 302
    if-nez v2, :cond_c

    move v0, v3

    .line 298
    :goto_7
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v3, v0

    goto :goto_6

    .line 290
    :cond_b
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    goto :goto_5

    .line 306
    :cond_c
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v9, v4, 0x1

    if-le v0, v9, :cond_e

    .line 307
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->b:Ljava/util/Vector;

    add-int/lit8 v2, v4, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->b:Ljava/util/Vector;

    invoke-virtual {v0, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sub-float v0, v2, v0

    move v2, v0

    .line 334
    :goto_8
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-le v0, v4, :cond_12

    .line 335
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Ljava/util/Vector;

    invoke-virtual {v0, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    add-float v9, v3, v2

    add-float v10, v7, v6

    invoke-virtual {v0, v3, v7, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 343
    :cond_d
    :goto_9
    add-float v0, v3, v2

    .line 345
    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->b:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    add-int/lit8 v3, v4, 0x1

    if-le v2, v3, :cond_13

    .line 346
    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->b:Ljava/util/Vector;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    add-int/lit8 v9, v4, 0x1

    invoke-virtual {v2, v3, v9}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    goto :goto_7

    .line 311
    :cond_e
    invoke-virtual {p0, v4}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->c(I)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 312
    sget v0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->q:I

    int-to-float v0, v0

    .line 325
    :goto_a
    if-nez v4, :cond_11

    iget v2, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->n:I

    const/4 v9, 0x1

    if-ne v2, v9, :cond_11

    .line 327
    const/high16 v2, 0x4000

    mul-float/2addr v2, v8

    add-float/2addr v0, v2

    const/high16 v2, 0x4000

    iget v9, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->h:F

    mul-float/2addr v2, v9

    add-float/2addr v0, v2

    move v2, v0

    goto :goto_8

    .line 314
    :cond_f
    invoke-virtual {p0, v4}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->b(I)Z

    move-result v0

    .line 316
    if-eqz v0, :cond_10

    iget v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->c:F

    .line 318
    :goto_b
    iget-object v9, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Landroid/graphics/Paint;

    const/4 v10, 0x0

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v11

    invoke-virtual {v9, v2, v10, v11}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v2

    add-float/2addr v0, v2

    goto :goto_a

    .line 316
    :cond_10
    const/4 v0, 0x0

    goto :goto_b

    .line 330
    :cond_11
    const/high16 v2, 0x4000

    mul-float/2addr v2, v8

    add-float/2addr v0, v2

    move v2, v0

    goto :goto_8

    .line 338
    :cond_12
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Ljava/util/Vector;

    new-instance v9, Landroid/graphics/RectF;

    invoke-direct {v9}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v0, v9}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 339
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-le v0, v4, :cond_d

    .line 340
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Ljava/util/Vector;

    invoke-virtual {v0, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    add-float v9, v3, v2

    add-float v10, v7, v6

    invoke-virtual {v0, v3, v7, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_9

    .line 348
    :cond_13
    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->b:Ljava/util/Vector;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 352
    :cond_14
    iget v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->y:I

    int-to-float v0, v0

    cmpg-float v0, v3, v0

    if-gez v0, :cond_15

    .line 353
    iget v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->y:I

    int-to-float v3, v0

    .line 355
    :cond_15
    iget v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->n:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_16

    .line 356
    float-to-int v0, v3

    iget v1, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->x:I

    invoke-virtual {p0, v0, v1}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->setMeasuredDimension(II)V

    .line 357
    iget v1, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->x:I

    .line 362
    :goto_c
    float-to-int v0, v3

    .line 385
    :goto_d
    iput v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->A:I

    .line 386
    iput v1, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->B:I

    .line 389
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->s:Z

    goto/16 :goto_2

    .line 359
    :cond_16
    float-to-int v0, v3

    invoke-virtual {p0, v0, v1}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->setMeasuredDimension(II)V

    goto :goto_c

    .line 365
    :cond_17
    iget v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->n:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_18

    .line 366
    iget v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->x:I

    invoke-virtual {p0, v2, v0}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->setMeasuredDimension(II)V

    .line 367
    iget v1, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->x:I

    :goto_e
    move v0, v2

    .line 374
    goto :goto_d

    .line 369
    :cond_18
    invoke-virtual {p0, v2, v1}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->setMeasuredDimension(II)V

    goto :goto_e

    .line 379
    :cond_19
    invoke-virtual {p0, v2, v1}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->setMeasuredDimension(II)V

    move v0, v2

    .line 381
    goto :goto_d

    :cond_1a
    move v2, v0

    goto/16 :goto_4
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 171
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sohu/inputmethod/sogou/CandidateView;->onSizeChanged(IIII)V

    .line 172
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->o:Z

    if-eqz v0, :cond_1

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    if-ne p3, p1, :cond_2

    if-eq p4, p2, :cond_0

    .line 177
    :cond_2
    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 179
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Lawk;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Lawk;

    invoke-virtual {v0, p1, p2}, Lawk;->a(II)V

    .line 185
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:I

    .line 187
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->b:I

    .line 193
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:F

    .line 195
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Laor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Laor;

    invoke-virtual {v0}, Laor;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 199
    const/4 v0, -0x1

    iput v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->g:I

    .line 200
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Laor;

    invoke-virtual {v0}, Laor;->c()V

    .line 201
    iget v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->c:I

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->i(I)Z

    .line 202
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->b()V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter

    .prologue
    const-wide/16 v5, 0x0

    const v4, 0x7fffffff

    const/4 v3, 0x1

    .line 1405
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Laor;

    if-nez v0, :cond_1

    .line 1509
    :cond_0
    :goto_0
    :pswitch_0
    return v3

    .line 1410
    :cond_1
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->o:Z

    if-nez v0, :cond_2

    .line 1411
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Laor;

    iget v1, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->c:I

    invoke-virtual {v0, v1}, Laor;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1416
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 1417
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 1421
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 1428
    :pswitch_1
    iput v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->C:I

    .line 1429
    iput v1, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->D:I

    .line 1430
    invoke-direct {p0, v0, v1}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->b(II)I

    move-result v0

    .line 1431
    iget-boolean v1, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->j:Z

    if-eqz v1, :cond_3

    .line 1432
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 1433
    if-eq v0, v4, :cond_0

    .line 1435
    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->b(I)V

    .line 1436
    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->d(I)V

    goto :goto_0

    .line 1424
    :pswitch_2
    invoke-virtual {p0, v0, v1}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->b(II)V

    goto :goto_0

    .line 1441
    :cond_3
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->d:Z

    .line 1479
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 1480
    if-eq v0, v4, :cond_0

    .line 1481
    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->b(I)V

    .line 1482
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Laom;

    iget v2, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->c:I

    invoke-virtual {v1, v5, v6, v2, v0}, Laom;->a(JII)V

    goto :goto_0

    .line 1491
    :pswitch_3
    iget-boolean v2, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->o:Z

    if-nez v2, :cond_0

    .line 1493
    iget-boolean v2, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->d:Z

    if-nez v2, :cond_0

    .line 1496
    invoke-direct {p0, v0, v1}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->b(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 1497
    if-eq v0, v4, :cond_0

    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Laom;

    invoke-virtual {v1}, Laom;->b()I

    move-result v1

    if-ne v0, v1, :cond_4

    iget v1, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->c:I

    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Laom;

    invoke-virtual {v2}, Laom;->a()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 1502
    :cond_4
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Lapn;

    invoke-virtual {v1}, Lapn;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1503
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Lapn;

    invoke-virtual {v1}, Lapn;->b()V

    .line 1504
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Lapn;

    invoke-virtual {v1}, Lapn;->dismiss()V

    .line 1506
    :cond_5
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Laom;

    iget v2, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->c:I

    invoke-virtual {v1, v5, v6, v2, v0}, Laom;->a(JII)V

    goto/16 :goto_0

    .line 1421
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public p()V
    .locals 5

    .prologue
    .line 2269
    iget v2, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->e:I

    .line 2270
    if-lez v2, :cond_0

    iget v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->n:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 2284
    :cond_0
    :goto_0
    return-void

    .line 2272
    :cond_1
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-le v0, v2, :cond_0

    .line 2274
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;

    .line 2275
    if-eqz v0, :cond_0

    .line 2276
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->b:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 2277
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->b:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    add-int/lit8 v4, v2, 0x1

    if-le v1, v4, :cond_2

    .line 2278
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->b:Ljava/util/Vector;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget v2, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->y:I

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-lez v1, :cond_0

    .line 2281
    :cond_2
    invoke-virtual {v0, v3}, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->a(F)V

    goto :goto_0
.end method

.method public p()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2094
    iget-boolean v2, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->s:Z

    if-eqz v2, :cond_0

    .line 2129
    :goto_0
    return v0

    .line 2097
    :cond_0
    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Laor;

    if-nez v2, :cond_1

    .line 2099
    iput-boolean v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->s:Z

    goto :goto_0

    .line 2102
    :cond_1
    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Laor;

    invoke-virtual {v2}, Laor;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2104
    iput-boolean v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->s:Z

    goto :goto_0

    .line 2108
    :cond_2
    iput-boolean v1, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->s:Z

    .line 2109
    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Laor;

    invoke-virtual {v2}, Laor;->b()I

    move-result v2

    .line 2110
    iget-object v3, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Laor;

    invoke-virtual {v3}, Laor;->c()Z

    .line 2112
    iget-object v3, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Laor;

    invoke-virtual {v3}, Laor;->b()I

    move-result v3

    .line 2114
    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Laor;

    invoke-virtual {v2}, Laor;->b()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2115
    iput-boolean v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->s:Z

    goto :goto_0

    .line 2118
    :cond_3
    iget-boolean v2, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->o:Z

    if-eqz v2, :cond_4

    .line 2120
    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->b:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-gt v2, v3, :cond_5

    .line 2122
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->requestLayout()V

    :cond_4
    move v0, v1

    .line 2129
    goto :goto_0

    .line 2124
    :cond_5
    iput-boolean v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->s:Z

    goto :goto_0
.end method

.method public q()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2133
    iget-boolean v1, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->s:Z

    if-eqz v1, :cond_0

    .line 2151
    :goto_0
    return v0

    .line 2137
    :cond_0
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Laor;

    if-nez v1, :cond_1

    .line 2139
    iput-boolean v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->s:Z

    goto :goto_0

    .line 2142
    :cond_1
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Laor;

    invoke-virtual {v1}, Laor;->a()I

    move-result v1

    if-gtz v1, :cond_2

    .line 2144
    iput-boolean v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->s:Z

    goto :goto_0

    .line 2148
    :cond_2
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Laor;

    invoke-virtual {v1}, Laor;->d()Z

    .line 2150
    iput-boolean v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->s:Z

    .line 2151
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setCanScrollhorizontal(Z)V
    .locals 0
    .parameter

    .prologue
    .line 2061
    iput-boolean p1, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->o:Z

    .line 2062
    return-void
.end method

.method public setContactSignTheme(Lawc;)V
    .locals 1
    .parameter

    .prologue
    .line 1513
    if-eqz p1, :cond_0

    .line 1514
    sget-object v0, Lawd;->p:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Lawc;->b(Ljava/lang/Integer;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Landroid/graphics/drawable/Drawable;

    .line 1515
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lawh;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Landroid/graphics/drawable/Drawable;

    .line 1516
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1517
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->c:F

    .line 1518
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->d:F

    .line 1521
    :cond_0
    return-void
.end method

.method public setFocusState()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2045
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2050
    :goto_0
    return-void

    .line 2047
    :cond_0
    iput-boolean v1, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->b:Z

    .line 2048
    iput-boolean v1, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->c:Z

    .line 2049
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->b()V

    goto :goto_0
.end method

.method public setHardKeyboardEnable(Z)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1594
    if-nez p1, :cond_1

    .line 1605
    :cond_0
    :goto_0
    return-void

    .line 1596
    :cond_1
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;

    check-cast v0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;

    .line 1597
    if-eqz v0, :cond_0

    .line 1599
    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->setCanScrollhorizontal(Z)V

    .line 1600
    invoke-virtual {p0, v1}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->setHasScrolled(Z)V

    .line 1601
    invoke-virtual {p0, v1}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->setUpdateWhenUp(Z)V

    .line 1602
    invoke-virtual {p0, v1}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->setMeasureEarlier(Z)V

    .line 1603
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->e()V

    goto :goto_0
.end method

.method public setHasScrolled(Z)V
    .locals 0
    .parameter

    .prologue
    .line 2065
    iput-boolean p1, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->n:Z

    .line 2066
    return-void
.end method

.method public setParent(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 1582
    iput-object p1, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Landroid/view/View;

    .line 1583
    return-void
.end method

.method public setScrollDrawRect(IIII)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2089
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->c:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->b:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2090
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->b:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2091
    return-void
.end method

.method public setScrollViewHeight(I)V
    .locals 0
    .parameter

    .prologue
    .line 2077
    iput p1, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->z:I

    .line 2078
    return-void
.end method

.method public setScrollViewWidth(I)V
    .locals 0
    .parameter

    .prologue
    .line 2073
    iput p1, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->y:I

    .line 2074
    return-void
.end method

.method public setTheme(Lawc;Lawe;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 412
    if-nez p2, :cond_0

    .line 492
    :goto_0
    return-void

    .line 415
    :cond_0
    iput v6, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->j:I

    .line 417
    invoke-virtual {p2}, Lawe;->a()Lawv;

    move-result-object v1

    .line 418
    invoke-virtual {p2}, Lawe;->d()Lawv;

    move-result-object v2

    .line 419
    iget v0, v1, Lawv;->a:I

    invoke-virtual {p2}, Lawe;->b()I

    move-result v3

    add-int/2addr v0, v3

    .line 421
    iget-object v3, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Landroid/graphics/Paint;

    int-to-float v4, v0

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 431
    sget-boolean v3, Laox;->b:Z

    if-eqz v3, :cond_1

    .line 432
    iget-object v3, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Landroid/graphics/Paint;

    iget-object v4, v1, Lawv;->a:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 433
    :cond_1
    iget-object v3, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v3

    iput-object v3, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Landroid/graphics/Paint$FontMetricsInt;

    .line 434
    iget-object v3, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Landroid/graphics/Paint;

    const-string v4, "..."

    const-string v5, "..."

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v4, v6, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v3

    iput v3, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->e:F

    .line 437
    int-to-float v0, v0

    const v3, 0x3ecccccd

    mul-float/2addr v0, v3

    .line 438
    iget-object v3, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->b:Landroid/graphics/Paint;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 439
    iget-object v3, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->b:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v3

    iput-object v3, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->b:Landroid/graphics/Paint$FontMetricsInt;

    .line 443
    iget-boolean v3, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Z

    if-eqz v3, :cond_4

    :goto_1
    iput v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->b:F

    .line 445
    iget v0, v1, Lawv;->b:I

    iput v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->i:I

    .line 446
    iget v0, v1, Lawv;->b:I

    iput v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->h:I

    .line 447
    if-eqz v2, :cond_2

    .line 448
    iget v0, v2, Lawv;->b:I

    iput v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->h:I

    .line 450
    :cond_2
    invoke-virtual {p2}, Lawe;->a()I

    move-result v0

    iput v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->u:I

    .line 451
    iget v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->u:I

    iput v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->v:I

    .line 460
    invoke-virtual {p2}, Lawe;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->b:Landroid/graphics/drawable/Drawable;

    .line 462
    invoke-virtual {p2}, Lawe;->a()Laxn;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Laxn;

    .line 463
    invoke-virtual {p2}, Lawe;->e()Lawv;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Lawv;

    .line 465
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Lapn;

    invoke-virtual {v0, p2}, Lapn;->a(Lawe;)V

    .line 468
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Landroid/graphics/Paint$FontMetricsInt;

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v0, v1

    .line 470
    iput v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->v:I

    .line 472
    iget v1, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->n:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    .line 473
    iput v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->v:I

    .line 476
    :goto_2
    invoke-virtual {p0, p1}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->setContactSignTheme(Lawc;)V

    .line 479
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;

    .line 480
    if-eqz v0, :cond_3

    .line 481
    invoke-virtual {p2}, Lawe;->a()Landroid/graphics/Rect;

    move-result-object v5

    .line 483
    invoke-virtual {p2}, Lawe;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Lawh;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget v2, v5, Landroid/graphics/Rect;->left:I

    iget v3, v5, Landroid/graphics/Rect;->top:I

    iget v4, v5, Landroid/graphics/Rect;->right:I

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual/range {v0 .. v5}, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->setTheme(Landroid/graphics/drawable/Drawable;IIII)V

    .line 487
    :cond_3
    iget v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->y:I

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a:I

    .line 488
    iget v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->z:I

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->b:I

    .line 490
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->invalidate()V

    .line 491
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->requestLayout()V

    goto/16 :goto_0

    .line 443
    :cond_4
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 475
    :cond_5
    const/4 v0, -0x1

    iput v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->v:I

    goto :goto_2
.end method

.method public setmCandHeight(I)V
    .locals 0
    .parameter

    .prologue
    .line 408
    iput p1, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->x:I

    .line 409
    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1573
    instance-of v0, p1, Laxc;

    if-eqz v0, :cond_0

    .line 1576
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Laxc;->a(Landroid/content/Context;)Laxc;

    move-result-object v0

    invoke-virtual {v0}, Laxc;->b()Lawc;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Laxc;->a(Landroid/content/Context;)Laxc;

    move-result-object v1

    iget v2, p0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->n:I

    invoke-virtual {v1, v2}, Laxc;->a(I)Lawe;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->setTheme(Lawc;Lawe;)V

    .line 1579
    :cond_0
    return-void
.end method
