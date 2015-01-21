.class Lcom/autonavi/xmgd/navigator/dv;
.super Lcom/autonavi/xmgd/utility/ADialogListener;


# instance fields
.field private synthetic a:Lcom/autonavi/xmgd/navigator/MyNavigate;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/navigator/MyNavigate;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/dv;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    invoke-direct {p0}, Lcom/autonavi/xmgd/utility/ADialogListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelClicked()V
    .locals 0

    return-void
.end method

.method public onSureClicked(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/dv;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/navigator/MyNavigate;->dismissDialog(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/dv;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->t(Lcom/autonavi/xmgd/navigator/MyNavigate;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
