.class public Lcom/mediatek/engineermode/ModemCategory;
.super Ljava/lang/Object;
.source "ModemCategory.java"


# static fields
.field public static final MODEM_FDD:I = 0x1

.field public static final MODEM_MASK_EDGE:I = 0x2

.field public static final MODEM_MASK_GPRS:I = 0x1

.field public static final MODEM_MASK_HSDPA:I = 0x10

.field public static final MODEM_MASK_HSUPA:I = 0x20

.field public static final MODEM_MASK_TDSCDMA:I = 0x8

.field public static final MODEM_MASK_WCDMA:I = 0x4

.field public static final MODEM_NO3G:I = 0x3

.field public static final MODEM_TD:I = 0x2

.field private static final TAG:Ljava/lang/String; = "EM_ModemCategory"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getModemType()I
    .locals 7

    .prologue
    .line 71
    const-string v4, "gsm.baseband.capability"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 72
    .local v3, mt:Ljava/lang/String;
    const-string v4, "EM_ModemCategory"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "gsm.baseband.capability "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const/4 v2, 0x3

    .line 74
    .local v2, mode:I
    if-nez v3, :cond_0

    .line 75
    const/4 v2, 0x3

    .line 90
    :goto_0
    return v2

    .line 78
    :cond_0
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 79
    .local v1, mask:I
    and-int/lit8 v4, v1, 0x8

    const/16 v5, 0x8

    if-ne v4, v5, :cond_1

    .line 80
    const/4 v2, 0x2

    goto :goto_0

    .line 81
    :cond_1
    and-int/lit8 v4, v1, 0x4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_2

    .line 82
    const/4 v2, 0x1

    goto :goto_0

    .line 84
    :cond_2
    const/4 v2, 0x3

    goto :goto_0

    .line 86
    .end local v1           #mask:I
    :catch_0
    move-exception v0

    .line 87
    .local v0, e:Ljava/lang/NumberFormatException;
    const/4 v2, 0x3

    goto :goto_0
.end method
