.class public Lcom/mediatek/bluetooth/map/util/UtcUtil;
.super Ljava/lang/Object;
.source "UtcUtil.java"


# static fields
.field private static mTime:Landroid/text/format/Time;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    sput-object v0, Lcom/mediatek/bluetooth/map/util/UtcUtil;->mTime:Landroid/text/format/Time;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertMillisToUtc(J)Ljava/lang/String;
    .locals 3
    .parameter "millis"

    .prologue
    .line 55
    sget-object v0, Lcom/mediatek/bluetooth/map/util/UtcUtil;->mTime:Landroid/text/format/Time;

    invoke-virtual {v0, p0, p1}, Landroid/text/format/Time;->set(J)V

    .line 56
    sget-object v0, Lcom/mediatek/bluetooth/map/util/UtcUtil;->mTime:Landroid/text/format/Time;

    invoke-virtual {v0}, Landroid/text/format/Time;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentTime()Ljava/lang/String;
    .locals 5

    .prologue
    .line 49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 50
    .local v0, millis:J
    sget-object v2, Lcom/mediatek/bluetooth/map/util/UtcUtil;->mTime:Landroid/text/format/Time;

    invoke-virtual {v2, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 51
    sget-object v2, Lcom/mediatek/bluetooth/map/util/UtcUtil;->mTime:Landroid/text/format/Time;

    invoke-virtual {v2}, Landroid/text/format/Time;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0xf

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static revertUtcToMillis(Ljava/lang/String;)J
    .locals 4
    .parameter "time"

    .prologue
    const-wide/16 v1, 0x0

    .line 60
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 69
    :cond_0
    :goto_0
    return-wide v1

    .line 64
    :cond_1
    :try_start_0
    sget-object v3, Lcom/mediatek/bluetooth/map/util/UtcUtil;->mTime:Landroid/text/format/Time;

    invoke-virtual {v3, p0}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/util/TimeFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    sget-object v1, Lcom/mediatek/bluetooth/map/util/UtcUtil;->mTime:Landroid/text/format/Time;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v1

    goto :goto_0

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, e:Landroid/util/TimeFormatException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
