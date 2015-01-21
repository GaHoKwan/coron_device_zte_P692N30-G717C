.class Lcom/autonavi/xmgd/navigator/gl;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/autonavi/xmgd/navigator/SearchActivity;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/navigator/SearchActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/gl;->a:Lcom/autonavi/xmgd/navigator/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v2, 0x0

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/utility/Tool;->getSystemLanguage()Lcom/autonavi/xm/navigation/server/map/GLanguage;

    move-result-object v0

    sget-object v1, Lcom/autonavi/xm/navigation/server/map/GLanguage;->GLANGUAGE_SIMPLE_CHINESE:Lcom/autonavi/xm/navigation/server/map/GLanguage;

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/utility/Tool;->getSystemLanguage()Lcom/autonavi/xm/navigation/server/map/GLanguage;

    move-result-object v0

    sget-object v1, Lcom/autonavi/xm/navigation/server/map/GLanguage;->GLANGUAGE_TRADITIONAL_CHINESE:Lcom/autonavi/xm/navigation/server/map/GLanguage;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/gl;->a:Lcom/autonavi/xmgd/navigator/SearchActivity;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/SearchActivity;->a(Lcom/autonavi/xmgd/navigator/SearchActivity;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/gl;->a:Lcom/autonavi/xmgd/navigator/SearchActivity;

    invoke-static {v0, v2}, Lcom/autonavi/xmgd/navigator/SearchActivity;->a(Lcom/autonavi/xmgd/navigator/SearchActivity;Z)Z

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/gl;->a:Lcom/autonavi/xmgd/navigator/SearchActivity;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/SearchActivity;->b(Lcom/autonavi/xmgd/navigator/SearchActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.plugin.installapk.speechcommand.speechreceiver"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "id"

    const/16 v2, 0x1e

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "type"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "bundle"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/gl;->a:Lcom/autonavi/xmgd/navigator/SearchActivity;

    invoke-virtual {v1, v0}, Lcom/autonavi/xmgd/navigator/SearchActivity;->sendBroadcast(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    const v1, 0x7f070051

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->showToast(I)V

    goto :goto_0
.end method
