.class Lcom/autonavi/xmgd/navigator/ap;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/autonavi/xmgd/navigator/ao;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/navigator/ao;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/ap;->a:Lcom/autonavi/xmgd/navigator/ao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ap;->a:Lcom/autonavi/xmgd/navigator/ao;

    iget-object v1, v0, Lcom/autonavi/xmgd/navigator/ao;->a:Lcom/autonavi/xmgd/navigator/FeedbackHistory;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/autonavi/xmgd/navigator/FeedbackHistory;->b(Lcom/autonavi/xmgd/navigator/FeedbackHistory;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ap;->a:Lcom/autonavi/xmgd/navigator/ao;

    iget-object v0, v0, Lcom/autonavi/xmgd/navigator/ao;->a:Lcom/autonavi/xmgd/navigator/FeedbackHistory;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/navigator/FeedbackHistory;->showDialog(I)V

    return-void
.end method
