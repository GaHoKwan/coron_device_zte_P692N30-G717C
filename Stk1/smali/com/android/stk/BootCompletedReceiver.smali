.class public Lcom/android/stk/BootCompletedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BootCompletedReceiver.java"


# static fields
.field public static final EXTRA_VALUE_REMOVE_SIM:Ljava/lang/String; = "REMOVE"

.field public static final INTENT_KEY_DETECT_STATUS:Ljava/lang/String; = "simDetectStatus"

.field private static final LOGTAG:Ljava/lang/String; = "Stk-BCR "

.field private static mHasBootComplete:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/stk/BootCompletedReceiver;->mHasBootComplete:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private checkSimRadioState(Landroid/content/Context;I)Z
    .locals 6
    .parameter "context"
    .parameter "sim_id"

    .prologue
    const/4 v5, 0x3

    .line 90
    const/4 v0, -0x1

    .line 91
    .local v0, dualSimMode:I
    const/4 v1, 0x0

    .line 94
    .local v1, result:Z
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "dual_sim_mode_setting"

    const/4 v4, -0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 96
    const-string v2, "Stk-BCR "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dualSimMode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", sim id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    packed-switch p2, :pswitch_data_0

    .line 112
    :cond_0
    :goto_0
    return v1

    .line 100
    :pswitch_0
    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v5, :cond_0

    .line 102
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 106
    :pswitch_1
    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    if-ne v0, v5, :cond_0

    .line 108
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .line 97
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method isOnFlightMode(Landroid/content/Context;)Z
    .locals 7
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 116
    const/4 v1, 0x0

    .line 119
    .local v1, mode:I
    const-string v4, "ro.operator.optr"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 120
    .local v2, optr:Ljava/lang/String;
    if-eqz v2, :cond_1

    const-string v4, "OP02"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 121
    const-string v4, "[isOnFlightMode]working for OP02..."

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    :cond_0
    :goto_0
    return v3

    .line 126
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "airplane_mode_on"

    invoke-static {v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 132
    :goto_1
    const-string v4, "Stk-BCR "

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "airlane mode is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    if-eqz v1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v4, "Stk-BCR "

    const-string v5, "fail to get airlane mode"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 25
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 138
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    .line 139
    .local v5, action:Ljava/lang/String;
    invoke-static {}, Lcom/android/stk/StkAppInstaller;->getInstance()Lcom/android/stk/StkAppInstaller;

    move-result-object v6

    .line 140
    .local v6, appInstaller:Lcom/android/stk/StkAppInstaller;
    invoke-static {}, Lcom/android/stk/StkAppService;->getInstance()Lcom/android/stk/StkAppService;

    move-result-object v7

    .line 143
    .local v7, appService:Lcom/android/stk/StkAppService;
    const-string v22, "android.intent.action.BOOT_COMPLETED"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1

    .line 144
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 145
    .local v9, args:Landroid/os/Bundle;
    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 v19, v0

    .line 146
    .local v19, op:[I
    const/16 v22, 0x0

    const/16 v23, 0x5

    aput v23, v19, v22

    .line 147
    const/16 v22, 0x1

    sget v23, Lcom/android/stk/StkAppService;->STK_GEMINI_BROADCAST_ALL:I

    aput v23, v19, v22

    .line 148
    const-string v22, "op"

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 149
    new-instance v22, Landroid/content/Intent;

    const-class v23, Lcom/android/stk/StkAppService;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 163
    const/16 v22, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v6, v0, v1}, Lcom/android/stk/StkAppInstaller;->unInstall(Landroid/content/Context;I)V

    .line 167
    const/16 v22, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v6, v0, v1}, Lcom/android/stk/StkAppInstaller;->unInstall(Landroid/content/Context;I)V

    .line 171
    const/16 v22, 0x1

    sput-boolean v22, Lcom/android/stk/BootCompletedReceiver;->mHasBootComplete:Z

    .line 172
    const-string v22, "Stk-BCR "

    const-string v23, "[ACTION_BOOT_COMPLETED]"

    invoke-static/range {v22 .. v23}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    .end local v9           #args:Landroid/os/Bundle;
    .end local v19           #op:[I
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    const-string v22, "android.intent.action.SIM_STATE_CHANGED"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_11

    .line 174
    const-string v22, "Stk-BCR "

    const-string v23, "get ACTION_SIM_STATE_CHANGED"

    invoke-static/range {v22 .. v23}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string v22, "simId"

    const/16 v23, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 177
    .local v3, SIMID:I
    const-string v22, "ss"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 178
    .local v4, SIMStatus:Ljava/lang/String;
    const-string v22, "Stk-BCR "

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "[ACTION_SIM_STATE_CHANGED][simId] : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const-string v22, "Stk-BCR "

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "[ACTION_SIM_STATE_CHANGED][SimStatus] : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    if-ltz v3, :cond_9

    const/16 v22, 0x3

    move/from16 v0, v22

    if-gt v3, v0, :cond_9

    .line 182
    const-string v22, "Stk-BCR "

    const-string v23, "[ACTION_SIM_STATE_CHANGED][Feature GEMINI]"

    invoke-static/range {v22 .. v23}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 184
    .local v11, bundle:Landroid/os/Bundle;
    const-string v22, "affinity"

    const-string v23, "com.android.stk"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v11, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    new-instance v17, Landroid/content/Intent;

    invoke-direct/range {v17 .. v17}, Landroid/content/Intent;-><init>()V

    .line 186
    .local v17, it:Landroid/content/Intent;
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 188
    const-string v22, "Stk-BCR "

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "isSetupMenuCalled["

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-static {v3}, Lcom/android/stk/StkAppService;->isSetupMenuCalled(I)Z

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "]"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const-string v22, "Stk-BCR "

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "mHasBootComplete["

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    sget-boolean v24, Lcom/android/stk/BootCompletedReceiver;->mHasBootComplete:Z

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "]"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const/4 v10, 0x1

    .line 192
    .local v10, bUnInstall:Z
    invoke-static {v3}, Lcom/android/stk/StkAppService;->isSetupMenuCalled(I)Z

    move-result v22

    if-eqz v22, :cond_3

    const-string v22, "READY"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_2

    const-string v22, "IMSI"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_3

    .line 193
    :cond_2
    const/4 v10, 0x0

    .line 196
    :cond_3
    invoke-static {v3}, Lcom/android/stk/StkAppInstaller;->getIsInstalled(I)I

    move-result v8

    .line 197
    .local v8, app_state:I
    const/16 v22, -0x1

    move/from16 v0, v22

    if-ne v8, v0, :cond_a

    .line 199
    const-string v22, "Stk-BCR "

    const-string v23, "Initialize the app state in launcher"

    invoke-static/range {v22 .. v23}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    move-object/from16 v0, p1

    invoke-virtual {v6, v0, v3}, Lcom/android/stk/StkAppInstaller;->install(Landroid/content/Context;I)V

    .line 201
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lcom/android/stk/BootCompletedReceiver;->checkSimRadioState(Landroid/content/Context;I)Z

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_4

    const/16 v22, 0x1

    invoke-virtual/range {p0 .. p1}, Lcom/android/stk/BootCompletedReceiver;->isOnFlightMode(Landroid/content/Context;)Z

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_5

    .line 204
    :cond_4
    const-wide/16 v22, 0x64

    invoke-static/range {v22 .. v23}, Landroid/os/SystemClock;->sleep(J)V

    .line 205
    move-object/from16 v0, p1

    invoke-virtual {v6, v0, v3}, Lcom/android/stk/StkAppInstaller;->unInstall(Landroid/content/Context;I)V

    .line 216
    :cond_5
    :goto_1
    const-string v22, "READY"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_6

    const-string v22, "LOADED"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_d

    :cond_6
    sget-boolean v22, Lcom/android/stk/BootCompletedReceiver;->mHasBootComplete:Z

    if-eqz v22, :cond_d

    invoke-static {v3}, Lcom/android/internal/telephony/cat/CatService;->getSaveNewSetUpMenuFlag(I)Z

    move-result v22

    if-nez v22, :cond_d

    .line 222
    const-string v22, "LOADED"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_c

    .line 224
    const-string v22, "Stk-BCR "

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Disable the STK of sim"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    add-int/lit8 v24, v3, 0x1

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " because still not receive SET_UP_MENU after boot up"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v7, v3, v0}, Lcom/android/stk/StkAppService;->StkAvailable(II)V

    .line 226
    move-object/from16 v0, p1

    invoke-virtual {v6, v0, v3}, Lcom/android/stk/StkAppInstaller;->unInstall(Landroid/content/Context;I)V

    .line 227
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v7, v0, v3}, Lcom/android/stk/StkAppService;->setUserAccessState(ZI)V

    .line 228
    const/4 v10, 0x1

    .line 254
    :cond_7
    :goto_2
    if-eqz v7, :cond_10

    .line 256
    invoke-virtual {v7, v3}, Lcom/android/stk/StkAppService;->StkQueryAvailable(I)I

    move-result v12

    .line 257
    .local v12, currentState:I
    const-string v22, "Stk-BCR "

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "[ACTION_SIM_STATE_CHANGED][bUnInstall] : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", currentState: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    if-eqz v10, :cond_f

    const/16 v22, 0x2

    move/from16 v0, v22

    if-ne v8, v0, :cond_f

    .line 260
    const-string v22, "ro.operator.optr"

    invoke-static/range {v22 .. v22}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 261
    .local v20, optr:Ljava/lang/String;
    if-eqz v20, :cond_e

    const-string v22, "OP02"

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_e

    .line 262
    const-string v22, "working for OP02..."

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 263
    const-string v22, "LOCKED"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_8

    const-string v22, "ABSENT"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lcom/android/stk/BootCompletedReceiver;->checkSimRadioState(Landroid/content/Context;I)Z

    move-result v22

    if-nez v22, :cond_9

    .line 264
    :cond_8
    const-string v22, "unInstall it~~"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 265
    const-string v22, "Stk-BCR "

    const-string v23, "OP02, ADD_RECENET_IGNORE"

    invoke-static/range {v22 .. v23}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    const-string v22, "android.intent.action.ADD_RECENET_IGNORE"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 267
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 268
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v7, v3, v0}, Lcom/android/stk/StkAppService;->StkAvailable(II)V

    .line 269
    move-object/from16 v0, p1

    invoke-virtual {v6, v0, v3}, Lcom/android/stk/StkAppInstaller;->unInstall(Landroid/content/Context;I)V

    .line 270
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v7, v0, v3}, Lcom/android/stk/StkAppService;->setUserAccessState(ZI)V

    .line 296
    .end local v8           #app_state:I
    .end local v10           #bUnInstall:Z
    .end local v11           #bundle:Landroid/os/Bundle;
    .end local v12           #currentState:I
    .end local v17           #it:Landroid/content/Intent;
    .end local v20           #optr:Ljava/lang/String;
    :cond_9
    :goto_3
    const-string v22, "Stk-BCR "

    const-string v23, "get ACTION_SIM_STATE_CHANGED  finish"

    invoke-static/range {v22 .. v23}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 209
    .restart local v8       #app_state:I
    .restart local v10       #bUnInstall:Z
    .restart local v11       #bundle:Landroid/os/Bundle;
    .restart local v17       #it:Landroid/content/Intent;
    :cond_a
    const-string v22, "LOADED"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_5

    .line 211
    const/16 v22, 0x2

    move/from16 v0, v22

    if-ne v8, v0, :cond_b

    const/4 v10, 0x0

    .line 212
    :goto_4
    const-string v22, "Stk-BCR "

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "loaded state,  app_state: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", bUnInstall: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 211
    :cond_b
    const/4 v10, 0x1

    goto :goto_4

    .line 233
    :cond_c
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 234
    .restart local v9       #args:Landroid/os/Bundle;
    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 v19, v0

    .line 235
    .restart local v19       #op:[I
    const/16 v22, 0x0

    const/16 v23, 0x9

    aput v23, v19, v22

    .line 236
    const/16 v22, 0x1

    aput v3, v19, v22

    .line 237
    const-string v22, "op"

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 238
    new-instance v22, Landroid/content/Intent;

    const-class v23, Lcom/android/stk/StkAppService;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_2

    .line 242
    .end local v9           #args:Landroid/os/Bundle;
    .end local v19           #op:[I
    :cond_d
    if-nez v7, :cond_7

    const-string v22, "NOT_READY"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_7

    .line 243
    const-string v22, "Stk-BCR "

    const-string v23, "null == appService && NOT_READY, start StkAppService."

    invoke-static/range {v22 .. v23}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 245
    .restart local v9       #args:Landroid/os/Bundle;
    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 v19, v0

    .line 246
    .restart local v19       #op:[I
    const/16 v22, 0x0

    const/16 v23, 0x5

    aput v23, v19, v22

    .line 247
    const/16 v22, 0x1

    sget v23, Lcom/android/stk/StkAppService;->STK_GEMINI_BROADCAST_ALL:I

    aput v23, v19, v22

    .line 248
    const-string v22, "op"

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 249
    new-instance v22, Landroid/content/Intent;

    const-class v23, Lcom/android/stk/StkAppService;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_2

    .line 274
    .end local v9           #args:Landroid/os/Bundle;
    .end local v19           #op:[I
    .restart local v12       #currentState:I
    .restart local v20       #optr:Ljava/lang/String;
    :cond_e
    const-string v22, "Stk-BCR "

    const-string v23, "Not OPO2, ADD_RECENET_IGNORE"

    invoke-static/range {v22 .. v23}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    const-string v22, "android.intent.action.ADD_RECENET_IGNORE"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 276
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 277
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v7, v3, v0}, Lcom/android/stk/StkAppService;->StkAvailable(II)V

    .line 278
    move-object/from16 v0, p1

    invoke-virtual {v6, v0, v3}, Lcom/android/stk/StkAppInstaller;->unInstall(Landroid/content/Context;I)V

    .line 279
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v7, v0, v3}, Lcom/android/stk/StkAppService;->setUserAccessState(ZI)V

    goto/16 :goto_3

    .line 281
    .end local v20           #optr:Ljava/lang/String;
    :cond_f
    if-nez v10, :cond_9

    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v8, v0, :cond_9

    .line 282
    const-string v22, "Stk-BCR "

    const-string v23, "REMOVE_RECENET_IGNORE"

    invoke-static/range {v22 .. v23}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    const-string v22, "android.intent.action.REMOVE_RECENET_IGNORE"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 284
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 286
    const-string v22, "Stk-BCR "

    const-string v23, "get ACTION_SIM_STATE_CHANGED - install"

    invoke-static/range {v22 .. v23}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    move-object/from16 v0, p1

    invoke-virtual {v6, v0, v3}, Lcom/android/stk/StkAppInstaller;->install(Landroid/content/Context;I)V

    .line 288
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v7, v3, v0}, Lcom/android/stk/StkAppService;->StkAvailable(II)V

    goto/16 :goto_3

    .line 293
    .end local v12           #currentState:I
    :cond_10
    const-string v22, "Stk-BCR "

    const-string v23, "get ACTION_SIM_STATE_CHANGED - StkAppService instance is null"

    invoke-static/range {v22 .. v23}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 297
    .end local v3           #SIMID:I
    .end local v4           #SIMStatus:Ljava/lang/String;
    .end local v8           #app_state:I
    .end local v10           #bUnInstall:Z
    .end local v11           #bundle:Landroid/os/Bundle;
    .end local v17           #it:Landroid/content/Intent;
    :cond_11
    const-string v22, "android.intent.action.ACTION_SIM_DETECTED"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_15

    .line 300
    const-string v22, "Stk-BCR "

    const-string v23, "get SIM_DETECTED begin"

    invoke-static/range {v22 .. v23}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    const-string v22, "simDetectStatus"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 303
    .local v21, status:Ljava/lang/String;
    const-string v22, "Stk-BCR "

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "SIM_DETECTED, status: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    const-string v22, "REMOVE"

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_14

    .line 306
    const/4 v14, 0x0

    .line 307
    .local v14, i:I
    const-string v22, "phone"

    invoke-static/range {v22 .. v22}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v15

    .line 308
    .local v15, iTel:Lcom/android/internal/telephony/ITelephony;
    if-eqz v15, :cond_13

    .line 310
    const/16 v16, 0x1

    .line 311
    .local v16, isSimInserted:Z
    const/4 v14, 0x0

    :goto_5
    sget v22, Lcom/android/stk/StkAppService;->STK_GEMINI_SIM_NUM:I

    move/from16 v0, v22

    if-ge v14, v0, :cond_14

    .line 314
    :try_start_0
    invoke-interface {v15, v14}, Lcom/android/internal/telephony/ITelephony;->isSimInsert(I)Z

    move-result v16

    .line 315
    if-nez v16, :cond_12

    .line 318
    const-string v22, "Stk-BCR "

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "SIM_DETECTED, removed sim: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 320
    .restart local v9       #args:Landroid/os/Bundle;
    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 v19, v0

    .line 321
    .restart local v19       #op:[I
    const/16 v22, 0x0

    const/16 v23, 0x9

    aput v23, v19, v22

    .line 322
    const/16 v22, 0x1

    aput v14, v19, v22

    .line 323
    const-string v22, "op"

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 324
    new-instance v22, Landroid/content/Intent;

    const-class v23, Lcom/android/stk/StkAppService;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    .end local v9           #args:Landroid/os/Bundle;
    .end local v19           #op:[I
    :cond_12
    :goto_6
    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    .line 327
    :catch_0
    move-exception v13

    .line 329
    .local v13, ex:Ljava/lang/Exception;
    const-string v22, "Stk-BCR "

    const-string v23, "Query Sim insert status fail"

    invoke-static/range {v22 .. v23}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 335
    .end local v13           #ex:Ljava/lang/Exception;
    .end local v16           #isSimInserted:Z
    :cond_13
    const-string v22, "Stk-BCR "

    const-string v23, "ITelephony is null"

    invoke-static/range {v22 .. v23}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    .end local v14           #i:I
    .end local v15           #iTel:Lcom/android/internal/telephony/ITelephony;
    :cond_14
    const-string v22, "Stk-BCR "

    const-string v23, "get SIM_DETECTED end"

    invoke-static/range {v22 .. v23}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 339
    .end local v21           #status:Ljava/lang/String;
    :cond_15
    const-string v22, "android.intent.action.RADIO_TECHNOLOGY"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 340
    const-string v22, "simId"

    const/16 v23, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 341
    .restart local v3       #SIMID:I
    const-string v22, "phoneName"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 342
    .local v18, newType:Ljava/lang/String;
    const-string v22, "Stk-BCR "

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "GSM/CDMA changes, sim id: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", new type: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    if-nez v3, :cond_0

    const-string v22, "CDMA"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 346
    move-object/from16 v0, p1

    invoke-virtual {v6, v0, v3}, Lcom/android/stk/StkAppInstaller;->unInstall(Landroid/content/Context;I)V

    goto/16 :goto_0
.end method
