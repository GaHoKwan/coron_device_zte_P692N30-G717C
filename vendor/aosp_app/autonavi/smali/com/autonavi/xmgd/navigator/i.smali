.class Lcom/autonavi/xmgd/navigator/i;
.super Lcom/autonavi/xmgd/utility/ADialogListener;


# instance fields
.field private synthetic a:Lcom/autonavi/xmgd/navigator/DataFeedback;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/navigator/DataFeedback;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/i;->a:Lcom/autonavi/xmgd/navigator/DataFeedback;

    invoke-direct {p0}, Lcom/autonavi/xmgd/utility/ADialogListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onMidBtnClicked()V
    .locals 2

    invoke-super {p0}, Lcom/autonavi/xmgd/utility/ADialogListener;->onMidBtnClicked()V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/i;->a:Lcom/autonavi/xmgd/navigator/DataFeedback;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/navigator/DataFeedback;->dismissDialog(I)V

    invoke-static {}, Lcom/autonavi/xmgd/c/a;->a()Lcom/autonavi/xmgd/c/a;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/i;->a:Lcom/autonavi/xmgd/navigator/DataFeedback;

    invoke-static {v1}, Lcom/autonavi/xmgd/navigator/DataFeedback;->c(Lcom/autonavi/xmgd/navigator/DataFeedback;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/c/a;->a(I)V

    return-void
.end method
