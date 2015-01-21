.class public Lcom/mediatek/contacts/calllog/CallLogDateFormatHelper;
.super Ljava/lang/Object;
.source "CallLogDateFormatHelper.java"


# static fields
.field private static final MAX_HASH_MAP_SIZE:I = 0x1f4

.field protected static final MONTH_SHIFT_BIT:J = 0x8L

.field protected static final ONE_DAY_IN_MILLISECONDS:J = 0x5265c00L

.field private static final TAG:Ljava/lang/String; = "CallLogDateFormatHelper"

.field protected static final YEAR_SHIFT_BIT:J = 0x10L

.field private static sFormattedToday:J

.field private static sFormattedYesterday:J

.field private static sInitilized:Z

.field private static sMapDate:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static sToday:Ljava/lang/String;

.field private static sYesterday:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, ""

    sput-object v0, Lcom/mediatek/contacts/calllog/CallLogDateFormatHelper;->sToday:Ljava/lang/String;

    .line 20
    const-string v0, ""

    sput-object v0, Lcom/mediatek/contacts/calllog/CallLogDateFormatHelper;->sYesterday:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getDateString(Landroid/content/Context;J)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "milliSeconds"

    .prologue
    .line 131
    const/4 v0, 0x0

    .line 134
    .local v0, ret:Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 135
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 139
    :cond_0
    return-object v0
.end method

.method public static getFormatedDateText(Landroid/content/Context;J)Ljava/lang/String;
    .locals 6
    .parameter "context"
    .parameter "lDate"

    .prologue
    .line 57
    const/4 v2, 0x0

    .line 58
    .local v2, retDate:Ljava/lang/String;
    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-gtz v4, :cond_0

    .line 59
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSectionHeadText lDate:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/contacts/calllog/CallLogDateFormatHelper;->log(Ljava/lang/String;)V

    move-object v3, v2

    .line 80
    .end local v2           #retDate:Ljava/lang/String;
    .local v3, retDate:Ljava/lang/String;
    :goto_0
    return-object v3

    .line 62
    .end local v3           #retDate:Ljava/lang/String;
    .restart local v2       #retDate:Ljava/lang/String;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSectionHeadText lDate:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/contacts/calllog/CallLogDateFormatHelper;->log(Ljava/lang/String;)V

    .line 63
    invoke-static {p1, p2}, Lcom/mediatek/contacts/calllog/CallLogDateFormatHelper;->getFormattedDate(J)J

    move-result-wide v0

    .line 66
    .local v0, lfmtdate:J
    sget-wide v4, Lcom/mediatek/contacts/calllog/CallLogDateFormatHelper;->sFormattedToday:J

    cmp-long v4, v0, v4

    if-nez v4, :cond_2

    .line 67
    const-string v4, ""

    sget-object v5, Lcom/mediatek/contacts/calllog/CallLogDateFormatHelper;->sToday:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 68
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0032

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/mediatek/contacts/calllog/CallLogDateFormatHelper;->sToday:Ljava/lang/String;

    .line 70
    :cond_1
    sget-object v2, Lcom/mediatek/contacts/calllog/CallLogDateFormatHelper;->sToday:Ljava/lang/String;

    .line 79
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getFormatedDateText()  retDate==="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/contacts/calllog/CallLogDateFormatHelper;->log(Ljava/lang/String;)V

    move-object v3, v2

    .line 80
    .end local v2           #retDate:Ljava/lang/String;
    .restart local v3       #retDate:Ljava/lang/String;
    goto :goto_0

    .line 71
    .end local v3           #retDate:Ljava/lang/String;
    .restart local v2       #retDate:Ljava/lang/String;
    :cond_2
    sget-wide v4, Lcom/mediatek/contacts/calllog/CallLogDateFormatHelper;->sFormattedYesterday:J

    cmp-long v4, v0, v4

    if-nez v4, :cond_4

    .line 72
    const-string v4, ""

    sget-object v5, Lcom/mediatek/contacts/calllog/CallLogDateFormatHelper;->sYesterday:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 73
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0033

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/mediatek/contacts/calllog/CallLogDateFormatHelper;->sYesterday:Ljava/lang/String;

    .line 75
    :cond_3
    sget-object v2, Lcom/mediatek/contacts/calllog/CallLogDateFormatHelper;->sYesterday:Ljava/lang/String;

    goto :goto_1

    .line 77
    :cond_4
    invoke-static {p0, p1, p2}, Lcom/mediatek/contacts/calllog/CallLogDateFormatHelper;->getDateString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private static getFormattedDate(J)J
    .locals 4
    .parameter "milliSeconds"

    .prologue
    .line 31
    sget-boolean v2, Lcom/mediatek/contacts/calllog/CallLogDateFormatHelper;->sInitilized:Z

    if-nez v2, :cond_0

    .line 32
    const/4 v2, 0x1

    sput-boolean v2, Lcom/mediatek/contacts/calllog/CallLogDateFormatHelper;->sInitilized:Z

    .line 33
    invoke-static {}, Lcom/mediatek/contacts/calllog/CallLogDateFormatHelper;->refreshData()V

    .line 35
    :cond_0
    sget-object v2, Lcom/mediatek/contacts/calllog/CallLogDateFormatHelper;->sMapDate:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 37
    .local v1, ret:Ljava/lang/Long;
    if-nez v1, :cond_1

    .line 38
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 39
    .local v0, date:Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getYear()I

    move-result v2

    shl-int/lit8 v2, v2, 0x10

    invoke-virtual {v0}, Ljava/util/Date;->getMonth()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    shl-int/lit8 v3, v3, 0x8

    add-int/2addr v2, v3

    invoke-virtual {v0}, Ljava/util/Date;->getDate()I

    move-result v3

    add-int/2addr v2, v3

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 41
    sget-object v2, Lcom/mediatek/contacts/calllog/CallLogDateFormatHelper;->sMapDate:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .end local v0           #date:Ljava/util/Date;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    return-wide v2
.end method

.method public static isSameDay(JJ)Z
    .locals 6
    .parameter "firstDate"
    .parameter "secondDate"

    .prologue
    .line 91
    const/4 v0, 0x0

    .line 93
    .local v0, bRet:Z
    invoke-static {p0, p1}, Lcom/mediatek/contacts/calllog/CallLogDateFormatHelper;->getFormattedDate(J)J

    move-result-wide v1

    .line 94
    .local v1, first:J
    invoke-static {p2, p3}, Lcom/mediatek/contacts/calllog/CallLogDateFormatHelper;->getFormattedDate(J)J

    move-result-wide v3

    .line 96
    .local v3, second:J
    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    const/4 v0, 0x1

    .line 97
    :goto_0
    return v0

    .line 96
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "log"

    .prologue
    .line 101
    const-string v0, "CallLogDateFormatHelper"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    return-void
.end method

.method public static refreshData()V
    .locals 4

    .prologue
    .line 108
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 110
    .local v0, curtime:J
    sget-object v2, Lcom/mediatek/contacts/calllog/CallLogDateFormatHelper;->sMapDate:Ljava/util/HashMap;

    if-nez v2, :cond_0

    .line 111
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/mediatek/contacts/calllog/CallLogDateFormatHelper;->sMapDate:Ljava/util/HashMap;

    .line 116
    :cond_0
    invoke-static {v0, v1}, Lcom/mediatek/contacts/calllog/CallLogDateFormatHelper;->getFormattedDate(J)J

    move-result-wide v2

    sput-wide v2, Lcom/mediatek/contacts/calllog/CallLogDateFormatHelper;->sFormattedToday:J

    .line 117
    const-wide/32 v2, 0x5265c00

    sub-long v2, v0, v2

    invoke-static {v2, v3}, Lcom/mediatek/contacts/calllog/CallLogDateFormatHelper;->getFormattedDate(J)J

    move-result-wide v2

    sput-wide v2, Lcom/mediatek/contacts/calllog/CallLogDateFormatHelper;->sFormattedYesterday:J

    .line 119
    const-string v2, ""

    sput-object v2, Lcom/mediatek/contacts/calllog/CallLogDateFormatHelper;->sToday:Ljava/lang/String;

    .line 120
    const-string v2, ""

    sput-object v2, Lcom/mediatek/contacts/calllog/CallLogDateFormatHelper;->sYesterday:Ljava/lang/String;

    .line 121
    sget-object v2, Lcom/mediatek/contacts/calllog/CallLogDateFormatHelper;->sMapDate:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    const/16 v3, 0x1f4

    if-le v2, v3, :cond_1

    .line 122
    sget-object v2, Lcom/mediatek/contacts/calllog/CallLogDateFormatHelper;->sMapDate:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 127
    :cond_1
    const/4 v2, 0x1

    sput-boolean v2, Lcom/mediatek/contacts/calllog/CallLogDateFormatHelper;->sInitilized:Z

    .line 128
    return-void
.end method
