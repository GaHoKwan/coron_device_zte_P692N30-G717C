.class Lcom/autonavi/xmgd/navigator/av;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/autonavi/xmgd/navigator/GeneralFeedback;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/navigator/GeneralFeedback;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/av;->a:Lcom/autonavi/xmgd/navigator/GeneralFeedback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/av;->a:Lcom/autonavi/xmgd/navigator/GeneralFeedback;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/GeneralFeedback;->a(Lcom/autonavi/xmgd/navigator/GeneralFeedback;)Lcom/autonavi/xmgd/utility/CustomDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/av;->a:Lcom/autonavi/xmgd/navigator/GeneralFeedback;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/GeneralFeedback;->a(Lcom/autonavi/xmgd/navigator/GeneralFeedback;)Lcom/autonavi/xmgd/utility/CustomDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/utility/CustomDialog;->isShowing()Z

    move-result v0

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/av;->a:Lcom/autonavi/xmgd/navigator/GeneralFeedback;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/GeneralFeedback;->b(Lcom/autonavi/xmgd/navigator/GeneralFeedback;)Z

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/av;->a:Lcom/autonavi/xmgd/navigator/GeneralFeedback;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/navigator/GeneralFeedback;->showDialog(I)V

    goto :goto_0
.end method
