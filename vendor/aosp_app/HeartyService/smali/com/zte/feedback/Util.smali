.class public Lcom/zte/feedback/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field private static final networkTypeLookup:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 57
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "GPRS"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "EDGE"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "UMTS"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "CDMA"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "EVDO_0"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "EVDO_A"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "1xRTT"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "HSDPA"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "HSUPA"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "HSPA"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "IDEN"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "EVDO_B"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "LTE"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "EHRPD"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "HSPAP"

    aput-object v2, v0, v1

    sput-object v0, Lcom/zte/feedback/Util;->networkTypeLookup:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static networkTypeAsString(I)Ljava/lang/String;
    .locals 3
    .parameter "networkTypeAsInt"

    .prologue
    .line 77
    :try_start_0
    sget-object v1, Lcom/zte/feedback/Util;->networkTypeLookup:[Ljava/lang/String;

    aget-object v1, v1, p0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :goto_0
    return-object v1

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    sget-object v1, Lcom/zte/feedback/Util;->networkTypeLookup:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    goto :goto_0
.end method

.method public static offsetTime()Ljava/lang/String;
    .locals 15

    .prologue
    const-wide/16 v13, 0x3e8

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 11
    new-instance v0, Ljava/util/GregorianCalendar;

    const/16 v1, 0x7d0

    move v3, v2

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Ljava/util/GregorianCalendar;-><init>(IIIIII)V

    .line 12
    .local v0, gc:Ljava/util/GregorianCalendar;
    new-instance v1, Ljava/util/SimpleTimeZone;

    const-string v2, "GMT"

    invoke-direct {v1, v4, v2}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 13
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v1

    div-long v7, v1, v13

    .line 15
    .local v7, criterion:J
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    div-long v9, v1, v13

    .line 16
    .local v9, current:J
    sub-long v11, v9, v7

    .line 17
    .local v11, offsetTime:J
    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static transferDid(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "in_id"

    .prologue
    const-wide v8, 0xde0b6b3a7640000L

    const/16 v7, 0x10

    const/16 v6, 0xf

    .line 24
    move-object v1, p0

    .line 26
    .local v1, out_id:Ljava/lang/String;
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 28
    .local v2, pref:C
    const/16 v5, 0x41

    if-lt v2, v5, :cond_0

    const/16 v5, 0x46

    if-le v2, v5, :cond_1

    :cond_0
    const/16 v5, 0x61

    if-lt v2, v5, :cond_3

    const/16 v5, 0x66

    if-gt v2, v5, :cond_3

    .line 29
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v6, :cond_2

    .line 30
    const/4 v5, 0x0

    const/16 v6, 0xe

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 32
    :cond_2
    const/16 v5, 0x10

    invoke-static {p0, v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v3

    .line 33
    .local v3, value:J
    const-wide v5, 0x1bc16d674ec80000L

    add-long/2addr v3, v5

    .line 34
    invoke-static {v3, v4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    .line 54
    .end local v2           #pref:C
    :goto_0
    return-object v1

    .line 40
    .end local v3           #value:J
    .restart local v2       #pref:C
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v7, :cond_4

    .line 41
    const/4 v5, 0x0

    const/16 v6, 0xf

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 43
    :cond_4
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 44
    .restart local v3       #value:J
    add-long/2addr v3, v8

    .line 45
    invoke-static {v3, v4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 50
    .end local v2           #pref:C
    .end local v3           #value:J
    :catch_0
    move-exception v0

    .line 51
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "999999999999999"

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 52
    .restart local v3       #value:J
    add-long v5, v3, v8

    invoke-static {v5, v6}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
