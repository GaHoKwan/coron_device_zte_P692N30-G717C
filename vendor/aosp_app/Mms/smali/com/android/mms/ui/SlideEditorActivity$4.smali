.class Lcom/android/mms/ui/SlideEditorActivity$4;
.super Ljava/lang/Object;
.source "SlideEditorActivity.java"

# interfaces
.implements Lcom/android/mms/ui/BasicSlideEditorView$OnTextChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SlideEditorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SlideEditorActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SlideEditorActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 429
    iput-object p1, p0, Lcom/android/mms/ui/SlideEditorActivity$4;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTextChanged(Ljava/lang/String;)V
    .locals 6
    .parameter "s"

    .prologue
    .line 431
    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity$4;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 434
    :try_start_0
    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity$4;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    #getter for: Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;
    invoke-static {v2}, Lcom/android/mms/ui/SlideEditorActivity;->access$300(Lcom/android/mms/ui/SlideEditorActivity;)Lcom/android/mms/ui/SlideshowEditor;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/SlideEditorActivity$4;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    #getter for: Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I
    invoke-static {v3}, Lcom/android/mms/ui/SlideEditorActivity;->access$100(Lcom/android/mms/ui/SlideEditorActivity;)I

    move-result v3

    invoke-virtual {v2, v3, p1}, Lcom/android/mms/ui/SlideshowEditor;->changeText(ILjava/lang/String;)V
    :try_end_0
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 442
    :goto_0
    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity$4;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    #calls: Lcom/android/mms/ui/SlideEditorActivity;->showSizeDisplay()V
    invoke-static {v2}, Lcom/android/mms/ui/SlideEditorActivity;->access$500(Lcom/android/mms/ui/SlideEditorActivity;)V

    .line 444
    :cond_0
    return-void

    .line 435
    :catch_0
    move-exception v0

    .line 436
    .local v0, e:Lcom/android/mms/ExceedMessageSizeException;
    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity$4;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    #getter for: Lcom/android/mms/ui/SlideEditorActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/mms/ui/SlideEditorActivity;->access$800(Lcom/android/mms/ui/SlideEditorActivity;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/SlideEditorActivity$4;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    #getter for: Lcom/android/mms/ui/SlideEditorActivity;->dialogRunnable:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/android/mms/ui/SlideEditorActivity;->access$700(Lcom/android/mms/ui/SlideEditorActivity;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 437
    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity$4;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    #getter for: Lcom/android/mms/ui/SlideEditorActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/mms/ui/SlideEditorActivity;->access$800(Lcom/android/mms/ui/SlideEditorActivity;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/SlideEditorActivity$4;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    #getter for: Lcom/android/mms/ui/SlideEditorActivity;->dialogRunnable:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/android/mms/ui/SlideEditorActivity;->access$700(Lcom/android/mms/ui/SlideEditorActivity;)Ljava/lang/Runnable;

    move-result-object v3

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 438
    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity$4;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    #getter for: Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;
    invoke-static {v2}, Lcom/android/mms/ui/SlideEditorActivity;->access$300(Lcom/android/mms/ui/SlideEditorActivity;)Lcom/android/mms/ui/SlideshowEditor;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/SlideEditorActivity$4;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    #getter for: Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I
    invoke-static {v3}, Lcom/android/mms/ui/SlideEditorActivity;->access$100(Lcom/android/mms/ui/SlideEditorActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/SlideshowEditor;->getSlideTextOf(I)Ljava/lang/String;

    move-result-object v1

    .line 439
    .local v1, text:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity$4;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    #getter for: Lcom/android/mms/ui/SlideEditorActivity;->mSlideView:Lcom/android/mms/ui/BasicSlideEditorView;
    invoke-static {v2}, Lcom/android/mms/ui/SlideEditorActivity;->access$900(Lcom/android/mms/ui/SlideEditorActivity;)Lcom/android/mms/ui/BasicSlideEditorView;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3, v1}, Lcom/android/mms/ui/BasicSlideEditorView;->setText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
