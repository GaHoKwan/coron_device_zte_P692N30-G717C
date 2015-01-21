.class Lcom/autonavi/xmgd/navigator/k;
.super Lcom/autonavi/xmgd/view/GDMenuItem;


# instance fields
.field private synthetic a:Lcom/autonavi/xmgd/navigator/DataFeedbackList;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/navigator/DataFeedbackList;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/k;->a:Lcom/autonavi/xmgd/navigator/DataFeedbackList;

    invoke-direct {p0, p2}, Lcom/autonavi/xmgd/view/GDMenuItem;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onItemClick()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/k;->a:Lcom/autonavi/xmgd/navigator/DataFeedbackList;

    const-class v2, Lcom/autonavi/xmgd/navigator/DataFeedback;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "feedback_type"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {}, Lcom/autonavi/xmgd/controls/s;->a()Lcom/autonavi/xmgd/controls/s;

    move-result-object v1

    const-class v2, Lcom/autonavi/xmgd/navigator/DataFeedback;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/autonavi/xmgd/controls/s;->a(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/k;->a:Lcom/autonavi/xmgd/navigator/DataFeedbackList;

    invoke-virtual {v1, v0}, Lcom/autonavi/xmgd/navigator/DataFeedbackList;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/k;->a:Lcom/autonavi/xmgd/navigator/DataFeedbackList;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/navigator/DataFeedbackList;->finish()V

    return-void
.end method
