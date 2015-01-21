.class public Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiDateDecoderUtil;
.super Ljava/lang/Object;
.source "SiDateDecoderUtil.java"


# static fields
.field static FORMATTER_WBXML:Ljava/text/SimpleDateFormat;

.field static FORMATTER_XML:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 45
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMddHHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiDateDecoderUtil;->FORMATTER_WBXML:Ljava/text/SimpleDateFormat;

    .line 47
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiDateDecoderUtil;->FORMATTER_XML:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static WbXmlDateDecoder(Ljava/lang/String;)I
    .locals 7
    .parameter "dateStr"

    .prologue
    const/4 v2, 0x0

    .line 54
    if-nez p0, :cond_0

    .line 68
    :goto_0
    return v2

    .line 58
    :cond_0
    :try_start_0
    sget-object v3, Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiDateDecoderUtil;->FORMATTER_WBXML:Ljava/text/SimpleDateFormat;

    const-string v4, "GMT"

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 59
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xe

    if-ge v3, v4, :cond_1

    .line 61
    const-string v3, "%-14s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x20

    const/16 v5, 0x30

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, res:Ljava/lang/String;
    sget-object v3, Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiDateDecoderUtil;->FORMATTER_WBXML:Ljava/text/SimpleDateFormat;

    invoke-virtual {v3, v1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long v2, v3, v5

    long-to-int v2, v2

    goto :goto_0

    .line 64
    .end local v1           #res:Ljava/lang/String;
    :cond_1
    sget-object v3, Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiDateDecoderUtil;->FORMATTER_WBXML:Ljava/text/SimpleDateFormat;

    invoke-virtual {v3, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long v2, v3, v5
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    long-to-int v2, v2

    goto :goto_0

    .line 66
    :catch_0
    move-exception v0

    .line 68
    .local v0, e:Ljava/text/ParseException;
    goto :goto_0
.end method

.method static XmlDateDecoder(Ljava/lang/String;)I
    .locals 6
    .parameter "dateStr"

    .prologue
    const/4 v1, 0x0

    .line 76
    if-nez p0, :cond_0

    .line 85
    :goto_0
    return v1

    .line 81
    :cond_0
    :try_start_0
    sget-object v2, Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiDateDecoderUtil;->FORMATTER_XML:Ljava/text/SimpleDateFormat;

    const-string v3, "GMT"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 82
    sget-object v2, Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiDateDecoderUtil;->FORMATTER_XML:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long v1, v2, v4
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    long-to-int v1, v1

    goto :goto_0

    .line 83
    :catch_0
    move-exception v0

    .line 85
    .local v0, e:Ljava/text/ParseException;
    goto :goto_0
.end method
