.class Lcom/autonavi/xmgd/navigator/bj;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private synthetic a:Lcom/autonavi/xmgd/navigator/MainMenu;


# direct methods
.method private constructor <init>(Lcom/autonavi/xmgd/navigator/MainMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/bj;->a:Lcom/autonavi/xmgd/navigator/MainMenu;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/autonavi/xmgd/navigator/MainMenu;Lcom/autonavi/xmgd/navigator/ax;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/autonavi/xmgd/navigator/bj;-><init>(Lcom/autonavi/xmgd/navigator/MainMenu;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "com.autonavi.xmgd.plugin.action.callcenter.finish_setting"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/bj;->a:Lcom/autonavi/xmgd/navigator/MainMenu;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/navigator/MainMenu;->finish()V

    :cond_0
    return-void
.end method
