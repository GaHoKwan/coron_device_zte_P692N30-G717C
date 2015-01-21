.class Lcom/autonavi/xmgd/naviservice/b;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private synthetic a:Lcom/autonavi/xmgd/naviservice/a;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/naviservice/a;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/naviservice/b;->a:Lcom/autonavi/xmgd/naviservice/a;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/b;->a:Lcom/autonavi/xmgd/naviservice/a;

    invoke-static {v0}, Lcom/autonavi/xmgd/naviservice/a;->a(Lcom/autonavi/xmgd/naviservice/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
