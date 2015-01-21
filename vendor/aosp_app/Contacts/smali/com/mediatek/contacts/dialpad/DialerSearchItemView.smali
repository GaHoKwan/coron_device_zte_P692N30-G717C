.class public Lcom/mediatek/contacts/dialpad/DialerSearchItemView;
.super Landroid/widget/FrameLayout;
.source "DialerSearchItemView.java"


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "DialerSearchListItem"

.field private static sDialerSearchItemViewHeight:I

.field private static sListItemQuickContactPaddingBottom:I

.field private static sListItemQuickContactPaddingTop:I


# instance fields
.field protected mCall:Landroid/widget/ImageButton;

.field protected mCallType:Landroid/widget/ImageView;

.field protected mDate:Landroid/widget/TextView;

.field protected mDivider:Landroid/view/View;

.field protected mLabelAndNumber:Landroid/widget/TextView;

.field protected mName:Landroid/widget/TextView;

.field protected mOperator:Landroid/widget/TextView;

.field protected mQuickContactBadge:Landroid/widget/QuickContactBadge;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090077

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/mediatek/contacts/dialpad/DialerSearchItemView;->sDialerSearchItemViewHeight:I

    .line 41
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090080

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/mediatek/contacts/dialpad/DialerSearchItemView;->sListItemQuickContactPaddingTop:I

    .line 43
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090081

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/mediatek/contacts/dialpad/DialerSearchItemView;->sListItemQuickContactPaddingBottom:I

    .line 45
    return-void
.end method

.method private getLineMaxHeight(Landroid/view/View;I)I
    .locals 1
    .parameter "view"
    .parameter "heightThirdLine"

    .prologue
    .line 252
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private onSubLayout(Landroid/view/View;II)I
    .locals 7
    .parameter "view"
    .parameter "subIconRight"
    .parameter "parentBottom"

    .prologue
    .line 227
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 228
    .local v4, width:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 229
    .local v2, height:I
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 231
    .local v3, lp:Landroid/widget/FrameLayout$LayoutParams;
    instance-of v5, p1, Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    .line 233
    sub-int v5, p3, v2

    add-int/lit8 v1, v5, -0x3

    .line 237
    .local v1, childTop:I
    :goto_0
    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int v0, p2, v5

    .line 238
    .local v0, childLeft:I
    add-int v5, v0, v4

    add-int v6, v1, v2

    invoke-virtual {p1, v0, v1, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 239
    add-int v5, v0, v4

    return v5

    .line 235
    .end local v0           #childLeft:I
    .end local v1           #childTop:I
    :cond_0
    sub-int v1, p3, v2

    .restart local v1       #childTop:I
    goto :goto_0
.end method


# virtual methods
.method log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 48
    const-string v0, "DialerSearchListItem"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 52
    const v0, 0x7f07008f

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/QuickContactBadge;

    iput-object v0, p0, Lcom/mediatek/contacts/dialpad/DialerSearchItemView;->mQuickContactBadge:Landroid/widget/QuickContactBadge;

    .line 53
    const v0, 0x7f07011a

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/contacts/dialpad/DialerSearchItemView;->mLabelAndNumber:Landroid/widget/TextView;

    .line 54
    const v0, 0x7f070090

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/contacts/dialpad/DialerSearchItemView;->mName:Landroid/widget/TextView;

    .line 55
    const v0, 0x7f07011b

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mediatek/contacts/dialpad/DialerSearchItemView;->mCallType:Landroid/widget/ImageView;

    .line 56
    const v0, 0x7f07011c

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/contacts/dialpad/DialerSearchItemView;->mOperator:Landroid/widget/TextView;

    .line 57
    const v0, 0x7f07005a

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/contacts/dialpad/DialerSearchItemView;->mDate:Landroid/widget/TextView;

    .line 58
    const v0, 0x7f070096

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/contacts/dialpad/DialerSearchItemView;->mDivider:Landroid/view/View;

    .line 59
    const v0, 0x7f07011d

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/mediatek/contacts/dialpad/DialerSearchItemView;->mCall:Landroid/widget/ImageButton;

    .line 60
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 28
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 64
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "changed = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " left = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " top = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " right = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " bottom = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/mediatek/contacts/dialpad/DialerSearchItemView;->log(Ljava/lang/String;)V

    .line 67
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingLeft:I

    move/from16 v18, v0

    .line 68
    .local v18, parentLeft:I
    sub-int v25, p4, p2

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingRight:I

    move/from16 v26, v0

    sub-int v19, v25, v26

    .line 70
    .local v19, parentRight:I
    sget v20, Lcom/mediatek/contacts/dialpad/DialerSearchItemView;->sListItemQuickContactPaddingTop:I

    .line 71
    .local v20, parentTop:I
    sub-int v25, p5, p3

    sget v26, Lcom/mediatek/contacts/dialpad/DialerSearchItemView;->sListItemQuickContactPaddingBottom:I

    sub-int v17, v25, v26

    .line 73
    .local v17, parentBottom:I
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "mPaddingTop = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingTop:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " mPaddingBottom = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingBottom:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " mPaddingLeft = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingLeft:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " mPaddingRight = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingRight:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/mediatek/contacts/dialpad/DialerSearchItemView;->log(Ljava/lang/String;)V

    .line 77
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "parentTop = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " parentBottom = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/mediatek/contacts/dialpad/DialerSearchItemView;->log(Ljava/lang/String;)V

    .line 81
    move/from16 v5, p2

    .line 82
    .local v5, childLeft:I
    move/from16 v6, p3

    .line 86
    .local v6, childTop:I
    const/4 v10, 0x0

    .line 87
    .local v10, heightFirstLine:I
    const/4 v11, 0x0

    .line 88
    .local v11, heightSecondLine:I
    const/4 v12, 0x0

    .line 89
    .local v12, heightThirdLine:I
    const/4 v15, 0x0

    .line 95
    .local v15, maxThreeLineHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/contacts/dialpad/DialerSearchItemView;->mQuickContactBadge:Landroid/widget/QuickContactBadge;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getMeasuredWidth()I

    move-result v24

    .line 96
    .local v24, width:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/contacts/dialpad/DialerSearchItemView;->mQuickContactBadge:Landroid/widget/QuickContactBadge;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 97
    .local v9, height:I
    sub-int v25, v17, v20

    sub-int v25, v25, v9

    div-int/lit8 v25, v25, 0x2

    add-int v6, v20, v25

    .line 98
    move/from16 v5, v18

    .line 99
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/contacts/dialpad/DialerSearchItemView;->mQuickContactBadge:Landroid/widget/QuickContactBadge;

    move-object/from16 v25, v0

    add-int v26, v5, v24

    add-int v27, v6, v9

    move-object/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v5, v6, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 100
    add-int v21, v5, v24

    .line 104
    .local v21, quickContactBadgeRight:I
    sget v25, Lcom/mediatek/contacts/dialpad/DialerSearchItemView;->sListItemQuickContactPaddingTop:I

    add-int v25, v25, v9

    sget v26, Lcom/mediatek/contacts/dialpad/DialerSearchItemView;->sListItemQuickContactPaddingBottom:I

    add-int v25, v25, v26

    sput v25, Lcom/mediatek/contacts/dialpad/DialerSearchItemView;->sDialerSearchItemViewHeight:I

    .line 111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/contacts/dialpad/DialerSearchItemView;->mCall:Landroid/widget/ImageButton;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getMeasuredWidth()I

    move-result v25

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingRight:I

    move/from16 v26, v0

    add-int v24, v25, v26

    .line 113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/contacts/dialpad/DialerSearchItemView;->mCall:Landroid/widget/ImageButton;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 115
    sget v25, Lcom/mediatek/contacts/dialpad/DialerSearchItemView;->sDialerSearchItemViewHeight:I

    sub-int v25, v25, v9

    div-int/lit8 v6, v25, 0x2

    .line 116
    sub-int v5, v19, v24

    .line 118
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/contacts/dialpad/DialerSearchItemView;->mCall:Landroid/widget/ImageButton;

    move-object/from16 v25, v0

    add-int v26, v5, v24

    add-int v27, v6, v9

    move-object/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v5, v6, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/contacts/dialpad/DialerSearchItemView;->mDivider:Landroid/view/View;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getMeasuredWidth()I

    move-result v24

    .line 123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/contacts/dialpad/DialerSearchItemView;->mDivider:Landroid/view/View;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 124
    sub-int v25, v17, v20

    sub-int v25, v25, v9

    div-int/lit8 v25, v25, 0x2

    add-int v6, v20, v25

    .line 125
    sub-int v5, v5, v24

    .line 126
    move v8, v5

    .line 127
    .local v8, dividerLeft:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/contacts/dialpad/DialerSearchItemView;->mDivider:Landroid/view/View;

    move-object/from16 v25, v0

    add-int v26, v5, v24

    add-int v27, v6, v9

    move-object/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v5, v6, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 131
    move/from16 v13, v21

    .line 132
    .local v13, labelRight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/contacts/dialpad/DialerSearchItemView;->mLabelAndNumber:Landroid/widget/TextView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getVisibility()I

    move-result v25

    if-nez v25, :cond_0

    .line 133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/contacts/dialpad/DialerSearchItemView;->mLabelAndNumber:Landroid/widget/TextView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getMeasuredWidth()I

    move-result v24

    .line 134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/contacts/dialpad/DialerSearchItemView;->mLabelAndNumber:Landroid/widget/TextView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/contacts/dialpad/DialerSearchItemView;->mLabelAndNumber:Landroid/widget/TextView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/FrameLayout$LayoutParams;

    .line 136
    .local v14, lp:Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/contacts/dialpad/DialerSearchItemView;->mCallType:Landroid/widget/ImageView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getVisibility()I

    move-result v25

    if-nez v25, :cond_6

    .line 137
    sub-int v25, v17, v20

    sub-int v25, v25, v9

    div-int/lit8 v25, v25, 0x2

    add-int v6, v20, v25

    .line 141
    :goto_0
    iget v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v25, v0

    add-int v5, v21, v25

    .line 143
    iget v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v25, v0

    sub-int v13, v8, v25

    .line 144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/contacts/dialpad/DialerSearchItemView;->mLabelAndNumber:Landroid/widget/TextView;

    move-object/from16 v25, v0

    add-int v26, v6, v9

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v0, v5, v6, v13, v1}, Landroid/view/View;->layout(IIII)V

    .line 145
    invoke-static {v11, v9}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 148
    .end local v14           #lp:Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    add-int/2addr v15, v11

    .line 152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/contacts/dialpad/DialerSearchItemView;->mName:Landroid/widget/TextView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getMeasuredWidth()I

    move-result v24

    .line 153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/contacts/dialpad/DialerSearchItemView;->mName:Landroid/widget/TextView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/contacts/dialpad/DialerSearchItemView;->mName:Landroid/widget/TextView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/FrameLayout$LayoutParams;

    .line 155
    .restart local v14       #lp:Landroid/widget/FrameLayout$LayoutParams;
    move/from16 v6, v20

    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/contacts/dialpad/DialerSearchItemView;->mLabelAndNumber:Landroid/widget/TextView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getVisibility()I

    move-result v25

    if-nez v25, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/contacts/dialpad/DialerSearchItemView;->mCallType:Landroid/widget/ImageView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getVisibility()I

    move-result v25

    if-nez v25, :cond_1

    .line 157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/contacts/dialpad/DialerSearchItemView;->mLabelAndNumber:Landroid/widget/TextView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getTop()I

    move-result v25

    sub-int v25, v25, v9

    sget v26, Lcom/mediatek/contacts/dialpad/DialerSearchItemView;->sListItemQuickContactPaddingTop:I

    div-int/lit8 v26, v26, 0x2

    add-int v6, v25, v26

    .line 159
    :cond_1
    iget v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v25, v0

    add-int v5, v21, v25

    .line 160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/contacts/dialpad/DialerSearchItemView;->mName:Landroid/widget/TextView;

    move-object/from16 v25, v0

    add-int v26, v5, v24

    add-int v27, v6, v9

    move-object/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v5, v6, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 161
    move v10, v9

    .line 162
    add-int/2addr v15, v10

    .line 165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/contacts/dialpad/DialerSearchItemView;->mCallType:Landroid/widget/ImageView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getVisibility()I

    move-result v25

    if-nez v25, :cond_5

    .line 168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/contacts/dialpad/DialerSearchItemView;->mCallType:Landroid/widget/ImageView;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v21

    move/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/contacts/dialpad/DialerSearchItemView;->onSubLayout(Landroid/view/View;II)I

    move-result v4

    .line 169
    .local v4, callTypeRight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/contacts/dialpad/DialerSearchItemView;->mCallType:Landroid/widget/ImageView;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1, v12}, Lcom/mediatek/contacts/dialpad/DialerSearchItemView;->getLineMaxHeight(Landroid/view/View;I)I

    move-result v12

    .line 173
    move/from16 v23, v4

    .line 174
    .local v23, tempTypeRight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/contacts/dialpad/DialerSearchItemView;->mOperator:Landroid/widget/TextView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getVisibility()I

    move-result v25

    if-nez v25, :cond_2

    .line 175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/contacts/dialpad/DialerSearchItemView;->mOperator:Landroid/widget/TextView;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v17

    invoke-direct {v0, v1, v4, v2}, Lcom/mediatek/contacts/dialpad/DialerSearchItemView;->onSubLayout(Landroid/view/View;II)I

    move-result v23

    .line 176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/contacts/dialpad/DialerSearchItemView;->mOperator:Landroid/widget/TextView;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1, v12}, Lcom/mediatek/contacts/dialpad/DialerSearchItemView;->getLineMaxHeight(Landroid/view/View;I)I

    move-result v12

    .line 180
    :cond_2
    move/from16 v16, v23

    .line 181
    .local v16, operatorRight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/contacts/dialpad/DialerSearchItemView;->mDate:Landroid/widget/TextView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getVisibility()I

    move-result v25

    if-nez v25, :cond_4

    .line 182
    move/from16 v7, v17

    .line 183
    .local v7, dateParentBottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/contacts/dialpad/DialerSearchItemView;->mLabelAndNumber:Landroid/widget/TextView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getVisibility()I

    move-result v25

    if-nez v25, :cond_3

    .line 184
    sget v25, Lcom/mediatek/contacts/dialpad/DialerSearchItemView;->sListItemQuickContactPaddingTop:I

    div-int/lit8 v25, v25, 0x2

    add-int v7, v7, v25

    .line 186
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/contacts/dialpad/DialerSearchItemView;->mDate:Landroid/widget/TextView;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v16

    invoke-direct {v0, v1, v2, v7}, Lcom/mediatek/contacts/dialpad/DialerSearchItemView;->onSubLayout(Landroid/view/View;II)I

    move-result v22

    .line 187
    .local v22, tempRight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/contacts/dialpad/DialerSearchItemView;->mDate:Landroid/widget/TextView;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1, v12}, Lcom/mediatek/contacts/dialpad/DialerSearchItemView;->getLineMaxHeight(Landroid/view/View;I)I

    move-result v12

    .line 190
    .end local v7           #dateParentBottom:I
    .end local v22           #tempRight:I
    :cond_4
    add-int/2addr v15, v12

    .line 202
    .end local v4           #callTypeRight:I
    .end local v16           #operatorRight:I
    .end local v23           #tempTypeRight:I
    :cond_5
    sget v25, Lcom/mediatek/contacts/dialpad/DialerSearchItemView;->sDialerSearchItemViewHeight:I

    move/from16 v0, v25

    invoke-static {v15, v0}, Ljava/lang/Math;->max(II)I

    move-result v25

    sput v25, Lcom/mediatek/contacts/dialpad/DialerSearchItemView;->sDialerSearchItemViewHeight:I

    .line 203
    return-void

    .line 139
    :cond_6
    sub-int v6, v17, v9

    goto/16 :goto_0
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 209
    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    move-result v0

    .line 210
    .local v0, measuredWidth:I
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 211
    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/mediatek/contacts/dialpad/DialerSearchItemView;->resolveSizeAndState(III)I

    move-result v1

    sget v2, Lcom/mediatek/contacts/dialpad/DialerSearchItemView;->sDialerSearchItemViewHeight:I

    invoke-virtual {p0, v1, v2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 213
    return-void
.end method
