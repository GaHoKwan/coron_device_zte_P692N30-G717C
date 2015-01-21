.class public Lcom/isw/android/corp/util/LOG;
.super Ljava/lang/Object;
.source "LOG.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static debug(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "TAG"
    .parameter "info"

    .prologue
    .line 10
    sget-object v0, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    iget-boolean v0, v0, Lcom/isw/android/corp/bean/ServiceConfigBean;->enableLog:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    :cond_0
    return-void
.end method

.method public static error(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "TAG"
    .parameter "info"

    .prologue
    .line 18
    sget-object v0, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    iget-boolean v0, v0, Lcom/isw/android/corp/bean/ServiceConfigBean;->enableLog:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    :cond_0
    return-void
.end method

.method public static warn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "TAG"
    .parameter "info"

    .prologue
    .line 14
    sget-object v0, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    iget-boolean v0, v0, Lcom/isw/android/corp/bean/ServiceConfigBean;->enableLog:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    :cond_0
    return-void
.end method
