.class Lcom/autonavi/xmgd/navigator/hu;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private synthetic a:Lcom/autonavi/xmgd/navigator/SearchForRoute;


# direct methods
.method private constructor <init>(Lcom/autonavi/xmgd/navigator/SearchForRoute;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/hu;->a:Lcom/autonavi/xmgd/navigator/SearchForRoute;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/autonavi/xmgd/navigator/SearchForRoute;Lcom/autonavi/xmgd/navigator/he;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/autonavi/xmgd/navigator/hu;-><init>(Lcom/autonavi/xmgd/navigator/SearchForRoute;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "com.plugin.installapk.speechcommand.sendaction"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "id"

    const/16 v1, 0x64

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0x1f

    if-ne v0, v1, :cond_1

    const-string v0, "bundle"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "text"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/hu;->a:Lcom/autonavi/xmgd/navigator/SearchForRoute;

    invoke-static {v1}, Lcom/autonavi/xmgd/navigator/SearchForRoute;->a(Lcom/autonavi/xmgd/navigator/SearchForRoute;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/hu;->a:Lcom/autonavi/xmgd/navigator/SearchForRoute;

    invoke-static {v0, v2}, Lcom/autonavi/xmgd/navigator/SearchForRoute;->a(Lcom/autonavi/xmgd/navigator/SearchForRoute;Z)Z

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/hu;->a:Lcom/autonavi/xmgd/navigator/SearchForRoute;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/SearchForRoute;->b(Lcom/autonavi/xmgd/navigator/SearchForRoute;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/hu;->a:Lcom/autonavi/xmgd/navigator/SearchForRoute;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/SearchForRoute;->a(Lcom/autonavi/xmgd/navigator/SearchForRoute;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/hu;->a:Lcom/autonavi/xmgd/navigator/SearchForRoute;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/SearchForRoute;->g(Lcom/autonavi/xmgd/navigator/SearchForRoute;)Lcom/autonavi/xmgd/view/GDImageButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/view/GDImageButton;->performClick()Z

    goto :goto_0
.end method
