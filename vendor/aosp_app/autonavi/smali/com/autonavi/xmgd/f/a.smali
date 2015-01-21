.class public Lcom/autonavi/xmgd/f/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/autonavi/xmgd/f/n;


# instance fields
.field private a:Lcom/autonavi/xmgd/f/o;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/autonavi/xmgd/e/k;)I
    .locals 1

    const v0, 0x7f020085

    return v0
.end method

.method public a()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/utility/Tool;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f07002d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/autonavi/xmgd/f/o;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/f/a;->a:Lcom/autonavi/xmgd/f/o;

    return-void
.end method

.method public a(Lcom/autonavi/xmgd/f/z;)V
    .locals 6

    const/16 v5, 0x11

    iget-object v0, p0, Lcom/autonavi/xmgd/f/a;->a:Lcom/autonavi/xmgd/f/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/f/a;->a:Lcom/autonavi/xmgd/f/o;

    invoke-interface {v0, v5}, Lcom/autonavi/xmgd/f/o;->a(I)V

    :cond_0
    if-nez p1, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/autonavi/xmgd/f/z;->c()Lcom/autonavi/xmgd/e/k;

    move-result-object v0

    iget-object v1, v0, Lcom/autonavi/xmgd/e/k;->szTel:Ljava/lang/String;

    if-eqz v1, :cond_4

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v0, Lcom/autonavi/xmgd/e/k;->szTel:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/f/a;->a:Lcom/autonavi/xmgd/f/o;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/autonavi/xmgd/f/a;->a:Lcom/autonavi/xmgd/f/o;

    invoke-interface {v0, v5, v1}, Lcom/autonavi/xmgd/f/o;->a(ILandroid/content/Intent;)V

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/autonavi/xmgd/f/a;->a:Lcom/autonavi/xmgd/f/o;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/f/a;->a:Lcom/autonavi/xmgd/f/o;

    const/4 v1, 0x0

    invoke-interface {v0, v5, v1}, Lcom/autonavi/xmgd/f/o;->a(II)V

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    const-string v1, "\u7535\u8bdd\u53f7\u7801\u4e3a\u7a7a!"

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->showToast(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
