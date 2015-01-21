.class public Lcom/sogou/theme/ThemeListView;
.super Landroid/widget/ListView;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field private a:F

.field private a:I

.field private a:Landroid/widget/AbsListView$OnScrollListener;

.field private a:Landroid/widget/RelativeLayout;

.field private a:Landroid/widget/Scroller;

.field private a:Landroid/widget/TextView;

.field private a:Lcom/sogou/theme/ThemeListViewFooter;

.field private a:Lcom/sogou/theme/ThemeListViewHeader;

.field private a:Lhq;

.field private a:Z

.field private b:I

.field private b:Landroid/widget/RelativeLayout;

.field private b:Z

.field private c:I

.field private c:Z

.field private d:I

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 70
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 27
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/sogou/theme/ThemeListView;->a:F

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sogou/theme/ThemeListView;->a:Z

    .line 44
    iput-boolean v1, p0, Lcom/sogou/theme/ThemeListView;->b:Z

    .line 50
    iput-boolean v1, p0, Lcom/sogou/theme/ThemeListView;->e:Z

    .line 71
    invoke-direct {p0, p1}, Lcom/sogou/theme/ThemeListView;->a(Landroid/content/Context;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/sogou/theme/ThemeListView;->a:F

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sogou/theme/ThemeListView;->a:Z

    .line 44
    iput-boolean v1, p0, Lcom/sogou/theme/ThemeListView;->b:Z

    .line 50
    iput-boolean v1, p0, Lcom/sogou/theme/ThemeListView;->e:Z

    .line 76
    invoke-direct {p0, p1}, Lcom/sogou/theme/ThemeListView;->a(Landroid/content/Context;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/sogou/theme/ThemeListView;->a:F

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sogou/theme/ThemeListView;->a:Z

    .line 44
    iput-boolean v1, p0, Lcom/sogou/theme/ThemeListView;->b:Z

    .line 50
    iput-boolean v1, p0, Lcom/sogou/theme/ThemeListView;->e:Z

    .line 81
    invoke-direct {p0, p1}, Lcom/sogou/theme/ThemeListView;->a(Landroid/content/Context;)V

    .line 82
    return-void
.end method

.method public static synthetic a(Lcom/sogou/theme/ThemeListView;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 23
    iput p1, p0, Lcom/sogou/theme/ThemeListView;->a:I

    return p1
.end method

.method public static synthetic a(Lcom/sogou/theme/ThemeListView;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/sogou/theme/ThemeListView;->a:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private a(F)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 208
    iget-object v0, p0, Lcom/sogou/theme/ThemeListView;->a:Lcom/sogou/theme/ThemeListViewHeader;

    float-to-int v1, p1

    iget-object v2, p0, Lcom/sogou/theme/ThemeListView;->a:Lcom/sogou/theme/ThemeListViewHeader;

    invoke-virtual {v2}, Lcom/sogou/theme/ThemeListViewHeader;->a()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/sogou/theme/ThemeListViewHeader;->setVisiableHeight(I)V

    .line 210
    iget-boolean v0, p0, Lcom/sogou/theme/ThemeListView;->a:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sogou/theme/ThemeListView;->b:Z

    if-nez v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/sogou/theme/ThemeListView;->a:Lcom/sogou/theme/ThemeListViewHeader;

    invoke-virtual {v0}, Lcom/sogou/theme/ThemeListViewHeader;->a()I

    move-result v0

    iget v1, p0, Lcom/sogou/theme/ThemeListView;->a:I

    if-le v0, v1, :cond_1

    .line 212
    iget-object v0, p0, Lcom/sogou/theme/ThemeListView;->a:Lcom/sogou/theme/ThemeListViewHeader;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sogou/theme/ThemeListViewHeader;->setState(I)V

    .line 217
    :cond_0
    :goto_0
    invoke-virtual {p0, v3}, Lcom/sogou/theme/ThemeListView;->setSelection(I)V

    .line 218
    return-void

    .line 214
    :cond_1
    iget-object v0, p0, Lcom/sogou/theme/ThemeListView;->a:Lcom/sogou/theme/ThemeListViewHeader;

    invoke-virtual {v0, v3}, Lcom/sogou/theme/ThemeListViewHeader;->setState(I)V

    goto :goto_0
.end method

.method private a(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 85
    new-instance v0, Landroid/widget/Scroller;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-direct {v0, p1, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/sogou/theme/ThemeListView;->a:Landroid/widget/Scroller;

    .line 88
    invoke-super {p0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 91
    new-instance v0, Lcom/sogou/theme/ThemeListViewHeader;

    invoke-direct {v0, p1}, Lcom/sogou/theme/ThemeListViewHeader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sogou/theme/ThemeListView;->a:Lcom/sogou/theme/ThemeListViewHeader;

    .line 92
    iget-object v0, p0, Lcom/sogou/theme/ThemeListView;->a:Lcom/sogou/theme/ThemeListViewHeader;

    const v1, 0x7f0701f4

    invoke-virtual {v0, v1}, Lcom/sogou/theme/ThemeListViewHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sogou/theme/ThemeListView;->a:Landroid/widget/RelativeLayout;

    .line 94
    iget-object v0, p0, Lcom/sogou/theme/ThemeListView;->a:Lcom/sogou/theme/ThemeListViewHeader;

    const v1, 0x7f0701f7

    invoke-virtual {v0, v1}, Lcom/sogou/theme/ThemeListViewHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sogou/theme/ThemeListView;->a:Landroid/widget/TextView;

    .line 96
    iget-object v0, p0, Lcom/sogou/theme/ThemeListView;->a:Landroid/widget/TextView;

    invoke-static {p1}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v1

    invoke-virtual {v1}, Lafp;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v0, p0, Lcom/sogou/theme/ThemeListView;->a:Lcom/sogou/theme/ThemeListViewHeader;

    invoke-virtual {p0, v0}, Lcom/sogou/theme/ThemeListView;->addHeaderView(Landroid/view/View;)V

    .line 100
    new-instance v0, Lcom/sogou/theme/ThemeListViewFooter;

    invoke-direct {v0, p1}, Lcom/sogou/theme/ThemeListViewFooter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sogou/theme/ThemeListView;->a:Lcom/sogou/theme/ThemeListViewFooter;

    .line 101
    iget-object v0, p0, Lcom/sogou/theme/ThemeListView;->a:Lcom/sogou/theme/ThemeListViewFooter;

    const v1, 0x7f0701f1

    invoke-virtual {v0, v1}, Lcom/sogou/theme/ThemeListViewFooter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sogou/theme/ThemeListView;->b:Landroid/widget/RelativeLayout;

    .line 103
    iget-object v0, p0, Lcom/sogou/theme/ThemeListView;->a:Lcom/sogou/theme/ThemeListViewFooter;

    invoke-virtual {p0, v0}, Lcom/sogou/theme/ThemeListView;->addFooterView(Landroid/view/View;)V

    .line 106
    iget-object v0, p0, Lcom/sogou/theme/ThemeListView;->a:Lcom/sogou/theme/ThemeListViewHeader;

    invoke-virtual {v0}, Lcom/sogou/theme/ThemeListViewHeader;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lho;

    invoke-direct {v1, p0}, Lho;-><init>(Lcom/sogou/theme/ThemeListView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 115
    iget-object v0, p0, Lcom/sogou/theme/ThemeListView;->a:Lcom/sogou/theme/ThemeListViewFooter;

    invoke-virtual {v0}, Lcom/sogou/theme/ThemeListViewFooter;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lhp;

    invoke-direct {v1, p0}, Lhp;-><init>(Lcom/sogou/theme/ThemeListView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 123
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 447
    return-void
.end method

.method public static synthetic b(Lcom/sogou/theme/ThemeListView;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 23
    iput p1, p0, Lcom/sogou/theme/ThemeListView;->b:I

    return p1
.end method

.method public static synthetic b(Lcom/sogou/theme/ThemeListView;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/sogou/theme/ThemeListView;->b:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private b(F)V
    .locals 3
    .parameter

    .prologue
    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "************************updateFooterHeight()*************************"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sogou/theme/ThemeListView;->a(Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lcom/sogou/theme/ThemeListView;->a:Lcom/sogou/theme/ThemeListViewFooter;

    float-to-int v1, p1

    iget-object v2, p0, Lcom/sogou/theme/ThemeListView;->a:Lcom/sogou/theme/ThemeListViewFooter;

    invoke-virtual {v2}, Lcom/sogou/theme/ThemeListViewFooter;->a()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/sogou/theme/ThemeListViewFooter;->setVisiableHeight(I)V

    .line 259
    iget-boolean v0, p0, Lcom/sogou/theme/ThemeListView;->c:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sogou/theme/ThemeListView;->d:Z

    if-nez v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/sogou/theme/ThemeListView;->a:Lcom/sogou/theme/ThemeListViewFooter;

    invoke-virtual {v0}, Lcom/sogou/theme/ThemeListViewFooter;->a()I

    move-result v0

    iget v1, p0, Lcom/sogou/theme/ThemeListView;->b:I

    if-le v0, v1, :cond_1

    .line 261
    iget-object v0, p0, Lcom/sogou/theme/ThemeListView;->a:Lcom/sogou/theme/ThemeListViewFooter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sogou/theme/ThemeListViewFooter;->setState(I)V

    .line 268
    :cond_0
    :goto_0
    iget v0, p0, Lcom/sogou/theme/ThemeListView;->c:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sogou/theme/ThemeListView;->setSelection(I)V

    .line 269
    return-void

    .line 263
    :cond_1
    iget-object v0, p0, Lcom/sogou/theme/ThemeListView;->a:Lcom/sogou/theme/ThemeListViewFooter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sogou/theme/ThemeListViewFooter;->setState(I)V

    goto :goto_0
.end method

.method private c()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 224
    iget-object v0, p0, Lcom/sogou/theme/ThemeListView;->a:Lcom/sogou/theme/ThemeListViewHeader;

    invoke-virtual {v0}, Lcom/sogou/theme/ThemeListViewHeader;->a()I

    move-result v2

    .line 225
    if-nez v2, :cond_1

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 228
    :cond_1
    iget-boolean v0, p0, Lcom/sogou/theme/ThemeListView;->b:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/sogou/theme/ThemeListView;->a:I

    if-le v2, v0, :cond_0

    .line 233
    :cond_2
    iget-boolean v0, p0, Lcom/sogou/theme/ThemeListView;->b:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/sogou/theme/ThemeListView;->a:I

    if-le v2, v0, :cond_3

    .line 234
    iget v0, p0, Lcom/sogou/theme/ThemeListView;->a:I

    move v3, v0

    .line 236
    :goto_1
    iput v1, p0, Lcom/sogou/theme/ThemeListView;->d:I

    .line 237
    iget-object v0, p0, Lcom/sogou/theme/ThemeListView;->a:Landroid/widget/Scroller;

    sub-int v4, v3, v2

    const/16 v5, 0x190

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 240
    invoke-virtual {p0}, Lcom/sogou/theme/ThemeListView;->invalidate()V

    goto :goto_0

    :cond_3
    move v3, v1

    goto :goto_1
.end method

.method private d()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 272
    const-string v0, "************************resetFooterHeight()*************************"

    invoke-direct {p0, v0}, Lcom/sogou/theme/ThemeListView;->a(Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lcom/sogou/theme/ThemeListView;->a:Lcom/sogou/theme/ThemeListViewFooter;

    invoke-virtual {v0}, Lcom/sogou/theme/ThemeListViewFooter;->a()I

    move-result v2

    .line 274
    if-nez v2, :cond_1

    .line 296
    :cond_0
    :goto_0
    return-void

    .line 277
    :cond_1
    iget-boolean v0, p0, Lcom/sogou/theme/ThemeListView;->d:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/sogou/theme/ThemeListView;->b:I

    if-le v2, v0, :cond_0

    .line 282
    :cond_2
    iget-boolean v0, p0, Lcom/sogou/theme/ThemeListView;->d:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/sogou/theme/ThemeListView;->b:I

    if-le v2, v0, :cond_3

    .line 283
    iget v0, p0, Lcom/sogou/theme/ThemeListView;->b:I

    move v3, v0

    .line 285
    :goto_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/sogou/theme/ThemeListView;->d:I

    .line 286
    iget-object v0, p0, Lcom/sogou/theme/ThemeListView;->a:Landroid/widget/Scroller;

    sub-int v4, v3, v2

    const/16 v5, 0x190

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 289
    invoke-virtual {p0}, Lcom/sogou/theme/ThemeListView;->invalidate()V

    goto :goto_0

    :cond_3
    move v3, v1

    goto :goto_1
.end method

.method private e()V
    .locals 2

    .prologue
    .line 299
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sogou/theme/ThemeListView;->d:Z

    .line 300
    iget-object v0, p0, Lcom/sogou/theme/ThemeListView;->a:Lcom/sogou/theme/ThemeListViewFooter;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sogou/theme/ThemeListViewFooter;->setState(I)V

    .line 301
    iget-object v0, p0, Lcom/sogou/theme/ThemeListView;->a:Lhq;

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/sogou/theme/ThemeListView;->a:Lhq;

    invoke-interface {v0}, Lhq;->b()V

    .line 304
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 160
    iget-boolean v0, p0, Lcom/sogou/theme/ThemeListView;->b:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 161
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sogou/theme/ThemeListView;->b:Z

    .line 162
    invoke-direct {p0}, Lcom/sogou/theme/ThemeListView;->c()V

    .line 164
    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/sogou/theme/ThemeListView;->d:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 171
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sogou/theme/ThemeListView;->d:Z

    .line 173
    invoke-direct {p0}, Lcom/sogou/theme/ThemeListView;->d()V

    .line 175
    :cond_0
    return-void
.end method

.method public computeScroll()V
    .locals 2

    .prologue
    .line 380
    iget-object v0, p0, Lcom/sogou/theme/ThemeListView;->a:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    iget v0, p0, Lcom/sogou/theme/ThemeListView;->d:I

    if-nez v0, :cond_1

    .line 382
    iget-object v0, p0, Lcom/sogou/theme/ThemeListView;->a:Lcom/sogou/theme/ThemeListViewHeader;

    iget-object v1, p0, Lcom/sogou/theme/ThemeListView;->a:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sogou/theme/ThemeListViewHeader;->setVisiableHeight(I)V

    .line 386
    :goto_0
    invoke-virtual {p0}, Lcom/sogou/theme/ThemeListView;->postInvalidate()V

    .line 389
    :cond_0
    invoke-super {p0}, Landroid/widget/ListView;->computeScroll()V

    .line 390
    return-void

    .line 384
    :cond_1
    iget-object v0, p0, Lcom/sogou/theme/ThemeListView;->a:Lcom/sogou/theme/ThemeListViewFooter;

    iget-object v1, p0, Lcom/sogou/theme/ThemeListView;->a:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sogou/theme/ThemeListViewFooter;->setVisiableHeight(I)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 308
    const-string v0, "**************************onMeasure***********************************"

    invoke-direct {p0, v0}, Lcom/sogou/theme/ThemeListView;->a(Ljava/lang/String;)V

    .line 309
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onMeasure(II)V

    .line 310
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 406
    iput p4, p0, Lcom/sogou/theme/ThemeListView;->c:I

    .line 407
    iget-object v0, p0, Lcom/sogou/theme/ThemeListView;->a:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/sogou/theme/ThemeListView;->a:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 411
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 398
    iget-object v0, p0, Lcom/sogou/theme/ThemeListView;->a:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/sogou/theme/ThemeListView;->a:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 401
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter

    .prologue
    const v4, 0x3fe66666

    const/4 v3, 0x0

    const/high16 v1, -0x4080

    .line 313
    iget v0, p0, Lcom/sogou/theme/ThemeListView;->a:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 314
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/sogou/theme/ThemeListView;->a:F

    .line 317
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 341
    :pswitch_0
    iput v1, p0, Lcom/sogou/theme/ThemeListView;->a:F

    .line 342
    invoke-virtual {p0}, Lcom/sogou/theme/ThemeListView;->getFirstVisiblePosition()I

    move-result v0

    if-nez v0, :cond_2

    .line 344
    iget-boolean v0, p0, Lcom/sogou/theme/ThemeListView;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sogou/theme/ThemeListView;->a:Lcom/sogou/theme/ThemeListViewHeader;

    invoke-virtual {v0}, Lcom/sogou/theme/ThemeListViewHeader;->a()I

    move-result v0

    iget v1, p0, Lcom/sogou/theme/ThemeListView;->a:I

    if-le v0, v1, :cond_1

    .line 346
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sogou/theme/ThemeListView;->b:Z

    .line 347
    iget-object v0, p0, Lcom/sogou/theme/ThemeListView;->a:Lcom/sogou/theme/ThemeListViewHeader;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sogou/theme/ThemeListViewHeader;->setState(I)V

    .line 348
    iget-object v0, p0, Lcom/sogou/theme/ThemeListView;->a:Lhq;

    if-eqz v0, :cond_1

    .line 349
    iget-object v0, p0, Lcom/sogou/theme/ThemeListView;->a:Lhq;

    invoke-interface {v0}, Lhq;->a()V

    .line 352
    :cond_1
    invoke-direct {p0}, Lcom/sogou/theme/ThemeListView;->c()V

    .line 354
    :cond_2
    invoke-virtual {p0}, Lcom/sogou/theme/ThemeListView;->getLastVisiblePosition()I

    move-result v0

    iget v1, p0, Lcom/sogou/theme/ThemeListView;->c:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_4

    .line 356
    iget-boolean v0, p0, Lcom/sogou/theme/ThemeListView;->c:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sogou/theme/ThemeListView;->a:Lcom/sogou/theme/ThemeListViewFooter;

    invoke-virtual {v0}, Lcom/sogou/theme/ThemeListViewFooter;->a()I

    move-result v0

    iget v1, p0, Lcom/sogou/theme/ThemeListView;->b:I

    if-le v0, v1, :cond_3

    .line 358
    invoke-direct {p0}, Lcom/sogou/theme/ThemeListView;->e()V

    .line 360
    :cond_3
    invoke-direct {p0}, Lcom/sogou/theme/ThemeListView;->d()V

    .line 364
    :cond_4
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mFooterView.getBottomMargin()====================="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sogou/theme/ThemeListView;->a:Lcom/sogou/theme/ThemeListViewFooter;

    invoke-virtual {v1}, Lcom/sogou/theme/ThemeListViewFooter;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sogou/theme/ThemeListView;->a(Ljava/lang/String;)V

    .line 374
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 319
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/sogou/theme/ThemeListView;->a:F

    goto :goto_0

    .line 322
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget v1, p0, Lcom/sogou/theme/ThemeListView;->a:F

    sub-float/2addr v0, v1

    .line 323
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deltaY=========================================================="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sogou/theme/ThemeListView;->a(Ljava/lang/String;)V

    .line 324
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, p0, Lcom/sogou/theme/ThemeListView;->a:F

    .line 325
    iget-boolean v1, p0, Lcom/sogou/theme/ThemeListView;->a:Z

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/sogou/theme/ThemeListView;->getFirstVisiblePosition()I

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/sogou/theme/ThemeListView;->a:Lcom/sogou/theme/ThemeListViewHeader;

    invoke-virtual {v1}, Lcom/sogou/theme/ThemeListViewHeader;->a()I

    move-result v1

    if-gtz v1, :cond_5

    cmpl-float v1, v0, v3

    if-lez v1, :cond_6

    .line 329
    :cond_5
    div-float v1, v0, v4

    invoke-direct {p0, v1}, Lcom/sogou/theme/ThemeListView;->a(F)V

    .line 332
    :cond_6
    iget-boolean v1, p0, Lcom/sogou/theme/ThemeListView;->c:Z

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/sogou/theme/ThemeListView;->getLastVisiblePosition()I

    move-result v1

    iget v2, p0, Lcom/sogou/theme/ThemeListView;->c:I

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/sogou/theme/ThemeListView;->a:Lcom/sogou/theme/ThemeListViewFooter;

    invoke-virtual {v1}, Lcom/sogou/theme/ThemeListViewFooter;->a()I

    move-result v1

    if-gtz v1, :cond_7

    cmpg-float v1, v0, v3

    if-gez v1, :cond_4

    .line 336
    :cond_7
    neg-float v0, v0

    div-float/2addr v0, v4

    invoke-direct {p0, v0}, Lcom/sogou/theme/ThemeListView;->b(F)V

    goto/16 :goto_0

    .line 317
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0
    .parameter

    .prologue
    .line 394
    iput-object p1, p0, Lcom/sogou/theme/ThemeListView;->a:Landroid/widget/AbsListView$OnScrollListener;

    .line 395
    return-void
.end method

.method public setPullLoadEnable(Z)V
    .locals 2
    .parameter

    .prologue
    .line 147
    iput-boolean p1, p0, Lcom/sogou/theme/ThemeListView;->c:Z

    .line 148
    iget-boolean v0, p0, Lcom/sogou/theme/ThemeListView;->c:Z

    if-nez v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/sogou/theme/ThemeListView;->b:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 154
    :goto_0
    return-void

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/sogou/theme/ThemeListView;->b:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public setPullRefreshEnable(Z)V
    .locals 2
    .parameter

    .prologue
    .line 133
    iput-boolean p1, p0, Lcom/sogou/theme/ThemeListView;->a:Z

    .line 134
    iget-boolean v0, p0, Lcom/sogou/theme/ThemeListView;->a:Z

    if-nez v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/sogou/theme/ThemeListView;->a:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 139
    :goto_0
    return-void

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/sogou/theme/ThemeListView;->a:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public setRefreshTime(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 183
    if-eqz p1, :cond_0

    .line 184
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 185
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 186
    new-instance v3, Ljava/sql/Date;

    invoke-direct {v3, v0, v1}, Ljava/sql/Date;-><init>(J)V

    .line 187
    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 188
    iget-object v1, p0, Lcom/sogou/theme/ThemeListView;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    :goto_0
    return-void

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/sogou/theme/ThemeListView;->a:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setXListViewListener(Lhq;)V
    .locals 0
    .parameter

    .prologue
    .line 414
    iput-object p1, p0, Lcom/sogou/theme/ThemeListView;->a:Lhq;

    .line 415
    return-void
.end method
