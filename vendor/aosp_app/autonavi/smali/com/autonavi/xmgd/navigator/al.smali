.class Lcom/autonavi/xmgd/navigator/al;
.super Lcom/autonavi/xmgd/utility/ADialogListener;


# instance fields
.field private synthetic a:Lcom/autonavi/xmgd/navigator/FeedbackHistory;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/navigator/FeedbackHistory;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/al;->a:Lcom/autonavi/xmgd/navigator/FeedbackHistory;

    invoke-direct {p0}, Lcom/autonavi/xmgd/utility/ADialogListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelClicked()V
    .locals 0

    return-void
.end method

.method public onSureClicked(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/al;->a:Lcom/autonavi/xmgd/navigator/FeedbackHistory;

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/al;->a:Lcom/autonavi/xmgd/navigator/FeedbackHistory;

    invoke-static {v1}, Lcom/autonavi/xmgd/navigator/FeedbackHistory;->b(Lcom/autonavi/xmgd/navigator/FeedbackHistory;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/navigator/FeedbackHistory;->a(Lcom/autonavi/xmgd/navigator/FeedbackHistory;Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/al;->a:Lcom/autonavi/xmgd/navigator/FeedbackHistory;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/navigator/FeedbackHistory;->dismissDialog(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/al;->a:Lcom/autonavi/xmgd/navigator/FeedbackHistory;

    invoke-virtual {v0, v2}, Lcom/autonavi/xmgd/navigator/FeedbackHistory;->showDialog(I)V

    :cond_0
    return-void
.end method
