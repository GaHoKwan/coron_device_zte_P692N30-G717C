.class Lcom/android/ex/chips/MTKRecipientEditTextView$9;
.super Ljava/lang/Object;
.source "MTKRecipientEditTextView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ex/chips/MTKRecipientEditTextView;->registerGlobalLayoutListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;


# direct methods
.method constructor <init>(Lcom/android/ex/chips/MTKRecipientEditTextView;)V
    .locals 0
    .parameter

    .prologue
    .line 4164
    iput-object p1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$9;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 4167
    const-string v1, "RecipientEditTextView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onGlobalLayout] current view width="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$9;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", height="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$9;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", line count="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$9;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLineCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4170
    iget-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$9;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    #getter for: Lcom/android/ex/chips/MTKRecipientEditTextView;->mCurrentWidth:I
    invoke-static {v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$3900(Lcom/android/ex/chips/MTKRecipientEditTextView;)I

    move-result v1

    iget-object v2, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$9;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 4189
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$9;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    #getter for: Lcom/android/ex/chips/MTKRecipientEditTextView;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$600(Lcom/android/ex/chips/MTKRecipientEditTextView;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/ex/chips/MTKRecipientEditTextView$9$1;

    invoke-direct {v2, p0}, Lcom/android/ex/chips/MTKRecipientEditTextView$9$1;-><init>(Lcom/android/ex/chips/MTKRecipientEditTextView$9;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4198
    iget-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$9;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    #calls: Lcom/android/ex/chips/MTKRecipientEditTextView;->unRegisterGlobalLayoutListener()V
    invoke-static {v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$4200(Lcom/android/ex/chips/MTKRecipientEditTextView;)V

    .line 4199
    return-void

    .line 4174
    :cond_1
    iget-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$9;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    iget-object v2, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$9;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    #setter for: Lcom/android/ex/chips/MTKRecipientEditTextView;->mCurrentWidth:I
    invoke-static {v1, v2}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$3902(Lcom/android/ex/chips/MTKRecipientEditTextView;I)I

    .line 4175
    iget-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$9;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    invoke-virtual {v1}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4179
    iget-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$9;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v0, :cond_2

    .line 4180
    .local v0, isPortrait:Z
    :goto_1
    if-eqz v0, :cond_3

    .line 4181
    iget-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$9;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    #calls: Lcom/android/ex/chips/MTKRecipientEditTextView;->rotateToPortrait()V
    invoke-static {v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$4000(Lcom/android/ex/chips/MTKRecipientEditTextView;)V

    .line 4185
    :goto_2
    iget-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$9;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    goto :goto_0

    .line 4179
    .end local v0           #isPortrait:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 4183
    .restart local v0       #isPortrait:Z
    :cond_3
    iget-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$9;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    #calls: Lcom/android/ex/chips/MTKRecipientEditTextView;->rotateToLandscape()V
    invoke-static {v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$4100(Lcom/android/ex/chips/MTKRecipientEditTextView;)V

    goto :goto_2
.end method
