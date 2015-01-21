.class public Lcom/mediatek/apst/target/receiver/InternalReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InternalReceiver.java"


# static fields
.field public static final ACTION_SIM_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.SIM_STATE_CHANGED"

.field public static final ACTION_SMS_RECEIVED:Ljava/lang/String; = "android.provider.Telephony.SMS_RECEIVED"

.field public static final ACTION_USB_CONNECT:Ljava/lang/String; = "android.intent.action.UMS_CONNECTED"

.field public static final ACTION_USB_DISCONNECT:Ljava/lang/String; = "android.intent.action.UMS_DISCONNECTED"

.field public static final SIM_ID:Ljava/lang/String; = "simid"


# instance fields
.field private mBatteryLevel:I

.field private mBatteryScale:I

.field private mContext:Landroid/content/Context;

.field private mRegistered:Z

.field private mSim1OK:Ljava/lang/Boolean;

.field private mSim2OK:Ljava/lang/Boolean;

.field private mSimOK:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 85
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/mediatek/apst/target/receiver/InternalReceiver;->mContext:Landroid/content/Context;

    .line 87
    iput-boolean v1, p0, Lcom/mediatek/apst/target/receiver/InternalReceiver;->mRegistered:Z

    .line 88
    iput v1, p0, Lcom/mediatek/apst/target/receiver/InternalReceiver;->mBatteryLevel:I

    .line 89
    iput-object v0, p0, Lcom/mediatek/apst/target/receiver/InternalReceiver;->mSimOK:Ljava/lang/Boolean;

    .line 90
    iput-object v0, p0, Lcom/mediatek/apst/target/receiver/InternalReceiver;->mSim1OK:Ljava/lang/Boolean;

    .line 91
    iput-object v0, p0, Lcom/mediatek/apst/target/receiver/InternalReceiver;->mSim2OK:Ljava/lang/Boolean;

    .line 92
    return-void
.end method


# virtual methods
.method public getBatteryLevel()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/mediatek/apst/target/receiver/InternalReceiver;->mBatteryLevel:I

    return v0
.end method

.method public getBatteryScale()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/mediatek/apst/target/receiver/InternalReceiver;->mBatteryScale:I

    return v0
.end method

.method public isRegistered()Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/mediatek/apst/target/receiver/InternalReceiver;->mRegistered:Z

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 27
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 174
    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object p1, v23, v24

    const/16 v24, 0x1

    aput-object p2, v23, v24

    const-string v24, "Intent received."

    invoke-static/range {v23 .. v24}, Lcom/mediatek/apst/target/util/Debugger;->logI([Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v19

    .line 177
    .local v19, strAction:Ljava/lang/String;
    if-nez v19, :cond_1

    .line 178
    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object p1, v23, v24

    const/16 v24, 0x1

    aput-object p2, v23, v24

    const-string v24, "intent.getAction() returns null."

    invoke-static/range {v23 .. v24}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    .line 360
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    const-string v23, "android.intent.action.BATTERY_CHANGED"

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_4

    .line 182
    const-string v23, "level"

    const/16 v24, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 184
    .local v5, batteryLevel:I
    const-string v23, "scale"

    const/16 v24, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 186
    .local v6, batteryScale:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/apst/target/receiver/InternalReceiver;->mBatteryLevel:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-ne v5, v0, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/apst/target/receiver/InternalReceiver;->mBatteryScale:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-eq v6, v0, :cond_3

    .line 187
    :cond_2
    new-instance v23, Lcom/mediatek/apst/target/event/Event;

    invoke-direct/range {v23 .. v23}, Lcom/mediatek/apst/target/event/Event;-><init>()V

    const-string v24, "level"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Lcom/mediatek/apst/target/event/Event;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/mediatek/apst/target/event/Event;

    move-result-object v23

    const-string v24, "scale"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Lcom/mediatek/apst/target/event/Event;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/mediatek/apst/target/event/Event;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/mediatek/apst/target/event/EventDispatcher;->dispatchBatteryStateChangedEvent(Lcom/mediatek/apst/target/event/Event;)V

    .line 191
    :cond_3
    move-object/from16 v0, p0

    iput v5, v0, Lcom/mediatek/apst/target/receiver/InternalReceiver;->mBatteryLevel:I

    .line 192
    move-object/from16 v0, p0

    iput v6, v0, Lcom/mediatek/apst/target/receiver/InternalReceiver;->mBatteryScale:I

    goto :goto_0

    .line 193
    .end local v5           #batteryLevel:I
    .end local v6           #batteryScale:I
    :cond_4
    const-string v23, "android.intent.action.MEDIA_MOUNTED"

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_6

    .line 194
    const-string v23, "read-only"

    const/16 v24, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v17

    .line 195
    .local v17, readOnly:Z
    new-instance v23, Lcom/mediatek/apst/target/event/Event;

    invoke-direct/range {v23 .. v23}, Lcom/mediatek/apst/target/event/Event;-><init>()V

    const-string v24, "present"

    const/16 v25, 0x1

    invoke-static/range {v25 .. v25}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Lcom/mediatek/apst/target/event/Event;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/mediatek/apst/target/event/Event;

    move-result-object v23

    const-string v24, "mounted"

    const/16 v25, 0x1

    invoke-static/range {v25 .. v25}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Lcom/mediatek/apst/target/event/Event;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/mediatek/apst/target/event/Event;

    move-result-object v24

    const-string v25, "writeable"

    if-nez v17, :cond_5

    const/16 v23, 0x1

    :goto_1
    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v23

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/apst/target/event/Event;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/mediatek/apst/target/event/Event;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/mediatek/apst/target/event/EventDispatcher;->dispatchSdStateChangedEvent(Lcom/mediatek/apst/target/event/Event;)V

    goto/16 :goto_0

    :cond_5
    const/16 v23, 0x0

    goto :goto_1

    .line 199
    .end local v17           #readOnly:Z
    :cond_6
    const-string v23, "android.intent.action.MEDIA_UNMOUNTED"

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_7

    .line 200
    new-instance v23, Lcom/mediatek/apst/target/event/Event;

    invoke-direct/range {v23 .. v23}, Lcom/mediatek/apst/target/event/Event;-><init>()V

    const-string v24, "present"

    const/16 v25, 0x1

    invoke-static/range {v25 .. v25}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Lcom/mediatek/apst/target/event/Event;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/mediatek/apst/target/event/Event;

    move-result-object v23

    const-string v24, "mounted"

    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Lcom/mediatek/apst/target/event/Event;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/mediatek/apst/target/event/Event;

    move-result-object v23

    const-string v24, "writeable"

    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Lcom/mediatek/apst/target/event/Event;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/mediatek/apst/target/event/Event;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/mediatek/apst/target/event/EventDispatcher;->dispatchSdStateChangedEvent(Lcom/mediatek/apst/target/event/Event;)V

    goto/16 :goto_0

    .line 204
    :cond_7
    const-string v23, "android.intent.action.MEDIA_REMOVED"

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_8

    .line 205
    new-instance v23, Lcom/mediatek/apst/target/event/Event;

    invoke-direct/range {v23 .. v23}, Lcom/mediatek/apst/target/event/Event;-><init>()V

    const-string v24, "present"

    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Lcom/mediatek/apst/target/event/Event;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/mediatek/apst/target/event/Event;

    move-result-object v23

    const-string v24, "mounted"

    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Lcom/mediatek/apst/target/event/Event;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/mediatek/apst/target/event/Event;

    move-result-object v23

    const-string v24, "writeable"

    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Lcom/mediatek/apst/target/event/Event;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/mediatek/apst/target/event/Event;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/mediatek/apst/target/event/EventDispatcher;->dispatchSdStateChangedEvent(Lcom/mediatek/apst/target/event/Event;)V

    goto/16 :goto_0

    .line 209
    :cond_8
    const-string v23, "android.intent.action.MEDIA_BAD_REMOVAL"

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_9

    .line 210
    new-instance v23, Lcom/mediatek/apst/target/event/Event;

    invoke-direct/range {v23 .. v23}, Lcom/mediatek/apst/target/event/Event;-><init>()V

    const-string v24, "present"

    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Lcom/mediatek/apst/target/event/Event;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/mediatek/apst/target/event/Event;

    move-result-object v23

    const-string v24, "mounted"

    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Lcom/mediatek/apst/target/event/Event;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/mediatek/apst/target/event/Event;

    move-result-object v23

    const-string v24, "writeable"

    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Lcom/mediatek/apst/target/event/Event;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/mediatek/apst/target/event/Event;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/mediatek/apst/target/event/EventDispatcher;->dispatchSdStateChangedEvent(Lcom/mediatek/apst/target/event/Event;)V

    goto/16 :goto_0

    .line 214
    :cond_9
    const-string v23, "android.provider.Telephony.SMS_RECEIVED"

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_e

    .line 215
    const/4 v15, 0x0

    .line 216
    .local v15, msg:Landroid/telephony/SmsMessage;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    .line 217
    .local v10, extras:Landroid/os/Bundle;
    if-eqz v10, :cond_0

    .line 218
    const-string v23, "pdus"

    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, [Ljava/lang/Object;

    move-object/from16 v16, v23

    check-cast v16, [Ljava/lang/Object;

    .line 219
    .local v16, pdusObj:[Ljava/lang/Object;
    if-eqz v16, :cond_0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v23, v0

    if-lez v23, :cond_0

    .line 220
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 221
    .local v20, timestamp:J
    const/4 v4, 0x0

    .line 222
    .local v4, address:Ljava/lang/String;
    const/4 v7, 0x0

    .line 223
    .local v7, body:Ljava/lang/String;
    const/4 v11, 0x0

    .local v11, i:I
    :goto_2
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v11, v0, :cond_d

    .line 224
    aget-object v23, v16, v11

    check-cast v23, [B

    check-cast v23, [B

    invoke-static/range {v23 .. v23}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v15

    .line 226
    if-nez v4, :cond_b

    .line 227
    invoke-virtual {v15}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v4

    .line 233
    :cond_a
    :goto_3
    if-nez v7, :cond_c

    .line 234
    invoke-virtual {v15}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v7

    .line 223
    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 228
    :cond_b
    invoke-virtual {v15}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_a

    .line 230
    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object p1, v23, v24

    const/16 v24, 0x1

    aput-object p2, v23, v24

    const-string v24, "Pdus array contains different addresses!"

    invoke-static/range {v23 .. v24}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    .line 236
    :cond_c
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v15}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_4

    .line 239
    :cond_d
    new-instance v23, Lcom/mediatek/apst/target/event/Event;

    invoke-direct/range {v23 .. v23}, Lcom/mediatek/apst/target/event/Event;-><init>()V

    const-string v24, "after_time_of"

    const-wide/16 v25, 0x12c

    sub-long v25, v20, v25

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Lcom/mediatek/apst/target/event/Event;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/mediatek/apst/target/event/Event;

    move-result-object v23

    const-string v24, "address"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v4}, Lcom/mediatek/apst/target/event/Event;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/mediatek/apst/target/event/Event;

    move-result-object v23

    const-string v24, "body"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v7}, Lcom/mediatek/apst/target/event/Event;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/mediatek/apst/target/event/Event;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/mediatek/apst/target/event/EventDispatcher;->dispatchSmsReceivedEvent(Lcom/mediatek/apst/target/event/Event;)V

    goto/16 :goto_0

    .line 245
    .end local v4           #address:Ljava/lang/String;
    .end local v7           #body:Ljava/lang/String;
    .end local v10           #extras:Landroid/os/Bundle;
    .end local v11           #i:I
    .end local v15           #msg:Landroid/telephony/SmsMessage;
    .end local v16           #pdusObj:[Ljava/lang/Object;
    .end local v20           #timestamp:J
    :cond_e
    const-string v23, "com.mediatek.apst.target.action.SMS_SENT"

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_f

    .line 246
    const-string v23, "id"

    const-wide/16 v24, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v12

    .line 247
    .local v12, id:J
    const-string v23, "date"

    const-wide/16 v24, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    .line 248
    .local v8, date:J
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "id="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "date"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/mediatek/apst/target/util/Debugger;->logD(Ljava/lang/String;)V

    .line 252
    invoke-virtual/range {p0 .. p0}, Landroid/content/BroadcastReceiver;->getResultCode()I

    move-result v23

    packed-switch v23, :pswitch_data_0

    .line 270
    :pswitch_0
    const/16 v18, 0x0

    .line 274
    .local v18, result:Z
    :goto_5
    new-instance v23, Lcom/mediatek/apst/target/event/Event;

    invoke-direct/range {v23 .. v23}, Lcom/mediatek/apst/target/event/Event;-><init>()V

    const-string v24, "sms_id"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Lcom/mediatek/apst/target/event/Event;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/mediatek/apst/target/event/Event;

    move-result-object v23

    const-string v24, "date"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Lcom/mediatek/apst/target/event/Event;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/mediatek/apst/target/event/Event;

    move-result-object v23

    const-string v24, "sent"

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Lcom/mediatek/apst/target/event/Event;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/mediatek/apst/target/event/Event;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/mediatek/apst/target/event/EventDispatcher;->dispatchSmsSentEvent(Lcom/mediatek/apst/target/event/Event;)V

    goto/16 :goto_0

    .line 254
    .end local v18           #result:Z
    :pswitch_1
    const/16 v18, 0x1

    .line 255
    .restart local v18       #result:Z
    goto :goto_5

    .line 258
    .end local v18           #result:Z
    :pswitch_2
    const/16 v18, 0x0

    .line 259
    .restart local v18       #result:Z
    goto :goto_5

    .line 262
    .end local v18           #result:Z
    :pswitch_3
    const/16 v18, 0x0

    .line 263
    .restart local v18       #result:Z
    goto :goto_5

    .line 266
    .end local v18           #result:Z
    :pswitch_4
    const/16 v18, 0x0

    .line 267
    .restart local v18       #result:Z
    goto :goto_5

    .line 277
    .end local v8           #date:J
    .end local v12           #id:J
    .end local v18           #result:Z
    :cond_f
    const-string v23, "com.mediatek.apst.target.action.SMS_DELIVERED"

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_10

    .line 279
    const-string v23, "equals"

    invoke-static/range {v23 .. v23}, Lcom/mediatek/apst/target/util/Debugger;->logI(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 280
    :cond_10
    const-string v23, "android.intent.action.PACKAGE_ADDED"

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_11

    .line 281
    const-string v23, "android.intent.extra.UID"

    const/16 v24, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v22

    .line 282
    .local v22, uid:I
    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_0

    .line 283
    new-instance v23, Lcom/mediatek/apst/target/event/Event;

    invoke-direct/range {v23 .. v23}, Lcom/mediatek/apst/target/event/Event;-><init>()V

    const-string v24, "uid"

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Lcom/mediatek/apst/target/event/Event;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/mediatek/apst/target/event/Event;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/mediatek/apst/target/event/EventDispatcher;->dispatchPackageAddedEvent(Lcom/mediatek/apst/target/event/Event;)V

    goto/16 :goto_0

    .line 286
    .end local v22           #uid:I
    :cond_11
    const-string v23, "android.intent.action.PACKAGE_REMOVED"

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_12

    .line 288
    const-string v23, "equals"

    invoke-static/range {v23 .. v23}, Lcom/mediatek/apst/target/util/Debugger;->logI(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 289
    :cond_12
    const-string v23, "android.intent.action.PACKAGE_DATA_CLEARED"

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_13

    .line 290
    const-string v23, "android.intent.extra.UID"

    const/16 v24, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v22

    .line 291
    .restart local v22       #uid:I
    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_0

    .line 292
    new-instance v23, Lcom/mediatek/apst/target/event/Event;

    invoke-direct/range {v23 .. v23}, Lcom/mediatek/apst/target/event/Event;-><init>()V

    const-string v24, "uid"

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Lcom/mediatek/apst/target/event/Event;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/mediatek/apst/target/event/Event;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/mediatek/apst/target/event/EventDispatcher;->dispatchPackageDataClearedEvent(Lcom/mediatek/apst/target/event/Event;)V

    goto/16 :goto_0

    .line 295
    .end local v22           #uid:I
    :cond_13
    const-string v23, "android.intent.action.SIM_STATE_CHANGED"

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_14

    const-string v23, "android.intent.action.SIM_SETTING_INFO_CHANGED"

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_0

    .line 302
    :cond_14
    new-instance v14, Landroid/content/Intent;

    const-class v23, Lcom/mediatek/apst/target/service/NotifyService;

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-direct {v14, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 303
    .local v14, intentService:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 304
    const-string v23, "Action"

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 305
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 252
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public registerAll()V
    .locals 2

    .prologue
    .line 126
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 128
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 129
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 131
    const-string v1, "android.intent.action.SIM_SETTING_INFO_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 132
    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 133
    const-string v1, "com.mediatek.apst.target.action.SMS_SENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 134
    const-string v1, "com.mediatek.apst.target.action.SMS_DELIVERED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 135
    iget-object v1, p0, Lcom/mediatek/apst/target/receiver/InternalReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 138
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0           #intentFilter:Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 139
    .restart local v0       #intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 140
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 141
    const-string v1, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 142
    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 143
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 144
    iget-object v1, p0, Lcom/mediatek/apst/target/receiver/InternalReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 147
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0           #intentFilter:Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 148
    .restart local v0       #intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 149
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 150
    const-string v1, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 151
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 152
    iget-object v1, p0, Lcom/mediatek/apst/target/receiver/InternalReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 159
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/mediatek/apst/target/receiver/InternalReceiver;->setRegistered(Z)V

    .line 160
    return-void
.end method

.method public setRegistered(Z)V
    .locals 0
    .parameter "registered"

    .prologue
    .line 119
    iput-boolean p1, p0, Lcom/mediatek/apst/target/receiver/InternalReceiver;->mRegistered:Z

    .line 120
    return-void
.end method

.method public unregisterAll()V
    .locals 1

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/mediatek/apst/target/receiver/InternalReceiver;->isRegistered()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/apst/target/receiver/InternalReceiver;->setRegistered(Z)V

    .line 168
    iget-object v0, p0, Lcom/mediatek/apst/target/receiver/InternalReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 170
    :cond_0
    return-void
.end method
