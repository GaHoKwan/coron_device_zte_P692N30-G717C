.class Lcom/zte/zdm/application/receiver/b;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/zte/zdm/application/receiver/a;


# direct methods
.method constructor <init>(Lcom/zte/zdm/application/receiver/a;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/application/receiver/b;->a:Lcom/zte/zdm/application/receiver/a;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BatteryMonitorReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mBatteryInfoReceiver onReceive action= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/zte/zdm/application/receiver/b;->a:Lcom/zte/zdm/application/receiver/a;

    const-string v1, "level"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/zte/zdm/application/receiver/a;->a(Lcom/zte/zdm/application/receiver/a;I)I

    iget-object v0, p0, Lcom/zte/zdm/application/receiver/b;->a:Lcom/zte/zdm/application/receiver/a;

    invoke-static {v0}, Lcom/zte/zdm/application/receiver/a;->a(Lcom/zte/zdm/application/receiver/a;)I

    move-result v0

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/zte/zdm/application/receiver/b;->a:Lcom/zte/zdm/application/receiver/a;

    invoke-static {v0, v5}, Lcom/zte/zdm/application/receiver/a;->a(Lcom/zte/zdm/application/receiver/a;Z)Z

    :goto_0
    const-string v0, "BatteryMonitorReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mBatteryInfoReceiver mbatteryLevel = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/zdm/application/receiver/b;->a:Lcom/zte/zdm/application/receiver/a;

    invoke-static {v2}, Lcom/zte/zdm/application/receiver/a;->a(Lcom/zte/zdm/application/receiver/a;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; bBatteryLow= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/zdm/application/receiver/b;->a:Lcom/zte/zdm/application/receiver/a;

    invoke-static {v2}, Lcom/zte/zdm/application/receiver/a;->b(Lcom/zte/zdm/application/receiver/a;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/zte/zdm/application/receiver/b;->a:Lcom/zte/zdm/application/receiver/a;

    invoke-static {v0, v4}, Lcom/zte/zdm/application/receiver/a;->a(Lcom/zte/zdm/application/receiver/a;Z)Z

    goto :goto_0

    :cond_2
    const-string v1, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/zte/zdm/application/receiver/b;->a:Lcom/zte/zdm/application/receiver/a;

    invoke-static {v0, v5}, Lcom/zte/zdm/application/receiver/a;->a(Lcom/zte/zdm/application/receiver/a;Z)Z

    const-string v0, "BatteryMonitorReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mBatteryInfoReceiver bBatteryLow= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/zdm/application/receiver/b;->a:Lcom/zte/zdm/application/receiver/a;

    invoke-static {v2}, Lcom/zte/zdm/application/receiver/a;->b(Lcom/zte/zdm/application/receiver/a;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v1, "android.intent.action.BATTERY_OKAY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/zdm/application/receiver/b;->a:Lcom/zte/zdm/application/receiver/a;

    invoke-static {v0, v4}, Lcom/zte/zdm/application/receiver/a;->a(Lcom/zte/zdm/application/receiver/a;Z)Z

    const-string v0, "BatteryMonitorReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mBatteryInfoReceiver bBatteryLow= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/zdm/application/receiver/b;->a:Lcom/zte/zdm/application/receiver/a;

    invoke-static {v2}, Lcom/zte/zdm/application/receiver/a;->b(Lcom/zte/zdm/application/receiver/a;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
