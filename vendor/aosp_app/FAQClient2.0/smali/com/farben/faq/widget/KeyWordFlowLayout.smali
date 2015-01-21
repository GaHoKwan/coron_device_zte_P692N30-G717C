.class public Lcom/farben/faq/widget/KeyWordFlowLayout;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# static fields
.field public static a:I

.field private static c:Landroid/view/animation/Interpolator;

.field private static d:Landroid/view/animation/AlphaAnimation;

.field private static e:Landroid/view/animation/AlphaAnimation;

.field private static f:Landroid/view/animation/ScaleAnimation;

.field private static g:Landroid/view/animation/ScaleAnimation;

.field private static h:Landroid/view/animation/ScaleAnimation;

.field private static i:Landroid/view/animation/ScaleAnimation;


# instance fields
.field private b:Landroid/view/View$OnClickListener;

.field private j:Ljava/util/Vector;

.field private k:I

.field private l:I

.field private m:Z

.field private n:Ljava/util/Random;

.field private o:I

.field private p:I

.field private q:J

.field private r:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xa

    sput v0, Lcom/farben/faq/widget/KeyWordFlowLayout;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/farben/faq/widget/KeyWordFlowLayout;->c()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/farben/faq/widget/KeyWordFlowLayout;->c()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/farben/faq/widget/KeyWordFlowLayout;->c()V

    return-void
.end method

.method private static a([IIII)Landroid/view/animation/AnimationSet;
    .locals 6

    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Landroid/view/animation/AnimationSet;

    invoke-direct {v0, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    sget-object v1, Lcom/farben/faq/widget/KeyWordFlowLayout;->c:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    if-ne p3, v5, :cond_1

    sget-object v1, Lcom/farben/faq/widget/KeyWordFlowLayout;->d:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    sget-object v1, Lcom/farben/faq/widget/KeyWordFlowLayout;->f:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v1, Landroid/view/animation/TranslateAnimation;

    aget v2, p0, v2

    aget v3, p0, v3

    shr-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    sub-int/2addr v2, p1

    shl-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    aget v3, p0, v5

    sub-int/2addr v3, p2

    shl-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    invoke-direct {v1, v2, v4, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    :goto_0
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    return-object v0

    :cond_1
    if-ne p3, v3, :cond_2

    sget-object v1, Lcom/farben/faq/widget/KeyWordFlowLayout;->e:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    sget-object v1, Lcom/farben/faq/widget/KeyWordFlowLayout;->g:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v1, Landroid/view/animation/TranslateAnimation;

    aget v2, p0, v2

    aget v3, p0, v3

    shr-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    sub-int/2addr v2, p1

    shl-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    aget v3, p0, v5

    sub-int/2addr v3, p2

    shl-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    invoke-direct {v1, v4, v2, v4, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x4

    if-ne p3, v1, :cond_3

    sget-object v1, Lcom/farben/faq/widget/KeyWordFlowLayout;->e:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    sget-object v1, Lcom/farben/faq/widget/KeyWordFlowLayout;->i:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v1, Landroid/view/animation/TranslateAnimation;

    aget v2, p0, v2

    neg-int v2, v2

    add-int/2addr v2, p1

    int-to-float v2, v2

    aget v3, p0, v5

    neg-int v3, v3

    add-int/2addr v3, p2

    int-to-float v3, v3

    invoke-direct {v1, v4, v2, v4, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x3

    if-ne p3, v1, :cond_0

    sget-object v1, Lcom/farben/faq/widget/KeyWordFlowLayout;->d:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    sget-object v1, Lcom/farben/faq/widget/KeyWordFlowLayout;->h:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v1, Landroid/view/animation/TranslateAnimation;

    aget v2, p0, v2

    neg-int v2, v2

    add-int/2addr v2, p1

    int-to-float v2, v2

    aget v3, p0, v5

    neg-int v3, v3

    add-int/2addr v3, p2

    int-to-float v3, v3

    invoke-direct {v1, v2, v4, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private static a(Ljava/util/LinkedList;I)V
    .locals 5

    const/4 v4, 0x3

    const/4 v0, 0x0

    move v3, v0

    :goto_0
    if-lt v3, p1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v2, v0

    :goto_1
    if-lt v2, p1, :cond_1

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    aget v1, v0, v4

    invoke-virtual {p0, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    aget v0, v0, v4

    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0, v3, v1}, Ljava/util/LinkedList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v2, v0}, Ljava/util/LinkedList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1
.end method

.method private a(Ljava/util/LinkedList;III)V
    .locals 15

    invoke-virtual/range {p1 .. p1}, Ljava/util/LinkedList;->size()I

    move-result v9

    move-object/from16 v0, p1

    invoke-static {v0, v9}, Lcom/farben/faq/widget/KeyWordFlowLayout;->a(Ljava/util/LinkedList;I)V

    const/4 v2, 0x0

    move v8, v2

    :goto_0
    if-lt v8, v9, :cond_0

    return-void

    :cond_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    const/4 v4, 0x1

    aget v4, v3, v4

    sub-int v10, v4, p3

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v5

    add-int/lit8 v4, v8, -0x1

    move v7, v4

    :goto_1
    if-gez v7, :cond_4

    :cond_1
    move v4, v5

    :cond_2
    :goto_2
    move/from16 v0, p4

    if-le v4, v0, :cond_3

    sub-int v4, v4, p4

    iget-object v5, p0, Lcom/farben/faq/widget/KeyWordFlowLayout;->n:Ljava/util/Random;

    invoke-virtual {v5, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    shr-int/lit8 v4, v4, 0x1

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    mul-int/2addr v4, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v5

    div-int/2addr v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x1

    aget v6, v3, v6

    sub-int v4, v6, v4

    aput v4, v3, v5

    const/4 v4, 0x3

    const/4 v5, 0x1

    aget v5, v3, v5

    sub-int v5, v5, p3

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    aput v5, v3, v4

    add-int/lit8 v4, v8, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/farben/faq/widget/KeyWordFlowLayout;->a(Ljava/util/LinkedList;I)V

    :cond_3
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x2

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0x33

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 v5, 0x0

    aget v5, v3, v5

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    const/4 v5, 0x1

    aget v5, v3, v5

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0, v2, v4}, Lcom/farben/faq/widget/KeyWordFlowLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget v4, p0, Lcom/farben/faq/widget/KeyWordFlowLayout;->o:I

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v3, v0, v1, v4}, Lcom/farben/faq/widget/KeyWordFlowLayout;->a([IIII)Landroid/view/animation/AnimationSet;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    add-int/lit8 v2, v8, 0x1

    move v8, v2

    goto :goto_0

    :cond_4
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    const/4 v6, 0x0

    aget v11, v4, v6

    const/4 v6, 0x2

    aget v6, v4, v6

    add-int v12, v11, v6

    const/4 v6, 0x1

    aget v6, v4, v6

    sub-int v6, v6, p3

    mul-int/2addr v6, v10

    if-lez v6, :cond_9

    const/4 v6, 0x0

    aget v13, v3, v6

    const/4 v6, 0x0

    aget v6, v3, v6

    const/4 v14, 0x2

    aget v14, v3, v14

    add-int/2addr v14, v6

    const/4 v6, 0x0

    if-lt v13, v11, :cond_6

    if-gt v13, v12, :cond_6

    const/4 v6, 0x1

    :cond_5
    :goto_3
    if-eqz v6, :cond_9

    const/4 v6, 0x1

    aget v6, v3, v6

    const/4 v7, 0x1

    aget v4, v4, v7

    sub-int v4, v6, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    move/from16 v0, p4

    if-gt v4, v0, :cond_2

    if-lez v5, :cond_1

    const/4 v4, 0x0

    goto/16 :goto_2

    :cond_6
    if-lt v14, v11, :cond_7

    if-gt v14, v12, :cond_7

    const/4 v6, 0x1

    goto :goto_3

    :cond_7
    if-lt v11, v13, :cond_8

    if-gt v11, v14, :cond_8

    const/4 v6, 0x1

    goto :goto_3

    :cond_8
    if-lt v12, v13, :cond_5

    if-gt v12, v14, :cond_5

    const/4 v6, 0x1

    goto :goto_3

    :cond_9
    add-int/lit8 v4, v7, -0x1

    move v7, v4

    goto/16 :goto_1
.end method

.method private c()V
    .locals 5

    const/high16 v4, 0x4000

    const/4 v3, 0x0

    const/high16 v2, 0x3f80

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/farben/faq/widget/KeyWordFlowLayout;->q:J

    const-wide/16 v0, 0x320

    iput-wide v0, p0, Lcom/farben/faq/widget/KeyWordFlowLayout;->r:J

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/farben/faq/widget/KeyWordFlowLayout;->n:Ljava/util/Random;

    new-instance v0, Ljava/util/Vector;

    sget v1, Lcom/farben/faq/widget/KeyWordFlowLayout;->a:I

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/farben/faq/widget/KeyWordFlowLayout;->j:Ljava/util/Vector;

    invoke-virtual {p0}, Lcom/farben/faq/widget/KeyWordFlowLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-virtual {p0}, Lcom/farben/faq/widget/KeyWordFlowLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10a0006

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    sput-object v0, Lcom/farben/faq/widget/KeyWordFlowLayout;->c:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v3, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    sput-object v0, Lcom/farben/faq/widget/KeyWordFlowLayout;->d:Landroid/view/animation/AlphaAnimation;

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    sput-object v0, Lcom/farben/faq/widget/KeyWordFlowLayout;->e:Landroid/view/animation/AlphaAnimation;

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    invoke-direct {v0, v4, v2, v4, v2}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    sput-object v0, Lcom/farben/faq/widget/KeyWordFlowLayout;->f:Landroid/view/animation/ScaleAnimation;

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    invoke-direct {v0, v2, v4, v2, v4}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    sput-object v0, Lcom/farben/faq/widget/KeyWordFlowLayout;->g:Landroid/view/animation/ScaleAnimation;

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    invoke-direct {v0, v3, v2, v3, v2}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    sput-object v0, Lcom/farben/faq/widget/KeyWordFlowLayout;->h:Landroid/view/animation/ScaleAnimation;

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    invoke-direct {v0, v2, v3, v2, v3}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    sput-object v0, Lcom/farben/faq/widget/KeyWordFlowLayout;->i:Landroid/view/animation/ScaleAnimation;

    return-void
.end method

.method private d()Z
    .locals 17

    move-object/from16 v0, p0

    iget v1, v0, Lcom/farben/faq/widget/KeyWordFlowLayout;->k:I

    if-lez v1, :cond_5

    move-object/from16 v0, p0

    iget v1, v0, Lcom/farben/faq/widget/KeyWordFlowLayout;->l:I

    if-lez v1, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/farben/faq/widget/KeyWordFlowLayout;->j:Ljava/util/Vector;

    if-eqz v1, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/farben/faq/widget/KeyWordFlowLayout;->j:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_5

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/farben/faq/widget/KeyWordFlowLayout;->m:Z

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/farben/faq/widget/KeyWordFlowLayout;->m:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/farben/faq/widget/KeyWordFlowLayout;->q:J

    move-object/from16 v0, p0

    iget v1, v0, Lcom/farben/faq/widget/KeyWordFlowLayout;->k:I

    shr-int/lit8 v4, v1, 0x1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/farben/faq/widget/KeyWordFlowLayout;->l:I

    shr-int/lit8 v5, v1, 0x1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/farben/faq/widget/KeyWordFlowLayout;->j:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v6

    move-object/from16 v0, p0

    iget v1, v0, Lcom/farben/faq/widget/KeyWordFlowLayout;->k:I

    div-int v7, v1, v6

    move-object/from16 v0, p0

    iget v1, v0, Lcom/farben/faq/widget/KeyWordFlowLayout;->l:I

    div-int v8, v1, v6

    new-instance v9, Ljava/util/LinkedList;

    invoke-direct {v9}, Ljava/util/LinkedList;-><init>()V

    new-instance v10, Ljava/util/LinkedList;

    invoke-direct {v10}, Ljava/util/LinkedList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v6, :cond_0

    new-instance v11, Ljava/util/LinkedList;

    invoke-direct {v11}, Ljava/util/LinkedList;-><init>()V

    new-instance v12, Ljava/util/LinkedList;

    invoke-direct {v12}, Ljava/util/LinkedList;-><init>()V

    const/4 v1, 0x0

    move v3, v1

    :goto_1
    if-lt v3, v6, :cond_1

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v4, v5, v8}, Lcom/farben/faq/widget/KeyWordFlowLayout;->a(Ljava/util/LinkedList;III)V

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v4, v5, v8}, Lcom/farben/faq/widget/KeyWordFlowLayout;->a(Ljava/util/LinkedList;III)V

    const/4 v1, 0x1

    :goto_2
    return v1

    :cond_0
    mul-int v2, v1, v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    mul-int v2, v1, v8

    shr-int/lit8 v3, v8, 0x2

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/farben/faq/widget/KeyWordFlowLayout;->j:Ljava/util/Vector;

    invoke-virtual {v1, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/high16 v2, -0x100

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/farben/faq/widget/KeyWordFlowLayout;->n:Ljava/util/Random;

    const v14, 0x77ffff

    invoke-virtual {v13, v14}, Ljava/util/Random;->nextInt(I)I

    move-result v13

    or-int/2addr v13, v2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/farben/faq/widget/KeyWordFlowLayout;->n:Ljava/util/Random;

    const/4 v2, 0x4

    new-array v15, v2, [I

    const/16 v16, 0x0

    invoke-virtual {v9}, Ljava/util/LinkedList;->size()I

    move-result v2

    invoke-virtual {v14, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-virtual {v9, v2}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v15, v16

    const/16 v16, 0x1

    invoke-virtual {v10}, Ljava/util/LinkedList;->size()I

    move-result v2

    invoke-virtual {v14, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-virtual {v10, v2}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v15, v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/farben/faq/widget/KeyWordFlowLayout;->n:Ljava/util/Random;

    const/16 v14, 0xb

    invoke-virtual {v2, v14}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/lit8 v2, v2, 0xf

    new-instance v14, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/farben/faq/widget/KeyWordFlowLayout;->getContext()Landroid/content/Context;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v14, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/farben/faq/widget/KeyWordFlowLayout;->b:Landroid/view/View$OnClickListener;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v14, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v14, v13}, Landroid/widget/TextView;->setTextColor(I)V

    int-to-float v2, v2

    invoke-virtual {v14, v2}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v2, 0x11

    invoke-virtual {v14, v2}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v14}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    const/4 v2, 0x2

    aput v1, v15, v2

    const/4 v2, 0x0

    aget v2, v15, v2

    add-int/2addr v2, v1

    move-object/from16 v0, p0

    iget v13, v0, Lcom/farben/faq/widget/KeyWordFlowLayout;->k:I

    shr-int/lit8 v16, v7, 0x1

    sub-int v13, v13, v16

    if-le v2, v13, :cond_3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/farben/faq/widget/KeyWordFlowLayout;->k:I

    sub-int v1, v2, v1

    const/4 v2, 0x0

    sub-int/2addr v1, v7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/farben/faq/widget/KeyWordFlowLayout;->n:Ljava/util/Random;

    shr-int/lit8 v16, v7, 0x1

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v13

    add-int/2addr v1, v13

    aput v1, v15, v2

    :cond_2
    :goto_3
    const/4 v1, 0x3

    const/4 v2, 0x1

    aget v2, v15, v2

    sub-int/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    aput v2, v15, v1

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x1

    aget v1, v15, v1

    if-le v1, v5, :cond_4

    invoke-virtual {v12, v14}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :goto_4
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto/16 :goto_1

    :cond_3
    const/4 v1, 0x0

    aget v1, v15, v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/farben/faq/widget/KeyWordFlowLayout;->n:Ljava/util/Random;

    invoke-virtual {v2, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    div-int/lit8 v13, v7, 0x3

    invoke-static {v2, v13}, Ljava/lang/Math;->max(II)I

    move-result v2

    aput v2, v15, v1

    goto :goto_3

    :cond_4
    invoke-virtual {v11, v14}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_5
    const/4 v1, 0x0

    goto/16 :goto_2
.end method


# virtual methods
.method public final a()V
    .locals 2

    const-wide/16 v0, 0x320

    iput-wide v0, p0, Lcom/farben/faq/widget/KeyWordFlowLayout;->r:J

    return-void
.end method

.method public final a(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/farben/faq/widget/KeyWordFlowLayout;->b:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public final a(I)Z
    .locals 10

    const/4 v9, 0x3

    const/4 v2, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v3, p0, Lcom/farben/faq/widget/KeyWordFlowLayout;->q:J

    sub-long/2addr v0, v3

    iget-wide v3, p0, Lcom/farben/faq/widget/KeyWordFlowLayout;->r:J

    cmp-long v0, v0, v3

    if-lez v0, :cond_4

    iput-boolean v7, p0, Lcom/farben/faq/widget/KeyWordFlowLayout;->m:Z

    if-ne p1, v7, :cond_1

    iput v7, p0, Lcom/farben/faq/widget/KeyWordFlowLayout;->o:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/farben/faq/widget/KeyWordFlowLayout;->p:I

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/farben/faq/widget/KeyWordFlowLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_1
    if-gez v3, :cond_2

    invoke-direct {p0}, Lcom/farben/faq/widget/KeyWordFlowLayout;->d()Z

    move-result v0

    :goto_2
    return v0

    :cond_1
    if-ne p1, v8, :cond_0

    iput v9, p0, Lcom/farben/faq/widget/KeyWordFlowLayout;->o:I

    iput v8, p0, Lcom/farben/faq/widget/KeyWordFlowLayout;->p:I

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v3}, Lcom/farben/faq/widget/KeyWordFlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    const/16 v4, 0x8

    if-ne v1, v4, :cond_3

    invoke-virtual {p0, v0}, Lcom/farben/faq/widget/KeyWordFlowLayout;->removeView(Landroid/view/View;)V

    :goto_3
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    new-array v4, v9, [I

    iget v5, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    aput v5, v4, v2

    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    aput v1, v4, v7

    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    aput v1, v4, v8

    iget v1, p0, Lcom/farben/faq/widget/KeyWordFlowLayout;->k:I

    shr-int/lit8 v1, v1, 0x1

    iget v5, p0, Lcom/farben/faq/widget/KeyWordFlowLayout;->l:I

    shr-int/lit8 v5, v5, 0x1

    iget v6, p0, Lcom/farben/faq/widget/KeyWordFlowLayout;->p:I

    invoke-static {v4, v1, v5, v6}, Lcom/farben/faq/widget/KeyWordFlowLayout;->a([IIII)Landroid/view/animation/AnimationSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    new-instance v4, Lcom/farben/faq/widget/c;

    invoke-direct {v4, p0, v0}, Lcom/farben/faq/widget/c;-><init>(Lcom/farben/faq/widget/KeyWordFlowLayout;Landroid/widget/TextView;)V

    invoke-virtual {v1, v4}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_3

    :cond_4
    move v0, v2

    goto :goto_2
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/farben/faq/widget/KeyWordFlowLayout;->j:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    sget v2, Lcom/farben/faq/widget/KeyWordFlowLayout;->a:I

    if-ge v1, v2, :cond_0

    iget-object v0, p0, Lcom/farben/faq/widget/KeyWordFlowLayout;->j:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/farben/faq/widget/KeyWordFlowLayout;->j:Ljava/util/Vector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/farben/faq/widget/KeyWordFlowLayout;->j:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    :cond_0
    return-void
.end method

.method public onGlobalLayout()V
    .locals 3

    invoke-virtual {p0}, Lcom/farben/faq/widget/KeyWordFlowLayout;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/farben/faq/widget/KeyWordFlowLayout;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/farben/faq/widget/KeyWordFlowLayout;->k:I

    if-ne v2, v0, :cond_0

    iget v2, p0, Lcom/farben/faq/widget/KeyWordFlowLayout;->l:I

    if-eq v2, v1, :cond_1

    :cond_0
    add-int/lit8 v0, v0, -0x32

    iput v0, p0, Lcom/farben/faq/widget/KeyWordFlowLayout;->k:I

    add-int/lit8 v0, v1, -0x32

    iput v0, p0, Lcom/farben/faq/widget/KeyWordFlowLayout;->l:I

    invoke-direct {p0}, Lcom/farben/faq/widget/KeyWordFlowLayout;->d()Z

    :cond_1
    return-void
.end method
