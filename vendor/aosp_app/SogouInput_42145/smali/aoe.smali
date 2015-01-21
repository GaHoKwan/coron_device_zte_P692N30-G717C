.class public Laoe;
.super Lavd;
.source "SourceFile"


# static fields
.field private static a:Ljava/util/List;

.field private static b:Ljava/util/List;


# instance fields
.field private M:I

.field private N:I

.field private O:I

.field private P:I

.field private Q:I

.field public a:I

.field public a:Z

.field public b:I

.field private b:Ljava/util/Vector;

.field private c:Landroid/graphics/Rect;

.field private c:Ljava/util/Vector;

.field private d:Landroid/graphics/Rect;

.field private d:Ljava/util/Vector;

.field private e:Landroid/graphics/Rect;

.field private m:F

.field private n:F

.field private o:F

.field private p:F

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 96
    sput-object v0, Laoe;->a:Ljava/util/List;

    .line 101
    sput-object v0, Laoe;->b:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 291
    invoke-direct {p0, p1, p2}, Lavd;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 60
    iput-boolean v1, p0, Laoe;->x:Z

    .line 65
    iput-boolean v1, p0, Laoe;->y:Z

    .line 76
    iput v1, p0, Laoe;->M:I

    .line 86
    const/16 v0, 0x8

    iput v0, p0, Laoe;->O:I

    .line 91
    iput-boolean v1, p0, Laoe;->z:Z

    .line 106
    const/high16 v0, -0x4080

    iput v0, p0, Laoe;->m:F

    .line 111
    const/4 v0, 0x0

    iput v0, p0, Laoe;->n:F

    .line 176
    const/4 v0, 0x0

    iput-object v0, p0, Laoe;->d:Ljava/util/Vector;

    .line 292
    invoke-virtual {p0, p1}, Laoe;->a(Landroid/content/Context;)V

    .line 293
    return-void
.end method

.method private a(I)I
    .locals 8
    .parameter

    .prologue
    .line 521
    iget-boolean v0, p0, Laoe;->k:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Laoe;->a:Laor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Laoe;->a:Laor;

    invoke-virtual {v0}, Laor;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Laoe;->l:Z

    if-eqz v0, :cond_1

    .line 561
    :cond_0
    :goto_0
    return p1

    .line 523
    :cond_1
    iget-object v0, p0, Laoe;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/sohu/inputmethod/engine/IMEInterface;->getInstance(Landroid/content/Context;)Lcom/sohu/inputmethod/engine/IMEInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sohu/inputmethod/engine/IMEInterface;->getCandidateProbableNumNative()I

    move-result v2

    .line 524
    sget v0, Laox;->e:I

    if-le v2, v0, :cond_2

    sget v2, Laox;->e:I

    .line 525
    :cond_2
    if-ge p1, v2, :cond_0

    iget-object v0, p0, Laoe;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-gt v0, v2, :cond_0

    .line 527
    iget v0, p0, Laoe;->y:I

    int-to-float v5, v0

    .line 528
    iget v0, p0, Laoe;->A:I

    int-to-float v6, v0

    .line 529
    const/4 v1, 0x0

    .line 530
    iget v3, p0, Laoe;->O:I

    .line 533
    iget-object v0, p0, Laoe;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-le v0, p1, :cond_3

    .line 534
    iget-object v0, p0, Laoe;->b:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v5

    .line 537
    :cond_3
    iget-object v0, p0, Laoe;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-le v0, p1, :cond_4

    .line 538
    iget-object v0, p0, Laoe;->c:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v6

    .line 541
    :cond_4
    if-lez p1, :cond_6

    .line 544
    iget-object v0, p0, Laoe;->c:Ljava/util/Vector;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 545
    iget-object v0, p0, Laoe;->b:Ljava/util/Vector;

    add-int/lit8 v4, p1, -0x1

    invoke-virtual {v0, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 546
    cmpl-float v1, v6, v1

    if-nez v1, :cond_5

    .line 547
    sub-float v0, v5, v0

    .line 551
    :goto_1
    iget v1, p0, Laoe;->o:F

    float-to-int v1, v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 555
    :goto_2
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 556
    iget v0, p0, Laoe;->o:F

    div-float v0, v5, v0

    float-to-int v4, v0

    .line 557
    iget v7, p0, Laoe;->o:F

    move-object v0, p0

    move v1, p1

    .line 558
    invoke-direct/range {v0 .. v7}, Laoe;->a(IIIIFFF)V

    move p1, v2

    .line 559
    goto/16 :goto_0

    .line 549
    :cond_5
    iget v1, p0, Laoe;->c:I

    int-to-float v1, v1

    sub-float v0, v1, v0

    iget v1, p0, Laoe;->k:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    goto :goto_1

    :cond_6
    move v0, v1

    goto :goto_2
.end method

.method private a(II)I
    .locals 6
    .parameter
    .parameter

    .prologue
    const v3, 0x7fffffff

    .line 1971
    iget-object v0, p0, Laoe;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 1987
    :cond_0
    :goto_0
    return v3

    .line 1975
    :cond_1
    iget-boolean v0, p0, Laoe;->r:Z

    if-eqz v0, :cond_3

    .line 1976
    iget v0, p0, Laoe;->a:I

    move v1, v0

    move v2, v3

    :goto_1
    iget v0, p0, Laoe;->b:I

    if-gt v1, v0, :cond_4

    .line 1977
    iget-object v0, p0, Laoe;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 1980
    iget-object v0, p0, Laoe;->a:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    .line 1981
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

    .line 1976
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    move v2, v3

    :cond_4
    move v3, v2

    .line 1987
    goto :goto_0
.end method

.method private a(Ljava/lang/CharSequence;FI)I
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1457
    const/4 v0, 0x1

    move v1, v0

    move v0, p2

    .line 1458
    :goto_0
    iget v2, p0, Laoe;->O:I

    if-gt v1, v2, :cond_0

    .line 1459
    invoke-virtual {p0, p1, p3}, Laoe;->a(Ljava/lang/CharSequence;I)F

    move-result v2

    cmpg-float v2, v2, v0

    if-gtz v2, :cond_2

    .line 1462
    :cond_0
    iget v0, p0, Laoe;->O:I

    if-le v1, v0, :cond_1

    .line 1463
    iget v1, p0, Laoe;->O:I

    .line 1464
    :cond_1
    return v1

    .line 1458
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
    .line 579
    const/4 v3, 0x1

    move v1, p6

    .line 580
    :goto_0
    if-ge p1, p2, :cond_7

    .line 581
    sub-int v0, p3, p4

    if-ge v3, v0, :cond_3

    .line 582
    add-int v2, p4, v3

    .line 583
    iget-object v0, p0, Laoe;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 584
    iget-object v0, p0, Laoe;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    add-float v4, p5, p7

    iget v5, p0, Laoe;->p:F

    add-float/2addr v5, v1

    invoke-virtual {v0, p5, v1, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 591
    :goto_1
    iget v0, p0, Laoe;->k:I

    int-to-float v0, v0

    add-float/2addr v0, p7

    add-float/2addr v0, p5

    .line 592
    iget-object v4, p0, Laoe;->b:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    add-int/lit8 v5, p1, 0x1

    if-le v4, v5, :cond_1

    .line 593
    iget-object v4, p0, Laoe;->b:Ljava/util/Vector;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    add-int/lit8 v6, p1, 0x1

    invoke-virtual {v4, v5, v6}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 599
    :goto_2
    iget-object v4, p0, Laoe;->c:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    add-int/lit8 v5, p1, 0x1

    if-le v4, v5, :cond_2

    .line 600
    iget-object v4, p0, Laoe;->c:Ljava/util/Vector;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    add-int/lit8 v6, p1, 0x1

    invoke-virtual {v4, v5, v6}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    move v7, v1

    move v1, v0

    move v0, v7

    .line 580
    :goto_3
    add-int/lit8 p1, p1, 0x1

    move p5, v1

    move p4, v2

    move v1, v0

    goto :goto_0

    .line 587
    :cond_0
    iget-object v0, p0, Laoe;->a:Ljava/util/Vector;

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v0, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 588
    iget-object v0, p0, Laoe;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    add-float v4, p5, p7

    iget v5, p0, Laoe;->p:F

    add-float/2addr v5, v1

    invoke-virtual {v0, p5, v1, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_1

    .line 595
    :cond_1
    iget-object v4, p0, Laoe;->b:Ljava/util/Vector;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 602
    :cond_2
    iget-object v4, p0, Laoe;->c:Ljava/util/Vector;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    move v7, v1

    move v1, v0

    move v0, v7

    goto :goto_3

    .line 605
    :cond_3
    iget-object v0, p0, Laoe;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-le v0, p1, :cond_4

    .line 606
    iget-object v0, p0, Laoe;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    add-float v2, p5, p7

    iget v4, p0, Laoe;->p:F

    add-float/2addr v4, v1

    invoke-virtual {v0, p5, v1, v2, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 613
    :goto_4
    iget v0, p0, Laoe;->y:I

    int-to-float v2, v0

    .line 614
    iget v0, p0, Laoe;->p:F

    iget v4, p0, Laoe;->l:I

    int-to-float v4, v4

    add-float/2addr v0, v4

    add-float/2addr v0, v1

    .line 615
    const/4 v1, 0x0

    .line 616
    iget-object v4, p0, Laoe;->b:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    add-int/lit8 v5, p1, 0x1

    if-le v4, v5, :cond_5

    .line 617
    iget-object v4, p0, Laoe;->b:Ljava/util/Vector;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    add-int/lit8 v6, p1, 0x1

    invoke-virtual {v4, v5, v6}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 623
    :goto_5
    iget-object v4, p0, Laoe;->c:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    add-int/lit8 v5, p1, 0x1

    if-le v4, v5, :cond_6

    .line 624
    iget-object v4, p0, Laoe;->c:Ljava/util/Vector;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    add-int/lit8 v6, p1, 0x1

    invoke-virtual {v4, v5, v6}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    move v7, v2

    move v2, v1

    move v1, v7

    goto/16 :goto_3

    .line 609
    :cond_4
    iget-object v0, p0, Laoe;->a:Ljava/util/Vector;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 610
    iget-object v0, p0, Laoe;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    add-float v2, p5, p7

    iget v4, p0, Laoe;->p:F

    add-float/2addr v4, v1

    invoke-virtual {v0, p5, v1, v2, v4}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_4

    .line 619
    :cond_5
    iget-object v4, p0, Laoe;->b:Ljava/util/Vector;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 626
    :cond_6
    iget-object v4, p0, Laoe;->c:Ljava/util/Vector;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    move v7, v2

    move v2, v1

    move v1, v7

    goto/16 :goto_3

    .line 630
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
    .line 1757
    iget-boolean v0, p0, Laoe;->j:Z

    if-nez v0, :cond_1

    .line 1839
    :cond_0
    return-void

    .line 1759
    :cond_1
    iget-object v0, p0, Laoe;->a:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v3

    .line 1760
    const/high16 v0, 0x4000

    div-float v2, v3, v0

    .line 1762
    iget v0, p0, Laoe;->f:F

    iget v1, p0, Laoe;->g:F

    add-float v6, v0, v1

    move v5, p1

    move v1, v3

    .line 1770
    :goto_0
    if-gt v5, p2, :cond_a

    .line 1771
    iget-object v0, p0, Laoe;->b:Ljava/util/Vector;

    invoke-virtual {v0, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 1772
    iget-object v0, p0, Laoe;->c:Ljava/util/Vector;

    invoke-virtual {v0, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v7

    .line 1773
    iget-object v0, p0, Laoe;->c:Ljava/util/Vector;

    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v0, v8}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 1776
    cmpl-float v0, v0, v7

    if-nez v0, :cond_3

    .line 1777
    iget-object v0, p0, Laoe;->b:Ljava/util/Vector;

    add-int/lit8 v4, v5, 0x1

    invoke-virtual {v0, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iget-object v0, p0, Laoe;->b:Ljava/util/Vector;

    invoke-virtual {v0, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sub-float v0, v4, v0

    iget v4, p0, Laoe;->k:I

    int-to-float v4, v4

    sub-float/2addr v0, v4

    .line 1785
    :goto_1
    iget-object v4, p0, Laoe;->a:Laor;

    invoke-virtual {v4, v5}, Laor;->a(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 1787
    invoke-virtual {p0, v4}, Laoe;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 1788
    if-nez v7, :cond_4

    move v0, v1

    .line 1770
    :cond_2
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move v1, v0

    goto :goto_0

    .line 1782
    :cond_3
    iget v0, p0, Laoe;->c:I

    iget v7, p0, Laoe;->k:I

    sub-int/2addr v0, v7

    int-to-float v0, v0

    sub-float/2addr v0, v4

    goto :goto_1

    .line 1791
    :cond_4
    iget-object v4, p0, Laoe;->a:Landroid/graphics/Paint;

    const/4 v8, 0x0

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v9

    invoke-virtual {v4, v7, v8, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v4

    .line 1793
    const/high16 v8, 0x4000

    mul-float/2addr v8, v6

    sub-float v8, v0, v8

    move v0, v1

    move v1, v3

    .line 1796
    :cond_5
    cmpl-float v4, v4, v8

    if-lez v4, :cond_7

    .line 1797
    const/high16 v4, 0x3f80

    sub-float/2addr v1, v4

    .line 1798
    cmpg-float v4, v1, v0

    if-gez v4, :cond_6

    move v0, v1

    .line 1800
    :cond_6
    iget-object v4, p0, Laoe;->a:Landroid/graphics/Paint;

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1801
    iget-object v4, p0, Laoe;->a:Landroid/graphics/Paint;

    const/4 v9, 0x0

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v10

    invoke-virtual {v4, v7, v9, v10}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v4

    .line 1803
    cmpg-float v9, v1, v2

    if-gtz v9, :cond_5

    .line 1805
    cmpl-float v0, v4, v8

    if-lez v0, :cond_9

    .line 1806
    invoke-virtual {p0, v7, v8}, Laoe;->a(Ljava/lang/CharSequence;F)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1807
    iget-object v1, p0, Laoe;->a:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    invoke-virtual {v1, v0, v4, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move v0, v2

    .line 1814
    :cond_7
    :goto_2
    cmpg-float v1, v0, v2

    if-gtz v1, :cond_2

    move v9, v0

    :goto_3
    move v3, p1

    .line 1820
    :goto_4
    if-gt v3, p2, :cond_0

    .line 1821
    iget-object v0, p0, Laoe;->b:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 1823
    iget-object v0, p0, Laoe;->c:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v5

    .line 1824
    iget-object v0, p0, Laoe;->c:Ljava/util/Vector;

    add-int/lit8 v1, v3, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 1826
    cmpl-float v0, v0, v5

    if-nez v0, :cond_8

    .line 1827
    iget-object v0, p0, Laoe;->b:Ljava/util/Vector;

    add-int/lit8 v1, v3, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v0, p0, Laoe;->b:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sub-float v0, v1, v0

    iget v1, p0, Laoe;->k:I

    int-to-float v1, v1

    sub-float v6, v0, v1

    .line 1835
    :goto_5
    iget-object v0, p0, Laoe;->a:Laor;

    invoke-virtual {v0, v3}, Laor;->a(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1837
    iget-boolean v8, p0, Laoe;->j:Z

    move-object v0, p0

    move-object v1, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v9}, Laoe;->a(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IFFFLandroid/graphics/drawable/Drawable;ZF)V

    .line 1820
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1832
    :cond_8
    iget v0, p0, Laoe;->c:I

    iget v1, p0, Laoe;->k:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    sub-float v6, v0, v4

    goto :goto_5

    :cond_9
    move v0, v2

    goto :goto_2

    :cond_a
    move v9, v1

    goto :goto_3
.end method

.method private a(IZ)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1232
    iget-object v0, p0, Laoe;->a:Laor;

    if-nez v0, :cond_0

    .line 1247
    :goto_0
    return-void

    .line 1235
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Laoe;->n:I

    .line 1236
    iput p1, p0, Laoe;->f:I

    .line 1237
    iput-boolean v1, p0, Laoe;->d:Z

    .line 1238
    iput-boolean p2, p0, Laoe;->c:Z

    .line 1239
    iget-boolean v0, p0, Laoe;->z:Z

    if-eqz v0, :cond_1

    .line 1240
    iput-boolean v1, p0, Laoe;->c:Z

    .line 1243
    :cond_1
    iput v1, p0, Laoe;->e:I

    goto :goto_0
.end method

.method private a(Landroid/graphics/Canvas;ILandroid/graphics/drawable/Drawable;Z)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1726
    if-eqz p4, :cond_0

    .line 1745
    :goto_0
    return-void

    .line 1728
    :cond_0
    iget-object v0, p0, Laoe;->b:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 1729
    iget-object v0, p0, Laoe;->c:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v5

    .line 1730
    iget-object v0, p0, Laoe;->c:Ljava/util/Vector;

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 1733
    cmpl-float v0, v0, v5

    if-nez v0, :cond_1

    .line 1734
    iget-object v0, p0, Laoe;->b:Ljava/util/Vector;

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v0, p0, Laoe;->b:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sub-float v0, v1, v0

    iget v1, p0, Laoe;->k:I

    int-to-float v1, v1

    sub-float v6, v0, v1

    .line 1742
    :goto_1
    iget-object v0, p0, Laoe;->a:Laor;

    invoke-virtual {v0, p2}, Laor;->a(I)Ljava/lang/CharSequence;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v7, p3

    move v8, p4

    .line 1744
    invoke-direct/range {v0 .. v8}, Laoe;->a(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IFFFLandroid/graphics/drawable/Drawable;Z)V

    goto :goto_0

    .line 1739
    :cond_1
    iget v0, p0, Laoe;->c:I

    iget v1, p0, Laoe;->k:I

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
    .line 1507
    move-object/from16 v0, p0

    iget-object v1, v0, Laoe;->a:Laor;

    invoke-virtual {v1}, Laor;->b()I

    move-result v15

    .line 1516
    move-object/from16 v0, p0

    iget-boolean v1, v0, Laoe;->l:Z

    if-nez v1, :cond_0

    .line 1517
    move-object/from16 v0, p0

    iget-object v1, v0, Laoe;->a:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->removeAllElements()V

    .line 1520
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Laoe;->N:I

    move/from16 v16, v0

    .line 1522
    move-object/from16 v0, p0

    iget v0, v0, Laoe;->O:I

    move/from16 v17, v0

    .line 1524
    mul-int v18, v16, v17

    .line 1526
    move-object/from16 v0, p0

    iget-object v8, v0, Laoe;->b:Landroid/graphics/drawable/Drawable;

    .line 1528
    move-object/from16 v0, p0

    iget-object v1, v0, Laoe;->a:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v2, v0, Laoe;->j:I

    invoke-static {v2}, Lawh;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1531
    const/4 v3, 0x0

    .line 1532
    const/4 v4, 0x0

    .line 1533
    const/4 v11, -0x1

    .line 1534
    move-object/from16 v0, p0

    iput v4, v0, Laoe;->a:I

    .line 1536
    move-object/from16 v0, p0

    iget v1, v0, Laoe;->A:I

    int-to-float v6, v1

    .line 1537
    const/4 v1, 0x0

    move v14, v1

    :goto_0
    move/from16 v0, v16

    if-ge v14, v0, :cond_7

    .line 1538
    move-object/from16 v0, p0

    iget v1, v0, Laoe;->y:I

    int-to-float v5, v1

    .line 1539
    const/4 v1, 0x0

    const/4 v2, 0x1

    move v12, v1

    move v13, v3

    move v1, v11

    :goto_1
    move/from16 v0, v17

    if-ge v12, v0, :cond_6

    .line 1540
    move-object/from16 v0, p0

    iget v7, v0, Laoe;->o:F

    .line 1541
    move-object/from16 v0, p0

    iget-object v3, v0, Laoe;->a:Laor;

    invoke-virtual {v3, v4}, Laor;->a(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1542
    const/4 v9, -0x1

    if-ne v1, v9, :cond_5

    if-ge v4, v15, :cond_5

    .line 1543
    move-object/from16 v0, p0

    iget-object v1, v0, Laoe;->a:Laor;

    invoke-virtual {v1, v4}, Laor;->a(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1544
    move-object/from16 v0, p0

    iget v1, v0, Laoe;->o:F

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v1, v4}, Laoe;->a(Ljava/lang/CharSequence;FI)I

    move-result v1

    .line 1549
    :cond_1
    :goto_2
    if-lez v1, :cond_2

    .line 1550
    move-object/from16 v0, p0

    iget v2, v0, Laoe;->o:F

    int-to-float v7, v1

    mul-float/2addr v7, v2

    .line 1553
    :cond_2
    const/4 v2, -0x1

    .line 1556
    sub-int v9, v17, v12

    if-ge v1, v9, :cond_8

    add-int/lit8 v9, v15, -0x1

    if-ge v4, v9, :cond_8

    .line 1557
    move-object/from16 v0, p0

    iget-object v2, v0, Laoe;->a:Laor;

    add-int/lit8 v9, v4, 0x1

    invoke-virtual {v2, v9}, Laor;->a(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1558
    move-object/from16 v0, p0

    iget v9, v0, Laoe;->o:F

    add-int/lit8 v10, v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v9, v10}, Laoe;->a(Ljava/lang/CharSequence;FI)I

    move-result v2

    .line 1562
    add-int v9, v12, v1

    add-int/2addr v9, v2

    move/from16 v0, v17

    if-le v9, v0, :cond_8

    .line 1563
    move-object/from16 v0, p0

    iget v1, v0, Laoe;->c:I

    move-object/from16 v0, p0

    iget v7, v0, Laoe;->k:I

    sub-int/2addr v1, v7

    int-to-float v1, v1

    sub-float v7, v1, v5

    .line 1565
    sub-int v1, v17, v12

    move v10, v1

    move v11, v2

    .line 1568
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v1, v0, Laoe;->l:Z

    if-nez v1, :cond_4

    .line 1569
    move-object/from16 v0, p0

    iget-object v1, v0, Laoe;->a:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    move/from16 v0, v18

    if-ge v1, v0, :cond_3

    .line 1570
    move-object/from16 v0, p0

    iget-object v1, v0, Laoe;->a:Ljava/util/Vector;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1571
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Laoe;->a:Ljava/util/Vector;

    invoke-virtual {v1, v13}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/RectF;

    add-float v2, v5, v7

    move-object/from16 v0, p0

    iget v9, v0, Laoe;->p:F

    add-float/2addr v9, v6

    invoke-virtual {v1, v5, v6, v2, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1574
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v9, v0, Laoe;->j:Z

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v9}, Laoe;->a(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IFFFLandroid/graphics/drawable/Drawable;Z)V

    .line 1575
    add-int/lit8 v4, v4, 0x1

    .line 1576
    add-int/lit8 v2, v13, 0x1

    .line 1577
    move-object/from16 v0, p0

    iget v1, v0, Laoe;->k:I

    int-to-float v1, v1

    add-float/2addr v1, v7

    add-float/2addr v5, v1

    .line 1539
    add-int v1, v12, v10

    move v12, v1

    move v13, v2

    move v1, v11

    move v2, v10

    goto/16 :goto_1

    .line 1545
    :cond_5
    if-lt v4, v15, :cond_1

    move v1, v2

    goto/16 :goto_2

    .line 1580
    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Laoe;->p:F

    move-object/from16 v0, p0

    iget v3, v0, Laoe;->l:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    add-float/2addr v6, v2

    .line 1537
    add-int/lit8 v2, v14, 0x1

    move v14, v2

    move v11, v1

    move v3, v13

    goto/16 :goto_0

    .line 1582
    :cond_7
    add-int/lit8 v1, v4, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Laoe;->b:I

    .line 1586
    return-void

    :cond_8
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
    .line 1603
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

    invoke-direct/range {v0 .. v9}, Laoe;->a(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IFFFLandroid/graphics/drawable/Drawable;ZF)V

    .line 1604
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
    .line 1622
    iget v1, p0, Laoe;->p:F

    iget-object v2, p0, Laoe;->a:Landroid/graphics/Paint$FontMetricsInt;

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget-object v3, p0, Laoe;->a:Landroid/graphics/Paint$FontMetricsInt;

    iget v3, v3, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    iget-object v2, p0, Laoe;->a:Landroid/graphics/Paint$FontMetricsInt;

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->top:I

    int-to-float v2, v2

    sub-float v12, v1, v2

    .line 1625
    iget-object v1, p0, Laoe;->a:Landroid/graphics/Paint;

    iget v2, p0, Laoe;->j:I

    invoke-static {v2}, Lawh;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1628
    iget-object v1, p0, Laoe;->a:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v11

    .line 1629
    const/high16 v1, 0x4000

    div-float v6, v11, v1

    .line 1630
    if-eqz p8, :cond_0

    const/4 v1, 0x0

    cmpl-float v1, p9, v1

    if-lez v1, :cond_0

    .line 1631
    iget-object v1, p0, Laoe;->a:Landroid/graphics/Paint;

    move/from16 v0, p9

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1634
    :cond_0
    iget v1, p0, Laoe;->f:F

    iget v2, p0, Laoe;->g:F

    add-float v13, v1, v2

    .line 1635
    if-eqz p7, :cond_1

    .line 1636
    move/from16 v0, p3

    invoke-virtual {p0, v0}, Laoe;->a(I)[I

    move-result-object v1

    move-object/from16 v0, p7

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1637
    move/from16 v0, p4

    float-to-int v1, v0

    move/from16 v0, p5

    float-to-int v2, v0

    add-float v3, p4, p6

    float-to-int v3, v3

    iget v4, p0, Laoe;->p:F

    add-float v4, v4, p5

    float-to-int v4, v4

    move-object/from16 v0, p7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1640
    invoke-static/range {p7 .. p7}, Lawh;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1641
    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1644
    :cond_1
    move-object/from16 v0, p2

    invoke-virtual {p0, v0}, Laoe;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 1645
    if-nez v4, :cond_2

    .line 1714
    :goto_0
    return-void

    .line 1649
    :cond_2
    move/from16 v0, p3

    invoke-virtual {p0, v0}, Laoe;->a(I)Z

    move-result v14

    .line 1650
    if-eqz v14, :cond_6

    iget v1, p0, Laoe;->c:F

    move v8, v1

    .line 1652
    :goto_1
    iget-object v1, p0, Laoe;->a:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v1, v4, v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v2

    .line 1654
    const/high16 v1, 0x4000

    mul-float/2addr v1, v13

    sub-float v3, p6, v1

    .line 1656
    if-nez p8, :cond_9

    .line 1658
    if-eqz v14, :cond_7

    iget v1, p0, Laoe;->c:F

    sub-float v1, v3, v1

    :goto_2
    move v5, v11

    .line 1661
    :cond_3
    cmpl-float v7, v2, v1

    if-lez v7, :cond_9

    .line 1662
    const/high16 v2, 0x3f80

    sub-float/2addr v5, v2

    .line 1663
    iget-object v2, p0, Laoe;->a:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1664
    iget-object v2, p0, Laoe;->a:Landroid/graphics/Paint;

    const/4 v7, 0x0

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v9

    invoke-virtual {v2, v4, v7, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v2

    .line 1666
    cmpg-float v7, v5, v6

    if-gtz v7, :cond_3

    .line 1667
    cmpl-float v5, v2, v1

    if-lez v5, :cond_9

    .line 1668
    invoke-virtual {p0, v4, v1}, Laoe;->a(Ljava/lang/CharSequence;F)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1669
    iget-object v1, p0, Laoe;->a:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-virtual {v1, v2, v4, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v1

    move v9, v1

    .line 1677
    :goto_3
    const/4 v1, 0x0

    .line 1678
    sget-object v4, Laof;->a:[I

    iget-object v5, p0, Laoe;->a:Landroid/text/Layout$Alignment;

    invoke-virtual {v5}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 1689
    :goto_4
    add-float v3, v13, p4

    add-float v5, v1, v3

    .line 1691
    const/4 v1, 0x0

    .line 1692
    iget v3, p0, Laoe;->f:I

    move/from16 v0, p3

    if-ne v0, v3, :cond_8

    iget-boolean v3, p0, Laoe;->d:Z

    if-eqz v3, :cond_8

    .line 1693
    iget-object v1, p0, Laoe;->a:Landroid/graphics/Paint;

    iget v3, p0, Laoe;->i:I

    invoke-static {v3}, Lawh;->a(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1695
    const/4 v1, 0x1

    move v10, v1

    .line 1698
    :goto_5
    const/4 v3, 0x0

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-float v6, p5, v12

    iget-object v7, p0, Laoe;->a:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 1700
    if-eqz v10, :cond_4

    .line 1701
    iget-object v1, p0, Laoe;->a:Landroid/graphics/Paint;

    iget v2, p0, Laoe;->j:I

    invoke-static {v2}, Lawh;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1705
    :cond_4
    if-eqz v14, :cond_5

    .line 1706
    iget-object v1, p0, Laoe;->a:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    int-to-float v1, v1

    add-float/2addr v1, v12

    iget-object v2, p0, Laoe;->b:Landroid/graphics/Paint$FontMetricsInt;

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->top:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    .line 1708
    iget-object v2, p0, Laoe;->a:Landroid/graphics/drawable/Drawable;

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

    iget v6, p0, Laoe;->d:F

    add-float/2addr v1, v6

    float-to-int v1, v1

    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1711
    iget-object v1, p0, Laoe;->a:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1713
    :cond_5
    iget-object v1, p0, Laoe;->a:Landroid/graphics/Paint;

    invoke-virtual {v1, v11}, Landroid/graphics/Paint;->setTextSize(F)V

    goto/16 :goto_0

    .line 1650
    :cond_6
    const/4 v1, 0x0

    move v8, v1

    goto/16 :goto_1

    :cond_7
    move v1, v3

    .line 1658
    goto/16 :goto_2

    .line 1680
    :pswitch_0
    sub-float v1, v3, v9

    sub-float/2addr v1, v8

    .line 1681
    goto/16 :goto_4

    .line 1683
    :pswitch_1
    sub-float v1, v3, v9

    sub-float/2addr v1, v8

    const/high16 v3, 0x4000

    div-float/2addr v1, v3

    .line 1684
    goto/16 :goto_4

    :cond_8
    move v10, v1

    goto :goto_5

    :cond_9
    move v9, v2

    move-object v2, v4

    goto/16 :goto_3

    .line 1678
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
    .line 1206
    if-nez p1, :cond_0

    .line 1221
    :goto_0
    return-void

    .line 1208
    :cond_0
    iput-object p1, p0, Laoe;->a:Laor;

    .line 1209
    iget-object v0, p0, Laoe;->d:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 1210
    iget-object v0, p0, Laoe;->a:Laor;

    invoke-virtual {v0}, Laor;->b()I

    move-result v1

    .line 1211
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_1

    .line 1213
    new-instance v2, Ljava/lang/StringBuffer;

    iget-object v3, p0, Laoe;->a:Laor;

    invoke-virtual {v3, v0}, Laor;->a(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/CharSequence;)V

    .line 1214
    iget-object v3, p0, Laoe;->d:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1211
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1218
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Laoe;->h:I

    .line 1220
    iget-object v0, p0, Laoe;->a:Lave;

    invoke-virtual {v0}, Lave;->a()Z

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 2227
    return-void
.end method

.method private d(Landroid/graphics/Canvas;)V
    .locals 9
    .parameter

    .prologue
    .line 1850
    iget-boolean v0, p0, Laoe;->r:Z

    if-nez v0, :cond_1

    .line 1960
    :cond_0
    :goto_0
    return-void

    .line 1852
    :cond_1
    iget-object v0, p0, Laoe;->a:Laor;

    invoke-virtual {v0}, Laor;->b()I

    move-result v2

    .line 1854
    iget v0, p0, Laoe;->a:I

    if-ltz v0, :cond_2

    iget v0, p0, Laoe;->b:I

    if-le v0, v2, :cond_3

    .line 1855
    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Laoe;->a:I

    .line 1857
    :cond_3
    iget v0, p0, Laoe;->b:I

    if-lt v0, v2, :cond_4

    .line 1858
    add-int/lit8 v0, v2, -0x1

    iput v0, p0, Laoe;->b:I

    .line 1861
    :cond_4
    iget-object v0, p0, Laoe;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 1866
    iget-object v0, p0, Laoe;->c:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->top:I

    .line 1867
    iget-object v0, p0, Laoe;->c:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    .line 1868
    iget-object v0, p0, Laoe;->d:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 1870
    iget-object v5, p0, Laoe;->b:Landroid/graphics/drawable/Drawable;

    .line 1874
    iget v1, p0, Laoe;->A:I

    int-to-float v1, v1

    .line 1878
    if-le v4, v0, :cond_a

    .line 1879
    iget v0, p0, Laoe;->a:I

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_8

    .line 1880
    iget-object v0, p0, Laoe;->c:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 1882
    iget v6, p0, Laoe;->p:F

    iget v7, p0, Laoe;->k:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    .line 1883
    add-float/2addr v6, v0

    int-to-float v7, v3

    cmpg-float v6, v6, v7

    if-gez v6, :cond_6

    .line 1884
    iget v0, p0, Laoe;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Laoe;->a:I

    .line 1886
    iget v0, p0, Laoe;->a:I

    iget-object v6, p0, Laoe;->a:Laor;

    iget v6, v6, Laor;->a:I

    sub-int v6, v2, v6

    if-ne v0, v6, :cond_5

    .line 1888
    invoke-virtual {p0}, Laoe;->c()Z

    .line 1879
    :cond_5
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 1894
    :cond_6
    add-int/lit8 v6, v2, -0x1

    if-ne v1, v6, :cond_7

    .line 1895
    iput v1, p0, Laoe;->b:I

    .line 1899
    :cond_7
    int-to-float v6, v4

    cmpl-float v0, v0, v6

    if-lez v0, :cond_9

    .line 1900
    add-int/lit8 v0, v1, -0x1

    iput v0, p0, Laoe;->b:I

    .line 1901
    iget v0, p0, Laoe;->b:I

    add-int/lit8 v1, v2, -0x1

    if-le v0, v1, :cond_8

    .line 1902
    add-int/lit8 v0, v2, -0x1

    iput v0, p0, Laoe;->b:I

    .line 1957
    :cond_8
    :goto_3
    iget v0, p0, Laoe;->a:I

    iget v1, p0, Laoe;->b:I

    invoke-direct {p0, v0, v1, p1, v5}, Laoe;->a(IILandroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 1908
    :cond_9
    iget-boolean v0, p0, Laoe;->j:Z

    invoke-direct {p0, p1, v1, v5, v0}, Laoe;->a(Landroid/graphics/Canvas;ILandroid/graphics/drawable/Drawable;Z)V

    goto :goto_2

    .line 1913
    :cond_a
    if-ge v4, v0, :cond_f

    .line 1914
    iget v6, p0, Laoe;->b:I

    .line 1915
    iget v0, p0, Laoe;->b:I

    move v1, v0

    :goto_4
    if-ltz v1, :cond_8

    .line 1916
    iget-object v0, p0, Laoe;->c:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 1918
    iget v7, p0, Laoe;->p:F

    iget v8, p0, Laoe;->k:I

    int-to-float v8, v8

    add-float/2addr v7, v8

    .line 1919
    int-to-float v8, v4

    cmpl-float v8, v0, v8

    if-lez v8, :cond_c

    .line 1920
    iget v0, p0, Laoe;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Laoe;->b:I

    .line 1915
    :cond_b
    :goto_5
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_4

    .line 1924
    :cond_c
    add-float/2addr v0, v7

    int-to-float v7, v3

    cmpg-float v0, v0, v7

    if-gez v0, :cond_d

    .line 1925
    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Laoe;->a:I

    .line 1927
    iget v0, p0, Laoe;->a:I

    iget-object v1, p0, Laoe;->a:Laor;

    iget-object v1, v1, Laor;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int v1, v2, v1

    add-int/lit8 v1, v1, -0x1

    if-gt v0, v1, :cond_8

    .line 1930
    invoke-virtual {p0}, Laoe;->d()Z

    goto :goto_3

    .line 1935
    :cond_d
    if-nez v1, :cond_e

    .line 1936
    iput v1, p0, Laoe;->a:I

    .line 1940
    :cond_e
    iget-boolean v0, p0, Laoe;->j:Z

    invoke-direct {p0, p1, v1, v5, v0}, Laoe;->a(Landroid/graphics/Canvas;ILandroid/graphics/drawable/Drawable;Z)V

    .line 1942
    iget-object v0, p0, Laoe;->a:Laor;

    invoke-virtual {v0, v1}, Laor;->a(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1944
    if-nez v0, :cond_b

    .line 1945
    if-ne v1, v6, :cond_b

    .line 1946
    iget v0, p0, Laoe;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Laoe;->b:I

    goto :goto_5

    .line 1951
    :cond_f
    if-ne v4, v0, :cond_8

    .line 1952
    iget v0, p0, Laoe;->a:I

    :goto_6
    iget v1, p0, Laoe;->b:I

    if-gt v0, v1, :cond_8

    .line 1953
    iget-boolean v1, p0, Laoe;->j:Z

    invoke-direct {p0, p1, v0, v5, v1}, Laoe;->a(Landroid/graphics/Canvas;ILandroid/graphics/drawable/Drawable;Z)V

    .line 1952
    add-int/lit8 v0, v0, 0x1

    goto :goto_6
.end method

.method private t()V
    .locals 3

    .prologue
    .line 1290
    iget-boolean v0, p0, Laoe;->c:Z

    if-eqz v0, :cond_1

    .line 1292
    iget-boolean v0, p0, Laoe;->r:Z

    if-eqz v0, :cond_2

    .line 1293
    invoke-virtual {p0}, Laoe;->a()I

    move-result v0

    .line 1297
    :goto_0
    iget v1, p0, Laoe;->g:I

    if-eq v1, v0, :cond_1

    .line 1298
    iget-object v1, p0, Laoe;->a:Laoq;

    if-eqz v1, :cond_0

    .line 1299
    iget-object v1, p0, Laoe;->a:Laoq;

    iget-object v2, p0, Laoe;->a:Laor;

    invoke-virtual {v2, v0}, Laor;->a(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Laoq;->b(ILjava/lang/CharSequence;)Z

    .line 1301
    :cond_0
    iput v0, p0, Laoe;->g:I

    .line 1304
    :cond_1
    return-void

    .line 1295
    :cond_2
    iget v0, p0, Laoe;->f:I

    goto :goto_0
.end method


# virtual methods
.method public a(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 228
    sget-object v0, Laoe;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    sget-object v0, Laoe;->a:Ljava/util/List;

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 234
    :goto_0
    return-object v0

    .line 230
    :cond_1
    sget-object v0, Laoe;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sget-object v2, Laoe;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 231
    if-ltz p1, :cond_2

    if-ge p1, v0, :cond_2

    sget-object v0, Laoe;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 232
    sget-object v0, Laoe;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 234
    goto :goto_0
.end method

.method public a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .parameter

    .prologue
    .line 197
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gtz v0, :cond_2

    .line 198
    :cond_0
    const/4 p1, 0x0

    .line 204
    :cond_1
    :goto_0
    return-object p1

    .line 199
    :cond_2
    iget v0, p0, Laoe;->m:I

    if-nez v0, :cond_1

    iget-boolean v0, p0, Laoe;->z:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_1

    .line 202
    iget-object v0, p0, Laoe;->a:Landroid/content/Context;

    const v1, 0x7f0b03fd

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public a()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 334
    iput-object v0, p0, Laoe;->b:Landroid/graphics/drawable/Drawable;

    .line 335
    iput-object v0, p0, Laoe;->c:Landroid/graphics/drawable/Drawable;

    .line 336
    invoke-virtual {p0, v0}, Laoe;->a(Landroid/graphics/drawable/Drawable;)V

    .line 337
    iget-object v0, p0, Laoe;->a:Lapn;

    invoke-virtual {v0}, Lapn;->a()V

    .line 338
    iget-object v0, p0, Laoe;->b:Ljava/util/Vector;

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Laoe;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 341
    :cond_0
    iget-object v0, p0, Laoe;->c:Ljava/util/Vector;

    if-eqz v0, :cond_1

    .line 342
    iget-object v0, p0, Laoe;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 345
    :cond_1
    return-void
.end method

.method public a(I)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 1257
    iput-boolean v0, p0, Laoe;->d:Z

    .line 1258
    iput p1, p0, Laoe;->n:I

    .line 1259
    invoke-virtual {p0}, Laoe;->l()V

    .line 1261
    iput-boolean v0, p0, Laoe;->c:Z

    .line 1262
    return-void
.end method

.method public a(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1420
    iput p1, p0, Laoe;->N:I

    .line 1421
    iput p2, p0, Laoe;->M:I

    .line 1422
    iget v0, p0, Laoe;->M:I

    if-lez v0, :cond_0

    iget-boolean v0, p0, Laoe;->r:Z

    if-eqz v0, :cond_0

    .line 1423
    iget v0, p0, Laoe;->M:I

    iput v0, p0, Laoe;->O:I

    .line 1425
    :cond_0
    return-void
.end method

.method public a(IIFF)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 646
    const/4 v0, -0x1

    .line 647
    const/4 v1, 0x0

    .line 648
    const/4 v2, 0x0

    .line 651
    iget-object v3, p0, Laoe;->a:Laor;

    invoke-virtual {v3}, Laor;->b()I

    move-result v7

    move v3, p4

    move v6, p3

    .line 653
    :goto_0
    if-ge p2, v7, :cond_17

    .line 654
    iget-object v4, p0, Laoe;->a:Laor;

    invoke-virtual {v4, p2}, Laor;->a(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 655
    if-nez v4, :cond_0

    move v4, v6

    move v10, v0

    move v0, v2

    move v2, v10

    .line 653
    :goto_1
    add-int/lit8 p2, p2, 0x1

    move v6, v4

    move v10, v2

    move v2, v0

    move v0, v10

    goto :goto_0

    .line 658
    :cond_0
    const/4 v5, -0x1

    if-ne v0, v5, :cond_2

    .line 659
    iget v0, p0, Laoe;->o:F

    invoke-direct {p0, v4, v0, p2}, Laoe;->a(Ljava/lang/CharSequence;FI)I

    move-result v0

    move v1, v0

    .line 665
    :cond_1
    :goto_2
    iget v0, p0, Laoe;->o:F

    int-to-float v4, v1

    mul-float v8, v0, v4

    .line 666
    const/4 v4, -0x1

    .line 669
    sub-int v0, p1, v2

    if-ge v1, v0, :cond_b

    add-int/lit8 v0, v7, -0x1

    if-ge p2, v0, :cond_b

    .line 670
    iget-object v0, p0, Laoe;->a:Laor;

    add-int/lit8 v5, p2, 0x1

    invoke-virtual {v0, v5}, Laor;->a(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 672
    if-nez v0, :cond_3

    move v0, v2

    move v2, v4

    move v4, v6

    .line 673
    goto :goto_1

    .line 660
    :cond_2
    if-lez v0, :cond_1

    move v1, v0

    .line 662
    goto :goto_2

    .line 675
    :cond_3
    iget v4, p0, Laoe;->o:F

    invoke-direct {p0, v0, v4, p2}, Laoe;->a(Ljava/lang/CharSequence;FI)I

    move-result v5

    .line 679
    add-int v0, v2, v1

    add-int/2addr v0, v5

    if-le v0, p1, :cond_7

    .line 681
    iget v0, p0, Laoe;->c:I

    iget v2, p0, Laoe;->k:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    sub-float v2, v0, v6

    .line 683
    iget-object v0, p0, Laoe;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-le v0, p2, :cond_4

    .line 684
    iget-object v0, p0, Laoe;->a:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    add-float/2addr v2, v6

    iget v4, p0, Laoe;->p:F

    add-float/2addr v4, v3

    invoke-virtual {v0, v6, v3, v2, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 691
    :goto_3
    iget v0, p0, Laoe;->y:I

    int-to-float v4, v0

    .line 692
    iget v0, p0, Laoe;->p:F

    iget v2, p0, Laoe;->l:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    add-float v2, v3, v0

    .line 693
    const/4 v0, 0x0

    .line 694
    iget-object v3, p0, Laoe;->b:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    add-int/lit8 v6, p2, 0x1

    if-le v3, v6, :cond_5

    .line 695
    iget-object v3, p0, Laoe;->b:Ljava/util/Vector;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    add-int/lit8 v8, p2, 0x1

    invoke-virtual {v3, v6, v8}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 701
    :goto_4
    iget-object v3, p0, Laoe;->c:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    add-int/lit8 v6, p2, 0x1

    if-le v3, v6, :cond_6

    .line 702
    iget-object v3, p0, Laoe;->c:Ljava/util/Vector;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    add-int/lit8 v8, p2, 0x1

    invoke-virtual {v3, v6, v8}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    move v3, v4

    :goto_5
    move v4, v3

    move v3, v2

    move v2, v5

    .line 733
    goto/16 :goto_1

    .line 687
    :cond_4
    iget-object v0, p0, Laoe;->a:Ljava/util/Vector;

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v0, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 688
    iget-object v0, p0, Laoe;->a:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    add-float/2addr v2, v6

    iget v4, p0, Laoe;->p:F

    add-float/2addr v4, v3

    invoke-virtual {v0, v6, v3, v2, v4}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_3

    .line 697
    :cond_5
    iget-object v3, p0, Laoe;->b:Ljava/util/Vector;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 704
    :cond_6
    iget-object v3, p0, Laoe;->c:Ljava/util/Vector;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    move v3, v4

    goto :goto_5

    .line 708
    :cond_7
    add-int/2addr v2, v1

    .line 710
    iget-object v0, p0, Laoe;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-le v0, p2, :cond_8

    .line 711
    iget-object v0, p0, Laoe;->a:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    add-float v4, v6, v8

    iget v9, p0, Laoe;->p:F

    add-float/2addr v9, v3

    invoke-virtual {v0, v6, v3, v4, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 718
    :goto_6
    iget v0, p0, Laoe;->k:I

    int-to-float v0, v0

    add-float/2addr v0, v8

    add-float/2addr v0, v6

    .line 719
    iget-object v4, p0, Laoe;->b:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    add-int/lit8 v6, p2, 0x1

    if-le v4, v6, :cond_9

    .line 720
    iget-object v4, p0, Laoe;->b:Ljava/util/Vector;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    add-int/lit8 v8, p2, 0x1

    invoke-virtual {v4, v6, v8}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 726
    :goto_7
    iget-object v4, p0, Laoe;->c:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    add-int/lit8 v6, p2, 0x1

    if-le v4, v6, :cond_a

    .line 727
    iget-object v4, p0, Laoe;->c:Ljava/util/Vector;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    add-int/lit8 v8, p2, 0x1

    invoke-virtual {v4, v6, v8}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    move v10, v2

    move v2, v3

    move v3, v0

    move v0, v10

    goto :goto_5

    .line 714
    :cond_8
    iget-object v0, p0, Laoe;->a:Ljava/util/Vector;

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v0, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 715
    iget-object v0, p0, Laoe;->a:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    add-float v4, v6, v8

    iget v9, p0, Laoe;->p:F

    add-float/2addr v9, v3

    invoke-virtual {v0, v6, v3, v4, v9}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_6

    .line 722
    :cond_9
    iget-object v4, p0, Laoe;->b:Ljava/util/Vector;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 729
    :cond_a
    iget-object v4, p0, Laoe;->c:Ljava/util/Vector;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    move v10, v2

    move v2, v3

    move v3, v0

    move v0, v10

    goto/16 :goto_5

    .line 733
    :cond_b
    add-int/lit8 v0, v7, -0x1

    if-ne p2, v0, :cond_13

    .line 735
    sub-int v0, p1, v2

    if-ge v1, v0, :cond_f

    .line 736
    add-int/2addr v2, v1

    .line 737
    iget-object v0, p0, Laoe;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-le v0, p2, :cond_c

    .line 738
    iget-object v0, p0, Laoe;->a:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    add-float v5, v6, v8

    iget v9, p0, Laoe;->p:F

    add-float/2addr v9, v3

    invoke-virtual {v0, v6, v3, v5, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 745
    :goto_8
    iget v0, p0, Laoe;->k:I

    int-to-float v0, v0

    add-float/2addr v0, v8

    add-float/2addr v0, v6

    .line 746
    iget-object v5, p0, Laoe;->b:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    add-int/lit8 v6, p2, 0x1

    if-le v5, v6, :cond_d

    .line 747
    iget-object v5, p0, Laoe;->b:Ljava/util/Vector;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    add-int/lit8 v8, p2, 0x1

    invoke-virtual {v5, v6, v8}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 753
    :goto_9
    iget-object v5, p0, Laoe;->c:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    add-int/lit8 v6, p2, 0x1

    if-le v5, v6, :cond_e

    .line 754
    iget-object v5, p0, Laoe;->c:Ljava/util/Vector;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    add-int/lit8 v8, p2, 0x1

    invoke-virtual {v5, v6, v8}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    move v10, v2

    move v2, v4

    move v4, v0

    move v0, v10

    goto/16 :goto_1

    .line 741
    :cond_c
    iget-object v0, p0, Laoe;->a:Ljava/util/Vector;

    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v0, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 742
    iget-object v0, p0, Laoe;->a:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    add-float v5, v6, v8

    iget v9, p0, Laoe;->p:F

    add-float/2addr v9, v3

    invoke-virtual {v0, v6, v3, v5, v9}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_8

    .line 749
    :cond_d
    iget-object v5, p0, Laoe;->b:Ljava/util/Vector;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 756
    :cond_e
    iget-object v5, p0, Laoe;->c:Ljava/util/Vector;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    move v10, v2

    move v2, v4

    move v4, v0

    move v0, v10

    goto/16 :goto_1

    .line 760
    :cond_f
    iget-object v0, p0, Laoe;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-le v0, p2, :cond_10

    .line 761
    iget-object v0, p0, Laoe;->a:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    add-float v2, v6, v8

    iget v5, p0, Laoe;->p:F

    add-float/2addr v5, v3

    invoke-virtual {v0, v6, v3, v2, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 768
    :goto_a
    iget v0, p0, Laoe;->y:I

    int-to-float v2, v0

    .line 769
    iget v0, p0, Laoe;->p:F

    iget v5, p0, Laoe;->l:I

    int-to-float v5, v5

    add-float/2addr v0, v5

    add-float/2addr v3, v0

    .line 770
    const/4 v0, 0x0

    .line 771
    iget-object v5, p0, Laoe;->b:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    add-int/lit8 v6, p2, 0x1

    if-le v5, v6, :cond_11

    .line 772
    iget-object v5, p0, Laoe;->b:Ljava/util/Vector;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    add-int/lit8 v8, p2, 0x1

    invoke-virtual {v5, v6, v8}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 778
    :goto_b
    iget-object v5, p0, Laoe;->c:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    add-int/lit8 v6, p2, 0x1

    if-le v5, v6, :cond_12

    .line 779
    iget-object v5, p0, Laoe;->c:Ljava/util/Vector;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    add-int/lit8 v8, p2, 0x1

    invoke-virtual {v5, v6, v8}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    move v10, v4

    move v4, v2

    move v2, v10

    goto/16 :goto_1

    .line 764
    :cond_10
    iget-object v0, p0, Laoe;->a:Ljava/util/Vector;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 765
    iget-object v0, p0, Laoe;->a:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    add-float v2, v6, v8

    iget v5, p0, Laoe;->p:F

    add-float/2addr v5, v3

    invoke-virtual {v0, v6, v3, v2, v5}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_a

    .line 774
    :cond_11
    iget-object v5, p0, Laoe;->b:Ljava/util/Vector;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 781
    :cond_12
    iget-object v5, p0, Laoe;->c:Ljava/util/Vector;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    move v10, v4

    move v4, v2

    move v2, v10

    goto/16 :goto_1

    .line 785
    :cond_13
    sub-int v0, p1, v2

    if-lt v1, v0, :cond_18

    .line 789
    iget-object v0, p0, Laoe;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-le v0, p2, :cond_14

    .line 790
    iget-object v0, p0, Laoe;->a:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    add-float v2, v6, v8

    iget v5, p0, Laoe;->p:F

    add-float/2addr v5, v3

    invoke-virtual {v0, v6, v3, v2, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 797
    :goto_c
    iget v0, p0, Laoe;->y:I

    int-to-float v2, v0

    .line 798
    iget v0, p0, Laoe;->p:F

    iget v5, p0, Laoe;->l:I

    int-to-float v5, v5

    add-float/2addr v0, v5

    add-float/2addr v3, v0

    .line 799
    const/4 v0, 0x0

    .line 800
    iget-object v5, p0, Laoe;->b:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    add-int/lit8 v6, p2, 0x1

    if-le v5, v6, :cond_15

    .line 801
    iget-object v5, p0, Laoe;->b:Ljava/util/Vector;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    add-int/lit8 v8, p2, 0x1

    invoke-virtual {v5, v6, v8}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 807
    :goto_d
    iget-object v5, p0, Laoe;->c:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    add-int/lit8 v6, p2, 0x1

    if-le v5, v6, :cond_16

    .line 808
    iget-object v5, p0, Laoe;->c:Ljava/util/Vector;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    add-int/lit8 v8, p2, 0x1

    invoke-virtual {v5, v6, v8}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    move v10, v4

    move v4, v2

    move v2, v10

    goto/16 :goto_1

    .line 793
    :cond_14
    iget-object v0, p0, Laoe;->a:Ljava/util/Vector;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 794
    iget-object v0, p0, Laoe;->a:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    add-float v2, v6, v8

    iget v5, p0, Laoe;->p:F

    add-float/2addr v5, v3

    invoke-virtual {v0, v6, v3, v2, v5}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_c

    .line 803
    :cond_15
    iget-object v5, p0, Laoe;->b:Ljava/util/Vector;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 810
    :cond_16
    iget-object v5, p0, Laoe;->c:Ljava/util/Vector;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    move v10, v4

    move v4, v2

    move v2, v10

    goto/16 :goto_1

    .line 815
    :cond_17
    return-void

    :cond_18
    move v0, v2

    move v2, v4

    move v4, v6

    goto/16 :goto_1
.end method

.method public a(IIII)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2260
    iget-object v0, p0, Laoe;->d:Landroid/graphics/Rect;

    iget-object v1, p0, Laoe;->c:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2261
    iget-object v0, p0, Laoe;->c:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2266
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 246
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 248
    const v1, 0x7f090001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Laoe;->j:I

    .line 250
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Laoe;->a:Landroid/graphics/Paint;

    .line 251
    iget-object v1, p0, Laoe;->a:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 253
    iget-object v1, p0, Laoe;->a:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    iput-object v1, p0, Laoe;->a:Landroid/graphics/Paint$FontMetricsInt;

    .line 255
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Laoe;->b:Landroid/graphics/Paint;

    .line 256
    iget-object v1, p0, Laoe;->b:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 257
    iget-object v1, p0, Laoe;->b:Landroid/graphics/Paint;

    const/high16 v2, 0x7f09

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 258
    invoke-virtual {p0, v3}, Laoe;->g(Z)V

    .line 260
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Laoe;->a:Ljava/util/Vector;

    .line 261
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Laoe;->b:Ljava/util/Vector;

    .line 263
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Laoe;->c:Ljava/util/Vector;

    .line 265
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Laoe;->d:Ljava/util/Vector;

    .line 266
    sget v0, Laox;->a:I

    int-to-float v0, v0

    const v1, 0x3c99999a

    mul-float/2addr v0, v1

    iput v0, p0, Laoe;->f:F

    .line 267
    sget v0, Laox;->a:I

    int-to-float v0, v0

    const v1, 0x3d99999a

    mul-float/2addr v0, v1

    iput v0, p0, Laoe;->a:F

    .line 268
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    iput-object v0, p0, Laoe;->a:Landroid/text/Layout$Alignment;

    .line 269
    iput v4, p0, Laoe;->N:I

    .line 271
    new-instance v0, Lapn;

    iget-object v1, p0, Laoe;->a:Landroid/view/View;

    invoke-direct {v0, p1, v1, v3}, Lapn;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    iput-object v0, p0, Laoe;->a:Lapn;

    .line 273
    iput-boolean v3, p0, Laoe;->f:Z

    .line 275
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Laoe;->c:Landroid/graphics/Rect;

    .line 276
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Laoe;->d:Landroid/graphics/Rect;

    .line 277
    iget-object v0, p0, Laoe;->c:Landroid/graphics/Rect;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 279
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Laoe;->e:Landroid/graphics/Rect;

    .line 280
    return-void
.end method

.method public a(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 1476
    iget v0, p0, Laoe;->C:I

    iget v1, p0, Laoe;->D:I

    iget v2, p0, Laoe;->C:I

    iget v3, p0, Laoe;->t:I

    add-int/2addr v2, v3

    iget v3, p0, Laoe;->y:I

    sub-int/2addr v2, v3

    iget v3, p0, Laoe;->z:I

    sub-int/2addr v2, v3

    iget v3, p0, Laoe;->D:I

    iget v4, p0, Laoe;->u:I

    add-int/2addr v3, v4

    iget v4, p0, Laoe;->A:I

    sub-int/2addr v3, v4

    iget v4, p0, Laoe;->B:I

    sub-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Laoe;->a(IIII)V

    .line 1479
    iget-object v0, p0, Laoe;->e:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    .line 1481
    iget-object v0, p0, Laoe;->a:Laor;

    if-nez v0, :cond_1

    .line 1492
    :cond_0
    :goto_0
    return-void

    .line 1483
    :cond_1
    iget-boolean v0, p0, Laoe;->s:Z

    if-eqz v0, :cond_2

    .line 1484
    invoke-direct {p0, p1}, Laoe;->d(Landroid/graphics/Canvas;)V

    .line 1488
    :goto_1
    iget-object v0, p0, Laoe;->e:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget v1, p0, Laoe;->u:I

    iget v2, p0, Laoe;->A:I

    sub-int/2addr v1, v2

    iget v2, p0, Laoe;->B:I

    sub-int/2addr v1, v2

    if-lt v0, v1, :cond_0

    .line 1489
    iput-boolean v5, p0, Laoe;->a:Z

    goto :goto_0

    .line 1486
    :cond_2
    iget v0, p0, Laoe;->e:I

    invoke-direct {p0, p1, v0, v5}, Laoe;->a(Landroid/graphics/Canvas;IZ)V

    goto :goto_1
.end method

.method public a(Laor;IZ)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1383
    if-nez p1, :cond_1

    .line 1400
    :cond_0
    :goto_0
    return-void

    .line 1385
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Laoe;->a(Laor;IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1389
    invoke-direct {p0, p1}, Laoe;->a(Laor;)V

    .line 1391
    iget-boolean v0, p0, Laoe;->r:Z

    if-eqz v0, :cond_2

    .line 1392
    invoke-virtual {p0}, Laoe;->e()V

    .line 1394
    :cond_2
    if-eqz p3, :cond_3

    const/4 v0, 0x0

    :goto_1
    iput v0, p0, Laoe;->g:I

    .line 1395
    invoke-direct {p0, p2, p3}, Laoe;->a(IZ)V

    .line 1396
    const/4 v0, 0x1

    iput-boolean v0, p0, Laoe;->a:Z

    goto :goto_0

    .line 1394
    :cond_3
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public a(Laor;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1342
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Laoe;->a(Laor;IZ)V

    .line 1343
    return-void
.end method

.method public a(Lawc;Lawe;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/high16 v5, -0x4080

    .line 1128
    if-nez p2, :cond_0

    .line 1197
    :goto_0
    return-void

    .line 1131
    :cond_0
    iput v6, p0, Laoe;->k:I

    .line 1133
    invoke-virtual {p2}, Lawe;->a()Lawv;

    move-result-object v1

    .line 1134
    invoke-virtual {p2}, Lawe;->d()Lawv;

    move-result-object v2

    .line 1135
    iget v0, v1, Lawv;->a:I

    invoke-virtual {p2}, Lawe;->b()I

    move-result v3

    add-int/2addr v3, v0

    .line 1137
    int-to-float v0, v3

    iput v0, p0, Laoe;->n:F

    .line 1139
    invoke-virtual {p2}, Lawe;->c()Lawv;

    move-result-object v0

    .line 1140
    iput v5, p0, Laoe;->m:F

    .line 1141
    if-eqz v0, :cond_1

    .line 1142
    iget v0, v0, Lawv;->a:I

    invoke-virtual {p2}, Lawe;->b()I

    move-result v4

    add-int/2addr v0, v4

    int-to-float v0, v0

    iput v0, p0, Laoe;->m:F

    .line 1145
    :cond_1
    iget-object v4, p0, Laoe;->a:Landroid/graphics/Paint;

    iget-boolean v0, p0, Laoe;->z:Z

    if-eqz v0, :cond_7

    iget v0, p0, Laoe;->m:F

    cmpl-float v0, v0, v5

    if-eqz v0, :cond_6

    iget v0, p0, Laoe;->m:F

    :goto_1
    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1149
    sget-boolean v0, Laox;->b:Z

    if-eqz v0, :cond_2

    .line 1150
    iget-object v0, p0, Laoe;->a:Landroid/graphics/Paint;

    iget-object v4, v1, Lawv;->a:Landroid/graphics/Typeface;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1151
    :cond_2
    iget-object v0, p0, Laoe;->a:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    iput-object v0, p0, Laoe;->a:Landroid/graphics/Paint$FontMetricsInt;

    .line 1152
    iget-object v0, p0, Laoe;->a:Landroid/graphics/Paint;

    const-string v4, "..."

    const-string v5, "..."

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v0, v4, v6, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v0

    iput v0, p0, Laoe;->e:F

    .line 1155
    int-to-float v0, v3

    const v3, 0x3ecccccd

    mul-float/2addr v0, v3

    .line 1156
    iget-object v3, p0, Laoe;->b:Landroid/graphics/Paint;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1157
    iget-object v3, p0, Laoe;->b:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v3

    iput-object v3, p0, Laoe;->b:Landroid/graphics/Paint$FontMetricsInt;

    .line 1161
    iget-boolean v3, p0, Laoe;->b:Z

    if-eqz v3, :cond_8

    :goto_2
    iput v0, p0, Laoe;->b:F

    .line 1163
    iget v0, v1, Lawv;->b:I

    iput v0, p0, Laoe;->j:I

    .line 1164
    iget v0, v1, Lawv;->b:I

    iput v0, p0, Laoe;->i:I

    .line 1165
    if-eqz v2, :cond_3

    .line 1166
    iget v0, v2, Lawv;->b:I

    iput v0, p0, Laoe;->i:I

    .line 1168
    :cond_3
    iget v0, p0, Laoe;->M:I

    if-lez v0, :cond_4

    .line 1169
    iget v0, p0, Laoe;->c:I

    iget v1, p0, Laoe;->M:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Laoe;->k:I

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Laoe;->M:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Laoe;->o:F

    .line 1170
    :cond_4
    iget v0, p0, Laoe;->N:I

    if-lez v0, :cond_5

    .line 1171
    iget v0, p0, Laoe;->d:I

    iget v1, p0, Laoe;->N:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Laoe;->l:I

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Laoe;->N:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Laoe;->p:F

    .line 1176
    :cond_5
    invoke-virtual {p2}, Lawe;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Laoe;->b:Landroid/graphics/drawable/Drawable;

    .line 1178
    invoke-virtual {p2}, Lawe;->a()Laxn;

    move-result-object v0

    iput-object v0, p0, Laoe;->a:Laxn;

    .line 1179
    invoke-virtual {p2}, Lawe;->e()Lawv;

    move-result-object v0

    iput-object v0, p0, Laoe;->a:Lawv;

    .line 1181
    iget-object v0, p0, Laoe;->a:Lapn;

    invoke-virtual {v0, p2}, Lapn;->a(Lawe;)V

    .line 1185
    invoke-virtual {p2}, Lawe;->a()Landroid/graphics/Rect;

    move-result-object v0

    .line 1186
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v1, v2, v3, v0}, Laoe;->d(IIII)V

    .line 1191
    iget-object v0, p0, Laoe;->a:Landroid/content/Context;

    invoke-static {v0}, Laxc;->a(Landroid/content/Context;)Laxc;

    move-result-object v0

    invoke-virtual {v0}, Laxc;->b()Lawc;

    move-result-object v0

    sget-object v1, Lawd;->m:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lawc;->a(Ljava/lang/Integer;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoe;->b(Landroid/graphics/drawable/Drawable;)V

    .line 1192
    invoke-virtual {p2}, Lawe;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lawh;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoe;->a(Landroid/graphics/drawable/Drawable;)V

    .line 1193
    iget v0, p0, Laoe;->t:I

    iget v1, p0, Laoe;->y:I

    sub-int/2addr v0, v1

    iget v1, p0, Laoe;->z:I

    sub-int/2addr v0, v1

    iput v0, p0, Laoe;->c:I

    .line 1194
    iget v0, p0, Laoe;->u:I

    iget v1, p0, Laoe;->A:I

    sub-int/2addr v0, v1

    iget v1, p0, Laoe;->B:I

    sub-int/2addr v0, v1

    iput v0, p0, Laoe;->d:I

    .line 1195
    invoke-virtual {p0}, Laoe;->l()V

    .line 1196
    invoke-virtual {p0}, Laoe;->m()V

    goto/16 :goto_0

    .line 1145
    :cond_6
    iget v0, p0, Laoe;->n:F

    goto/16 :goto_1

    :cond_7
    iget v0, p0, Laoe;->n:F

    goto/16 :goto_1

    .line 1161
    :cond_8
    const/4 v0, 0x0

    goto/16 :goto_2
.end method

.method public a(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 215
    sput-object p1, Laoe;->a:Ljava/util/List;

    .line 216
    sput-object p2, Laoe;->b:Ljava/util/List;

    .line 217
    return-void
.end method

.method public a(Z)V
    .locals 3
    .parameter

    .prologue
    .line 2135
    iput-boolean p1, p0, Laoe;->z:Z

    .line 2136
    iget-object v1, p0, Laoe;->a:Landroid/graphics/Paint;

    if-eqz p1, :cond_1

    iget v0, p0, Laoe;->m:F

    const/high16 v2, -0x4080

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_0

    iget v0, p0, Laoe;->m:F

    :goto_0
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2140
    iget-object v0, p0, Laoe;->a:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    iput-object v0, p0, Laoe;->a:Landroid/graphics/Paint$FontMetricsInt;

    .line 2141
    return-void

    .line 2136
    :cond_0
    iget v0, p0, Laoe;->n:F

    goto :goto_0

    :cond_1
    iget v0, p0, Laoe;->n:F

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 2150
    iget-boolean v0, p0, Laoe;->z:Z

    return v0
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter

    .prologue
    const-wide/16 v8, 0x0

    const v4, 0x7fffffff

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2003
    iget-object v0, p0, Laoe;->a:Laor;

    if-nez v0, :cond_1

    .line 2125
    :cond_0
    :goto_0
    :pswitch_0
    return v7

    .line 2008
    :cond_1
    iget-boolean v0, p0, Laoe;->r:Z

    if-nez v0, :cond_2

    .line 2009
    iget-object v0, p0, Laoe;->a:Laor;

    iget v1, p0, Laoe;->e:I

    invoke-virtual {v0, v1}, Laor;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2014
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v2, v0

    .line 2015
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v3, v0

    .line 2018
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2081
    :pswitch_1
    iput v2, p0, Laoe;->P:I

    .line 2082
    iput v3, p0, Laoe;->Q:I

    .line 2083
    iget-boolean v0, p0, Laoe;->m:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Laoe;->z:Z

    if-nez v0, :cond_a

    .line 2084
    invoke-direct {p0, v2, v3}, Laoe;->a(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 2085
    if-eq v0, v4, :cond_0

    .line 2087
    invoke-virtual {p0, v0}, Laoe;->a(I)V

    .line 2088
    invoke-virtual {p0, v0}, Laoe;->e(I)V

    goto :goto_0

    .line 2020
    :pswitch_2
    const-string v0, "MotionEvent.ACTION_UP"

    invoke-static {v0}, Laoe;->a(Ljava/lang/String;)V

    .line 2022
    iget-boolean v0, p0, Laoe;->e:Z

    if-eqz v0, :cond_3

    .line 2023
    invoke-virtual {p0}, Laoe;->h()V

    goto :goto_0

    .line 2027
    :cond_3
    invoke-direct {p0, v2, v3}, Laoe;->a(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 2029
    if-eq v1, v4, :cond_8

    .line 2032
    iget-boolean v0, p0, Laoe;->r:Z

    if-nez v0, :cond_d

    .line 2033
    iget-object v0, p0, Laoe;->a:Laor;

    iget-object v0, v0, Laor;->a:Ljava/util/Vector;

    iget v4, p0, Laoe;->e:I

    invoke-virtual {v0, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v1

    .line 2035
    :goto_1
    iget-boolean v4, p0, Laoe;->m:Z

    if-eqz v4, :cond_4

    .line 2036
    iget-object v4, p0, Laoe;->a:Lave;

    iget v5, p0, Laoe;->e:I

    invoke-virtual {v4, v8, v9, v5, v1}, Lave;->a(JII)V

    .line 2039
    :cond_4
    iget-object v1, p0, Laoe;->a:Laoq;

    if-eqz v1, :cond_7

    .line 2050
    iget-object v1, p0, Laoe;->a:Laoq;

    iget-object v4, p0, Laoe;->a:Laor;

    invoke-virtual {v4, v0}, Laor;->a(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v1, v0, v4, v2, v3}, Laoq;->a(ILjava/lang/CharSequence;II)Z

    move-result v0

    .line 2052
    iget-object v1, p0, Laoe;->a:Landroid/content/Context;

    invoke-static {v1}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v1

    iget v2, v1, Lamo;->ae:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lamo;->ae:I

    .line 2053
    if-eqz v0, :cond_7

    iget-boolean v0, p0, Laoe;->m:Z

    if-nez v0, :cond_7

    .line 2054
    iget-boolean v0, p0, Laoe;->x:Z

    if-ne v0, v7, :cond_5

    .line 2055
    iput-boolean v6, p0, Laoe;->c:Z

    .line 2056
    iput-boolean v6, p0, Laoe;->x:Z

    .line 2058
    :cond_5
    iget-boolean v0, p0, Laoe;->z:Z

    if-eqz v0, :cond_6

    .line 2059
    iput-boolean v6, p0, Laoe;->c:Z

    .line 2060
    iput-boolean v6, p0, Laoe;->y:Z

    .line 2062
    :cond_6
    iput-boolean v6, p0, Laoe;->d:Z

    .line 2063
    invoke-virtual {p0}, Laoe;->l()V

    .line 2074
    :cond_7
    :goto_2
    const/4 v0, -0x1

    iput v0, p0, Laoe;->n:I

    .line 2075
    iget-object v0, p0, Laoe;->a:Laxn;

    iget v0, v0, Laxn;->f:I

    .line 2076
    iget-object v1, p0, Laoe;->a:Lapn;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lapn;->a(J)V

    goto/16 :goto_0

    .line 2067
    :cond_8
    iget-boolean v0, p0, Laoe;->z:Z

    if-eqz v0, :cond_9

    .line 2068
    iput-boolean v6, p0, Laoe;->c:Z

    .line 2069
    iput-boolean v6, p0, Laoe;->d:Z

    .line 2070
    invoke-virtual {p0}, Laoe;->l()V

    goto :goto_2

    .line 2072
    :cond_9
    invoke-virtual {p0}, Laoe;->l()V

    goto :goto_2

    .line 2092
    :cond_a
    iput-boolean v6, p0, Laoe;->e:Z

    .line 2094
    invoke-direct {p0, v2, v3}, Laoe;->a(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 2095
    if-eq v0, v4, :cond_0

    .line 2097
    invoke-virtual {p0, v0}, Laoe;->e(I)V

    .line 2098
    iget-object v1, p0, Laoe;->a:Lave;

    iget v2, p0, Laoe;->e:I

    invoke-virtual {v1, v8, v9, v2, v0}, Lave;->a(JII)V

    goto/16 :goto_0

    .line 2107
    :pswitch_3
    iget-boolean v0, p0, Laoe;->r:Z

    if-nez v0, :cond_0

    .line 2110
    iget-boolean v0, p0, Laoe;->e:Z

    if-nez v0, :cond_0

    .line 2113
    invoke-direct {p0, v2, v3}, Laoe;->a(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 2114
    if-eq v0, v4, :cond_0

    iget-object v1, p0, Laoe;->a:Lave;

    invoke-virtual {v1}, Lave;->b()I

    move-result v1

    if-ne v0, v1, :cond_b

    iget v1, p0, Laoe;->e:I

    iget-object v2, p0, Laoe;->a:Lave;

    invoke-virtual {v2}, Lave;->a()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 2118
    :cond_b
    iget-object v1, p0, Laoe;->a:Lapn;

    invoke-virtual {v1}, Lapn;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 2119
    iget-object v1, p0, Laoe;->a:Lapn;

    invoke-virtual {v1}, Lapn;->b()V

    .line 2120
    iget-object v1, p0, Laoe;->a:Lapn;

    invoke-virtual {v1}, Lapn;->dismiss()V

    .line 2122
    :cond_c
    iget-object v1, p0, Laoe;->a:Lave;

    iget v2, p0, Laoe;->e:I

    invoke-virtual {v1, v8, v9, v2, v0}, Lave;->a(JII)V

    goto/16 :goto_0

    :cond_d
    move v0, v1

    goto/16 :goto_1

    .line 2018
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public a(Laor;IZ)Z
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1356
    iget-object v0, p0, Laoe;->d:Ljava/util/Vector;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget v0, p0, Laoe;->m:I

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    .line 1370
    :goto_0
    return v0

    .line 1358
    :cond_1
    invoke-virtual {p1}, Laor;->b()I

    move-result v0

    .line 1359
    iget-object v1, p0, Laoe;->d:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    .line 1361
    if-ne v0, v1, :cond_2

    iget v1, p0, Laoe;->f:I

    if-ne p2, v1, :cond_2

    iget-boolean v1, p0, Laoe;->c:Z

    if-eq v1, p3, :cond_3

    :cond_2
    move v0, v2

    .line 1363
    goto :goto_0

    .line 1364
    :cond_3
    iget v1, p0, Laoe;->N:I

    if-lez v1, :cond_6

    iget v1, p0, Laoe;->N:I

    if-le v0, v1, :cond_6

    .line 1365
    iget v0, p0, Laoe;->N:I

    move v1, v0

    :goto_1
    move v4, v3

    .line 1366
    :goto_2
    if-ge v4, v1, :cond_5

    .line 1367
    invoke-virtual {p1, v4}, Laor;->a(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Laoe;->d:Ljava/util/Vector;

    invoke-virtual {v0, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v2

    .line 1368
    goto :goto_0

    .line 1366
    :cond_4
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_2

    :cond_5
    move v0, v3

    .line 1370
    goto :goto_0

    :cond_6
    move v1, v0

    goto :goto_1
.end method

.method protected b()V
    .locals 10

    .prologue
    const/4 v4, 0x0

    .line 356
    iget v8, p0, Laoe;->t:I

    .line 357
    iget v9, p0, Laoe;->u:I

    .line 358
    if-eqz v8, :cond_0

    if-nez v9, :cond_1

    .line 511
    :cond_0
    :goto_0
    return-void

    .line 362
    :cond_1
    if-eqz v8, :cond_2

    iget v0, p0, Laoe;->c:I

    if-eq v0, v8, :cond_2

    .line 363
    iget v0, p0, Laoe;->y:I

    sub-int v0, v8, v0

    iget v1, p0, Laoe;->z:I

    sub-int/2addr v0, v1

    iput v0, p0, Laoe;->c:I

    .line 366
    :cond_2
    if-eqz v9, :cond_3

    iget v0, p0, Laoe;->d:I

    if-eq v0, v9, :cond_3

    .line 367
    iget v0, p0, Laoe;->A:I

    sub-int v0, v9, v0

    iget v1, p0, Laoe;->B:I

    sub-int/2addr v0, v1

    iput v0, p0, Laoe;->d:I

    .line 368
    iget v0, p0, Laoe;->d:I

    iput v0, p0, Laoe;->F:I

    .line 371
    :cond_3
    iget v0, p0, Laoe;->c:I

    iget v1, p0, Laoe;->O:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Laoe;->k:I

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Laoe;->O:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Laoe;->o:F

    .line 373
    iget v0, p0, Laoe;->d:I

    iget v1, p0, Laoe;->N:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Laoe;->l:I

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Laoe;->N:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Laoe;->p:F

    .line 384
    iget-object v0, p0, Laoe;->a:Laor;

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Laoe;->s:Z

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Laoe;->r:Z

    if-eqz v0, :cond_13

    .line 387
    iget-object v0, p0, Laoe;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_4

    .line 388
    iget-object v0, p0, Laoe;->b:Ljava/util/Vector;

    iget v1, p0, Laoe;->y:I

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 390
    :cond_4
    iget-object v0, p0, Laoe;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_5

    .line 391
    iget-object v0, p0, Laoe;->c:Ljava/util/Vector;

    iget v1, p0, Laoe;->A:I

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 394
    :cond_5
    iget-object v0, p0, Laoe;->a:Laor;

    invoke-virtual {v0}, Laor;->b()I

    move-result v2

    .line 398
    iget-object v0, p0, Laoe;->a:Laor;

    iget v0, v0, Laor;->a:I

    .line 399
    iget-object v1, p0, Laoe;->a:Laor;

    invoke-virtual {v1}, Laor;->a()I

    move-result v1

    .line 403
    if-eqz v2, :cond_6

    if-lez v1, :cond_7

    iget-object v3, p0, Laoe;->b:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    mul-int/lit8 v5, v0, 0x2

    sub-int v5, v2, v5

    if-ge v3, v5, :cond_7

    .line 406
    :cond_6
    iget v0, p0, Laoe;->v:I

    iget v1, p0, Laoe;->w:I

    invoke-virtual {p0, v0, v1}, Laoe;->c(II)V

    goto/16 :goto_0

    .line 410
    :cond_7
    iget-object v3, p0, Laoe;->c:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-le v3, v2, :cond_8

    .line 412
    iget v0, p0, Laoe;->v:I

    iget v1, p0, Laoe;->w:I

    invoke-virtual {p0, v0, v1}, Laoe;->c(II)V

    goto/16 :goto_0

    .line 416
    :cond_8
    iget v3, p0, Laoe;->y:I

    int-to-float v5, v3

    .line 417
    iget v3, p0, Laoe;->A:I

    int-to-float v6, v3

    .line 418
    iget v3, p0, Laoe;->O:I

    .line 426
    if-lt v2, v0, :cond_16

    if-lez v1, :cond_16

    .line 427
    sub-int v1, v2, v0

    .line 432
    :goto_1
    iget-object v0, p0, Laoe;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-le v0, v1, :cond_9

    .line 433
    iget-object v0, p0, Laoe;->b:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v5

    .line 435
    :cond_9
    iget-object v0, p0, Laoe;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-le v0, v1, :cond_a

    .line 436
    iget-object v0, p0, Laoe;->c:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v6

    .line 438
    :cond_a
    if-lez v1, :cond_b

    .line 441
    iget-object v0, p0, Laoe;->c:Ljava/util/Vector;

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v0, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 442
    iget-object v0, p0, Laoe;->b:Ljava/util/Vector;

    add-int/lit8 v7, v1, -0x1

    invoke-virtual {v0, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 443
    cmpl-float v4, v6, v4

    if-nez v4, :cond_e

    .line 444
    sub-float v0, v5, v0

    .line 448
    :goto_2
    iget v4, p0, Laoe;->o:F

    float-to-int v4, v4

    int-to-float v4, v4

    div-float/2addr v0, v4

    float-to-int v4, v0

    .line 453
    :cond_b
    const/4 v0, 0x1

    if-ne v4, v0, :cond_f

    sget-object v0, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a()I

    move-result v0

    invoke-static {v0}, Lcom/sohu/inputmethod/engine/IMEInterface;->isPinyinIME(I)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 454
    iget v0, p0, Laoe;->o:F

    div-float v0, v5, v0

    float-to-int v4, v0

    .line 455
    iget v7, p0, Laoe;->o:F

    move-object v0, p0

    .line 457
    invoke-direct/range {v0 .. v7}, Laoe;->a(IIIIFFF)V

    .line 467
    :goto_3
    invoke-direct {p0, v2}, Laoe;->a(I)I

    move-result v3

    .line 469
    iget-object v0, p0, Laoe;->c:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 470
    iget-object v0, p0, Laoe;->c:Ljava/util/Vector;

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 474
    float-to-int v3, v1

    float-to-int v0, v0

    if-ne v3, v0, :cond_11

    .line 475
    iget v0, p0, Laoe;->p:F

    add-float/2addr v0, v1

    iget v1, p0, Laoe;->l:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 482
    :goto_4
    int-to-float v1, v9

    cmpg-float v1, v0, v1

    if-gez v1, :cond_c

    .line 483
    int-to-float v0, v9

    .line 486
    :cond_c
    iget-boolean v1, p0, Laoe;->l:Z

    if-eqz v1, :cond_12

    .line 487
    iget v0, p0, Laoe;->o:I

    if-le v0, v2, :cond_d

    iget v2, p0, Laoe;->o:I

    :cond_d
    iput v2, p0, Laoe;->o:I

    .line 488
    iget v0, p0, Laoe;->p:F

    iget v1, p0, Laoe;->o:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Laoe;->l:I

    iget v2, p0, Laoe;->o:I

    add-int/lit8 v2, v2, -0x1

    mul-int/2addr v1, v2

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 491
    invoke-virtual {p0, v8, v0}, Laoe;->c(II)V

    goto/16 :goto_0

    .line 446
    :cond_e
    iget v4, p0, Laoe;->c:I

    int-to-float v4, v4

    sub-float v0, v4, v0

    iget v4, p0, Laoe;->k:I

    int-to-float v4, v4

    sub-float/2addr v0, v4

    goto :goto_2

    .line 460
    :cond_f
    const/4 v0, 0x2

    if-le v3, v0, :cond_10

    rem-int/lit8 v0, v3, 0x2

    if-nez v0, :cond_10

    .line 461
    invoke-virtual {p0, v3, v1, v5, v6}, Laoe;->b(IIFF)V

    goto :goto_3

    .line 463
    :cond_10
    invoke-virtual {p0, v3, v1, v5, v6}, Laoe;->a(IIFF)V

    goto :goto_3

    :cond_11
    move v0, v1

    .line 478
    goto :goto_4

    .line 493
    :cond_12
    float-to-int v0, v0

    invoke-virtual {p0, v8, v0}, Laoe;->c(II)V

    goto/16 :goto_0

    .line 496
    :cond_13
    iget-boolean v0, p0, Laoe;->l:Z

    if-eqz v0, :cond_15

    iget-boolean v0, p0, Laoe;->r:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, Laoe;->a:Laor;

    if-eqz v0, :cond_15

    .line 497
    iget-object v0, p0, Laoe;->a:Laor;

    invoke-virtual {v0}, Laor;->b()I

    move-result v0

    .line 498
    iget v1, p0, Laoe;->o:I

    if-le v1, v0, :cond_14

    iget v0, p0, Laoe;->o:I

    :cond_14
    iput v0, p0, Laoe;->o:I

    .line 499
    iget v0, p0, Laoe;->p:F

    iget v1, p0, Laoe;->o:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Laoe;->l:I

    iget v2, p0, Laoe;->o:I

    add-int/lit8 v2, v2, -0x1

    mul-int/2addr v1, v2

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 500
    invoke-virtual {p0, v8, v0}, Laoe;->c(II)V

    goto/16 :goto_0

    .line 502
    :cond_15
    invoke-virtual {p0, v8, v9}, Laoe;->c(II)V

    goto/16 :goto_0

    :cond_16
    move v1, v4

    goto/16 :goto_1
.end method

.method public b(I)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 1273
    iput-boolean v0, p0, Laoe;->d:Z

    .line 1274
    iput p1, p0, Laoe;->f:I

    .line 1275
    invoke-virtual {p0}, Laoe;->l()V

    .line 1277
    iput-boolean v0, p0, Laoe;->c:Z

    .line 1278
    iget-boolean v0, p0, Laoe;->z:Z

    if-eqz v0, :cond_0

    .line 1279
    const/4 v0, 0x0

    iput-boolean v0, p0, Laoe;->c:Z

    .line 1281
    :cond_0
    invoke-direct {p0}, Laoe;->t()V

    .line 1282
    return-void
.end method

.method public b(IIFF)V
    .locals 12
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 831
    const/4 v1, 0x0

    .line 838
    iget-object v0, p0, Laoe;->a:Laor;

    invoke-virtual {v0}, Laor;->b()I

    move-result v5

    .line 839
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

    .line 840
    new-array v7, p1, [I

    .line 841
    const/4 v0, 0x0

    :goto_0
    array-length v2, v7

    if-ge v0, v2, :cond_0

    .line 842
    const/4 v2, -0x1

    aput v2, v7, v0

    .line 841
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 844
    :cond_0
    if-lez p2, :cond_2

    iget v0, p0, Laoe;->y:I

    int-to-float v0, v0

    cmpl-float v0, p3, v0

    if-lez v0, :cond_2

    .line 845
    iget-object v0, p0, Laoe;->b:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget-object v0, p0, Laoe;->b:Ljava/util/Vector;

    add-int/lit8 v3, p2, -0x1

    invoke-virtual {v0, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sub-float v0, v2, v0

    iget v2, p0, Laoe;->o:F

    div-float/2addr v0, v2

    float-to-int v0, v0

    .line 848
    const/4 v2, 0x0

    aget v2, v6, v2

    if-le v0, v2, :cond_5

    .line 849
    const/4 v0, 0x0

    const/4 v1, 0x1

    aget v1, v6, v1

    aput v1, v7, v0

    .line 850
    add-int/lit8 v2, p2, -0x1

    .line 867
    :cond_1
    iget-object v0, p0, Laoe;->b:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result p3

    .line 868
    iget-object v0, p0, Laoe;->c:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result p4

    move p2, v2

    :cond_2
    move/from16 v3, p4

    move v4, p3

    .line 871
    :cond_3
    :goto_1
    if-ge p2, v5, :cond_2b

    .line 872
    const/4 v2, 0x0

    .line 874
    const/4 v0, 0x0

    :goto_2
    array-length v1, v7

    if-ge v0, v1, :cond_9

    .line 875
    aget v1, v7, v0

    if-gez v1, :cond_4

    .line 876
    iget-object v1, p0, Laoe;->a:Laor;

    add-int v8, p2, v0

    invoke-virtual {v1, v8}, Laor;->a(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 877
    if-nez v1, :cond_6

    .line 878
    const/4 v1, -0x1

    aput v1, v7, v0

    .line 874
    :cond_4
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 854
    :cond_5
    add-int/lit8 v0, p2, -0x1

    move v3, v0

    move v2, p2

    :goto_4
    if-lez v3, :cond_1

    .line 855
    iget-object v0, p0, Laoe;->c:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v0, v0, p4

    if-nez v0, :cond_2c

    .line 856
    add-int/lit8 v2, v2, -0x1

    .line 859
    const/4 v0, 0x0

    aget v0, v6, v0

    aput v0, v7, v1

    .line 860
    add-int/lit8 v0, v1, 0x1

    .line 861
    if-gt v0, p1, :cond_1

    move v1, v2

    .line 854
    :goto_5
    add-int/lit8 v2, v3, -0x1

    move v3, v2

    move v2, v1

    move v1, v0

    goto :goto_4

    .line 882
    :cond_6
    iget v8, p0, Laoe;->o:F

    add-int v9, p2, v0

    invoke-direct {p0, v1, v8, v9}, Laoe;->a(Ljava/lang/CharSequence;FI)I

    move-result v1

    .line 883
    const/4 v8, 0x0

    aget v8, v6, v8

    if-le v1, v8, :cond_8

    const/4 v8, 0x1

    aget v8, v6, v8

    if-ge v1, v8, :cond_8

    .line 884
    const/4 v1, 0x1

    aget v1, v6, v1

    .line 887
    :cond_7
    :goto_6
    aput v1, v7, v0

    goto :goto_3

    .line 885
    :cond_8
    const/4 v8, 0x1

    aget v8, v6, v8

    if-le v1, v8, :cond_7

    .line 886
    const/4 v1, 0x2

    aget v1, v6, v1

    goto :goto_6

    .line 891
    :cond_9
    const/4 v0, 0x0

    move v1, v0

    move v0, v2

    :goto_7
    array-length v2, v7

    if-ge v1, v2, :cond_3

    .line 892
    aget v2, v7, v1

    .line 893
    if-gez v2, :cond_b

    .line 891
    :cond_a
    :goto_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 895
    :cond_b
    const/4 v8, 0x0

    aget v8, v6, v8

    if-ne v2, v8, :cond_16

    .line 898
    add-int v8, v0, v2

    if-lt v8, p1, :cond_11

    .line 899
    add-int/lit8 v2, p1, -0x1

    if-ne v1, v2, :cond_a

    .line 901
    const/4 v0, 0x0

    move v2, v3

    move v3, v4

    move v4, v0

    :goto_9
    if-gt v4, v1, :cond_10

    .line 902
    iget v0, p0, Laoe;->o:F

    aget v8, v7, v4

    int-to-float v8, v8

    mul-float/2addr v8, v0

    .line 905
    const/4 v0, -0x1

    aput v0, v7, v4

    .line 906
    iget-object v0, p0, Laoe;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int v9, p2, v4

    if-le v0, v9, :cond_c

    .line 907
    iget-object v0, p0, Laoe;->a:Ljava/util/Vector;

    add-int v9, p2, v4

    invoke-virtual {v0, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    add-float v9, v3, v8

    iget v10, p0, Laoe;->p:F

    add-float/2addr v10, v2

    invoke-virtual {v0, v3, v2, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 914
    :goto_a
    if-eq v4, v1, :cond_d

    .line 915
    iget v0, p0, Laoe;->k:I

    int-to-float v0, v0

    add-float/2addr v0, v8

    add-float/2addr v0, v3

    move v11, v2

    move v2, v0

    move v0, v11

    .line 920
    :goto_b
    iget-object v3, p0, Laoe;->b:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    add-int v8, p2, v4

    add-int/lit8 v8, v8, 0x1

    if-le v3, v8, :cond_e

    .line 921
    iget-object v3, p0, Laoe;->b:Ljava/util/Vector;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    add-int v9, p2, v4

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v3, v8, v9}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 925
    :goto_c
    iget-object v3, p0, Laoe;->c:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    add-int v8, p2, v4

    add-int/lit8 v8, v8, 0x1

    if-le v3, v8, :cond_f

    .line 926
    iget-object v3, p0, Laoe;->c:Ljava/util/Vector;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    add-int v9, p2, v4

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v3, v8, v9}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 901
    :goto_d
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v2

    move v2, v0

    goto :goto_9

    .line 910
    :cond_c
    iget-object v0, p0, Laoe;->a:Ljava/util/Vector;

    new-instance v9, Landroid/graphics/RectF;

    invoke-direct {v9}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v0, v9}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 911
    iget-object v0, p0, Laoe;->a:Ljava/util/Vector;

    add-int v9, p2, v4

    invoke-virtual {v0, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    add-float v9, v3, v8

    iget v10, p0, Laoe;->p:F

    add-float/2addr v10, v2

    invoke-virtual {v0, v3, v2, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_a

    .line 917
    :cond_d
    iget v0, p0, Laoe;->y:I

    int-to-float v3, v0

    .line 918
    iget v0, p0, Laoe;->p:F

    iget v8, p0, Laoe;->l:I

    int-to-float v8, v8

    add-float/2addr v0, v8

    add-float/2addr v0, v2

    move v2, v3

    goto :goto_b

    .line 923
    :cond_e
    iget-object v3, p0, Laoe;->b:Ljava/util/Vector;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 928
    :cond_f
    iget-object v3, p0, Laoe;->c:Ljava/util/Vector;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 932
    :cond_10
    add-int/2addr p2, p1

    move v4, v3

    move v3, v2

    .line 933
    goto/16 :goto_1

    .line 939
    :cond_11
    add-int/2addr v0, v2

    .line 942
    add-int v2, p2, v1

    add-int/lit8 v8, v5, -0x1

    if-ne v2, v8, :cond_a

    .line 944
    const/4 v0, 0x0

    move v2, v0

    :goto_e
    if-gt v2, v1, :cond_15

    .line 945
    iget v0, p0, Laoe;->o:F

    aget v8, v7, v2

    int-to-float v8, v8

    mul-float/2addr v8, v0

    .line 947
    iget-object v0, p0, Laoe;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int v9, p2, v2

    if-le v0, v9, :cond_12

    .line 948
    iget-object v0, p0, Laoe;->a:Ljava/util/Vector;

    add-int v9, p2, v2

    invoke-virtual {v0, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    add-float v9, v4, v8

    iget v10, p0, Laoe;->p:F

    add-float/2addr v10, v3

    invoke-virtual {v0, v4, v3, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 956
    :goto_f
    iget v0, p0, Laoe;->k:I

    int-to-float v0, v0

    add-float/2addr v0, v8

    add-float/2addr v4, v0

    .line 958
    iget-object v0, p0, Laoe;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int v8, p2, v2

    add-int/lit8 v8, v8, 0x1

    if-le v0, v8, :cond_13

    .line 959
    iget-object v0, p0, Laoe;->b:Ljava/util/Vector;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    add-int v9, p2, v2

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v0, v8, v9}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 963
    :goto_10
    iget-object v0, p0, Laoe;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int v8, p2, v2

    add-int/lit8 v8, v8, 0x1

    if-le v0, v8, :cond_14

    .line 964
    iget-object v0, p0, Laoe;->c:Ljava/util/Vector;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    add-int v9, p2, v2

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v0, v8, v9}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 944
    :goto_11
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_e

    .line 951
    :cond_12
    iget-object v0, p0, Laoe;->a:Ljava/util/Vector;

    new-instance v9, Landroid/graphics/RectF;

    invoke-direct {v9}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v0, v9}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 952
    iget-object v0, p0, Laoe;->a:Ljava/util/Vector;

    add-int v9, p2, v2

    invoke-virtual {v0, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    add-float v9, v4, v8

    iget v10, p0, Laoe;->p:F

    add-float/2addr v10, v3

    invoke-virtual {v0, v4, v3, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_f

    .line 961
    :cond_13
    iget-object v0, p0, Laoe;->b:Ljava/util/Vector;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 966
    :cond_14
    iget-object v0, p0, Laoe;->c:Ljava/util/Vector;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 971
    :cond_15
    add-int/lit8 v0, v1, 0x1

    add-int/2addr p2, v0

    .line 972
    goto/16 :goto_1

    .line 976
    :cond_16
    const/4 v8, 0x1

    aget v8, v6, v8

    if-ne v2, v8, :cond_23

    .line 977
    if-nez v1, :cond_1b

    .line 980
    add-int/lit8 v8, v5, -0x1

    if-ne p2, v8, :cond_1a

    .line 981
    iget v0, p0, Laoe;->o:F

    int-to-float v1, v2

    mul-float/2addr v1, v0

    .line 982
    iget-object v0, p0, Laoe;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-le v0, p2, :cond_17

    .line 983
    iget-object v0, p0, Laoe;->a:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    add-float v2, v4, v1

    iget v8, p0, Laoe;->p:F

    add-float/2addr v8, v3

    invoke-virtual {v0, v4, v3, v2, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 990
    :goto_12
    iget v0, p0, Laoe;->k:I

    int-to-float v0, v0

    add-float/2addr v0, v1

    add-float/2addr v4, v0

    .line 991
    iget-object v0, p0, Laoe;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v1, p2, 0x1

    if-le v0, v1, :cond_18

    .line 992
    iget-object v0, p0, Laoe;->b:Ljava/util/Vector;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 996
    :goto_13
    iget-object v0, p0, Laoe;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v1, p2, 0x1

    if-le v0, v1, :cond_19

    .line 997
    iget-object v0, p0, Laoe;->c:Ljava/util/Vector;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 1002
    :goto_14
    add-int/lit8 p2, p2, 0x1

    .line 1003
    goto/16 :goto_1

    .line 986
    :cond_17
    iget-object v0, p0, Laoe;->a:Ljava/util/Vector;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 987
    iget-object v0, p0, Laoe;->a:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    add-float v2, v4, v1

    iget v8, p0, Laoe;->p:F

    add-float/2addr v8, v3

    invoke-virtual {v0, v4, v3, v2, v8}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_12

    .line 994
    :cond_18
    iget-object v0, p0, Laoe;->b:Ljava/util/Vector;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 999
    :cond_19
    iget-object v0, p0, Laoe;->c:Ljava/util/Vector;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 1008
    :cond_1a
    const/4 v8, 0x1

    aget v8, v7, v8

    if-ge v8, v2, :cond_a

    .line 1009
    const/4 v8, 0x1

    aput v2, v7, v8

    goto/16 :goto_8

    .line 1018
    :cond_1b
    const/4 v0, 0x0

    :goto_15
    if-ge v0, v1, :cond_1c

    .line 1019
    aput v2, v7, v0

    .line 1018
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 1021
    :cond_1c
    const/4 v8, 0x1

    .line 1023
    const/4 v0, 0x0

    move v1, v3

    move v2, v4

    move v3, v0

    :goto_16
    if-gt v3, v8, :cond_21

    .line 1024
    iget v0, p0, Laoe;->o:F

    aget v4, v7, v3

    int-to-float v4, v4

    mul-float/2addr v4, v0

    .line 1026
    iget-object v0, p0, Laoe;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int v9, p2, v3

    if-le v0, v9, :cond_1d

    .line 1027
    iget-object v0, p0, Laoe;->a:Ljava/util/Vector;

    add-int v9, p2, v3

    invoke-virtual {v0, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    add-float v9, v2, v4

    iget v10, p0, Laoe;->p:F

    add-float/2addr v10, v1

    invoke-virtual {v0, v2, v1, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1034
    :goto_17
    if-eq v3, v8, :cond_1e

    .line 1035
    iget v0, p0, Laoe;->k:I

    int-to-float v0, v0

    add-float/2addr v0, v4

    add-float/2addr v0, v2

    move v11, v1

    move v1, v0

    move v0, v11

    .line 1040
    :goto_18
    iget-object v2, p0, Laoe;->b:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    add-int v4, p2, v3

    add-int/lit8 v4, v4, 0x1

    if-le v2, v4, :cond_1f

    .line 1041
    iget-object v2, p0, Laoe;->b:Ljava/util/Vector;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    add-int v9, p2, v3

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v2, v4, v9}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 1045
    :goto_19
    iget-object v2, p0, Laoe;->c:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    add-int v4, p2, v3

    add-int/lit8 v4, v4, 0x1

    if-le v2, v4, :cond_20

    .line 1046
    iget-object v2, p0, Laoe;->c:Ljava/util/Vector;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    add-int v9, p2, v3

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v2, v4, v9}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 1023
    :goto_1a
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v1

    move v1, v0

    goto :goto_16

    .line 1030
    :cond_1d
    iget-object v0, p0, Laoe;->a:Ljava/util/Vector;

    new-instance v9, Landroid/graphics/RectF;

    invoke-direct {v9}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v0, v9}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1031
    iget-object v0, p0, Laoe;->a:Ljava/util/Vector;

    add-int v9, p2, v3

    invoke-virtual {v0, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    add-float v9, v2, v4

    iget v10, p0, Laoe;->p:F

    add-float/2addr v10, v1

    invoke-virtual {v0, v2, v1, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_17

    .line 1037
    :cond_1e
    iget v0, p0, Laoe;->y:I

    int-to-float v2, v0

    .line 1038
    iget v0, p0, Laoe;->p:F

    iget v4, p0, Laoe;->l:I

    int-to-float v4, v4

    add-float/2addr v0, v4

    add-float/2addr v0, v1

    move v1, v2

    goto :goto_18

    .line 1043
    :cond_1f
    iget-object v2, p0, Laoe;->b:Ljava/util/Vector;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_19

    .line 1048
    :cond_20
    iget-object v2, p0, Laoe;->c:Ljava/util/Vector;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    .line 1052
    :cond_21
    add-int/lit8 p2, p2, 0x2

    .line 1054
    const/4 v0, 0x0

    :goto_1b
    add-int/lit8 v3, p1, -0x2

    if-ge v0, v3, :cond_22

    .line 1055
    add-int/lit8 v3, v0, 0x2

    aget v3, v7, v3

    aput v3, v7, v0

    .line 1054
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 1057
    :cond_22
    add-int/lit8 v0, p1, -0x2

    const/4 v3, -0x1

    aput v3, v7, v0

    .line 1058
    add-int/lit8 v0, p1, -0x1

    const/4 v3, -0x1

    aput v3, v7, v0

    move v3, v1

    move v4, v2

    .line 1059
    goto/16 :goto_1

    .line 1060
    :cond_23
    const/4 v8, 0x2

    aget v8, v6, v8

    if-ne v2, v8, :cond_a

    .line 1062
    rem-int/lit8 v0, v1, 0x2

    if-nez v0, :cond_29

    .line 1064
    if-nez v1, :cond_28

    .line 1065
    iget v0, p0, Laoe;->o:F

    int-to-float v1, v2

    mul-float/2addr v1, v0

    .line 1066
    iget-object v0, p0, Laoe;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-le v0, p2, :cond_24

    .line 1067
    iget-object v0, p0, Laoe;->a:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    add-float/2addr v1, v4

    iget v2, p0, Laoe;->p:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v4, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1074
    :goto_1c
    iget v0, p0, Laoe;->y:I

    int-to-float v4, v0

    .line 1075
    iget v0, p0, Laoe;->p:F

    iget v1, p0, Laoe;->l:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    add-float/2addr v3, v0

    .line 1076
    iget-object v0, p0, Laoe;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v1, p2, 0x1

    if-le v0, v1, :cond_25

    .line 1077
    iget-object v0, p0, Laoe;->b:Ljava/util/Vector;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 1081
    :goto_1d
    iget-object v0, p0, Laoe;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v1, p2, 0x1

    if-le v0, v1, :cond_26

    .line 1082
    iget-object v0, p0, Laoe;->c:Ljava/util/Vector;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 1087
    :goto_1e
    add-int/lit8 p2, p2, 0x1

    .line 1088
    const/4 v0, 0x0

    :goto_1f
    add-int/lit8 v1, p1, -0x1

    if-ge v0, v1, :cond_27

    .line 1089
    add-int/lit8 v1, v0, 0x1

    aget v1, v7, v1

    aput v1, v7, v0

    .line 1088
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 1070
    :cond_24
    iget-object v0, p0, Laoe;->a:Ljava/util/Vector;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1071
    iget-object v0, p0, Laoe;->a:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    add-float/2addr v1, v4

    iget v2, p0, Laoe;->p:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v4, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_1c

    .line 1079
    :cond_25
    iget-object v0, p0, Laoe;->b:Ljava/util/Vector;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    .line 1084
    :cond_26
    iget-object v0, p0, Laoe;->c:Ljava/util/Vector;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    .line 1091
    :cond_27
    add-int/lit8 v0, p1, -0x1

    const/4 v1, -0x1

    aput v1, v7, v0

    goto/16 :goto_1

    .line 1094
    :cond_28
    const/4 v0, 0x0

    :goto_20
    if-ge v0, v1, :cond_3

    .line 1095
    const/4 v2, 0x1

    aget v2, v6, v2

    aput v2, v7, v0

    .line 1094
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 1103
    :cond_29
    const/4 v0, 0x1

    if-ne v1, v0, :cond_2a

    .line 1104
    const/4 v0, 0x0

    aput v2, v7, v0

    goto/16 :goto_1

    .line 1107
    :cond_2a
    add-int/lit8 v0, v1, -0x1

    const/4 v2, 0x2

    aget v2, v6, v2

    aput v2, v7, v0

    .line 1108
    const/4 v0, 0x0

    :goto_21
    add-int/lit8 v2, v1, -0x1

    if-ge v0, v2, :cond_3

    .line 1109
    const/4 v2, 0x1

    aget v2, v6, v2

    aput v2, v7, v0

    .line 1108
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 1117
    :cond_2b
    return-void

    :cond_2c
    move v0, v1

    move v1, v2

    goto/16 :goto_5
.end method

.method public b(Z)V
    .locals 0
    .parameter

    .prologue
    .line 2237
    iput-boolean p1, p0, Laoe;->s:Z

    .line 2238
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 2247
    iget-boolean v0, p0, Laoe;->s:Z

    return v0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 1442
    const/4 v0, 0x1

    iput-boolean v0, p0, Laoe;->y:Z

    .line 1443
    return-void
.end method

.method public c(I)V
    .locals 11
    .parameter

    .prologue
    const-wide/16 v1, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v4, -0x1

    .line 2162
    iget-object v0, p0, Laoe;->a:Lapn;

    invoke-virtual {v0}, Lapn;->b()V

    .line 2164
    iget-object v0, p0, Laoe;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    .line 2165
    iget v3, v0, Landroid/graphics/RectF;->right:F

    iget v5, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v5

    float-to-int v5, v3

    .line 2166
    iget v3, v0, Landroid/graphics/RectF;->bottom:F

    iget v6, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v6

    float-to-int v6, v3

    .line 2169
    iget-boolean v3, p0, Laoe;->r:Z

    if-nez v3, :cond_0

    .line 2170
    iget-object v3, p0, Laoe;->a:Laor;

    iget-object v3, v3, Laor;->a:Ljava/util/Vector;

    iget v7, p0, Laoe;->e:I

    invoke-virtual {v3, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr p1, v3

    .line 2172
    :cond_0
    iget-object v3, p0, Laoe;->a:Laor;

    invoke-virtual {v3, p1}, Laor;->a(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 2173
    invoke-virtual {p0, v3}, Laoe;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 2174
    if-nez v3, :cond_1

    .line 2199
    :goto_0
    return-void

    .line 2176
    :cond_1
    iget-boolean v7, p0, Laoe;->z:Z

    if-eqz v7, :cond_2

    .line 2177
    iget-object v7, p0, Laoe;->a:Lapn;

    invoke-virtual {p0, p1, v3}, Laoe;->a(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v7, v3}, Lapn;->a(Ljava/lang/CharSequence;)V

    .line 2184
    :goto_1
    iget-object v3, p0, Laoe;->a:Lapn;

    invoke-virtual {v3, v5, v6}, Lapn;->a(II)V

    .line 2185
    iget-object v3, p0, Laoe;->b:[I

    invoke-virtual {p0, v3}, Laoe;->a([I)V

    .line 2188
    iget-object v3, p0, Laoe;->a:[I

    iget-object v6, p0, Laoe;->b:[I

    aget v6, v6, v9

    iget v7, v0, Landroid/graphics/RectF;->left:F

    iget-object v8, p0, Laoe;->a:Lapn;

    invoke-virtual {v8}, Lapn;->getWidth()I

    move-result v8

    sub-int v5, v8, v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float v5, v7, v5

    float-to-int v5, v5

    add-int/2addr v5, v6

    iget v6, p0, Laoe;->C:I

    sub-int/2addr v5, v6

    iget v6, p0, Laoe;->p:I

    add-int/2addr v5, v6

    aput v5, v3, v9

    .line 2190
    iget-object v3, p0, Laoe;->a:[I

    iget-object v5, p0, Laoe;->b:[I

    aget v5, v5, v10

    iget v0, v0, Landroid/graphics/RectF;->top:F

    float-to-int v0, v0

    add-int/2addr v0, v5

    iget-object v5, p0, Laoe;->a:Lapn;

    invoke-virtual {v5}, Lapn;->getHeight()I

    move-result v5

    sub-int/2addr v0, v5

    iget v5, p0, Laoe;->D:I

    sub-int/2addr v0, v5

    iget v5, p0, Laoe;->r:I

    add-int/2addr v0, v5

    aput v0, v3, v10

    .line 2193
    iget-object v0, p0, Laoe;->a:Lapn;

    invoke-virtual {v0}, Lapn;->dismiss()V

    .line 2194
    iget-object v0, p0, Laoe;->a:Lapn;

    invoke-virtual {v0}, Lapn;->isShowing()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2195
    iget-object v0, p0, Laoe;->a:Lapn;

    iget-object v3, p0, Laoe;->a:[I

    invoke-virtual {v0, v1, v2, v3}, Lapn;->a(J[I)V

    goto :goto_0

    .line 2180
    :cond_2
    iget-object v7, p0, Laoe;->a:Lapn;

    invoke-virtual {v7, v3}, Lapn;->a(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 2197
    :cond_3
    iget-object v0, p0, Laoe;->a:Lapn;

    iget-object v3, p0, Laoe;->a:[I

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lapn;->a(J[III)V

    goto :goto_0
.end method

.method public c()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2275
    const-string v0, "scrollForward!"

    invoke-static {v0}, Laoe;->a(Ljava/lang/String;)V

    .line 2276
    iget-object v0, p0, Laoe;->a:Laor;

    if-nez v0, :cond_0

    move v0, v1

    .line 2329
    :goto_0
    return v0

    .line 2280
    :cond_0
    iget-object v0, p0, Laoe;->a:Laor;

    invoke-virtual {v0}, Laor;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 2282
    goto :goto_0

    .line 2284
    :cond_1
    iget-object v0, p0, Laoe;->a:Laor;

    invoke-virtual {v0}, Laor;->b()I

    move-result v0

    .line 2285
    iget-object v2, p0, Laoe;->a:Laor;

    invoke-virtual {v2}, Laor;->c()Z

    .line 2287
    iget-object v2, p0, Laoe;->a:Laor;

    invoke-virtual {v2}, Laor;->b()I

    move-result v2

    .line 2288
    iget-object v3, p0, Laoe;->a:Laor;

    invoke-virtual {v3}, Laor;->b()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2290
    if-ne v0, v2, :cond_2

    move v0, v1

    .line 2291
    goto :goto_0

    .line 2294
    :cond_2
    iget-object v0, p0, Laoe;->a:Laor;

    invoke-virtual {v0}, Laor;->a()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Laoe;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-le v0, v2, :cond_4

    .line 2295
    iget-object v0, p0, Laoe;->c:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 2296
    iget-object v0, p0, Laoe;->c:Ljava/util/Vector;

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 2300
    float-to-int v2, v3

    float-to-int v0, v0

    if-ne v2, v0, :cond_3

    .line 2301
    iget v0, p0, Laoe;->p:F

    add-float/2addr v0, v3

    iget v2, p0, Laoe;->l:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    float-to-int v0, v0

    .line 2306
    :goto_1
    iget v2, p0, Laoe;->v:I

    invoke-virtual {p0, v2, v0}, Laoe;->c(II)V

    move v0, v1

    .line 2308
    goto :goto_0

    .line 2304
    :cond_3
    float-to-int v0, v3

    goto :goto_1

    .line 2312
    :cond_4
    iget-boolean v0, p0, Laoe;->r:Z

    if-eqz v0, :cond_5

    .line 2313
    iget-object v0, p0, Laoe;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-gt v0, v2, :cond_7

    .line 2315
    iget-boolean v0, p0, Laoe;->l:Z

    if-nez v0, :cond_6

    .line 2317
    invoke-virtual {p0}, Laoe;->m()V

    .line 2329
    :cond_5
    :goto_2
    const/4 v0, 0x1

    goto :goto_0

    .line 2319
    :cond_6
    iget v0, p0, Laoe;->w:I

    iget v1, p0, Laoe;->u:I

    if-ge v0, v1, :cond_5

    .line 2322
    invoke-virtual {p0}, Laoe;->m()V

    goto :goto_2

    :cond_7
    move v0, v1

    .line 2326
    goto/16 :goto_0
.end method

.method public d()V
    .locals 3

    .prologue
    .line 2358
    iget-boolean v0, p0, Laoe;->r:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Laoe;->l:Z

    if-nez v0, :cond_1

    .line 2379
    :cond_0
    :goto_0
    return-void

    .line 2361
    :cond_1
    iget v0, p0, Laoe;->y:I

    int-to-float v0, v0

    .line 2362
    iget v1, p0, Laoe;->A:I

    int-to-float v1, v1

    .line 2363
    iget-object v2, p0, Laoe;->a:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->clear()V

    .line 2364
    iget-object v2, p0, Laoe;->b:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->clear()V

    .line 2365
    iget-object v2, p0, Laoe;->b:Ljava/util/Vector;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 2366
    iget-object v0, p0, Laoe;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 2367
    iget-object v0, p0, Laoe;->c:Ljava/util/Vector;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 2368
    const/4 v0, 0x0

    iput v0, p0, Laoe;->o:I

    .line 2378
    invoke-virtual {p0}, Laoe;->m()V

    goto :goto_0
.end method

.method public d()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2339
    iget-object v1, p0, Laoe;->a:Laor;

    if-nez v1, :cond_1

    .line 2349
    :cond_0
    :goto_0
    return v0

    .line 2343
    :cond_1
    iget-object v1, p0, Laoe;->a:Laor;

    invoke-virtual {v1}, Laor;->a()I

    move-result v1

    if-lez v1, :cond_0

    .line 2347
    iget-object v0, p0, Laoe;->a:Laor;

    invoke-virtual {v0}, Laor;->d()Z

    .line 2349
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public e()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2387
    iget-boolean v0, p0, Laoe;->r:Z

    if-nez v0, :cond_1

    .line 2459
    :cond_0
    :goto_0
    return-void

    .line 2389
    :cond_1
    iget v0, p0, Laoe;->y:I

    int-to-float v0, v0

    .line 2390
    iget v1, p0, Laoe;->A:I

    int-to-float v1, v1

    .line 2391
    iget-object v2, p0, Laoe;->a:Laor;

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Laoe;->l:Z

    if-nez v2, :cond_2

    .line 2392
    iget-object v2, p0, Laoe;->a:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->clear()V

    .line 2393
    iget-object v2, p0, Laoe;->b:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->clear()V

    .line 2394
    iget-object v2, p0, Laoe;->b:Ljava/util/Vector;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 2395
    iget-object v0, p0, Laoe;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 2396
    iget-object v0, p0, Laoe;->c:Ljava/util/Vector;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 2400
    :cond_2
    iget-object v0, p0, Laoe;->a:Laor;

    invoke-virtual {v0}, Laor;->b()I

    move-result v1

    .line 2403
    iget-boolean v0, p0, Laoe;->l:Z

    if-eqz v0, :cond_4

    iget v0, p0, Laoe;->p:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_4

    iget v0, p0, Laoe;->M:I

    if-lez v0, :cond_4

    iget v0, p0, Laoe;->o:I

    if-eqz v0, :cond_4

    .line 2405
    iget v0, p0, Laoe;->o:I

    if-le v1, v0, :cond_3

    .line 2406
    invoke-virtual {p0}, Laoe;->d()V

    .line 2407
    iput v4, p0, Laoe;->a:I

    .line 2408
    iget v0, p0, Laoe;->N:I

    iget v2, p0, Laoe;->O:I

    mul-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Laoe;->b:I

    .line 2409
    iget v0, p0, Laoe;->b:I

    if-lt v0, v1, :cond_0

    .line 2410
    add-int/lit8 v0, v1, -0x1

    iput v0, p0, Laoe;->b:I

    goto :goto_0

    .line 2414
    :cond_3
    iget v0, p0, Laoe;->M:I

    if-ne v0, v5, :cond_5

    .line 2415
    iget v0, p0, Laoe;->p:F

    int-to-float v2, v1

    mul-float/2addr v0, v2

    iget v2, p0, Laoe;->l:I

    add-int/lit8 v3, v1, -0x1

    mul-int/2addr v2, v3

    int-to-float v2, v2

    add-float/2addr v0, v2

    float-to-int v0, v0

    .line 2425
    :goto_1
    iget v2, p0, Laoe;->v:I

    invoke-virtual {p0, v2, v0}, Laoe;->c(II)V

    .line 2430
    :cond_4
    iget-boolean v0, p0, Laoe;->k:Z

    if-eqz v0, :cond_7

    .line 2431
    invoke-virtual {p0, v5}, Laoe;->b(Z)V

    .line 2432
    invoke-virtual {p0}, Laoe;->p()V

    .line 2433
    invoke-virtual {p0, v4, v4}, Laoe;->d(II)V

    .line 2434
    iput v4, p0, Laoe;->a:I

    .line 2435
    iget v0, p0, Laoe;->N:I

    iget v2, p0, Laoe;->O:I

    mul-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Laoe;->b:I

    .line 2436
    iget v0, p0, Laoe;->b:I

    if-lt v0, v1, :cond_0

    .line 2437
    add-int/lit8 v0, v1, -0x1

    iput v0, p0, Laoe;->b:I

    goto/16 :goto_0

    .line 2417
    :cond_5
    iget v0, p0, Laoe;->M:I

    rem-int v0, v1, v0

    if-nez v0, :cond_6

    .line 2418
    iget v0, p0, Laoe;->M:I

    div-int v0, v1, v0

    .line 2419
    iget v2, p0, Laoe;->p:F

    int-to-float v3, v0

    mul-float/2addr v2, v3

    iget v3, p0, Laoe;->l:I

    add-int/lit8 v0, v0, -0x1

    mul-int/2addr v0, v3

    int-to-float v0, v0

    add-float/2addr v0, v2

    float-to-int v0, v0

    .line 2420
    goto :goto_1

    .line 2421
    :cond_6
    iget v0, p0, Laoe;->M:I

    div-int v0, v1, v0

    add-int/lit8 v0, v0, 0x1

    .line 2422
    iget v2, p0, Laoe;->p:F

    int-to-float v3, v0

    mul-float/2addr v2, v3

    iget v3, p0, Laoe;->l:I

    add-int/lit8 v0, v0, -0x1

    mul-int/2addr v0, v3

    int-to-float v0, v0

    add-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_1

    .line 2454
    :cond_7
    invoke-virtual {p0}, Laoe;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2456
    invoke-virtual {p0, v4}, Laoe;->b(Z)V

    .line 2457
    invoke-virtual {p0}, Laoe;->p()V

    .line 2458
    invoke-virtual {p0, v4, v4}, Laoe;->d(II)V

    goto/16 :goto_0
.end method

.method public f()V
    .locals 3

    .prologue
    .line 2469
    iget v0, p0, Laoe;->P:I

    iget v1, p0, Laoe;->Q:I

    invoke-direct {p0, v0, v1}, Laoe;->a(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 2470
    const v0, 0x7fffffff

    if-eq v1, v0, :cond_0

    .line 2472
    iget-boolean v0, p0, Laoe;->r:Z

    if-nez v0, :cond_1

    .line 2473
    iget-object v0, p0, Laoe;->a:Laor;

    iget-object v0, v0, Laor;->a:Ljava/util/Vector;

    iget v2, p0, Laoe;->e:I

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v1

    .line 2475
    :goto_0
    iget-object v1, p0, Laoe;->a:Laoq;

    if-eqz v1, :cond_0

    .line 2476
    iget-object v1, p0, Laoe;->a:Laoq;

    iget-object v2, p0, Laoe;->a:Laor;

    invoke-virtual {v2, v0}, Laor;->a(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Laoq;->a(ILjava/lang/CharSequence;)Z

    move-result v0

    .line 2478
    iget-object v1, p0, Laoe;->a:Landroid/content/Context;

    invoke-static {v1}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v1

    iget v2, v1, Lamo;->ae:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lamo;->ae:I

    .line 2479
    if-eqz v0, :cond_0

    .line 2480
    const/4 v0, 0x0

    iput-boolean v0, p0, Laoe;->d:Z

    .line 2481
    invoke-virtual {p0}, Laoe;->l()V

    .line 2482
    const/4 v0, 0x1

    iput-boolean v0, p0, Laoe;->e:Z

    .line 2483
    iget-object v0, p0, Laoe;->a:Lapn;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lapn;->a(J)V

    .line 2488
    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public g()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2496
    iget-boolean v0, p0, Laoe;->m:Z

    if-nez v0, :cond_0

    .line 2498
    iput-boolean v1, p0, Laoe;->c:Z

    .line 2499
    iput-boolean v1, p0, Laoe;->d:Z

    .line 2500
    iput-boolean v1, p0, Laoe;->y:Z

    .line 2501
    invoke-virtual {p0}, Laoe;->l()V

    .line 2503
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Laoe;->n:I

    .line 2504
    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 2211
    instance-of v0, p1, Laxc;

    if-eqz v0, :cond_0

    .line 2212
    iget-object v0, p0, Laoe;->a:Landroid/content/Context;

    invoke-static {v0}, Laxc;->a(Landroid/content/Context;)Laxc;

    move-result-object v0

    invoke-virtual {v0}, Laxc;->b()Lawc;

    move-result-object v0

    check-cast p1, Laxc;

    iget v1, p0, Laoe;->m:I

    invoke-virtual {p1, v1}, Laxc;->a(I)Lawe;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Laoe;->a(Lawc;Lawe;)V

    .line 2215
    :cond_0
    return-void
.end method
