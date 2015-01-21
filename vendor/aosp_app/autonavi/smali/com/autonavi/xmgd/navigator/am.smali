.class Lcom/autonavi/xmgd/navigator/am;
.super Lcom/autonavi/xmgd/utility/ADialogListener;


# instance fields
.field private synthetic a:Lcom/autonavi/xmgd/navigator/FeedbackHistory;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/navigator/FeedbackHistory;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/am;->a:Lcom/autonavi/xmgd/navigator/FeedbackHistory;

    invoke-direct {p0}, Lcom/autonavi/xmgd/utility/ADialogListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onMidBtnClicked()V
    .locals 4

    const/4 v3, 0x4

    const/4 v2, 0x1

    invoke-super {p0}, Lcom/autonavi/xmgd/utility/ADialogListener;->onMidBtnClicked()V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/am;->a:Lcom/autonavi/xmgd/navigator/FeedbackHistory;

    invoke-virtual {v0, v2}, Lcom/autonavi/xmgd/navigator/FeedbackHistory;->dismissDialog(I)V

    invoke-static {}, Lcom/autonavi/xmgd/c/a;->a()Lcom/autonavi/xmgd/c/a;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/am;->a:Lcom/autonavi/xmgd/navigator/FeedbackHistory;

    invoke-static {v1}, Lcom/autonavi/xmgd/navigator/FeedbackHistory;->c(Lcom/autonavi/xmgd/navigator/FeedbackHistory;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/c/a;->a(I)V

    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v3}, Landroid/view/KeyEvent;-><init>(II)V

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/am;->a:Lcom/autonavi/xmgd/navigator/FeedbackHistory;

    invoke-virtual {v1, v0}, Lcom/autonavi/xmgd/navigator/FeedbackHistory;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, v2, v3}, Landroid/view/KeyEvent;-><init>(II)V

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/am;->a:Lcom/autonavi/xmgd/navigator/FeedbackHistory;

    invoke-virtual {v1, v0}, Lcom/autonavi/xmgd/navigator/FeedbackHistory;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    return-void
.end method
