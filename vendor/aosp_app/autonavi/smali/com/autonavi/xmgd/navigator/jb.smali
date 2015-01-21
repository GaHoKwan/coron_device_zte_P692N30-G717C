.class Lcom/autonavi/xmgd/navigator/jb;
.super Lcom/autonavi/xmgd/utility/ADialogListener;


# instance fields
.field private synthetic a:Lcom/autonavi/xmgd/navigator/SelectPath_Available;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/navigator/SelectPath_Available;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/jb;->a:Lcom/autonavi/xmgd/navigator/SelectPath_Available;

    invoke-direct {p0}, Lcom/autonavi/xmgd/utility/ADialogListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onMidBtnClicked()V
    .locals 2

    invoke-super {p0}, Lcom/autonavi/xmgd/utility/ADialogListener;->onMidBtnClicked()V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/jb;->a:Lcom/autonavi/xmgd/navigator/SelectPath_Available;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->e(Lcom/autonavi/xmgd/navigator/SelectPath_Available;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/jb;->a:Lcom/autonavi/xmgd/navigator/SelectPath_Available;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->a(Lcom/autonavi/xmgd/navigator/SelectPath_Available;Ljava/lang/String;)Ljava/lang/String;

    :goto_0
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/jb;->a:Lcom/autonavi/xmgd/navigator/SelectPath_Available;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->g(Lcom/autonavi/xmgd/navigator/SelectPath_Available;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/jb;->a:Lcom/autonavi/xmgd/navigator/SelectPath_Available;

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/jb;->a:Lcom/autonavi/xmgd/navigator/SelectPath_Available;

    invoke-static {v1}, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->f(Lcom/autonavi/xmgd/navigator/SelectPath_Available;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->a(Lcom/autonavi/xmgd/navigator/SelectPath_Available;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method
