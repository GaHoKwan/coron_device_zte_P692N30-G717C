.class Lcom/autonavi/xmgd/navigator/cs;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/autonavi/xmgd/f/o;


# instance fields
.field private synthetic a:Lcom/autonavi/xmgd/navigator/Map;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/navigator/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/cs;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    return-void
.end method

.method public a(II)V
    .locals 0

    return-void
.end method

.method public a(ILandroid/content/Intent;)V
    .locals 3

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
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cs;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-virtual {v0, p2}, Lcom/autonavi/xmgd/navigator/Map;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_1
    const/16 v0, 0x11

    if-eq p1, v0, :cond_0

    const/16 v0, 0xe

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cs;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->n(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/logic/j;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/xmgd/logic/j;->e()Lcom/autonavi/xmgd/f/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/f/z;->c()Lcom/autonavi/xmgd/e/k;

    move-result-object v1

    invoke-static {}, Lcom/autonavi/xmgd/controls/ab;->a()Lcom/autonavi/xmgd/controls/ab;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/autonavi/xmgd/controls/ab;->a(Lcom/autonavi/xmgd/e/k;)V

    invoke-static {}, Lcom/autonavi/xmgd/controls/ab;->a()Lcom/autonavi/xmgd/controls/ab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/xmgd/controls/ab;->k()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, "poi"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    :cond_2
    invoke-static {}, Lcom/autonavi/xmgd/controls/ab;->a()Lcom/autonavi/xmgd/controls/ab;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/controls/ab;->c(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/autonavi/xmgd/controls/s;->a()Lcom/autonavi/xmgd/controls/s;

    move-result-object v0

    const-class v1, Lcom/autonavi/xmgd/navigator/Map;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/controls/s;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method
