.class Lcom/mediatek/contacts/widget/WaitCursorView$1;
.super Landroid/os/Handler;
.source "WaitCursorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/contacts/widget/WaitCursorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/contacts/widget/WaitCursorView;


# direct methods
.method constructor <init>(Lcom/mediatek/contacts/widget/WaitCursorView;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/mediatek/contacts/widget/WaitCursorView$1;->this$0:Lcom/mediatek/contacts/widget/WaitCursorView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v1, 0x0

    .line 51
    const-string v0, "WaitCursorView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage msg==== "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 56
    :pswitch_0
    const-string v2, "WaitCursorView"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start WAIT_CURSOR_START !isFinished : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/mediatek/contacts/widget/WaitCursorView$1;->this$0:Lcom/mediatek/contacts/widget/WaitCursorView;

    #getter for: Lcom/mediatek/contacts/widget/WaitCursorView;->mFinished:Z
    invoke-static {v0}, Lcom/mediatek/contacts/widget/WaitCursorView;->access$000(Lcom/mediatek/contacts/widget/WaitCursorView;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget-object v0, p0, Lcom/mediatek/contacts/widget/WaitCursorView$1;->this$0:Lcom/mediatek/contacts/widget/WaitCursorView;

    #getter for: Lcom/mediatek/contacts/widget/WaitCursorView;->mFinished:Z
    invoke-static {v0}, Lcom/mediatek/contacts/widget/WaitCursorView;->access$000(Lcom/mediatek/contacts/widget/WaitCursorView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/mediatek/contacts/widget/WaitCursorView$1;->this$0:Lcom/mediatek/contacts/widget/WaitCursorView;

    #getter for: Lcom/mediatek/contacts/widget/WaitCursorView;->mLoadingContainer:Landroid/view/View;
    invoke-static {v0}, Lcom/mediatek/contacts/widget/WaitCursorView;->access$100(Lcom/mediatek/contacts/widget/WaitCursorView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 59
    iget-object v0, p0, Lcom/mediatek/contacts/widget/WaitCursorView$1;->this$0:Lcom/mediatek/contacts/widget/WaitCursorView;

    #getter for: Lcom/mediatek/contacts/widget/WaitCursorView;->mLoadingText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/mediatek/contacts/widget/WaitCursorView;->access$200(Lcom/mediatek/contacts/widget/WaitCursorView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 60
    iget-object v0, p0, Lcom/mediatek/contacts/widget/WaitCursorView$1;->this$0:Lcom/mediatek/contacts/widget/WaitCursorView;

    #getter for: Lcom/mediatek/contacts/widget/WaitCursorView;->mProgress:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/mediatek/contacts/widget/WaitCursorView;->access$300(Lcom/mediatek/contacts/widget/WaitCursorView;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 56
    goto :goto_1

    .line 53
    :pswitch_data_0
    .packed-switch 0x4ce
        :pswitch_0
    .end packed-switch
.end method
