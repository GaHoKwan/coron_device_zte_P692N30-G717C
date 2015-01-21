.class public Lcom/isw/android/corp/util/WinksApplication;
.super Ljava/lang/Object;
.source "WinksApplication.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MiniWinksApplication"

.field public static adc:Ljava/lang/String;

.field public static an:Ljava/lang/String;

.field public static appInfoXml:Ljava/lang/String;

.field public static av:Ljava/lang/String;

.field private static bImsiChange:Z

.field private static bInit:Z

.field public static context:Landroid/content/Context;

.field public static ct:Ljava/lang/String;

.field public static imei:Ljava/lang/String;

.field public static imsi:Ljava/lang/String;

.field public static model:Ljava/lang/String;

.field public static ossdk:I

.field public static pkgname:Ljava/lang/String;


# instance fields
.field earPhoneReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 46
    const/4 v0, 0x0

    sput-object v0, Lcom/isw/android/corp/util/WinksApplication;->context:Landroid/content/Context;

    .line 50
    const-string v0, ""

    sput-object v0, Lcom/isw/android/corp/util/WinksApplication;->adc:Ljava/lang/String;

    .line 51
    const-string v0, ""

    sput-object v0, Lcom/isw/android/corp/util/WinksApplication;->an:Ljava/lang/String;

    .line 52
    const-string v0, ""

    sput-object v0, Lcom/isw/android/corp/util/WinksApplication;->av:Ljava/lang/String;

    .line 53
    const-string v0, ""

    sput-object v0, Lcom/isw/android/corp/util/WinksApplication;->model:Ljava/lang/String;

    .line 54
    const-string v0, ""

    sput-object v0, Lcom/isw/android/corp/util/WinksApplication;->imsi:Ljava/lang/String;

    .line 55
    const-string v0, ""

    sput-object v0, Lcom/isw/android/corp/util/WinksApplication;->imei:Ljava/lang/String;

    .line 56
    const-string v0, "company"

    sput-object v0, Lcom/isw/android/corp/util/WinksApplication;->ct:Ljava/lang/String;

    .line 57
    const-string v0, ""

    sput-object v0, Lcom/isw/android/corp/util/WinksApplication;->pkgname:Ljava/lang/String;

    .line 58
    const/4 v0, 0x3

    sput v0, Lcom/isw/android/corp/util/WinksApplication;->ossdk:I

    .line 59
    const-string v0, ""

    sput-object v0, Lcom/isw/android/corp/util/WinksApplication;->appInfoXml:Ljava/lang/String;

    .line 61
    sput-boolean v1, Lcom/isw/android/corp/util/WinksApplication;->bInit:Z

    .line 219
    sput-boolean v1, Lcom/isw/android/corp/util/WinksApplication;->bImsiChange:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isw/android/corp/util/WinksApplication;->earPhoneReceiver:Landroid/content/BroadcastReceiver;

    .line 43
    return-void
.end method

.method public static EngineInit()V
    .locals 0

    .prologue
    .line 171
    invoke-static {}, Lcom/isw/android/corp/util/WinksApplication;->initMemParameter()V

    .line 174
    invoke-static {}, Lcom/isw/android/corp/util/WinksApplication;->initServiceConfig()V

    .line 176
    return-void
.end method

.method static synthetic access$0()Z
    .locals 1

    .prologue
    .line 352
    invoke-static {}, Lcom/isw/android/corp/util/WinksApplication;->isFirstRun()Z

    move-result v0

    return v0
.end method

.method public static actionAfterServiceConfigAvailable()V
    .locals 0

    .prologue
    .line 200
    invoke-static {}, Lcom/isw/android/corp/message/MiniCompanyData;->update()V

    .line 205
    invoke-static {}, Lcom/isw/android/corp/message/MiniCallData;->update()V

    .line 215
    invoke-static {}, Lcom/isw/android/corp/message/MiniPhoneLocation;->update()V

    .line 217
    return-void
.end method

.method public static imsiChange()Z
    .locals 5

    .prologue
    .line 248
    const/4 v0, 0x0

    .line 249
    .local v0, bImsiChange:Z
    const-string v2, "imsi"

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/isw/android/corp/util/LocalConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 250
    .local v1, lastImsi:Ljava/lang/String;
    sget-object v2, Lcom/isw/android/corp/util/WinksApplication;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/isw/android/corp/util/InitFuncs;->initIMSI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/isw/android/corp/util/WinksApplication;->imsi:Ljava/lang/String;

    .line 251
    const-string v2, "MiniWinksApplication"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "lastImsi: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    const-string v2, "MiniWinksApplication"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "imsi: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/isw/android/corp/util/WinksApplication;->imsi:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    sget-object v2, Lcom/isw/android/corp/util/WinksApplication;->imsi:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 255
    const/4 v0, 0x1

    .line 257
    :cond_0
    return v0
.end method

.method public static declared-synchronized initMemParameter()V
    .locals 4

    .prologue
    .line 222
    const-class v1, Lcom/isw/android/corp/util/WinksApplication;

    monitor-enter v1

    :try_start_0
    const-string v0, "adc"

    sget-object v2, Lcom/isw/android/corp/util/WinksApplication;->context:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/isw/android/corp/util/InitFuncs;->initADCValue(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/isw/android/corp/util/WinksApplication;->adc:Ljava/lang/String;

    .line 223
    sget-object v0, Lcom/isw/android/corp/util/WinksApplication;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/isw/android/corp/util/InitFuncs;->initANValue(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/isw/android/corp/util/WinksApplication;->an:Ljava/lang/String;

    .line 224
    invoke-static {}, Lcom/isw/android/corp/util/InitFuncs;->initAVValue()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/isw/android/corp/util/WinksApplication;->av:Ljava/lang/String;

    .line 225
    invoke-static {}, Lcom/isw/android/corp/util/InitFuncs;->initModel()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/isw/android/corp/util/WinksApplication;->model:Ljava/lang/String;

    .line 227
    invoke-static {}, Lcom/isw/android/corp/util/WinksApplication;->imsiChange()Z

    move-result v0

    sput-boolean v0, Lcom/isw/android/corp/util/WinksApplication;->bImsiChange:Z

    .line 229
    sget-object v0, Lcom/isw/android/corp/util/WinksApplication;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/isw/android/corp/util/InitFuncs;->initIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/isw/android/corp/util/WinksApplication;->imei:Ljava/lang/String;

    .line 231
    const-string v0, "MiniWinksApplication"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "an: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/isw/android/corp/util/WinksApplication;->an:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    const-string v0, "MiniWinksApplication"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "av: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/isw/android/corp/util/WinksApplication;->av:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    const-string v0, "MiniWinksApplication"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "adc: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/isw/android/corp/util/WinksApplication;->adc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const-string v0, "MiniWinksApplication"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "imsi: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/isw/android/corp/util/WinksApplication;->imsi:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    const-string v0, "MiniWinksApplication"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "imei: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/isw/android/corp/util/WinksApplication;->imei:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    const-string v0, "MiniWinksApplication"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "encrypt imsi: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/isw/android/corp/util/WinksApplication;->imsi:Ljava/lang/String;

    invoke-static {v3}, Lcom/isw/android/corp/util/AesUtils;->IMSI2token(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    const-string v0, "MiniWinksApplication"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "decrypt imsi: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 238
    sget-object v3, Lcom/isw/android/corp/util/WinksApplication;->imsi:Ljava/lang/String;

    invoke-static {v3}, Lcom/isw/android/corp/util/AesUtils;->IMSI2token(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/isw/android/corp/util/AesUtils;->token2IMSI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 237
    invoke-static {v0, v2}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    const-string v0, "MiniWinksApplication"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "model: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/isw/android/corp/util/WinksApplication;->model:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    monitor-exit v1

    return-void

    .line 222
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized initServiceConfig()V
    .locals 5

    .prologue
    .line 268
    const-class v2, Lcom/isw/android/corp/util/WinksApplication;

    monitor-enter v2

    :try_start_0
    const-string v1, "winks"

    const-string v3, ""

    invoke-static {v1, v3}, Lcom/isw/android/corp/util/LocalConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 270
    .local v0, winks:Ljava/lang/String;
    const-string v1, "MiniWinksApplication"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "winks: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    const-string v1, "MiniWinksApplication"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "bImsiChange: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v4, Lcom/isw/android/corp/util/WinksApplication;->bImsiChange:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    invoke-static {v0}, Lcom/isw/android/corp/util/WinksTools;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/isw/android/corp/util/WinksApplication;->bImsiChange:Z

    if-eqz v1, :cond_1

    .line 276
    :cond_0
    const-string v1, "MiniWinksApplication"

    const-string v3, "[updateServiceConfig] update from network..."

    invoke-static {v1, v3}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/isw/android/corp/message/MiniServiceConfig;->update(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 350
    :goto_0
    monitor-exit v2

    return-void

    .line 281
    :cond_1
    :try_start_1
    const-string v1, "MiniWinksApplication"

    const-string v3, "[updateServiceConfig] load from local file..."

    invoke-static {v1, v3}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    sget-object v1, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    .line 284
    const-string v3, "winks"

    const-string v4, ""

    invoke-static {v3, v4}, Lcom/isw/android/corp/util/LocalConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 283
    iput-object v3, v1, Lcom/isw/android/corp/bean/ServiceConfigBean;->winks:Ljava/lang/String;

    .line 285
    sget-object v1, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    .line 286
    const-string v3, "media"

    const-string v4, ""

    invoke-static {v3, v4}, Lcom/isw/android/corp/util/LocalConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 285
    iput-object v3, v1, Lcom/isw/android/corp/bean/ServiceConfigBean;->media:Ljava/lang/String;

    .line 290
    sget-object v1, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    .line 291
    const-string v3, "sms_number"

    const-string v4, ""

    invoke-static {v3, v4}, Lcom/isw/android/corp/util/LocalConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 290
    iput-object v3, v1, Lcom/isw/android/corp/bean/ServiceConfigBean;->sms_number:Ljava/lang/String;

    .line 292
    sget-object v1, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    .line 293
    const-string v3, "sms_prefix"

    const-string v4, ""

    invoke-static {v3, v4}, Lcom/isw/android/corp/util/LocalConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 292
    iput-object v3, v1, Lcom/isw/android/corp/bean/ServiceConfigBean;->sms_prefix:Ljava/lang/String;

    .line 294
    sget-object v1, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    .line 295
    const-string v3, "sms_type"

    const-string v4, ""

    invoke-static {v3, v4}, Lcom/isw/android/corp/util/LocalConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 294
    iput-object v3, v1, Lcom/isw/android/corp/bean/ServiceConfigBean;->sms_type:Ljava/lang/String;

    .line 296
    sget-object v1, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    .line 297
    const-string v3, "updateCompanyDataPeriod"

    const-string v4, ""

    invoke-static {v3, v4}, Lcom/isw/android/corp/util/LocalConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 296
    iput-object v3, v1, Lcom/isw/android/corp/bean/ServiceConfigBean;->updateCompanyDataPeriod:Ljava/lang/String;

    .line 298
    sget-object v1, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    .line 299
    const-string v3, "uploadCompanyCallHistoryPeriod"

    const-string v4, ""

    invoke-static {v3, v4}, Lcom/isw/android/corp/util/LocalConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 298
    iput-object v3, v1, Lcom/isw/android/corp/bean/ServiceConfigBean;->uploadCompanyCallHistoryPeriod:Ljava/lang/String;

    .line 300
    sget-object v1, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    .line 301
    const-string v3, "updateCompanyBackgroundPeroid"

    const-string v4, ""

    invoke-static {v3, v4}, Lcom/isw/android/corp/util/LocalConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 300
    iput-object v3, v1, Lcom/isw/android/corp/bean/ServiceConfigBean;->updateCompanyBackgroundPeroid:Ljava/lang/String;

    .line 302
    sget-object v1, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    .line 303
    const-string v3, "companyUrl"

    const-string v4, ""

    invoke-static {v3, v4}, Lcom/isw/android/corp/util/LocalConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 302
    iput-object v3, v1, Lcom/isw/android/corp/bean/ServiceConfigBean;->companyUrl:Ljava/lang/String;

    .line 304
    sget-object v1, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    .line 305
    const-string v3, "companyIconUrl"

    const-string v4, ""

    invoke-static {v3, v4}, Lcom/isw/android/corp/util/LocalConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 304
    iput-object v3, v1, Lcom/isw/android/corp/bean/ServiceConfigBean;->companyIconUrl:Ljava/lang/String;

    .line 306
    sget-object v1, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    .line 307
    const-string v3, "dotIconUrl"

    const-string v4, ""

    invoke-static {v3, v4}, Lcom/isw/android/corp/util/LocalConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 306
    iput-object v3, v1, Lcom/isw/android/corp/bean/ServiceConfigBean;->dotIconUrl:Ljava/lang/String;

    .line 308
    sget-object v1, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    .line 309
    const-string v3, "dotmatch"

    const-string v4, ""

    invoke-static {v3, v4}, Lcom/isw/android/corp/util/LocalConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 308
    iput-object v3, v1, Lcom/isw/android/corp/bean/ServiceConfigBean;->dotmatch:Ljava/lang/String;

    .line 310
    sget-object v1, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    .line 311
    const-string v3, "dotCommUrl"

    const-string v4, ""

    invoke-static {v3, v4}, Lcom/isw/android/corp/util/LocalConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 310
    iput-object v3, v1, Lcom/isw/android/corp/bean/ServiceConfigBean;->dotCommUrl:Ljava/lang/String;

    .line 312
    sget-object v1, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    .line 313
    const-string v3, "dotMediaUrl"

    const-string v4, ""

    invoke-static {v3, v4}, Lcom/isw/android/corp/util/LocalConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 312
    iput-object v3, v1, Lcom/isw/android/corp/bean/ServiceConfigBean;->dotMediaUrl:Ljava/lang/String;

    .line 314
    sget-object v1, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    .line 315
    const-string v3, "embedShow"

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/isw/android/corp/util/LocalConfig;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 314
    iput-boolean v3, v1, Lcom/isw/android/corp/bean/ServiceConfigBean;->embedShow:Z

    .line 316
    sget-object v1, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    .line 317
    const-string v3, "enableLog"

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/isw/android/corp/util/LocalConfig;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 316
    iput-boolean v3, v1, Lcom/isw/android/corp/bean/ServiceConfigBean;->enableLog:Z

    .line 319
    sget-object v1, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    .line 320
    const-string v3, "phonepre"

    const-string v4, ""

    invoke-static {v3, v4}, Lcom/isw/android/corp/util/LocalConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 319
    iput-object v3, v1, Lcom/isw/android/corp/bean/ServiceConfigBean;->phonepre:Ljava/lang/String;

    .line 322
    const-string v1, "MiniWinksApplication"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "winks: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    iget-object v4, v4, Lcom/isw/android/corp/bean/ServiceConfigBean;->winks:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    const-string v1, "MiniWinksApplication"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "media: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    iget-object v4, v4, Lcom/isw/android/corp/bean/ServiceConfigBean;->media:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    const-string v1, "MiniWinksApplication"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "sms_number: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 326
    sget-object v4, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    iget-object v4, v4, Lcom/isw/android/corp/bean/ServiceConfigBean;->sms_number:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 325
    invoke-static {v1, v3}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    const-string v1, "MiniWinksApplication"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "sms_prefix: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 328
    sget-object v4, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    iget-object v4, v4, Lcom/isw/android/corp/bean/ServiceConfigBean;->sms_prefix:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 327
    invoke-static {v1, v3}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    const-string v1, "MiniWinksApplication"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "sms_type: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 330
    sget-object v4, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    iget-object v4, v4, Lcom/isw/android/corp/bean/ServiceConfigBean;->sms_type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 329
    invoke-static {v1, v3}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    const-string v1, "MiniWinksApplication"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "updateCompanyDataPeriod: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 332
    sget-object v4, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    iget-object v4, v4, Lcom/isw/android/corp/bean/ServiceConfigBean;->updateCompanyDataPeriod:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 331
    invoke-static {v1, v3}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    const-string v1, "MiniWinksApplication"

    .line 336
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "uploadCompanyCallHistoryPeriod: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 337
    sget-object v4, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    iget-object v4, v4, Lcom/isw/android/corp/bean/ServiceConfigBean;->uploadCompanyCallHistoryPeriod:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 336
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 334
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    const-string v1, "MiniWinksApplication"

    .line 341
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "updateCompanyBackgroundPeroid: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 342
    sget-object v4, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    iget-object v4, v4, Lcom/isw/android/corp/bean/ServiceConfigBean;->updateCompanyBackgroundPeroid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 341
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 339
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    const-string v1, "MiniWinksApplication"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "companyUrl: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 344
    sget-object v4, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    iget-object v4, v4, Lcom/isw/android/corp/bean/ServiceConfigBean;->companyUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 343
    invoke-static {v1, v3}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    const-string v1, "MiniWinksApplication"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "companyIconUrl: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 346
    sget-object v4, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    iget-object v4, v4, Lcom/isw/android/corp/bean/ServiceConfigBean;->companyIconUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 345
    invoke-static {v1, v3}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 268
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static isFirstRun()Z
    .locals 4

    .prologue
    .line 355
    const-string v1, "firstrun"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/isw/android/corp/util/LocalConfig;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 356
    .local v0, bFirstRun:Z
    const-string v1, "MiniWinksApplication"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bFirstRun: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    if-eqz v0, :cond_0

    .line 359
    const-string v1, "firstrun"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/isw/android/corp/util/LocalConfig;->putBoolean(Ljava/lang/String;Z)V

    .line 361
    :cond_0
    return v0
.end method

.method public static onCreate(Landroid/content/Context;)V
    .locals 6
    .parameter "ctx"

    .prologue
    const-wide/16 v4, 0x64

    .line 65
    const-string v1, "MiniWinksApplication"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bInit: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v3, Lcom/isw/android/corp/util/WinksApplication;->bInit:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    sget-boolean v1, Lcom/isw/android/corp/util/WinksApplication;->bInit:Z

    if-eqz v1, :cond_0

    .line 163
    :goto_0
    return-void

    .line 70
    :cond_0
    const/4 v1, 0x1

    sput-boolean v1, Lcom/isw/android/corp/util/WinksApplication;->bInit:Z

    .line 73
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/isw/android/corp/util/WinksApplication;->context:Landroid/content/Context;

    .line 75
    sget-object v1, Lcom/isw/android/corp/util/WinksApplication;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/isw/android/corp/util/WinksApplication;->pkgname:Ljava/lang/String;

    .line 77
    sget-object v1, Lcom/isw/android/corp/util/WinksApplication;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/isw/android/corp/util/WinksApplication;->pkgname:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/isw/android/corp/util/RUtils;->init(Landroid/content/res/Resources;Ljava/lang/String;)V

    .line 79
    :try_start_0
    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/isw/android/corp/util/WinksApplication;->ossdk:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 84
    :goto_1
    const-string v1, "MiniWinksApplication"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "pkgname: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/isw/android/corp/util/WinksApplication;->pkgname:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", ossdk: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/isw/android/corp/util/WinksApplication;->ossdk:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-static {}, Lcom/isw/android/corp/util/LocalConfig;->readDataStorage()J

    move-result-wide v1

    cmp-long v1, v1, v4

    if-gez v1, :cond_1

    .line 87
    invoke-static {}, Lcom/isw/android/corp/util/LocalConfig;->readSDStorage()J

    move-result-wide v1

    cmp-long v1, v1, v4

    if-lez v1, :cond_1

    .line 89
    invoke-static {}, Lcom/isw/android/corp/util/LocalConfig;->setSdcardStorage()V

    .line 93
    :cond_1
    :try_start_1
    new-instance v1, Lcom/isw/android/corp/util/WinksApplication$1;

    invoke-direct {v1}, Lcom/isw/android/corp/util/WinksApplication$1;-><init>()V

    .line 157
    invoke-virtual {v1}, Lcom/isw/android/corp/util/WinksApplication$1;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 159
    :catch_0
    move-exception v0

    .line 160
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 161
    const-string v1, "MiniWinksApplication"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ex: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 81
    .end local v0           #ex:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 82
    .restart local v0       #ex:Ljava/lang/Exception;
    const-string v1, "MiniWinksApplication"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ex: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/isw/android/corp/util/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
