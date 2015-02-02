.class Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo$2;
.super Landroid/content/BroadcastReceiver;
.source "BatteryInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;


# direct methods
.method constructor <init>(Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo$2;->this$0:Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 23
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 116
    const-string v19, "BatteryInfo"

    const-string v20, "receiver init............"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 118
    .local v3, action:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo$2;->this$0:Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;

    move-object/from16 v19, v0

    #getter for: Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;->mDoul_battery:Z
    invoke-static/range {v19 .. v19}, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;->access$000(Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 119
    const-string v19, "android.intent.action.ACTION_DUAL_BATTERY_CHANGED"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 120
    const-string v19, "power_bat"

    const/16 v20, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    .line 122
    .local v17, supply_power_battery:I
    const-string v19, "present_bat"

    const/16 v20, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 124
    .local v9, battery_present_status:I
    const-string v19, "batA_level"

    const/16 v20, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 125
    .local v5, batA_level:I
    const-string v19, "batB_level"

    const/16 v20, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 126
    .local v7, batB_level:I
    const-string v19, "batA_voltage"

    const/16 v20, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 127
    .local v6, batA_voltage:I
    const-string v19, "batB_voltage"

    const/16 v20, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 128
    .local v8, batB_voltage:I
    const-string v19, "pmic_change"

    const/16 v20, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 130
    .local v13, pmic_change_status:I
    const-string v19, "internal_change"

    const/16 v20, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 132
    .local v10, internal_change_status:I
    const-string v19, "allow_set"

    const/16 v20, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 134
    .local v4, allow_user_set_flag:I
    const-string v19, "temperature"

    const/16 v20, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    .line 135
    .local v18, temperature:I
    const-string v19, "preserve2"

    const/16 v20, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    .line 136
    .local v14, pmic_id:I
    if-nez v9, :cond_b

    .line 137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo$2;->this$0:Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo$2;->this$0:Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;

    move-object/from16 v21, v0

    const v22, 0x7f0600bb

    invoke-virtual/range {v21 .. v22}, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "%"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    #setter for: Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;->battery:Ljava/lang/String;
    invoke-static/range {v19 .. v20}, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;->access$402(Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo$2;->this$0:Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo$2;->this$0:Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;

    move-object/from16 v21, v0

    const v22, 0x7f0600bc

    invoke-virtual/range {v21 .. v22}, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "%"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;->access$484(Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;Ljava/lang/Object;)Ljava/lang/String;

    .line 141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo$2;->this$0:Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo$2;->this$0:Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;

    move-object/from16 v21, v0

    const v22, 0x7f0600ca

    invoke-virtual/range {v21 .. v22}, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "mV"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    #setter for: Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;->mOtherInfoString:Ljava/lang/String;
    invoke-static/range {v19 .. v20}, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;->access$102(Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo$2;->this$0:Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo$2;->this$0:Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;

    move-object/from16 v21, v0

    const v22, 0x7f0600cb

    invoke-virtual/range {v21 .. v22}, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "mV"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;->access$184(Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;Ljava/lang/Object;)Ljava/lang/String;

    .line 157
    :cond_0
    :goto_0
    if-nez v17, :cond_1

    .line 158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo$2;->this$0:Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo$2;->this$0:Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;

    move-object/from16 v21, v0

    const v22, 0x7f0600c3

    invoke-virtual/range {v21 .. v22}, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;->access$184(Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;Ljava/lang/Object;)Ljava/lang/String;

    .line 160
    :cond_1
    const/16 v19, 0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    .line 161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo$2;->this$0:Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo$2;->this$0:Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;

    move-object/from16 v21, v0

    const v22, 0x7f0600c4

    invoke-virtual/range {v21 .. v22}, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;->access$184(Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;Ljava/lang/Object;)Ljava/lang/String;

    .line 163
    :cond_2
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v13, v0, :cond_3

    .line 164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo$2;->this$0:Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo$2;->this$0:Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;

    move-object/from16 v21, v0

    const v22, 0x7f0600c1

    invoke-virtual/range {v21 .. v22}, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;->access$184(Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;Ljava/lang/Object;)Ljava/lang/String;

    .line 166
    :cond_3
    const/16 v19, 0x2

    move/from16 v0, v19

    if-ne v13, v0, :cond_4

    .line 167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo$2;->this$0:Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo$2;->this$0:Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;

    move-object/from16 v21, v0

    const v22, 0x7f0600c2

    invoke-virtual/range {v21 .. v22}, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;->access$184(Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;Ljava/lang/Object;)Ljava/lang/String;

    .line 170
    :cond_4
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v10, v0, :cond_5

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo$2;->this$0:Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo$2;->this$0:Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;

    move-object/from16 v21, v0

    const v22, 0x7f0600c6

    invoke-virtual/range {v21 .. v22}, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;->access$184(Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;Ljava/lang/Object;)Ljava/lang/String;

    .line 174
    :cond_5
    const/16 v19, 0x2

    move/from16 v0, v19

    if-ne v10, v0, :cond_6

    .line 175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo$2;->this$0:Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo$2;->this$0:Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;

    move-object/from16 v21, v0

    const v22, 0x7f0600c7

    invoke-virtual/range {v21 .. v22}, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;->access$184(Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;Ljava/lang/Object;)Ljava/lang/String;

    .line 178
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo$2;->this$0:Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "\npmic_id="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static {v14}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;->access$184(Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;Ljava/lang/Object;)Ljava/lang/String;

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo$2;->this$0:Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;

    move-object/from16 v19, v0

    #getter for: Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;->mHandler:Landroid/os/Handler;
    invoke-static/range {v19 .. v19}, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;->access$800(Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;)Landroid/os/Handler;

    move-result-object v19

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo$2;->this$0:Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;

    move-object/from16 v19, v0

    #getter for: Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;->mHandler:Landroid/os/Handler;
    invoke-static/range {v19 .. v19}, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;->access$800(Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;)Landroid/os/Handler;

    move-result-object v19

    const/16 v20, 0x2

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 185
    .end local v4           #allow_user_set_flag:I
    .end local v5           #batA_level:I
    .end local v6           #batA_voltage:I
    .end local v7           #batB_level:I
    .end local v8           #batB_voltage:I
    .end local v9           #battery_present_status:I
    .end local v10           #internal_change_status:I
    .end local v13           #pmic_change_status:I
    .end local v14           #pmic_id:I
    .end local v17           #supply_power_battery:I
    .end local v18           #temperature:I
    :cond_7
    const-string v19, "android.intent.action.BATTERY_CHANGED"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_a

    .line 186
    const-string v19, "level"

    const/16 v20, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 187
    .local v11, level:I
    const-string v19, "scale"

    const/16 v20, 0x64

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    .line 188
    .local v15, scale:I
    const-string v19, "temperature"

    const/16 v20, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v19

    div-int/lit8 v18, v19, 0xa

    .line 189
    .restart local v18       #temperature:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo$2;->this$0:Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;

    move-object/from16 v19, v0

    #getter for: Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;->mDoul_battery:Z
    invoke-static/range {v19 .. v19}, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;->access$000(Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;)Z

    move-result v19

    if-nez v19, :cond_8

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo$2;->this$0:Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    mul-int/lit8 v21, v11, 0x64

    div-int v21, v21, v15

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "%"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    #setter for: Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;->battery:Ljava/lang/String;
    invoke-static/range {v19 .. v20}, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;->access$402(Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 192
    :cond_8
    const-string v19, "plugged"

    const/16 v20, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 193
    .local v12, plugType:I
    const-string v19, "status"

    const/16 v20, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    .line 195
    .local v16, status:I
    const-string v19, "BatteryInfo"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "status:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    const/16 v19, 0x2

    move/from16 v0, v16

    move/from16 v1, v19

    if-ne v0, v1, :cond_e

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo$2;->this$0:Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo$2;->this$0:Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;

    move-object/from16 v20, v0

    const v21, 0x7f060099

    invoke-virtual/range {v20 .. v21}, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;->getString(I)Ljava/lang/String;

    move-result-object v20

    #setter for: Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;->statusString:Ljava/lang/String;
    invoke-static/range {v19 .. v20}, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;->access$602(Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 198
    if-lez v12, :cond_9

    .line 199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo$2;->this$0:Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;

    move-object/from16 v20, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo$2;->this$0:Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;

    move-object/from16 v21, v0

    #getter for: Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;->statusString:Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;->access$600(Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v21, " "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo$2;->this$0:Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;

    move-object/from16 v22, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v12, v0, :cond_d

    const v19, 0x7f06009a

    :goto_1
    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    #setter for: Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;->statusString:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;->access$602(Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 213
    :cond_9
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo$2;->this$0:Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo$2;->this$0:Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;

    move-object/from16 v21, v0

    const v22, 0x7f0600dc

    invoke-virtual/range {v21 .. v22}, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\u00b0"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;->access$684(Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;Ljava/lang/Object;)Ljava/lang/String;

    .line 215
    const-string v19, "BatteryInfo"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "statusString:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo$2;->this$0:Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;

    move-object/from16 v21, v0

    #getter for: Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;->statusString:Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;->access$600(Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo$2;->this$0:Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;

    move-object/from16 v19, v0

    #getter for: Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;->mHandler:Landroid/os/Handler;
    invoke-static/range {v19 .. v19}, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;->access$800(Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;)Landroid/os/Handler;

    move-result-object v19

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo$2;->this$0:Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;

    move-object/from16 v19, v0

    #getter for: Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;->mHandler:Landroid/os/Handler;
    invoke-static/range {v19 .. v19}, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;->access$800(Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;)Landroid/os/Handler;

    move-result-object v19

    const/16 v20, 0x2

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 220
    .end local v11           #level:I
    .end local v12           #plugType:I
    .end local v15           #scale:I
    .end local v16           #status:I
    .end local v18           #temperature:I
    :cond_a
    return-void

    .line 146
    .restart local v4       #allow_user_set_flag:I
    .restart local v5       #batA_level:I
    .restart local v6       #batA_voltage:I
    .restart local v7       #batB_level:I
    .restart local v8       #batB_voltage:I
    .restart local v9       #battery_present_status:I
    .restart local v10       #internal_change_status:I
    .restart local v13       #pmic_change_status:I
    .restart local v14       #pmic_id:I
    .restart local v17       #supply_power_battery:I
    .restart local v18       #temperature:I
    :cond_b
    const/16 v19, 0x2

    move/from16 v0, v19

    if-ne v9, v0, :cond_c

    .line 147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo$2;->this$0:Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo$2;->this$0:Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;

    move-object/from16 v21, v0

    const v22, 0x7f0600bb

    invoke-virtual/range {v21 .. v22}, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "%"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    #setter for: Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;->battery:Ljava/lang/String;
    invoke-static/range {v19 .. v20}, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;->access$402(Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo$2;->this$0:Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo$2;->this$0:Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;

    move-object/from16 v21, v0

    const v22, 0x7f0600ca

    invoke-virtual/range {v21 .. v22}, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "V"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    #setter for: Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;->mOtherInfoString:Ljava/lang/String;
    invoke-static/range {v19 .. v20}, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;->access$102(Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 151
    :cond_c
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v9, v0, :cond_0

    .line 152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo$2;->this$0:Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo$2;->this$0:Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;

    move-object/from16 v21, v0

    const v22, 0x7f0600bc

    invoke-virtual/range {v21 .. v22}, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "%"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    #setter for: Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;->battery:Ljava/lang/String;
    invoke-static/range {v19 .. v20}, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;->access$402(Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo$2;->this$0:Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo$2;->this$0:Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;

    move-object/from16 v21, v0

    const v22, 0x7f0600cb

    invoke-virtual/range {v21 .. v22}, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "V"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    #setter for: Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;->mOtherInfoString:Ljava/lang/String;
    invoke-static/range {v19 .. v20}, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;->access$102(Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 199
    .end local v4           #allow_user_set_flag:I
    .end local v5           #batA_level:I
    .end local v6           #batA_voltage:I
    .end local v7           #batB_level:I
    .end local v8           #batB_voltage:I
    .end local v9           #battery_present_status:I
    .end local v10           #internal_change_status:I
    .end local v13           #pmic_change_status:I
    .end local v14           #pmic_id:I
    .end local v17           #supply_power_battery:I
    .restart local v11       #level:I
    .restart local v12       #plugType:I
    .restart local v15       #scale:I
    .restart local v16       #status:I
    :cond_d
    const v19, 0x7f06009b

    goto/16 :goto_1

    .line 204
    :cond_e
    const/16 v19, 0x3

    move/from16 v0, v16

    move/from16 v1, v19

    if-ne v0, v1, :cond_f

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo$2;->this$0:Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo$2;->this$0:Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;

    move-object/from16 v20, v0

    const v21, 0x7f06009c

    invoke-virtual/range {v20 .. v21}, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;->getString(I)Ljava/lang/String;

    move-result-object v20

    #setter for: Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;->statusString:Ljava/lang/String;
    invoke-static/range {v19 .. v20}, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;->access$602(Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_2

    .line 206
    :cond_f
    const/16 v19, 0x4

    move/from16 v0, v16

    move/from16 v1, v19

    if-ne v0, v1, :cond_10

    .line 207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo$2;->this$0:Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo$2;->this$0:Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;

    move-object/from16 v20, v0

    const v21, 0x7f06009d

    invoke-virtual/range {v20 .. v21}, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;->getString(I)Ljava/lang/String;

    move-result-object v20

    #setter for: Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;->statusString:Ljava/lang/String;
    invoke-static/range {v19 .. v20}, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;->access$602(Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_2

    .line 208
    :cond_10
    const/16 v19, 0x5

    move/from16 v0, v16

    move/from16 v1, v19

    if-ne v0, v1, :cond_11

    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo$2;->this$0:Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo$2;->this$0:Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;

    move-object/from16 v20, v0

    const v21, 0x7f06009e

    invoke-virtual/range {v20 .. v21}, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;->getString(I)Ljava/lang/String;

    move-result-object v20

    #setter for: Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;->statusString:Ljava/lang/String;
    invoke-static/range {v19 .. v20}, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;->access$602(Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_2

    .line 211
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo$2;->this$0:Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo$2;->this$0:Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;

    move-object/from16 v20, v0

    const v21, 0x7f060098

    invoke-virtual/range {v20 .. v21}, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;->getString(I)Ljava/lang/String;

    move-result-object v20

    #setter for: Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;->statusString:Ljava/lang/String;
    invoke-static/range {v19 .. v20}, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;->access$602(Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_2
.end method
