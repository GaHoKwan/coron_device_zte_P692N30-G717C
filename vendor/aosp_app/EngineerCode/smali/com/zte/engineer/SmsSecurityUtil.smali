.class public Lcom/zte/engineer/SmsSecurityUtil;
.super Ljava/lang/Object;
.source "SmsSecurityUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Emode.SmsSecurityUtil"

.field private static final mEmodeSvr:Lcom/zte/engineer/EmodeSvrManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    invoke-static {}, Lcom/zte/engineer/EmodeSvrManager;->getInstance()Lcom/zte/engineer/EmodeSvrManager;

    move-result-object v0

    sput-object v0, Lcom/zte/engineer/SmsSecurityUtil;->mEmodeSvr:Lcom/zte/engineer/EmodeSvrManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final checkSmsSecurityExist()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 17
    new-instance v0, Ljava/io/File;

    const-string v2, "/data/emode/smsmode.conf"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 19
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 20
    const/4 v1, 0x1

    .line 24
    :goto_0
    return v1

    .line 23
    :cond_0
    sget-object v2, Lcom/zte/engineer/SmsSecurityUtil;->mEmodeSvr:Lcom/zte/engineer/EmodeSvrManager;

    const/4 v3, 0x5

    invoke-virtual {v2, v3, v1}, Lcom/zte/engineer/EmodeSvrManager;->doEmodeCmd(II)I

    goto :goto_0
.end method

.method public static getAccessType()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/zte/engineer/EmodeException;
        }
    .end annotation

    .prologue
    .line 262
    const/4 v2, 0x0

    .line 265
    .local v2, prop:Ljava/util/Properties;
    :try_start_0
    invoke-static {}, Lcom/zte/engineer/SmsSecurityUtil;->getSecuritySmsProp()Ljava/util/Properties;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 271
    if-nez v2, :cond_0

    .line 272
    const-string v0, "unkown"

    .line 276
    :goto_0
    return-object v0

    .line 266
    :catch_0
    move-exception v1

    .line 267
    .local v1, e:Ljava/io/IOException;
    const-string v3, "Emode.SmsSecurityUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAccessType:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    throw v1

    .line 274
    .end local v1           #e:Ljava/io/IOException;
    :cond_0
    const-string v3, "send_sms_access_type"

    const-string v4, "0"

    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 276
    .local v0, access_type:Ljava/lang/String;
    goto :goto_0
.end method

.method public static getAntifakeSMS()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/zte/engineer/EmodeException;
        }
    .end annotation

    .prologue
    .line 282
    const/4 v2, 0x0

    .line 285
    .local v2, prop:Ljava/util/Properties;
    :try_start_0
    invoke-static {}, Lcom/zte/engineer/SmsSecurityUtil;->getSecuritySmsProp()Ljava/util/Properties;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 291
    if-nez v2, :cond_0

    .line 292
    const-string v0, "unkown"

    .line 296
    :goto_0
    return-object v0

    .line 286
    :catch_0
    move-exception v1

    .line 287
    .local v1, e:Ljava/io/IOException;
    const-string v3, "Emode.SmsSecurityUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAntifakeSMS:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    throw v1

    .line 294
    .end local v1           #e:Ljava/io/IOException;
    :cond_0
    const-string v3, "antifakesms"

    const-string v4, "0"

    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 296
    .local v0, antifake:Ljava/lang/String;
    goto :goto_0
.end method

.method public static getBeyoundTimes()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/zte/engineer/EmodeException;
        }
    .end annotation

    .prologue
    .line 242
    const/4 v2, 0x0

    .line 245
    .local v2, prop:Ljava/util/Properties;
    :try_start_0
    invoke-static {}, Lcom/zte/engineer/SmsSecurityUtil;->getSecuritySmsProp()Ljava/util/Properties;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 251
    if-nez v2, :cond_0

    .line 252
    const-string v0, "unkown"

    .line 256
    :goto_0
    return-object v0

    .line 246
    :catch_0
    move-exception v1

    .line 247
    .local v1, e:Ljava/io/IOException;
    const-string v3, "Emode.SmsSecurityUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getBeyoundTimes:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    throw v1

    .line 254
    .end local v1           #e:Ljava/io/IOException;
    :cond_0
    const-string v3, "beyound_times"

    const-string v4, "0"

    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 256
    .local v0, beyoundtimes:Ljava/lang/String;
    goto :goto_0
.end method

.method public static final getConfigInputStream()Ljava/io/FileInputStream;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zte/engineer/EmodeException;
        }
    .end annotation

    .prologue
    .line 47
    const/4 v1, 0x0

    .line 49
    .local v1, in:Ljava/io/FileInputStream;
    invoke-static {}, Lcom/zte/engineer/SmsSecurityUtil;->checkSmsSecurityExist()Z

    move-result v3

    if-nez v3, :cond_0

    .line 50
    new-instance v3, Lcom/zte/engineer/EmodeException;

    const-string v4, "Emode.SmsSecurityUtil"

    const-string v5, "getConfigInputStream: checkSmsSecurityExist is false"

    invoke-direct {v3, v4, v5}, Lcom/zte/engineer/EmodeException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v3

    .line 55
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    const-string v3, "/data/emode/smsmode.conf"

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #in:Ljava/io/FileInputStream;
    .local v2, in:Ljava/io/FileInputStream;
    move-object v1, v2

    .line 59
    .end local v2           #in:Ljava/io/FileInputStream;
    .restart local v1       #in:Ljava/io/FileInputStream;
    :goto_0
    return-object v1

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v3, "Emode.SmsSecurityUtil"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static final getConfigOutStream()Ljava/io/FileOutputStream;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zte/engineer/EmodeException;
        }
    .end annotation

    .prologue
    .line 29
    const/4 v1, 0x0

    .line 31
    .local v1, out:Ljava/io/FileOutputStream;
    invoke-static {}, Lcom/zte/engineer/SmsSecurityUtil;->checkSmsSecurityExist()Z

    move-result v3

    if-nez v3, :cond_0

    .line 32
    new-instance v3, Lcom/zte/engineer/EmodeException;

    const-string v4, "Emode.SmsSecurityUtil"

    const-string v5, "getConfigOutStream: checkSmsSecurityExist is false"

    invoke-direct {v3, v4, v5}, Lcom/zte/engineer/EmodeException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v3

    .line 37
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    const-string v3, "/data/emode/smsmode.conf"

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #out:Ljava/io/FileOutputStream;
    .local v2, out:Ljava/io/FileOutputStream;
    move-object v1, v2

    .line 42
    .end local v2           #out:Ljava/io/FileOutputStream;
    .restart local v1       #out:Ljava/io/FileOutputStream;
    :goto_0
    return-object v1

    .line 38
    :catch_0
    move-exception v0

    .line 39
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v3, "Emode.SmsSecurityUtil"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getDefaultSendToNumber()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/zte/engineer/EmodeException;
        }
    .end annotation

    .prologue
    .line 356
    const-string v1, "CDMA:106598490007"

    .line 357
    .local v1, number1:Ljava/lang/String;
    const-string v2, "GSM  :075526772009"

    .line 358
    .local v2, number2:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 359
    .local v0, number:Ljava/lang/String;
    return-object v0
.end method

.method public static getIsFactorModal()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/zte/engineer/EmodeException;
        }
    .end annotation

    .prologue
    .line 302
    const/4 v2, 0x0

    .line 305
    .local v2, prop:Ljava/util/Properties;
    :try_start_0
    invoke-static {}, Lcom/zte/engineer/SmsSecurityUtil;->getSecuritySmsProp()Ljava/util/Properties;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 311
    if-nez v2, :cond_0

    .line 312
    const-string v0, "unkown"

    .line 316
    :goto_0
    return-object v0

    .line 306
    :catch_0
    move-exception v1

    .line 307
    .local v1, e:Ljava/io/IOException;
    const-string v3, "Emode.SmsSecurityUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getIsFactorModal:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    throw v1

    .line 314
    .end local v1           #e:Ljava/io/IOException;
    :cond_0
    const-string v3, "IsFactorModal"

    const-string v4, "0"

    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 316
    .local v0, IsModal:Ljava/lang/String;
    goto :goto_0
.end method

.method public static getIsSendedOK()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/zte/engineer/EmodeException;
        }
    .end annotation

    .prologue
    .line 222
    const/4 v1, 0x0

    .line 225
    .local v1, prop:Ljava/util/Properties;
    :try_start_0
    invoke-static {}, Lcom/zte/engineer/SmsSecurityUtil;->getSecuritySmsProp()Ljava/util/Properties;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 231
    if-nez v1, :cond_0

    .line 232
    const-string v2, "unkown"

    .line 236
    :goto_0
    return-object v2

    .line 226
    :catch_0
    move-exception v0

    .line 227
    .local v0, e:Ljava/io/IOException;
    const-string v3, "Emode.SmsSecurityUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getIsSendedOK:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    throw v0

    .line 234
    .end local v0           #e:Ljava/io/IOException;
    :cond_0
    const-string v3, "is_Security_Sms_Send_OK"

    const-string v4, "0"

    invoke-virtual {v1, v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 236
    .local v2, sendok:Ljava/lang/String;
    goto :goto_0
.end method

.method public static getSecurityFactoryState()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/zte/engineer/EmodeException;
        }
    .end annotation

    .prologue
    .line 182
    const/4 v1, 0x0

    .line 185
    .local v1, prop:Ljava/util/Properties;
    :try_start_0
    invoke-static {}, Lcom/zte/engineer/SmsSecurityUtil;->getSecuritySmsProp()Ljava/util/Properties;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 191
    if-nez v1, :cond_0

    .line 192
    const/4 v3, 0x0

    .line 196
    :goto_0
    return v3

    .line 186
    :catch_0
    move-exception v0

    .line 187
    .local v0, e:Ljava/io/IOException;
    const-string v3, "Emode.SmsSecurityUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSecurityFactoryState:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    throw v0

    .line 194
    .end local v0           #e:Ljava/io/IOException;
    :cond_0
    const-string v3, "IsFactorModal"

    const-string v4, "0"

    invoke-virtual {v1, v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 196
    .local v2, smsstate:Ljava/lang/String;
    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0
.end method

.method public static getSecuritySmsProp()Ljava/util/Properties;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/zte/engineer/EmodeException;
        }
    .end annotation

    .prologue
    .line 64
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    .line 65
    .local v2, prop:Ljava/util/Properties;
    const/4 v1, 0x0

    .line 68
    .local v1, in:Ljava/io/FileInputStream;
    :try_start_0
    invoke-static {}, Lcom/zte/engineer/SmsSecurityUtil;->getConfigInputStream()Ljava/io/FileInputStream;

    move-result-object v1

    .line 70
    if-nez v1, :cond_0

    .line 71
    const/4 v2, 0x0

    .line 80
    .end local v2           #prop:Ljava/util/Properties;
    :goto_0
    return-object v2

    .line 73
    .restart local v2       #prop:Ljava/util/Properties;
    :cond_0
    invoke-virtual {v2, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 74
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, e:Ljava/io/IOException;
    const-string v3, "Emode.SmsSecurityUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSecuritySmsProp:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    throw v0
.end method

.method public static getSecuritySmsState()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/zte/engineer/EmodeException;
        }
    .end annotation

    .prologue
    .line 85
    const/4 v1, 0x0

    .line 88
    .local v1, prop:Ljava/util/Properties;
    :try_start_0
    invoke-static {}, Lcom/zte/engineer/SmsSecurityUtil;->getSecuritySmsProp()Ljava/util/Properties;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 94
    if-nez v1, :cond_0

    .line 95
    const/4 v3, 0x0

    .line 99
    :goto_0
    return v3

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, e:Ljava/io/IOException;
    const-string v3, "Emode.SmsSecurityUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSecuritySmsState:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    throw v0

    .line 97
    .end local v0           #e:Ljava/io/IOException;
    :cond_0
    const-string v3, "antifakesms"

    const-string v4, "0"

    invoke-virtual {v1, v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 99
    .local v2, smsstate:Ljava/lang/String;
    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0
.end method

.method public static getSecurityaccesstypeState()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/zte/engineer/EmodeException;
        }
    .end annotation

    .prologue
    .line 201
    const/4 v1, 0x0

    .line 204
    .local v1, prop:Ljava/util/Properties;
    :try_start_0
    invoke-static {}, Lcom/zte/engineer/SmsSecurityUtil;->getSecuritySmsProp()Ljava/util/Properties;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 210
    if-nez v1, :cond_0

    .line 211
    const-string v2, "unkown"

    .line 215
    :goto_0
    return-object v2

    .line 205
    :catch_0
    move-exception v0

    .line 206
    .local v0, e:Ljava/io/IOException;
    const-string v3, "Emode.SmsSecurityUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSecurityaccesstypeState:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    throw v0

    .line 213
    .end local v0           #e:Ljava/io/IOException;
    :cond_0
    const-string v3, "send_sms_access_type"

    const-string v4, "0"

    invoke-virtual {v1, v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 215
    .local v2, smsstate:Ljava/lang/String;
    goto :goto_0
.end method

.method public static getSendToNumber()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/zte/engineer/EmodeException;
        }
    .end annotation

    .prologue
    .line 322
    const/4 v2, 0x0

    .line 325
    .local v2, prop:Ljava/util/Properties;
    :try_start_0
    invoke-static {}, Lcom/zte/engineer/SmsSecurityUtil;->getSecuritySmsProp()Ljava/util/Properties;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 331
    if-nez v2, :cond_0

    .line 332
    const-string v1, "unkown"

    .line 336
    :goto_0
    return-object v1

    .line 326
    :catch_0
    move-exception v0

    .line 327
    .local v0, e:Ljava/io/IOException;
    const-string v3, "Emode.SmsSecurityUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSendToNumber:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    throw v0

    .line 334
    .end local v0           #e:Ljava/io/IOException;
    :cond_0
    const-string v3, "smsphonenumber"

    const-string v4, "0"

    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 336
    .local v1, number:Ljava/lang/String;
    goto :goto_0
.end method

.method public static setSmsIsFactory(Ljava/util/Properties;Z)Z
    .locals 6
    .parameter "prop"
    .parameter "isFactory"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zte/engineer/EmodeException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 155
    const/4 v1, 0x0

    .line 157
    .local v1, fout:Ljava/io/FileOutputStream;
    invoke-static {}, Lcom/zte/engineer/SmsSecurityUtil;->getConfigOutStream()Ljava/io/FileOutputStream;

    move-result-object v1

    .line 158
    if-nez v1, :cond_0

    .line 177
    :goto_0
    return v2

    .line 162
    :cond_0
    if-eqz p1, :cond_1

    .line 163
    const-string v3, "IsFactorModal"

    const-string v4, "1"

    invoke-virtual {p0, v3, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 168
    :goto_1
    const-string v3, ""

    invoke-virtual {p0, v1, v3}, Ljava/util/Properties;->save(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 171
    :try_start_0
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    const/4 v2, 0x1

    goto :goto_0

    .line 165
    :cond_1
    const-string v3, "IsFactorModal"

    const-string v4, "0"

    invoke-virtual {p0, v3, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_1

    .line 172
    :catch_0
    move-exception v0

    .line 173
    .local v0, e:Ljava/io/IOException;
    const-string v3, "Emode.SmsSecurityUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setSmsSwitchState:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setSmsNumber(Ljava/util/Properties;Ljava/lang/String;)Z
    .locals 6
    .parameter "prop"
    .parameter "number"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zte/engineer/EmodeException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 104
    const/4 v1, 0x0

    .line 106
    .local v1, fout:Ljava/io/FileOutputStream;
    invoke-static {}, Lcom/zte/engineer/SmsSecurityUtil;->getConfigOutStream()Ljava/io/FileOutputStream;

    move-result-object v1

    .line 107
    if-nez v1, :cond_0

    .line 121
    :goto_0
    return v2

    .line 111
    :cond_0
    const-string v3, "smsphonenumber"

    invoke-virtual {p0, v3, p1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 112
    const-string v3, ""

    invoke-virtual {p0, v1, v3}, Ljava/util/Properties;->save(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 115
    :try_start_0
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    const/4 v2, 0x1

    goto :goto_0

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, e:Ljava/io/IOException;
    const-string v3, "Emode.SmsSecurityUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setSmsNumber:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setSmsSwitchState(Ljava/util/Properties;Z)Z
    .locals 6
    .parameter "prop"
    .parameter "isOn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zte/engineer/EmodeException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 126
    const/4 v1, 0x0

    .line 128
    .local v1, fout:Ljava/io/FileOutputStream;
    invoke-static {}, Lcom/zte/engineer/SmsSecurityUtil;->getConfigOutStream()Ljava/io/FileOutputStream;

    move-result-object v1

    .line 129
    if-nez v1, :cond_0

    .line 150
    :goto_0
    return v2

    .line 133
    :cond_0
    if-eqz p1, :cond_1

    .line 134
    const-string v3, "antifakesms"

    const-string v4, "1"

    invoke-virtual {p0, v3, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 135
    const-string v3, "is_MetaOperation"

    const-string v4, "1"

    invoke-virtual {p0, v3, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 141
    :goto_1
    const-string v3, ""

    invoke-virtual {p0, v1, v3}, Ljava/util/Properties;->save(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 144
    :try_start_0
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    const/4 v2, 0x1

    goto :goto_0

    .line 137
    :cond_1
    const-string v3, "antifakesms"

    const-string v4, "0"

    invoke-virtual {p0, v3, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 138
    const-string v3, "is_MetaOperation"

    const-string v4, "0"

    invoke-virtual {p0, v3, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_1

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, e:Ljava/io/IOException;
    const-string v3, "Emode.SmsSecurityUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setSmsSwitchState:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
