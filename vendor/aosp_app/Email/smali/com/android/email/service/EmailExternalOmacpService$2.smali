.class Lcom/android/email/service/EmailExternalOmacpService$2;
.super Ljava/lang/Object;
.source "EmailExternalOmacpService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/service/EmailExternalOmacpService;->checkEmailServerConnect(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/service/EmailExternalOmacpService;

.field final synthetic val$account:Lcom/android/emailcommon/provider/Account;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/email/service/EmailExternalOmacpService;Lcom/android/emailcommon/provider/Account;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 453
    iput-object p1, p0, Lcom/android/email/service/EmailExternalOmacpService$2;->this$0:Lcom/android/email/service/EmailExternalOmacpService;

    iput-object p2, p0, Lcom/android/email/service/EmailExternalOmacpService$2;->val$account:Lcom/android/emailcommon/provider/Account;

    iput-object p3, p0, Lcom/android/email/service/EmailExternalOmacpService$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 459
    :try_start_0
    iget-object v3, p0, Lcom/android/email/service/EmailExternalOmacpService$2;->val$account:Lcom/android/emailcommon/provider/Account;

    iget-object v4, p0, Lcom/android/email/service/EmailExternalOmacpService$2;->val$context:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/android/email/mail/Store;->getInstance(Lcom/android/emailcommon/provider/Account;Landroid/content/Context;)Lcom/android/email/mail/Store;

    move-result-object v2

    .line 460
    .local v2, store:Lcom/android/email/mail/Store;
    if-nez v2, :cond_0

    .line 461
    iget-object v3, p0, Lcom/android/email/service/EmailExternalOmacpService$2;->this$0:Lcom/android/email/service/EmailExternalOmacpService;

    const/4 v4, -0x1

    const/4 v5, 0x0

    #calls: Lcom/android/email/service/EmailExternalOmacpService;->sendMessage(ILcom/android/emailcommon/provider/Account;)V
    invoke-static {v3, v4, v5}, Lcom/android/email/service/EmailExternalOmacpService;->access$200(Lcom/android/email/service/EmailExternalOmacpService;ILcom/android/emailcommon/provider/Account;)V

    .line 480
    .end local v2           #store:Lcom/android/email/mail/Store;
    :goto_0
    return-void

    .line 464
    .restart local v2       #store:Lcom/android/email/mail/Store;
    :cond_0
    invoke-virtual {v2}, Lcom/android/email/mail/Store;->checkSettings()Landroid/os/Bundle;

    .line 466
    iget-object v3, p0, Lcom/android/email/service/EmailExternalOmacpService$2;->this$0:Lcom/android/email/service/EmailExternalOmacpService;

    invoke-virtual {v3}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/service/EmailExternalOmacpService$2;->val$account:Lcom/android/emailcommon/provider/Account;

    invoke-static {v3, v4}, Lcom/android/email/mail/Sender;->getInstance(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)Lcom/android/email/mail/Sender;

    move-result-object v1

    .line 467
    .local v1, sender:Lcom/android/email/mail/Sender;
    if-nez v1, :cond_1

    .line 468
    iget-object v3, p0, Lcom/android/email/service/EmailExternalOmacpService$2;->this$0:Lcom/android/email/service/EmailExternalOmacpService;

    const/4 v4, -0x1

    const/4 v5, 0x0

    #calls: Lcom/android/email/service/EmailExternalOmacpService;->sendMessage(ILcom/android/emailcommon/provider/Account;)V
    invoke-static {v3, v4, v5}, Lcom/android/email/service/EmailExternalOmacpService;->access$200(Lcom/android/email/service/EmailExternalOmacpService;ILcom/android/emailcommon/provider/Account;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 476
    .end local v1           #sender:Lcom/android/email/mail/Sender;
    .end local v2           #store:Lcom/android/email/mail/Store;
    :catch_0
    move-exception v0

    .line 477
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "OmacpAddAccountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/android/emailcommon/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 478
    iget-object v3, p0, Lcom/android/email/service/EmailExternalOmacpService$2;->this$0:Lcom/android/email/service/EmailExternalOmacpService;

    #calls: Lcom/android/email/service/EmailExternalOmacpService;->sendMessage(ILcom/android/emailcommon/provider/Account;)V
    invoke-static {v3, v6, v7}, Lcom/android/email/service/EmailExternalOmacpService;->access$200(Lcom/android/email/service/EmailExternalOmacpService;ILcom/android/emailcommon/provider/Account;)V

    goto :goto_0

    .line 471
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #sender:Lcom/android/email/mail/Sender;
    .restart local v2       #store:Lcom/android/email/mail/Store;
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Lcom/android/email/mail/Sender;->close()V

    .line 472
    invoke-virtual {v1}, Lcom/android/email/mail/Sender;->open()V

    .line 473
    invoke-virtual {v1}, Lcom/android/email/mail/Sender;->close()V

    .line 474
    const-string v3, "OmacpAddAccountService"

    const-string v4, "email server check finish."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    iget-object v3, p0, Lcom/android/email/service/EmailExternalOmacpService$2;->this$0:Lcom/android/email/service/EmailExternalOmacpService;

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/email/service/EmailExternalOmacpService$2;->val$account:Lcom/android/emailcommon/provider/Account;

    #calls: Lcom/android/email/service/EmailExternalOmacpService;->sendMessage(ILcom/android/emailcommon/provider/Account;)V
    invoke-static {v3, v4, v5}, Lcom/android/email/service/EmailExternalOmacpService;->access$200(Lcom/android/email/service/EmailExternalOmacpService;ILcom/android/emailcommon/provider/Account;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
