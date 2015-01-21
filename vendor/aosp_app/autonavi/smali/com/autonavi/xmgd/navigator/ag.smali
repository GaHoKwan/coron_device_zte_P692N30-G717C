.class Lcom/autonavi/xmgd/navigator/ag;
.super Lcom/autonavi/xmgd/utility/ADialogListener;


# instance fields
.field private synthetic a:Lcom/autonavi/xmgd/navigator/Feedback;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/navigator/Feedback;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/ag;->a:Lcom/autonavi/xmgd/navigator/Feedback;

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

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL"

    const-string v2, "tel:4008100080"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/ag;->a:Lcom/autonavi/xmgd/navigator/Feedback;

    invoke-virtual {v1, v0}, Lcom/autonavi/xmgd/navigator/Feedback;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
