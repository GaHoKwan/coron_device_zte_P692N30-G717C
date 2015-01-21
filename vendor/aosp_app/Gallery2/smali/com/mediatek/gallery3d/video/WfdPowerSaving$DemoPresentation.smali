.class final Lcom/mediatek/gallery3d/video/WfdPowerSaving$DemoPresentation;
.super Landroid/app/Presentation;
.source "WfdPowerSaving.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/gallery3d/video/WfdPowerSaving;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DemoPresentation"
.end annotation


# instance fields
.field private mRoot:Landroid/widget/RelativeLayout;

.field private mRootView:Landroid/view/View;

.field private mSurfaceView:Landroid/view/SurfaceView;

.field private mTextView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/mediatek/gallery3d/video/WfdPowerSaving;


# direct methods
.method public constructor <init>(Lcom/mediatek/gallery3d/video/WfdPowerSaving;Landroid/content/Context;Landroid/view/Display;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "display"

    .prologue
    .line 379
    iput-object p1, p0, Lcom/mediatek/gallery3d/video/WfdPowerSaving$DemoPresentation;->this$0:Lcom/mediatek/gallery3d/video/WfdPowerSaving;

    .line 380
    invoke-direct {p0, p2, p3}, Landroid/app/Presentation;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    .line 381
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/gallery3d/video/WfdPowerSaving;Landroid/content/Context;Landroid/view/Display;Landroid/view/SurfaceView;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "display"
    .parameter "surfaceview"

    .prologue
    .line 383
    iput-object p1, p0, Lcom/mediatek/gallery3d/video/WfdPowerSaving$DemoPresentation;->this$0:Lcom/mediatek/gallery3d/video/WfdPowerSaving;

    .line 384
    invoke-direct {p0, p2, p3}, Landroid/app/Presentation;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    .line 385
    iput-object p4, p0, Lcom/mediatek/gallery3d/video/WfdPowerSaving$DemoPresentation;->mSurfaceView:Landroid/view/SurfaceView;

    .line 386
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, -0x1

    .line 391
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 394
    const v1, 0x7f04004d

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 395
    const v1, 0x7f0b010b

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/mediatek/gallery3d/video/WfdPowerSaving$DemoPresentation;->mRoot:Landroid/widget/RelativeLayout;

    .line 397
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 400
    .local v0, wrapContent:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 402
    iget-object v1, p0, Lcom/mediatek/gallery3d/video/WfdPowerSaving$DemoPresentation;->mRoot:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/mediatek/gallery3d/video/WfdPowerSaving$DemoPresentation;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 403
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 408
    return-void
.end method

.method public removeSurfaceView()V
    .locals 2

    .prologue
    .line 411
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/WfdPowerSaving$DemoPresentation;->mRoot:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/mediatek/gallery3d/video/WfdPowerSaving$DemoPresentation;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 412
    return-void
.end method
