.class Lcom/android/launcher2/AppsCustomizeTabHost$3;
.super Ljava/lang/Object;
.source "AppsCustomizeTabHost.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/AppsCustomizeTabHost;->onTabChanged(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/AppsCustomizeTabHost;

.field final synthetic val$duration:I

.field final synthetic val$type:Lcom/android/launcher2/AppsCustomizePagedView$ContentType;


# direct methods
.method constructor <init>(Lcom/android/launcher2/AppsCustomizeTabHost;Lcom/android/launcher2/AppsCustomizePagedView$ContentType;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 245
    iput-object p1, p0, Lcom/android/launcher2/AppsCustomizeTabHost$3;->this$0:Lcom/android/launcher2/AppsCustomizeTabHost;

    iput-object p2, p0, Lcom/android/launcher2/AppsCustomizeTabHost$3;->val$type:Lcom/android/launcher2/AppsCustomizePagedView$ContentType;

    iput p3, p0, Lcom/android/launcher2/AppsCustomizeTabHost$3;->val$duration:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    .line 248
    iget-object v8, p0, Lcom/android/launcher2/AppsCustomizeTabHost$3;->this$0:Lcom/android/launcher2/AppsCustomizeTabHost;

    #getter for: Lcom/android/launcher2/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;
    invoke-static {v8}, Lcom/android/launcher2/AppsCustomizeTabHost;->access$200(Lcom/android/launcher2/AppsCustomizeTabHost;)Lcom/android/launcher2/AppsCustomizePagedView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    if-lez v8, :cond_0

    iget-object v8, p0, Lcom/android/launcher2/AppsCustomizeTabHost$3;->this$0:Lcom/android/launcher2/AppsCustomizeTabHost;

    #getter for: Lcom/android/launcher2/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;
    invoke-static {v8}, Lcom/android/launcher2/AppsCustomizeTabHost;->access$200(Lcom/android/launcher2/AppsCustomizeTabHost;)Lcom/android/launcher2/AppsCustomizePagedView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    if-gtz v8, :cond_1

    .line 250
    :cond_0
    iget-object v8, p0, Lcom/android/launcher2/AppsCustomizeTabHost$3;->this$0:Lcom/android/launcher2/AppsCustomizeTabHost;

    #calls: Lcom/android/launcher2/AppsCustomizeTabHost;->reloadCurrentPage()V
    invoke-static {v8}, Lcom/android/launcher2/AppsCustomizeTabHost;->access$300(Lcom/android/launcher2/AppsCustomizeTabHost;)V

    .line 335
    :goto_0
    return-void

    .line 256
    :cond_1
    const/4 v8, 0x2

    new-array v6, v8, [I

    .line 257
    .local v6, visiblePageRange:[I
    iget-object v8, p0, Lcom/android/launcher2/AppsCustomizeTabHost$3;->this$0:Lcom/android/launcher2/AppsCustomizeTabHost;

    #getter for: Lcom/android/launcher2/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;
    invoke-static {v8}, Lcom/android/launcher2/AppsCustomizeTabHost;->access$200(Lcom/android/launcher2/AppsCustomizeTabHost;)Lcom/android/launcher2/AppsCustomizePagedView;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/android/launcher2/PagedView;->getVisiblePages([I)V

    .line 258
    const/4 v8, 0x0

    aget v8, v6, v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_2

    const/4 v8, 0x1

    aget v8, v6, v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_2

    .line 260
    iget-object v8, p0, Lcom/android/launcher2/AppsCustomizeTabHost$3;->this$0:Lcom/android/launcher2/AppsCustomizeTabHost;

    #calls: Lcom/android/launcher2/AppsCustomizeTabHost;->reloadCurrentPage()V
    invoke-static {v8}, Lcom/android/launcher2/AppsCustomizeTabHost;->access$300(Lcom/android/launcher2/AppsCustomizeTabHost;)V

    goto :goto_0

    .line 263
    :cond_2
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 264
    .local v7, visiblePages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v8, 0x0

    aget v2, v6, v8

    .local v2, i:I
    :goto_1
    const/4 v8, 0x1

    aget v8, v6, v8

    if-gt v2, v8, :cond_3

    .line 265
    iget-object v8, p0, Lcom/android/launcher2/AppsCustomizeTabHost$3;->this$0:Lcom/android/launcher2/AppsCustomizeTabHost;

    #getter for: Lcom/android/launcher2/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;
    invoke-static {v8}, Lcom/android/launcher2/AppsCustomizeTabHost;->access$200(Lcom/android/launcher2/AppsCustomizeTabHost;)Lcom/android/launcher2/AppsCustomizePagedView;

    move-result-object v8

    invoke-virtual {v8, v2}, Lcom/android/launcher2/AppsCustomizePagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 272
    :cond_3
    iget-object v8, p0, Lcom/android/launcher2/AppsCustomizeTabHost$3;->this$0:Lcom/android/launcher2/AppsCustomizeTabHost;

    #getter for: Lcom/android/launcher2/AppsCustomizeTabHost;->mAnimationBuffer:Landroid/widget/FrameLayout;
    invoke-static {v8}, Lcom/android/launcher2/AppsCustomizeTabHost;->access$400(Lcom/android/launcher2/AppsCustomizeTabHost;)Landroid/widget/FrameLayout;

    move-result-object v8

    iget-object v9, p0, Lcom/android/launcher2/AppsCustomizeTabHost$3;->this$0:Lcom/android/launcher2/AppsCustomizeTabHost;

    #getter for: Lcom/android/launcher2/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;
    invoke-static {v9}, Lcom/android/launcher2/AppsCustomizeTabHost;->access$200(Lcom/android/launcher2/AppsCustomizeTabHost;)Lcom/android/launcher2/AppsCustomizePagedView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getScrollX()I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/View;->scrollTo(II)V

    .line 276
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v2, v8, -0x1

    :goto_2
    if-ltz v2, :cond_6

    .line 277
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 278
    .local v1, child:Landroid/view/View;
    instance-of v8, v1, Lcom/android/launcher2/PagedViewCellLayout;

    if-eqz v8, :cond_5

    move-object v8, v1

    .line 279
    check-cast v8, Lcom/android/launcher2/PagedViewCellLayout;

    invoke-virtual {v8}, Lcom/android/launcher2/PagedViewCellLayout;->resetChildrenOnKeyListeners()V

    .line 283
    :cond_4
    :goto_3
    const/4 v8, 0x0

    invoke-static {v8}, Lcom/android/launcher2/PagedViewWidget;->setDeletePreviewsWhenDetachedFromWindow(Z)V

    .line 285
    const-string v8, "AppsCustomizeTabHost"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onTabChanged before remove view: i = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", child = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mAppsCustomizePane = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/launcher2/AppsCustomizeTabHost$3;->this$0:Lcom/android/launcher2/AppsCustomizeTabHost;

    #getter for: Lcom/android/launcher2/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;
    invoke-static {v10}, Lcom/android/launcher2/AppsCustomizeTabHost;->access$200(Lcom/android/launcher2/AppsCustomizeTabHost;)Lcom/android/launcher2/AppsCustomizePagedView;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    iget-object v8, p0, Lcom/android/launcher2/AppsCustomizeTabHost$3;->this$0:Lcom/android/launcher2/AppsCustomizeTabHost;

    #getter for: Lcom/android/launcher2/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;
    invoke-static {v8}, Lcom/android/launcher2/AppsCustomizeTabHost;->access$200(Lcom/android/launcher2/AppsCustomizeTabHost;)Lcom/android/launcher2/AppsCustomizePagedView;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 290
    const/4 v8, 0x1

    invoke-static {v8}, Lcom/android/launcher2/PagedViewWidget;->setDeletePreviewsWhenDetachedFromWindow(Z)V

    .line 291
    iget-object v8, p0, Lcom/android/launcher2/AppsCustomizeTabHost$3;->this$0:Lcom/android/launcher2/AppsCustomizeTabHost;

    #getter for: Lcom/android/launcher2/AppsCustomizeTabHost;->mAnimationBuffer:Landroid/widget/FrameLayout;
    invoke-static {v8}, Lcom/android/launcher2/AppsCustomizeTabHost;->access$400(Lcom/android/launcher2/AppsCustomizeTabHost;)Landroid/widget/FrameLayout;

    move-result-object v8

    const/high16 v9, 0x3f80

    invoke-virtual {v8, v9}, Landroid/view/View;->setAlpha(F)V

    .line 292
    iget-object v8, p0, Lcom/android/launcher2/AppsCustomizeTabHost$3;->this$0:Lcom/android/launcher2/AppsCustomizeTabHost;

    #getter for: Lcom/android/launcher2/AppsCustomizeTabHost;->mAnimationBuffer:Landroid/widget/FrameLayout;
    invoke-static {v8}, Lcom/android/launcher2/AppsCustomizeTabHost;->access$400(Lcom/android/launcher2/AppsCustomizeTabHost;)Landroid/widget/FrameLayout;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 293
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    invoke-direct {v5, v8, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 295
    .local v5, p:Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v8

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v5, v8, v9, v10, v11}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 296
    iget-object v8, p0, Lcom/android/launcher2/AppsCustomizeTabHost$3;->this$0:Lcom/android/launcher2/AppsCustomizeTabHost;

    #getter for: Lcom/android/launcher2/AppsCustomizeTabHost;->mAnimationBuffer:Landroid/widget/FrameLayout;
    invoke-static {v8}, Lcom/android/launcher2/AppsCustomizeTabHost;->access$400(Lcom/android/launcher2/AppsCustomizeTabHost;)Landroid/widget/FrameLayout;

    move-result-object v8

    invoke-virtual {v8, v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 276
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_2

    .line 280
    .end local v5           #p:Landroid/widget/FrameLayout$LayoutParams;
    :cond_5
    instance-of v8, v1, Lcom/android/launcher2/PagedViewGridLayout;

    if-eqz v8, :cond_4

    move-object v8, v1

    .line 281
    check-cast v8, Lcom/android/launcher2/PagedViewGridLayout;

    invoke-virtual {v8}, Lcom/android/launcher2/PagedViewGridLayout;->resetChildrenOnKeyListeners()V

    goto/16 :goto_3

    .line 300
    .end local v1           #child:Landroid/view/View;
    :cond_6
    iget-object v8, p0, Lcom/android/launcher2/AppsCustomizeTabHost$3;->this$0:Lcom/android/launcher2/AppsCustomizeTabHost;

    #calls: Lcom/android/launcher2/AppsCustomizeTabHost;->onTabChangedStart()V
    invoke-static {v8}, Lcom/android/launcher2/AppsCustomizeTabHost;->access$500(Lcom/android/launcher2/AppsCustomizeTabHost;)V

    .line 301
    iget-object v8, p0, Lcom/android/launcher2/AppsCustomizeTabHost$3;->this$0:Lcom/android/launcher2/AppsCustomizeTabHost;

    iget-object v9, p0, Lcom/android/launcher2/AppsCustomizeTabHost$3;->val$type:Lcom/android/launcher2/AppsCustomizePagedView$ContentType;

    #calls: Lcom/android/launcher2/AppsCustomizeTabHost;->onTabChangedEnd(Lcom/android/launcher2/AppsCustomizePagedView$ContentType;)V
    invoke-static {v8, v9}, Lcom/android/launcher2/AppsCustomizeTabHost;->access$600(Lcom/android/launcher2/AppsCustomizeTabHost;Lcom/android/launcher2/AppsCustomizePagedView$ContentType;)V

    .line 304
    iget-object v8, p0, Lcom/android/launcher2/AppsCustomizeTabHost$3;->this$0:Lcom/android/launcher2/AppsCustomizeTabHost;

    #getter for: Lcom/android/launcher2/AppsCustomizeTabHost;->mAnimationBuffer:Landroid/widget/FrameLayout;
    invoke-static {v8}, Lcom/android/launcher2/AppsCustomizeTabHost;->access$400(Lcom/android/launcher2/AppsCustomizeTabHost;)Landroid/widget/FrameLayout;

    move-result-object v8

    const-string v9, "alpha"

    const/4 v10, 0x1

    new-array v10, v10, [F

    const/4 v11, 0x0

    const/4 v12, 0x0

    aput v12, v10, v11

    invoke-static {v8, v9, v10}, Lcom/android/launcher2/LauncherAnimUtils;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 305
    .local v4, outAnim:Landroid/animation/ObjectAnimator;
    new-instance v8, Lcom/android/launcher2/AppsCustomizeTabHost$3$1;

    invoke-direct {v8, p0}, Lcom/android/launcher2/AppsCustomizeTabHost$3$1;-><init>(Lcom/android/launcher2/AppsCustomizeTabHost$3;)V

    invoke-virtual {v4, v8}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 317
    iget-object v8, p0, Lcom/android/launcher2/AppsCustomizeTabHost$3;->this$0:Lcom/android/launcher2/AppsCustomizeTabHost;

    #getter for: Lcom/android/launcher2/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;
    invoke-static {v8}, Lcom/android/launcher2/AppsCustomizeTabHost;->access$200(Lcom/android/launcher2/AppsCustomizeTabHost;)Lcom/android/launcher2/AppsCustomizePagedView;

    move-result-object v8

    const-string v9, "alpha"

    const/4 v10, 0x1

    new-array v10, v10, [F

    const/4 v11, 0x0

    const/high16 v12, 0x3f80

    aput v12, v10, v11

    invoke-static {v8, v9, v10}, Lcom/android/launcher2/LauncherAnimUtils;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 318
    .local v3, inAnim:Landroid/animation/ObjectAnimator;
    new-instance v8, Lcom/android/launcher2/AppsCustomizeTabHost$3$2;

    invoke-direct {v8, p0}, Lcom/android/launcher2/AppsCustomizeTabHost$3$2;-><init>(Lcom/android/launcher2/AppsCustomizeTabHost$3;)V

    invoke-virtual {v3, v8}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 327
    invoke-static {}, Lcom/android/launcher2/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v0

    .line 328
    .local v0, animSet:Landroid/animation/AnimatorSet;
    const/4 v8, 0x2

    new-array v8, v8, [Landroid/animation/Animator;

    const/4 v9, 0x0

    aput-object v4, v8, v9

    const/4 v9, 0x1

    aput-object v3, v8, v9

    invoke-virtual {v0, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 329
    iget v8, p0, Lcom/android/launcher2/AppsCustomizeTabHost$3;->val$duration:I

    int-to-long v8, v8

    invoke-virtual {v0, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 330
    iget-object v8, p0, Lcom/android/launcher2/AppsCustomizeTabHost$3;->this$0:Lcom/android/launcher2/AppsCustomizeTabHost;

    new-instance v9, Lcom/android/launcher2/AppsCustomizeTabHost$3$3;

    invoke-direct {v9, p0, v0}, Lcom/android/launcher2/AppsCustomizeTabHost$3$3;-><init>(Lcom/android/launcher2/AppsCustomizeTabHost$3;Landroid/animation/AnimatorSet;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0
.end method
