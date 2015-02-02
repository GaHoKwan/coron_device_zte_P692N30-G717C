.class Lcom/amoi/AmoiEngineerMode/base/BatteryBase$2;
.super Landroid/content/BroadcastReceiver;
.source "BatteryBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amoi/AmoiEngineerMode/base/BatteryBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amoi/AmoiEngineerMode/base/BatteryBase;


# direct methods
.method constructor <init>(Lcom/amoi/AmoiEngineerMode/base/BatteryBase;)V
    .locals 0
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/amoi/AmoiEngineerMode/base/BatteryBase$2;->this$0:Lcom/amoi/AmoiEngineerMode/base/BatteryBase;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 22
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 98
    const-string v18, "BatteryInfo"

    const-string v19, "receiver init............ "

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 100
    .local v3, action:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/base/BatteryBase$2;->this$0:Lcom/amoi/AmoiEngineerMode/base/BatteryBase;

    move-object/from16 v18, v0

    #getter for: Lcom/amoi/AmoiEngineerMode/base/BatteryBase;->mDoul_battery:Z
    invoke-static/range {v18 .. v18}, Lcom/amoi/AmoiEngineerMode/base/BatteryBase;->access$000(Lcom/amoi/AmoiEngineerMode/base/BatteryBase;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 101
    const-string v18, "android.intent.action.ACTION_DUAL_BATTERY_CHANGED"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 102
    const-string v18, "power_bat"

    const/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    .line 103
    .local v16, supply_power_battery:I
    const-string v18, "present_bat"

    const/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 104
    .local v8, battery_present_status:I
    const-string v18, "batA_level"

    const/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 105
    .local v4, batA_level:I
    const-string v18, "batB_level"

    const/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 106
    .local v6, batB_level:I
    const-string v18, "batA_voltage"

    const/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 107
    .local v5, batA_voltage:I
    const-string v18, "batB_voltage"

    const/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 108
    .local v7, batB_voltage:I
    const-string v18, "pmic_change"

    const/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 109
    .local v12, pmic_change_status:I
    const-string v18, "internal_change"

    const/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 110
    .local v9, internal_change_status:I
    const-string v18, "allow_set"

    const/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 111
    const-string v18, "temperature"

    const/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 112
    const-string v18, "preserve2"

    const/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 113
    .local v13, pmic_id:I
    if-nez v8, :cond_b

    .line 114
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/base/BatteryBase$2;->this$0:Lcom/amoi/AmoiEngineerMode/base/BatteryBase;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/base/BatteryBase$2;->this$0:Lcom/amoi/AmoiEngineerMode/base/BatteryBase;

    move-object/from16 v20, v0

    const v21, 0x7f0600bb

    invoke-virtual/range {v20 .. v21}, Lcom/amoi/AmoiEngineerMode/base/BatteryBase;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "%"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    #setter for: Lcom/amoi/AmoiEngineerMode/base/BatteryBase;->battery:Ljava/lang/String;
    invoke-static/range {v18 .. v19}, Lcom/amoi/AmoiEngineerMode/base/BatteryBase;->access$402(Lcom/amoi/AmoiEngineerMode/base/BatteryBase;Ljava/lang/String;)Ljava/lang/String;

    .line 115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/base/BatteryBase$2;->this$0:Lcom/amoi/AmoiEngineerMode/base/BatteryBase;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/base/BatteryBase$2;->this$0:Lcom/amoi/AmoiEngineerMode/base/BatteryBase;

    move-object/from16 v20, v0

    const v21, 0x7f0600bc

    invoke-virtual/range {v20 .. v21}, Lcom/amoi/AmoiEngineerMode/base/BatteryBase;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "%"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/amoi/AmoiEngineerMode/base/BatteryBase;->access$484(Lcom/amoi/AmoiEngineerMode/base/BatteryBase;Ljava/lang/Object;)Ljava/lang/String;

    .line 117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/base/BatteryBase$2;->this$0:Lcom/amoi/AmoiEngineerMode/base/BatteryBase;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/base/BatteryBase$2;->this$0:Lcom/amoi/AmoiEngineerMode/base/BatteryBase;

    move-object/from16 v20, v0

    const v21, 0x7f0600ca

    invoke-virtual/range {v20 .. v21}, Lcom/amoi/AmoiEngineerMode/base/BatteryBase;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "mV"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    #setter for: Lcom/amoi/AmoiEngineerMode/base/BatteryBase;->mOtherInfoString:Ljava/lang/String;
    invoke-static/range {v18 .. v19}, Lcom/amoi/AmoiEngineerMode/base/BatteryBase;->access$102(Lcom/amoi/AmoiEngineerMode/base/BatteryBase;Ljava/lang/String;)Ljava/lang/String;

    .line 119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/base/BatteryBase$2;->this$0:Lcom/amoi/AmoiEngineerMode/base/BatteryBase;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/base/BatteryBase$2;->this$0:Lcom/amoi/AmoiEngineerMode/base/BatteryBase;

    move-object/from16 v20, v0

    const v21, 0x7f0600cb

    invoke-virtual/range {v20 .. v21}, Lcom/amoi/AmoiEngineerMode/base/BatteryBase;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "mV"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/amoi/AmoiEngineerMode/base/BatteryBase;->access$184(Lcom/amoi/AmoiEngineerMode/base/BatteryBase;Ljava/lang/Object;)Ljava/lang/String;

    .line 130
    :cond_0
    :goto_0
    if-nez v16, :cond_1

    .line 131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/base/BatteryBase$2;->this$0:Lcom/amoi/AmoiEngineerMode/base/BatteryBase;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/base/BatteryBase$2;->this$0:Lcom/amoi/AmoiEngineerMode/base/BatteryBase;

    move-object/from16 v20, v0

    const v21, 0x7f0600c3

    invoke-virtual/range {v20 .. v21}, Lcom/amoi/AmoiEngineerMode/base/BatteryBase;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/amoi/AmoiEngineerMode/base/BatteryBase;->access$184(Lcom/amoi/AmoiEngineerMode/base/BatteryBase;Ljava/lang/Object;)Ljava/lang/String;

    .line 133
    :cond_1
    const/16 v18, 0x1

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/base/BatteryBase$2;->this$0:Lcom/amoi/AmoiEngineerMode/base/BatteryBase;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/base/BatteryBase$2;->this$0:Lcom/amoi/AmoiEngineerMode/base/BatteryBase;

    move-object/from16 v20, v0

    const v21, 0x7f0600c4

    invoke-virtual/range {v20 .. v21}, Lcom/amoi/AmoiEngineerMode/base/BatteryBase;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/amoi/AmoiEngineerMode/base/BatteryBase;->access$184(Lcom/amoi/AmoiEngineerMode/base/BatteryBase;Ljava/lang/Object;)Ljava/lang/String;

    .line 136
    :cond_2
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v12, v0, :cond_3

    .line 137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/base/BatteryBase$2;->this$0:Lcom/amoi/AmoiEngineerMode/base/BatteryBase;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/base/BatteryBase$2;->this$0:Lcom/amoi/AmoiEngineerMode/base/BatteryBase;

    move-object/from16 v20, v0

    const v21, 0x7f0600c1

    invoke-virtual/range {v20 .. v21}, Lcom/amoi/AmoiEngineerMode/base/BatteryBase;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/amoi/AmoiEngineerMode/base/BatteryBase;->access$184(Lcom/amoi/AmoiEngineerMode/base/BatteryBase;Ljava/lang/Object;)Ljava/lang/String;

    .line 139
    :cond_3
    const/16 v18, 0x2

    move/from16 v0, v18

    if-ne v12, v0, :cond_4

    .line 140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/base/BatteryBase$2;->this$0:Lcom/amoi/AmoiEngineerMode/base/BatteryBase;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/base/BatteryBase$2;->this$0:Lcom/amoi/AmoiEngineerMode/base/BatteryBase;

    move-object/from16 v20, v0

    const v21, 0x7f0600c2

    invoke-virtual/range {v20 .. v21}, Lcom/amoi/AmoiEngineerMode/base/BatteryBase;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/amoi/AmoiEngineerMode/base/BatteryBase;->access$184(Lcom/amoi/AmoiEngineerMode/base/BatteryBase;Ljava/lang/Object;)Ljava/lang/String;

    .line 143
    :cond_4
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v9, v0, :cond_5

    .line 144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/base/BatteryBase$2;->this$0:Lcom/amoi/AmoiEngineerMode/base/BatteryBase;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/base/BatteryBase$2;->this$0:Lcom/amoi/AmoiEngineerMode/base/BatteryBase;

    move-object/from16 v20, v0

    const v21, 0x7f0600c6

    invoke-virtual/range {v20 .. v21}, Lcom/amoi/AmoiEngineerMode/base/BatteryBase;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/amoi/AmoiEngineerMode/base/BatteryBase;->access$184(Lcom/amoi/AmoiEngineerMode/base/BatteryBase;Ljava/lang/Object;)Ljava/lang/String;

    .line 146
    :cond_5
    const/16 v18, 0x2

    move/from16 v0, v18

    if-ne v9, v0, :cond_6

    .line 147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/base/BatteryBase$2;->this$0:Lcom/amoi/AmoiEngineerMode/base/BatteryBase;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/base/BatteryBase$2;->this$0:Lcom/amoi/AmoiEngineerMode/base/BatteryBase;

    move-object/from16 v20, v0

    const v21, 0x7f0600c7

    invoke-virtual/range {v20 .. v21}, Lcom/amoi/AmoiEngineerMode/base/BatteryBase;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/amoi/AmoiEngineerMode/base/BatteryBase;->access$184(Lcom/amoi/AmoiEngineerMode/base/BatteryBase;Ljava/lang/Object;)Ljava/lang/String;

    .line 149
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/base/BatteryBase$2;->this$0:Lcom/amoi/AmoiEngineerMode/base/BatteryBase;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "\npmic_id="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {v13}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/amoi/AmoiEngineerMode/base/BatteryBase;->access$184(Lcom/amoi/AmoiEngineerMode/base/BatteryBase;Ljava/lang/Object;)Ljava/lang/String;

    .line 151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/base/BatteryBase$2;->this$0:Lcom/amoi/AmoiEngineerMode/base/BatteryBase;

    move-object/from16 v18, v0

    #getter for: Lcom/amoi/AmoiEngineerMode/base/BatteryBase;->mHandler:Landroid/os/Handler;
    invoke-static/range {v18 .. v18}, Lcom/amoi/AmoiEngineerMode/base/BatteryBase;->access$800(Lcom/amoi/AmoiEngineerMode/base/BatteryBase;)Landroid/os/Handler;

    move-result-object v18

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/base/BatteryBase$2;->this$0:Lcom/amoi/AmoiEngineerMode/base/BatteryBase;

    move-object/from16 v18, v0

    #getter for: Lcom/amoi/AmoiEngineerMode/base/BatteryBase;->mHandler:Landroid/os/Handler;
    invoke-static/range {v18 .. v18}, Lcom/amoi/AmoiEngineerMode/base/BatteryBase;->access$800(Lcom/amoi/AmoiEngineerMode/base/BatteryBase;)Landroid/os/Handler;

    move-result-object v18

    const/16 v19, 0x2

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 156
    .end local v4           #batA_level:I
    .end local v5           #batA_voltage:I
    .end local v6           #batB_level:I
    .end local v7           #batB_voltage:I
    .end local v8           #battery_present_status:I
    .end local v9           #internal_change_status:I
    .end local v12           #pmic_change_status:I
    .end local v13           #pmic_id:I
    .end local v16           #supply_power_battery:I
    :cond_7
    const-string v18, "android.intent.action.BATTERY_CHANGED"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_a

    .line 157
    const-string v18, "level"

    const/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 158
    .local v10, level:I
    const-string v18, "scale"

    const/16 v19, 0x64

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    .line 159
    .local v14, scale:I
    const-string v18, "temperature"

    const/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    div-int/lit8 v17, v18, 0xa

    .line 160
    .local v17, temperature:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/base/BatteryBase$2;->this$0:Lcom/amoi/AmoiEngineerMode/base/BatteryBase;

    move-object/from16 v18, v0

    #getter for: Lcom/amoi/AmoiEngineerMode/base/BatteryBase;->mDoul_battery:Z
    invoke-static/range {v18 .. v18}, Lcom/amoi/AmoiEngineerMode/base/BatteryBase;->access$000(Lcom/amoi/AmoiEngineerMode/base/BatteryBase;)Z

    move-result v18

    if-nez v18, :cond_8

    .line 161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/base/BatteryBase$2;->this$0:Lcom/amoi/AmoiEngineerMode/base/BatteryBase;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    mul-int/lit8 v20, v10, 0x64

    div-int v20, v20, v14

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "%"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    #setter for: Lcom/amoi/AmoiEngineerMode/base/BatteryBase;->battery:Ljava/lang/String;
    invoke-static/range {v18 .. v19}, Lcom/amoi/AmoiEngineerMode/base/BatteryBase;->access$402(Lcom/amoi/AmoiEngineerMode/base/BatteryBase;Ljava/lang/String;)Ljava/lang/String;

    .line 163
    :cond_8
    const-string v18, "plugged"

    const/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 164
    .local v11, plugType:I
    const-string v18, "status"

    const/16 v19, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    .line 165
    .local v15, status:I
    const-string v18, "BatteryInfo"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "status:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    const/16 v18, 0x2

    move/from16 v0, v18

    if-ne v15, v0, :cond_e

    .line 167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/base/BatteryBase$2;->this$0:Lcom/amoi/AmoiEngineerMode/base/BatteryBase;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/base/BatteryBase$2;->this$0:Lcom/amoi/AmoiEngineerMode/base/BatteryBase;

    move-object/from16 v19, v0

    const v20, 0x7f060099

    invoke-virtual/range {v19 .. v20}, Lcom/amoi/AmoiEngineerMode/base/BatteryBase;->getString(I)Ljava/lang/String;

    move-result-object v19

    #setter for: Lcom/amoi/AmoiEngineerMode/base/BatteryBase;->statusString:Ljava/lang/String;
    invoke-static/range {v18 .. v19}, Lcom/amoi/AmoiEngineerMode/base/BatteryBase;->access$602(Lcom/amoi/AmoiEngineerMode/base/BatteryBase;Ljava/lang/String;)Ljava/lang/String;

    .line 168
    if-lez v11, :cond_9

    .line 169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/base/BatteryBase$2;->this$0:Lcom/amoi/AmoiEngineerMode/base/BatteryBase;

    move-object/from16 v19, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/base/BatteryBase$2;->this$0:Lcom/amoi/AmoiEngineerMode/base/BatteryBase;

    move-object/from16 v20, v0

    #getter for: Lcom/amoi/AmoiEngineerMode/base/BatteryBase;->statusString:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/amoi/AmoiEngineerMode/base/BatteryBase;->access$600(Lcom/amoi/AmoiEngineerMode/base/BatteryBase;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, " "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/base/BatteryBase$2;->this$0:Lcom/amoi/AmoiEngineerMode/base/BatteryBase;

    move-object/from16 v21, v0

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v11, v0, :cond_d

    const v18, 0x7f06009a

    :goto_1
    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/amoi/AmoiEngineerMode/base/BatteryBase;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    #setter for: Lcom/amoi/AmoiEngineerMode/base/BatteryBase;->statusString:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/amoi/AmoiEngineerMode/base/BatteryBase;->access$602(Lcom/amoi/AmoiEngineerMode/base/BatteryBase;Ljava/lang/String;)Ljava/lang/String;

    .line 183
    :cond_9
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/base/BatteryBase$2;->this$0:Lcom/amoi/AmoiEngineerMode/base/BatteryBase;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/base/BatteryBase$2;->this$0:Lcom/amoi/AmoiEngineerMode/base/BatteryBase;

    move-object/from16 v20, v0

    const v21, 0x7f0600dc

    invoke-virtual/range {v20 .. v21}, Lcom/amoi/AmoiEngineerMode/base/BatteryBase;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\u00b0"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/amoi/AmoiEngineerMode/base/BatteryBase;->access$684(Lcom/amoi/AmoiEngineerMode/base/BatteryBase;Ljava/lang/Object;)Ljava/lang/String;

    .line 184
    const-string v18, "BatteryInfo"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "statusString:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/base/BatteryBase$2;->this$0:Lcom/amoi/AmoiEngineerMode/base/BatteryBase;

    move-object/from16 v20, v0

    #getter for: Lcom/amoi/AmoiEngineerMode/base/BatteryBase;->statusString:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/amoi/AmoiEngineerMode/base/BatteryBase;->access$600(Lcom/amoi/AmoiEngineerMode/base/BatteryBase;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/base/BatteryBase$2;->this$0:Lcom/amoi/AmoiEngineerMode/base/BatteryBase;

    move-object/from16 v18, v0

    #getter for: Lcom/amoi/AmoiEngineerMode/base/BatteryBase;->mHandler:Landroid/os/Handler;
    invoke-static/range {v18 .. v18}, Lcom/amoi/AmoiEngineerMode/base/BatteryBase;->access$800(Lcom/amoi/AmoiEngineerMode/base/BatteryBase;)Landroid/os/Handler;

    move-result-object v18

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/base/BatteryBase$2;->this$0:Lcom/amoi/AmoiEngineerMode/base/BatteryBase;

    move-object/from16 v18, v0

    #getter for: Lcom/amoi/AmoiEngineerMode/base/BatteryBase;->mHandler:Landroid/os/Handler;
    invoke-static/range {v18 .. v18}, Lcom/amoi/AmoiEngineerMode/base/BatteryBase;->access$800(Lcom/amoi/AmoiEngineerMode/base/BatteryBase;)Landroid/os/Handler;

    move-result-object v18

    const/16 v19, 0x2

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 189
    .end local v10           #level:I
    .end local v11           #plugType:I
    .end local v14           #scale:I
    .end local v15           #status:I
    .end local v17           #temperature:I
    :cond_a
    return-void

    .line 121
    .restart local v4       #batA_level:I
    .restart local v5       #batA_voltage:I
    .restart local v6       #batB_level:I
    .restart local v7       #batB_voltage:I
    .restart local v8       #battery_present_status:I
    .restart local v9       #internal_change_status:I
    .restart local v12       #pmic_change_status:I
    .restart local v13       #pmic_id:I
    .restart local v16       #supply_power_battery:I
    :cond_b
    const/16 v18, 0x2

    move/from16 v0, v18

    if-ne v8, v0, :cond_c

    .line 122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/base/BatteryBase$2;->this$0:Lcom/amoi/AmoiEngineerMode/base/BatteryBase;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/base/BatteryBase$2;->this$0:Lcom/amoi/AmoiEngineerMode/base/BatteryBase;

    move-object/from16 v20, v0

    const v21, 0x7f0600bb

    invoke-virtual/range {v20 .. v21}, Lcom/amoi/AmoiEngineerMode/base/BatteryBase;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "%"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    #setter for: Lcom/amoi/AmoiEngineerMode/base/BatteryBase;->battery:Ljava/lang/String;
    invoke-static/range {v18 .. v19}, Lcom/amoi/AmoiEngineerMode/base/BatteryBase;->access$402(Lcom/amoi/AmoiEngineerMode/base/BatteryBase;Ljava/lang/String;)Ljava/lang/String;

    .line 123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/base/BatteryBase$2;->this$0:Lcom/amoi/AmoiEngineerMode/base/BatteryBase;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/base/BatteryBase$2;->this$0:Lcom/amoi/AmoiEngineerMode/base/BatteryBase;

    move-object/from16 v20, v0

    const v21, 0x7f0600ca

    invoke-virtual/range {v20 .. v21}, Lcom/amoi/AmoiEngineerMode/base/BatteryBase;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "V"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    #setter for: Lcom/amoi/AmoiEngineerMode/base/BatteryBase;->mOtherInfoString:Ljava/lang/String;
    invoke-static/range {v18 .. v19}, Lcom/amoi/AmoiEngineerMode/base/BatteryBase;->access$102(Lcom/amoi/AmoiEngineerMode/base/BatteryBase;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 125
    :cond_c
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v8, v0, :cond_0

    .line 126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/base/BatteryBase$2;->this$0:Lcom/amoi/AmoiEngineerMode/base/BatteryBase;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/base/BatteryBase$2;->this$0:Lcom/amoi/AmoiEngineerMode/base/BatteryBase;

    move-object/from16 v20, v0

    const v21, 0x7f0600bc

    invoke-virtual/range {v20 .. v21}, Lcom/amoi/AmoiEngineerMode/base/BatteryBase;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "%"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    #setter for: Lcom/amoi/AmoiEngineerMode/base/BatteryBase;->battery:Ljava/lang/String;
    invoke-static/range {v18 .. v19}, Lcom/amoi/AmoiEngineerMode/base/BatteryBase;->access$402(Lcom/amoi/AmoiEngineerMode/base/BatteryBase;Ljava/lang/String;)Ljava/lang/String;

    .line 127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/base/BatteryBase$2;->this$0:Lcom/amoi/AmoiEngineerMode/base/BatteryBase;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/base/BatteryBase$2;->this$0:Lcom/amoi/AmoiEngineerMode/base/BatteryBase;

    move-object/from16 v20, v0

    const v21, 0x7f0600cb

    invoke-virtual/range {v20 .. v21}, Lcom/amoi/AmoiEngineerMode/base/BatteryBase;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "V"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    #setter for: Lcom/amoi/AmoiEngineerMode/base/BatteryBase;->mOtherInfoString:Ljava/lang/String;
    invoke-static/range {v18 .. v19}, Lcom/amoi/AmoiEngineerMode/base/BatteryBase;->access$102(Lcom/amoi/AmoiEngineerMode/base/BatteryBase;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 169
    .end local v4           #batA_level:I
    .end local v5           #batA_voltage:I
    .end local v6           #batB_level:I
    .end local v7           #batB_voltage:I
    .end local v8           #battery_present_status:I
    .end local v9           #internal_change_status:I
    .end local v12           #pmic_change_status:I
    .end local v13           #pmic_id:I
    .end local v16           #supply_power_battery:I
    .restart local v10       #level:I
    .restart local v11       #plugType:I
    .restart local v14       #scale:I
    .restart local v15       #status:I
    .restart local v17       #temperature:I
    :cond_d
    const v18, 0x7f06009b

    goto/16 :goto_1

    .line 174
    :cond_e
    const/16 v18, 0x3

    move/from16 v0, v18

    if-ne v15, v0, :cond_f

    .line 175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/base/BatteryBase$2;->this$0:Lcom/amoi/AmoiEngineerMode/base/BatteryBase;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/base/BatteryBase$2;->this$0:Lcom/amoi/AmoiEngineerMode/base/BatteryBase;

    move-object/from16 v19, v0

    const v20, 0x7f06009c

    invoke-virtual/range {v19 .. v20}, Lcom/amoi/AmoiEngineerMode/base/BatteryBase;->getString(I)Ljava/lang/String;

    move-result-object v19

    #setter for: Lcom/amoi/AmoiEngineerMode/base/BatteryBase;->statusString:Ljava/lang/String;
    invoke-static/range {v18 .. v19}, Lcom/amoi/AmoiEngineerMode/base/BatteryBase;->access$602(Lcom/amoi/AmoiEngineerMode/base/BatteryBase;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_2

    .line 176
    :cond_f
    const/16 v18, 0x4

    move/from16 v0, v18

    if-ne v15, v0, :cond_10

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/base/BatteryBase$2;->this$0:Lcom/amoi/AmoiEngineerMode/base/BatteryBase;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/base/BatteryBase$2;->this$0:Lcom/amoi/AmoiEngineerMode/base/BatteryBase;

    move-object/from16 v19, v0

    const v20, 0x7f06009d

    invoke-virtual/range {v19 .. v20}, Lcom/amoi/AmoiEngineerMode/base/BatteryBase;->getString(I)Ljava/lang/String;

    move-result-object v19

    #setter for: Lcom/amoi/AmoiEngineerMode/base/BatteryBase;->statusString:Ljava/lang/String;
    invoke-static/range {v18 .. v19}, Lcom/amoi/AmoiEngineerMode/base/BatteryBase;->access$602(Lcom/amoi/AmoiEngineerMode/base/BatteryBase;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_2

    .line 178
    :cond_10
    const/16 v18, 0x5

    move/from16 v0, v18

    if-ne v15, v0, :cond_11

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/base/BatteryBase$2;->this$0:Lcom/amoi/AmoiEngineerMode/base/BatteryBase;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/base/BatteryBase$2;->this$0:Lcom/amoi/AmoiEngineerMode/base/BatteryBase;

    move-object/from16 v19, v0

    const v20, 0x7f06009e

    invoke-virtual/range {v19 .. v20}, Lcom/amoi/AmoiEngineerMode/base/BatteryBase;->getString(I)Ljava/lang/String;

    move-result-object v19

    #setter for: Lcom/amoi/AmoiEngineerMode/base/BatteryBase;->statusString:Ljava/lang/String;
    invoke-static/range {v18 .. v19}, Lcom/amoi/AmoiEngineerMode/base/BatteryBase;->access$602(Lcom/amoi/AmoiEngineerMode/base/BatteryBase;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_2

    .line 181
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/base/BatteryBase$2;->this$0:Lcom/amoi/AmoiEngineerMode/base/BatteryBase;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/base/BatteryBase$2;->this$0:Lcom/amoi/AmoiEngineerMode/base/BatteryBase;

    move-object/from16 v19, v0

    const v20, 0x7f060098

    invoke-virtual/range {v19 .. v20}, Lcom/amoi/AmoiEngineerMode/base/BatteryBase;->getString(I)Ljava/lang/String;

    move-result-object v19

    #setter for: Lcom/amoi/AmoiEngineerMode/base/BatteryBase;->statusString:Ljava/lang/String;
    invoke-static/range {v18 .. v19}, Lcom/amoi/AmoiEngineerMode/base/BatteryBase;->access$602(Lcom/amoi/AmoiEngineerMode/base/BatteryBase;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_2
.end method
