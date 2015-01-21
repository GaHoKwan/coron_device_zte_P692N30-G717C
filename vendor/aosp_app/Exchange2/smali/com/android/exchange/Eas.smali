.class public Lcom/android/exchange/Eas;
.super Ljava/lang/Object;
.source "Eas.java"


# static fields
.field public static final ACCOUNT_MAILBOX_PREFIX:Ljava/lang/String; = "__eas"

.field public static final BODY_PREFERENCE_HTML:Ljava/lang/String; = "2"

.field public static final BODY_PREFERENCE_TEXT:Ljava/lang/String; = "1"

.field public static final CLIENT_VERSION:Ljava/lang/String; = "EAS-1.3"

.field public static DEBUG:Z = false

.field public static final DEFAULT_PROTOCOL_VERSION:Ljava/lang/String; = "2.5"

.field public static final EAS12_TRUNCATION_SIZE:Ljava/lang/String; = "200000"

.field public static final EAS12_TRUNCATION_SIZE_PARTIAL:Ljava/lang/String; = "5120"

.field public static final EAS2_5_FULL_SIZE:Ljava/lang/String; = "8"

.field public static final EAS2_5_TRUNCATION_SIZE:Ljava/lang/String; = "7"

.field public static final EAS_SYNC_IDLE:I = 0x0

.field public static final EAS_SYNC_INIT:I = 0x1

.field public static final EAS_SYNC_NORMAL:I = 0x2

.field public static final EAS_SYNC_RECOVER:I = 0x3

.field public static final EXCHANGE_ACCOUNT_MANAGER_TYPE:Ljava/lang/String; = "com.android.exchange"

.field public static final EXCHANGE_ERROR_NOTIFICATION:I = 0x10

.field public static FILE_LOG:Z = false

.field public static final FILTER_1_DAY:Ljava/lang/String; = null

.field public static final FILTER_1_MONTH:Ljava/lang/String; = null

.field public static final FILTER_1_WEEK:Ljava/lang/String; = null

.field public static final FILTER_2_WEEKS:Ljava/lang/String; = null

.field public static final FILTER_3_DAYS:Ljava/lang/String; = null

.field public static final FILTER_3_MONTHS:Ljava/lang/String; = "6"

.field public static final FILTER_6_MONTHS:Ljava/lang/String; = "7"

.field public static final FILTER_ALL:Ljava/lang/String; = "0"

.field public static final FOLDER_STATUS_INVALID_KEY:I = 0x9

.field public static final FOLDER_STATUS_OK:I = 0x1

.field public static final MIME_BODY_PREFERENCE_MIME:Ljava/lang/String; = "2"

.field public static final MIME_BODY_PREFERENCE_TEXT:Ljava/lang/String; = "0"

.field public static PARSER_LOG:Z = false

.field public static final SUPPORTED_PROTOCOL_EX2003:Ljava/lang/String; = "2.5"

.field public static final SUPPORTED_PROTOCOL_EX2003_DOUBLE:D = 2.5

.field public static final SUPPORTED_PROTOCOL_EX2007:Ljava/lang/String; = "12.0"

.field public static final SUPPORTED_PROTOCOL_EX2007_DOUBLE:D = 12.0

.field public static final SUPPORTED_PROTOCOL_EX2007_SP1:Ljava/lang/String; = "12.1"

.field public static final SUPPORTED_PROTOCOL_EX2007_SP1_DOUBLE:D = 12.1

.field public static final SUPPORTED_PROTOCOL_EX2010:Ljava/lang/String; = "14.0"

.field public static final SUPPORTED_PROTOCOL_EX2010_DOUBLE:D = 14.0

.field public static final SUPPORTED_PROTOCOL_EX2010_SP1:Ljava/lang/String; = "14.1"

.field public static final SUPPORTED_PROTOCOL_EX2010_SP1_DOUBLE:D = 14.1

.field public static USER_LOG:Z

.field public static WAIT_DEBUG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 32
    sput-boolean v0, Lcom/android/exchange/Eas;->WAIT_DEBUG:Z

    .line 33
    sput-boolean v0, Lcom/android/exchange/Eas;->DEBUG:Z

    .line 36
    sput-boolean v0, Lcom/android/exchange/Eas;->USER_LOG:Z

    .line 37
    sput-boolean v0, Lcom/android/exchange/Eas;->PARSER_LOG:Z

    .line 38
    sput-boolean v0, Lcom/android/exchange/Eas;->FILE_LOG:Z

    .line 73
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/exchange/Eas;->FILTER_1_DAY:Ljava/lang/String;

    .line 74
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/exchange/Eas;->FILTER_3_DAYS:Ljava/lang/String;

    .line 75
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/exchange/Eas;->FILTER_1_WEEK:Ljava/lang/String;

    .line 76
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/exchange/Eas;->FILTER_2_WEEKS:Ljava/lang/String;

    .line 77
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/exchange/Eas;->FILTER_1_MONTH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getProtocolVersionDouble(Ljava/lang/String;)Ljava/lang/Double;
    .locals 2
    .parameter "version"

    .prologue
    .line 126
    const-string v0, "2.5"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    const-wide/high16 v0, 0x4004

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 135
    :goto_0
    return-object v0

    .line 128
    :cond_0
    const-string v0, "12.0"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    const-wide/high16 v0, 0x4028

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    .line 130
    :cond_1
    const-string v0, "12.1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 131
    const-wide v0, 0x4028333333333333L

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    .line 132
    :cond_2
    const-string v0, "14.0"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 133
    const-wide/high16 v0, 0x402c

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    .line 134
    :cond_3
    const-string v0, "14.1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 135
    const-wide v0, 0x402c333333333333L

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    .line 137
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "illegal protocol version"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setUserDebug(I)V
    .locals 3
    .parameter "state"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 109
    sget-boolean v0, Lcom/android/exchange/Eas;->DEBUG:Z

    if-nez v0, :cond_3

    .line 110
    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_4

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/exchange/Eas;->USER_LOG:Z

    .line 111
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_5

    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/android/exchange/Eas;->PARSER_LOG:Z

    .line 112
    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_6

    move v0, v1

    :goto_2
    sput-boolean v0, Lcom/android/exchange/Eas;->FILE_LOG:Z

    .line 114
    sget-boolean v0, Lcom/android/exchange/Eas;->USER_LOG:Z

    sput-boolean v0, Lcom/android/emailcommon/Logging;->DEBUG:Z

    .line 115
    and-int/lit8 v0, p0, 0x10

    if-eqz v0, :cond_7

    move v0, v1

    :goto_3
    sput-boolean v0, Lcom/android/emailcommon/Logging;->LOGD:Z

    .line 116
    and-int/lit8 v0, p0, 0x20

    if-eqz v0, :cond_0

    move v2, v1

    :cond_0
    sput-boolean v2, Lcom/android/emailcommon/Logging;->LOG_PERFORMANCE:Z

    .line 117
    sget-boolean v0, Lcom/android/exchange/Eas;->FILE_LOG:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/exchange/Eas;->PARSER_LOG:Z

    if-eqz v0, :cond_2

    .line 118
    :cond_1
    sput-boolean v1, Lcom/android/exchange/Eas;->USER_LOG:Z

    .line 120
    :cond_2
    const-string v1, "Eas Debug"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Logging: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v0, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v0, :cond_8

    const-string v0, "User "

    :goto_4
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v0, Lcom/android/exchange/Eas;->PARSER_LOG:Z

    if-eqz v0, :cond_9

    const-string v0, "Parser "

    :goto_5
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v0, Lcom/android/exchange/Eas;->FILE_LOG:Z

    if-eqz v0, :cond_a

    const-string v0, "File"

    :goto_6
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_3
    return-void

    :cond_4
    move v0, v2

    .line 110
    goto :goto_0

    :cond_5
    move v0, v2

    .line 111
    goto :goto_1

    :cond_6
    move v0, v2

    .line 112
    goto :goto_2

    :cond_7
    move v0, v2

    .line 115
    goto :goto_3

    .line 120
    :cond_8
    const-string v0, ""

    goto :goto_4

    :cond_9
    const-string v0, ""

    goto :goto_5

    :cond_a
    const-string v0, ""

    goto :goto_6
.end method
