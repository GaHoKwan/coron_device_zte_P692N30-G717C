.class Lcom/autonavi/xmgd/view/GDZoomButton$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/autonavi/xmgd/view/GDZoomButton;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/view/GDZoomButton;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/view/GDZoomButton$1;->this$0:Lcom/autonavi/xmgd/view/GDZoomButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/view/GDZoomButton$1;->this$0:Lcom/autonavi/xmgd/view/GDZoomButton;

    #getter for: Lcom/autonavi/xmgd/view/GDZoomButton;->status:I
    invoke-static {v0}, Lcom/autonavi/xmgd/view/GDZoomButton;->access$000(Lcom/autonavi/xmgd/view/GDZoomButton;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/view/GDZoomButton$1;->this$0:Lcom/autonavi/xmgd/view/GDZoomButton;

    #getter for: Lcom/autonavi/xmgd/view/GDZoomButton;->status:I
    invoke-static {v0}, Lcom/autonavi/xmgd/view/GDZoomButton;->access$000(Lcom/autonavi/xmgd/view/GDZoomButton;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xmgd/view/GDZoomButton$1;->this$0:Lcom/autonavi/xmgd/view/GDZoomButton;

    #calls: Lcom/autonavi/xmgd/view/GDZoomButton;->doPlus()V
    invoke-static {v0}, Lcom/autonavi/xmgd/view/GDZoomButton;->access$100(Lcom/autonavi/xmgd/view/GDZoomButton;)V

    goto :goto_0
.end method
