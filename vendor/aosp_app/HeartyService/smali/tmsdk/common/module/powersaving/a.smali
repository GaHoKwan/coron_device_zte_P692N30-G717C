.class abstract Ltmsdk/common/module/powersaving/a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field static AA:Z

.field private static AB:Z

.field static AC:Z

.field static As:I

.field private static Au:Z

.field static Av:Z

.field private static Az:Z


# instance fields
.field private Am:Ljava/lang/Runnable;

.field private An:Ljava/lang/Runnable;

.field private Ao:Landroid/os/Handler;

.field private Ap:Landroid/os/Handler;

.field private Aq:Z

.field private Ar:Z

.field private At:Z

.field private Aw:Ljava/lang/Runnable;

.field private Ax:Landroid/os/Handler;

.field private final Ay:I

.field private Tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x1

    sput-boolean v0, Ltmsdk/common/module/powersaving/a;->Az:Z

    return-void
.end method

.method constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 55
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 26
    const-string v1, "AbsPowerSavingBroadcastReceiver"

    iput-object v1, p0, Ltmsdk/common/module/powersaving/a;->Tag:Ljava/lang/String;

    .line 29
    iput-object v2, p0, Ltmsdk/common/module/powersaving/a;->Am:Ljava/lang/Runnable;

    .line 30
    iput-object v2, p0, Ltmsdk/common/module/powersaving/a;->An:Ljava/lang/Runnable;

    .line 31
    iput-object v2, p0, Ltmsdk/common/module/powersaving/a;->Ao:Landroid/os/Handler;

    .line 32
    iput-object v2, p0, Ltmsdk/common/module/powersaving/a;->Ap:Landroid/os/Handler;

    .line 33
    iput-boolean v3, p0, Ltmsdk/common/module/powersaving/a;->Aq:Z

    .line 34
    iput-boolean v3, p0, Ltmsdk/common/module/powersaving/a;->Ar:Z

    .line 45
    const v1, 0x493e0

    iput v1, p0, Ltmsdk/common/module/powersaving/a;->Ay:I

    .line 56
    const-class v1, Ltmsdk/common/module/netsetting/NetSettingManager;

    invoke-static {v1}, Ltmsdk/common/creator/ManagerCreatorC;->getManager(Ljava/lang/Class;)Ltmsdk/common/creator/BaseManagerC;

    move-result-object v0

    check-cast v0, Ltmsdk/common/module/netsetting/NetSettingManager;

    .line 57
    .local v0, netSettingManager:Ltmsdk/common/module/netsetting/NetSettingManager;
    invoke-virtual {v0}, Ltmsdk/common/module/netsetting/NetSettingManager;->isWifiEnabled()Z

    move-result v1

    sput-boolean v1, Ltmsdk/common/module/powersaving/a;->Au:Z

    .line 58
    invoke-virtual {v0}, Ltmsdk/common/module/netsetting/NetSettingManager;->getMobileDataConnectivity()Z

    move-result v1

    sput-boolean v1, Ltmsdk/common/module/powersaving/a;->AA:Z

    .line 59
    invoke-virtual {v0}, Ltmsdk/common/module/netsetting/NetSettingManager;->isBluetoothEnabled()Z

    move-result v1

    sput-boolean v1, Ltmsdk/common/module/powersaving/a;->AB:Z

    .line 60
    return-void
.end method

.method static synthetic a(Ltmsdk/common/module/powersaving/a;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Ltmsdk/common/module/powersaving/a;->Tag:Ljava/lang/String;

    return-object v0
.end method

.method private a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x4

    const/4 v7, 0x1

    .line 83
    invoke-virtual {p0}, Ltmsdk/common/module/powersaving/a;->fL()Ltmsdk/common/module/powersaving/PowerSavingConfig;

    move-result-object v0

    .line 84
    .local v0, config:Ltmsdk/common/module/powersaving/PowerSavingConfig;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 86
    iget-object v3, p0, Ltmsdk/common/module/powersaving/a;->Tag:Ljava/lang/String;

    const-string v4, "Screen off"

    invoke-static {v3, v4}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 88
    invoke-virtual {p0}, Ltmsdk/common/module/powersaving/a;->fK()Z

    move-result v3

    if-nez v3, :cond_5

    .line 89
    iget v3, v0, Ltmsdk/common/module/powersaving/PowerSavingConfig;->mWifiAutoCloseCondition:I

    and-int/lit8 v3, v3, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_2

    sget-boolean v3, Ltmsdk/common/module/powersaving/a;->Au:Z

    if-eqz v3, :cond_2

    .line 93
    iget-object v3, p0, Ltmsdk/common/module/powersaving/a;->Tag:Ljava/lang/String;

    const-string v4, "start disable wifi"

    invoke-static {v3, v4}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 94
    iget-object v3, p0, Ltmsdk/common/module/powersaving/a;->Ao:Landroid/os/Handler;

    if-nez v3, :cond_0

    .line 95
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Ltmsdk/common/module/powersaving/a;->Ao:Landroid/os/Handler;

    .line 97
    :cond_0
    iget-object v3, p0, Ltmsdk/common/module/powersaving/a;->Am:Ljava/lang/Runnable;

    if-nez v3, :cond_1

    .line 98
    new-instance v3, Ltmsdk/common/module/powersaving/a$1;

    invoke-direct {v3, p0}, Ltmsdk/common/module/powersaving/a$1;-><init>(Ltmsdk/common/module/powersaving/a;)V

    iput-object v3, p0, Ltmsdk/common/module/powersaving/a;->Am:Ljava/lang/Runnable;

    .line 108
    :cond_1
    iget-object v3, p0, Ltmsdk/common/module/powersaving/a;->Ao:Landroid/os/Handler;

    iget-object v4, p0, Ltmsdk/common/module/powersaving/a;->Am:Ljava/lang/Runnable;

    iget v5, v0, Ltmsdk/common/module/powersaving/PowerSavingConfig;->mWifiAutoCloseScreenTime:I

    int-to-long v5, v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 109
    iput-boolean v7, p0, Ltmsdk/common/module/powersaving/a;->Aq:Z

    .line 112
    :cond_2
    iget v3, v0, Ltmsdk/common/module/powersaving/PowerSavingConfig;->mMobileNetWorkAutoCloseCondition:I

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    sget-boolean v3, Ltmsdk/common/module/powersaving/a;->Az:Z

    if-eqz v3, :cond_5

    .line 116
    iget-object v3, p0, Ltmsdk/common/module/powersaving/a;->Ap:Landroid/os/Handler;

    if-nez v3, :cond_3

    .line 117
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Ltmsdk/common/module/powersaving/a;->Ap:Landroid/os/Handler;

    .line 119
    :cond_3
    iget-object v3, p0, Ltmsdk/common/module/powersaving/a;->An:Ljava/lang/Runnable;

    if-nez v3, :cond_4

    .line 120
    new-instance v3, Ltmsdk/common/module/powersaving/a$2;

    invoke-direct {v3, p0}, Ltmsdk/common/module/powersaving/a$2;-><init>(Ltmsdk/common/module/powersaving/a;)V

    iput-object v3, p0, Ltmsdk/common/module/powersaving/a;->An:Ljava/lang/Runnable;

    .line 130
    :cond_4
    iget-object v3, p0, Ltmsdk/common/module/powersaving/a;->Ap:Landroid/os/Handler;

    iget-object v4, p0, Ltmsdk/common/module/powersaving/a;->An:Ljava/lang/Runnable;

    iget v5, v0, Ltmsdk/common/module/powersaving/PowerSavingConfig;->mWifiAutoCloseScreenTime:I

    int-to-long v5, v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 131
    iput-boolean v7, p0, Ltmsdk/common/module/powersaving/a;->Ar:Z

    .line 183
    :cond_5
    :goto_0
    return-void

    .line 134
    :cond_6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.SCREEN_ON"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 136
    iget-object v3, p0, Ltmsdk/common/module/powersaving/a;->Tag:Ljava/lang/String;

    const-string v4, "Screen on"

    invoke-static {v3, v4}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 138
    iget-boolean v3, p0, Ltmsdk/common/module/powersaving/a;->Aq:Z

    if-eqz v3, :cond_7

    .line 139
    iget-object v3, p0, Ltmsdk/common/module/powersaving/a;->Ao:Landroid/os/Handler;

    iget-object v4, p0, Ltmsdk/common/module/powersaving/a;->Am:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 140
    iput-boolean v6, p0, Ltmsdk/common/module/powersaving/a;->Aq:Z

    .line 143
    :cond_7
    invoke-virtual {p0}, Ltmsdk/common/module/powersaving/a;->fK()Z

    move-result v3

    if-nez v3, :cond_8

    iget v3, v0, Ltmsdk/common/module/powersaving/PowerSavingConfig;->mWifiAutoOpenCondition:I

    and-int/lit8 v3, v3, 0x4

    if-ne v3, v5, :cond_8

    sget-boolean v3, Ltmsdk/common/module/powersaving/a;->Au:Z

    if-eqz v3, :cond_8

    .line 147
    iget-object v3, p0, Ltmsdk/common/module/powersaving/a;->Tag:Ljava/lang/String;

    const-string v4, "start enable wifi"

    invoke-static {v3, v4}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 149
    const-class v3, Ltmsdk/common/module/netsetting/NetSettingManager;

    invoke-static {v3}, Ltmsdk/common/creator/ManagerCreatorC;->getManager(Ljava/lang/Class;)Ltmsdk/common/creator/BaseManagerC;

    move-result-object v1

    check-cast v1, Ltmsdk/common/module/netsetting/NetSettingManager;

    .line 150
    .local v1, netSettingManager:Ltmsdk/common/module/netsetting/NetSettingManager;
    invoke-virtual {v1}, Ltmsdk/common/module/netsetting/NetSettingManager;->isWifiEnabled()Z

    move-result v3

    if-nez v3, :cond_8

    .line 151
    invoke-virtual {v1, v7}, Ltmsdk/common/module/netsetting/NetSettingManager;->setWifiEnabled(Z)Z

    .line 152
    sput-boolean v7, Ltmsdk/common/module/powersaving/a;->Av:Z

    .line 156
    .end local v1           #netSettingManager:Ltmsdk/common/module/netsetting/NetSettingManager;
    :cond_8
    iget-boolean v3, p0, Ltmsdk/common/module/powersaving/a;->Ar:Z

    if-eqz v3, :cond_9

    .line 157
    iget-object v3, p0, Ltmsdk/common/module/powersaving/a;->Ap:Landroid/os/Handler;

    iget-object v4, p0, Ltmsdk/common/module/powersaving/a;->An:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 158
    iput-boolean v6, p0, Ltmsdk/common/module/powersaving/a;->Ar:Z

    .line 161
    :cond_9
    invoke-virtual {p0}, Ltmsdk/common/module/powersaving/a;->fK()Z

    move-result v3

    if-nez v3, :cond_a

    iget v3, v0, Ltmsdk/common/module/powersaving/PowerSavingConfig;->mMobileNetWorkAutoOpenCondition:I

    and-int/lit8 v3, v3, 0x4

    if-ne v3, v5, :cond_a

    sget-boolean v3, Ltmsdk/common/module/powersaving/a;->Az:Z

    if-eqz v3, :cond_a

    .line 166
    const-class v3, Ltmsdk/common/module/netsetting/NetSettingManager;

    invoke-static {v3}, Ltmsdk/common/creator/ManagerCreatorC;->getManager(Ljava/lang/Class;)Ltmsdk/common/creator/BaseManagerC;

    move-result-object v2

    check-cast v2, Ltmsdk/common/module/netsetting/NetSettingManager;

    .line 167
    .local v2, netsetManager:Ltmsdk/common/module/netsetting/NetSettingManager;
    invoke-virtual {v2}, Ltmsdk/common/module/netsetting/NetSettingManager;->getMobileDataConnectivity()Z

    move-result v3

    if-nez v3, :cond_a

    .line 168
    invoke-virtual {v2, v7}, Ltmsdk/common/module/netsetting/NetSettingManager;->setMobileDataConnectivity(Z)Z

    .line 169
    sput-boolean v7, Ltmsdk/common/module/powersaving/a;->AA:Z

    .line 173
    .end local v2           #netsetManager:Ltmsdk/common/module/netsetting/NetSettingManager;
    :cond_a
    invoke-virtual {p0}, Ltmsdk/common/module/powersaving/a;->fK()Z

    move-result v3

    if-nez v3, :cond_5

    iget v3, v0, Ltmsdk/common/module/powersaving/PowerSavingConfig;->mBlueToothAutoOpenCondition:I

    and-int/lit8 v3, v3, 0x4

    if-ne v3, v5, :cond_5

    sget-boolean v3, Ltmsdk/common/module/powersaving/a;->AB:Z

    if-eqz v3, :cond_5

    .line 178
    const-class v3, Ltmsdk/common/module/netsetting/NetSettingManager;

    invoke-static {v3}, Ltmsdk/common/creator/ManagerCreatorC;->getManager(Ljava/lang/Class;)Ltmsdk/common/creator/BaseManagerC;

    move-result-object v1

    check-cast v1, Ltmsdk/common/module/netsetting/NetSettingManager;

    .line 179
    .restart local v1       #netSettingManager:Ltmsdk/common/module/netsetting/NetSettingManager;
    invoke-virtual {v1}, Ltmsdk/common/module/netsetting/NetSettingManager;->enableBluetooth()Z

    .line 180
    sput-boolean v7, Ltmsdk/common/module/powersaving/a;->AC:Z

    goto/16 :goto_0
.end method

.method static synthetic a(Ltmsdk/common/module/powersaving/a;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput-boolean p1, p0, Ltmsdk/common/module/powersaving/a;->Aq:Z

    return p1
.end method

.method private b(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v11, 0x64

    const/4 v10, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 186
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v7, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 187
    const-string v6, "level"

    invoke-virtual {p2, v6, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 188
    .local v3, level:I
    const-string v6, "scale"

    invoke-virtual {p2, v6, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 189
    .local v5, scale:I
    mul-int/lit8 v6, v3, 0x64

    div-int v2, v6, v5

    .line 190
    .local v2, currentBatteryLevel:I
    if-le v2, v11, :cond_0

    .line 191
    const/16 v2, 0x64

    .line 193
    :cond_0
    sget v6, Ltmsdk/common/module/powersaving/a;->As:I

    if-eq v6, v2, :cond_1

    .line 194
    sput v2, Ltmsdk/common/module/powersaving/a;->As:I

    .line 195
    invoke-virtual {p0, p2}, Ltmsdk/common/module/powersaving/a;->onBatteryLevelChanged(Landroid/content/Intent;)V

    .line 198
    :cond_1
    const-string v6, "status"

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 199
    .local v0, battery_status:I
    invoke-virtual {p0}, Ltmsdk/common/module/powersaving/a;->fL()Ltmsdk/common/module/powersaving/PowerSavingConfig;

    move-result-object v1

    .line 201
    .local v1, config:Ltmsdk/common/module/powersaving/PowerSavingConfig;
    if-ne v0, v9, :cond_6

    .line 203
    iget-object v6, p0, Ltmsdk/common/module/powersaving/a;->Tag:Ljava/lang/String;

    const-string v7, "start charge"

    invoke-static {v6, v7}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 204
    iget-boolean v6, p0, Ltmsdk/common/module/powersaving/a;->At:Z

    if-eqz v6, :cond_3

    .line 260
    .end local v0           #battery_status:I
    .end local v1           #config:Ltmsdk/common/module/powersaving/PowerSavingConfig;
    .end local v2           #currentBatteryLevel:I
    .end local v3           #level:I
    .end local v5           #scale:I
    :cond_2
    :goto_0
    return-void

    .line 207
    .restart local v0       #battery_status:I
    .restart local v1       #config:Ltmsdk/common/module/powersaving/PowerSavingConfig;
    .restart local v2       #currentBatteryLevel:I
    .restart local v3       #level:I
    .restart local v5       #scale:I
    :cond_3
    iput-boolean v8, p0, Ltmsdk/common/module/powersaving/a;->At:Z

    .line 208
    invoke-virtual {p0, p2}, Ltmsdk/common/module/powersaving/a;->onStartBatteryCharging(Landroid/content/Intent;)V

    .line 210
    invoke-virtual {p0}, Ltmsdk/common/module/powersaving/a;->fK()Z

    move-result v6

    if-nez v6, :cond_2

    .line 211
    iget v6, v1, Ltmsdk/common/module/powersaving/PowerSavingConfig;->mWifiAutoOpenCondition:I

    and-int/lit8 v6, v6, 0x2

    if-ne v6, v9, :cond_4

    sget-boolean v6, Ltmsdk/common/module/powersaving/a;->Au:Z

    if-eqz v6, :cond_4

    .line 215
    const-class v6, Ltmsdk/common/module/netsetting/NetSettingManager;

    invoke-static {v6}, Ltmsdk/common/creator/ManagerCreatorC;->getManager(Ljava/lang/Class;)Ltmsdk/common/creator/BaseManagerC;

    move-result-object v4

    check-cast v4, Ltmsdk/common/module/netsetting/NetSettingManager;

    .line 216
    .local v4, netSettingManager:Ltmsdk/common/module/netsetting/NetSettingManager;
    invoke-virtual {v4}, Ltmsdk/common/module/netsetting/NetSettingManager;->isWifiEnabled()Z

    move-result v6

    if-nez v6, :cond_4

    .line 217
    invoke-virtual {v4, v8}, Ltmsdk/common/module/netsetting/NetSettingManager;->setWifiEnabled(Z)Z

    .line 218
    sput-boolean v8, Ltmsdk/common/module/powersaving/a;->Av:Z

    .line 221
    .end local v4           #netSettingManager:Ltmsdk/common/module/netsetting/NetSettingManager;
    :cond_4
    iget v6, v1, Ltmsdk/common/module/powersaving/PowerSavingConfig;->mMobileNetWorkAutoOpenCondition:I

    and-int/lit8 v6, v6, 0x2

    if-ne v6, v9, :cond_5

    sget-boolean v6, Ltmsdk/common/module/powersaving/a;->Az:Z

    if-eqz v6, :cond_5

    .line 225
    const-class v6, Ltmsdk/common/module/netsetting/NetSettingManager;

    invoke-static {v6}, Ltmsdk/common/creator/ManagerCreatorC;->getManager(Ljava/lang/Class;)Ltmsdk/common/creator/BaseManagerC;

    move-result-object v4

    check-cast v4, Ltmsdk/common/module/netsetting/NetSettingManager;

    .line 226
    .restart local v4       #netSettingManager:Ltmsdk/common/module/netsetting/NetSettingManager;
    invoke-virtual {v4, v8}, Ltmsdk/common/module/netsetting/NetSettingManager;->setMobileDataConnectivity(Z)Z

    .line 227
    sput-boolean v8, Ltmsdk/common/module/powersaving/a;->AA:Z

    .line 229
    .end local v4           #netSettingManager:Ltmsdk/common/module/netsetting/NetSettingManager;
    :cond_5
    iget v6, v1, Ltmsdk/common/module/powersaving/PowerSavingConfig;->mBlueToothAutoOpenCondition:I

    and-int/lit8 v6, v6, 0x2

    if-ne v6, v9, :cond_2

    sget-boolean v6, Ltmsdk/common/module/powersaving/a;->AB:Z

    if-eqz v6, :cond_2

    .line 233
    const-class v6, Ltmsdk/common/module/netsetting/NetSettingManager;

    invoke-static {v6}, Ltmsdk/common/creator/ManagerCreatorC;->getManager(Ljava/lang/Class;)Ltmsdk/common/creator/BaseManagerC;

    move-result-object v4

    check-cast v4, Ltmsdk/common/module/netsetting/NetSettingManager;

    .line 234
    .restart local v4       #netSettingManager:Ltmsdk/common/module/netsetting/NetSettingManager;
    invoke-virtual {v4}, Ltmsdk/common/module/netsetting/NetSettingManager;->enableBluetooth()Z

    .line 235
    sput-boolean v8, Ltmsdk/common/module/powersaving/a;->AC:Z

    goto :goto_0

    .line 239
    .end local v4           #netSettingManager:Ltmsdk/common/module/netsetting/NetSettingManager;
    :cond_6
    const/4 v6, 0x5

    if-ne v0, v6, :cond_7

    .line 241
    iget-object v6, p0, Ltmsdk/common/module/powersaving/a;->Tag:Ljava/lang/String;

    const-string v7, "receive full msg"

    invoke-static {v6, v7}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 242
    iget-boolean v6, p0, Ltmsdk/common/module/powersaving/a;->At:Z

    if-eqz v6, :cond_2

    .line 243
    iget-object v6, p0, Ltmsdk/common/module/powersaving/a;->Tag:Ljava/lang/String;

    const-string v7, "full!"

    invoke-static {v6, v7}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 244
    iput-boolean v10, p0, Ltmsdk/common/module/powersaving/a;->At:Z

    .line 245
    invoke-virtual {p0, p2}, Ltmsdk/common/module/powersaving/a;->onFinishBatteryCharging(Landroid/content/Intent;)V

    goto :goto_0

    .line 248
    :cond_7
    const/4 v6, 0x4

    if-eq v0, v6, :cond_8

    const/4 v6, 0x3

    if-ne v0, v6, :cond_2

    .line 251
    :cond_8
    iget-object v6, p0, Ltmsdk/common/module/powersaving/a;->Tag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "receive stop msg::"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 252
    iget-boolean v6, p0, Ltmsdk/common/module/powersaving/a;->At:Z

    if-eqz v6, :cond_2

    .line 253
    iget-object v6, p0, Ltmsdk/common/module/powersaving/a;->Tag:Ljava/lang/String;

    const-string v7, "stop!"

    invoke-static {v6, v7}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 254
    iput-boolean v10, p0, Ltmsdk/common/module/powersaving/a;->At:Z

    .line 255
    invoke-virtual {p0, p2}, Ltmsdk/common/module/powersaving/a;->onStopBatteryCharging(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method static synthetic b(Ltmsdk/common/module/powersaving/a;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput-boolean p1, p0, Ltmsdk/common/module/powersaving/a;->Ar:Z

    return p1
.end method

.method private c(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 263
    invoke-virtual {p0}, Ltmsdk/common/module/powersaving/a;->fL()Ltmsdk/common/module/powersaving/PowerSavingConfig;

    move-result-object v0

    .line 264
    .local v0, config:Ltmsdk/common/module/powersaving/PowerSavingConfig;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v7, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 265
    const-string v6, "wifi_state"

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 266
    .local v5, wifi_state:I
    if-ne v5, v10, :cond_2

    .line 267
    iget-object v6, p0, Ltmsdk/common/module/powersaving/a;->Tag:Ljava/lang/String;

    const-string v7, "open wifi"

    invoke-static {v6, v7}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 269
    sget-boolean v6, Ltmsdk/common/module/powersaving/a;->Av:Z

    if-nez v6, :cond_0

    .line 270
    sput-boolean v9, Ltmsdk/common/module/powersaving/a;->Au:Z

    .line 272
    :cond_0
    invoke-virtual {p0}, Ltmsdk/common/module/powersaving/a;->fK()Z

    move-result v6

    if-nez v6, :cond_1

    iget v6, v0, Ltmsdk/common/module/powersaving/PowerSavingConfig;->mWifiAutoCloseCondition:I

    and-int/lit8 v6, v6, 0x2

    if-ne v6, v10, :cond_1

    .line 276
    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    new-instance v7, Ltmsdk/common/module/powersaving/a$3;

    invoke-direct {v7, p0, p1}, Ltmsdk/common/module/powersaving/a$3;-><init>(Ltmsdk/common/module/powersaving/a;Landroid/content/Context;)V

    iget v8, v0, Ltmsdk/common/module/powersaving/PowerSavingConfig;->mWifiOverTimeDuration:I

    int-to-long v8, v8

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 354
    .end local v5           #wifi_state:I
    :cond_1
    :goto_0
    return-void

    .line 291
    .restart local v5       #wifi_state:I
    :cond_2
    const/4 v6, 0x3

    if-ne v5, v6, :cond_4

    .line 292
    iget-object v6, p0, Ltmsdk/common/module/powersaving/a;->Tag:Ljava/lang/String;

    const-string v7, "open wifi"

    invoke-static {v6, v7}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 293
    sget-boolean v6, Ltmsdk/common/module/powersaving/a;->Av:Z

    invoke-virtual {p0, v6}, Ltmsdk/common/module/powersaving/a;->onOpenWifi(Z)V

    .line 296
    sget-boolean v6, Ltmsdk/common/module/powersaving/a;->Av:Z

    if-eqz v6, :cond_3

    .line 297
    sput-boolean v8, Ltmsdk/common/module/powersaving/a;->Av:Z

    goto :goto_0

    .line 300
    :cond_3
    sput-boolean v9, Ltmsdk/common/module/powersaving/a;->Au:Z

    goto :goto_0

    .line 301
    :cond_4
    if-ne v5, v9, :cond_1

    .line 302
    iget-object v6, p0, Ltmsdk/common/module/powersaving/a;->Tag:Ljava/lang/String;

    const-string v7, "close wifi"

    invoke-static {v6, v7}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 303
    sget-boolean v6, Ltmsdk/common/module/powersaving/a;->Av:Z

    invoke-virtual {p0, v6}, Ltmsdk/common/module/powersaving/a;->onCloseWifi(Z)V

    .line 306
    sget-boolean v6, Ltmsdk/common/module/powersaving/a;->Av:Z

    if-eqz v6, :cond_5

    .line 308
    sput-boolean v8, Ltmsdk/common/module/powersaving/a;->Av:Z

    goto :goto_0

    .line 311
    :cond_5
    sput-boolean v8, Ltmsdk/common/module/powersaving/a;->Au:Z

    goto :goto_0

    .line 314
    .end local v5           #wifi_state:I
    :cond_6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v7, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 316
    invoke-virtual {p0}, Ltmsdk/common/module/powersaving/a;->fK()Z

    move-result v6

    if-nez v6, :cond_1

    iget v6, v0, Ltmsdk/common/module/powersaving/PowerSavingConfig;->mWifiAutoCloseCondition:I

    and-int/lit8 v6, v6, 0x4

    const/4 v7, 0x4

    if-ne v6, v7, :cond_1

    .line 320
    iget-object v6, p0, Ltmsdk/common/module/powersaving/a;->Ax:Landroid/os/Handler;

    if-eqz v6, :cond_7

    iget-object v6, p0, Ltmsdk/common/module/powersaving/a;->Aw:Ljava/lang/Runnable;

    if-eqz v6, :cond_7

    .line 321
    iget-object v6, p0, Ltmsdk/common/module/powersaving/a;->Ax:Landroid/os/Handler;

    iget-object v7, p0, Ltmsdk/common/module/powersaving/a;->Aw:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 322
    iput-object v11, p0, Ltmsdk/common/module/powersaving/a;->Ax:Landroid/os/Handler;

    .line 323
    iput-object v11, p0, Ltmsdk/common/module/powersaving/a;->Aw:Ljava/lang/Runnable;

    .line 326
    :cond_7
    const-class v6, Ltmsdk/common/module/netsetting/NetSettingManager;

    invoke-static {v6}, Ltmsdk/common/creator/ManagerCreatorC;->getManager(Ljava/lang/Class;)Ltmsdk/common/creator/BaseManagerC;

    move-result-object v1

    check-cast v1, Ltmsdk/common/module/netsetting/NetSettingManager;

    .line 327
    .local v1, netSettingManager:Ltmsdk/common/module/netsetting/NetSettingManager;
    iget v4, v0, Ltmsdk/common/module/powersaving/PowerSavingConfig;->mWifiLowSignalThreshold:I

    .line 328
    .local v4, signalSetted:I
    const/16 v6, 0x64

    div-int v3, v6, v4

    .line 334
    .local v3, signalLevelCount:I
    invoke-virtual {v1}, Ltmsdk/common/module/netsetting/NetSettingManager;->getWifiRssi()I

    move-result v2

    .line 335
    .local v2, rssi:I
    invoke-virtual {v1}, Ltmsdk/common/module/netsetting/NetSettingManager;->getWifiState()I

    move-result v6

    if-eq v6, v10, :cond_8

    invoke-virtual {v1}, Ltmsdk/common/module/netsetting/NetSettingManager;->getWifiState()I

    move-result v6

    if-eqz v6, :cond_8

    .line 337
    invoke-static {v2, v3}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v6

    if-nez v6, :cond_8

    .line 339
    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    iput-object v6, p0, Ltmsdk/common/module/powersaving/a;->Ax:Landroid/os/Handler;

    .line 340
    new-instance v6, Ltmsdk/common/module/powersaving/a$4;

    invoke-direct {v6, p0, v1}, Ltmsdk/common/module/powersaving/a$4;-><init>(Ltmsdk/common/module/powersaving/a;Ltmsdk/common/module/netsetting/NetSettingManager;)V

    iput-object v6, p0, Ltmsdk/common/module/powersaving/a;->Aw:Ljava/lang/Runnable;

    .line 348
    iget-object v6, p0, Ltmsdk/common/module/powersaving/a;->Ax:Landroid/os/Handler;

    iget-object v7, p0, Ltmsdk/common/module/powersaving/a;->Aw:Ljava/lang/Runnable;

    const-wide/32 v8, 0x493e0

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 351
    :cond_8
    iget-object v6, p0, Ltmsdk/common/module/powersaving/a;->Tag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "wifi rssi::"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method private d(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    .line 357
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 358
    const-string v2, "networkInfo"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 359
    .local v0, gprs:Landroid/net/NetworkInfo;
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-nez v2, :cond_0

    .line 360
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    .line 361
    .local v1, state:Landroid/net/NetworkInfo$State;
    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v1, v2, :cond_2

    .line 363
    iget-object v2, p0, Ltmsdk/common/module/powersaving/a;->Tag:Ljava/lang/String;

    const-string v3, "open gprs"

    invoke-static {v2, v3}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 365
    sget-boolean v2, Ltmsdk/common/module/powersaving/a;->AA:Z

    invoke-virtual {p0, v2}, Ltmsdk/common/module/powersaving/a;->onOpenMobileNetwork(Z)V

    .line 367
    sget-boolean v2, Ltmsdk/common/module/powersaving/a;->AA:Z

    if-eqz v2, :cond_1

    .line 369
    sput-boolean v4, Ltmsdk/common/module/powersaving/a;->AA:Z

    .line 388
    .end local v0           #gprs:Landroid/net/NetworkInfo;
    .end local v1           #state:Landroid/net/NetworkInfo$State;
    :cond_0
    :goto_0
    return-void

    .line 372
    .restart local v0       #gprs:Landroid/net/NetworkInfo;
    .restart local v1       #state:Landroid/net/NetworkInfo$State;
    :cond_1
    const/4 v2, 0x1

    sput-boolean v2, Ltmsdk/common/module/powersaving/a;->Az:Z

    goto :goto_0

    .line 373
    :cond_2
    sget-object v2, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v1, v2, :cond_0

    .line 375
    iget-object v2, p0, Ltmsdk/common/module/powersaving/a;->Tag:Ljava/lang/String;

    const-string v3, "close gprs"

    invoke-static {v2, v3}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 377
    sget-boolean v2, Ltmsdk/common/module/powersaving/a;->AA:Z

    invoke-virtual {p0, v2}, Ltmsdk/common/module/powersaving/a;->onCloseMobileNetwork(Z)V

    .line 379
    sget-boolean v2, Ltmsdk/common/module/powersaving/a;->AA:Z

    if-eqz v2, :cond_3

    .line 381
    sput-boolean v4, Ltmsdk/common/module/powersaving/a;->AA:Z

    goto :goto_0

    .line 384
    :cond_3
    sput-boolean v4, Ltmsdk/common/module/powersaving/a;->Az:Z

    goto :goto_0
.end method

.method private e(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 391
    invoke-virtual {p0}, Ltmsdk/common/module/powersaving/a;->fL()Ltmsdk/common/module/powersaving/PowerSavingConfig;

    move-result-object v0

    .line 392
    .local v0, config:Ltmsdk/common/module/powersaving/PowerSavingConfig;
    const-string v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 393
    const-class v3, Ltmsdk/common/module/netsetting/NetSettingManager;

    invoke-static {v3}, Ltmsdk/common/creator/ManagerCreatorC;->getManager(Ljava/lang/Class;)Ltmsdk/common/creator/BaseManagerC;

    move-result-object v1

    check-cast v1, Ltmsdk/common/module/netsetting/NetSettingManager;

    .line 394
    .local v1, netSettingManager:Ltmsdk/common/module/netsetting/NetSettingManager;
    invoke-virtual {v1}, Ltmsdk/common/module/netsetting/NetSettingManager;->getBluetoothState()I

    move-result v2

    .line 396
    .local v2, state:I
    const/16 v3, 0xb

    if-ne v2, v3, :cond_1

    .line 398
    invoke-virtual {p0}, Ltmsdk/common/module/powersaving/a;->fK()Z

    move-result v3

    if-nez v3, :cond_0

    iget v3, v0, Ltmsdk/common/module/powersaving/PowerSavingConfig;->mBlueToothAutoCloseCondition:I

    and-int/lit8 v3, v3, 0x1

    if-eq v3, v6, :cond_0

    .line 401
    invoke-static {p1}, Ltmsdk/common/module/powersaving/BlueToothHelper;->q(Landroid/content/Context;)Ltmsdk/common/module/powersaving/BlueToothHelper;

    move-result-object v3

    invoke-virtual {v3, v0}, Ltmsdk/common/module/powersaving/BlueToothHelper;->a(Ltmsdk/common/module/powersaving/PowerSavingConfig;)V

    .line 436
    .end local v1           #netSettingManager:Ltmsdk/common/module/netsetting/NetSettingManager;
    .end local v2           #state:I
    :cond_0
    :goto_0
    return-void

    .line 403
    .restart local v1       #netSettingManager:Ltmsdk/common/module/netsetting/NetSettingManager;
    .restart local v2       #state:I
    :cond_1
    const/16 v3, 0xd

    if-ne v2, v3, :cond_2

    .line 405
    invoke-static {p1}, Ltmsdk/common/module/powersaving/BlueToothHelper;->q(Landroid/content/Context;)Ltmsdk/common/module/powersaving/BlueToothHelper;

    move-result-object v3

    invoke-virtual {v3}, Ltmsdk/common/module/powersaving/BlueToothHelper;->fN()V

    goto :goto_0

    .line 406
    :cond_2
    const/16 v3, 0xc

    if-ne v2, v3, :cond_4

    .line 408
    sget-boolean v3, Ltmsdk/common/module/powersaving/a;->AC:Z

    invoke-virtual {p0, v3}, Ltmsdk/common/module/powersaving/a;->onOpenBlueTooth(Z)V

    .line 410
    sget-boolean v3, Ltmsdk/common/module/powersaving/a;->AC:Z

    if-eqz v3, :cond_3

    .line 412
    sput-boolean v5, Ltmsdk/common/module/powersaving/a;->AC:Z

    goto :goto_0

    .line 415
    :cond_3
    sput-boolean v6, Ltmsdk/common/module/powersaving/a;->AB:Z

    goto :goto_0

    .line 416
    :cond_4
    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    .line 418
    sget-boolean v3, Ltmsdk/common/module/powersaving/a;->AC:Z

    invoke-virtual {p0, v3}, Ltmsdk/common/module/powersaving/a;->onCloseBlueTooth(Z)V

    .line 420
    sget-boolean v3, Ltmsdk/common/module/powersaving/a;->AC:Z

    if-eqz v3, :cond_5

    .line 422
    sput-boolean v5, Ltmsdk/common/module/powersaving/a;->AC:Z

    goto :goto_0

    .line 425
    :cond_5
    sput-boolean v5, Ltmsdk/common/module/powersaving/a;->AB:Z

    goto :goto_0

    .line 428
    .end local v1           #netSettingManager:Ltmsdk/common/module/netsetting/NetSettingManager;
    .end local v2           #state:I
    :cond_6
    const-string v3, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 429
    iget-object v3, p0, Ltmsdk/common/module/powersaving/a;->Tag:Ljava/lang/String;

    const-string v4, "ACTION_ACL_CONNECTED"

    invoke-static {v3, v4}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 430
    invoke-static {p1}, Ltmsdk/common/module/powersaving/BlueToothHelper;->q(Landroid/content/Context;)Ltmsdk/common/module/powersaving/BlueToothHelper;

    move-result-object v3

    iput-boolean v6, v3, Ltmsdk/common/module/powersaving/BlueToothHelper;->AK:Z

    goto :goto_0

    .line 432
    :cond_7
    const-string v3, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 433
    iget-object v3, p0, Ltmsdk/common/module/powersaving/a;->Tag:Ljava/lang/String;

    const-string v4, "ACTION_ACL_DISCONNECTED"

    invoke-static {v3, v4}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 434
    invoke-static {p1}, Ltmsdk/common/module/powersaving/BlueToothHelper;->q(Landroid/content/Context;)Ltmsdk/common/module/powersaving/BlueToothHelper;

    move-result-object v3

    iput-boolean v5, v3, Ltmsdk/common/module/powersaving/BlueToothHelper;->AK:Z

    goto :goto_0
.end method


# virtual methods
.method public abstract fK()Z
.end method

.method public abstract fL()Ltmsdk/common/module/powersaving/PowerSavingConfig;
.end method

.method public abstract onBatteryLevelChanged(Landroid/content/Intent;)V
.end method

.method public abstract onCloseBlueTooth(Z)V
.end method

.method public abstract onCloseMobileNetwork(Z)V
.end method

.method public abstract onCloseWifi(Z)V
.end method

.method public abstract onFinishBatteryCharging(Landroid/content/Intent;)V
.end method

.method public abstract onOpenBlueTooth(Z)V
.end method

.method public abstract onOpenMobileNetwork(Z)V
.end method

.method public abstract onOpenWifi(Z)V
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 64
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 67
    :cond_0
    invoke-direct {p0, p1, p2}, Ltmsdk/common/module/powersaving/a;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 80
    :cond_1
    :goto_0
    return-void

    .line 68
    :cond_2
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 69
    invoke-direct {p0, p1, p2}, Ltmsdk/common/module/powersaving/a;->b(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 70
    :cond_3
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 72
    :cond_4
    invoke-direct {p0, p1, p2}, Ltmsdk/common/module/powersaving/a;->c(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 73
    :cond_5
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 74
    invoke-direct {p0, p1, p2}, Ltmsdk/common/module/powersaving/a;->d(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 75
    :cond_6
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 78
    :cond_7
    invoke-direct {p0, p1, p2}, Ltmsdk/common/module/powersaving/a;->e(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public abstract onStartBatteryCharging(Landroid/content/Intent;)V
.end method

.method public abstract onStopBatteryCharging(Landroid/content/Intent;)V
.end method
