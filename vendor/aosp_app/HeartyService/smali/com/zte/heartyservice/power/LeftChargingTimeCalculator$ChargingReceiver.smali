.class Lcom/zte/heartyservice/power/LeftChargingTimeCalculator$ChargingReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LeftChargingTimeCalculator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/power/LeftChargingTimeCalculator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ChargingReceiver"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/heartyservice/power/LeftChargingTimeCalculator$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/zte/heartyservice/power/LeftChargingTimeCalculator$ChargingReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 15
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 31
    if-nez p2, :cond_1

    .line 32
    const-string v11, "LeftChargingTimeCalculator"

    const-string v12, "onReceive: intent == null"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 36
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 37
    .local v1, action:Ljava/lang/String;
    const-string v11, "LeftChargingTimeCalculator"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "onReceive: action:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    const-string v11, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 39
    const-string v11, "status"

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 40
    .local v10, status:I
    const-string v11, "level"

    const/4 v12, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 41
    .local v5, level:I
    const/4 v11, 0x2

    if-ne v10, v11, :cond_7

    if-ltz v5, :cond_7

    const/16 v11, 0x64

    if-gt v5, v11, :cond_7

    .line 43
    const-string v11, "plugged"

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 45
    .local v7, plugType:I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 46
    .local v3, curTime:J
    const-string v11, "charging_per_level_time"

    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 51
    .local v8, sharedPreferences:Landroid/content/SharedPreferences;
    invoke-static {}, Lcom/zte/heartyservice/power/LeftChargingTimeCalculator;->access$000()I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_2

    invoke-static {}, Lcom/zte/heartyservice/power/LeftChargingTimeCalculator;->access$100()I

    move-result v11

    if-gt v11, v5, :cond_2

    invoke-static {}, Lcom/zte/heartyservice/power/LeftChargingTimeCalculator;->access$200()I

    move-result v11

    if-eq v11, v7, :cond_4

    .line 54
    :cond_2
    invoke-static {v3, v4}, Lcom/zte/heartyservice/power/LeftChargingTimeCalculator;->access$302(J)J

    .line 55
    invoke-static {v7}, Lcom/zte/heartyservice/power/LeftChargingTimeCalculator;->access$202(I)I

    .line 56
    invoke-static {v5}, Lcom/zte/heartyservice/power/LeftChargingTimeCalculator;->access$102(I)I

    .line 57
    const/4 v11, 0x0

    invoke-static {v11}, Lcom/zte/heartyservice/power/LeftChargingTimeCalculator;->access$402(Z)Z

    .line 100
    .end local v3           #curTime:J
    .end local v7           #plugType:I
    .end local v8           #sharedPreferences:Landroid/content/SharedPreferences;
    :cond_3
    :goto_1
    invoke-static {v10}, Lcom/zte/heartyservice/power/LeftChargingTimeCalculator;->access$002(I)I

    goto :goto_0

    .line 58
    .restart local v3       #curTime:J
    .restart local v7       #plugType:I
    .restart local v8       #sharedPreferences:Landroid/content/SharedPreferences;
    :cond_4
    invoke-static {}, Lcom/zte/heartyservice/power/LeftChargingTimeCalculator;->access$100()I

    move-result v11

    if-ge v11, v5, :cond_3

    .line 59
    invoke-static {}, Lcom/zte/heartyservice/power/LeftChargingTimeCalculator;->access$400()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 60
    invoke-static {}, Lcom/zte/heartyservice/power/LeftChargingTimeCalculator;->access$300()J

    move-result-wide v11

    sub-long v11, v3, v11

    invoke-static {}, Lcom/zte/heartyservice/power/LeftChargingTimeCalculator;->access$100()I

    move-result v13

    sub-int v13, v5, v13

    int-to-long v13, v13

    div-long/2addr v11, v13

    const-wide/16 v13, 0x3e8

    div-long/2addr v11, v13

    long-to-int v6, v11

    .line 62
    .local v6, newChargingPerLevelTime:I
    if-lez v6, :cond_5

    const/16 v11, 0x7d0

    if-ge v6, v11, :cond_5

    .line 64
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "statistics"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v8, v11, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 67
    .local v9, statistics:I
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, -0x1

    invoke-interface {v8, v11, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 70
    .local v2, chargingPerLevelTime:I
    if-lez v2, :cond_6

    if-lez v9, :cond_6

    .line 71
    mul-int v11, v2, v9

    add-int/2addr v11, v6

    add-int/lit8 v12, v9, 0x1

    div-int v2, v11, v12

    .line 74
    add-int/lit8 v9, v9, 0x1

    .line 80
    :goto_2
    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 84
    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "statistics"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 91
    .end local v2           #chargingPerLevelTime:I
    .end local v6           #newChargingPerLevelTime:I
    .end local v9           #statistics:I
    :cond_5
    const/4 v11, 0x1

    invoke-static {v11}, Lcom/zte/heartyservice/power/LeftChargingTimeCalculator;->access$402(Z)Z

    .line 92
    invoke-static {v3, v4}, Lcom/zte/heartyservice/power/LeftChargingTimeCalculator;->access$302(J)J

    .line 93
    invoke-static {v5}, Lcom/zte/heartyservice/power/LeftChargingTimeCalculator;->access$102(I)I

    goto/16 :goto_1

    .line 76
    .restart local v2       #chargingPerLevelTime:I
    .restart local v6       #newChargingPerLevelTime:I
    .restart local v9       #statistics:I
    :cond_6
    move v2, v6

    .line 77
    const/4 v9, 0x1

    goto :goto_2

    .line 97
    .end local v2           #chargingPerLevelTime:I
    .end local v3           #curTime:J
    .end local v6           #newChargingPerLevelTime:I
    .end local v7           #plugType:I
    .end local v8           #sharedPreferences:Landroid/content/SharedPreferences;
    .end local v9           #statistics:I
    :cond_7
    const/4 v11, 0x0

    invoke-static {v11}, Lcom/zte/heartyservice/power/LeftChargingTimeCalculator;->access$402(Z)Z

    goto/16 :goto_1
.end method
