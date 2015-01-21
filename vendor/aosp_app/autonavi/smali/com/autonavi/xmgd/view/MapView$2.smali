.class Lcom/autonavi/xmgd/view/MapView$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/autonavi/xmgd/view/MapView;

.field final synthetic val$btnLeft:Landroid/widget/ImageButton;

.field final synthetic val$leftOperator:Lcom/autonavi/xmgd/f/n;

.field final synthetic val$poi:Lcom/autonavi/xmgd/e/k;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/view/MapView;Lcom/autonavi/xmgd/e/k;Lcom/autonavi/xmgd/f/n;Landroid/widget/ImageButton;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/view/MapView$2;->this$0:Lcom/autonavi/xmgd/view/MapView;

    iput-object p2, p0, Lcom/autonavi/xmgd/view/MapView$2;->val$poi:Lcom/autonavi/xmgd/e/k;

    iput-object p3, p0, Lcom/autonavi/xmgd/view/MapView$2;->val$leftOperator:Lcom/autonavi/xmgd/f/n;

    iput-object p4, p0, Lcom/autonavi/xmgd/view/MapView$2;->val$btnLeft:Landroid/widget/ImageButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/autonavi/xmgd/f/z;

    invoke-direct {v0}, Lcom/autonavi/xmgd/f/z;-><init>()V

    new-array v1, v4, [Lcom/autonavi/xmgd/e/k;

    iget-object v2, p0, Lcom/autonavi/xmgd/view/MapView$2;->val$poi:Lcom/autonavi/xmgd/e/k;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/f/z;->a([Lcom/autonavi/xmgd/e/k;)V

    invoke-virtual {v0, v3}, Lcom/autonavi/xmgd/f/z;->a(I)V

    iget-object v1, p0, Lcom/autonavi/xmgd/view/MapView$2;->val$leftOperator:Lcom/autonavi/xmgd/f/n;

    invoke-interface {v1, v0}, Lcom/autonavi/xmgd/f/n;->a(Lcom/autonavi/xmgd/f/z;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/view/MapView$2;->val$leftOperator:Lcom/autonavi/xmgd/f/n;

    invoke-interface {v0}, Lcom/autonavi/xmgd/f/n;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/view/MapView$2;->this$0:Lcom/autonavi/xmgd/view/MapView;

    invoke-virtual {v0, v4}, Lcom/autonavi/xmgd/view/MapView;->removeTipPoi(Z)V

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/view/MapView$2;->val$leftOperator:Lcom/autonavi/xmgd/f/n;

    invoke-interface {v0}, Lcom/autonavi/xmgd/f/n;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/view/MapView$2;->val$btnLeft:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/autonavi/xmgd/view/MapView$2;->val$leftOperator:Lcom/autonavi/xmgd/f/n;

    iget-object v2, p0, Lcom/autonavi/xmgd/view/MapView$2;->val$poi:Lcom/autonavi/xmgd/e/k;

    invoke-interface {v1, v2}, Lcom/autonavi/xmgd/f/n;->a(Lcom/autonavi/xmgd/e/k;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    :cond_1
    return-void
.end method
