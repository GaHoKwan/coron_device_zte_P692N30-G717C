.class Lcom/android/calendar/EventInfoFragment$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "EventInfoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/EventInfoFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field defLayerType:I

.field final synthetic this$0:Lcom/android/calendar/EventInfoFragment;


# direct methods
.method constructor <init>(Lcom/android/calendar/EventInfoFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 785
    iput-object p1, p0, Lcom/android/calendar/EventInfoFragment$4;->this$0:Lcom/android/calendar/EventInfoFragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 801
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment$4;->this$0:Lcom/android/calendar/EventInfoFragment;

    #getter for: Lcom/android/calendar/EventInfoFragment;->mScrollView:Landroid/widget/ScrollView;
    invoke-static {v0}, Lcom/android/calendar/EventInfoFragment;->access$300(Lcom/android/calendar/EventInfoFragment;)Landroid/widget/ScrollView;

    move-result-object v0

    iget v1, p0, Lcom/android/calendar/EventInfoFragment$4;->defLayerType:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 802
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 806
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment$4;->this$0:Lcom/android/calendar/EventInfoFragment;

    #getter for: Lcom/android/calendar/EventInfoFragment;->mScrollView:Landroid/widget/ScrollView;
    invoke-static {v0}, Lcom/android/calendar/EventInfoFragment;->access$300(Lcom/android/calendar/EventInfoFragment;)Landroid/widget/ScrollView;

    move-result-object v0

    iget v1, p0, Lcom/android/calendar/EventInfoFragment$4;->defLayerType:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 808
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment$4;->this$0:Lcom/android/calendar/EventInfoFragment;

    const/4 v1, 0x1

    #setter for: Lcom/android/calendar/EventInfoFragment;->mNoCrossFade:Z
    invoke-static {v0, v1}, Lcom/android/calendar/EventInfoFragment;->access$2702(Lcom/android/calendar/EventInfoFragment;Z)Z

    .line 809
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 791
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment$4;->this$0:Lcom/android/calendar/EventInfoFragment;

    #getter for: Lcom/android/calendar/EventInfoFragment;->mScrollView:Landroid/widget/ScrollView;
    invoke-static {v0}, Lcom/android/calendar/EventInfoFragment;->access$300(Lcom/android/calendar/EventInfoFragment;)Landroid/widget/ScrollView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayerType()I

    move-result v0

    iput v0, p0, Lcom/android/calendar/EventInfoFragment$4;->defLayerType:I

    .line 792
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment$4;->this$0:Lcom/android/calendar/EventInfoFragment;

    #getter for: Lcom/android/calendar/EventInfoFragment;->mScrollView:Landroid/widget/ScrollView;
    invoke-static {v0}, Lcom/android/calendar/EventInfoFragment;->access$300(Lcom/android/calendar/EventInfoFragment;)Landroid/widget/ScrollView;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 795
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment$4;->this$0:Lcom/android/calendar/EventInfoFragment;

    #getter for: Lcom/android/calendar/EventInfoFragment;->mLoadingMsgView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/calendar/EventInfoFragment;->access$500(Lcom/android/calendar/EventInfoFragment;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment$4;->this$0:Lcom/android/calendar/EventInfoFragment;

    #getter for: Lcom/android/calendar/EventInfoFragment;->mLoadingMsgAlphaUpdater:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/calendar/EventInfoFragment;->access$2900(Lcom/android/calendar/EventInfoFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 796
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment$4;->this$0:Lcom/android/calendar/EventInfoFragment;

    #getter for: Lcom/android/calendar/EventInfoFragment;->mLoadingMsgView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/calendar/EventInfoFragment;->access$500(Lcom/android/calendar/EventInfoFragment;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 797
    return-void
.end method
