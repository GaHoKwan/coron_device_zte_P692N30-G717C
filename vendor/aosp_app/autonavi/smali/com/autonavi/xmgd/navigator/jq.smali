.class Lcom/autonavi/xmgd/navigator/jq;
.super Lcom/autonavi/xmgd/utility/ADialogListener;


# instance fields
.field private synthetic a:Lcom/autonavi/xmgd/navigator/Start;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/navigator/Start;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/jq;->a:Lcom/autonavi/xmgd/navigator/Start;

    invoke-direct {p0}, Lcom/autonavi/xmgd/utility/ADialogListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onMidBtnClicked()V
    .locals 2

    invoke-super {p0}, Lcom/autonavi/xmgd/utility/ADialogListener;->onMidBtnClicked()V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/jq;->a:Lcom/autonavi/xmgd/navigator/Start;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/navigator/Start;->dismissDialog(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/jq;->a:Lcom/autonavi/xmgd/navigator/Start;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/navigator/Start;->finish()V

    return-void
.end method
