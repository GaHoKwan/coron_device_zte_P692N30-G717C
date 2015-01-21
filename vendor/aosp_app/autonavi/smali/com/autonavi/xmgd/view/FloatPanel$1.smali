.class Lcom/autonavi/xmgd/view/FloatPanel$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic this$0:Lcom/autonavi/xmgd/view/FloatPanel;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/view/FloatPanel;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/view/FloatPanel$1;->this$0:Lcom/autonavi/xmgd/view/FloatPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/autonavi/xmgd/view/FloatPanel$1;->this$0:Lcom/autonavi/xmgd/view/FloatPanel;

    #getter for: Lcom/autonavi/xmgd/view/FloatPanel;->status:I
    invoke-static {v0}, Lcom/autonavi/xmgd/view/FloatPanel;->access$000(Lcom/autonavi/xmgd/view/FloatPanel;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/view/FloatPanel$1;->this$0:Lcom/autonavi/xmgd/view/FloatPanel;

    const/4 v1, 0x2

    #setter for: Lcom/autonavi/xmgd/view/FloatPanel;->status:I
    invoke-static {v0, v1}, Lcom/autonavi/xmgd/view/FloatPanel;->access$002(Lcom/autonavi/xmgd/view/FloatPanel;I)I

    iget-object v0, p0, Lcom/autonavi/xmgd/view/FloatPanel$1;->this$0:Lcom/autonavi/xmgd/view/FloatPanel;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/view/FloatPanel;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xmgd/view/FloatPanel$1;->this$0:Lcom/autonavi/xmgd/view/FloatPanel;

    #getter for: Lcom/autonavi/xmgd/view/FloatPanel;->status:I
    invoke-static {v0}, Lcom/autonavi/xmgd/view/FloatPanel;->access$000(Lcom/autonavi/xmgd/view/FloatPanel;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/view/FloatPanel$1;->this$0:Lcom/autonavi/xmgd/view/FloatPanel;

    #setter for: Lcom/autonavi/xmgd/view/FloatPanel;->status:I
    invoke-static {v0, v2}, Lcom/autonavi/xmgd/view/FloatPanel;->access$002(Lcom/autonavi/xmgd/view/FloatPanel;I)I

    iget-object v0, p0, Lcom/autonavi/xmgd/view/FloatPanel$1;->this$0:Lcom/autonavi/xmgd/view/FloatPanel;

    invoke-virtual {v0, v2}, Lcom/autonavi/xmgd/view/FloatPanel;->setVisibility(I)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/view/FloatPanel$1;->this$0:Lcom/autonavi/xmgd/view/FloatPanel;

    #getter for: Lcom/autonavi/xmgd/view/FloatPanel;->status:I
    invoke-static {v0}, Lcom/autonavi/xmgd/view/FloatPanel;->access$000(Lcom/autonavi/xmgd/view/FloatPanel;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/view/FloatPanel$1;->this$0:Lcom/autonavi/xmgd/view/FloatPanel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/view/FloatPanel;->setVisibility(I)V

    :cond_0
    return-void
.end method
