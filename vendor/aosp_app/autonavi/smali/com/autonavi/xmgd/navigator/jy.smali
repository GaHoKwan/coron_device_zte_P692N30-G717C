.class Lcom/autonavi/xmgd/navigator/jy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/autonavi/xmgd/logic/g;


# instance fields
.field private synthetic a:Lcom/autonavi/xmgd/navigator/Start;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/navigator/Start;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/jy;->a:Lcom/autonavi/xmgd/navigator/Start;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v3, :cond_0

    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/jy;->a:Lcom/autonavi/xmgd/navigator/Start;

    const-class v2, Lcom/autonavi/xmgd/navigator/SelectPath_Available;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "paths"

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "is_available"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/jy;->a:Lcom/autonavi/xmgd/navigator/Start;

    const/16 v2, 0x2766

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xmgd/navigator/Start;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/jy;->a:Lcom/autonavi/xmgd/navigator/Start;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Start;->b(Lcom/autonavi/xmgd/navigator/Start;)Lcom/autonavi/xmgd/logic/l;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "autonavidata60tob/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/autonavi/xmgd/logic/l;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/jy;->a:Lcom/autonavi/xmgd/navigator/Start;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Start;->b(Lcom/autonavi/xmgd/navigator/Start;)Lcom/autonavi/xmgd/logic/l;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/xmgd/logic/l;->c()V

    goto :goto_0
.end method

.method public b(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    const-string v1, "\u6ca1\u6709\u6709\u6548\u7684\u5b58\u50a8\u8def\u5f84\uff0c\u65e0\u6cd5\u8fdb\u5165\u5bfc\u822a\u7a0b\u5e8f\uff01"

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->showToast(Ljava/lang/String;)V

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/n;->e()Z

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/jy;->a:Lcom/autonavi/xmgd/navigator/Start;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/navigator/Start;->finish()V

    :goto_0
    return-void

    :cond_1
    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/jy;->a:Lcom/autonavi/xmgd/navigator/Start;

    const-class v2, Lcom/autonavi/xmgd/navigator/SelectPath_Available;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "paths"

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "is_available"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/jy;->a:Lcom/autonavi/xmgd/navigator/Start;

    const/16 v2, 0x2766

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xmgd/navigator/Start;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
