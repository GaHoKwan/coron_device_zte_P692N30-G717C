.class public Lcom/mediatek/videofavorites/FixedFrameLayout;
.super Landroid/widget/FrameLayout;
.source "FixedFrameLayout.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# instance fields
.field private final mMatchParentChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/mediatek/videofavorites/FixedFrameLayout;->mMatchParentChildren:Ljava/util/ArrayList;

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/mediatek/videofavorites/FixedFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/mediatek/videofavorites/FixedFrameLayout;->mMatchParentChildren:Ljava/util/ArrayList;

    .line 64
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 17
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 72
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    .line 74
    .local v10, count:I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v3, 0x4000

    if-ne v1, v3, :cond_0

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v3, 0x4000

    if-eq v1, v3, :cond_4

    :cond_0
    const/4 v15, 0x1

    .line 77
    .local v15, measureMatchParentChildren:Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/videofavorites/FixedFrameLayout;->mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 79
    const/4 v8, 0x0

    .line 81
    .local v8, childState:I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_1
    if-ge v11, v10, :cond_5

    .line 82
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 83
    .local v2, child:Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasureAllChildren()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v3, 0x8

    if-eq v1, v3, :cond_3

    .line 84
    :cond_1
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move/from16 v3, p1

    move/from16 v5, p2

    invoke-virtual/range {v1 .. v6}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 85
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/widget/FrameLayout$LayoutParams;

    .line 86
    .local v12, lp:Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredState()I

    move-result v1

    invoke-static {v8, v1}, Lcom/mediatek/videofavorites/FixedFrameLayout;->combineMeasuredStates(II)I

    move-result v8

    .line 87
    if-eqz v15, :cond_3

    iget v1, v12, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_2

    iget v1, v12, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_3

    .line 90
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/videofavorites/FixedFrameLayout;->mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    .end local v12           #lp:Landroid/widget/FrameLayout$LayoutParams;
    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 74
    .end local v2           #child:Landroid/view/View;
    .end local v8           #childState:I
    .end local v11           #i:I
    .end local v15           #measureMatchParentChildren:Z
    :cond_4
    const/4 v15, 0x0

    goto :goto_0

    .line 95
    .restart local v8       #childState:I
    .restart local v11       #i:I
    .restart local v15       #measureMatchParentChildren:Z
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    .line 96
    .local v16, res:Landroid/content/res/Resources;
    const v1, 0x7f080001

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v13

    .line 97
    .local v13, maxHeight:I
    const/high16 v1, 0x7f08

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v14

    .line 98
    .local v14, maxWidth:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v13}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 101
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/videofavorites/FixedFrameLayout;->mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 102
    const/4 v1, 0x1

    if-le v10, v1, :cond_8

    .line 103
    const/4 v11, 0x0

    :goto_2
    if-ge v11, v10, :cond_8

    .line 104
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/videofavorites/FixedFrameLayout;->mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 106
    .restart local v2       #child:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 110
    .local v12, lp:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v1, v12, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_6

    .line 111
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v3, v12, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v1, v3

    iget v3, v12, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v1, v3

    const/high16 v3, 0x4000

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 120
    .local v9, childWidthMeasureSpec:I
    :goto_3
    iget v1, v12, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_7

    .line 121
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v3, v12, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v1, v3

    iget v3, v12, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v1, v3

    const/high16 v3, 0x4000

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 130
    .local v7, childHeightMeasureSpec:I
    :goto_4
    invoke-virtual {v2, v9, v7}, Landroid/view/View;->measure(II)V

    .line 103
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 115
    .end local v7           #childHeightMeasureSpec:I
    .end local v9           #childWidthMeasureSpec:I
    :cond_6
    iget v1, v12, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v3, v12, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v3

    iget v3, v12, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v0, p1

    invoke-static {v0, v1, v3}, Lcom/mediatek/videofavorites/FixedFrameLayout;->getChildMeasureSpec(III)I

    move-result v9

    .restart local v9       #childWidthMeasureSpec:I
    goto :goto_3

    .line 125
    :cond_7
    iget v1, v12, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v3, v12, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, v3

    iget v3, v12, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v0, p2

    invoke-static {v0, v1, v3}, Lcom/mediatek/videofavorites/FixedFrameLayout;->getChildMeasureSpec(III)I

    move-result v7

    .restart local v7       #childHeightMeasureSpec:I
    goto :goto_4

    .line 133
    .end local v2           #child:Landroid/view/View;
    .end local v7           #childHeightMeasureSpec:I
    .end local v9           #childWidthMeasureSpec:I
    .end local v12           #lp:Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_8
    return-void
.end method
