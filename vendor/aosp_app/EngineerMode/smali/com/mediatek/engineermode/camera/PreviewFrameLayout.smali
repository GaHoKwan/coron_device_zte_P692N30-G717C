.class public Lcom/mediatek/engineermode/camera/PreviewFrameLayout;
.super Landroid/view/ViewGroup;
.source "PreviewFrameLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/engineermode/camera/PreviewFrameLayout$OnSizeChangedListener;
    }
.end annotation


# static fields
.field private static final MGIC_NRM_3:D = 3.0

.field private static final MGIC_NRM_4:D = 4.0

.field private static final MGIC_NRM_5:D = 0.5

.field private static final MIN_HORIZONTAL_MARGIN:I = 0xa


# instance fields
.field private mAspectRatio:D

.field private mFrame:Landroid/widget/FrameLayout;

.field private final mMetrics:Landroid/util/DisplayMetrics;

.field private mSizeListener:Lcom/mediatek/engineermode/camera/PreviewFrameLayout$OnSizeChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 96
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    const-wide v0, 0x3ff5555555555555L

    iput-wide v0, p0, Lcom/mediatek/engineermode/camera/PreviewFrameLayout;->mAspectRatio:D

    .line 77
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/mediatek/engineermode/camera/PreviewFrameLayout;->mMetrics:Landroid/util/DisplayMetrics;

    .line 97
    check-cast p1, Landroid/app/Activity;

    .end local p1
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/engineermode/camera/PreviewFrameLayout;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 99
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 113
    const v0, 0x7f0b00c8

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/mediatek/engineermode/camera/PreviewFrameLayout;->mFrame:Landroid/widget/FrameLayout;

    .line 114
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/PreviewFrameLayout;->mFrame:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    .line 115
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "must provide child with id as \"frame\""

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 15
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 143
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 144
    .local v2, frameWidth:I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 146
    .local v0, frameHeight:I
    iget-object v1, p0, Lcom/mediatek/engineermode/camera/PreviewFrameLayout;->mFrame:Landroid/widget/FrameLayout;

    .line 148
    .local v1, frameLayout:Landroid/widget/FrameLayout;
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v9

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v10

    add-int/2addr v9, v10

    const/high16 v10, 0x4120

    iget-object v11, p0, Lcom/mediatek/engineermode/camera/PreviewFrameLayout;->mMetrics:Landroid/util/DisplayMetrics;

    iget v11, v11, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v10, v11

    float-to-int v10, v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 152
    .local v4, horizontalPadding:I
    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v9

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v10

    add-int v8, v9, v10

    .line 157
    .local v8, verticalPadding:I
    move v5, v0

    .line 158
    .local v5, previewHeight:I
    sub-int v6, v2, v4

    .line 161
    .local v6, previewWidth:I
    int-to-double v9, v6

    int-to-double v11, v5

    iget-wide v13, p0, Lcom/mediatek/engineermode/camera/PreviewFrameLayout;->mAspectRatio:D

    mul-double/2addr v11, v13

    cmpl-double v9, v9, v11

    if-lez v9, :cond_1

    .line 162
    int-to-double v9, v5

    iget-wide v11, p0, Lcom/mediatek/engineermode/camera/PreviewFrameLayout;->mAspectRatio:D

    mul-double/2addr v9, v11

    const-wide/high16 v11, 0x3fe0

    add-double/2addr v9, v11

    double-to-int v6, v9

    .line 167
    :goto_0
    add-int v2, v6, v4

    .line 168
    add-int v0, v5, v8

    .line 170
    sub-int v9, p4, p2

    sub-int/2addr v9, v2

    div-int/lit8 v3, v9, 0x2

    .line 171
    .local v3, hSpace:I
    sub-int v9, p5, p3

    sub-int/2addr v9, v0

    div-int/lit8 v7, v9, 0x2

    .line 172
    .local v7, vSpace:I
    iget-object v9, p0, Lcom/mediatek/engineermode/camera/PreviewFrameLayout;->mFrame:Landroid/widget/FrameLayout;

    const/high16 v10, 0x4000

    invoke-static {v2, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    const/high16 v11, 0x4000

    invoke-static {v0, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-virtual {v9, v10, v11}, Landroid/view/View;->measure(II)V

    .line 175
    iget-object v9, p0, Lcom/mediatek/engineermode/camera/PreviewFrameLayout;->mFrame:Landroid/widget/FrameLayout;

    add-int v10, p2, v3

    add-int v11, p3, v7

    sub-int v12, p4, v3

    sub-int v13, p5, v7

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/view/ViewGroup;->layout(IIII)V

    .line 176
    iget-object v9, p0, Lcom/mediatek/engineermode/camera/PreviewFrameLayout;->mSizeListener:Lcom/mediatek/engineermode/camera/PreviewFrameLayout$OnSizeChangedListener;

    if-eqz v9, :cond_0

    .line 177
    iget-object v9, p0, Lcom/mediatek/engineermode/camera/PreviewFrameLayout;->mSizeListener:Lcom/mediatek/engineermode/camera/PreviewFrameLayout$OnSizeChangedListener;

    invoke-interface {v9}, Lcom/mediatek/engineermode/camera/PreviewFrameLayout$OnSizeChangedListener;->onSizeChanged()V

    .line 179
    :cond_0
    return-void

    .line 164
    .end local v3           #hSpace:I
    .end local v7           #vSpace:I
    :cond_1
    int-to-double v9, v6

    iget-wide v11, p0, Lcom/mediatek/engineermode/camera/PreviewFrameLayout;->mAspectRatio:D

    div-double/2addr v9, v11

    const-wide/high16 v11, 0x3fe0

    add-double/2addr v9, v11

    double-to-int v5, v9

    goto :goto_0
.end method

.method public setAspectRatio(D)V
    .locals 2
    .parameter "ratio"

    .prologue
    .line 127
    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-gtz v0, :cond_0

    .line 128
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 130
    :cond_0
    iget-wide v0, p0, Lcom/mediatek/engineermode/camera/PreviewFrameLayout;->mAspectRatio:D

    cmpl-double v0, v0, p1

    if-eqz v0, :cond_1

    .line 131
    iput-wide p1, p0, Lcom/mediatek/engineermode/camera/PreviewFrameLayout;->mAspectRatio:D

    .line 132
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 134
    :cond_1
    return-void
.end method

.method public setOnSizeChangedListener(Lcom/mediatek/engineermode/camera/PreviewFrameLayout$OnSizeChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 108
    iput-object p1, p0, Lcom/mediatek/engineermode/camera/PreviewFrameLayout;->mSizeListener:Lcom/mediatek/engineermode/camera/PreviewFrameLayout$OnSizeChangedListener;

    .line 109
    return-void
.end method
