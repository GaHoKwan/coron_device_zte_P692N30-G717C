.class public Lcom/android/contacts/widget/FrameLayoutWithOverlay;
.super Landroid/widget/FrameLayout;
.source "FrameLayoutWithOverlay.java"


# instance fields
.field private final mOverlay:Lcom/android/contacts/widget/AlphaTouchInterceptorOverlay;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    new-instance v0, Lcom/android/contacts/widget/AlphaTouchInterceptorOverlay;

    invoke-direct {v0, p1}, Lcom/android/contacts/widget/AlphaTouchInterceptorOverlay;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/widget/FrameLayoutWithOverlay;->mOverlay:Lcom/android/contacts/widget/AlphaTouchInterceptorOverlay;

    .line 38
    iget-object v0, p0, Lcom/android/contacts/widget/FrameLayoutWithOverlay;->mOverlay:Lcom/android/contacts/widget/AlphaTouchInterceptorOverlay;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 39
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 44
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 45
    iget-object v0, p0, Lcom/android/contacts/widget/FrameLayoutWithOverlay;->mOverlay:Lcom/android/contacts/widget/AlphaTouchInterceptorOverlay;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 46
    return-void
.end method

.method protected setAlphaLayer(Landroid/view/View;)V
    .locals 1
    .parameter "layer"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/contacts/widget/FrameLayoutWithOverlay;->mOverlay:Lcom/android/contacts/widget/AlphaTouchInterceptorOverlay;

    invoke-virtual {v0, p1}, Lcom/android/contacts/widget/AlphaTouchInterceptorOverlay;->setAlphaLayer(Landroid/view/View;)V

    .line 56
    return-void
.end method

.method public setAlphaLayerValue(F)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/contacts/widget/FrameLayoutWithOverlay;->mOverlay:Lcom/android/contacts/widget/AlphaTouchInterceptorOverlay;

    invoke-virtual {v0, p1}, Lcom/android/contacts/widget/AlphaTouchInterceptorOverlay;->setAlphaLayerValue(F)V

    .line 61
    return-void
.end method

.method public setOverlayClickable(Z)V
    .locals 1
    .parameter "clickable"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/contacts/widget/FrameLayoutWithOverlay;->mOverlay:Lcom/android/contacts/widget/AlphaTouchInterceptorOverlay;

    invoke-virtual {v0, p1}, Lcom/android/contacts/widget/AlphaTouchInterceptorOverlay;->setOverlayClickable(Z)V

    .line 71
    return-void
.end method

.method public setOverlayOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/contacts/widget/FrameLayoutWithOverlay;->mOverlay:Lcom/android/contacts/widget/AlphaTouchInterceptorOverlay;

    invoke-virtual {v0, p1}, Lcom/android/contacts/widget/AlphaTouchInterceptorOverlay;->setOverlayOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    return-void
.end method
