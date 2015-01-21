.class public Lcom/mediatek/mms/op09/MessageUtils;
.super Ljava/lang/Object;
.source "MessageUtils.java"


# static fields
.field private static final DOUBLE_SIM_CARD:I = 0x2

.field public static final SEND_BUTTON_ACTIVIATE_RESOURCE_ID_C_BIG:[I = null

.field public static final SEND_BUTTON_ACTIVIATE_RESOURCE_ID_C_SMALL:[I = null

.field public static final SEND_BUTTON_ACTIVIATE_RESOURCE_ID_G_BIG:[I = null

.field public static final SEND_BUTTON_ACTIVIATE_RESOURCE_ID_G_SMALL:[I = null

.field public static final SEND_BUTTON_DRAWABLE_RESOURCE_ID_C_BIG:[I = null

.field public static final SEND_BUTTON_DRAWABLE_RESOURCE_ID_C_SMALL:[I = null

.field public static final SEND_BUTTON_DRAWABLE_RESOURCE_ID_G_BIG:[I = null

.field public static final SEND_BUTTON_DRAWABLE_RESOURCE_ID_G_SMALL:[I = null

.field private static final SINGLE_SIM_CARD:I = 0x1

.field private static final TAG:Ljava/lang/String; = "OP09MessageUtils"

.field private static final TIMEZONE_ID_BEIJING:Ljava/lang/String; = "Asia/Shanghai"

.field private static mListSimInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/provider/Telephony$SIMInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static mSimInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;",
            ">;"
        }
    .end annotation
.end field

.field private static mSimReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 80
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mediatek/mms/op09/MessageUtils;->SEND_BUTTON_DRAWABLE_RESOURCE_ID_C_BIG:[I

    .line 87
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/mediatek/mms/op09/MessageUtils;->SEND_BUTTON_DRAWABLE_RESOURCE_ID_C_SMALL:[I

    .line 94
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/mediatek/mms/op09/MessageUtils;->SEND_BUTTON_DRAWABLE_RESOURCE_ID_G_BIG:[I

    .line 101
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/mediatek/mms/op09/MessageUtils;->SEND_BUTTON_DRAWABLE_RESOURCE_ID_G_SMALL:[I

    .line 108
    new-array v0, v1, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/mediatek/mms/op09/MessageUtils;->SEND_BUTTON_ACTIVIATE_RESOURCE_ID_C_SMALL:[I

    .line 114
    new-array v0, v1, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/mediatek/mms/op09/MessageUtils;->SEND_BUTTON_ACTIVIATE_RESOURCE_ID_C_BIG:[I

    .line 120
    new-array v0, v1, [I

    fill-array-data v0, :array_6

    sput-object v0, Lcom/mediatek/mms/op09/MessageUtils;->SEND_BUTTON_ACTIVIATE_RESOURCE_ID_G_SMALL:[I

    .line 126
    new-array v0, v1, [I

    fill-array-data v0, :array_7

    sput-object v0, Lcom/mediatek/mms/op09/MessageUtils;->SEND_BUTTON_ACTIVIATE_RESOURCE_ID_G_BIG:[I

    .line 322
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/mms/op09/MessageUtils;->mSimInfoMap:Ljava/util/Map;

    .line 324
    new-instance v0, Lcom/mediatek/mms/op09/MessageUtils$1;

    invoke-direct {v0}, Lcom/mediatek/mms/op09/MessageUtils$1;-><init>()V

    sput-object v0, Lcom/mediatek/mms/op09/MessageUtils;->mSimReceiver:Landroid/content/BroadcastReceiver;

    return-void

    .line 80
    :array_0
    .array-data 0x4
        0xct 0x0t 0x2t 0x7ft
        0xct 0x0t 0x2t 0x7ft
        0xct 0x0t 0x2t 0x7ft
        0xct 0x0t 0x2t 0x7ft
    .end array-data

    .line 87
    :array_1
    .array-data 0x4
        0xft 0x0t 0x2t 0x7ft
        0xft 0x0t 0x2t 0x7ft
        0xft 0x0t 0x2t 0x7ft
        0xft 0x0t 0x2t 0x7ft
    .end array-data

    .line 94
    :array_2
    .array-data 0x4
        0x12t 0x0t 0x2t 0x7ft
        0x12t 0x0t 0x2t 0x7ft
        0x12t 0x0t 0x2t 0x7ft
        0x12t 0x0t 0x2t 0x7ft
    .end array-data

    .line 101
    :array_3
    .array-data 0x4
        0x15t 0x0t 0x2t 0x7ft
        0x15t 0x0t 0x2t 0x7ft
        0x15t 0x0t 0x2t 0x7ft
        0x15t 0x0t 0x2t 0x7ft
    .end array-data

    .line 108
    :array_4
    .array-data 0x4
        0x10t 0x0t 0x2t 0x7ft
        0x10t 0x0t 0x2t 0x7ft
        0x10t 0x0t 0x2t 0x7ft
        0x10t 0x0t 0x2t 0x7ft
    .end array-data

    .line 114
    :array_5
    .array-data 0x4
        0xdt 0x0t 0x2t 0x7ft
        0xdt 0x0t 0x2t 0x7ft
        0xdt 0x0t 0x2t 0x7ft
        0xdt 0x0t 0x2t 0x7ft
    .end array-data

    .line 120
    :array_6
    .array-data 0x4
        0x16t 0x0t 0x2t 0x7ft
        0x16t 0x0t 0x2t 0x7ft
        0x16t 0x0t 0x2t 0x7ft
        0x16t 0x0t 0x2t 0x7ft
    .end array-data

    .line 126
    :array_7
    .array-data 0x4
        0x13t 0x0t 0x2t 0x7ft
        0x13t 0x0t 0x2t 0x7ft
        0x13t 0x0t 0x2t 0x7ft
        0x13t 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-static {p0}, Lcom/mediatek/mms/op09/MessageUtils;->getSimInfoList(Landroid/content/Context;)V

    return-void
.end method

.method public static formatDateOrTimeStampStringWithSystemSetting(Landroid/content/Context;JZ)Ljava/lang/String;
    .locals 13
    .parameter "context"
    .parameter "when"
    .parameter "fullFormat"

    .prologue
    .line 243
    new-instance v7, Landroid/text/format/Time;

    invoke-direct {v7}, Landroid/text/format/Time;-><init>()V

    .line 244
    .local v7, then:Landroid/text/format/Time;
    invoke-virtual {v7, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 245
    new-instance v5, Landroid/text/format/Time;

    invoke-direct {v5}, Landroid/text/format/Time;-><init>()V

    .line 246
    .local v5, now:Landroid/text/format/Time;
    invoke-virtual {v5}, Landroid/text/format/Time;->setToNow()V

    .line 249
    const v4, 0x80b00

    .line 251
    .local v4, formatFlags:I
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v9

    check-cast v9, Ljava/text/SimpleDateFormat;

    move-object v6, v9

    check-cast v6, Ljava/text/SimpleDateFormat;

    .line 252
    .local v6, sdf:Ljava/text/SimpleDateFormat;
    invoke-virtual {v6}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v0

    .line 254
    .local v0, allDateFormat:Ljava/lang/String;
    if-eqz p3, :cond_1

    .line 255
    invoke-static {p0, p1, p2}, Lcom/mediatek/mms/op09/MessageUtils;->getShortTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    .line 256
    .local v8, timeStr:Ljava/lang/String;
    invoke-static {v0, p1, p2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 257
    .local v1, dateStr:Ljava/lang/String;
    or-int/lit8 v4, v4, 0x11

    .line 258
    invoke-static {p0, p1, p2, v4}, Lcom/mediatek/mms/op09/MessageUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v3

    .line 259
    .local v3, defaultDateStr:Ljava/lang/String;
    const-string v9, ":"

    invoke-virtual {v3, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x5

    if-le v9, v10, :cond_0

    .line 260
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 283
    .end local v1           #dateStr:Ljava/lang/String;
    .end local v3           #defaultDateStr:Ljava/lang/String;
    .end local v8           #timeStr:Ljava/lang/String;
    :goto_0
    return-object v9

    .line 262
    .restart local v1       #dateStr:Ljava/lang/String;
    .restart local v3       #defaultDateStr:Ljava/lang/String;
    .restart local v8       #timeStr:Ljava/lang/String;
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 265
    .end local v1           #dateStr:Ljava/lang/String;
    .end local v3           #defaultDateStr:Ljava/lang/String;
    .end local v8           #timeStr:Ljava/lang/String;
    :cond_1
    iget v9, v7, Landroid/text/format/Time;->year:I

    iget v10, v5, Landroid/text/format/Time;->year:I

    if-eq v9, v10, :cond_2

    .line 266
    or-int/lit8 v4, v4, 0x14

    .line 267
    invoke-static {v0, p1, p2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 268
    :cond_2
    iget v9, v7, Landroid/text/format/Time;->yearDay:I

    iget v10, v5, Landroid/text/format/Time;->yearDay:I

    if-eq v9, v10, :cond_4

    .line 270
    or-int/lit8 v4, v4, 0x10

    .line 271
    iget v9, v5, Landroid/text/format/Time;->yearDay:I

    iget v10, v7, Landroid/text/format/Time;->yearDay:I

    sub-int/2addr v9, v10

    const/4 v10, 0x1

    if-ne v9, v10, :cond_3

    .line 272
    const v9, 0x7f0900cc

    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 274
    :cond_3
    invoke-static {v0}, Lcom/mediatek/mms/op09/MessageUtils;->removeYearFromFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 275
    .local v2, dayMonthFormatStr:Ljava/lang/String;
    invoke-static {v2, p1, p2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 277
    .end local v2           #dayMonthFormatStr:Ljava/lang/String;
    :cond_4
    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v9

    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v11

    sub-long/2addr v9, v11

    const-wide/32 v11, 0xea60

    cmp-long v9, v9, v11

    if-gez v9, :cond_5

    .line 278
    const v9, 0x7f0900cd

    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 281
    :cond_5
    or-int/lit8 v4, v4, 0x1

    .line 283
    invoke-static {p0, p1, p2, v4}, Lcom/mediatek/mms/op09/MessageUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v9

    goto :goto_0
.end method

.method public static formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;
    .locals 10
    .parameter "context"
    .parameter "time"
    .parameter "formatFlags"

    .prologue
    .line 143
    invoke-static {p0}, Lcom/mediatek/mms/op09/MessageUtils;->isInternationalRoamingStatus(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    const-string v0, "OP09MessageUtils"

    const-string v2, "formatDateTime Default"

    invoke-static {v0, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-static {p0, p1, p2, p3}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v9

    .line 156
    :goto_0
    return-object v9

    .line 147
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "ct_time_display_mode"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 148
    .local v8, localNum:I
    if-nez v8, :cond_1

    .line 149
    new-instance v1, Ljava/util/Formatter;

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x32

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v1, v0, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    .line 150
    .local v1, f:Ljava/util/Formatter;
    const-string v7, "Asia/Shanghai"

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p1

    move v6, p3

    invoke-static/range {v0 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v9

    .line 151
    .local v9, str:Ljava/lang/String;
    const-string v0, "OP09MessageUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FormateDateTime  Time:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\t formatFlags:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\tTimeZone:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Asia/Shanghai"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 155
    .end local v1           #f:Ljava/util/Formatter;
    .end local v9           #str:Ljava/lang/String;
    :cond_1
    const-string v0, "OP09MessageUtils"

    const-string v2, "FormateDateTime; time display mode: LOCAL"

    invoke-static {v0, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-static {p0, p1, p2, p3}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v9

    goto :goto_0
.end method

.method public static getShortTimeString(Landroid/content/Context;J)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "time"

    .prologue
    .line 134
    const v0, 0x80b00

    .line 136
    .local v0, formatFlags:I
    or-int/lit8 v0, v0, 0x1

    .line 137
    invoke-static {p0, p1, p2, v0}, Lcom/mediatek/mms/op09/MessageUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getSimInfoBySimId(Landroid/content/Context;I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    .locals 2
    .parameter "ctx"
    .parameter "simId"

    .prologue
    .line 343
    sget-object v0, Lcom/mediatek/mms/op09/MessageUtils;->mSimInfoMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 344
    invoke-static {p0}, Lcom/mediatek/mms/op09/MessageUtils;->initSiminfoList(Landroid/content/Context;)V

    .line 346
    :cond_0
    sget-object v0, Lcom/mediatek/mms/op09/MessageUtils;->mSimInfoMap:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 347
    sget-object v0, Lcom/mediatek/mms/op09/MessageUtils;->mSimInfoMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    .line 349
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getSimInfoList(Landroid/content/Context;)V
    .locals 6
    .parameter "ctx"

    .prologue
    .line 353
    if-nez p0, :cond_1

    .line 365
    :cond_0
    :goto_0
    return-void

    .line 356
    :cond_1
    invoke-static {p0}, Lcom/mediatek/telephony/SimInfoManager;->getInsertedSimInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 357
    .local v2, oldSimList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;>;"
    if-nez v2, :cond_2

    .line 358
    const-string v3, "OP09MessageUtils"

    const-string v4, "getSimInfoList: null"

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 361
    :cond_2
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lcom/mediatek/mms/op09/MessageUtils;->mSimInfoMap:Ljava/util/Map;

    .line 362
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    .line 363
    .local v1, msir:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    sget-object v3, Lcom/mediatek/mms/op09/MessageUtils;->mSimInfoMap:Ljava/util/Map;

    iget-wide v4, v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public static handleMissedParts([Landroid/telephony/SmsMessage;)Ljava/lang/String;
    .locals 13
    .parameter "parts"

    .prologue
    .line 287
    if-eqz p0, :cond_0

    array-length v10, p0

    if-gtz v10, :cond_1

    .line 288
    :cond_0
    const-string v10, "OP09MessageUtils"

    const-string v11, "[fake invalid message array"

    invoke-static {v10, v11}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    const/4 v10, 0x0

    .line 311
    :goto_0
    return-object v10

    .line 292
    :cond_1
    const/4 v10, 0x0

    aget-object v10, p0, v10

    invoke-virtual {v10}, Landroid/telephony/SmsMessage;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v10

    iget-object v10, v10, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    iget v9, v10, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 294
    .local v9, totalPartsNum:I
    new-array v2, v9, [Ljava/lang/String;

    .line 295
    .local v2, fakeContents:[Ljava/lang/String;
    move-object v0, p0

    .local v0, arr$:[Landroid/telephony/SmsMessage;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v5, :cond_2

    aget-object v6, v0, v4

    .line 296
    .local v6, msg:Landroid/telephony/SmsMessage;
    invoke-virtual {v6}, Landroid/telephony/SmsMessage;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v10

    iget-object v10, v10, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    iget v8, v10, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 297
    .local v8, seq:I
    const-string v10, "OP09MessageUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[fake add segment "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    add-int/lit8 v10, v8, -0x1

    invoke-virtual {v6}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v2, v10

    .line 295
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 300
    .end local v6           #msg:Landroid/telephony/SmsMessage;
    .end local v8           #seq:I
    :cond_2
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    array-length v10, v2

    if-ge v3, v10, :cond_4

    .line 301
    aget-object v10, v2, v3

    if-nez v10, :cond_3

    .line 302
    const-string v10, "OP09MessageUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[fake replace segment "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    add-int/lit8 v12, v3, 0x1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    const-string v10, "(...)"

    aput-object v10, v2, v3

    .line 300
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 307
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 308
    .local v1, body:Ljava/lang/StringBuilder;
    move-object v0, v2

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v5, :cond_5

    aget-object v7, v0, v4

    .line 309
    .local v7, s:Ljava/lang/String;
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 311
    .end local v7           #s:Ljava/lang/String;
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_0
.end method

.method public static initSiminfoList(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 337
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_INFO_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 338
    .local v0, intentFilter:Landroid/content/IntentFilter;
    sget-object v1, Lcom/mediatek/mms/op09/MessageUtils;->mSimReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 339
    invoke-static {p0}, Lcom/mediatek/mms/op09/MessageUtils;->getSimInfoList(Landroid/content/Context;)V

    .line 340
    return-void
.end method

.method public static isCDMAType(Landroid/content/Context;I)Z
    .locals 5
    .parameter "context"
    .parameter "slotId"

    .prologue
    .line 315
    new-instance v1, Lcom/mediatek/telephony/TelephonyManagerEx;

    invoke-direct {v1, p0}, Lcom/mediatek/telephony/TelephonyManagerEx;-><init>(Landroid/content/Context;)V

    .line 316
    .local v1, tme:Lcom/mediatek/telephony/TelephonyManagerEx;
    invoke-virtual {v1, p1}, Lcom/mediatek/telephony/TelephonyManagerEx;->getPhoneType(I)I

    move-result v0

    .line 317
    .local v0, phoneType:I
    const-string v2, "OP09MessageUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isCDMAType() phoneType:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isInternationalRoamingStatus(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    .line 161
    const/4 v0, 0x0

    .line 162
    .local v0, isRoaming:Z
    sget-object v3, Lcom/mediatek/mms/op09/MessageUtils;->mSimInfoMap:Ljava/util/Map;

    if-nez v3, :cond_0

    .line 163
    invoke-static {p0}, Lcom/mediatek/mms/op09/MessageUtils;->initSiminfoList(Landroid/content/Context;)V

    .line 165
    :cond_0
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 166
    .local v1, mTelephonyManager:Landroid/telephony/TelephonyManager;
    sget-object v3, Lcom/mediatek/mms/op09/MessageUtils;->mSimInfoMap:Ljava/util/Map;

    if-eqz v3, :cond_1

    sget-object v3, Lcom/mediatek/mms/op09/MessageUtils;->mSimInfoMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 168
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/telephony/TelephonyManager;->isNetworkRoamingGemini(I)Z

    move-result v0

    .line 175
    :goto_0
    const-string v3, "OP09MessageUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isInternationalRoamingStatus:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    return v0

    .line 169
    :cond_1
    sget-object v3, Lcom/mediatek/mms/op09/MessageUtils;->mSimInfoMap:Ljava/util/Map;

    if-eqz v3, :cond_2

    sget-object v3, Lcom/mediatek/mms/op09/MessageUtils;->mSimInfoMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 170
    sget-object v3, Lcom/mediatek/mms/op09/MessageUtils;->mSimInfoMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    .line 171
    .local v2, sir:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    iget v3, v2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    invoke-virtual {v1, v3}, Landroid/telephony/TelephonyManager;->isNetworkRoamingGemini(I)Z

    move-result v0

    .line 172
    goto :goto_0

    .line 173
    .end local v2           #sir:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :cond_2
    const-string v3, "OP09MessageUtils"

    const-string v4, "There is no SIM inserted!"

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static isInternationalRoamingStatus(Landroid/content/Context;I)Z
    .locals 5
    .parameter "context"
    .parameter "slotId"

    .prologue
    const/4 v4, 0x1

    .line 180
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 181
    .local v1, mTelephonyManager:Landroid/telephony/TelephonyManager;
    const/4 v0, 0x0

    .line 182
    .local v0, isRoaming:Z
    sget-object v2, Lcom/mediatek/mms/op09/MessageUtils;->mSimInfoMap:Ljava/util/Map;

    if-nez v2, :cond_0

    .line 183
    invoke-static {p0}, Lcom/mediatek/mms/op09/MessageUtils;->initSiminfoList(Landroid/content/Context;)V

    .line 185
    :cond_0
    sget-object v2, Lcom/mediatek/mms/op09/MessageUtils;->mSimInfoMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_2

    sget-object v2, Lcom/mediatek/mms/op09/MessageUtils;->mSimInfoMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-ne v2, v4, :cond_1

    if-gtz p1, :cond_2

    :cond_1
    sget-object v2, Lcom/mediatek/mms/op09/MessageUtils;->mSimInfoMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    if-le p1, v4, :cond_3

    .line 188
    :cond_2
    const-string v2, "OP09MessageUtils"

    const-string v3, "MessageUtils.isInternationalRoamingStatus(): Wrong slotId!"

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const/4 v2, 0x0

    .line 194
    :goto_0
    return v2

    .line 192
    :cond_3
    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->isNetworkRoamingGemini(I)Z

    move-result v0

    .line 193
    const-string v2, "OP09MessageUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isInternationalRoamingStatus() isRoaming: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v0

    .line 194
    goto :goto_0
.end method

.method public static isInternationalRoamingStatusBySimid(Landroid/content/Context;I)Z
    .locals 6
    .parameter "context"
    .parameter "simId"

    .prologue
    const/4 v0, 0x0

    .line 198
    sget-object v3, Lcom/mediatek/mms/op09/MessageUtils;->mSimInfoMap:Ljava/util/Map;

    if-nez v3, :cond_0

    .line 200
    invoke-static {p0}, Lcom/mediatek/mms/op09/MessageUtils;->initSiminfoList(Landroid/content/Context;)V

    .line 203
    :cond_0
    sget-object v3, Lcom/mediatek/mms/op09/MessageUtils;->mSimInfoMap:Ljava/util/Map;

    if-nez v3, :cond_2

    .line 214
    :cond_1
    :goto_0
    return v0

    .line 206
    :cond_2
    invoke-static {p0, p1}, Lcom/mediatek/mms/op09/MessageUtils;->getSimInfoBySimId(Landroid/content/Context;I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v2

    .line 207
    .local v2, sir:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-eqz v2, :cond_1

    .line 210
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 211
    .local v1, mTelephonyManager:Landroid/telephony/TelephonyManager;
    const/4 v0, 0x0

    .line 212
    .local v0, isRoaming:Z
    iget v3, v2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    invoke-virtual {v1, v3}, Landroid/telephony/TelephonyManager;->isNetworkRoamingGemini(I)Z

    move-result v0

    .line 213
    const-string v3, "OP09MessageUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isInternationalRoamingStatus() isRoaming: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static removeYearFromFormat(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "allFormatStr"

    .prologue
    const/4 v5, 0x0

    .line 218
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 238
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 221
    .restart local p0
    :cond_1
    const-string v1, ""

    .line 222
    .local v1, finalStr:Ljava/lang/String;
    const-string v4, "y"

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 223
    .local v3, yearIndex:I
    const-string v4, "M"

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 224
    .local v2, monthIndex:I
    const-string v4, "d"

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 225
    .local v0, dayIndex:I
    if-ltz v3, :cond_0

    .line 226
    if-le v3, v2, :cond_4

    .line 227
    invoke-virtual {p0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 233
    :goto_1
    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "."

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "-"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 234
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_3
    move-object p0, v1

    .line 236
    goto :goto_0

    .line 228
    :cond_4
    if-le v2, v0, :cond_5

    .line 229
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 231
    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method
