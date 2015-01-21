.class Lcom/autonavi/xmgd/navigator/dy;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/autonavi/xmgd/navigator/MyNavigate;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/navigator/MyNavigate;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/dy;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    sget-boolean v0, Lcom/autonavi/xmgd/user/GDAccount_Global;->isLogin:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/dy;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/navigator/MyNavigate;->showDialog(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/dy;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->x(Lcom/autonavi/xmgd/navigator/MyNavigate;)Lcom/autonavi/xmgd/user/GDAccountLogic;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/user/GDAccountLogic;->getUserid()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/dy;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    invoke-static {v1}, Lcom/autonavi/xmgd/navigator/MyNavigate;->x(Lcom/autonavi/xmgd/navigator/MyNavigate;)Lcom/autonavi/xmgd/user/GDAccountLogic;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/autonavi/xmgd/user/GDAccountLogic;->loginOut(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/dy;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->t(Lcom/autonavi/xmgd/navigator/MyNavigate;)V

    goto :goto_0
.end method
