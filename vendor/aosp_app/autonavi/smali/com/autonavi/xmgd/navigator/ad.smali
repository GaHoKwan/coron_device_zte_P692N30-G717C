.class Lcom/autonavi/xmgd/navigator/ad;
.super Lcom/autonavi/xmgd/view/GDMenuItem;


# instance fields
.field private synthetic a:Lcom/autonavi/xmgd/navigator/Feedback;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/navigator/Feedback;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/ad;->a:Lcom/autonavi/xmgd/navigator/Feedback;

    invoke-direct {p0, p2}, Lcom/autonavi/xmgd/view/GDMenuItem;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onItemClick()V
    .locals 4

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ad;->a:Lcom/autonavi/xmgd/navigator/Feedback;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/ad;->a:Lcom/autonavi/xmgd/navigator/Feedback;

    const-class v3, Lcom/autonavi/xmgd/navigator/FeedbackHistory;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/navigator/Feedback;->startActivity(Landroid/content/Intent;)V

    invoke-static {}, Lcom/autonavi/xmgd/controls/s;->a()Lcom/autonavi/xmgd/controls/s;

    move-result-object v0

    const-class v1, Lcom/autonavi/xmgd/navigator/FeedbackHistory;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/controls/s;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ad;->a:Lcom/autonavi/xmgd/navigator/Feedback;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/navigator/Feedback;->finish()V

    return-void
.end method
