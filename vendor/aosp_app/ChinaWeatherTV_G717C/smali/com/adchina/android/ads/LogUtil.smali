.class public Lcom/adchina/android/ads/LogUtil;
.super Ljava/lang/Object;


# static fields
.field public static listener:Lcom/adchina/android/ads/LogUtilChangeListener;

.field public static sb:Ljava/lang/StringBuffer;

.field public static tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "adChina"

    sput-object v0, Lcom/adchina/android/ads/LogUtil;->tag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    sput-object v0, Lcom/adchina/android/ads/LogUtil;->sb:Ljava/lang/StringBuffer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addLog(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/adchina/android/ads/AdManager;->ismLogShow()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/adchina/android/ads/LogUtil;->sb:Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v0, Lcom/adchina/android/ads/LogUtil;->tag:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/adchina/android/ads/LogUtil;->listener:Lcom/adchina/android/ads/LogUtilChangeListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/adchina/android/ads/LogUtil;->listener:Lcom/adchina/android/ads/LogUtilChangeListener;

    invoke-interface {v0}, Lcom/adchina/android/ads/LogUtilChangeListener;->onChanged()V

    :cond_0
    return-void
.end method

.method public static clearLog()V
    .locals 2

    sget-object v0, Lcom/adchina/android/ads/LogUtil;->sb:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    sget-object v0, Lcom/adchina/android/ads/LogUtil;->listener:Lcom/adchina/android/ads/LogUtilChangeListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/adchina/android/ads/LogUtil;->listener:Lcom/adchina/android/ads/LogUtilChangeListener;

    invoke-interface {v0}, Lcom/adchina/android/ads/LogUtilChangeListener;->onChanged()V

    :cond_0
    return-void
.end method

.method public static getListener()Lcom/adchina/android/ads/LogUtilChangeListener;
    .locals 1

    sget-object v0, Lcom/adchina/android/ads/LogUtil;->listener:Lcom/adchina/android/ads/LogUtilChangeListener;

    return-object v0
.end method

.method public static getNowTime()Ljava/lang/String;
    .locals 5

    const-string v0, ""

    :try_start_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/sql/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/sql/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getSb()Ljava/lang/StringBuffer;
    .locals 1

    sget-object v0, Lcom/adchina/android/ads/LogUtil;->sb:Ljava/lang/StringBuffer;

    return-object v0
.end method

.method public static setListener(Lcom/adchina/android/ads/LogUtilChangeListener;)V
    .locals 0

    sput-object p0, Lcom/adchina/android/ads/LogUtil;->listener:Lcom/adchina/android/ads/LogUtilChangeListener;

    return-void
.end method

.method public static setSb(Ljava/lang/StringBuffer;)V
    .locals 0

    sput-object p0, Lcom/adchina/android/ads/LogUtil;->sb:Ljava/lang/StringBuffer;

    return-void
.end method
