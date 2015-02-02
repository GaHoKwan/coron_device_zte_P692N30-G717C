.class public Lcom/mediatek/engineermode/camera/VideoPreview;
.super Landroid/view/SurfaceView;
.source "VideoPreview.java"


# static fields
.field private static final TILE_SIZE:I = 0x10


# instance fields
.field private mAspectRatio:F

.field private mHight:I

.field private mHorizontalTileSize:I

.field private mVerticalTileSize:I

.field private mWeith:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/16 v1, 0x10

    .line 58
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 45
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/mediatek/engineermode/camera/VideoPreview;->mAspectRatio:F

    .line 46
    iput v1, p0, Lcom/mediatek/engineermode/camera/VideoPreview;->mHorizontalTileSize:I

    .line 47
    iput v1, p0, Lcom/mediatek/engineermode/camera/VideoPreview;->mVerticalTileSize:I

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/16 v1, 0x10

    .line 70
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/mediatek/engineermode/camera/VideoPreview;->mAspectRatio:F

    .line 46
    iput v1, p0, Lcom/mediatek/engineermode/camera/VideoPreview;->mHorizontalTileSize:I

    .line 47
    iput v1, p0, Lcom/mediatek/engineermode/camera/VideoPreview;->mVerticalTileSize:I

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/16 v1, 0x10

    .line 84
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/mediatek/engineermode/camera/VideoPreview;->mAspectRatio:F

    .line 46
    iput v1, p0, Lcom/mediatek/engineermode/camera/VideoPreview;->mHorizontalTileSize:I

    .line 47
    iput v1, p0, Lcom/mediatek/engineermode/camera/VideoPreview;->mVerticalTileSize:I

    .line 85
    return-void
.end method

.method private roundUpToTile(III)I
    .locals 1
    .parameter "dimension"
    .parameter "tileSize"
    .parameter "maxDimension"

    .prologue
    .line 183
    add-int v0, p1, p2

    add-int/lit8 v0, v0, -0x1

    div-int/2addr v0, p2

    mul-int/2addr v0, p2

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method


# virtual methods
.method public getCurrentH()I
    .locals 1

    .prologue
    .line 179
    iget v0, p0, Lcom/mediatek/engineermode/camera/VideoPreview;->mHight:I

    return v0
.end method

.method public getCurrentW()I
    .locals 1

    .prologue
    .line 170
    iget v0, p0, Lcom/mediatek/engineermode/camera/VideoPreview;->mWeith:I

    return v0
.end method

.method protected onMeasure(II)V
    .locals 7
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 89
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 90
    .local v4, widthSpecSize:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 92
    .local v2, heightSpecSize:I
    move v3, v4

    .line 93
    .local v3, width:I
    move v1, v2

    .line 95
    .local v1, height:I
    if-lez v3, :cond_3

    if-lez v1, :cond_3

    .line 96
    iget v5, p0, Lcom/mediatek/engineermode/camera/VideoPreview;->mWeith:I

    if-le v5, v3, :cond_2

    .line 97
    int-to-float v5, v3

    int-to-float v6, v1

    div-float v0, v5, v6

    .line 98
    .local v0, defaultRatio:F
    iget v5, p0, Lcom/mediatek/engineermode/camera/VideoPreview;->mAspectRatio:F

    cmpg-float v5, v0, v5

    if-gez v5, :cond_1

    .line 100
    int-to-float v5, v3

    iget v6, p0, Lcom/mediatek/engineermode/camera/VideoPreview;->mAspectRatio:F

    div-float/2addr v5, v6

    float-to-int v1, v5

    .line 104
    :cond_0
    :goto_0
    iget v5, p0, Lcom/mediatek/engineermode/camera/VideoPreview;->mHorizontalTileSize:I

    invoke-direct {p0, v3, v5, v4}, Lcom/mediatek/engineermode/camera/VideoPreview;->roundUpToTile(III)I

    move-result v3

    .line 106
    iget v5, p0, Lcom/mediatek/engineermode/camera/VideoPreview;->mVerticalTileSize:I

    invoke-direct {p0, v1, v5, v2}, Lcom/mediatek/engineermode/camera/VideoPreview;->roundUpToTile(III)I

    move-result v1

    .line 112
    .end local v0           #defaultRatio:F
    :goto_1
    iput v3, p0, Lcom/mediatek/engineermode/camera/VideoPreview;->mWeith:I

    .line 113
    iput v1, p0, Lcom/mediatek/engineermode/camera/VideoPreview;->mHight:I

    .line 114
    invoke-virtual {p0, v3, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 118
    :goto_2
    return-void

    .line 101
    .restart local v0       #defaultRatio:F
    :cond_1
    iget v5, p0, Lcom/mediatek/engineermode/camera/VideoPreview;->mAspectRatio:F

    cmpl-float v5, v0, v5

    if-lez v5, :cond_0

    .line 102
    int-to-float v5, v1

    iget v6, p0, Lcom/mediatek/engineermode/camera/VideoPreview;->mAspectRatio:F

    mul-float/2addr v5, v6

    float-to-int v3, v5

    goto :goto_0

    .line 109
    .end local v0           #defaultRatio:F
    :cond_2
    iget v3, p0, Lcom/mediatek/engineermode/camera/VideoPreview;->mWeith:I

    .line 110
    iget v1, p0, Lcom/mediatek/engineermode/camera/VideoPreview;->mHight:I

    goto :goto_1

    .line 117
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onMeasure(II)V

    goto :goto_2
.end method

.method public setAspectRatio(F)V
    .locals 0
    .parameter "aspectRatio"

    .prologue
    .line 159
    iput p1, p0, Lcom/mediatek/engineermode/camera/VideoPreview;->mAspectRatio:F

    .line 160
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 161
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 162
    return-void
.end method

.method public setAspectRatio(II)V
    .locals 2
    .parameter "width"
    .parameter "height"

    .prologue
    .line 147
    iput p1, p0, Lcom/mediatek/engineermode/camera/VideoPreview;->mWeith:I

    .line 148
    iput p2, p0, Lcom/mediatek/engineermode/camera/VideoPreview;->mHight:I

    .line 149
    int-to-float v0, p1

    int-to-float v1, p2

    div-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/mediatek/engineermode/camera/VideoPreview;->setAspectRatio(F)V

    .line 150
    return-void
.end method

.method public setTileSize(II)V
    .locals 1
    .parameter "horizontalSize"
    .parameter "verticalSize"

    .prologue
    .line 129
    iget v0, p0, Lcom/mediatek/engineermode/camera/VideoPreview;->mHorizontalTileSize:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/mediatek/engineermode/camera/VideoPreview;->mVerticalTileSize:I

    if-eq v0, p2, :cond_1

    .line 131
    :cond_0
    iput p1, p0, Lcom/mediatek/engineermode/camera/VideoPreview;->mHorizontalTileSize:I

    .line 132
    iput p2, p0, Lcom/mediatek/engineermode/camera/VideoPreview;->mVerticalTileSize:I

    .line 133
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 134
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 136
    :cond_1
    return-void
.end method
