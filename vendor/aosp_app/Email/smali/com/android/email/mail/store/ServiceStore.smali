.class public abstract Lcom/android/email/mail/store/ServiceStore;
.super Lcom/android/email/mail/Store;
.source "ServiceStore.java"


# instance fields
.field protected mHostAuth:Lcom/android/emailcommon/provider/HostAuth;


# direct methods
.method public constructor <init>(Lcom/android/emailcommon/provider/Account;Landroid/content/Context;)V
    .locals 1
    .parameter "account"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/email/mail/Store;-><init>()V

    .line 43
    iput-object p2, p0, Lcom/android/email/mail/Store;->mContext:Landroid/content/Context;

    .line 44
    iget-object v0, p0, Lcom/android/email/mail/Store;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/android/emailcommon/provider/Account;->getOrCreateHostAuthRecv(Landroid/content/Context;)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/mail/store/ServiceStore;->mHostAuth:Lcom/android/emailcommon/provider/HostAuth;

    .line 45
    return-void
.end method


# virtual methods
.method public autoDiscover(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2
    .parameter "context"
    .parameter "username"
    .parameter "password"

    .prologue
    .line 73
    :try_start_0
    invoke-virtual {p0}, Lcom/android/email/mail/store/ServiceStore;->getService()Lcom/android/emailcommon/service/IEmailService;

    move-result-object v1

    invoke-interface {v1, p2, p3}, Lcom/android/emailcommon/service/IEmailService;->autoDiscover(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 75
    :goto_0
    return-object v1

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public checkSettings()Landroid/os/Bundle;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 54
    :try_start_0
    invoke-virtual {p0}, Lcom/android/email/mail/store/ServiceStore;->getService()Lcom/android/emailcommon/service/IEmailService;

    move-result-object v2

    .line 57
    .local v2, svc:Lcom/android/emailcommon/service/IEmailService;
    instance-of v3, v2, Lcom/android/emailcommon/service/EmailServiceProxy;

    if-eqz v3, :cond_0

    .line 58
    move-object v0, v2

    check-cast v0, Lcom/android/emailcommon/service/EmailServiceProxy;

    move-object v3, v0

    const/16 v4, 0x5a

    invoke-virtual {v3, v4}, Lcom/android/emailcommon/service/ServiceProxy;->setTimeout(I)Lcom/android/emailcommon/service/ServiceProxy;

    .line 60
    :cond_0
    iget-object v3, p0, Lcom/android/email/mail/store/ServiceStore;->mHostAuth:Lcom/android/emailcommon/provider/HostAuth;

    invoke-interface {v2, v3}, Lcom/android/emailcommon/service/IEmailService;->validate(Lcom/android/emailcommon/provider/HostAuth;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 61
    .end local v2           #svc:Lcom/android/emailcommon/service/IEmailService;
    :catch_0
    move-exception v1

    .line 62
    .local v1, e:Landroid/os/RemoteException;
    new-instance v3, Lcom/android/emailcommon/mail/MessagingException;

    const-string v4, "Call to validate generated an exception"

    invoke-direct {v3, v4, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method protected abstract getService()Lcom/android/emailcommon/service/IEmailService;
.end method
