.class public Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;
.super Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;
.source ""

# interfaces
.implements Lcom/actionbarsherlock/internal/view/menu/MenuBuilder$ItemInvoker;
.implements Lcom/actionbarsherlock/internal/view/menu/MenuView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$ActionMenuChildView;,
        Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;
    }
.end annotation


# static fields
.field static final GENERATED_ITEM_PADDING:I = 0x4

.field static final MIN_CELL_SIZE:I = 0x38


# instance fields
.field private mFormatItems:Z

.field private mFormatItemsWidth:I

.field private mGeneratedItemPadding:I

.field private mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

.field private mMinCellSize:I

.field private mPresenter:Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;

.field private mReserveOverflow:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->setBaselineAligned(Z)V

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget p1, v0, Landroid/util/DisplayMetrics;->density:F

    .line 56
    const/high16 v0, 0x4260

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->mMinCellSize:I

    .line 57
    const/high16 v0, 0x4080

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->mGeneratedItemPadding:I

    .line 58
    return-void
.end method

.method static measureChildForCells(Landroid/view/View;IIII)I
    .locals 3

    .line 0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;

    move-object v2, v0

    .line 335
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 335
    .line 336
    sub-int p4, v0, p4

    .line 337
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p3

    .line 338
    invoke-static {p4, p3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p3

    .line 340
    const/4 p4, 0x0

    .line 341
    if-lez p2, :cond_0

    .line 343
    mul-int v0, p1, p2

    .line 342
    const/high16 v1, -0x8000

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 344
    invoke-virtual {p0, p2, p3}, Landroid/view/View;->measure(II)V

    .line 346
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    .line 347
    div-int p4, p2, p1

    .line 348
    rem-int v0, p2, p1

    if-eqz v0, :cond_0

    add-int/lit8 p4, p4, 0x1

    .line 351
    :cond_0
    instance-of v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;

    if-eqz v0, :cond_1

    .line 352
    move-object v0, p0

    check-cast v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;

    move-object p2, v0

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 351
    .line 353
    :goto_0
    iget-boolean v0, v2, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-nez v0, :cond_2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p2, 0x1

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    .line 354
    :goto_1
    iput-boolean p2, v2, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->expandable:Z

    .line 356
    iput p4, v2, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 357
    mul-int/2addr p1, p4

    .line 358
    const/high16 v0, 0x4000

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 358
    .line 359
    invoke-virtual {p0, v0, p3}, Landroid/view/View;->measure(II)V

    .line 360
    return p4
.end method

.method private onMeasureExactFormat(II)V
    .locals 26

    .line 0
    move/from16 v0, p2

    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 110
    move/from16 v0, p1

    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 111
    move/from16 v0, p2

    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 113
    move-object/from16 v0, p0

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->getPaddingLeft()I

    move-result v0

    move-object/from16 v1, p0

    invoke-virtual {v1}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->getPaddingRight()I

    move-result v1

    add-int v7, v0, v1

    .line 114
    move-object/from16 v0, p0

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->getPaddingTop()I

    move-result v0

    move-object/from16 v1, p0

    invoke-virtual {v1}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->getPaddingBottom()I

    move-result v1

    add-int v8, v0, v1

    .line 116
    sub-int p1, p1, v7

    .line 119
    move-object/from16 v0, p0

    iget v0, v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->mMinCellSize:I

    div-int v7, p1, v0

    .line 120
    move-object/from16 v0, p0

    iget v0, v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->mMinCellSize:I

    rem-int v9, p1, v0

    .line 122
    if-nez v7, :cond_0

    .line 124
    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->setMeasuredDimension(II)V

    .line 125
    return-void

    .line 128
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->mMinCellSize:I

    div-int v1, v9, v7

    add-int v9, v0, v1

    .line 130
    const/4 v10, 0x0

    .line 132
    const/4 v11, 0x0

    .line 133
    const/4 v12, 0x0

    .line 134
    const/4 v13, 0x0

    .line 135
    const/4 v14, 0x0

    .line 138
    const-wide/16 v19, 0x0

    .line 140
    move-object/from16 v0, p0

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->getChildCount()I

    move-result v15

    .line 141
    const/16 v16, 0x0

    goto/16 :goto_2

    .line 142
    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    .line 143
    move-object/from16 v0, v17

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_7

    .line 145
    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;

    move/from16 v18, v0

    .line 146
    add-int/lit8 v13, v13, 0x1

    .line 148
    if-eqz v18, :cond_2

    .line 151
    move-object/from16 v0, p0

    iget v0, v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->mGeneratedItemPadding:I

    move-object/from16 v1, p0

    iget v1, v1, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->mGeneratedItemPadding:I

    move-object/from16 v2, v17

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v3, v1, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 154
    :cond_2
    move-object/from16 v0, v17

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;

    move-object/from16 v24, v0

    .line 155
    const/4 v0, 0x0

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->expanded:Z

    .line 156
    const/4 v0, 0x0

    move-object/from16 v1, v24

    iput v0, v1, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->extraPixels:I

    .line 157
    const/4 v0, 0x0

    move-object/from16 v1, v24

    iput v0, v1, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 158
    const/4 v0, 0x0

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->expandable:Z

    .line 159
    const/4 v0, 0x0

    move-object/from16 v1, v24

    iput v0, v1, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->leftMargin:I

    .line 160
    const/4 v0, 0x0

    move-object/from16 v1, v24

    iput v0, v1, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->rightMargin:I

    .line 161
    if-eqz v18, :cond_3

    move-object/from16 v0, v17

    check-cast v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    .line 164
    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v0, :cond_4

    const/16 v25, 0x1

    goto :goto_1

    :cond_4
    move/from16 v25, v7

    .line 166
    .line 166
    .line 167
    :goto_1
    move-object/from16 v0, v17

    move/from16 v1, v25

    move/from16 v2, p2

    invoke-static {v0, v9, v1, v2, v8}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    move-result v21

    .line 169
    move/from16 v0, v21

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 170
    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->expandable:Z

    if-eqz v0, :cond_5

    add-int/lit8 v12, v12, 0x1

    .line 171
    :cond_5
    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v0, :cond_6

    const/4 v14, 0x1

    .line 173
    :cond_6
    sub-int v7, v7, v21

    .line 174
    move-object/from16 v0, v17

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-static {v10, v0}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 175
    move/from16 v0, v21

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    shl-int v0, v0, v16

    int-to-long v0, v0

    or-long v19, v19, v0

    .line 141
    :cond_7
    add-int/lit8 v16, v16, 0x1

    :goto_2
    move/from16 v0, v16

    if-lt v0, v15, :cond_1

    .line 180
    if-eqz v14, :cond_8

    const/4 v0, 0x2

    if-ne v13, v0, :cond_8

    const/16 v16, 0x1

    goto :goto_3

    :cond_8
    const/16 v16, 0x0

    .line 185
    :goto_3
    const/16 v17, 0x0

    .line 186
    goto/16 :goto_8

    .line 187
    :cond_9
    const v18, 0x7fffffff

    .line 188
    const-wide/16 v24, 0x0

    .line 189
    const/16 v21, 0x0

    .line 190
    const/16 p2, 0x0

    goto :goto_5

    .line 191
    :cond_a
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 192
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;

    move-object/from16 v23, v0

    .line 195
    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->expandable:Z

    if-eqz v0, :cond_c

    .line 198
    move-object/from16 v0, v23

    iget v0, v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v1, v18

    if-ge v0, v1, :cond_b

    .line 199
    move-object/from16 v0, v23

    iget v0, v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v18, v0

    .line 200
    const/4 v0, 0x1

    shl-int v0, v0, p2

    int-to-long v1, v0

    move-wide/from16 v24, v1

    .line 201
    const/16 v21, 0x1

    .line 202
    goto :goto_4

    :cond_b
    move-object/from16 v0, v23

    iget v0, v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v1, v18

    if-ne v0, v1, :cond_c

    .line 203
    const/4 v0, 0x1

    shl-int v0, v0, p2

    int-to-long v0, v0

    or-long v24, v24, v0

    .line 204
    add-int/lit8 v21, v21, 0x1

    .line 190
    :cond_c
    :goto_4
    add-int/lit8 p2, p2, 0x1

    :goto_5
    move/from16 v0, p2

    if-lt v0, v15, :cond_a

    .line 209
    or-long v19, v19, v24

    .line 211
    move/from16 v0, v21

    if-gt v0, v7, :cond_11

    .line 214
    add-int/lit8 v18, v18, 0x1

    .line 216
    const/16 p2, 0x0

    goto/16 :goto_7

    .line 217
    :cond_d
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    .line 218
    move-object/from16 v0, v22

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;

    move-object/from16 v23, v0

    .line 219
    const/4 v0, 0x1

    shl-int v0, v0, p2

    int-to-long v0, v0

    and-long v0, v24, v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_e

    .line 221
    move-object/from16 v0, v23

    iget v0, v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v1, v18

    if-ne v0, v1, :cond_10

    const/4 v0, 0x1

    shl-int v0, v0, p2

    int-to-long v0, v0

    or-long v19, v19, v0

    .line 222
    goto :goto_6

    .line 225
    :cond_e
    if-eqz v16, :cond_f

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    if-ne v7, v0, :cond_f

    .line 227
    move-object/from16 v0, p0

    iget v0, v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->mGeneratedItemPadding:I

    add-int/2addr v0, v9

    move-object/from16 v1, p0

    iget v1, v1, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->mGeneratedItemPadding:I

    move-object/from16 v2, v22

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v3, v1, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 229
    :cond_f
    move-object/from16 v0, v23

    iget v0, v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    add-int/lit8 v0, v0, 0x1

    move-object/from16 v1, v23

    iput v0, v1, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 230
    const/4 v0, 0x1

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->expanded:Z

    .line 231
    add-int/lit8 v7, v7, -0x1

    .line 216
    :cond_10
    :goto_6
    add-int/lit8 p2, p2, 0x1

    :goto_7
    move/from16 v0, p2

    if-lt v0, v15, :cond_d

    .line 234
    const/16 v17, 0x1

    .line 186
    :goto_8
    if-lez v12, :cond_11

    if-gtz v7, :cond_9

    .line 240
    :cond_11
    if-nez v14, :cond_12

    const/4 v0, 0x1

    if-ne v13, v0, :cond_12

    const/16 v18, 0x1

    goto :goto_9

    :cond_12
    const/16 v18, 0x0

    .line 241
    :goto_9
    if-lez v7, :cond_1d

    const-wide/16 v0, 0x0

    cmp-long v0, v19, v0

    if-eqz v0, :cond_1d

    .line 242
    add-int/lit8 v0, v13, -0x1

    if-lt v7, v0, :cond_13

    if-nez v18, :cond_13

    const/4 v0, 0x1

    if-le v11, v0, :cond_1d

    .line 243
    :cond_13
    move-wide/from16 v0, v19

    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result v0

    int-to-float v1, v0

    move/from16 v24, v1

    .line 245
    if-nez v18, :cond_15

    .line 247
    const-wide/16 v0, 0x1

    and-long v0, v19, v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_14

    .line 248
    move-object/from16 v0, p0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;

    .line 249
    iget-boolean v0, v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    if-nez v0, :cond_14

    const/high16 v0, 0x3f00

    sub-float v24, v24, v0

    .line 251
    :cond_14
    add-int/lit8 v0, v15, -0x1

    const/4 v1, 0x1

    shl-int v0, v1, v0

    int-to-long v0, v0

    and-long v0, v19, v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_15

    .line 252
    add-int/lit8 v0, v15, -0x1

    move-object/from16 v1, p0

    invoke-virtual {v1, v0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;

    .line 253
    iget-boolean v0, v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    if-nez v0, :cond_15

    const/high16 v0, 0x3f00

    sub-float v24, v24, v0

    .line 257
    :cond_15
    const/4 v0, 0x0

    cmpl-float v0, v24, v0

    if-lez v0, :cond_16

    .line 258
    mul-int v0, v7, v9

    int-to-float v0, v0

    div-float v0, v0, v24

    float-to-int v1, v0

    move/from16 v25, v1

    goto :goto_a

    :cond_16
    const/16 v25, 0x0

    .line 257
    .line 260
    :goto_a
    const/16 v21, 0x0

    goto/16 :goto_c

    .line 261
    :cond_17
    const/4 v0, 0x1

    shl-int v0, v0, v21

    int-to-long v0, v0

    and-long v0, v19, v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1c

    .line 263
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 264
    move-object/from16 v0, p2

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;

    move-object/from16 v22, v0

    .line 265
    move-object/from16 v0, p2

    instance-of v0, v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;

    if-eqz v0, :cond_19

    .line 267
    move/from16 v0, v25

    move-object/from16 v1, v22

    iput v0, v1, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->extraPixels:I

    .line 268
    const/4 v0, 0x1

    move-object/from16 v1, v22

    iput-boolean v0, v1, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->expanded:Z

    .line 269
    if-nez v21, :cond_18

    move-object/from16 v0, v22

    iget-boolean v0, v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    if-nez v0, :cond_18

    .line 272
    move/from16 v0, v25

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    move-object/from16 v1, v22

    iput v0, v1, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->leftMargin:I

    .line 274
    :cond_18
    const/16 v17, 0x1

    .line 275
    goto :goto_b

    :cond_19
    move-object/from16 v0, v22

    iget-boolean v0, v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v0, :cond_1a

    .line 276
    move/from16 v0, v25

    move-object/from16 v1, v22

    iput v0, v1, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->extraPixels:I

    .line 277
    const/4 v0, 0x1

    move-object/from16 v1, v22

    iput-boolean v0, v1, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->expanded:Z

    .line 278
    move/from16 v0, v25

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    move-object/from16 v1, v22

    iput v0, v1, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->rightMargin:I

    .line 279
    const/16 v17, 0x1

    .line 280
    goto :goto_b

    .line 284
    :cond_1a
    if-eqz v21, :cond_1b

    .line 285
    div-int/lit8 v0, v25, 0x2

    move-object/from16 v1, v22

    iput v0, v1, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->leftMargin:I

    .line 287
    :cond_1b
    add-int/lit8 v0, v15, -0x1

    move/from16 v1, v21

    if-eq v1, v0, :cond_1c

    .line 288
    div-int/lit8 v0, v25, 0x2

    move-object/from16 v1, v22

    iput v0, v1, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->rightMargin:I

    .line 260
    :cond_1c
    :goto_b
    add-int/lit8 v21, v21, 0x1

    :goto_c
    move/from16 v0, v21

    if-lt v0, v15, :cond_17

    .line 293
    :cond_1d
    if-eqz v17, :cond_20

    .line 298
    sub-int v0, v6, v8

    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v24

    .line 299
    const/16 v25, 0x0

    goto :goto_d

    .line 300
    :cond_1e
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    .line 301
    move-object/from16 v0, v21

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;

    move-object/from16 p2, v0

    .line 303
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->expanded:Z

    if-eqz v0, :cond_1f

    .line 305
    move-object/from16 v0, p2

    iget v0, v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    mul-int/2addr v0, v9

    move-object/from16 v1, p2

    iget v1, v1, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->extraPixels:I

    add-int v22, v0, v1

    .line 306
    move/from16 v0, v22

    const/high16 v1, 0x4000

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    move-object/from16 v1, v21

    move/from16 v2, v24

    invoke-virtual {v1, v0, v2}, Landroid/view/View;->measure(II)V

    .line 299
    :cond_1f
    add-int/lit8 v25, v25, 0x1

    :goto_d
    move/from16 v0, v25

    if-lt v0, v15, :cond_1e

    .line 310
    :cond_20
    const/high16 v0, 0x4000

    if-eq v5, v0, :cond_21

    .line 311
    move v6, v10

    .line 314
    :cond_21
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v6}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->setMeasuredDimension(II)V

    .line 316
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .line 0
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method protected generateDefaultLayoutParams()Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;
    .locals 3

    .line 0
    new-instance v2, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;

    .line 459
    .line 460
    const/4 v0, -0x2

    const/4 v1, -0x2

    invoke-direct {v2, v0, v1}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;-><init>(II)V

    .line 461
    const/16 v0, 0x10

    iput v0, v2, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->gravity:I

    .line 462
    return-object v2
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;
    .locals 1

    .line 0
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->generateDefaultLayoutParams()Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;
    .locals 2

    .line 0
    new-instance v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;
    .locals 2

    .line 0
    instance-of v0, p1, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;

    if-eqz v0, :cond_1

    .line 473
    new-instance v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;

    move-object v1, p1

    check-cast v1, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;

    invoke-direct {v0, v1}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;-><init>(Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;)V

    .line 474
    move-object p1, v0

    iget v0, v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->gravity:I

    if-gtz v0, :cond_0

    .line 475
    const/16 v0, 0x10

    iput v0, p1, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->gravity:I

    .line 477
    :cond_0
    return-object p1

    .line 479
    :cond_1
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->generateDefaultLayoutParams()Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;
    .locals 1

    .line 0
    invoke-virtual {p0, p1}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;
    .locals 1

    .line 0
    invoke-virtual {p0, p1}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateOverflowButtonLayoutParams()Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;
    .locals 2

    .line 0
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->generateDefaultLayoutParams()Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v1

    .line 489
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    .line 490
    return-object v1
.end method

.method public getWindowAnimations()I
    .locals 1

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method protected hasDividerBeforeChildAt(I)Z
    .locals 5

    .line 0
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 508
    invoke-virtual {p0, p1}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 509
    const/4 v4, 0x0

    .line 510
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    instance-of v0, v2, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$ActionMenuChildView;

    if-eqz v0, :cond_0

    .line 511
    move-object v0, v2

    check-cast v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$ActionMenuChildView;

    invoke-interface {v0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$ActionMenuChildView;->needsDividerAfter()Z

    move-result v0

    or-int/lit8 v4, v0, 0x0

    .line 513
    :cond_0
    if-lez p1, :cond_1

    instance-of v0, v3, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$ActionMenuChildView;

    if-eqz v0, :cond_1

    .line 514
    move-object v0, v3

    check-cast v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$ActionMenuChildView;

    invoke-interface {v0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$ActionMenuChildView;->needsDividerBefore()Z

    move-result v0

    or-int/2addr v4, v0

    .line 516
    :cond_1
    return v4
.end method

.method public initialize(Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    .line 503
    return-void
.end method

.method public invokeItem(Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;)Z
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->performItemAction(Lcom/actionbarsherlock/view/MenuItem;I)Z

    move-result v0

    return v0
.end method

.method public isExpandedFormat()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->mFormatItems:Z

    return v0
.end method

.method public isOverflowReserved()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->mReserveOverflow:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 71
    invoke-super {p0, p1}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->mPresenter:Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->updateMenuView(Z)V

    .line 76
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->mPresenter:Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->mPresenter:Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->mPresenter:Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->hideOverflowMenu()Z

    .line 78
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->mPresenter:Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->showOverflowMenu()Z

    .line 80
    :cond_1
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 0
    invoke-super {p0}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->onDetachedFromWindow()V

    .line 446
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->mPresenter:Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->dismissPopupMenus()Z

    .line 447
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 14

    .line 0
    iget-boolean v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->mFormatItems:Z

    if-nez v0, :cond_0

    .line 366
    invoke-super/range {p0 .. p5}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->onLayout(ZIIII)V

    .line 367
    return-void

    .line 370
    :cond_0
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->getChildCount()I

    move-result p1

    .line 371
    add-int v0, p3, p5

    div-int/lit8 p3, v0, 0x2

    .line 372
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->getDividerWidth()I

    move-result p5

    .line 373
    const/4 v4, 0x0

    .line 376
    sub-int v0, p4, p2

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->getPaddingLeft()I

    move-result v1

    sub-int v5, v0, v1

    .line 377
    const/4 v3, 0x0

    .line 378
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 379
    :cond_1
    invoke-virtual {p0, v6}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 380
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_4

    .line 381
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;

    move-object v8, v0

    .line 385
    iget-boolean v0, v8, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v0, :cond_3

    .line 386
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 387
    invoke-virtual {p0, v6}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->hasDividerBeforeChildAt(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 388
    add-int v3, v3, p5

    .line 391
    :cond_2
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 392
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, v8, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->rightMargin:I

    sub-int v10, v0, v1

    .line 393
    sub-int v11, v10, v3

    .line 394
    div-int/lit8 v0, v9, 0x2

    sub-int v12, p3, v0

    .line 395
    add-int v13, v12, v9

    .line 396
    invoke-virtual {v7, v11, v12, v10, v13}, Landroid/view/View;->layout(IIII)V

    .line 398
    sub-int/2addr v5, v3

    .line 399
    const/4 v3, 0x1

    .line 400
    goto :goto_0

    .line 401
    :cond_3
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v1, v8, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->leftMargin:I

    add-int/2addr v0, v1

    iget v1, v8, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->rightMargin:I

    add-int v9, v0, v1

    .line 403
    sub-int/2addr v5, v9

    .line 404
    invoke-virtual {p0, v6}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->hasDividerBeforeChildAt(I)Z

    .line 407
    add-int/lit8 v4, v4, 0x1

    .line 378
    :cond_4
    :goto_0
    add-int/lit8 v6, v6, 0x1

    :goto_1
    if-lt v6, p1, :cond_1

    .line 411
    const/4 v0, 0x1

    if-ne p1, v0, :cond_5

    if-nez v3, :cond_5

    .line 413
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 414
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 415
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    .line 416
    sub-int v0, p4, p2

    div-int/lit8 v0, v0, 0x2

    .line 417
    div-int/lit8 v1, v7, 0x2

    sub-int v10, v0, v1

    .line 418
    div-int/lit8 v0, v8, 0x2

    sub-int v11, p3, v0

    .line 419
    add-int v0, v10, v7

    add-int v1, v11, v8

    invoke-virtual {v6, v10, v11, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 420
    return-void

    .line 423
    :cond_5
    if-eqz v3, :cond_6

    const/4 v0, 0x0

    goto :goto_2

    :cond_6
    const/4 v0, 0x1

    :goto_2
    sub-int v6, v4, v0

    .line 424
    if-lez v6, :cond_7

    div-int v0, v5, v6

    goto :goto_3

    :cond_7
    const/4 v0, 0x0

    :goto_3
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 426
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->getPaddingLeft()I

    move-result v8

    .line 427
    const/4 v9, 0x0

    goto/16 :goto_4

    .line 428
    :cond_8
    invoke-virtual {p0, v9}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 429
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;

    move-object v11, v0

    .line 430
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_9

    iget-boolean v0, v11, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-nez v0, :cond_9

    .line 431
    iget v0, v11, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->leftMargin:I

    add-int/2addr v8, v0

    .line 435
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    .line 436
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    .line 437
    div-int/lit8 v0, v13, 0x2

    sub-int p2, p3, v0

    .line 438
    add-int v0, v8, v12

    add-int v1, p2, v13

    move/from16 v2, p2

    invoke-virtual {v10, v8, v2, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 439
    iget v0, v11, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->rightMargin:I

    add-int/2addr v0, v12

    add-int/2addr v0, v7

    add-int/2addr v8, v0

    .line 427
    :cond_9
    add-int/lit8 v9, v9, 0x1

    :goto_4
    if-lt v9, p1, :cond_8

    .line 441
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 0
    iget-boolean v2, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->mFormatItems:Z

    .line 86
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, 0x4000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->mFormatItems:Z

    .line 88
    iget-boolean v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->mFormatItems:Z

    if-eq v2, v0, :cond_1

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->mFormatItemsWidth:I

    .line 94
    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 95
    iget-boolean v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->mFormatItems:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->mFormatItemsWidth:I

    if-eq v2, v0, :cond_2

    .line 96
    iput v2, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->mFormatItemsWidth:I

    .line 97
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 100
    :cond_2
    iget-boolean v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->mFormatItems:Z

    if-eqz v0, :cond_3

    .line 101
    invoke-direct {p0, p1, p2}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->onMeasureExactFormat(II)V

    .line 102
    return-void

    .line 103
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->onMeasure(II)V

    .line 105
    return-void
.end method

.method public setOverflowReserved(Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->mReserveOverflow:Z

    .line 455
    return-void
.end method

.method public setPresenter(Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->mPresenter:Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;

    .line 62
    return-void
.end method
