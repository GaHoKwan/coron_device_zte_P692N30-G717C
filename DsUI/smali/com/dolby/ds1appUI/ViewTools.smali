.class public Lcom/dolby/ds1appUI/ViewTools;
.super Ljava/lang/Object;
.source "ViewTools.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public static determineNativeViewContainer(Landroid/app/Activity;)Landroid/view/ViewGroup;
    .locals 4
    .parameter "activity"

    .prologue
    const/4 v3, -0x2

    .line 203
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 204
    .local v1, view:Landroid/view/View;
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 205
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 206
    .local v0, rootView:Landroid/view/ViewParent;
    invoke-static {v1}, Lcom/dolby/ds1appUI/ViewTools;->removeFromParent(Landroid/view/View;)V

    .line 207
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 208
    check-cast v0, Landroid/view/ViewGroup;

    .line 210
    .end local v0           #rootView:Landroid/view/ViewParent;
    :goto_0
    return-object v0

    .restart local v0       #rootView:Landroid/view/ViewParent;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getRelativePosition(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/graphics/Point;
    .locals 5
    .parameter "v"
    .parameter "relativeTo"

    .prologue
    .line 224
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 225
    :cond_0
    const/4 v0, 0x0

    .line 243
    :cond_1
    return-object v0

    .line 228
    :cond_2
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-direct {v0, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    .line 229
    .local v0, p:Landroid/graphics/Point;
    move-object v1, p0

    .line 232
    .local v1, view:Landroid/view/View;
    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .local v2, vp:Landroid/view/ViewParent;
    if-eq v2, p1, :cond_1

    .line 233
    instance-of v3, v2, Landroid/view/View;

    if-eqz v3, :cond_1

    move-object v1, v2

    .line 234
    check-cast v1, Landroid/view/View;

    .line 235
    iget v3, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Point;->x:I

    .line 236
    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Point;->y:I

    goto :goto_0
.end method

.method public static getVisibleChildIndexAt(Landroid/view/ViewGroup;FF)I
    .locals 3
    .parameter "vg"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 38
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 39
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 40
    .local v0, ch:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-ltz v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, p2, v2

    if-gtz v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 44
    .end local v0           #ch:Landroid/view/View;
    .end local v1           #i:I
    :goto_1
    return v1

    .line 38
    .restart local v0       #ch:Landroid/view/View;
    .restart local v1       #i:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 44
    .end local v0           #ch:Landroid/view/View;
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public static getVisibleChildViewAt(Landroid/view/ViewGroup;FF)Landroid/view/View;
    .locals 2
    .parameter "vg"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 49
    invoke-static {p0, p1, p2}, Lcom/dolby/ds1appUI/ViewTools;->getVisibleChildIndexAt(Landroid/view/ViewGroup;FF)I

    move-result v0

    .line 50
    .local v0, n:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 51
    const/4 v1, 0x0

    .line 53
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method public static isUIThread()Z
    .locals 2

    .prologue
    .line 81
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static removeFromParent(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 187
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 188
    .local v0, vp:Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 189
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0           #vp:Landroid/view/ViewParent;
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 191
    :cond_0
    return-void
.end method

.method public static showTooltip(Landroid/app/Activity;Landroid/view/ViewGroup;Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/view/View;
    .locals 14
    .parameter "activity"
    .parameter "rootView"
    .parameter "pointTo"
    .parameter "title"
    .parameter "text"

    .prologue
    .line 103
    move-object/from16 v0, p2

    invoke-static {v0, p1}, Lcom/dolby/ds1appUI/ViewTools;->getRelativePosition(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/graphics/Point;

    move-result-object v5

    .line 104
    .local v5, posPointTo:Landroid/graphics/Point;
    iget v1, v5, Landroid/graphics/Point;->x:I

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v1, v7

    iput v1, v5, Landroid/graphics/Point;->x:I

    .line 106
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v7, 0x7f03000e

    const/4 v13, 0x0

    invoke-virtual {v1, v7, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 107
    .local v6, vTooltip:Landroid/view/ViewGroup;
    const v1, 0x7f0a0026

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 108
    .local v3, vTooltipMain:Landroid/view/ViewGroup;
    const v1, 0x7f0a0033

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 109
    .local v12, vTitle:Landroid/widget/TextView;
    const v1, 0x7f0a0034

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 110
    .local v11, vText:Landroid/widget/TextView;
    const v1, 0x7f0a0035

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 111
    .local v2, vArrow:Landroid/view/View;
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v7, 0x7f060026

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    invoke-virtual {v11}, Landroid/widget/TextView;->getMaxWidth()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 114
    :cond_0
    sget-object v1, Lcom/dolby/ds1appUI/Assets$FontType;->REGULAR:Lcom/dolby/ds1appUI/Assets$FontType;

    invoke-static {v1}, Lcom/dolby/ds1appUI/Assets;->getFont(Lcom/dolby/ds1appUI/Assets$FontType;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v12, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 115
    sget-object v1, Lcom/dolby/ds1appUI/Assets$FontType;->REGULAR:Lcom/dolby/ds1appUI/Assets$FontType;

    invoke-static {v1}, Lcom/dolby/ds1appUI/Assets;->getFont(Lcom/dolby/ds1appUI/Assets$FontType;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 116
    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    move-object/from16 v0, p4

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout$LayoutParams;

    .line 120
    .local v8, lpArrow:Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v10, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 121
    .local v10, screenWidth:I
    iget v1, v5, Landroid/graphics/Point;->x:I

    mul-int/lit8 v1, v1, 0x3

    if-gt v1, v10, :cond_1

    .line 122
    const/4 v1, 0x3

    iput v1, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 129
    :goto_0
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v7, -0x1

    invoke-direct {v9, v1, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 131
    .local v9, lpTooltip:Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 133
    .local v4, lpTooltipMain:Landroid/widget/FrameLayout$LayoutParams;
    const/4 v1, 0x4

    invoke-virtual {v6, v1}, Landroid/view/View;->setVisibility(I)V

    .line 134
    invoke-virtual {p0, v6, v9}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 136
    invoke-virtual {v6}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v13

    new-instance v1, Lcom/dolby/ds1appUI/ViewTools$1;

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/dolby/ds1appUI/ViewTools$1;-><init>(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/FrameLayout$LayoutParams;Landroid/graphics/Point;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    invoke-virtual {v13, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 169
    new-instance v1, Lcom/dolby/ds1appUI/ViewTools$2;

    invoke-direct {v1, v6}, Lcom/dolby/ds1appUI/ViewTools$2;-><init>(Landroid/view/ViewGroup;)V

    invoke-virtual {v6, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 178
    return-object v6

    .line 123
    .end local v4           #lpTooltipMain:Landroid/widget/FrameLayout$LayoutParams;
    .end local v9           #lpTooltip:Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    iget v1, v5, Landroid/graphics/Point;->x:I

    mul-int/lit8 v1, v1, 0x3

    mul-int/lit8 v7, v10, 0x2

    if-lt v1, v7, :cond_2

    .line 124
    const/4 v1, 0x5

    iput v1, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0

    .line 126
    :cond_2
    const/4 v1, 0x1

    iput v1, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0
.end method

.method public static testDrawableState([I[I)Z
    .locals 6
    .parameter "state"
    .parameter "referenceState"

    .prologue
    .line 58
    const/4 v3, 0x1

    .line 59
    .local v3, matches:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, p1

    if-ge v1, v4, :cond_1

    .line 60
    const/4 v0, 0x0

    .line 61
    .local v0, found:Z
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    array-length v4, p0

    if-ge v2, v4, :cond_0

    .line 62
    aget v4, p1, v1

    aget v5, p0, v2

    if-ne v4, v5, :cond_2

    .line 63
    const/4 v0, 0x1

    .line 67
    :cond_0
    if-nez v0, :cond_3

    .line 68
    const/4 v3, 0x0

    .line 72
    .end local v0           #found:Z
    .end local v2           #j:I
    :cond_1
    return v3

    .line 61
    .restart local v0       #found:Z
    .restart local v2       #j:I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 59
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
