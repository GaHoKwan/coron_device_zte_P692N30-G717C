.class Lcom/android/mms/ui/SlideView$2;
.super Landroid/widget/ScrollView;
.source "SlideView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SlideView;->enableMMSConformanceMode(IIIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mBottomY:I

.field final synthetic this$0:Lcom/android/mms/ui/SlideView;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SlideView;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 629
    iput-object p1, p0, Lcom/android/mms/ui/SlideView$2;->this$0:Lcom/android/mms/ui/SlideView;

    invoke-direct {p0, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 4
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v2, 0x0

    .line 633
    invoke-super/range {p0 .. p5}, Landroid/widget/ScrollView;->onLayout(ZIIII)V

    .line 634
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-lez v3, :cond_1

    .line 635
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 636
    .local v0, childHeight:I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 637
    .local v1, height:I
    if-ge v1, v0, :cond_0

    sub-int v2, v0, v1

    :cond_0
    iput v2, p0, Lcom/android/mms/ui/SlideView$2;->mBottomY:I

    .line 639
    .end local v0           #childHeight:I
    .end local v1           #height:I
    :cond_1
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 1
    .parameter "l"
    .parameter "t"
    .parameter "oldl"
    .parameter "oldt"

    .prologue
    .line 643
    if-eqz p2, :cond_0

    iget v0, p0, Lcom/android/mms/ui/SlideView$2;->mBottomY:I

    if-lt p2, v0, :cond_1

    .line 645
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideView$2;->this$0:Lcom/android/mms/ui/SlideView;

    #getter for: Lcom/android/mms/ui/SlideView;->mMediaController:Lcom/android/mms/ui/MmsMediaController;
    invoke-static {v0}, Lcom/android/mms/ui/SlideView;->access$600(Lcom/android/mms/ui/SlideView;)Lcom/android/mms/ui/MmsMediaController;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/mms/ui/SlideshowActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 647
    iget-object v0, p0, Lcom/android/mms/ui/SlideView$2;->this$0:Lcom/android/mms/ui/SlideView;

    #getter for: Lcom/android/mms/ui/SlideView;->mMediaController:Lcom/android/mms/ui/MmsMediaController;
    invoke-static {v0}, Lcom/android/mms/ui/SlideView;->access$600(Lcom/android/mms/ui/SlideView;)Lcom/android/mms/ui/MmsMediaController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsMediaController;->show()V

    .line 650
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "ev"

    .prologue
    const/4 v2, 0x1

    .line 657
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 658
    .local v0, ret:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/SlideView$2;->this$0:Lcom/android/mms/ui/SlideView;

    #getter for: Lcom/android/mms/ui/SlideView;->mMediaController:Lcom/android/mms/ui/MmsMediaController;
    invoke-static {v1}, Lcom/android/mms/ui/SlideView;->access$600(Lcom/android/mms/ui/SlideView;)Lcom/android/mms/ui/MmsMediaController;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/SlideView$2;->this$0:Lcom/android/mms/ui/SlideView;

    #getter for: Lcom/android/mms/ui/SlideView;->isShow:Z
    invoke-static {v1}, Lcom/android/mms/ui/SlideView;->access$700(Lcom/android/mms/ui/SlideView;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 659
    iget-object v1, p0, Lcom/android/mms/ui/SlideView$2;->this$0:Lcom/android/mms/ui/SlideView;

    #getter for: Lcom/android/mms/ui/SlideView;->mMediaController:Lcom/android/mms/ui/MmsMediaController;
    invoke-static {v1}, Lcom/android/mms/ui/SlideView;->access$600(Lcom/android/mms/ui/SlideView;)Lcom/android/mms/ui/MmsMediaController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsMediaController;->show()V

    .line 660
    iget-object v1, p0, Lcom/android/mms/ui/SlideView$2;->this$0:Lcom/android/mms/ui/SlideView;

    const/4 v2, 0x0

    #setter for: Lcom/android/mms/ui/SlideView;->isShow:Z
    invoke-static {v1, v2}, Lcom/android/mms/ui/SlideView;->access$702(Lcom/android/mms/ui/SlideView;Z)Z

    .line 665
    :cond_0
    :goto_0
    return v0

    .line 661
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/SlideView$2;->this$0:Lcom/android/mms/ui/SlideView;

    #getter for: Lcom/android/mms/ui/SlideView;->mMediaController:Lcom/android/mms/ui/MmsMediaController;
    invoke-static {v1}, Lcom/android/mms/ui/SlideView;->access$600(Lcom/android/mms/ui/SlideView;)Lcom/android/mms/ui/MmsMediaController;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/SlideView$2;->this$0:Lcom/android/mms/ui/SlideView;

    #getter for: Lcom/android/mms/ui/SlideView;->isShow:Z
    invoke-static {v1}, Lcom/android/mms/ui/SlideView;->access$700(Lcom/android/mms/ui/SlideView;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 662
    iget-object v1, p0, Lcom/android/mms/ui/SlideView$2;->this$0:Lcom/android/mms/ui/SlideView;

    #getter for: Lcom/android/mms/ui/SlideView;->mMediaController:Lcom/android/mms/ui/MmsMediaController;
    invoke-static {v1}, Lcom/android/mms/ui/SlideView;->access$600(Lcom/android/mms/ui/SlideView;)Lcom/android/mms/ui/MmsMediaController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsMediaController;->hide()V

    .line 663
    iget-object v1, p0, Lcom/android/mms/ui/SlideView$2;->this$0:Lcom/android/mms/ui/SlideView;

    #setter for: Lcom/android/mms/ui/SlideView;->isShow:Z
    invoke-static {v1, v2}, Lcom/android/mms/ui/SlideView;->access$702(Lcom/android/mms/ui/SlideView;Z)Z

    goto :goto_0
.end method
