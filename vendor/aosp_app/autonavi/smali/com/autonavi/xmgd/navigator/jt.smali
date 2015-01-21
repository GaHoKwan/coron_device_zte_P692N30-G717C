.class Lcom/autonavi/xmgd/navigator/jt;
.super Lcom/autonavi/xmgd/utility/ADialogListener;


# instance fields
.field private synthetic a:Lcom/autonavi/xmgd/navigator/Start;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/navigator/Start;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/jt;->a:Lcom/autonavi/xmgd/navigator/Start;

    invoke-direct {p0}, Lcom/autonavi/xmgd/utility/ADialogListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onMidBtnClicked()V
    .locals 1

    invoke-super {p0}, Lcom/autonavi/xmgd/utility/ADialogListener;->onMidBtnClicked()V

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/n;->e()Z

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/jt;->a:Lcom/autonavi/xmgd/navigator/Start;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/navigator/Start;->finish()V

    return-void
.end method
