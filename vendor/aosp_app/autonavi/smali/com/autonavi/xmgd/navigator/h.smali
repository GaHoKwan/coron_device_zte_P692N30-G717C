.class Lcom/autonavi/xmgd/navigator/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/autonavi/xmgd/navigator/DataFeedback;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/navigator/DataFeedback;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/h;->a:Lcom/autonavi/xmgd/navigator/DataFeedback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/h;->a:Lcom/autonavi/xmgd/navigator/DataFeedback;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/DataFeedback;->a(Lcom/autonavi/xmgd/navigator/DataFeedback;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/h;->a:Lcom/autonavi/xmgd/navigator/DataFeedback;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/DataFeedback;->a(Lcom/autonavi/xmgd/navigator/DataFeedback;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/h;->a:Lcom/autonavi/xmgd/navigator/DataFeedback;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/DataFeedback;->b(Lcom/autonavi/xmgd/navigator/DataFeedback;)Z

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/h;->a:Lcom/autonavi/xmgd/navigator/DataFeedback;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/navigator/DataFeedback;->showDialog(I)V

    goto :goto_0
.end method
