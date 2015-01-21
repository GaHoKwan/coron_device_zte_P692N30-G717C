.class public Lcom/zte/heartyservice/power/TimerReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TimerReceiver.java"


# static fields
.field private static final ONEDAY_MILLIS:J = 0x5265c00L


# instance fields
.field private editor:Landroid/content/SharedPreferences$Editor;

.field private mContext:Landroid/content/Context;

.field private sp:Landroid/content/SharedPreferences;

.field private tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 16
    const-string v0, "Timer Receiver"

    iput-object v0, p0, Lcom/zte/heartyservice/power/TimerReceiver;->tag:Ljava/lang/String;

    .line 24
    iput-object p1, p0, Lcom/zte/heartyservice/power/TimerReceiver;->mContext:Landroid/content/Context;

    .line 25
    const-string v0, "powermanager"

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/power/TimerReceiver;->sp:Landroid/content/SharedPreferences;

    .line 26
    iget-object v0, p0, Lcom/zte/heartyservice/power/TimerReceiver;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/power/TimerReceiver;->editor:Landroid/content/SharedPreferences$Editor;

    .line 27
    return-void
.end method

.method private resetDoNotDisturbTimer()V
    .locals 33

    .prologue
    .line 169
    const-string v3, "SmartUtils"

    const-string v6, "resetTimer Enter"

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/heartyservice/power/TimerReceiver;->sp:Landroid/content/SharedPreferences;

    const-string v6, "at_night_do_not_disturb_from_hour"

    const/16 v7, 0x17

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v19

    .line 174
    .local v19, fHour:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/heartyservice/power/TimerReceiver;->sp:Landroid/content/SharedPreferences;

    const-string v6, "at_night_do_not_disturb_from_minute"

    const/4 v7, 0x0

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v21

    .line 175
    .local v21, fMinute:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/heartyservice/power/TimerReceiver;->sp:Landroid/content/SharedPreferences;

    const-string v6, "at_night_do_not_disturb_to_hour"

    const/4 v7, 0x7

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v28

    .line 176
    .local v28, tHour:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/heartyservice/power/TimerReceiver;->sp:Landroid/content/SharedPreferences;

    const-string v6, "at_night_do_not_disturb_to_minute"

    const/4 v7, 0x0

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v30

    .line 180
    .local v30, tMinute:I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v17

    .line 181
    .local v17, cn:Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v16

    .line 182
    .local v16, cf:Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v18

    .line 184
    .local v18, ct:Ljava/util/Calendar;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/heartyservice/power/TimerReceiver;->tag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "test before set: ntime = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v17 .. v17}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; ftime = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v16 .. v16}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; ttime = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v18 .. v18}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const/16 v3, 0xb

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->set(II)V

    .line 188
    const/16 v3, 0xc

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->set(II)V

    .line 189
    const/16 v3, 0xb

    move-object/from16 v0, v18

    move/from16 v1, v28

    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->set(II)V

    .line 190
    const/16 v3, 0xc

    move-object/from16 v0, v18

    move/from16 v1, v30

    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->set(II)V

    .line 192
    const/16 v3, 0xd

    const/4 v6, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v6}, Ljava/util/Calendar;->set(II)V

    .line 193
    const/16 v3, 0xd

    const/4 v6, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v6}, Ljava/util/Calendar;->set(II)V

    .line 195
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/heartyservice/power/TimerReceiver;->tag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "test after set: ntime = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v17 .. v17}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; ftime = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v16 .. v16}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; ttime = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v18 .. v18}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/heartyservice/power/TimerReceiver;->tag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "test fhour = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0xb

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; fminute = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0xc

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/heartyservice/power/TimerReceiver;->tag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "test thour = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0xb

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; tminute = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0xc

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/heartyservice/power/TimerReceiver;->tag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "test nhour = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0xb

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; nminute = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0xc

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-virtual/range {v17 .. v17}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v24

    .line 201
    .local v24, ntime:J
    invoke-virtual/range {v16 .. v16}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v22

    .line 202
    .local v22, ftime:J
    invoke-virtual/range {v18 .. v18}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v31

    .line 203
    .local v31, ttime:J
    move-wide/from16 v26, v31

    .line 205
    .local v26, orgttime:J
    invoke-virtual/range {v16 .. v16}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 206
    .local v4, amftime:J
    invoke-virtual/range {v18 .. v18}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v11

    .line 209
    .local v11, amttime:J
    new-instance v20, Landroid/content/Intent;

    const-string v3, "com.zte.powermanager.atnightdonotdisturb.from"

    move-object/from16 v0, v20

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 210
    .local v20, fIntent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/heartyservice/power/TimerReceiver;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v20

    invoke-static {v3, v6, v0, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 212
    .local v8, pfIntent:Landroid/app/PendingIntent;
    new-instance v29, Landroid/content/Intent;

    const-string v3, "com.zte.powermanager.atnightdonotdisturb.to"

    move-object/from16 v0, v29

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 213
    .local v29, tIntent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/heartyservice/power/TimerReceiver;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v29

    invoke-static {v3, v6, v0, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v15

    .line 214
    .local v15, ptIntent:Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/heartyservice/power/TimerReceiver;->tag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ftime = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v22

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; ttime = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v31

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; ntime = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v24

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    cmp-long v3, v22, v31

    if-gtz v3, :cond_3

    .line 218
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/heartyservice/power/TimerReceiver;->tag:Ljava/lang/String;

    const-string v6, "Enter 7:00 --- 23:00 mode"

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    cmp-long v3, v24, v22

    if-ltz v3, :cond_1

    cmp-long v3, v24, v31

    if-gtz v3, :cond_1

    .line 221
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/heartyservice/power/TimerReceiver;->tag:Ljava/lang/String;

    const-string v6, "f<n<t"

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/heartyservice/power/TimerReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 224
    const-wide/32 v6, 0x5265c00

    add-long/2addr v4, v6

    .line 266
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/heartyservice/power/TimerReceiver;->mContext:Landroid/content/Context;

    const-string v6, "alarm"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    .line 267
    .local v2, am:Landroid/app/AlarmManager;
    const/4 v3, 0x0

    const-wide/32 v6, 0x5265c00

    invoke-virtual/range {v2 .. v8}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 268
    const/4 v10, 0x0

    const-wide/32 v13, 0x5265c00

    move-object v9, v2

    invoke-virtual/range {v9 .. v15}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 273
    return-void

    .line 226
    .end local v2           #am:Landroid/app/AlarmManager;
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/heartyservice/power/TimerReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 227
    cmp-long v3, v24, v22

    if-gez v3, :cond_2

    .line 228
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/heartyservice/power/TimerReceiver;->tag:Ljava/lang/String;

    const-string v6, "n<f"

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 230
    :cond_2
    cmp-long v3, v24, v31

    if-lez v3, :cond_0

    .line 232
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/heartyservice/power/TimerReceiver;->tag:Ljava/lang/String;

    const-string v6, "n>t"

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    const-wide/32 v6, 0x5265c00

    add-long/2addr v4, v6

    .line 236
    const-wide/32 v6, 0x5265c00

    add-long/2addr v11, v6

    goto :goto_0

    .line 242
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/heartyservice/power/TimerReceiver;->tag:Ljava/lang/String;

    const-string v6, "Enter 23:00 --- 7:00 mode"

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    const-wide/32 v6, 0x5265c00

    add-long/2addr v11, v6

    .line 245
    cmp-long v3, v24, v22

    if-ltz v3, :cond_4

    .line 246
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/heartyservice/power/TimerReceiver;->tag:Ljava/lang/String;

    const-string v6, "f<n<t++++1"

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/heartyservice/power/TimerReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 249
    const-wide/32 v6, 0x5265c00

    add-long/2addr v4, v6

    goto :goto_0

    .line 253
    :cond_4
    cmp-long v3, v24, v26

    if-gtz v3, :cond_5

    .line 254
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/heartyservice/power/TimerReceiver;->tag:Ljava/lang/String;

    const-string v6, "n<t"

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    const-wide/32 v6, 0x5265c00

    sub-long/2addr v11, v6

    .line 257
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/heartyservice/power/TimerReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 259
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/heartyservice/power/TimerReceiver;->tag:Ljava/lang/String;

    const-string v6, "t<n<f"

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/heartyservice/power/TimerReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method private resetTimingSaveElectricityTimer()V
    .locals 33

    .prologue
    .line 61
    const-string v3, "SmartUtils"

    const-string v6, "resetTimer Enter"

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/heartyservice/power/TimerReceiver;->sp:Landroid/content/SharedPreferences;

    const-string v6, "timing_save_electricity_from_hour"

    const/16 v7, 0x17

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v19

    .line 66
    .local v19, fHour:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/heartyservice/power/TimerReceiver;->sp:Landroid/content/SharedPreferences;

    const-string v6, "timing_save_electricity_from_minute"

    const/4 v7, 0x0

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v21

    .line 67
    .local v21, fMinute:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/heartyservice/power/TimerReceiver;->sp:Landroid/content/SharedPreferences;

    const-string v6, "timing_save_electricity_to_hour"

    const/4 v7, 0x7

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v28

    .line 68
    .local v28, tHour:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/heartyservice/power/TimerReceiver;->sp:Landroid/content/SharedPreferences;

    const-string v6, "timing_save_electricity_to_minute"

    const/4 v7, 0x0

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v30

    .line 72
    .local v30, tMinute:I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v17

    .line 73
    .local v17, cn:Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v16

    .line 74
    .local v16, cf:Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v18

    .line 76
    .local v18, ct:Ljava/util/Calendar;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/heartyservice/power/TimerReceiver;->tag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "test before set: ntime = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v17 .. v17}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; ftime = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v16 .. v16}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; ttime = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v18 .. v18}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    const/16 v3, 0xb

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->set(II)V

    .line 80
    const/16 v3, 0xc

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->set(II)V

    .line 81
    const/16 v3, 0xb

    move-object/from16 v0, v18

    move/from16 v1, v28

    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->set(II)V

    .line 82
    const/16 v3, 0xc

    move-object/from16 v0, v18

    move/from16 v1, v30

    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->set(II)V

    .line 84
    const/16 v3, 0xd

    const/4 v6, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v6}, Ljava/util/Calendar;->set(II)V

    .line 85
    const/16 v3, 0xd

    const/4 v6, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v6}, Ljava/util/Calendar;->set(II)V

    .line 87
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/heartyservice/power/TimerReceiver;->tag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "test after set: ntime = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v17 .. v17}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; ftime = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v16 .. v16}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; ttime = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v18 .. v18}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/heartyservice/power/TimerReceiver;->tag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "test fhour = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0xb

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; fminute = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0xc

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/heartyservice/power/TimerReceiver;->tag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "test thour = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0xb

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; tminute = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0xc

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/heartyservice/power/TimerReceiver;->tag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "test nhour = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0xb

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; nminute = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0xc

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-virtual/range {v17 .. v17}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v24

    .line 93
    .local v24, ntime:J
    invoke-virtual/range {v16 .. v16}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v22

    .line 94
    .local v22, ftime:J
    invoke-virtual/range {v18 .. v18}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v31

    .line 95
    .local v31, ttime:J
    move-wide/from16 v26, v31

    .line 97
    .local v26, orgttime:J
    invoke-virtual/range {v16 .. v16}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 98
    .local v4, amftime:J
    invoke-virtual/range {v18 .. v18}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v11

    .line 101
    .local v11, amttime:J
    new-instance v20, Landroid/content/Intent;

    const-string v3, "com.zte.powermanager.timingsaveelectricity.from"

    move-object/from16 v0, v20

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 102
    .local v20, fIntent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/heartyservice/power/TimerReceiver;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v20

    invoke-static {v3, v6, v0, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 104
    .local v8, pfIntent:Landroid/app/PendingIntent;
    new-instance v29, Landroid/content/Intent;

    const-string v3, "com.zte.powermanager.timingsaveelectricity.to"

    move-object/from16 v0, v29

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 105
    .local v29, tIntent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/heartyservice/power/TimerReceiver;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v29

    invoke-static {v3, v6, v0, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v15

    .line 106
    .local v15, ptIntent:Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/heartyservice/power/TimerReceiver;->tag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ftime = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v22

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; ttime = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v31

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; ntime = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v24

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    cmp-long v3, v22, v31

    if-gtz v3, :cond_3

    .line 110
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/heartyservice/power/TimerReceiver;->tag:Ljava/lang/String;

    const-string v6, "Enter 7:00 --- 23:00 mode"

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    cmp-long v3, v24, v22

    if-ltz v3, :cond_1

    cmp-long v3, v24, v31

    if-gtz v3, :cond_1

    .line 113
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/heartyservice/power/TimerReceiver;->tag:Ljava/lang/String;

    const-string v6, "f<n<t"

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/heartyservice/power/TimerReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 116
    const-wide/32 v6, 0x5265c00

    add-long/2addr v4, v6

    .line 158
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/heartyservice/power/TimerReceiver;->mContext:Landroid/content/Context;

    const-string v6, "alarm"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    .line 159
    .local v2, am:Landroid/app/AlarmManager;
    const/4 v3, 0x0

    const-wide/32 v6, 0x5265c00

    invoke-virtual/range {v2 .. v8}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 160
    const/4 v10, 0x0

    const-wide/32 v13, 0x5265c00

    move-object v9, v2

    invoke-virtual/range {v9 .. v15}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 165
    return-void

    .line 118
    .end local v2           #am:Landroid/app/AlarmManager;
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/heartyservice/power/TimerReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 119
    cmp-long v3, v24, v22

    if-gez v3, :cond_2

    .line 120
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/heartyservice/power/TimerReceiver;->tag:Ljava/lang/String;

    const-string v6, "n<f"

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 122
    :cond_2
    cmp-long v3, v24, v31

    if-lez v3, :cond_0

    .line 124
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/heartyservice/power/TimerReceiver;->tag:Ljava/lang/String;

    const-string v6, "n>t"

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const-wide/32 v6, 0x5265c00

    add-long/2addr v4, v6

    .line 128
    const-wide/32 v6, 0x5265c00

    add-long/2addr v11, v6

    goto :goto_0

    .line 134
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/heartyservice/power/TimerReceiver;->tag:Ljava/lang/String;

    const-string v6, "Enter 23:00 --- 7:00 mode"

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    const-wide/32 v6, 0x5265c00

    add-long/2addr v11, v6

    .line 137
    cmp-long v3, v24, v22

    if-ltz v3, :cond_4

    .line 138
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/heartyservice/power/TimerReceiver;->tag:Ljava/lang/String;

    const-string v6, "f<n<t++++1"

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/heartyservice/power/TimerReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 141
    const-wide/32 v6, 0x5265c00

    add-long/2addr v4, v6

    goto :goto_0

    .line 145
    :cond_4
    cmp-long v3, v24, v26

    if-gtz v3, :cond_5

    .line 146
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/heartyservice/power/TimerReceiver;->tag:Ljava/lang/String;

    const-string v6, "n<t"

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const-wide/32 v6, 0x5265c00

    sub-long/2addr v11, v6

    .line 149
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/heartyservice/power/TimerReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 151
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/heartyservice/power/TimerReceiver;->tag:Ljava/lang/String;

    const-string v6, "t<n<f"

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/heartyservice/power/TimerReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 35
    iget-object v5, p0, Lcom/zte/heartyservice/power/TimerReceiver;->tag:Ljava/lang/String;

    const-string v6, "TimerReceiver onReceive Enter!"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 37
    .local v4, action:Ljava/lang/String;
    iget-object v5, p0, Lcom/zte/heartyservice/power/TimerReceiver;->tag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Action = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    iget-object v5, p0, Lcom/zte/heartyservice/power/TimerReceiver;->sp:Landroid/content/SharedPreferences;

    const-string v6, "smart_low_switch"

    sget-boolean v7, Lcom/zte/heartyservice/power/SwitchTools;->DEF_SLowSwitch:Z

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 40
    .local v2, SmartLowSwitch:Z
    iget-object v5, p0, Lcom/zte/heartyservice/power/TimerReceiver;->sp:Landroid/content/SharedPreferences;

    const-string v6, "timing_save_electricity_switch"

    sget-boolean v7, Lcom/zte/heartyservice/power/SwitchTools;->DEF_TimingSaveElectSwitch:Z

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 41
    .local v3, TimingSaveElectricitySwitch:Z
    iget-object v5, p0, Lcom/zte/heartyservice/power/TimerReceiver;->sp:Landroid/content/SharedPreferences;

    const-string v6, "do_not_disturb_switch"

    sget-boolean v7, Lcom/zte/heartyservice/power/SwitchTools;->DEF_DoNotDisturbSwitch:Z

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 42
    .local v0, DoNotDisturbSwitch:Z
    iget-object v5, p0, Lcom/zte/heartyservice/power/TimerReceiver;->sp:Landroid/content/SharedPreferences;

    const-string v6, "smart_low_going"

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 43
    .local v1, SmartLowGoing:Z
    iget-object v5, p0, Lcom/zte/heartyservice/power/TimerReceiver;->tag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SmartLowSwitch = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; TimingSaveElectricitySwitch = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    if-eqz v3, :cond_0

    if-nez v1, :cond_0

    .line 46
    iget-object v5, p0, Lcom/zte/heartyservice/power/TimerReceiver;->tag:Ljava/lang/String;

    const-string v6, "Enter if should Reset Timer"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-direct {p0}, Lcom/zte/heartyservice/power/TimerReceiver;->resetTimingSaveElectricityTimer()V

    .line 50
    :cond_0
    if-eqz v0, :cond_1

    .line 51
    invoke-direct {p0}, Lcom/zte/heartyservice/power/TimerReceiver;->resetDoNotDisturbTimer()V

    .line 55
    :cond_1
    return-void
.end method
