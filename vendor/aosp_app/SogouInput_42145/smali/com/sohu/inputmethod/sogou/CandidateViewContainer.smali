.class public Lcom/sohu/inputmethod/sogou/CandidateViewContainer;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Ljava/util/Observer;


# instance fields
.field public a:I

.field private a:Landroid/content/Context;

.field private a:Landroid/graphics/Rect;

.field private a:Landroid/widget/FrameLayout;

.field private a:Landroid/widget/ImageButton;

.field private a:Lcom/sohu/inputmethod/sogou/CandidateCloudView;

.field private a:Lcom/sohu/inputmethod/sogou/HorizontalScrollView;

.field private a:Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;

.field private a:Lcom/sohu/inputmethod/sogou/SogouIME;

.field private a:Z

.field private b:I

.field private b:Landroid/widget/ImageButton;

.field private c:I

.field private c:Landroid/widget/ImageButton;

.field private d:I

.field private d:Landroid/widget/ImageButton;

.field private e:I

.field private e:Landroid/widget/ImageButton;

.field private f:I

.field private f:Landroid/widget/ImageButton;

.field private g:I

.field private g:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 90
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    iput-object v2, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->a:Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->a:Z

    .line 82
    iput v1, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->f:I

    .line 83
    iput v1, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->g:I

    .line 87
    iput-object v2, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->a:Lcom/sohu/inputmethod/sogou/CandidateCloudView;

    .line 91
    iput-object p1, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->a:Landroid/content/Context;

    .line 92
    invoke-static {p1}, Laox;->a(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3e0f5c29

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->g:I

    .line 93
    return-void
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/sogou/CandidateViewContainer;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/sogou/CandidateViewContainer;)Lcom/sohu/inputmethod/sogou/SogouIME;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    return-object v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 745
    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    .prologue
    .line 307
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->a:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 308
    iget v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->b:I

    iget v1, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->c:I

    sub-int/2addr v0, v1

    .line 309
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->b:I

    iget v1, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->c:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->a:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public a()Lcom/sohu/inputmethod/sogou/CandidateCloudView;
    .locals 1

    .prologue
    .line 708
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->a:Lcom/sohu/inputmethod/sogou/CandidateCloudView;

    return-object v0
.end method

.method public a()Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;
    .locals 1

    .prologue
    .line 712
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->a:Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;

    return-object v0
.end method

.method public a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 96
    const-string v0, "[initViews]"

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->a(Ljava/lang/String;)V

    .line 102
    const v0, 0x7f0701bb

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->a:Landroid/widget/ImageButton;

    .line 116
    const v0, 0x7f0701bd

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->a:Landroid/widget/FrameLayout;

    .line 117
    const v0, 0x7f0701bf

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->d:Landroid/widget/ImageButton;

    .line 118
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->d:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->d:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 120
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->d:Landroid/widget/ImageButton;

    new-instance v1, Laon;

    invoke-direct {v1, p0}, Laon;-><init>(Lcom/sohu/inputmethod/sogou/CandidateViewContainer;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    :cond_0
    const v0, 0x7f0701c0

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->b:Landroid/widget/ImageButton;

    .line 138
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->b:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 139
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->b:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 140
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->b:Landroid/widget/ImageButton;

    new-instance v1, Laoo;

    invoke-direct {v1, p0}, Laoo;-><init>(Lcom/sohu/inputmethod/sogou/CandidateViewContainer;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    :cond_1
    const v0, 0x7f0701be

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->c:Landroid/widget/ImageButton;

    .line 150
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->c:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    .line 151
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->c:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 152
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->c:Landroid/widget/ImageButton;

    new-instance v1, Laop;

    invoke-direct {v1, p0}, Laop;-><init>(Lcom/sohu/inputmethod/sogou/CandidateViewContainer;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    :cond_2
    const v0, 0x7f0701c1

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->e:Landroid/widget/ImageButton;

    .line 168
    const v0, 0x7f0701c2

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->a:Lcom/sohu/inputmethod/sogou/HorizontalScrollView;

    .line 169
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->a:Lcom/sohu/inputmethod/sogou/HorizontalScrollView;

    const v1, 0x7f0701c3

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->a(I)V

    .line 170
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->a:Lcom/sohu/inputmethod/sogou/HorizontalScrollView;

    invoke-virtual {v0, v2}, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->setCanScrollhorizontal(Z)V

    .line 171
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->a:Lcom/sohu/inputmethod/sogou/HorizontalScrollView;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->a()Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->setParent(Landroid/view/View;)V

    .line 172
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->a:Lcom/sohu/inputmethod/sogou/HorizontalScrollView;

    invoke-virtual {v0, v2}, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->setWrapWithChild(Z)V

    .line 173
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->a:Lcom/sohu/inputmethod/sogou/HorizontalScrollView;

    invoke-virtual {v0, v2}, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->setOverScrollMode(I)V

    .line 178
    const v0, 0x7f0701c6

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->a:Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;

    .line 179
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->a:Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;

    const v1, 0x7f0701c7

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->a(I)V

    .line 180
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->a:Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;

    invoke-virtual {v0, v2}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->setCanScrollhorizontal(Z)V

    .line 181
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->a:Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;

    invoke-virtual {v0, v2}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->setWrapWithChild(Z)V

    .line 182
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->a:Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;

    invoke-virtual {v0, v2}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->setOverScrollMode(I)V

    .line 183
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->a:Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->a()Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->setCandidateViewContainer(Lcom/sohu/inputmethod/sogou/CandidateViewContainer;)V

    .line 185
    const v0, 0x7f0701c4

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->f:Landroid/widget/ImageButton;

    .line 186
    const v0, 0x7f0701c5

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->g:Landroid/widget/ImageButton;

    .line 304
    return-void
.end method

.method public a(Lcom/sohu/inputmethod/sogou/CandidateCloudView;)V
    .locals 1
    .parameter

    .prologue
    .line 677
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->a:Lcom/sohu/inputmethod/sogou/CandidateCloudView;

    if-eqz v0, :cond_0

    .line 678
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->f()V

    .line 680
    :cond_0
    iput-object p1, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->a:Lcom/sohu/inputmethod/sogou/CandidateCloudView;

    .line 681
    return-void
.end method

.method public a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 723
    sget-boolean v0, Lcom/sohu/inputmethod/sogou/SogouIME;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->a:Lcom/sohu/inputmethod/sogou/CandidateCloudView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    if-nez v0, :cond_1

    .line 732
    :cond_0
    :goto_0
    return-void

    .line 725
    :cond_1
    if-eqz p1, :cond_2

    .line 726
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->a:Lcom/sohu/inputmethod/sogou/CandidateCloudView;

    invoke-virtual {v0, p1}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->setFocusState(Z)V

    .line 727
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->c(Z)V

    goto :goto_0

    .line 729
    :cond_2
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->a:Lcom/sohu/inputmethod/sogou/CandidateCloudView;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->f()V

    .line 730
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->c(Z)V

    goto :goto_0
.end method

.method public a(ZZ)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 637
    if-eqz p1, :cond_2

    .line 638
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->f:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 639
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->f:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 646
    :cond_0
    :goto_0
    if-eqz p2, :cond_3

    .line 647
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->g:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->isShown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 648
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->g:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 655
    :cond_1
    :goto_1
    return-void

    .line 642
    :cond_2
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->f:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 643
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->f:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 651
    :cond_3
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->g:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 652
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->g:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_1
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 495
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->a:Z

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->a:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 315
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 452
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->a:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 453
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->a:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 454
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->c:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 455
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->c:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 456
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->d:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 457
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->d:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 458
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->b:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 459
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->b:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 460
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->f:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 461
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->f:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 462
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->g:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 463
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->g:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 464
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->e:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 465
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->e:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 474
    invoke-virtual {p0, v1}, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 475
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->a:Lcom/sohu/inputmethod/sogou/HorizontalScrollView;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->a()Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->c()V

    .line 476
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 633
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->c:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 319
    iget v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->c:I

    return v0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 513
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->a:Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->a()Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->setForceUpdateButtonStatus(Z)V

    .line 514
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->a:Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->setVisibility(I)V

    .line 516
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->a:Lcom/sohu/inputmethod/sogou/HorizontalScrollView;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->a()Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->setVisibility(I)V

    .line 517
    return-void
.end method

.method public d()I
    .locals 1

    .prologue
    .line 342
    iget v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->a:I

    return v0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->a:Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->b()V

    .line 521
    return-void
.end method

.method public e()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 524
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->a:Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 525
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->a:Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->setVisibility(I)V

    .line 526
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->a:Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->d()V

    .line 529
    :cond_0
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->f:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 530
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->f:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 532
    :cond_1
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->g:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->isShown()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 533
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->g:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 535
    :cond_2
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->a:Lcom/sohu/inputmethod/sogou/HorizontalScrollView;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->a()Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->isShown()Z

    move-result v0

    if-nez v0, :cond_3

    .line 536
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->a:Lcom/sohu/inputmethod/sogou/HorizontalScrollView;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->a()Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->setVisibility(I)V

    .line 538
    :cond_3
    return-void
.end method

.method public f()V
    .locals 1

    .prologue
    .line 699
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->a:Lcom/sohu/inputmethod/sogou/CandidateCloudView;

    if-eqz v0, :cond_0

    .line 700
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->a:Lcom/sohu/inputmethod/sogou/CandidateCloudView;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->b()V

    .line 701
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->a:Lcom/sohu/inputmethod/sogou/CandidateCloudView;

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->removeView(Landroid/view/View;)V

    .line 704
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->a:Lcom/sohu/inputmethod/sogou/CandidateCloudView;

    .line 705
    return-void
.end method

.method public g()V
    .locals 1

    .prologue
    .line 716
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->a:Lcom/sohu/inputmethod/sogou/CandidateCloudView;

    if-eqz v0, :cond_0

    .line 718
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->a:Lcom/sohu/inputmethod/sogou/CandidateCloudView;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->g()V

    .line 720
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 609
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->a:Lcom/sohu/inputmethod/sogou/HorizontalScrollView;

    if-eqz v0, :cond_0

    .line 610
    iget v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->b:I

    const/high16 v1, 0x4000

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 625
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 626
    return-void
.end method

.method public setButtonMoreEnabled(Z)V
    .locals 1
    .parameter

    .prologue
    .line 629
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->c:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 630
    return-void
.end method

.method public setCandidateCloudTheme(Lawc;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 665
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->a:Lcom/sohu/inputmethod/sogou/CandidateCloudView;

    if-nez v0, :cond_0

    .line 668
    :goto_0
    return-void

    .line 667
    :cond_0
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->a:Lcom/sohu/inputmethod/sogou/CandidateCloudView;

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->a()I

    move-result v1

    invoke-virtual {v0, p1, v1, p2}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->setCandidateCloudTheme(Lawc;II)V

    goto :goto_0
.end method

.method public setCandidateId(I)V
    .locals 0
    .parameter

    .prologue
    .line 338
    iput p1, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->a:I

    .line 339
    return-void
.end method

.method public setInputState(Z)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x4

    .line 541
    if-eqz p1, :cond_0

    .line 543
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->c:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 544
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->d:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 545
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->b:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 563
    :goto_0
    return-void

    .line 554
    :cond_0
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->c:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 555
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->d:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 556
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->b:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public setInputState(ZZ)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x4

    .line 571
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    if-nez p1, :cond_2

    if-eqz p2, :cond_2

    .line 573
    :cond_1
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->c:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 574
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->d:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 575
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->b:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 601
    :goto_0
    return-void

    .line 582
    :cond_2
    if-eqz p1, :cond_3

    if-nez p2, :cond_3

    .line 584
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->c:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 585
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->d:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 586
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->b:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 590
    :cond_3
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->c:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 591
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->d:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 592
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->b:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public setIsHandWriting(Z)V
    .locals 1
    .parameter

    .prologue
    .line 490
    iput-boolean p1, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->a:Z

    .line 491
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->a:Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->a()Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->e()V

    .line 492
    return-void
.end method

.method public setService(Lcom/sohu/inputmethod/sogou/SogouIME;)V
    .locals 0
    .parameter

    .prologue
    .line 486
    iput-object p1, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    .line 487
    return-void
.end method

.method public setTheme(Lawc;Lawe;)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/high16 v8, 0x3f80

    const v7, 0x3f4ccccd

    const/high16 v6, 0x3f00

    const v5, 0x3e19999a

    const/4 v4, 0x0

    .line 346
    const-string v0, "[setTheme]"

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->a(Ljava/lang/String;)V

    .line 347
    invoke-virtual {p2}, Lawe;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lawh;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 348
    invoke-virtual {p2}, Lawe;->b()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->a:Landroid/graphics/Rect;

    .line 349
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->a:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 350
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v4, v4, v4, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->a:Landroid/graphics/Rect;

    .line 351
    :cond_0
    invoke-virtual {p2}, Lawe;->a()I

    move-result v0

    iput v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->b:I

    .line 353
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->a:Lcom/sohu/inputmethod/sogou/HorizontalScrollView;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->a()Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->i()I

    move-result v0

    .line 354
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->a:Lcom/sohu/inputmethod/sogou/HorizontalScrollView;

    invoke-virtual {v1}, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->a()Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->h()I

    move-result v1

    .line 355
    if-le v0, v1, :cond_1

    .line 356
    iget v2, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->b:I

    sub-int v3, v0, v1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->b:I

    .line 358
    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->c:I

    .line 360
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->a:Lcom/sohu/inputmethod/sogou/HorizontalScrollView;

    iget v1, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->c:I

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->setViewHeight(I)V

    .line 370
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->c:Landroid/widget/ImageButton;

    sget-object v1, Lawd;->e:Ljava/lang/Integer;

    invoke-virtual {p1, v1}, Lawc;->a(Ljava/lang/Integer;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Lawh;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 371
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->c:Landroid/widget/ImageButton;

    sget-object v1, Lawd;->e:Ljava/lang/Integer;

    invoke-virtual {p1, v1}, Lawc;->b(Ljava/lang/Integer;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Lawh;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 372
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->d:Landroid/widget/ImageButton;

    sget-object v1, Lawd;->f:Ljava/lang/Integer;

    invoke-virtual {p1, v1}, Lawc;->a(Ljava/lang/Integer;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Lawh;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 373
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->d:Landroid/widget/ImageButton;

    sget-object v1, Lawd;->f:Ljava/lang/Integer;

    invoke-virtual {p1, v1}, Lawc;->b(Ljava/lang/Integer;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Lawh;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 374
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->b:Landroid/widget/ImageButton;

    sget-object v1, Lawd;->o:Ljava/lang/Integer;

    invoke-virtual {p1, v1}, Lawc;->a(Ljava/lang/Integer;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Lawh;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 375
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->b:Landroid/widget/ImageButton;

    sget-object v1, Lawd;->o:Ljava/lang/Integer;

    invoke-virtual {p1, v1}, Lawc;->b(Ljava/lang/Integer;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Lawh;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 377
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->f:Landroid/widget/ImageButton;

    sget-object v1, Lawd;->q:Ljava/lang/Integer;

    invoke-virtual {p1, v1}, Lawc;->a(Ljava/lang/Integer;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Lawh;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 378
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->f:Landroid/widget/ImageButton;

    sget-object v1, Lawd;->q:Ljava/lang/Integer;

    invoke-virtual {p1, v1}, Lawc;->b(Ljava/lang/Integer;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Lawh;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 380
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->g:Landroid/widget/ImageButton;

    sget-object v1, Lawd;->r:Ljava/lang/Integer;

    invoke-virtual {p1, v1}, Lawc;->a(Ljava/lang/Integer;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Lawh;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 381
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->g:Landroid/widget/ImageButton;

    sget-object v1, Lawd;->r:Ljava/lang/Integer;

    invoke-virtual {p1, v1}, Lawc;->b(Ljava/lang/Integer;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Lawh;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 383
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->e:Landroid/widget/ImageButton;

    sget-object v1, Lawd;->t:Ljava/lang/Integer;

    invoke-virtual {p1, v1}, Lawc;->a(Ljava/lang/Integer;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Lawh;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 386
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->e:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->isShown()Z

    move-result v0

    if-nez v0, :cond_2

    .line 387
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->e:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 391
    :cond_2
    invoke-static {}, Lavs;->a()Lavs;

    move-result-object v0

    invoke-virtual {v0}, Lavs;->a()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 392
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->a:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 393
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->a:Landroid/widget/ImageButton;

    sget-object v1, Lawd;->h:Ljava/lang/Integer;

    invoke-virtual {p1, v1}, Lawc;->a(Ljava/lang/Integer;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Lawh;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 394
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->a:Landroid/widget/ImageButton;

    sget-object v1, Lawd;->h:Ljava/lang/Integer;

    invoke-virtual {p1, v1}, Lawc;->b(Ljava/lang/Integer;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Lawh;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 406
    :goto_0
    invoke-virtual {p0, v4}, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->setInputState(Z)V

    .line 411
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->a:Lcom/sohu/inputmethod/sogou/CandidateCloudView;

    if-eqz v0, :cond_3

    .line 412
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->a:Lcom/sohu/inputmethod/sogou/CandidateCloudView;

    iget v1, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->c:I

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->setMinimumHeight(I)V

    .line 414
    :cond_3
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->a:Landroid/widget/FrameLayout;

    iget v1, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->c:I

    mul-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setMinimumWidth(I)V

    .line 415
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->a:Lcom/sohu/inputmethod/sogou/HorizontalScrollView;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->a()Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;

    move-result-object v0

    iget v1, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->c:I

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->setmCandHeight(I)V

    .line 417
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->a:Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->a()Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;

    move-result-object v0

    iget v1, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->c:I

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->setRealHeight(I)V

    .line 418
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->a:Landroid/widget/FrameLayout;

    iget v1, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->c:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setMinimumHeight(I)V

    .line 419
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->f:Landroid/widget/ImageButton;

    iget v1, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->c:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setMinimumHeight(I)V

    .line 420
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->g:Landroid/widget/ImageButton;

    iget v1, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->c:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setMinimumHeight(I)V

    .line 421
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->e:Landroid/widget/ImageButton;

    iget v1, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->c:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setMinimumHeight(I)V

    .line 423
    sget-boolean v0, Laox;->c:Z

    if-eqz v0, :cond_4

    .line 424
    sget v0, Laox;->c:F

    .line 425
    sget-object v1, Lawd;->h:Ljava/lang/Integer;

    invoke-virtual {p1, v1}, Lawc;->b(Ljava/lang/Integer;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 426
    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->a:Landroid/widget/ImageButton;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 427
    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->a:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setMinimumWidth(I)V

    .line 428
    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->a:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setMinimumHeight(I)V

    .line 432
    :cond_4
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    sget v1, Laox;->a:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    cmpl-float v0, v0, v5

    if-lez v0, :cond_8

    sget v0, Laox;->a:I

    int-to-float v0, v0

    mul-float/2addr v0, v5

    float-to-int v0, v0

    int-to-float v0, v0

    mul-float/2addr v0, v7

    :goto_1
    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->d:I

    .line 435
    sget-boolean v0, Laox;->a:Z

    if-eqz v0, :cond_9

    .line 436
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iput v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->e:I

    .line 443
    :goto_2
    iget v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->e:I

    if-gez v0, :cond_5

    iput v4, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->e:I

    .line 444
    :cond_5
    iget v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->d:I

    iget v1, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->e:I

    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->a:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v4, v1, v2}, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->setPadding(IIII)V

    .line 446
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->a:Z

    if-nez v0, :cond_6

    .line 447
    iget v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->c:I

    invoke-virtual {p0, p1, v0}, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->setCandidateCloudTheme(Lawc;I)V

    .line 448
    :cond_6
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->invalidate()V

    .line 449
    return-void

    .line 396
    :cond_7
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->a:Landroid/widget/ImageButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_0

    .line 432
    :cond_8
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    mul-float/2addr v0, v7

    goto :goto_1

    .line 438
    :cond_9
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    sget v1, Laox;->a:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    cmpl-float v0, v0, v6

    if-lez v0, :cond_a

    sget v0, Laox;->a:I

    int-to-float v0, v0

    mul-float/2addr v0, v6

    float-to-int v0, v0

    int-to-float v0, v0

    mul-float/2addr v0, v8

    :goto_3
    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->e:I

    goto :goto_2

    :cond_a
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    mul-float/2addr v0, v8

    iget v1, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->c:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    goto :goto_3
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 479
    instance-of v0, p1, Laxc;

    if-eqz v0, :cond_0

    .line 480
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Laxc;->a(Landroid/content/Context;)Laxc;

    move-result-object v0

    invoke-virtual {v0}, Laxc;->b()Lawc;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Laxc;->a(Landroid/content/Context;)Laxc;

    move-result-object v1

    iget v2, p0, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->a:I

    invoke-virtual {v1, v2}, Laxc;->a(I)Lawe;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->setTheme(Lawc;Lawe;)V

    .line 483
    :cond_0
    return-void
.end method
