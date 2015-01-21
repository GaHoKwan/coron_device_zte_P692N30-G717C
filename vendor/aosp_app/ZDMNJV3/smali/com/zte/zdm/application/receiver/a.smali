.class public Lcom/zte/zdm/application/receiver/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "BatteryMonitorReceiver"

.field private static final c:I = 0x1e

.field private static e:Lcom/zte/zdm/application/receiver/a;


# instance fields
.field private b:I

.field private d:Z

.field private f:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/zte/zdm/application/receiver/a;->e:Lcom/zte/zdm/application/receiver/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/zte/zdm/application/receiver/b;

    invoke-direct {v0, p0}, Lcom/zte/zdm/application/receiver/b;-><init>(Lcom/zte/zdm/application/receiver/a;)V

    iput-object v0, p0, Lcom/zte/zdm/application/receiver/a;->f:Landroid/content/BroadcastReceiver;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/zdm/application/receiver/a;->d:Z

    const/16 v0, 0x64

    iput v0, p0, Lcom/zte/zdm/application/receiver/a;->b:I

    return-void
.end method

.method static synthetic a(Lcom/zte/zdm/application/receiver/a;)I
    .locals 1

    iget v0, p0, Lcom/zte/zdm/application/receiver/a;->b:I

    return v0
.end method

.method static synthetic a(Lcom/zte/zdm/application/receiver/a;I)I
    .locals 0

    iput p1, p0, Lcom/zte/zdm/application/receiver/a;->b:I

    return p1
.end method

.method public static a()Lcom/zte/zdm/application/receiver/a;
    .locals 2

    const-string v0, "BatteryMonitorReceiver"

    const-string v1, "BatteryMonitorReceiver getInstance() "

    invoke-static {v0, v1}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/zte/zdm/application/receiver/a;->e:Lcom/zte/zdm/application/receiver/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/zte/zdm/application/receiver/a;

    invoke-direct {v0}, Lcom/zte/zdm/application/receiver/a;-><init>()V

    sput-object v0, Lcom/zte/zdm/application/receiver/a;->e:Lcom/zte/zdm/application/receiver/a;

    :cond_0
    sget-object v0, Lcom/zte/zdm/application/receiver/a;->e:Lcom/zte/zdm/application/receiver/a;

    return-object v0
.end method

.method static synthetic a(Lcom/zte/zdm/application/receiver/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/zte/zdm/application/receiver/a;->d:Z

    return p1
.end method

.method static synthetic b(Lcom/zte/zdm/application/receiver/a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/zte/zdm/application/receiver/a;->d:Z

    return v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 3

    const-string v0, "BatteryMonitorReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerBattery() context :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/zte/zdm/application/receiver/a;->b(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/zte/zdm/application/receiver/a;->f:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/zte/zdm/application/receiver/a;->f:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_LOW"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/zte/zdm/application/receiver/a;->f:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_OKAY"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public b()I
    .locals 3

    const-string v0, "BatteryMonitorReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBatteryStatus() mbatteryLevel = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/zte/zdm/application/receiver/a;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/zte/zdm/application/receiver/a;->b:I

    return v0
.end method

.method public b(Landroid/content/Context;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/zte/zdm/application/receiver/a;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public c()Z
    .locals 3

    const-string v0, "BatteryMonitorReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBatteryStatus() bBatteryLow = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/zte/zdm/application/receiver/a;->d:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/zte/zdm/application/receiver/a;->d:Z

    return v0
.end method
