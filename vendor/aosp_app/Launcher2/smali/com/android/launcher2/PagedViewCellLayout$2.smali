.class Lcom/android/launcher2/PagedViewCellLayout$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PagedViewCellLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/PagedViewCellLayout;->animateChildToPosition(Landroid/view/View;IIIIZZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field cancelled:Z

.field final synthetic this$0:Lcom/android/launcher2/PagedViewCellLayout;

.field final synthetic val$child:Landroid/view/View;

.field final synthetic val$lp:Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;


# direct methods
.method constructor <init>(Lcom/android/launcher2/PagedViewCellLayout;Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;Landroid/view/View;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 964
    iput-object p1, p0, Lcom/android/launcher2/PagedViewCellLayout$2;->this$0:Lcom/android/launcher2/PagedViewCellLayout;

    iput-object p2, p0, Lcom/android/launcher2/PagedViewCellLayout$2;->val$lp:Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;

    iput-object p3, p0, Lcom/android/launcher2/PagedViewCellLayout$2;->val$child:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 965
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/PagedViewCellLayout$2;->cancelled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 980
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/PagedViewCellLayout$2;->cancelled:Z

    .line 981
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 970
    iget-boolean v0, p0, Lcom/android/launcher2/PagedViewCellLayout$2;->cancelled:Z

    if-nez v0, :cond_0

    .line 971
    iget-object v0, p0, Lcom/android/launcher2/PagedViewCellLayout$2;->val$lp:Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->isLockedToGrid:Z

    .line 972
    iget-object v0, p0, Lcom/android/launcher2/PagedViewCellLayout$2;->val$child:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 974
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/PagedViewCellLayout$2;->this$0:Lcom/android/launcher2/PagedViewCellLayout;

    #getter for: Lcom/android/launcher2/PagedViewCellLayout;->mReorderAnimators:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/launcher2/PagedViewCellLayout;->access$000(Lcom/android/launcher2/PagedViewCellLayout;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/PagedViewCellLayout$2;->val$lp:Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 975
    iget-object v0, p0, Lcom/android/launcher2/PagedViewCellLayout$2;->this$0:Lcom/android/launcher2/PagedViewCellLayout;

    #getter for: Lcom/android/launcher2/PagedViewCellLayout;->mReorderAnimators:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/launcher2/PagedViewCellLayout;->access$000(Lcom/android/launcher2/PagedViewCellLayout;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/PagedViewCellLayout$2;->val$lp:Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 977
    :cond_1
    return-void
.end method
