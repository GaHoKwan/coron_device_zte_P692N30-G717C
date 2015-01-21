.class Lcom/autonavi/xmgd/view/ClickRepeater$1;
.super Landroid/os/Handler;


# instance fields
.field final synthetic this$0:Lcom/autonavi/xmgd/view/ClickRepeater;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/view/ClickRepeater;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/view/ClickRepeater$1;->this$0:Lcom/autonavi/xmgd/view/ClickRepeater;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    const/4 v2, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/view/ClickRepeater$1;->this$0:Lcom/autonavi/xmgd/view/ClickRepeater;

    #getter for: Lcom/autonavi/xmgd/view/ClickRepeater;->mHostView:Landroid/view/View;
    invoke-static {v0}, Lcom/autonavi/xmgd/view/ClickRepeater;->access$000(Lcom/autonavi/xmgd/view/ClickRepeater;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/view/ClickRepeater$1;->this$0:Lcom/autonavi/xmgd/view/ClickRepeater;

    #getter for: Lcom/autonavi/xmgd/view/ClickRepeater;->mHostView:Landroid/view/View;
    invoke-static {v0}, Lcom/autonavi/xmgd/view/ClickRepeater;->access$000(Lcom/autonavi/xmgd/view/ClickRepeater;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    iget-object v0, p0, Lcom/autonavi/xmgd/view/ClickRepeater$1;->this$0:Lcom/autonavi/xmgd/view/ClickRepeater;

    #getter for: Lcom/autonavi/xmgd/view/ClickRepeater;->mRepeatDelay:I
    invoke-static {v0}, Lcom/autonavi/xmgd/view/ClickRepeater;->access$100(Lcom/autonavi/xmgd/view/ClickRepeater;)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, v2, v0, v1}, Lcom/autonavi/xmgd/view/ClickRepeater$1;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method
