.class Lcom/android/email/activity/setup/AccountSetupOptions$5;
.super Ljava/lang/Object;
.source "AccountSetupOptions.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountSetupOptions;->saveAccountAndFinish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSetupOptions;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSetupOptions;)V
    .locals 0
    .parameter

    .prologue
    .line 441
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupOptions$5;->this$0:Lcom/android/email/activity/setup/AccountSetupOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 444
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupOptions$5;->this$0:Lcom/android/email/activity/setup/AccountSetupOptions;

    .line 446
    .local v1, context:Lcom/android/email/activity/setup/AccountSetupOptions;
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 447
    .local v0, account:Lcom/android/emailcommon/provider/Account;
    invoke-static {}, Lcom/android/email/activity/setup/AccountSetupOptions;->access$200()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 448
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveAccountAndFinish clearSecurityHoldFlag, accountId: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;)V

    .line 450
    iget-wide v4, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v1, v4, v5}, Lcom/android/emailcommon/provider/Account;->clearSecurityHoldFlag(Landroid/content/Context;J)V

    .line 451
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 453
    invoke-static {v1}, Lcom/android/email/Email;->setServicesEnabledSync(Landroid/content/Context;)Z

    .line 454
    invoke-static {v1}, Lcom/android/email/service/EmailServiceUtils;->startExchangeService(Landroid/content/Context;)V

    .line 460
    const/4 v2, 0x2

    const-string v3, "AccountSetupOptions:saveAccountFinish"

    invoke-static {v2, v3}, Lcom/android/emailcommon/Logging;->performance(ILjava/lang/String;)V

    .line 464
    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSetupNames;->actionSetNames(Landroid/app/Activity;)V

    .line 465
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupOptions$5;->this$0:Lcom/android/email/activity/setup/AccountSetupOptions;

    invoke-virtual {v2}, Lcom/android/email/activity/setup/AccountSetupOptions;->finish()V

    .line 466
    return-void

    .line 451
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
