.class Lcom/autonavi/xmgd/view/GDZoomButton$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic this$0:Lcom/autonavi/xmgd/view/GDZoomButton;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/view/GDZoomButton;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/view/GDZoomButton$3;->this$0:Lcom/autonavi/xmgd/view/GDZoomButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/autonavi/xmgd/view/GDZoomButton$3;->this$0:Lcom/autonavi/xmgd/view/GDZoomButton;

    #getter for: Lcom/autonavi/xmgd/view/GDZoomButton;->status:I
    invoke-static {v0}, Lcom/autonavi/xmgd/view/GDZoomButton;->access$000(Lcom/autonavi/xmgd/view/GDZoomButton;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/view/GDZoomButton$3;->this$0:Lcom/autonavi/xmgd/view/GDZoomButton;

    const/4 v1, 0x2

    #setter for: Lcom/autonavi/xmgd/view/GDZoomButton;->status:I
    invoke-static {v0, v1}, Lcom/autonavi/xmgd/view/GDZoomButton;->access$002(Lcom/autonavi/xmgd/view/GDZoomButton;I)I

    iget-object v0, p0, Lcom/autonavi/xmgd/view/GDZoomButton$3;->this$0:Lcom/autonavi/xmgd/view/GDZoomButton;

    #getter for: Lcom/autonavi/xmgd/view/GDZoomButton;->plus:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/autonavi/xmgd/view/GDZoomButton;->access$300(Lcom/autonavi/xmgd/view/GDZoomButton;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    iget-object v0, p0, Lcom/autonavi/xmgd/view/GDZoomButton$3;->this$0:Lcom/autonavi/xmgd/view/GDZoomButton;

    #getter for: Lcom/autonavi/xmgd/view/GDZoomButton;->sub:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/autonavi/xmgd/view/GDZoomButton;->access$400(Lcom/autonavi/xmgd/view/GDZoomButton;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    iget-object v0, p0, Lcom/autonavi/xmgd/view/GDZoomButton$3;->this$0:Lcom/autonavi/xmgd/view/GDZoomButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/view/GDZoomButton;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xmgd/view/GDZoomButton$3;->this$0:Lcom/autonavi/xmgd/view/GDZoomButton;

    #getter for: Lcom/autonavi/xmgd/view/GDZoomButton;->status:I
    invoke-static {v0}, Lcom/autonavi/xmgd/view/GDZoomButton;->access$000(Lcom/autonavi/xmgd/view/GDZoomButton;)I

    move-result v0

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/view/GDZoomButton$3;->this$0:Lcom/autonavi/xmgd/view/GDZoomButton;

    #setter for: Lcom/autonavi/xmgd/view/GDZoomButton;->status:I
    invoke-static {v0, v2}, Lcom/autonavi/xmgd/view/GDZoomButton;->access$002(Lcom/autonavi/xmgd/view/GDZoomButton;I)I

    iget-object v0, p0, Lcom/autonavi/xmgd/view/GDZoomButton$3;->this$0:Lcom/autonavi/xmgd/view/GDZoomButton;

    #getter for: Lcom/autonavi/xmgd/view/GDZoomButton;->plus:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/autonavi/xmgd/view/GDZoomButton;->access$300(Lcom/autonavi/xmgd/view/GDZoomButton;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    iget-object v0, p0, Lcom/autonavi/xmgd/view/GDZoomButton$3;->this$0:Lcom/autonavi/xmgd/view/GDZoomButton;

    #getter for: Lcom/autonavi/xmgd/view/GDZoomButton;->sub:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/autonavi/xmgd/view/GDZoomButton;->access$400(Lcom/autonavi/xmgd/view/GDZoomButton;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    iget-object v0, p0, Lcom/autonavi/xmgd/view/GDZoomButton$3;->this$0:Lcom/autonavi/xmgd/view/GDZoomButton;

    invoke-virtual {v0, v2}, Lcom/autonavi/xmgd/view/GDZoomButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/view/GDZoomButton$3;->this$0:Lcom/autonavi/xmgd/view/GDZoomButton;

    #getter for: Lcom/autonavi/xmgd/view/GDZoomButton;->status:I
    invoke-static {v0}, Lcom/autonavi/xmgd/view/GDZoomButton;->access$000(Lcom/autonavi/xmgd/view/GDZoomButton;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/view/GDZoomButton$3;->this$0:Lcom/autonavi/xmgd/view/GDZoomButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/view/GDZoomButton;->setVisibility(I)V

    :cond_0
    return-void
.end method
