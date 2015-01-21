.class Lcom/powermo/smartshow/frameworks/u;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;


# direct methods
.method constructor <init>(Lcom/powermo/smartshow/frameworks/SmartShowManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/powermo/smartshow/frameworks/u;->a:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.hardware.display.extra.WIFI_DISPLAY_STATUS"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/WifiDisplayStatus;

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/u;->a:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    invoke-static {v1, v0}, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->a(Lcom/powermo/smartshow/frameworks/SmartShowManagerService;Landroid/hardware/display/WifiDisplayStatus;)Landroid/hardware/display/WifiDisplayStatus;

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/u;->a:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    invoke-static {v0}, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->d(Lcom/powermo/smartshow/frameworks/SmartShowManagerService;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/u;->a:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->a(Lcom/powermo/smartshow/frameworks/SmartShowManagerService;Z)Z

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/u;->a:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    invoke-static {v0}, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->f(Lcom/powermo/smartshow/frameworks/SmartShowManagerService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/u;->a:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    invoke-static {v1}, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->e(Lcom/powermo/smartshow/frameworks/SmartShowManagerService;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
