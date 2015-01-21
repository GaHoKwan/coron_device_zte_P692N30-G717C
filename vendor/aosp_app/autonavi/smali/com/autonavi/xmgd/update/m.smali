.class Lcom/autonavi/xmgd/update/m;
.super Lcom/autonavi/xmgd/utility/ADialogListener;


# instance fields
.field private synthetic a:Lcom/autonavi/xmgd/update/SoftUpdate;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/update/SoftUpdate;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/update/m;->a:Lcom/autonavi/xmgd/update/SoftUpdate;

    invoke-direct {p0}, Lcom/autonavi/xmgd/utility/ADialogListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onMidBtnClicked()V
    .locals 1

    invoke-super {p0}, Lcom/autonavi/xmgd/utility/ADialogListener;->onMidBtnClicked()V

    iget-object v0, p0, Lcom/autonavi/xmgd/update/m;->a:Lcom/autonavi/xmgd/update/SoftUpdate;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/update/SoftUpdate;->finish()V

    return-void
.end method
