.class public Lcom/mediatek/apst/target/service/NotifyService;
.super Landroid/app/IntentService;
.source "NotifyService.java"


# static fields
.field public static final SIM_ID:Ljava/lang/String; = "simid"


# instance fields
.field private mSim1OK:Ljava/lang/Boolean;

.field private mSim2OK:Ljava/lang/Boolean;

.field private mSim3OK:Ljava/lang/Boolean;

.field private mSim4OK:Ljava/lang/Boolean;

.field private mSimOK:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    const-string v0, "NotifyService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method private onSimStatusChange(Landroid/content/Intent;)V
    .locals 29
    .parameter "intent"

    .prologue
    .line 86
    const-string v26, "Action"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 87
    .local v25, strAction:Ljava/lang/String;
    if-eqz v25, :cond_0

    .line 88
    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aput-object p1, v26, v27

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "strAction:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/mediatek/apst/target/util/Debugger;->logI([Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    :cond_0
    const/4 v8, 0x0

    .line 91
    .local v8, isSimInfoChanged:Z
    const/4 v4, 0x0

    .line 92
    .local v4, isSim1InfoChanged:Z
    const/4 v5, 0x0

    .line 93
    .local v5, isSim2InfoChanged:Z
    const/4 v6, 0x0

    .line 94
    .local v6, isSim3InfoChanged:Z
    const/4 v7, 0x0

    .line 95
    .local v7, isSim4InfoChanged:Z
    const-string v26, "android.intent.action.SIM_SETTING_INFO_CHANGED"

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_1

    .line 97
    const-string v26, "simid"

    const-wide/16 v27, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    move-wide/from16 v2, v27

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v21

    .line 98
    .local v21, simId:J
    move-wide/from16 v0, v21

    long-to-int v0, v0

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/mediatek/apst/target/util/Global;->getSimInfoById(I)Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;

    move-result-object v23

    .line 99
    .local v23, simInfo:Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;
    if-eqz v23, :cond_1

    .line 100
    invoke-virtual/range {v23 .. v23}, Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;->getSlotId()I

    move-result v24

    .line 101
    .local v24, slotId:I
    if-nez v24, :cond_a

    .line 102
    const/4 v4, 0x1

    .line 117
    .end local v21           #simId:J
    .end local v23           #simInfo:Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;
    .end local v24           #slotId:I
    :cond_1
    :goto_0
    const/16 v26, 0x0

    invoke-static/range {v26 .. v26}, Lcom/mediatek/apst/target/data/proxy/sysinfo/SystemInfoProxy;->getSimState(I)I

    move-result v11

    .line 118
    .local v11, sim1State:I
    const/16 v26, 0x1

    invoke-static/range {v26 .. v26}, Lcom/mediatek/apst/target/data/proxy/sysinfo/SystemInfoProxy;->getSimState(I)I

    move-result v14

    .line 119
    .local v14, sim2State:I
    const/16 v26, 0x2

    invoke-static/range {v26 .. v26}, Lcom/mediatek/apst/target/data/proxy/sysinfo/SystemInfoProxy;->getSimState(I)I

    move-result v17

    .line 120
    .local v17, sim3State:I
    const/16 v26, 0x3

    invoke-static/range {v26 .. v26}, Lcom/mediatek/apst/target/data/proxy/sysinfo/SystemInfoProxy;->getSimState(I)I

    move-result v20

    .line 122
    .local v20, sim4State:I
    invoke-static {v11}, Lcom/mediatek/apst/target/data/proxy/sysinfo/SystemInfoProxy;->isSimAccessible(I)Z

    move-result v10

    .line 123
    .local v10, sim1OK:Z
    invoke-static {v14}, Lcom/mediatek/apst/target/data/proxy/sysinfo/SystemInfoProxy;->isSimAccessible(I)Z

    move-result v13

    .line 124
    .local v13, sim2OK:Z
    invoke-static/range {v17 .. v17}, Lcom/mediatek/apst/target/data/proxy/sysinfo/SystemInfoProxy;->isSimAccessible(I)Z

    move-result v16

    .line 125
    .local v16, sim3OK:Z
    invoke-static/range {v20 .. v20}, Lcom/mediatek/apst/target/data/proxy/sysinfo/SystemInfoProxy;->isSimAccessible(I)Z

    move-result v19

    .line 127
    .local v19, sim4OK:Z
    const/16 v26, 0x0

    invoke-static/range {v26 .. v26}, Lcom/mediatek/apst/target/util/Global;->getSimInfoBySlot(I)Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;

    move-result-object v9

    .line 128
    .local v9, sim1Info:Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;
    const/16 v26, 0x1

    invoke-static/range {v26 .. v26}, Lcom/mediatek/apst/target/util/Global;->getSimInfoBySlot(I)Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;

    move-result-object v12

    .line 129
    .local v12, sim2Info:Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;
    const/16 v26, 0x2

    invoke-static/range {v26 .. v26}, Lcom/mediatek/apst/target/util/Global;->getSimInfoBySlot(I)Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;

    move-result-object v15

    .line 130
    .local v15, sim3Info:Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;
    const/16 v26, 0x3

    invoke-static/range {v26 .. v26}, Lcom/mediatek/apst/target/util/Global;->getSimInfoBySlot(I)Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;

    move-result-object v18

    .line 132
    .local v18, sim4Info:Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/apst/target/service/NotifyService;->mSim1OK:Ljava/lang/Boolean;

    move-object/from16 v26, v0

    if-eqz v26, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/apst/target/service/NotifyService;->mSim1OK:Ljava/lang/Boolean;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v26

    move/from16 v0, v26

    if-ne v0, v10, :cond_2

    if-eqz v4, :cond_3

    .line 134
    :cond_2
    new-instance v26, Lcom/mediatek/apst/target/event/Event;

    invoke-direct/range {v26 .. v26}, Lcom/mediatek/apst/target/event/Event;-><init>()V

    const-string v27, "state"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Lcom/mediatek/apst/target/event/Event;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/mediatek/apst/target/event/Event;

    move-result-object v26

    const-string v27, "sim_id"

    const/16 v28, 0x0

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Lcom/mediatek/apst/target/event/Event;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/mediatek/apst/target/event/Event;

    move-result-object v26

    const-string v27, "sim_info"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v9}, Lcom/mediatek/apst/target/event/Event;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/mediatek/apst/target/event/Event;

    move-result-object v26

    const-string v27, "sim_info_flag"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Lcom/mediatek/apst/target/event/Event;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/mediatek/apst/target/event/Event;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/mediatek/apst/target/event/EventDispatcher;->dispatchSimStateChangedEvent(Lcom/mediatek/apst/target/event/Event;)V

    .line 140
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/apst/target/service/NotifyService;->mSim2OK:Ljava/lang/Boolean;

    move-object/from16 v26, v0

    if-eqz v26, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/apst/target/service/NotifyService;->mSim2OK:Ljava/lang/Boolean;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v26

    move/from16 v0, v26

    if-ne v0, v13, :cond_4

    if-eqz v5, :cond_5

    .line 142
    :cond_4
    new-instance v26, Lcom/mediatek/apst/target/event/Event;

    invoke-direct/range {v26 .. v26}, Lcom/mediatek/apst/target/event/Event;-><init>()V

    const-string v27, "state"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Lcom/mediatek/apst/target/event/Event;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/mediatek/apst/target/event/Event;

    move-result-object v26

    const-string v27, "sim_id"

    const/16 v28, 0x1

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Lcom/mediatek/apst/target/event/Event;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/mediatek/apst/target/event/Event;

    move-result-object v26

    const-string v27, "sim_info"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v12}, Lcom/mediatek/apst/target/event/Event;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/mediatek/apst/target/event/Event;

    move-result-object v26

    const-string v27, "sim_info_flag"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Lcom/mediatek/apst/target/event/Event;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/mediatek/apst/target/event/Event;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/mediatek/apst/target/event/EventDispatcher;->dispatchSimStateChangedEvent(Lcom/mediatek/apst/target/event/Event;)V

    .line 148
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/apst/target/service/NotifyService;->mSim3OK:Ljava/lang/Boolean;

    move-object/from16 v26, v0

    if-eqz v26, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/apst/target/service/NotifyService;->mSim3OK:Ljava/lang/Boolean;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v26

    move/from16 v0, v26

    move/from16 v1, v16

    if-ne v0, v1, :cond_6

    if-eqz v4, :cond_7

    .line 150
    :cond_6
    new-instance v26, Lcom/mediatek/apst/target/event/Event;

    invoke-direct/range {v26 .. v26}, Lcom/mediatek/apst/target/event/Event;-><init>()V

    const-string v27, "state"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Lcom/mediatek/apst/target/event/Event;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/mediatek/apst/target/event/Event;

    move-result-object v26

    const-string v27, "sim_id"

    const/16 v28, 0x2

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Lcom/mediatek/apst/target/event/Event;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/mediatek/apst/target/event/Event;

    move-result-object v26

    const-string v27, "sim_info"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v15}, Lcom/mediatek/apst/target/event/Event;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/mediatek/apst/target/event/Event;

    move-result-object v26

    const-string v27, "sim_info_flag"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Lcom/mediatek/apst/target/event/Event;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/mediatek/apst/target/event/Event;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/mediatek/apst/target/event/EventDispatcher;->dispatchSimStateChangedEvent(Lcom/mediatek/apst/target/event/Event;)V

    .line 156
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/apst/target/service/NotifyService;->mSim4OK:Ljava/lang/Boolean;

    move-object/from16 v26, v0

    if-eqz v26, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/apst/target/service/NotifyService;->mSim4OK:Ljava/lang/Boolean;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v26

    move/from16 v0, v26

    move/from16 v1, v19

    if-ne v0, v1, :cond_8

    if-eqz v7, :cond_9

    .line 158
    :cond_8
    new-instance v26, Lcom/mediatek/apst/target/event/Event;

    invoke-direct/range {v26 .. v26}, Lcom/mediatek/apst/target/event/Event;-><init>()V

    const-string v27, "state"

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Lcom/mediatek/apst/target/event/Event;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/mediatek/apst/target/event/Event;

    move-result-object v26

    const-string v27, "sim_id"

    const/16 v28, 0x3

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Lcom/mediatek/apst/target/event/Event;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/mediatek/apst/target/event/Event;

    move-result-object v26

    const-string v27, "sim_info"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/apst/target/event/Event;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/mediatek/apst/target/event/Event;

    move-result-object v26

    const-string v27, "sim_info_flag"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Lcom/mediatek/apst/target/event/Event;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/mediatek/apst/target/event/Event;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/mediatek/apst/target/event/EventDispatcher;->dispatchSimStateChangedEvent(Lcom/mediatek/apst/target/event/Event;)V

    .line 164
    :cond_9
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mediatek/apst/target/service/NotifyService;->mSim1OK:Ljava/lang/Boolean;

    .line 165
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mediatek/apst/target/service/NotifyService;->mSim2OK:Ljava/lang/Boolean;

    .line 166
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mediatek/apst/target/service/NotifyService;->mSim3OK:Ljava/lang/Boolean;

    .line 167
    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mediatek/apst/target/service/NotifyService;->mSim4OK:Ljava/lang/Boolean;

    .line 186
    return-void

    .line 103
    .end local v9           #sim1Info:Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;
    .end local v10           #sim1OK:Z
    .end local v11           #sim1State:I
    .end local v12           #sim2Info:Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;
    .end local v13           #sim2OK:Z
    .end local v14           #sim2State:I
    .end local v15           #sim3Info:Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;
    .end local v16           #sim3OK:Z
    .end local v17           #sim3State:I
    .end local v18           #sim4Info:Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;
    .end local v19           #sim4OK:Z
    .end local v20           #sim4State:I
    .restart local v21       #simId:J
    .restart local v23       #simInfo:Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;
    .restart local v24       #slotId:I
    :cond_a
    const/16 v26, 0x1

    move/from16 v0, v26

    move/from16 v1, v24

    if-ne v0, v1, :cond_b

    .line 104
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 105
    :cond_b
    const/16 v26, 0x2

    move/from16 v0, v26

    move/from16 v1, v24

    if-ne v0, v1, :cond_c

    .line 106
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 107
    :cond_c
    const/16 v26, 0x3

    move/from16 v0, v26

    move/from16 v1, v24

    if-ne v0, v1, :cond_1

    .line 108
    const/4 v7, 0x1

    goto/16 :goto_0
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 71
    new-array v0, v3, [Ljava/lang/Object;

    aput-object p1, v0, v2

    const-string v1, "NotifyService --> onHandleIntent"

    invoke-static {v0, v1}, Lcom/mediatek/apst/target/util/Debugger;->logI([Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    if-eqz p1, :cond_0

    .line 74
    invoke-direct {p0, p1}, Lcom/mediatek/apst/target/service/NotifyService;->onSimStatusChange(Landroid/content/Intent;)V

    .line 78
    :goto_0
    new-array v0, v3, [Ljava/lang/Object;

    aput-object p1, v0, v2

    const-string v1, "NotifyService --> onHandleIntent End"

    invoke-static {v0, v1}, Lcom/mediatek/apst/target/util/Debugger;->logI([Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    return-void

    .line 76
    :cond_0
    new-array v0, v3, [Ljava/lang/Object;

    aput-object p1, v0, v2

    const-string v1, "intent is null"

    invoke-static {v0, v1}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method
