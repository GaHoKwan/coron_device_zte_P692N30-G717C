.class Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;
.super Ljava/lang/Object;
.source "MovieControllerOverlay.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/mediatek/gallery3d/video/IControllerRewindAndForward;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/MovieControllerOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ControllerRewindAndForwardExt"
.end annotation


# static fields
.field private static final BUTTON_PADDING:I = 0x28


# instance fields
.field private mButtonHeight:I

.field private mButtonWidth:I

.field private mContollerButtons:Landroid/widget/LinearLayout;

.field private mForward:Landroid/widget/ImageView;

.field private mListenerForRewind:Lcom/mediatek/gallery3d/video/IControllerRewindAndForward$IRewindAndForwardListener;

.field private mRewind:Landroid/widget/ImageView;

.field private mStop:Landroid/widget/ImageView;

.field private mTimeBarHeight:I

.field final synthetic this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/MovieControllerOverlay;Landroid/content/Context;)V
    .locals 10
    .parameter
    .parameter "context"

    .prologue
    const/16 v9, 0x28

    const/4 v8, 0x0

    const/4 v7, -0x2

    const/4 v6, 0x1

    .line 870
    iput-object p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 868
    iput v8, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->mTimeBarHeight:I

    .line 871
    const-string v4, "Gallery2/MovieControllerOverlay"

    const-string v5, "ControllerRewindAndForwardExt init"

    invoke-static {v4, v5}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    iget-object v4, p1, Lcom/android/gallery3d/app/CommonControllerOverlay;->mTimeBar:Lcom/android/gallery3d/app/TimeBar;

    invoke-virtual {v4}, Lcom/android/gallery3d/app/TimeBar;->getBarHeight()I

    move-result v4

    iput v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->mTimeBarHeight:I

    .line 873
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0200d9

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 874
    .local v0, button:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iput v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->mButtonWidth:I

    .line 875
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iput v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->mButtonHeight:I

    .line 876
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 878
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->mContollerButtons:Landroid/widget/LinearLayout;

    .line 879
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->mContollerButtons:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setHorizontalGravity(I)V

    .line 880
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->mContollerButtons:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 881
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->mContollerButtons:Landroid/widget/LinearLayout;

    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 883
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 885
    .local v1, buttonParam:Landroid/widget/LinearLayout$LayoutParams;
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->mRewind:Landroid/widget/ImageView;

    .line 886
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->mRewind:Landroid/widget/ImageView;

    const v5, 0x7f02015e

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 887
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->mRewind:Landroid/widget/ImageView;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 888
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->mRewind:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/view/View;->setFocusable(Z)V

    .line 889
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->mRewind:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/view/View;->setClickable(Z)V

    .line 890
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->mRewind:Landroid/widget/ImageView;

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 891
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->mContollerButtons:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->mRewind:Landroid/widget/ImageView;

    invoke-virtual {v4, v5, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 893
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->mStop:Landroid/widget/ImageView;

    .line 894
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->mStop:Landroid/widget/ImageView;

    const v5, 0x7f02015f

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 895
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->mStop:Landroid/widget/ImageView;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 896
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->mStop:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/view/View;->setFocusable(Z)V

    .line 897
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->mStop:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/view/View;->setClickable(Z)V

    .line 898
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->mStop:Landroid/widget/ImageView;

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 899
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 901
    .local v2, stopLayoutParam:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v2, v9, v8, v9, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 902
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->mContollerButtons:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->mStop:Landroid/widget/ImageView;

    invoke-virtual {v4, v5, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 904
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->mForward:Landroid/widget/ImageView;

    .line 905
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->mForward:Landroid/widget/ImageView;

    const v5, 0x7f020154

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 906
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->mForward:Landroid/widget/ImageView;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 907
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->mForward:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/view/View;->setFocusable(Z)V

    .line 908
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->mForward:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/view/View;->setClickable(Z)V

    .line 909
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->mForward:Landroid/widget/ImageView;

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 910
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->mContollerButtons:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->mForward:Landroid/widget/ImageView;

    invoke-virtual {v4, v5, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 912
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->getAddedRightPadding()I

    move-result v4

    invoke-direct {v3, v4, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 914
    .local v3, wrapContent:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->mContollerButtons:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 915
    return-void
.end method


# virtual methods
.method public getAddedRightPadding()I
    .locals 1

    .prologue
    .line 964
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->mButtonWidth:I

    mul-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x50

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 960
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->mButtonHeight:I

    return v0
.end method

.method public getPlayPauseEanbled()Z
    .locals 1

    .prologue
    .line 987
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    iget-object v0, v0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mPlayPauseReplayView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public getTimeBarEanbled()Z
    .locals 1

    .prologue
    .line 992
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    iget-object v0, v0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mTimeBar:Lcom/android/gallery3d/app/TimeBar;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/TimeBar;->getScrubbing()Z

    move-result v0

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1002
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->mContollerButtons:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public onCancelHiding()V
    .locals 2

    .prologue
    .line 937
    const-string v0, "Gallery2/MovieControllerOverlay"

    const-string v1, "ControllerRewindAndForwardExt onCancelHiding"

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->mContollerButtons:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 939
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 919
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->mStop:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_1

    .line 920
    const-string v0, "Gallery2/MovieControllerOverlay"

    const-string v1, "ControllerRewindAndForwardExt onClick mStop"

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->mListenerForRewind:Lcom/mediatek/gallery3d/video/IControllerRewindAndForward$IRewindAndForwardListener;

    invoke-interface {v0}, Lcom/mediatek/gallery3d/video/IControllerRewindAndForward$IRewindAndForwardListener;->onStopVideo()V

    .line 929
    :cond_0
    :goto_0
    return-void

    .line 922
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->mRewind:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_2

    .line 923
    const-string v0, "Gallery2/MovieControllerOverlay"

    const-string v1, "ControllerRewindAndForwardExt onClick mRewind"

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->mListenerForRewind:Lcom/mediatek/gallery3d/video/IControllerRewindAndForward$IRewindAndForwardListener;

    invoke-interface {v0}, Lcom/mediatek/gallery3d/video/IControllerRewindAndForward$IRewindAndForwardListener;->onRewind()V

    goto :goto_0

    .line 925
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->mForward:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    .line 926
    const-string v0, "Gallery2/MovieControllerOverlay"

    const-string v1, "ControllerRewindAndForwardExt onClick mForward"

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->mListenerForRewind:Lcom/mediatek/gallery3d/video/IControllerRewindAndForward$IRewindAndForwardListener;

    invoke-interface {v0}, Lcom/mediatek/gallery3d/video/IControllerRewindAndForward$IRewindAndForwardListener;->onForward()V

    goto :goto_0
.end method

.method public onHide()V
    .locals 2

    .prologue
    .line 942
    const-string v0, "Gallery2/MovieControllerOverlay"

    const-string v1, "ControllerRewindAndForwardExt onHide"

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->mContollerButtons:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 944
    return-void
.end method

.method public onLayout(IIII)V
    .locals 6
    .parameter "l"
    .parameter "r"
    .parameter "b"
    .parameter "pr"

    .prologue
    .line 952
    const-string v2, "Gallery2/MovieControllerOverlay"

    const-string v3, "ControllerRewindAndForwardExt onLayout"

    invoke-static {v2, v3}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    sub-int v2, p2, p1

    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->getAddedRightPadding()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v0, v2, 0x2

    .line 954
    .local v0, cl:I
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->getAddedRightPadding()I

    move-result v2

    add-int v1, v0, v2

    .line 955
    .local v1, cr:I
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    add-int v3, v1, p4

    #setter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllerButtonPosition:I
    invoke-static {v2, v3}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$902(Lcom/android/gallery3d/app/MovieControllerOverlay;I)I

    .line 956
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->mContollerButtons:Landroid/widget/LinearLayout;

    add-int v3, v0, p4

    iget v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->mButtonHeight:I

    sub-int v4, p3, v4

    add-int v5, v1, p4

    invoke-virtual {v2, v3, v4, v5, p3}, Landroid/view/ViewGroup;->layout(IIII)V

    .line 957
    return-void
.end method

.method public onShow()V
    .locals 2

    .prologue
    .line 947
    const-string v0, "Gallery2/MovieControllerOverlay"

    const-string v1, "ControllerRewindAndForwardExt onShow"

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->mContollerButtons:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 949
    return-void
.end method

.method public onStartHiding()V
    .locals 2

    .prologue
    .line 932
    const-string v0, "Gallery2/MovieControllerOverlay"

    const-string v1, "ControllerRewindAndForwardExt onStartHiding"

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->mContollerButtons:Landroid/widget/LinearLayout;

    #calls: Lcom/android/gallery3d/app/MovieControllerOverlay;->startHideAnimation(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$800(Lcom/android/gallery3d/app/MovieControllerOverlay;Landroid/view/View;)V

    .line 934
    return-void
.end method

.method public setCanReplay(Z)V
    .locals 0
    .parameter "canReplay"

    .prologue
    .line 997
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->setCanReplay(Z)V

    .line 998
    return-void
.end method

.method public setIListener(Lcom/mediatek/gallery3d/video/IControllerRewindAndForward$IRewindAndForwardListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 968
    const-string v0, "Gallery2/MovieControllerOverlay"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ControllerRewindAndForwardExt setIListener "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    iput-object p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->mListenerForRewind:Lcom/mediatek/gallery3d/video/IControllerRewindAndForward$IRewindAndForwardListener;

    .line 970
    return-void
.end method

.method public setListener(Lcom/android/gallery3d/app/ControllerOverlay$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 983
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->setListener(Lcom/android/gallery3d/app/ControllerOverlay$Listener;)V

    .line 984
    return-void
.end method

.method public setPlayPauseReplayResume()V
    .locals 0

    .prologue
    .line 1041
    return-void
.end method

.method public setTimes(IIII)V
    .locals 1
    .parameter "currentTime"
    .parameter "totalTime"
    .parameter "trimStartTime"
    .parameter "trimEndTime"

    .prologue
    const/4 v0, 0x0

    .line 1036
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->setTimes(IIII)V

    .line 1037
    return-void
.end method

.method public setViewEnabled(Z)V
    .locals 3
    .parameter "isEnabled"

    .prologue
    .line 1046
    const-string v0, "Gallery2/MovieControllerOverlay"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ControllerRewindAndForwardExt setViewEnabled is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->mRewind:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 1048
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->mForward:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 1049
    return-void
.end method

.method public show()V
    .locals 0

    .prologue
    .line 1007
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->show()V

    .line 1008
    return-void
.end method

.method public showControllerButtonsView(ZZZ)V
    .locals 3
    .parameter "canStop"
    .parameter "canRewind"
    .parameter "canForward"

    .prologue
    .line 974
    const-string v0, "Gallery2/MovieControllerOverlay"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ControllerRewindAndForwardExt showControllerButtonsView "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->mStop:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 977
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->mRewind:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 978
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->mForward:Landroid/widget/ImageView;

    invoke-virtual {v0, p3}, Landroid/view/View;->setEnabled(Z)V

    .line 979
    return-void
.end method

.method public showEnded()V
    .locals 0

    .prologue
    .line 1022
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->showEnded()V

    .line 1023
    return-void
.end method

.method public showErrorMessage(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 1032
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->showErrorMessage(Ljava/lang/String;)V

    .line 1033
    return-void
.end method

.method public showLoading()V
    .locals 0

    .prologue
    .line 1027
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->showLoading()V

    .line 1028
    return-void
.end method

.method public showPaused()V
    .locals 0

    .prologue
    .line 1017
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->showPaused()V

    .line 1018
    return-void
.end method

.method public showPlaying()V
    .locals 0

    .prologue
    .line 1012
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->showPlaying()V

    .line 1013
    return-void
.end method
