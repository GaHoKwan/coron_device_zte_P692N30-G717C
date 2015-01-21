.class public Lcom/mediatek/engineermode/cameranew/PreviewFrameLayout;
.super Landroid/widget/RelativeLayout;
.source "PreviewFrameLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/engineermode/cameranew/PreviewFrameLayout$OnSizeChangedListener;
    }
.end annotation


# instance fields
.field private mAspectRatio:D

.field private mListener:Lcom/mediatek/engineermode/cameranew/PreviewFrameLayout$OnSizeChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    const-wide v0, 0x3ff5555555555555L

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/engineermode/cameranew/PreviewFrameLayout;->setAspectRatio(D)V

    .line 40
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 13
    .parameter "widthSpec"
    .parameter "heightSpec"

    .prologue
    const/high16 v12, 0x4000

    const-wide/high16 v10, 0x3fe0

    .line 64
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 65
    .local v2, previewWidth:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 68
    .local v1, previewHeight:I
    iget v4, p0, Landroid/view/View;->mPaddingLeft:I

    iget v5, p0, Landroid/view/View;->mPaddingRight:I

    add-int v0, v4, v5

    .line 69
    .local v0, hPadding:I
    iget v4, p0, Landroid/view/View;->mPaddingTop:I

    iget v5, p0, Landroid/view/View;->mPaddingBottom:I

    add-int v3, v4, v5

    .line 72
    .local v3, vPadding:I
    sub-int/2addr v2, v0

    .line 73
    sub-int/2addr v1, v3

    .line 74
    int-to-double v4, v2

    int-to-double v6, v1

    iget-wide v8, p0, Lcom/mediatek/engineermode/cameranew/PreviewFrameLayout;->mAspectRatio:D

    mul-double/2addr v6, v8

    cmpl-double v4, v4, v6

    if-lez v4, :cond_0

    .line 75
    int-to-double v4, v1

    iget-wide v6, p0, Lcom/mediatek/engineermode/cameranew/PreviewFrameLayout;->mAspectRatio:D

    mul-double/2addr v4, v6

    add-double/2addr v4, v10

    double-to-int v2, v4

    .line 81
    :goto_0
    add-int/2addr v2, v0

    .line 82
    add-int/2addr v1, v3

    .line 85
    invoke-static {v2, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-static {v1, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-super {p0, v4, v5}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 87
    return-void

    .line 77
    :cond_0
    int-to-double v4, v2

    iget-wide v6, p0, Lcom/mediatek/engineermode/cameranew/PreviewFrameLayout;->mAspectRatio:D

    div-double/2addr v4, v6

    add-double/2addr v4, v10

    double-to-int v1, v4

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/PreviewFrameLayout;->mListener:Lcom/mediatek/engineermode/cameranew/PreviewFrameLayout$OnSizeChangedListener;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/PreviewFrameLayout;->mListener:Lcom/mediatek/engineermode/cameranew/PreviewFrameLayout$OnSizeChangedListener;

    invoke-interface {v0, p1, p2}, Lcom/mediatek/engineermode/cameranew/PreviewFrameLayout$OnSizeChangedListener;->onSizeChanged(II)V

    .line 98
    :cond_0
    return-void
.end method

.method public setAspectRatio(D)V
    .locals 2
    .parameter "ratio"

    .prologue
    .line 43
    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-gtz v0, :cond_0

    .line 44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 47
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 48
    const-wide/high16 v0, 0x3ff0

    div-double p1, v0, p1

    .line 51
    :cond_1
    iget-wide v0, p0, Lcom/mediatek/engineermode/cameranew/PreviewFrameLayout;->mAspectRatio:D

    cmpl-double v0, v0, p1

    if-eqz v0, :cond_2

    .line 52
    iput-wide p1, p0, Lcom/mediatek/engineermode/cameranew/PreviewFrameLayout;->mAspectRatio:D

    .line 53
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 55
    :cond_2
    return-void
.end method

.method public setOnSizeChangedListener(Lcom/mediatek/engineermode/cameranew/PreviewFrameLayout$OnSizeChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/mediatek/engineermode/cameranew/PreviewFrameLayout;->mListener:Lcom/mediatek/engineermode/cameranew/PreviewFrameLayout$OnSizeChangedListener;

    .line 91
    return-void
.end method
