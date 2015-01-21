.class public Lcn/com/zte/nlt/update/AutoUpdate;
.super Ljava/lang/Object;
.source "AutoUpdate.java"


# static fields
.field public static final DATE_MODE_FIX:I = 0x3

.field public static final DATE_MODE_MONTH:I = 0x1

.field public static final DATE_MODE_WEEK:I = 0x2

.field private static final KEY_UPDEATE_TIME:Ljava/lang/String; = "updeate_time"

.field private static final LAST_ALARM_TIME:Ljava/lang/String; = "last_update_time"

.field private static final MAX_NOTIFICATION_INTERVAL:I = 0xb4

.field private static final SHOW_NOTIFICATION_INTERVAL:I = 0xe

.field private static final START_TIME:Ljava/lang/String; = "09:00"

.field private static mInstance:Lcn/com/zte/nlt/update/AutoUpdate;


# instance fields
.field private mAlarm:Landroid/app/AlarmManager;

.field private mConfigManager:Lcn/com/zte/nlt/utils/ConfigManager;

.field private mContext:Landroid/content/Context;

.field private mSender:Landroid/app/PendingIntent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    sput-object v0, Lcn/com/zte/nlt/update/AutoUpdate;->mInstance:Lcn/com/zte/nlt/update/AutoUpdate;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object v0, p0, Lcn/com/zte/nlt/update/AutoUpdate;->mContext:Landroid/content/Context;

    .line 41
    iput-object v0, p0, Lcn/com/zte/nlt/update/AutoUpdate;->mAlarm:Landroid/app/AlarmManager;

    .line 42
    iput-object v0, p0, Lcn/com/zte/nlt/update/AutoUpdate;->mSender:Landroid/app/PendingIntent;

    .line 43
    iput-object v0, p0, Lcn/com/zte/nlt/update/AutoUpdate;->mConfigManager:Lcn/com/zte/nlt/utils/ConfigManager;

    .line 52
    invoke-static {}, Lcn/com/zte/yp/YpApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcn/com/zte/nlt/update/AutoUpdate;->mContext:Landroid/content/Context;

    .line 53
    new-instance v0, Lcn/com/zte/nlt/utils/ConfigManager;

    iget-object v1, p0, Lcn/com/zte/nlt/update/AutoUpdate;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/com/zte/nlt/utils/ConfigManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/com/zte/nlt/update/AutoUpdate;->mConfigManager:Lcn/com/zte/nlt/utils/ConfigManager;

    .line 54
    return-void
.end method

.method private calculateNextTimeByFix(Ljava/util/Calendar;)J
    .locals 5
    .parameter "c"

    .prologue
    .line 239
    const-wide/16 v0, 0x0

    .line 240
    .local v0, nextTime:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 241
    .local v2, now:J
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 243
    cmp-long v4, v2, v0

    if-ltz v4, :cond_0

    .line 244
    const-wide/16 v0, 0x0

    .line 246
    :cond_0
    return-wide v0
.end method

.method private calculateNextTimeByMonth(Ljava/lang/String;Ljava/util/Calendar;)J
    .locals 27
    .parameter "dateValue"
    .parameter "c"

    .prologue
    .line 177
    const-wide/16 v18, 0x0

    .line 178
    .local v18, nextTime:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 179
    .local v20, now:J
    invoke-direct/range {p0 .. p1}, Lcn/com/zte/nlt/update/AutoUpdate;->parseDateMonthsAndDays(Ljava/lang/String;)[[J

    move-result-object v13

    .line 180
    .local v13, items:[[J
    const/16 v24, 0x0

    aget-object v7, v13, v24

    .line 181
    .local v7, checkedMonths:[J
    const/16 v24, 0x1

    aget-object v6, v13, v24

    .line 183
    .local v6, checkedDays:[J
    if-eqz v6, :cond_4

    if-eqz v7, :cond_4

    .line 184
    const/4 v12, 0x0

    .line 185
    .local v12, isAdd:Z
    move-object v4, v7

    .local v4, arr$:[J
    array-length v14, v4

    .local v14, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    move v11, v10

    .end local v4           #arr$:[J
    .end local v10           #i$:I
    .end local v14           #len$:I
    .local v11, i$:I
    :goto_0
    if-ge v11, v14, :cond_4

    aget-wide v16, v4, v11

    .line 186
    .local v16, month:J
    const/16 v24, 0x2

    const-wide/16 v25, 0x1

    sub-long v25, v16, v25

    move-wide/from16 v0, v25

    long-to-int v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p2

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 187
    move-object v5, v6

    .local v5, arr$:[J
    array-length v15, v5

    .local v15, len$:I
    const/4 v10, 0x0

    .end local v11           #i$:I
    .restart local v10       #i$:I
    :goto_1
    if-ge v10, v15, :cond_3

    aget-wide v8, v5, v10

    .line 188
    .local v8, day:J
    const/16 v24, 0x5

    long-to-int v0, v8

    move/from16 v25, v0

    move-object/from16 v0, p2

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 190
    invoke-virtual/range {p2 .. p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v22

    .line 191
    .local v22, triggerAtTime:J
    cmp-long v24, v22, v20

    if-gtz v24, :cond_1

    .line 192
    const/16 v24, 0x1

    const/16 v25, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 193
    invoke-virtual/range {p2 .. p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v22

    .line 194
    const/4 v12, 0x1

    .line 198
    :goto_2
    if-eqz v12, :cond_0

    .line 199
    const/16 v24, 0x1

    const/16 v25, -0x1

    move-object/from16 v0, p2

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 202
    :cond_0
    const-wide/16 v24, 0x0

    cmp-long v24, v24, v18

    if-nez v24, :cond_2

    .line 203
    move-wide/from16 v18, v22

    .line 187
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 196
    :cond_1
    const/4 v12, 0x0

    goto :goto_2

    .line 205
    :cond_2
    move-wide/from16 v0, v22

    move-wide/from16 v2, v18

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v18

    goto :goto_3

    .line 185
    .end local v8           #day:J
    .end local v22           #triggerAtTime:J
    :cond_3
    add-int/lit8 v10, v11, 0x1

    move v11, v10

    .end local v10           #i$:I
    .restart local v11       #i$:I
    goto :goto_0

    .line 211
    .end local v5           #arr$:[J
    .end local v11           #i$:I
    .end local v12           #isAdd:Z
    .end local v15           #len$:I
    .end local v16           #month:J
    :cond_4
    return-wide v18
.end method

.method private calculateNextTimeByWeek(Ljava/lang/String;Ljava/util/Calendar;)J
    .locals 16
    .parameter "dateValue"
    .parameter "c"

    .prologue
    .line 215
    const-wide/16 v5, 0x0

    .line 216
    .local v5, nextTime:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 217
    .local v7, now:J
    invoke-direct/range {p0 .. p1}, Lcn/com/zte/nlt/update/AutoUpdate;->parseDateWeeks(Ljava/lang/String;)[J

    move-result-object v2

    .line 218
    .local v2, checkedWeeks:[J
    if-eqz v2, :cond_2

    .line 219
    move-object v1, v2

    .local v1, arr$:[J
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-wide v11, v1, v3

    .line 220
    .local v11, week:J
    const/4 v13, 0x7

    const-wide/16 v14, 0x1

    add-long/2addr v14, v11

    long-to-int v14, v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Ljava/util/Calendar;->set(II)V

    .line 222
    invoke-virtual/range {p2 .. p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    .line 223
    .local v9, triggerAtTime:J
    cmp-long v13, v9, v7

    if-gtz v13, :cond_0

    .line 224
    const-wide/32 v13, 0x240c8400

    add-long/2addr v9, v13

    .line 227
    :cond_0
    const-wide/16 v13, 0x0

    cmp-long v13, v13, v5

    if-nez v13, :cond_1

    .line 228
    move-wide v5, v9

    .line 219
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 230
    :cond_1
    invoke-static {v9, v10, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    goto :goto_1

    .line 235
    .end local v1           #arr$:[J
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v9           #triggerAtTime:J
    .end local v11           #week:J
    :cond_2
    return-wide v5
.end method

.method public static getInstance()Lcn/com/zte/nlt/update/AutoUpdate;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcn/com/zte/nlt/update/AutoUpdate;->mInstance:Lcn/com/zte/nlt/update/AutoUpdate;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lcn/com/zte/nlt/update/AutoUpdate;

    invoke-direct {v0}, Lcn/com/zte/nlt/update/AutoUpdate;-><init>()V

    sput-object v0, Lcn/com/zte/nlt/update/AutoUpdate;->mInstance:Lcn/com/zte/nlt/update/AutoUpdate;

    .line 60
    :cond_0
    sget-object v0, Lcn/com/zte/nlt/update/AutoUpdate;->mInstance:Lcn/com/zte/nlt/update/AutoUpdate;

    return-object v0
.end method

.method private getLastStartAlarmTime()J
    .locals 4

    .prologue
    .line 109
    iget-object v0, p0, Lcn/com/zte/nlt/update/AutoUpdate;->mConfigManager:Lcn/com/zte/nlt/utils/ConfigManager;

    const-string v1, "last_update_time"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcn/com/zte/nlt/utils/ConfigManager;->get(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private getNextAlarmTime(ILjava/lang/String;Ljava/lang/String;)J
    .locals 9
    .parameter "dateMode"
    .parameter "dateValue"
    .parameter "startTime"

    .prologue
    const/4 v8, 0x3

    .line 144
    new-instance v3, Ljava/text/SimpleDateFormat;

    invoke-direct {v3}, Ljava/text/SimpleDateFormat;-><init>()V

    .line 145
    .local v3, fmt:Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 149
    .local v0, c:Ljava/util/Calendar;
    if-ne v8, p1, :cond_0

    .line 150
    :try_start_0
    const-string v6, "yyyy-MM-dd"

    invoke-virtual {v3, v6}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    .line 151
    invoke-virtual {v3, p2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 152
    .local v1, d:Ljava/util/Date;
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 155
    .end local v1           #d:Ljava/util/Date;
    :cond_0
    const-string v6, "HH:mm"

    invoke-virtual {v3, v6}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    .line 156
    invoke-virtual {v3, p3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 157
    .restart local v1       #d:Ljava/util/Date;
    const/16 v6, 0xb

    invoke-virtual {v1}, Ljava/util/Date;->getHours()I

    move-result v7

    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->set(II)V

    .line 158
    const/16 v6, 0xc

    invoke-virtual {v1}, Ljava/util/Date;->getMinutes()I

    move-result v7

    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->set(II)V

    .line 159
    const/16 v6, 0xd

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->set(II)V

    .line 160
    const/16 v6, 0xe

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->set(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    .end local v1           #d:Ljava/util/Date;
    :goto_0
    const-wide/16 v4, 0x0

    .line 166
    .local v4, nextTime:J
    if-ne v8, p1, :cond_2

    .line 167
    invoke-direct {p0, v0}, Lcn/com/zte/nlt/update/AutoUpdate;->calculateNextTimeByFix(Ljava/util/Calendar;)J

    move-result-wide v4

    .line 173
    :cond_1
    :goto_1
    return-wide v4

    .line 161
    .end local v4           #nextTime:J
    :catch_0
    move-exception v2

    .line 162
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 168
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v4       #nextTime:J
    :cond_2
    const/4 v6, 0x2

    if-ne v6, p1, :cond_3

    .line 169
    invoke-direct {p0, p2, v0}, Lcn/com/zte/nlt/update/AutoUpdate;->calculateNextTimeByWeek(Ljava/lang/String;Ljava/util/Calendar;)J

    move-result-wide v4

    goto :goto_1

    .line 170
    :cond_3
    const/4 v6, 0x1

    if-ne v6, p1, :cond_1

    .line 171
    invoke-direct {p0, p2, v0}, Lcn/com/zte/nlt/update/AutoUpdate;->calculateNextTimeByMonth(Ljava/lang/String;Ljava/util/Calendar;)J

    move-result-wide v4

    goto :goto_1
.end method

.method private parseDateMonthsAndDays(Ljava/lang/String;)[[J
    .locals 14
    .parameter "value"

    .prologue
    .line 265
    const/4 v11, 0x2

    new-array v10, v11, [[J

    .line 267
    .local v10, values:[[J
    :try_start_0
    const-string v11, "\\|"

    invoke-virtual {p1, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 268
    .local v6, items:[Ljava/lang/String;
    const/4 v11, 0x0

    aget-object v11, v6, v11

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 269
    .local v8, monthStrs:[Ljava/lang/String;
    const/4 v11, 0x1

    aget-object v11, v6, v11

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 270
    .local v1, dayStrs:[Ljava/lang/String;
    const/4 v11, 0x0

    array-length v12, v8

    new-array v12, v12, [J

    aput-object v12, v10, v11

    .line 271
    const/4 v11, 0x1

    array-length v12, v1

    new-array v12, v12, [J

    aput-object v12, v10, v11

    .line 273
    const/4 v3, 0x0

    .line 274
    .local v3, i:I
    move-object v0, v8

    .local v0, arr$:[Ljava/lang/String;
    array-length v7, v0

    .local v7, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    move v4, v3

    .end local v3           #i:I
    .local v4, i:I
    :goto_0
    if-ge v5, v7, :cond_0

    aget-object v9, v0, v5

    .line 275
    .local v9, s:Ljava/lang/String;
    const/4 v11, 0x0

    aget-object v11, v10, v11

    add-int/lit8 v3, v4, 0x1

    .end local v4           #i:I
    .restart local v3       #i:I
    invoke-static {v9}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    aput-wide v12, v11, v4

    .line 274
    add-int/lit8 v5, v5, 0x1

    move v4, v3

    .end local v3           #i:I
    .restart local v4       #i:I
    goto :goto_0

    .line 277
    .end local v9           #s:Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    .line 278
    .end local v4           #i:I
    .restart local v3       #i:I
    move-object v0, v1

    array-length v7, v0

    const/4 v5, 0x0

    move v4, v3

    .end local v3           #i:I
    .restart local v4       #i:I
    :goto_1
    if-ge v5, v7, :cond_1

    aget-object v9, v0, v5

    .line 279
    .restart local v9       #s:Ljava/lang/String;
    const/4 v11, 0x1

    aget-object v11, v10, v11

    add-int/lit8 v3, v4, 0x1

    .end local v4           #i:I
    .restart local v3       #i:I
    invoke-static {v9}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    aput-wide v12, v11, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    add-int/lit8 v5, v5, 0x1

    move v4, v3

    .end local v3           #i:I
    .restart local v4       #i:I
    goto :goto_1

    .line 281
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #dayStrs:[Ljava/lang/String;
    .end local v4           #i:I
    .end local v5           #i$:I
    .end local v6           #items:[Ljava/lang/String;
    .end local v7           #len$:I
    .end local v8           #monthStrs:[Ljava/lang/String;
    .end local v9           #s:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 282
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 284
    .end local v2           #e:Ljava/lang/Exception;
    :cond_1
    return-object v10
.end method

.method private parseDateWeeks(Ljava/lang/String;)[J
    .locals 11
    .parameter "value"

    .prologue
    .line 250
    const/4 v8, 0x0

    .line 252
    .local v8, weeks:[J
    :try_start_0
    const-string v9, ","

    invoke-virtual {p1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 253
    .local v5, items:[Ljava/lang/String;
    array-length v9, v5

    new-array v8, v9, [J

    .line 254
    const/4 v2, 0x0

    .line 255
    .local v2, i:I
    move-object v0, v5

    .local v0, arr$:[Ljava/lang/String;
    array-length v6, v0

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    move v3, v2

    .end local v2           #i:I
    .local v3, i:I
    :goto_0
    if-ge v4, v6, :cond_0

    aget-object v7, v0, v4

    .line 256
    .local v7, s:Ljava/lang/String;
    add-int/lit8 v2, v3, 0x1

    .end local v3           #i:I
    .restart local v2       #i:I
    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    aput-wide v9, v8, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    add-int/lit8 v4, v4, 0x1

    move v3, v2

    .end local v2           #i:I
    .restart local v3       #i:I
    goto :goto_0

    .line 258
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v3           #i:I
    .end local v4           #i$:I
    .end local v5           #items:[Ljava/lang/String;
    .end local v6           #len$:I
    .end local v7           #s:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 259
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 261
    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    return-object v8
.end method

.method private setLastStartAlarmTime(J)V
    .locals 5
    .parameter "time"

    .prologue
    .line 100
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 101
    .local v0, date:Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1}, Ljava/text/SimpleDateFormat;-><init>()V

    .line 102
    .local v1, fmt:Ljava/text/SimpleDateFormat;
    const-string v3, "yyyy-MM-dd"

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 104
    .local v2, lastTime:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lastUpdatetime is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/com/zte/yp/utils/Logging;->i(Ljava/lang/String;)V

    .line 105
    iget-object v3, p0, Lcn/com/zte/nlt/update/AutoUpdate;->mConfigManager:Lcn/com/zte/nlt/utils/ConfigManager;

    const-string v4, "last_update_time"

    invoke-virtual {v3, v4, p1, p2}, Lcn/com/zte/nlt/utils/ConfigManager;->set(Ljava/lang/String;J)Z

    .line 106
    return-void
.end method


# virtual methods
.method public getAutoUpdateTime()J
    .locals 7

    .prologue
    const/4 v6, 0x3

    .line 82
    const/4 v1, 0x0

    .line 84
    .local v1, dateValue:Ljava/lang/String;
    iget-object v3, p0, Lcn/com/zte/nlt/update/AutoUpdate;->mConfigManager:Lcn/com/zte/nlt/utils/ConfigManager;

    const-string v4, "updeate_time"

    invoke-virtual {v3, v4}, Lcn/com/zte/nlt/utils/ConfigManager;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 85
    iget-object v3, p0, Lcn/com/zte/nlt/update/AutoUpdate;->mConfigManager:Lcn/com/zte/nlt/utils/ConfigManager;

    const-string v4, "updeate_time"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Lcn/com/zte/nlt/utils/ConfigManager;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 94
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updatetime is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/com/zte/yp/utils/Logging;->i(Ljava/lang/String;)V

    .line 96
    const-string v3, "09:00"

    invoke-direct {p0, v6, v1, v3}, Lcn/com/zte/nlt/update/AutoUpdate;->getNextAlarmTime(ILjava/lang/String;Ljava/lang/String;)J

    move-result-wide v3

    return-wide v3

    .line 87
    :cond_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-direct {v2}, Ljava/text/SimpleDateFormat;-><init>()V

    .line 88
    .local v2, fmt:Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 89
    .local v0, c:Ljava/util/Calendar;
    const-string v3, "yyyy-MM-dd"

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    .line 90
    const/4 v3, 0x2

    invoke-virtual {v0, v6, v3}, Ljava/util/Calendar;->add(II)V

    .line 91
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 92
    iget-object v3, p0, Lcn/com/zte/nlt/update/AutoUpdate;->mConfigManager:Lcn/com/zte/nlt/utils/ConfigManager;

    const-string v4, "updeate_time"

    invoke-virtual {v3, v4, v1}, Lcn/com/zte/nlt/utils/ConfigManager;->set(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public judgeUpdateTime()Z
    .locals 11

    .prologue
    const/16 v10, 0xe

    const/4 v5, 0x0

    .line 113
    invoke-direct {p0}, Lcn/com/zte/nlt/update/AutoUpdate;->getLastStartAlarmTime()J

    move-result-wide v1

    .line 114
    .local v1, lastTime:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 115
    .local v3, nowTime:J
    sub-long v6, v3, v1

    const-wide/32 v8, 0x5265c00

    div-long/2addr v6, v8

    long-to-int v0, v6

    .line 116
    .local v0, day:I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "day interval from lastupdatetime is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcn/com/zte/yp/utils/Logging;->i(Ljava/lang/String;)V

    .line 117
    if-ge v0, v10, :cond_0

    .line 127
    :goto_0
    return v5

    .line 119
    :cond_0
    if-lt v0, v10, :cond_1

    const/16 v6, 0xb4

    if-ge v0, v6, :cond_1

    .line 120
    invoke-direct {p0, v3, v4}, Lcn/com/zte/nlt/update/AutoUpdate;->setLastStartAlarmTime(J)V

    .line 121
    const/4 v5, 0x1

    goto :goto_0

    .line 123
    :cond_1
    invoke-virtual {p0}, Lcn/com/zte/nlt/update/AutoUpdate;->unregisterAutoUpdate()V

    .line 124
    iget-object v6, p0, Lcn/com/zte/nlt/update/AutoUpdate;->mConfigManager:Lcn/com/zte/nlt/utils/ConfigManager;

    const-string v7, "updeate_time"

    invoke-virtual {v6, v7}, Lcn/com/zte/nlt/utils/ConfigManager;->remove(Ljava/lang/String;)Z

    .line 125
    invoke-virtual {p0}, Lcn/com/zte/nlt/update/AutoUpdate;->registerAutoUpdate()V

    .line 126
    invoke-direct {p0, v3, v4}, Lcn/com/zte/nlt/update/AutoUpdate;->setLastStartAlarmTime(J)V

    goto :goto_0
.end method

.method public registerAutoUpdate()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 64
    iget-object v0, p0, Lcn/com/zte/nlt/update/AutoUpdate;->mAlarm:Landroid/app/AlarmManager;

    if-nez v0, :cond_0

    .line 65
    const-string v0, "registerAutoUpdate"

    invoke-static {v0}, Lcn/com/zte/yp/utils/Logging;->d(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcn/com/zte/nlt/update/AutoUpdate;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcn/com/zte/nlt/update/AutoUpdate;->mAlarm:Landroid/app/AlarmManager;

    .line 67
    iget-object v0, p0, Lcn/com/zte/nlt/update/AutoUpdate;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcn/com/zte/nlt/update/AutoUpdate;->mContext:Landroid/content/Context;

    const-class v3, Lcn/com/zte/nlt/update/AutoUpdateReceiver;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v0, v4, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcn/com/zte/nlt/update/AutoUpdate;->mSender:Landroid/app/PendingIntent;

    .line 68
    iget-object v0, p0, Lcn/com/zte/nlt/update/AutoUpdate;->mAlarm:Landroid/app/AlarmManager;

    invoke-virtual {p0}, Lcn/com/zte/nlt/update/AutoUpdate;->getAutoUpdateTime()J

    move-result-wide v1

    iget-object v3, p0, Lcn/com/zte/nlt/update/AutoUpdate;->mSender:Landroid/app/PendingIntent;

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 70
    :cond_0
    return-void
.end method

.method public unregisterAutoUpdate()V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcn/com/zte/nlt/update/AutoUpdate;->mAlarm:Landroid/app/AlarmManager;

    if-eqz v0, :cond_0

    .line 74
    const-string v0, "unregisterAutoUpdate"

    invoke-static {v0}, Lcn/com/zte/yp/utils/Logging;->d(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcn/com/zte/nlt/update/AutoUpdate;->mAlarm:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcn/com/zte/nlt/update/AutoUpdate;->mSender:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/com/zte/nlt/update/AutoUpdate;->mAlarm:Landroid/app/AlarmManager;

    .line 77
    iget-object v0, p0, Lcn/com/zte/nlt/update/AutoUpdate;->mConfigManager:Lcn/com/zte/nlt/utils/ConfigManager;

    const-string v1, "updeate_time"

    invoke-virtual {v0, v1}, Lcn/com/zte/nlt/utils/ConfigManager;->remove(Ljava/lang/String;)Z

    .line 79
    :cond_0
    return-void
.end method
