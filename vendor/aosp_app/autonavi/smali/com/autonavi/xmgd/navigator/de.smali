.class Lcom/autonavi/xmgd/navigator/de;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/autonavi/xmgd/f/o;


# instance fields
.field private synthetic a:Lcom/autonavi/xmgd/navigator/MyNavigate;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/navigator/MyNavigate;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/de;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    const/16 v0, 0xc

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/de;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/navigator/MyNavigate;->removeDialog(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/de;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/navigator/MyNavigate;->showDialog(I)V

    :cond_0
    return-void
.end method

.method public a(II)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/de;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/navigator/MyNavigate;->removeDialog(I)V

    const/16 v0, 0xd

    if-ne p1, v0, :cond_1

    if-ne p2, v2, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/de;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->a(Lcom/autonavi/xmgd/navigator/MyNavigate;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x13

    if-ne p1, v0, :cond_2

    if-ne p2, v2, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/de;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->b(Lcom/autonavi/xmgd/navigator/MyNavigate;)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x14

    if-ne p1, v0, :cond_0

    if-ne p2, v2, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/de;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->c(Lcom/autonavi/xmgd/navigator/MyNavigate;)V

    goto :goto_0
.end method

.method public a(ILandroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/autonavi/xmgd/controls/s;->a()Lcom/autonavi/xmgd/controls/s;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/autonavi/xmgd/controls/s;->a(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/de;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    invoke-virtual {v0, p2}, Lcom/autonavi/xmgd/navigator/MyNavigate;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_1
    const/16 v0, 0x11

    if-eq p1, v0, :cond_0

    invoke-static {}, Lcom/autonavi/xmgd/controls/s;->a()Lcom/autonavi/xmgd/controls/s;

    move-result-object v0

    const-class v1, Lcom/autonavi/xmgd/navigator/Map;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/controls/s;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method
