.class public Lcom/amoi/AmoiEngineerMode/ButtonGrid;
.super Landroid/view/ViewGroup;
.source "ButtonGrid.java"


# static fields
.field private static final COLUMNS:I = 0x5

.field private static final NUM_CHILDREN:I = 0x19

.field private static final ROWS:I = 0x5


# instance fields
.field private mButtonHeight:I

.field private mButtonWidth:I

.field private mButtons:[Landroid/view/View;

.field private mHeight:I

.field private mHeightInc:I

.field private mWidth:I

.field private mWidthInc:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 27
    const/16 v0, 0x19

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/ButtonGrid;->mButtons:[Landroid/view/View;

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    const/16 v0, 0x19

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/ButtonGrid;->mButtons:[Landroid/view/View;

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    const/16 v0, 0x19

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/ButtonGrid;->mButtons:[Landroid/view/View;

    .line 72
    return-void
.end method


# virtual methods
.method protected amoilayout(II)Z
    .locals 12
    .parameter "top"
    .parameter "bottom"

    .prologue
    const/4 v11, 0x5

    .line 141
    iget-object v2, p0, Lcom/amoi/AmoiEngineerMode/ButtonGrid;->mButtons:[Landroid/view/View;

    .line 142
    .local v2, buttons:[Landroid/view/View;
    const/4 v8, 0x4

    new-array v0, v8, [I

    fill-array-data v0, :array_0

    .line 145
    .local v0, button_h:[I
    const/4 v8, 0x3

    new-array v1, v8, [I

    fill-array-data v1, :array_1

    .line 148
    .local v1, button_w:[I
    const/4 v4, 0x0

    .line 150
    .local v4, i:I
    sub-int v8, p2, p1

    iget v9, p0, Lcom/amoi/AmoiEngineerMode/ButtonGrid;->mHeight:I

    sub-int/2addr v8, v9

    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/ButtonGrid;->getPaddingTop()I

    move-result v9

    add-int v7, v8, v9

    .line 151
    .local v7, y:I
    const/4 v5, 0x0

    .local v5, row:I
    :goto_0
    if-ge v5, v11, :cond_1

    .line 152
    const/4 v6, 0x0

    .line 154
    .local v6, x:I
    const/4 v3, 0x0

    .local v3, col:I
    :goto_1
    if-ge v3, v11, :cond_0

    .line 155
    aget-object v8, v2, v4

    aget v9, v1, v3

    add-int/2addr v9, v6

    aget v10, v0, v5

    add-int/2addr v10, v7

    invoke-virtual {v8, v6, v7, v9, v10}, Landroid/view/View;->layout(IIII)V

    .line 156
    aget v8, v1, v3

    add-int/2addr v6, v8

    .line 157
    add-int/lit8 v4, v4, 0x1

    .line 154
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 159
    :cond_0
    aget v8, v0, v5

    add-int/2addr v7, v8

    .line 151
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 161
    .end local v3           #col:I
    .end local v6           #x:I
    :cond_1
    const/4 v8, 0x1

    return v8

    .line 142
    nop

    :array_0
    .array-data 0x4
        0x36t 0x0t 0x0t 0x0t
        0x36t 0x0t 0x0t 0x0t
        0x35t 0x0t 0x0t 0x0t
        0x45t 0x0t 0x0t 0x0t
    .end array-data

    .line 145
    :array_1
    .array-data 0x4
        0x6et 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0x6et 0x0t 0x0t 0x0t
    .end array-data
.end method

.method protected onFinishInflate()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 81
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 82
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/ButtonGrid;->mButtons:[Landroid/view/View;

    .line 83
    .local v0, buttons:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    const/16 v3, 0x19

    if-ge v2, v3, :cond_0

    .line 84
    invoke-virtual {p0, v2}, Lcom/amoi/AmoiEngineerMode/ButtonGrid;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v0, v2

    .line 86
    aget-object v3, v0, v2

    invoke-virtual {v3, v4, v4}, Landroid/view/View;->measure(II)V

    .line 83
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 90
    :cond_0
    aget-object v1, v0, v4

    .line 91
    .local v1, child:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iput v3, p0, Lcom/amoi/AmoiEngineerMode/ButtonGrid;->mButtonWidth:I

    .line 92
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iput v3, p0, Lcom/amoi/AmoiEngineerMode/ButtonGrid;->mButtonHeight:I

    .line 93
    iget v3, p0, Lcom/amoi/AmoiEngineerMode/ButtonGrid;->mButtonWidth:I

    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/ButtonGrid;->getPaddingLeft()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/ButtonGrid;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/amoi/AmoiEngineerMode/ButtonGrid;->mWidthInc:I

    .line 94
    iget v3, p0, Lcom/amoi/AmoiEngineerMode/ButtonGrid;->mButtonHeight:I

    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/ButtonGrid;->getPaddingTop()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/ButtonGrid;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/amoi/AmoiEngineerMode/ButtonGrid;->mHeightInc:I

    .line 95
    iget v3, p0, Lcom/amoi/AmoiEngineerMode/ButtonGrid;->mWidthInc:I

    mul-int/lit8 v3, v3, 0x5

    iput v3, p0, Lcom/amoi/AmoiEngineerMode/ButtonGrid;->mWidth:I

    .line 96
    iget v3, p0, Lcom/amoi/AmoiEngineerMode/ButtonGrid;->mHeightInc:I

    mul-int/lit8 v3, v3, 0x5

    iput v3, p0, Lcom/amoi/AmoiEngineerMode/ButtonGrid;->mHeight:I

    .line 97
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 12
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/ButtonGrid;->mButtons:[Landroid/view/View;

    .line 115
    .local v0, buttons:[Landroid/view/View;
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/ButtonGrid;->getPaddingLeft()I

    move-result v3

    .line 116
    .local v3, paddingLeft:I
    sub-int v9, p4, p2

    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/ButtonGrid;->getPaddingLeft()I

    move-result v10

    sub-int/2addr v9, v10

    div-int/lit8 v5, v9, 0x5

    .line 117
    .local v5, paddingwidth:I
    sub-int v9, p5, p3

    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/ButtonGrid;->getPaddingTop()I

    move-result v10

    sub-int/2addr v9, v10

    div-int/lit8 v4, v9, 0x5

    .line 118
    .local v4, paddingheight:I
    const/4 v2, 0x0

    .line 120
    .local v2, i:I
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/ButtonGrid;->getPaddingTop()I

    move-result v8

    .line 126
    .local v8, y:I
    const/4 v6, 0x0

    .local v6, row:I
    :goto_0
    const/4 v9, 0x5

    if-ge v6, v9, :cond_1

    .line 127
    move v7, v3

    .line 128
    .local v7, x:I
    const/4 v1, 0x0

    .local v1, col:I
    :goto_1
    const/4 v9, 0x5

    if-ge v1, v9, :cond_0

    .line 129
    aget-object v9, v0, v2

    add-int v10, v7, v5

    add-int v11, v8, v4

    invoke-virtual {v9, v7, v8, v10, v11}, Landroid/view/View;->layout(IIII)V

    .line 130
    add-int/2addr v7, v5

    .line 131
    add-int/lit8 v2, v2, 0x1

    .line 128
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 133
    :cond_0
    add-int/2addr v8, v4

    .line 126
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 135
    .end local v1           #col:I
    .end local v7           #x:I
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 173
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 174
    iget v2, p0, Lcom/amoi/AmoiEngineerMode/ButtonGrid;->mWidth:I

    invoke-static {v2, p1}, Lcom/amoi/AmoiEngineerMode/ButtonGrid;->resolveSize(II)I

    move-result v1

    .line 175
    .local v1, width:I
    iget v2, p0, Lcom/amoi/AmoiEngineerMode/ButtonGrid;->mHeight:I

    invoke-static {v2, p2}, Lcom/amoi/AmoiEngineerMode/ButtonGrid;->resolveSize(II)I

    move-result v0

    .line 176
    .local v0, height:I
    invoke-virtual {p0, v1, v0}, Lcom/amoi/AmoiEngineerMode/ButtonGrid;->setMeasuredDimension(II)V

    .line 177
    return-void
.end method

.method public setChildrenBackgroundResource(I)V
    .locals 2
    .parameter "resid"

    .prologue
    .line 107
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0x19

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 110
    :cond_0
    return-void
.end method
