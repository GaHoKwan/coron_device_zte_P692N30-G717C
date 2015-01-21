.class Lcom/android/gallery3d/app/MovieControllerOverlay$ScreenModeExt;
.super Ljava/lang/Object;
.source "MovieControllerOverlay.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/mediatek/gallery3d/video/ScreenModeManager$ScreenModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/MovieControllerOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScreenModeExt"
.end annotation


# static fields
.field private static final MARGIN:I = 0xa


# instance fields
.field private mParent:Landroid/view/ViewGroup;

.field private mScreenPadding:I

.field private mScreenView:Landroid/widget/ImageView;

.field private mScreenWidth:I

.field private mSeprator:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/MovieControllerOverlay;Landroid/content/Context;)V
    .locals 6
    .parameter
    .parameter "context"

    .prologue
    const/4 v4, -0x2

    const/4 v5, 0x1

    .line 750
    iput-object p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ScreenModeExt;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 751
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 753
    .local v0, metrics:Landroid/util/DisplayMetrics;
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 756
    .local v2, wrapContent:Landroid/widget/FrameLayout$LayoutParams;
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ScreenModeExt;->mScreenView:Landroid/widget/ImageView;

    .line 757
    iget-object v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ScreenModeExt;->mScreenView:Landroid/widget/ImageView;

    const v4, 0x7f0200d0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 758
    iget-object v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ScreenModeExt;->mScreenView:Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 759
    iget-object v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ScreenModeExt;->mScreenView:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 760
    iget-object v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ScreenModeExt;->mScreenView:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/view/View;->setClickable(Z)V

    .line 761
    iget-object v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ScreenModeExt;->mScreenView:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 762
    iget-object v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ScreenModeExt;->mScreenView:Landroid/widget/ImageView;

    invoke-virtual {p1, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 764
    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllerRewindAndForwardExt:Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;
    invoke-static {p1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$600(Lcom/android/gallery3d/app/MovieControllerOverlay;)Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 765
    const-string v3, "Gallery2/MovieControllerOverlay"

    const-string v4, "ScreenModeExt enableRewindAndForward"

    invoke-static {v3, v4}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ScreenModeExt;->mSeprator:Landroid/widget/ImageView;

    .line 767
    iget-object v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ScreenModeExt;->mSeprator:Landroid/widget/ImageView;

    const v4, 0x7f020121

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 768
    iget-object v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ScreenModeExt;->mSeprator:Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 769
    iget-object v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ScreenModeExt;->mSeprator:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 770
    iget-object v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ScreenModeExt;->mSeprator:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/view/View;->setClickable(Z)V

    .line 771
    iget-object v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ScreenModeExt;->mSeprator:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 772
    iget-object v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ScreenModeExt;->mSeprator:Landroid/widget/ImageView;

    invoke-virtual {p1, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 779
    :goto_0
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0200ce

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 780
    .local v1, screenButton:Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iput v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ScreenModeExt;->mScreenWidth:I

    .line 781
    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v4, 0x4120

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ScreenModeExt;->mScreenPadding:I

    .line 782
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 783
    return-void

    .line 775
    .end local v1           #screenButton:Landroid/graphics/Bitmap;
    :cond_0
    const-string v3, "Gallery2/MovieControllerOverlay"

    const-string v4, "ScreenModeExt disableRewindAndForward"

    invoke-static {v3, v4}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateScreenModeDrawable()V
    .locals 3

    .prologue
    .line 786
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ScreenModeExt;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mScreenModeManager:Lcom/mediatek/gallery3d/video/ScreenModeManager;
    invoke-static {v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$700(Lcom/android/gallery3d/app/MovieControllerOverlay;)Lcom/mediatek/gallery3d/video/ScreenModeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/gallery3d/video/ScreenModeManager;->getNextScreenMode()I

    move-result v0

    .line 787
    .local v0, screenMode:I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 788
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ScreenModeExt;->mScreenView:Landroid/widget/ImageView;

    const v2, 0x7f0200ce

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 794
    :goto_0
    return-void

    .line 789
    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 790
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ScreenModeExt;->mScreenView:Landroid/widget/ImageView;

    const v2, 0x7f0200d0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 792
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ScreenModeExt;->mScreenView:Landroid/widget/ImageView;

    const v2, 0x7f0200cf

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public getAddedRightPadding()I
    .locals 2

    .prologue
    .line 847
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ScreenModeExt;->mScreenPadding:I

    mul-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ScreenModeExt;->mScreenWidth:I

    add-int/2addr v0, v1

    return v0
.end method

.method public onCancelHiding()V
    .locals 2

    .prologue
    .line 810
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ScreenModeExt;->mScreenView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 811
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 798
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ScreenModeExt;->mScreenView:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ScreenModeExt;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mScreenModeManager:Lcom/mediatek/gallery3d/video/ScreenModeManager;
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$700(Lcom/android/gallery3d/app/MovieControllerOverlay;)Lcom/mediatek/gallery3d/video/ScreenModeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 799
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ScreenModeExt;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mScreenModeManager:Lcom/mediatek/gallery3d/video/ScreenModeManager;
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$700(Lcom/android/gallery3d/app/MovieControllerOverlay;)Lcom/mediatek/gallery3d/video/ScreenModeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ScreenModeExt;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mScreenModeManager:Lcom/mediatek/gallery3d/video/ScreenModeManager;
    invoke-static {v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$700(Lcom/android/gallery3d/app/MovieControllerOverlay;)Lcom/mediatek/gallery3d/video/ScreenModeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/gallery3d/video/ScreenModeManager;->getNextScreenMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mediatek/gallery3d/video/ScreenModeManager;->setScreenMode(I)V

    .line 801
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ScreenModeExt;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->show()V

    .line 803
    :cond_0
    return-void
.end method

.method public onHide()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 814
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ScreenModeExt;->mScreenView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 815
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ScreenModeExt;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllerRewindAndForwardExt:Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$600(Lcom/android/gallery3d/app/MovieControllerOverlay;)Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 816
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ScreenModeExt;->mSeprator:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 818
    :cond_0
    return-void
.end method

.method public onLayout(III)V
    .locals 7
    .parameter "width"
    .parameter "paddingRight"
    .parameter "yPosition"

    .prologue
    .line 827
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay$ScreenModeExt;->getAddedRightPadding()I

    move-result v2

    .line 828
    .local v2, sw:I
    sub-int v3, p1, p2

    sub-int/2addr v3, v2

    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ScreenModeExt;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllerButtonPosition:I
    invoke-static {v4}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$900(Lcom/android/gallery3d/app/MovieControllerOverlay;)I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ScreenModeExt;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllerButtonPosition:I
    invoke-static {v4}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$900(Lcom/android/gallery3d/app/MovieControllerOverlay;)I

    move-result v4

    add-int v0, v3, v4

    .line 829
    .local v0, sepratorPosition:I
    const/4 v1, 0x2

    .line 830
    .local v1, sepratorWidth:I
    iget-object v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ScreenModeExt;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllerRewindAndForwardExt:Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;
    invoke-static {v3}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$600(Lcom/android/gallery3d/app/MovieControllerOverlay;)Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 831
    iget-object v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ScreenModeExt;->mScreenView:Landroid/widget/ImageView;

    sub-int v4, p1, p2

    sub-int/2addr v4, v2

    iget-object v5, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ScreenModeExt;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllerRewindAndForwardExt:Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;
    invoke-static {v5}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$600(Lcom/android/gallery3d/app/MovieControllerOverlay;)Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->getHeight()I

    move-result v5

    sub-int v5, p3, v5

    sub-int v6, p1, p2

    invoke-virtual {v3, v4, v5, v6, p3}, Landroid/view/View;->layout(IIII)V

    .line 839
    :goto_0
    iget-object v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ScreenModeExt;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllerRewindAndForwardExt:Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;
    invoke-static {v3}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$600(Lcom/android/gallery3d/app/MovieControllerOverlay;)Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 840
    iget-object v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ScreenModeExt;->mSeprator:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ScreenModeExt;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllerRewindAndForwardExt:Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;
    invoke-static {v4}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$600(Lcom/android/gallery3d/app/MovieControllerOverlay;)Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->getHeight()I

    move-result v4

    sub-int v4, p3, v4

    add-int v5, v0, v1

    invoke-virtual {v3, v0, v4, v5, p3}, Landroid/view/View;->layout(IIII)V

    .line 844
    :cond_0
    return-void

    .line 835
    :cond_1
    iget-object v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ScreenModeExt;->mScreenView:Landroid/widget/ImageView;

    sub-int v4, p1, p2

    sub-int/2addr v4, v2

    iget-object v5, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ScreenModeExt;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    iget-object v5, v5, Lcom/android/gallery3d/app/CommonControllerOverlay;->mTimeBar:Lcom/android/gallery3d/app/TimeBar;

    invoke-virtual {v5}, Lcom/android/gallery3d/app/TimeBar;->getBarHeight()I

    move-result v5

    sub-int v5, p3, v5

    sub-int v6, p1, p2

    invoke-virtual {v3, v4, v5, v6, p3}, Landroid/view/View;->layout(IIII)V

    goto :goto_0
.end method

.method public onScreenModeChanged(I)V
    .locals 0
    .parameter "newMode"

    .prologue
    .line 852
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay$ScreenModeExt;->updateScreenModeDrawable()V

    .line 853
    return-void
.end method

.method public onShow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 820
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ScreenModeExt;->mScreenView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 821
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ScreenModeExt;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllerRewindAndForwardExt:Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$600(Lcom/android/gallery3d/app/MovieControllerOverlay;)Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 822
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ScreenModeExt;->mSeprator:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 824
    :cond_0
    return-void
.end method

.method public onStartHiding()V
    .locals 2

    .prologue
    .line 806
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ScreenModeExt;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ScreenModeExt;->mScreenView:Landroid/widget/ImageView;

    #calls: Lcom/android/gallery3d/app/MovieControllerOverlay;->startHideAnimation(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$800(Lcom/android/gallery3d/app/MovieControllerOverlay;Landroid/view/View;)V

    .line 807
    return-void
.end method
