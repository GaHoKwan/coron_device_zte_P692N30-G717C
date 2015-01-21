.class Lcom/powermo/smartshow/frameworks/v;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;


# direct methods
.method constructor <init>(Lcom/powermo/smartshow/frameworks/SmartShowManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/powermo/smartshow/frameworks/v;->a:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    const/4 v1, 0x3

    const/4 v3, 0x0

    const-wide/16 v4, 0x3e8

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/v;->a:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iget-object v2, p0, Lcom/powermo/smartshow/frameworks/v;->a:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    invoke-static {v2}, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->g(Lcom/powermo/smartshow/frameworks/SmartShowManagerService;)Landroid/hardware/display/DisplayManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->a(Lcom/powermo/smartshow/frameworks/SmartShowManagerService;Landroid/hardware/display/WifiDisplayStatus;)Landroid/hardware/display/WifiDisplayStatus;

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/v;->a:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    invoke-static {v0}, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->c(Lcom/powermo/smartshow/frameworks/SmartShowManagerService;)Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplayStatus;->getFeatureState()I

    move-result v0

    if-ne v0, v1, :cond_2

    const/16 v0, 0xa

    move v5, v0

    :goto_0
    if-lez v5, :cond_2

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/v;->a:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    invoke-static {v0}, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->c(Lcom/powermo/smartshow/frameworks/SmartShowManagerService;)Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplayStatus;->getRememberedDisplays()[Landroid/hardware/display/WifiDisplay;

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/v;->a:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    invoke-static {v0}, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->c(Lcom/powermo/smartshow/frameworks/SmartShowManagerService;)Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplayStatus;->getAvailableDisplays()[Landroid/hardware/display/WifiDisplay;

    move-result-object v6

    array-length v7, v6

    move v4, v3

    :goto_1
    if-ge v4, v7, :cond_5

    aget-object v8, v6, v4

    invoke-static {}, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "available display:"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Landroid/hardware/display/WifiDisplay;->getDeviceName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v8}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    move v0, v1

    move v2, v3

    :goto_2
    array-length v10, v9

    if-ge v0, v10, :cond_1

    aget-byte v10, v9, v0

    const/16 v11, 0x3a

    if-eq v10, v11, :cond_0

    aget-byte v10, v9, v0

    add-int/2addr v2, v10

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/v;->a:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    invoke-static {v0}, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->h(Lcom/powermo/smartshow/frameworks/SmartShowManagerService;)I

    move-result v0

    if-ne v0, v2, :cond_4

    invoke-static {}, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Got controller in available device"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/v;->a:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    invoke-static {v0}, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->i(Lcom/powermo/smartshow/frameworks/SmartShowManagerService;)Lcom/powermo/smartshow/frameworks/aa;

    move-result-object v0

    iget-object v0, v0, Lcom/powermo/smartshow/frameworks/aa;->a:Landroid/os/Handler;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/v;->a:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    invoke-static {v0}, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->i(Lcom/powermo/smartshow/frameworks/SmartShowManagerService;)Lcom/powermo/smartshow/frameworks/aa;

    move-result-object v0

    iget-object v0, v0, Lcom/powermo/smartshow/frameworks/aa;->a:Landroid/os/Handler;

    new-instance v1, Lcom/powermo/smartshow/frameworks/w;

    invoke-direct {v1, p0}, Lcom/powermo/smartshow/frameworks/w;-><init>(Lcom/powermo/smartshow/frameworks/v;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_3
    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/v;->a:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    invoke-static {v0}, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->g(Lcom/powermo/smartshow/frameworks/SmartShowManagerService;)Landroid/hardware/display/DisplayManager;

    move-result-object v0

    invoke-virtual {v8}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->connectWifiDisplay(Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    invoke-static {}, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mPoster.mHandler == null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_4
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto/16 :goto_1

    :cond_5
    add-int/lit8 v0, v5, -0x1

    const-wide/16 v4, 0x1f4

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    iget-object v2, p0, Lcom/powermo/smartshow/frameworks/v;->a:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iget-object v4, p0, Lcom/powermo/smartshow/frameworks/v;->a:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    invoke-static {v4}, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->g(Lcom/powermo/smartshow/frameworks/SmartShowManagerService;)Landroid/hardware/display/DisplayManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->a(Lcom/powermo/smartshow/frameworks/SmartShowManagerService;Landroid/hardware/display/WifiDisplayStatus;)Landroid/hardware/display/WifiDisplayStatus;

    move v5, v0

    goto/16 :goto_0
.end method
