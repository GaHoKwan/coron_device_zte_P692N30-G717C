.class public final Lcom/mediatek/vcalendar/valuetype/Recur;
.super Ljava/lang/Object;
.source "Recur.java"


# static fields
.field private static final BASE_RULE:Ljava/lang/String; = "FREQ=?;WKST=SU"

.field private static final BYDAY:Ljava/lang/String; = "BYDAY"

.field private static final BYMONTHDAY:Ljava/lang/String; = "BYMONTHDAY"

.field private static final COLON:Ljava/lang/String; = ":"

.field private static final DAILY:Ljava/lang/String; = "DAILY"

.field private static final EQUEL:Ljava/lang/String; = "="

.field private static final FREQ:Ljava/lang/String; = "FREQ"

.field private static final MONTHLY:Ljava/lang/String; = "MONTHLY"

.field private static final RRULE_SEGMENTS_COUNT_WITH_EXTRA:I = 0x3

.field private static final SEMICOLON:Ljava/lang/String; = ";"

.field private static final TAG:Ljava/lang/String; = "Recur"

.field private static final WEEKLY:Ljava/lang/String; = "WEEKLY"

.field private static final YEARLY:Ljava/lang/String; = "YEARLY"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    return-void
.end method

.method public static updateRRuleToRfc5545Version(Ljava/lang/String;)Ljava/lang/String;
    .locals 15
    .parameter "rRuleString"

    .prologue
    .line 75
    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v12}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    .line 76
    .local v6, rRule:Ljava/lang/String;
    const-string v12, "Recur"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "updateRRuleToNewVersion, the rRuleString: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/mediatek/vcalendar/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    sget-object v12, Lcom/mediatek/vcalendar/component/VCalendar;->sVersion:Ljava/lang/String;

    const-string v13, "2.0"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    const-string v12, "FREQ"

    invoke-virtual {v6, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 78
    :cond_0
    const-string v12, "Recur"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "updateRRuleToNewVersion, the rRuleString: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " is already in version 2.0"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/mediatek/vcalendar/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v6

    .line 136
    .end local v6           #rRule:Ljava/lang/String;
    .local v7, rRule:Ljava/lang/String;
    :goto_0
    return-object v7

    .line 81
    .end local v7           #rRule:Ljava/lang/String;
    .restart local v6       #rRule:Ljava/lang/String;
    :cond_1
    const/4 v12, 0x0

    invoke-virtual {v6, v12}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 82
    .local v8, repeat:C
    const/4 v3, 0x0

    .line 83
    .local v3, freq:Ljava/lang/String;
    const/4 v2, 0x0

    .line 84
    .local v2, byWhat:Ljava/lang/String;
    const/4 v1, 0x1

    .line 85
    .local v1, byDay:Z
    const-string v12, " "

    invoke-virtual {v6, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 87
    .local v11, ruleArray:[Ljava/lang/String;
    sparse-switch v8, :sswitch_data_0

    .line 118
    const-string v12, "Recur"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "can not parse mRRule="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/mediatek/vcalendar/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    :cond_2
    :goto_1
    if-eqz v3, :cond_4

    .line 123
    const-string v10, "FREQ=?;WKST=SU"

    .line 124
    .local v10, rule:Ljava/lang/String;
    const-string v12, "?"

    invoke-virtual {v10, v12, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 125
    if-eqz v2, :cond_3

    .line 126
    if-eqz v1, :cond_6

    .line 127
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ";BYDAY="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 132
    :cond_3
    :goto_2
    move-object v6, v10

    .line 133
    const-string v12, "CalendarImporter"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "setVCalendar()-->> mRRule="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/mediatek/vcalendar/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    .end local v10           #rule:Ljava/lang/String;
    :cond_4
    const-string v12, "Recur"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "updateRRuleToNewVersion, Version1.0: \""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\"~~ Version2.0: \""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/mediatek/vcalendar/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v6

    .line 136
    .end local v6           #rRule:Ljava/lang/String;
    .restart local v7       #rRule:Ljava/lang/String;
    goto/16 :goto_0

    .line 89
    .end local v7           #rRule:Ljava/lang/String;
    .restart local v6       #rRule:Ljava/lang/String;
    :sswitch_0
    const-string v3, "DAILY"

    .line 90
    goto :goto_1

    .line 93
    :sswitch_1
    const-string v3, "WEEKLY"

    .line 94
    const/4 v12, 0x1

    aget-object v2, v11, v12

    .line 95
    array-length v5, v11

    .line 96
    .local v5, len:I
    const/4 v12, 0x3

    if-lt v5, v12, :cond_2

    .line 97
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 98
    .local v0, buf:Ljava/lang/StringBuffer;
    const/4 v4, 0x2

    .local v4, i:I
    :goto_3
    add-int/lit8 v12, v5, -0x1

    if-ge v4, v12, :cond_5

    .line 99
    const-string v12, ","

    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    aget-object v13, v11, v4

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 98
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 101
    :cond_5
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 102
    goto/16 :goto_1

    .line 105
    .end local v0           #buf:Ljava/lang/StringBuffer;
    .end local v4           #i:I
    .end local v5           #len:I
    :sswitch_2
    const-string v3, "MONTHLY"

    .line 106
    const/4 v12, 0x2

    aget-object v2, v11, v12

    .line 107
    const/4 v12, 0x1

    aget-object v9, v11, v12

    .line 108
    .local v9, repeatMethod:Ljava/lang/String;
    if-eqz v9, :cond_2

    const-string v12, "+"

    invoke-virtual {v9, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 109
    const/4 v1, 0x0

    .line 110
    const/4 v12, 0x1

    aget-object v2, v11, v12

    goto/16 :goto_1

    .line 114
    .end local v9           #repeatMethod:Ljava/lang/String;
    :sswitch_3
    const-string v3, "YEARLY"

    .line 115
    goto/16 :goto_1

    .line 129
    .restart local v10       #rule:Ljava/lang/String;
    :cond_6
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ";BYMONTHDAY="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_2

    .line 87
    :sswitch_data_0
    .sparse-switch
        0x44 -> :sswitch_0
        0x4d -> :sswitch_2
        0x57 -> :sswitch_1
        0x59 -> :sswitch_3
    .end sparse-switch
.end method
