.class Lcom/hf/service/WeatherReceiver$4;
.super Ljava/lang/Object;
.source "WeatherReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hf/service/WeatherReceiver;->setTraffic(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hf/service/WeatherReceiver;

.field private final synthetic val$isWifi:Z

.field private final synthetic val$netType:I

.field private final synthetic val$preference:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lcom/hf/service/WeatherReceiver;Landroid/content/SharedPreferences;IZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hf/service/WeatherReceiver$4;->this$0:Lcom/hf/service/WeatherReceiver;

    iput-object p2, p0, Lcom/hf/service/WeatherReceiver$4;->val$preference:Landroid/content/SharedPreferences;

    iput p3, p0, Lcom/hf/service/WeatherReceiver$4;->val$netType:I

    iput-boolean p4, p0, Lcom/hf/service/WeatherReceiver$4;->val$isWifi:Z

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const-wide/16 v13, 0x0

    .line 198
    iget-object v11, p0, Lcom/hf/service/WeatherReceiver$4;->val$preference:Landroid/content/SharedPreferences;

    const-string v12, "traffic_mobile"

    invoke-interface {v11, v12, v13, v14}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 199
    .local v3, mobileTraffic:J
    iget-object v11, p0, Lcom/hf/service/WeatherReceiver$4;->val$preference:Landroid/content/SharedPreferences;

    const-string v12, "traffic_wifi"

    invoke-interface {v11, v12, v13, v14}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    .line 200
    .local v9, wifiTraffic:J
    iget-object v11, p0, Lcom/hf/service/WeatherReceiver$4;->val$preference:Landroid/content/SharedPreferences;

    const-string v12, "traffic_totle"

    invoke-interface {v11, v12, v13, v14}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    .line 202
    .local v7, totleTraffic:J
    sget-boolean v11, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v11, :cond_0

    .line 203
    const-string v11, "WeatherReceiver"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "net type = "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v13, p0, Lcom/hf/service/WeatherReceiver$4;->val$netType:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "; isWifi = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-boolean v13, p0, Lcom/hf/service/WeatherReceiver$4;->val$isWifi:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_0
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v11

    invoke-static {v11}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v11

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v13

    invoke-static {v13}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v13

    add-long v5, v11, v13

    .line 207
    .local v5, newTotle:J
    sub-long v0, v5, v7

    .line 209
    .local v0, addTraffic:J
    iget v11, p0, Lcom/hf/service/WeatherReceiver$4;->val$netType:I

    if-nez v11, :cond_2

    iget-boolean v11, p0, Lcom/hf/service/WeatherReceiver$4;->val$isWifi:Z

    if-eqz v11, :cond_2

    .line 210
    add-long/2addr v9, v0

    .line 211
    iget-object v11, p0, Lcom/hf/service/WeatherReceiver$4;->val$preference:Landroid/content/SharedPreferences;

    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 212
    .local v2, editor:Landroid/content/SharedPreferences$Editor;
    const-string v11, "is_wifi_net"

    const/4 v12, 0x0

    invoke-interface {v2, v11, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 213
    const-string v11, "traffic_wifi"

    invoke-interface {v2, v11, v9, v10}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 214
    const-string v11, "traffic_totle"

    invoke-interface {v2, v11, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 215
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 226
    .end local v2           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_1
    :goto_0
    return-void

    .line 216
    :cond_2
    iget v11, p0, Lcom/hf/service/WeatherReceiver$4;->val$netType:I

    if-nez v11, :cond_1

    iget-boolean v11, p0, Lcom/hf/service/WeatherReceiver$4;->val$isWifi:Z

    if-nez v11, :cond_1

    .line 217
    add-long/2addr v3, v0

    .line 218
    iget-object v11, p0, Lcom/hf/service/WeatherReceiver$4;->val$preference:Landroid/content/SharedPreferences;

    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 219
    .restart local v2       #editor:Landroid/content/SharedPreferences$Editor;
    const-string v11, "is_wifi_net"

    const/4 v12, 0x1

    invoke-interface {v2, v11, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 220
    const-string v11, "traffic_mobile"

    invoke-interface {v2, v11, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 221
    const-string v11, "traffic_totle"

    invoke-interface {v2, v11, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 222
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method
