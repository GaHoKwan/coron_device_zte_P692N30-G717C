.class Lcom/android/mms/ui/MmsMediaController$1;
.super Ljava/lang/Object;
.source "MmsMediaController.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MmsMediaController;->initFloatingWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MmsMediaController;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MmsMediaController;)V
    .locals 0
    .parameter

    .prologue
    .line 270
    iput-object p1, p0, Lcom/android/mms/ui/MmsMediaController$1;->this$0:Lcom/android/mms/ui/MmsMediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 3

    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/mms/ui/MmsMediaController$1;->this$0:Lcom/android/mms/ui/MmsMediaController;

    iget-object v1, p0, Lcom/android/mms/ui/MmsMediaController$1;->this$0:Lcom/android/mms/ui/MmsMediaController;

    iget-object v1, v1, Lcom/android/mms/ui/MmsMediaController;->mDecor:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    #setter for: Lcom/android/mms/ui/MmsMediaController;->mHeight:I
    invoke-static {v0, v1}, Lcom/android/mms/ui/MmsMediaController;->access$002(Lcom/android/mms/ui/MmsMediaController;I)I

    .line 273
    iget-object v0, p0, Lcom/android/mms/ui/MmsMediaController$1;->this$0:Lcom/android/mms/ui/MmsMediaController;

    #calls: Lcom/android/mms/ui/MmsMediaController;->updateFloatingWindowLayout()V
    invoke-static {v0}, Lcom/android/mms/ui/MmsMediaController;->access$100(Lcom/android/mms/ui/MmsMediaController;)V

    .line 274
    iget-object v0, p0, Lcom/android/mms/ui/MmsMediaController$1;->this$0:Lcom/android/mms/ui/MmsMediaController;

    iget-object v0, v0, Lcom/android/mms/ui/MmsMediaController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/mms/ui/MmsMediaController$1;->this$0:Lcom/android/mms/ui/MmsMediaController;

    iget-object v1, v1, Lcom/android/mms/ui/MmsMediaController;->mDecor:Landroid/view/View;

    iget-object v2, p0, Lcom/android/mms/ui/MmsMediaController$1;->this$0:Lcom/android/mms/ui/MmsMediaController;

    iget-object v2, v2, Lcom/android/mms/ui/MmsMediaController;->mDecorLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 275
    iget-object v0, p0, Lcom/android/mms/ui/MmsMediaController$1;->this$0:Lcom/android/mms/ui/MmsMediaController;

    iget-object v0, v0, Lcom/android/mms/ui/MmsMediaController;->mDecor:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 276
    const/4 v0, 0x1

    return v0
.end method
