.class Lcom/android/mms/ui/ComposeMessageActivity$59;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->initResourceRefs()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 6855
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$59;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    .line 6858
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$59;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mShowKeyBoardFromShare:Z
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$12700(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6859
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$59;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->showSharePanel(Z)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$8500(Lcom/android/mms/ui/ComposeMessageActivity;Z)V

    .line 6861
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$59;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mShowKeyBoardFromEmoticon:Z
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$12800(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6862
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$59;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->showEmoticonPanel(Z)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$8600(Lcom/android/mms/ui/ComposeMessageActivity;Z)V

    .line 6864
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$59;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mShowKeyBoardFromShare:Z
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$12700(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$59;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mShowKeyBoardFromEmoticon:Z
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$12800(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6865
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$59;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->updateFullScreenTextEditorHeight()V
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$12900(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 6867
    :cond_3
    return v1
.end method
