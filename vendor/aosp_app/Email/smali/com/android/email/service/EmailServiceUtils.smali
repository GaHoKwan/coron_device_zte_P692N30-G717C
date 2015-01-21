.class public Lcom/android/email/service/EmailServiceUtils;
.super Ljava/lang/Object;
.source "EmailServiceUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/service/EmailServiceUtils$NullEmailService;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    return-void
.end method

.method public static getExchangeService(Landroid/content/Context;Lcom/android/emailcommon/service/IEmailServiceCallback;)Lcom/android/emailcommon/service/IEmailService;
    .locals 1
    .parameter "context"
    .parameter "callback"

    .prologue
    .line 86
    const-string v0, "com.android.email.EXCHANGE_INTENT"

    invoke-static {p0, v0, p1}, Lcom/android/email/service/EmailServiceUtils;->getService(Landroid/content/Context;Ljava/lang/String;Lcom/android/emailcommon/service/IEmailServiceCallback;)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v0

    return-object v0
.end method

.method public static getService(Landroid/content/Context;Ljava/lang/String;Lcom/android/emailcommon/service/IEmailServiceCallback;)Lcom/android/emailcommon/service/IEmailService;
    .locals 1
    .parameter "context"
    .parameter "intentAction"
    .parameter "callback"

    .prologue
    .line 66
    new-instance v0, Lcom/android/emailcommon/service/EmailServiceProxy;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/emailcommon/service/EmailServiceProxy;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/emailcommon/service/IEmailServiceCallback;)V

    return-object v0
.end method

.method public static isExchangeAvailable(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 90
    const-string v0, "com.android.email.EXCHANGE_INTENT"

    invoke-static {p0, v0}, Lcom/android/email/service/EmailServiceUtils;->isServiceAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isServiceAvailable(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .parameter "context"
    .parameter "intentAction"

    .prologue
    .line 73
    new-instance v0, Lcom/android/emailcommon/service/EmailServiceProxy;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/emailcommon/service/EmailServiceProxy;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/emailcommon/service/IEmailServiceCallback;)V

    invoke-virtual {v0}, Lcom/android/emailcommon/service/ServiceProxy;->test()Z

    move-result v0

    return v0
.end method

.method public static startExchangeService(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 77
    const-string v0, "com.android.email.EXCHANGE_INTENT"

    invoke-static {p0, v0}, Lcom/android/email/service/EmailServiceUtils;->startService(Landroid/content/Context;Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public static startService(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "intentAction"

    .prologue
    .line 45
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 46
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startService: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/emailcommon/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public static stopExchangeService(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 81
    const-string v0, "com.android.email.EXCHANGE_INTENT"

    invoke-static {p0, v0}, Lcom/android/email/service/EmailServiceUtils;->stopService(Landroid/content/Context;Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public static stopService(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "intentAction"

    .prologue
    .line 53
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 54
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopService: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/emailcommon/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    return-void
.end method
