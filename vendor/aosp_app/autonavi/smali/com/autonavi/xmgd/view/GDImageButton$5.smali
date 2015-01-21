.class Lcom/autonavi/xmgd/view/GDImageButton$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic this$0:Lcom/autonavi/xmgd/view/GDImageButton;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/view/GDImageButton;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/view/GDImageButton$5;->this$0:Lcom/autonavi/xmgd/view/GDImageButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/autonavi/xmgd/view/GDImageButton$5;->this$0:Lcom/autonavi/xmgd/view/GDImageButton;

    #getter for: Lcom/autonavi/xmgd/view/GDImageButton;->status:I
    invoke-static {v0}, Lcom/autonavi/xmgd/view/GDImageButton;->access$600(Lcom/autonavi/xmgd/view/GDImageButton;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/view/GDImageButton$5;->this$0:Lcom/autonavi/xmgd/view/GDImageButton;

    const/4 v1, 0x2

    #setter for: Lcom/autonavi/xmgd/view/GDImageButton;->status:I
    invoke-static {v0, v1}, Lcom/autonavi/xmgd/view/GDImageButton;->access$602(Lcom/autonavi/xmgd/view/GDImageButton;I)I

    iget-object v0, p0, Lcom/autonavi/xmgd/view/GDImageButton$5;->this$0:Lcom/autonavi/xmgd/view/GDImageButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/view/GDImageButton;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xmgd/view/GDImageButton$5;->this$0:Lcom/autonavi/xmgd/view/GDImageButton;

    #getter for: Lcom/autonavi/xmgd/view/GDImageButton;->status:I
    invoke-static {v0}, Lcom/autonavi/xmgd/view/GDImageButton;->access$600(Lcom/autonavi/xmgd/view/GDImageButton;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/view/GDImageButton$5;->this$0:Lcom/autonavi/xmgd/view/GDImageButton;

    #setter for: Lcom/autonavi/xmgd/view/GDImageButton;->status:I
    invoke-static {v0, v2}, Lcom/autonavi/xmgd/view/GDImageButton;->access$602(Lcom/autonavi/xmgd/view/GDImageButton;I)I

    iget-object v0, p0, Lcom/autonavi/xmgd/view/GDImageButton$5;->this$0:Lcom/autonavi/xmgd/view/GDImageButton;

    invoke-virtual {v0, v2}, Lcom/autonavi/xmgd/view/GDImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/view/GDImageButton$5;->this$0:Lcom/autonavi/xmgd/view/GDImageButton;

    #getter for: Lcom/autonavi/xmgd/view/GDImageButton;->status:I
    invoke-static {v0}, Lcom/autonavi/xmgd/view/GDImageButton;->access$600(Lcom/autonavi/xmgd/view/GDImageButton;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/view/GDImageButton$5;->this$0:Lcom/autonavi/xmgd/view/GDImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/view/GDImageButton;->setVisibility(I)V

    :cond_0
    return-void
.end method
