.class public final Lcom/mediatek/vcalendar/valuetype/DDuration;
.super Ljava/lang/Object;
.source "DDuration.java"


# static fields
.field private static final DAY_AGGR:Ljava/lang/String; = "D"

.field private static final D_FLAG:I = 0x2

.field private static final FLAGS_CONT:I = 0x7

.field private static final HOUR_AGGR:Ljava/lang/String; = "H"

.field private static final H_FLAG:I = 0x4

.field public static final MILLIS_IN_MIN:J = 0xea60L

.field public static final MILLIS_IN_SECOND:J = 0x3e8L

.field private static final MINUS:Ljava/lang/String; = "-"

.field public static final MINUTES_IN_DAY:J = 0x5a0L

.field public static final MINUTES_IN_HOUR:J = 0x3cL

.field public static final MINUTES_IN_WEEK:J = 0x2760L

.field private static final MIN_AGGR:Ljava/lang/String; = "M"

.field private static final M_FLAG:I = 0x5

.field private static final P:Ljava/lang/String; = "P"

.field private static final P_FLAG:I = 0x0

.field private static final SECOND_AGGR:Ljava/lang/String; = "S"

.field private static final S_FLAG:I = 0x6

.field private static final T:Ljava/lang/String; = "T"

.field private static final TAG:Ljava/lang/String; = "Duration"

.field private static final T_FLAG:I = 0x3

.field private static final WEEK_AGGR:Ljava/lang/String; = "W"

.field private static final W_FLAG:I = 0x1


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    return-void
.end method

.method public static getDurationMillis(Ljava/lang/String;)J
    .locals 12
    .parameter "duration"

    .prologue
    .line 127
    const-string v8, "Duration"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getDurationMillis: duration = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/vcalendar/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-wide/16 v4, 0x0

    .line 129
    .local v4, millis:J
    invoke-static {p0}, Lcom/mediatek/vcalendar/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 130
    const-string v8, "Duration"

    const-string v9, "getDurationMillis: the given duration is null or empty."

    invoke-static {v8, v9}, Lcom/mediatek/vcalendar/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-wide/16 v8, -0x1

    .line 199
    :goto_0
    return-wide v8

    .line 133
    :cond_0
    const-string v8, "P"

    invoke-virtual {p0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 134
    const-string v8, "Duration"

    const-string v9, "getDurationMillis: the given duration is not a rfc5545 duration."

    invoke-static {v8, v9}, Lcom/mediatek/vcalendar/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-wide/16 v8, -0x1

    goto :goto_0

    .line 138
    :cond_1
    const/4 v8, 0x7

    new-array v3, v8, [I

    .line 139
    .local v3, indexs:[I
    const/4 v1, 0x0

    .line 140
    .local v1, flag:I
    add-int/lit8 v2, v1, 0x1

    .end local v1           #flag:I
    .local v2, flag:I
    const-string v8, "P"

    invoke-virtual {p0, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    aput v8, v3, v1

    .line 141
    add-int/lit8 v1, v2, 0x1

    .end local v2           #flag:I
    .restart local v1       #flag:I
    const-string v8, "W"

    invoke-virtual {p0, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    aput v8, v3, v2

    .line 142
    add-int/lit8 v2, v1, 0x1

    .end local v1           #flag:I
    .restart local v2       #flag:I
    const-string v8, "D"

    invoke-virtual {p0, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    aput v8, v3, v1

    .line 143
    add-int/lit8 v1, v2, 0x1

    .end local v2           #flag:I
    .restart local v1       #flag:I
    const-string v8, "T"

    invoke-virtual {p0, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    aput v8, v3, v2

    .line 144
    add-int/lit8 v2, v1, 0x1

    .end local v1           #flag:I
    .restart local v2       #flag:I
    const-string v8, "H"

    invoke-virtual {p0, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    aput v8, v3, v1

    .line 145
    add-int/lit8 v1, v2, 0x1

    .end local v2           #flag:I
    .restart local v1       #flag:I
    const-string v8, "M"

    invoke-virtual {p0, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    aput v8, v3, v2

    .line 146
    add-int/lit8 v2, v1, 0x1

    .end local v1           #flag:I
    .restart local v2       #flag:I
    const-string v8, "S"

    invoke-virtual {p0, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    aput v8, v3, v1

    .line 147
    const/4 v1, 0x0

    .line 148
    .end local v2           #flag:I
    .restart local v1       #flag:I
    const/4 v8, 0x0

    aget v8, v3, v8

    add-int/lit8 v6, v8, 0x1

    .line 149
    .local v6, start:I
    const/4 v0, -0x1

    .line 151
    .local v0, end:I
    :goto_1
    const/4 v8, 0x7

    if-ge v1, v8, :cond_5

    .line 152
    aget v8, v3, v1

    const/4 v9, -0x1

    if-ne v8, v9, :cond_3

    .line 151
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 155
    :cond_3
    aget v0, v3, v1

    .line 156
    if-gt v6, v0, :cond_2

    .line 159
    if-ne v6, v0, :cond_4

    .line 160
    add-int/lit8 v6, v6, 0x1

    .line 161
    goto :goto_2

    .line 164
    :cond_4
    invoke-virtual {p0, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 165
    .local v7, subString:Ljava/lang/String;
    const-string v8, "Duration"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getDurationMillis: subString = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/vcalendar/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    packed-switch v1, :pswitch_data_0

    .line 190
    :goto_3
    :pswitch_0
    add-int/lit8 v6, v0, 0x1

    goto :goto_2

    .line 168
    :pswitch_1
    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->intValue()I

    move-result v8

    int-to-long v8, v8

    const-wide/16 v10, 0x2760

    mul-long/2addr v8, v10

    const-wide/32 v10, 0xea60

    mul-long/2addr v8, v10

    add-long/2addr v4, v8

    .line 169
    goto :goto_3

    .line 171
    :pswitch_2
    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->intValue()I

    move-result v8

    int-to-long v8, v8

    const-wide/16 v10, 0x5a0

    mul-long/2addr v8, v10

    const-wide/32 v10, 0xea60

    mul-long/2addr v8, v10

    add-long/2addr v4, v8

    .line 172
    goto :goto_3

    .line 176
    :pswitch_3
    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->intValue()I

    move-result v8

    int-to-long v8, v8

    const-wide/16 v10, 0x3c

    mul-long/2addr v8, v10

    const-wide/32 v10, 0xea60

    mul-long/2addr v8, v10

    add-long/2addr v4, v8

    .line 177
    goto :goto_3

    .line 180
    :pswitch_4
    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->intValue()I

    move-result v8

    int-to-long v8, v8

    const-wide/32 v10, 0xea60

    mul-long/2addr v8, v10

    add-long/2addr v4, v8

    .line 181
    goto :goto_3

    .line 184
    :pswitch_5
    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->intValue()I

    move-result v8

    int-to-long v8, v8

    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    add-long/2addr v4, v8

    .line 185
    goto :goto_3

    .line 193
    .end local v7           #subString:Ljava/lang/String;
    :cond_5
    const-string v8, "-"

    invoke-virtual {p0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 194
    const-wide/16 v8, -0x1

    mul-long/2addr v4, v8

    .line 197
    :cond_6
    const-string v8, "Duration"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getDurationMillis: duration millis = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/vcalendar/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v8, v4

    .line 199
    goto/16 :goto_0

    .line 166
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static getDurationString(J)Ljava/lang/String;
    .locals 8
    .parameter "minutes"

    .prologue
    .line 84
    const-string v5, "Duration"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getDurationString: minutes = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/vcalendar/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    move-wide v3, p0

    .line 86
    .local v3, reminder:J
    const-wide/16 v1, 0x0

    .line 87
    .local v1, quotient:J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .local v0, builder:Ljava/lang/StringBuilder;
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-gez v5, :cond_0

    .line 89
    const-string v5, "-"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    const-wide/16 v5, -0x1

    mul-long v3, v5, p0

    .line 92
    :cond_0
    const-string v5, "P"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    const-wide/16 v5, 0x2760

    div-long v1, v3, v5

    .line 94
    const-wide/16 v5, 0x2760

    rem-long/2addr v3, v5

    .line 95
    const-wide/16 v5, 0x0

    cmp-long v5, v1, v5

    if-lez v5, :cond_1

    .line 96
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "W"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    :cond_1
    const-wide/16 v5, 0x5a0

    div-long v1, v3, v5

    .line 99
    const-wide/16 v5, 0x5a0

    rem-long/2addr v3, v5

    .line 100
    const-wide/16 v5, 0x0

    cmp-long v5, v1, v5

    if-lez v5, :cond_2

    .line 101
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "D"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    :cond_2
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-ltz v5, :cond_3

    .line 105
    const-string v5, "T"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    :cond_3
    const-wide/16 v5, 0x3c

    div-long v1, v3, v5

    .line 108
    const-wide/16 v5, 0x3c

    rem-long/2addr v3, v5

    .line 109
    const-wide/16 v5, 0x0

    cmp-long v5, v1, v5

    if-lez v5, :cond_4

    .line 110
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "H"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    :cond_4
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-ltz v5, :cond_5

    .line 113
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "M"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method
