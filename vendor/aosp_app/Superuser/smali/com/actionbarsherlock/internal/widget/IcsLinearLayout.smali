.class public Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;
.super Lcom/actionbarsherlock/internal/nineoldandroids/view/NineViewGroup;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;
    }
.end annotation


# static fields
.field private static final INDEX_BOTTOM:I = 0x2

.field private static final INDEX_CENTER_VERTICAL:I = 0x0

.field private static final INDEX_FILL:I = 0x3

.field private static final INDEX_TOP:I = 0x1

.field private static final LinearLayout:[I = null

.field private static final LinearLayout_baselineAlignedChildIndex:I = 0x0

.field private static final LinearLayout_divider:I = 0x2

.field private static final LinearLayout_dividerPadding:I = 0x5

.field private static final LinearLayout_measureWithLargestChild:I = 0x3

.field private static final LinearLayout_showDividers:I = 0x4

.field private static final LinearLayout_weightSum:I = 0x1

.field public static final SHOW_DIVIDER_BEGINNING:I = 0x1

.field public static final SHOW_DIVIDER_END:I = 0x4

.field public static final SHOW_DIVIDER_MIDDLE:I = 0x2

.field public static final SHOW_DIVIDER_NONE:I = 0x0

.field private static final VERTICAL_GRAVITY_COUNT:I = 0x4


# instance fields
.field private mBaselineAligned:Z

.field private mBaselineAlignedChildIndex:I

.field private mBaselineChildTop:I

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mDividerPadding:I

.field private mDividerWidth:I

.field private mGravity:I

.field private mMaxAscent:[I

.field private mMaxDescent:[I

.field private mShowDividers:I

.field private mTotalLength:I

.field private mUseLargestChild:Z

.field private mWeightSum:F


# direct methods
.method static <clinit>()V
    .locals 3

    .line 0
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    sput-object v0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->LinearLayout:[I

    .line 108
    return-void

    nop

    :array_0
    .array-data 0x4
        0x27t 0x1t 0x1t 0x1t
        0x28t 0x1t 0x1t 0x1t
        0x29t 0x1t 0x1t 0x1t
        0xd4t 0x2t 0x1t 0x1t
        0x29t 0x3t 0x1t 0x1t
        0x2at 0x3t 0x1t 0x1t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 0
    invoke-direct {p0, p1}, Lcom/actionbarsherlock/internal/nineoldandroids/view/NineViewGroup;-><init>(Landroid/content/Context;)V

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mBaselineAligned:Z

    .line 83
    const/4 v0, -0x1

    iput v0, p0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mBaselineAlignedChildIndex:I

    .line 90
    const/4 v0, 0x0

    iput v0, p0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mBaselineChildTop:I

    .line 92
    const v0, 0x800033

    iput v0, p0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mGravity:I

    .line 117
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 121
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/actionbarsherlock/internal/nineoldandroids/view/NineViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mBaselineAligned:Z

    .line 83
    const/4 v0, -0x1

    iput v0, p0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mBaselineAlignedChildIndex:I

    .line 90
    const/4 v0, 0x0

    iput v0, p0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mBaselineChildTop:I

    .line 92
    const v0, 0x800033

    iput v0, p0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mGravity:I

    .line 126
    sget-object v0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->LinearLayout:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 143
    const/4 v0, 0x1

    const/high16 v1, -0x4080

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mWeightSum:F

    .line 145
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mBaselineAlignedChildIndex:I

    .line 147
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mUseLargestChild:Z

    .line 149
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 150
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mShowDividers:I

    .line 151
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mDividerPadding:I

    .line 153
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 154
    return-void
.end method

.method public static combineMeasuredStatesInt(II)I
    .locals 1

    .line 0
    or-int v0, p0, p1

    return v0
.end method

.method private forceUniformHeight(II)V
    .locals 11

    .line 0
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getMeasuredHeight()I

    move-result v0

    .line 727
    .line 728
    const/high16 v1, 0x4000

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 729
    const/4 v7, 0x0

    goto :goto_0

    .line 730
    :cond_0
    invoke-virtual {p0, v7}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 731
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    .line 732
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;

    move-object v9, v0

    .line 734
    iget v0, v9, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;->height:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 737
    iget v10, v9, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;->width:I

    .line 738
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iput v0, v9, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;->width:I

    .line 741
    move-object v0, p0

    move-object v1, v8

    move v2, p2

    move v4, v6

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 742
    iput v10, v9, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;->width:I

    .line 729
    :cond_1
    add-int/lit8 v7, v7, 0x1

    :goto_0
    if-lt v7, p1, :cond_0

    .line 746
    return-void
.end method

.method private setChildFrame(Landroid/view/View;IIII)V
    .locals 2

    .line 0
    add-int v0, p2, p4

    add-int v1, p3, p5

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 925
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .line 0
    instance-of v0, p1, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;

    return v0
.end method

.method drawVerticalDivider(Landroid/graphics/Canvas;I)V
    .locals 5

    .line 0
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getPaddingTop()I

    move-result v1

    iget v2, p0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mDividerPadding:I

    add-int/2addr v1, v2

    .line 223
    iget v2, p0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mDividerWidth:I

    add-int/2addr v2, p2

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mDividerPadding:I

    sub-int/2addr v3, v4

    .line 222
    invoke-virtual {v0, p2, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 224
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 225
    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 0
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->generateDefaultLayoutParams()Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;
    .locals 3

    .line 0
    new-instance v0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 0
    invoke-virtual {p0, p1}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 0
    invoke-virtual {p0, p1}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;
    .locals 2

    .line 0
    new-instance v0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;
    .locals 1

    .line 0
    new-instance v0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getBaseline()I
    .locals 5

    .line 0
    iget v0, p0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mBaselineAlignedChildIndex:I

    if-gez v0, :cond_0

    .line 243
    invoke-super {p0}, Lcom/actionbarsherlock/internal/nineoldandroids/view/NineViewGroup;->getBaseline()I

    move-result v0

    return v0

    .line 246
    :cond_0
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getChildCount()I

    move-result v0

    iget v1, p0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mBaselineAlignedChildIndex:I

    if-gt v0, v1, :cond_1

    .line 247
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 251
    :cond_1
    iget v0, p0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mBaselineAlignedChildIndex:I

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 252
    invoke-virtual {v2}, Landroid/view/View;->getBaseline()I

    move-result v3

    .line 254
    const/4 v0, -0x1

    if-ne v3, v0, :cond_3

    .line 255
    iget v0, p0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mBaselineAlignedChildIndex:I

    if-nez v0, :cond_2

    .line 257
    const/4 v0, -0x1

    return v0

    .line 261
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "mBaselineAlignedChildIndex of LinearLayout points to a View that doesn\'t know how to get its baseline."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 271
    :cond_3
    iget v4, p0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mBaselineChildTop:I

    .line 273
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;

    move-object v2, v0

    .line 274
    iget v0, v2, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v0, v4

    add-int/2addr v0, v3

    return v0
.end method

.method getChildrenSkipCount(Landroid/view/View;I)I
    .locals 1

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public getDividerWidth()I
    .locals 1

    .line 0
    iget v0, p0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mDividerWidth:I

    return v0
.end method

.method getLocationOffset(Landroid/view/View;)I
    .locals 1

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method getNextLocationOffset(Landroid/view/View;)I
    .locals 1

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method getVirtualChildAt(I)Landroid/view/View;
    .locals 1

    .line 0
    invoke-virtual {p0, p1}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method getVirtualChildCount()I
    .locals 1

    .line 0
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getChildCount()I

    move-result v0

    return v0
.end method

.method protected hasDividerBeforeChildAt(I)Z
    .locals 3

    .line 0
    if-nez p1, :cond_1

    .line 312
    iget v0, p0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mShowDividers:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0

    .line 313
    :cond_1
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getChildCount()I

    move-result v0

    if-ne p1, v0, :cond_3

    .line 314
    iget v0, p0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mShowDividers:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0

    .line 315
    :cond_3
    iget v0, p0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mShowDividers:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_6

    .line 316
    const/4 v2, 0x0

    .line 317
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 318
    :cond_4
    invoke-virtual {p0, p1}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_5

    .line 319
    const/4 v2, 0x1

    .line 320
    goto :goto_1

    .line 317
    :cond_5
    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-gez p1, :cond_4

    .line 323
    :goto_1
    return v2

    .line 325
    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method measureChildBeforeLayout(Landroid/view/View;IIIII)V
    .locals 6

    .line 0
    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    .line 788
    move v4, p5

    move v5, p6

    .line 787
    invoke-virtual/range {v0 .. v5}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 789
    return-void
.end method

.method measureNullChild(I)I
    .locals 1

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 0
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 192
    return-void

    .line 195
    :cond_0
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getVirtualChildCount()I

    move-result v2

    .line 196
    const/4 v3, 0x0

    goto :goto_0

    .line 197
    :cond_1
    invoke-virtual {p0, v3}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 199
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    .line 200
    invoke-virtual {p0, v3}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 201
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;

    move-object v5, v0

    .line 202
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v1, v5, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;->leftMargin:I

    sub-int v4, v0, v1

    .line 203
    invoke-virtual {p0, p1, v4}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->drawVerticalDivider(Landroid/graphics/Canvas;I)V

    .line 196
    :cond_2
    add-int/lit8 v3, v3, 0x1

    :goto_0
    if-lt v3, v2, :cond_1

    .line 208
    invoke-virtual {p0, v2}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 209
    add-int/lit8 v0, v2, -0x1

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 210
    if-nez v3, :cond_3

    .line 212
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mDividerWidth:I

    sub-int v4, v0, v1

    .line 213
    goto :goto_1

    .line 214
    :cond_3
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;

    move-object v5, v0

    .line 215
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v0

    iget v1, v5, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;->rightMargin:I

    add-int v4, v0, v1

    .line 217
    :goto_1
    invoke-virtual {p0, p1, v4}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->drawVerticalDivider(Landroid/graphics/Canvas;I)V

    .line 219
    :cond_4
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 18

    .line 0
    move-object/from16 v0, p0

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getPaddingTop()I

    move-result p1

    .line 823
    move-object/from16 v0, p0

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getBottom()I

    move-result v0

    move-object/from16 v1, p0

    invoke-virtual {v1}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getTop()I

    move-result v1

    sub-int p2, v0, v1

    .line 824
    move-object/from16 v0, p0

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getPaddingBottom()I

    move-result v0

    sub-int p4, p2, v0

    .line 827
    sub-int v0, p2, p1

    move-object/from16 v1, p0

    invoke-virtual {v1}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getPaddingBottom()I

    move-result v1

    sub-int p5, v0, v1

    .line 829
    move-object/from16 v0, p0

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getVirtualChildCount()I

    move-result v6

    .line 832
    move-object/from16 v0, p0

    iget v0, v0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mGravity:I

    and-int/lit8 v7, v0, 0x70

    .line 834
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mBaselineAligned:Z

    .line 836
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mMaxAscent:[I

    .line 837
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mMaxDescent:[I

    .line 839
    move-object/from16 v0, p0

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getPaddingLeft()I

    move-result p3

    .line 841
    const/4 v11, 0x0

    goto/16 :goto_3

    .line 850
    :cond_0
    mul-int/lit8 v0, v11, 0x1

    add-int/lit8 v12, v0, 0x0

    .line 851
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 853
    if-nez v13, :cond_1

    .line 854
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->measureNullChild(I)I

    move-result v0

    add-int p3, p3, v0

    .line 855
    goto/16 :goto_2

    :cond_1
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_6

    .line 856
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    .line 857
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    .line 858
    const/16 v16, -0x1

    .line 861
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;

    move-object/from16 v17, v0

    .line 860
    .line 863
    if-eqz v8, :cond_2

    move-object/from16 v0, v17

    iget v0, v0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;->height:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 864
    invoke-virtual {v13}, Landroid/view/View;->getBaseline()I

    move-result v16

    .line 867
    :cond_2
    move-object/from16 v0, v17

    iget v0, v0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;->gravity:I

    move/from16 p2, v0

    .line 868
    if-gez p2, :cond_3

    .line 869
    move/from16 p2, v7

    .line 872
    :cond_3
    and-int/lit8 v0, p2, 0x70

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x30 -> :sswitch_0
        0x50 -> :sswitch_2
    .end sparse-switch

    .line 874
    :sswitch_0
    move-object/from16 v0, v17

    iget v0, v0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;->topMargin:I

    add-int p2, p1, v0

    .line 875
    move/from16 v0, v16

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    .line 876
    const/4 v0, 0x1

    aget v0, v9, v0

    sub-int v0, v0, v16

    add-int p2, p2, v0

    .line 878
    goto :goto_1

    .line 892
    :sswitch_1
    sub-int v0, p5, v15

    div-int/lit8 v0, v0, 0x2

    add-int v0, p1, v0

    .line 893
    move-object/from16 v1, v17

    iget v1, v1, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;->topMargin:I

    .line 892
    add-int/2addr v0, v1

    .line 893
    move-object/from16 v1, v17

    iget v1, v1, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;->bottomMargin:I

    .line 892
    sub-int p2, v0, v1

    .line 894
    goto :goto_1

    .line 897
    :sswitch_2
    sub-int v0, p4, v15

    move-object/from16 v1, v17

    iget v1, v1, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;->bottomMargin:I

    sub-int p2, v0, v1

    .line 898
    move/from16 v0, v16

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    .line 899
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    sub-int v16, v0, v16

    .line 900
    const/4 v0, 0x2

    aget v0, v10, v0

    sub-int v0, v0, v16

    sub-int p2, p2, v0

    .line 902
    goto :goto_1

    .line 904
    :goto_0
    move/from16 p2, p1

    .line 908
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 909
    move-object/from16 v0, p0

    iget v0, v0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mDividerWidth:I

    add-int p3, p3, v0

    .line 912
    :cond_5
    move-object/from16 v0, v17

    iget v0, v0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;->leftMargin:I

    add-int p3, p3, v0

    .line 913
    move-object/from16 v0, p0

    move-object v1, v13

    move-object/from16 v2, p0

    invoke-virtual {v2, v13}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getLocationOffset(Landroid/view/View;)I

    move-result v2

    add-int v2, p3, v2

    move/from16 v3, p2

    .line 914
    move v4, v14

    move v5, v15

    .line 913
    invoke-direct/range {v0 .. v5}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->setChildFrame(Landroid/view/View;IIII)V

    .line 915
    .line 915
    move-object/from16 v0, v17

    iget v0, v0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v0, v14

    .line 916
    move-object/from16 v1, p0

    invoke-virtual {v1, v13}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    add-int p3, p3, v0

    .line 918
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v12}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v0

    add-int/2addr v11, v0

    .line 849
    :cond_6
    :goto_2
    add-int/lit8 v11, v11, 0x1

    :goto_3
    if-lt v11, v6, :cond_0

    .line 921
    return-void
.end method

.method public onMeasure(II)V
    .locals 31

    .line 0
    const/4 v0, 0x0

    move-object/from16 v1, p0

    iput v0, v1, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mTotalLength:I

    .line 331
    const/4 v7, 0x0

    .line 332
    const/4 v8, 0x0

    .line 333
    const/4 v9, 0x0

    .line 334
    const/4 v10, 0x0

    .line 335
    const/4 v11, 0x1

    .line 336
    const/4 v12, 0x0

    .line 338
    move-object/from16 v0, p0

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getVirtualChildCount()I

    move-result v13

    .line 340
    move/from16 v0, p1

    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v14

    .line 341
    move/from16 v0, p2

    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v15

    .line 343
    const/16 v16, 0x0

    .line 345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mMaxAscent:[I

    if-eqz v0, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mMaxDescent:[I

    if-nez v0, :cond_1

    .line 346
    :cond_0
    const/4 v0, 0x4

    new-array v0, v0, [I

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mMaxAscent:[I

    .line 347
    const/4 v0, 0x4

    new-array v0, v0, [I

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mMaxDescent:[I

    .line 350
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mMaxAscent:[I

    move-object/from16 v17, v0

    .line 351
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mMaxDescent:[I

    move-object/from16 v18, v0

    .line 353
    const/4 v0, -0x1

    const/4 v1, 0x3

    aput v0, v17, v1

    const/4 v0, -0x1

    const/4 v1, 0x2

    aput v0, v17, v1

    const/4 v0, -0x1

    const/4 v1, 0x1

    aput v0, v17, v1

    const/4 v0, -0x1

    const/4 v1, 0x0

    aput v0, v17, v1

    .line 354
    const/4 v0, -0x1

    const/4 v1, 0x3

    aput v0, v18, v1

    const/4 v0, -0x1

    const/4 v1, 0x2

    aput v0, v18, v1

    const/4 v0, -0x1

    const/4 v1, 0x1

    aput v0, v18, v1

    const/4 v0, -0x1

    const/4 v1, 0x0

    aput v0, v18, v1

    .line 356
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mBaselineAligned:Z

    move/from16 v19, v0

    .line 357
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mUseLargestChild:Z

    move/from16 v20, v0

    .line 359
    const/high16 v0, 0x4000

    if-ne v14, v0, :cond_2

    const/16 v21, 0x1

    goto :goto_0

    :cond_2
    const/16 v21, 0x0

    .line 361
    :goto_0
    const/high16 v22, -0x8000

    .line 364
    const/16 v23, 0x0

    goto/16 :goto_b

    .line 365
    :cond_3
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v24

    .line 367
    if-nez v24, :cond_4

    .line 368
    move-object/from16 v0, p0

    iget v0, v0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mTotalLength:I

    move-object/from16 v1, p0

    move/from16 v2, v23

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->measureNullChild(I)I

    move-result v1

    add-int/2addr v0, v1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mTotalLength:I

    .line 369
    goto/16 :goto_a

    .line 372
    :cond_4
    move-object/from16 v0, v24

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_14

    .line 373
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 378
    move-object/from16 v0, p0

    iget v0, v0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mTotalLength:I

    move-object/from16 v1, p0

    iget v1, v1, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mDividerWidth:I

    add-int/2addr v0, v1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mTotalLength:I

    .line 382
    :cond_5
    move-object/from16 v0, v24

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 381
    check-cast v0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;

    move-object/from16 v25, v0

    .line 384
    move-object/from16 v0, v25

    iget v0, v0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;->weight:F

    add-float/2addr v12, v0

    .line 386
    const/high16 v0, 0x4000

    if-ne v14, v0, :cond_7

    move-object/from16 v0, v25

    iget v0, v0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;->width:I

    if-nez v0, :cond_7

    move-object/from16 v0, v25

    iget v0, v0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;->weight:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_7

    .line 390
    if-eqz v21, :cond_6

    .line 391
    move-object/from16 v0, p0

    iget v0, v0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mTotalLength:I

    move-object/from16 v1, v25

    iget v1, v1, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;->leftMargin:I

    move-object/from16 v2, v25

    iget v2, v2, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mTotalLength:I

    .line 392
    goto :goto_1

    .line 393
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mTotalLength:I

    move/from16 v26, v0

    .line 394
    .line 395
    move-object/from16 v0, v25

    iget v0, v0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;->leftMargin:I

    add-int v0, v26, v0

    move-object/from16 v1, v25

    iget v1, v1, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v0, v1

    .line 394
    move/from16 v1, v26

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    move-object/from16 v1, p0

    iput v0, v1, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mTotalLength:I

    .line 403
    :goto_1
    if-eqz v19, :cond_c

    .line 404
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v26

    .line 405
    move-object/from16 v0, v24

    move/from16 v1, v26

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 407
    goto/16 :goto_4

    .line 408
    :cond_7
    const/high16 v26, -0x8000

    .line 410
    move-object/from16 v0, v25

    iget v0, v0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;->width:I

    if-nez v0, :cond_8

    move-object/from16 v0, v25

    iget v0, v0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;->weight:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_8

    .line 415
    const/16 v26, 0x0

    .line 416
    const/4 v0, -0x2

    move-object/from16 v1, v25

    iput v0, v1, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;->width:I

    .line 423
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v23

    move/from16 v3, p1

    .line 424
    const/4 v4, 0x0

    cmpl-float v4, v12, v4

    if-nez v4, :cond_9

    move-object/from16 v4, p0

    iget v4, v4, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mTotalLength:I

    goto :goto_2

    :cond_9
    const/4 v4, 0x0

    .line 425
    :goto_2
    move/from16 v5, p2

    .line 423
    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->measureChildBeforeLayout(Landroid/view/View;IIIII)V

    .line 427
    move/from16 v0, v26

    const/high16 v1, -0x8000

    if-eq v0, v1, :cond_a

    .line 428
    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;->width:I

    .line 431
    :cond_a
    move-object/from16 v0, v24

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v27

    .line 432
    if-eqz v21, :cond_b

    .line 433
    move-object/from16 v0, p0

    iget v0, v0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mTotalLength:I

    .line 433
    move-object/from16 v1, v25

    iget v1, v1, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;->leftMargin:I

    add-int v1, v27, v1

    move-object/from16 v2, v25

    iget v2, v2, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    .line 434
    move-object/from16 v2, p0

    move-object/from16 v3, v24

    invoke-virtual {v2, v3}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mTotalLength:I

    .line 435
    goto :goto_3

    .line 436
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mTotalLength:I

    move/from16 v28, v0

    .line 437
    add-int v0, v28, v27

    move-object/from16 v1, v25

    iget v1, v1, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v0, v1

    .line 438
    move-object/from16 v1, v25

    iget v1, v1, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v0, v1

    move-object/from16 v1, p0

    move-object/from16 v2, v24

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    .line 437
    move/from16 v1, v28

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    move-object/from16 v1, p0

    iput v0, v1, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mTotalLength:I

    .line 441
    :goto_3
    if-eqz v20, :cond_c

    .line 442
    move/from16 v0, v27

    move/from16 v1, v22

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v22

    .line 446
    :cond_c
    :goto_4
    const/16 v26, 0x0

    .line 447
    const/high16 v0, 0x4000

    if-eq v15, v0, :cond_d

    move-object/from16 v0, v25

    iget v0, v0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;->height:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_d

    .line 451
    const/16 v16, 0x1

    .line 452
    const/16 v26, 0x1

    .line 455
    :cond_d
    move-object/from16 v0, v25

    iget v0, v0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;->topMargin:I

    move-object/from16 v1, v25

    iget v1, v1, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;->bottomMargin:I

    add-int v27, v0, v1

    .line 456
    move-object/from16 v0, v24

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int v28, v0, v27

    .line 457
    move-object/from16 v0, v24

    invoke-static {v0}, Lcom/actionbarsherlock/internal/widget/IcsView;->getMeasuredStateInt(Landroid/view/View;)I

    move-result v0

    invoke-static {v8, v0}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->combineMeasuredStatesInt(II)I

    move-result v8

    .line 459
    if-eqz v19, :cond_f

    .line 460
    move-object/from16 v0, v24

    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v29

    .line 461
    move/from16 v0, v29

    const/4 v1, -0x1

    if-eq v0, v1, :cond_f

    .line 464
    move-object/from16 v0, v25

    iget v0, v0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;->gravity:I

    if-gez v0, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mGravity:I

    goto :goto_5

    :cond_e
    move-object/from16 v0, v25

    iget v0, v0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;->gravity:I

    .line 464
    .line 465
    :goto_5
    and-int/lit8 v0, v0, 0x70

    .line 466
    shr-int/lit8 v0, v0, 0x4

    .line 466
    .line 467
    and-int/lit8 v0, v0, -0x2

    .line 466
    .line 467
    shr-int/lit8 v30, v0, 0x1

    .line 469
    aget v0, v17, v30

    move/from16 v1, v29

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, v17, v30

    .line 470
    aget v0, v18, v30

    sub-int v1, v28, v29

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, v18, v30

    .line 474
    :cond_f
    move/from16 v0, v28

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 476
    if-eqz v11, :cond_10

    move-object/from16 v0, v25

    iget v0, v0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;->height:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_10

    const/4 v11, 0x1

    goto :goto_6

    :cond_10
    const/4 v11, 0x0

    .line 477
    :goto_6
    move-object/from16 v0, v25

    iget v0, v0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;->weight:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_12

    .line 482
    .line 483
    if-eqz v26, :cond_11

    move/from16 v0, v27

    goto :goto_7

    :cond_11
    move/from16 v0, v28

    .line 482
    :goto_7
    invoke-static {v10, v0}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 484
    goto :goto_9

    .line 485
    .line 486
    :cond_12
    if-eqz v26, :cond_13

    move/from16 v0, v27

    goto :goto_8

    :cond_13
    move/from16 v0, v28

    .line 485
    :goto_8
    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 489
    :cond_14
    :goto_9
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v0

    add-int v23, v23, v0

    .line 364
    :goto_a
    add-int/lit8 v23, v23, 0x1

    :goto_b
    move/from16 v0, v23

    if-lt v0, v13, :cond_3

    .line 492
    move-object/from16 v0, p0

    iget v0, v0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mTotalLength:I

    if-lez v0, :cond_15

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 493
    move-object/from16 v0, p0

    iget v0, v0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mTotalLength:I

    move-object/from16 v1, p0

    iget v1, v1, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mDividerWidth:I

    add-int/2addr v0, v1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mTotalLength:I

    .line 498
    :cond_15
    const/4 v0, 0x1

    aget v0, v17, v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_16

    .line 499
    const/4 v0, 0x0

    aget v0, v17, v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_16

    .line 500
    const/4 v0, 0x2

    aget v0, v17, v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_16

    .line 501
    const/4 v0, 0x3

    aget v0, v17, v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_17

    .line 502
    :cond_16
    const/4 v0, 0x3

    aget v0, v17, v0

    .line 503
    const/4 v1, 0x0

    aget v1, v17, v1

    .line 504
    const/4 v2, 0x1

    aget v2, v17, v2

    const/4 v3, 0x2

    aget v3, v17, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 503
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 502
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v23

    .line 505
    const/4 v0, 0x3

    aget v0, v18, v0

    .line 506
    const/4 v1, 0x0

    aget v1, v18, v1

    .line 507
    const/4 v2, 0x1

    aget v2, v18, v2

    const/4 v3, 0x2

    aget v3, v18, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 506
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 505
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v24

    .line 508
    add-int v0, v23, v24

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 511
    :cond_17
    if-eqz v20, :cond_1d

    .line 512
    const/high16 v0, -0x8000

    if-eq v14, v0, :cond_18

    if-nez v14, :cond_1d

    .line 513
    :cond_18
    const/4 v0, 0x0

    move-object/from16 v1, p0

    iput v0, v1, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mTotalLength:I

    .line 515
    const/16 v23, 0x0

    goto/16 :goto_d

    .line 516
    :cond_19
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v24

    .line 518
    if-nez v24, :cond_1a

    .line 519
    move-object/from16 v0, p0

    iget v0, v0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mTotalLength:I

    move-object/from16 v1, p0

    move/from16 v2, v23

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->measureNullChild(I)I

    move-result v1

    add-int/2addr v0, v1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mTotalLength:I

    .line 520
    goto/16 :goto_c

    .line 523
    :cond_1a
    move-object/from16 v0, v24

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1b

    .line 524
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v0

    add-int v23, v23, v0

    .line 525
    goto/16 :goto_c

    .line 529
    :cond_1b
    move-object/from16 v0, v24

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 528
    check-cast v0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;

    move-object/from16 v25, v0

    .line 530
    if-eqz v21, :cond_1c

    .line 531
    move-object/from16 v0, p0

    iget v0, v0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mTotalLength:I

    .line 531
    move-object/from16 v1, v25

    iget v1, v1, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;->leftMargin:I

    add-int v1, v22, v1

    move-object/from16 v2, v25

    iget v2, v2, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    .line 532
    move-object/from16 v2, p0

    move-object/from16 v3, v24

    invoke-virtual {v2, v3}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mTotalLength:I

    .line 533
    goto :goto_c

    .line 534
    :cond_1c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mTotalLength:I

    move/from16 v26, v0

    .line 535
    add-int v0, v26, v22

    .line 536
    move-object/from16 v1, v25

    iget v1, v1, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v0, v1

    move-object/from16 v1, v25

    iget v1, v1, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v0, v1

    move-object/from16 v1, p0

    move-object/from16 v2, v24

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    .line 535
    move/from16 v1, v26

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    move-object/from16 v1, p0

    iput v0, v1, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mTotalLength:I

    .line 515
    :goto_c
    add-int/lit8 v23, v23, 0x1

    :goto_d
    move/from16 v0, v23

    if-lt v0, v13, :cond_19

    .line 542
    :cond_1d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mTotalLength:I

    move-object/from16 v1, p0

    invoke-virtual {v1}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getPaddingLeft()I

    move-result v1

    move-object/from16 v2, p0

    invoke-virtual {v2}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mTotalLength:I

    .line 544
    move-object/from16 v0, p0

    iget v0, v0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mTotalLength:I

    .line 547
    move-object/from16 v1, p0

    invoke-virtual {v1}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 550
    move/from16 v1, p1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/actionbarsherlock/internal/widget/IcsView;->resolveSizeAndState(III)I

    move-result v24

    .line 551
    const v0, 0xffffff

    and-int v0, v24, v0

    .line 555
    move-object/from16 v1, p0

    iget v1, v1, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mTotalLength:I

    sub-int v25, v0, v1

    .line 556
    if-eqz v25, :cond_2c

    const/4 v0, 0x0

    cmpl-float v0, v12, v0

    if-lez v0, :cond_2c

    .line 557
    move-object/from16 v0, p0

    iget v0, v0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mWeightSum:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mWeightSum:F

    move/from16 v26, v0

    goto :goto_e

    :cond_1e
    move/from16 v26, v12

    .line 559
    :goto_e
    const/4 v0, -0x1

    const/4 v1, 0x3

    aput v0, v17, v1

    const/4 v0, -0x1

    const/4 v1, 0x2

    aput v0, v17, v1

    const/4 v0, -0x1

    const/4 v1, 0x1

    aput v0, v17, v1

    const/4 v0, -0x1

    const/4 v1, 0x0

    aput v0, v17, v1

    .line 560
    const/4 v0, -0x1

    const/4 v1, 0x3

    aput v0, v18, v1

    const/4 v0, -0x1

    const/4 v1, 0x2

    aput v0, v18, v1

    const/4 v0, -0x1

    const/4 v1, 0x1

    aput v0, v18, v1

    const/4 v0, -0x1

    const/4 v1, 0x0

    aput v0, v18, v1

    .line 561
    const/4 v7, -0x1

    .line 563
    const/4 v0, 0x0

    move-object/from16 v1, p0

    iput v0, v1, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mTotalLength:I

    .line 565
    const/16 v27, 0x0

    goto/16 :goto_15

    .line 566
    :cond_1f
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v28

    .line 568
    if-eqz v28, :cond_2a

    move-object/from16 v0, v28

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2a

    .line 569
    move-object/from16 v0, v28

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;

    move-object/from16 v29, v0

    .line 572
    .line 575
    move-object/from16 v0, v29

    iget v10, v0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;->weight:F

    .line 576
    const/4 v0, 0x0

    cmpl-float v0, v10, v0

    if-lez v0, :cond_24

    .line 578
    move/from16 v0, v25

    int-to-float v0, v0

    mul-float/2addr v0, v10

    div-float v0, v0, v26

    float-to-int v1, v0

    move/from16 v30, v1

    .line 579
    sub-float v26, v26, v10

    .line 580
    sub-int v25, v25, v30

    .line 583
    .line 584
    move-object/from16 v0, p0

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getPaddingTop()I

    move-result v0

    move-object/from16 v1, p0

    invoke-virtual {v1}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    move-object/from16 v1, v29

    iget v1, v1, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v0, v1

    move-object/from16 v1, v29

    iget v1, v1, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    .line 585
    move-object/from16 v1, v29

    iget v1, v1, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;->height:I

    .line 582
    move/from16 v2, p2

    invoke-static {v2, v0, v1}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getChildMeasureSpec(III)I

    move-result v10

    .line 589
    move-object/from16 v0, v29

    iget v0, v0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;->width:I

    if-nez v0, :cond_20

    const/high16 v0, 0x4000

    if-eq v14, v0, :cond_22

    .line 592
    :cond_20
    move-object/from16 v0, v28

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int v12, v0, v30

    .line 593
    if-gez v12, :cond_21

    .line 594
    const/4 v12, 0x0

    .line 597
    :cond_21
    move-object/from16 v0, v28

    .line 598
    move v1, v12

    .line 599
    goto :goto_f

    .line 602
    :cond_22
    move-object/from16 v0, v28

    .line 603
    if-lez v30, :cond_23

    move/from16 v1, v30

    goto :goto_f

    :cond_23
    const/4 v1, 0x0

    .line 602
    :goto_f
    const/high16 v2, 0x4000

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 602
    .line 604
    invoke-virtual {v0, v1, v10}, Landroid/view/View;->measure(II)V

    .line 608
    .line 609
    move-object/from16 v0, v28

    invoke-static {v0}, Lcom/actionbarsherlock/internal/widget/IcsView;->getMeasuredStateInt(Landroid/view/View;)I

    move-result v0

    const/high16 v1, -0x100

    and-int/2addr v0, v1

    .line 608
    invoke-static {v8, v0}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->combineMeasuredStatesInt(II)I

    move-result v8

    .line 612
    :cond_24
    if-eqz v21, :cond_25

    .line 613
    move-object/from16 v0, p0

    iget v0, v0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mTotalLength:I

    .line 613
    move-object/from16 v1, v28

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    move-object/from16 v2, v29

    iget v2, v2, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    move-object/from16 v2, v29

    iget v2, v2, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    .line 614
    move-object/from16 v2, p0

    move-object/from16 v3, v28

    invoke-virtual {v2, v3}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mTotalLength:I

    .line 615
    goto :goto_10

    .line 616
    :cond_25
    move-object/from16 v0, p0

    iget v0, v0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mTotalLength:I

    move/from16 v30, v0

    .line 617
    move-object/from16 v0, v28

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int v0, v30, v0

    .line 618
    move-object/from16 v1, v29

    iget v1, v1, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v0, v1

    move-object/from16 v1, v29

    iget v1, v1, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v0, v1

    move-object/from16 v1, p0

    move-object/from16 v2, v28

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    .line 617
    move/from16 v1, v30

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    move-object/from16 v1, p0

    iput v0, v1, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mTotalLength:I

    .line 621
    :goto_10
    const/high16 v0, 0x4000

    if-eq v15, v0, :cond_26

    .line 622
    move-object/from16 v0, v29

    iget v0, v0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;->height:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_26

    .line 621
    const/16 v30, 0x1

    goto :goto_11

    :cond_26
    const/16 v30, 0x0

    .line 624
    :goto_11
    move-object/from16 v0, v29

    iget v0, v0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;->topMargin:I

    move-object/from16 v1, v29

    iget v1, v1, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;->bottomMargin:I

    add-int v10, v0, v1

    .line 625
    move-object/from16 v0, v28

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int v12, v0, v10

    .line 626
    invoke-static {v7, v12}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 627
    .line 628
    if-eqz v30, :cond_27

    move v0, v10

    goto :goto_12

    :cond_27
    move v0, v12

    .line 627
    :goto_12
    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 630
    if-eqz v11, :cond_28

    move-object/from16 v0, v29

    iget v0, v0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;->height:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_28

    const/4 v11, 0x1

    goto :goto_13

    :cond_28
    const/4 v11, 0x0

    .line 632
    :goto_13
    if-eqz v19, :cond_2a

    .line 633
    move-object/from16 v0, v28

    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v10

    .line 634
    const/4 v0, -0x1

    if-eq v10, v0, :cond_2a

    .line 636
    move-object/from16 v0, v29

    iget v0, v0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;->gravity:I

    if-gez v0, :cond_29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mGravity:I

    goto :goto_14

    :cond_29
    move-object/from16 v0, v29

    iget v0, v0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;->gravity:I

    .line 636
    .line 637
    :goto_14
    and-int/lit8 v0, v0, 0x70

    .line 638
    shr-int/lit8 v0, v0, 0x4

    .line 638
    .line 639
    and-int/lit8 v0, v0, -0x2

    .line 638
    .line 639
    shr-int/lit8 v20, v0, 0x1

    .line 641
    aget v0, v17, v20

    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, v17, v20

    .line 642
    aget v0, v18, v20

    .line 643
    sub-int v1, v12, v10

    .line 642
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, v18, v20

    .line 565
    :cond_2a
    add-int/lit8 v27, v27, 0x1

    :goto_15
    move/from16 v0, v27

    if-lt v0, v13, :cond_1f

    .line 649
    move-object/from16 v0, p0

    iget v0, v0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mTotalLength:I

    move-object/from16 v1, p0

    invoke-virtual {v1}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getPaddingLeft()I

    move-result v1

    move-object/from16 v2, p0

    invoke-virtual {v2}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mTotalLength:I

    .line 654
    const/4 v0, 0x1

    aget v0, v17, v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2b

    .line 655
    const/4 v0, 0x0

    aget v0, v17, v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2b

    .line 656
    const/4 v0, 0x2

    aget v0, v17, v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2b

    .line 657
    const/4 v0, 0x3

    aget v0, v17, v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2f

    .line 658
    :cond_2b
    const/4 v0, 0x3

    aget v0, v17, v0

    .line 659
    const/4 v1, 0x0

    aget v1, v17, v1

    .line 660
    const/4 v2, 0x1

    aget v2, v17, v2

    const/4 v3, 0x2

    aget v3, v17, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 659
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 658
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v27

    .line 661
    const/4 v0, 0x3

    aget v0, v18, v0

    .line 662
    const/4 v1, 0x0

    aget v1, v18, v1

    .line 663
    const/4 v2, 0x1

    aget v2, v18, v2

    const/4 v3, 0x2

    aget v3, v18, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 662
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 661
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v28

    .line 664
    add-int v0, v27, v28

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 666
    goto/16 :goto_17

    .line 667
    :cond_2c
    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 671
    if-eqz v20, :cond_2f

    if-nez v14, :cond_2f

    .line 672
    const/16 v26, 0x0

    goto :goto_16

    .line 673
    :cond_2d
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v27

    .line 675
    if-eqz v27, :cond_2e

    move-object/from16 v0, v27

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2e

    .line 676
    move-object/from16 v0, v27

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;

    .line 679
    iget v0, v0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;->weight:F

    .line 683
    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2e

    .line 684
    .line 685
    move/from16 v0, v22

    const/high16 v1, 0x4000

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 686
    move-object/from16 v1, v27

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 686
    .line 687
    const/high16 v2, 0x4000

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 684
    move-object/from16 v2, v27

    invoke-virtual {v2, v0, v1}, Landroid/view/View;->measure(II)V

    .line 672
    :cond_2e
    add-int/lit8 v26, v26, 0x1

    :goto_16
    move/from16 v0, v26

    if-lt v0, v13, :cond_2d

    .line 693
    :cond_2f
    :goto_17
    if-nez v11, :cond_30

    const/high16 v0, 0x4000

    if-eq v15, v0, :cond_30

    .line 694
    move v7, v9

    .line 697
    :cond_30
    move-object/from16 v0, p0

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getPaddingTop()I

    move-result v0

    move-object/from16 v1, p0

    invoke-virtual {v1}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v0, v7

    .line 700
    move-object/from16 v1, p0

    invoke-virtual {v1}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 702
    const/high16 v0, -0x100

    and-int/2addr v0, v8

    or-int v0, v24, v0

    .line 703
    .line 704
    shl-int/lit8 v1, v8, 0x10

    .line 703
    move/from16 v2, p2

    invoke-static {v7, v2, v1}, Lcom/actionbarsherlock/internal/widget/IcsView;->resolveSizeAndState(III)I

    move-result v1

    .line 702
    move-object/from16 v2, p0

    invoke-virtual {v2, v0, v1}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->setMeasuredDimension(II)V

    .line 706
    if-eqz v16, :cond_31

    .line 707
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v13, v1}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->forceUniformHeight(II)V

    .line 709
    :cond_31
    return-void
.end method

.method public setBaselineAligned(Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mBaselineAligned:Z

    .line 238
    return-void
.end method

.method public setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    .line 168
    return-void

    .line 170
    :cond_0
    iput-object p1, p0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 171
    if-eqz p1, :cond_1

    .line 172
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mDividerWidth:I

    .line 173
    goto :goto_0

    .line 174
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mDividerWidth:I

    .line 176
    :goto_0
    if-nez p1, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->setWillNotDraw(Z)V

    .line 177
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->requestLayout()V

    .line 178
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .line 0
    const/4 v0, 0x0

    return v0
.end method
