.class Lcom/android/email/service/MailService$2;
.super Ljava/lang/Object;
.source "MailService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/service/MailService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/service/MailService;

.field final synthetic val$accountId:J

.field final synthetic val$alarmManager:Landroid/app/AlarmManager;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$startId:I


# direct methods
.method constructor <init>(Lcom/android/email/service/MailService;Landroid/content/Intent;JLandroid/app/AlarmManager;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 271
    iput-object p1, p0, Lcom/android/email/service/MailService$2;->this$0:Lcom/android/email/service/MailService;

    iput-object p2, p0, Lcom/android/email/service/MailService$2;->val$intent:Landroid/content/Intent;

    iput-wide p3, p0, Lcom/android/email/service/MailService$2;->val$accountId:J

    iput-object p5, p0, Lcom/android/email/service/MailService$2;->val$alarmManager:Landroid/app/AlarmManager;

    iput p6, p0, Lcom/android/email/service/MailService$2;->val$startId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const-wide/16 v11, -0x1

    .line 276
    iget-object v5, p0, Lcom/android/email/service/MailService$2;->this$0:Lcom/android/email/service/MailService;

    iget-object v6, p0, Lcom/android/email/service/MailService$2;->val$intent:Landroid/content/Intent;

    #calls: Lcom/android/email/service/MailService;->restoreSyncReports(Landroid/content/Intent;)V
    invoke-static {v5, v6}, Lcom/android/email/service/MailService;->access$000(Lcom/android/email/service/MailService;Landroid/content/Intent;)V

    .line 279
    sget-boolean v5, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v5, :cond_0

    .line 280
    const-string v5, "Email-MailService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "action: check mail for id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lcom/android/email/service/MailService$2;->val$accountId:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :cond_0
    iget-wide v5, p0, Lcom/android/email/service/MailService$2;->val$accountId:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-ltz v5, :cond_1

    .line 283
    iget-object v5, p0, Lcom/android/email/service/MailService$2;->this$0:Lcom/android/email/service/MailService;

    iget-wide v6, p0, Lcom/android/email/service/MailService$2;->val$accountId:J

    iget-object v8, p0, Lcom/android/email/service/MailService$2;->val$alarmManager:Landroid/app/AlarmManager;

    #calls: Lcom/android/email/service/MailService;->setWatchdog(JLandroid/app/AlarmManager;)V
    invoke-static {v5, v6, v7, v8}, Lcom/android/email/service/MailService;->access$100(Lcom/android/email/service/MailService;JLandroid/app/AlarmManager;)V

    .line 285
    :cond_1
    iget-object v5, p0, Lcom/android/email/service/MailService$2;->this$0:Lcom/android/email/service/MailService;

    iget-object v5, v5, Lcom/android/email/service/MailService;->mController:Lcom/android/email/Controller;

    iget-object v6, p0, Lcom/android/email/service/MailService$2;->this$0:Lcom/android/email/service/MailService;

    #getter for: Lcom/android/email/service/MailService;->mControllerCallback:Lcom/android/email/Controller$Result;
    invoke-static {v6}, Lcom/android/email/service/MailService;->access$200(Lcom/android/email/service/MailService;)Lcom/android/email/Controller$Result;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/email/Controller;->addResultCallback(Lcom/android/email/Controller$Result;)V

    .line 287
    const/4 v4, 0x0

    .line 288
    .local v4, syncStarted:Z
    iget-object v5, p0, Lcom/android/email/service/MailService$2;->this$0:Lcom/android/email/service/MailService;

    iget-wide v6, p0, Lcom/android/email/service/MailService$2;->val$accountId:J

    invoke-static {v5, v6, v7}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 289
    .local v0, account:Lcom/android/emailcommon/provider/Account;
    if-eqz v0, :cond_4

    .line 290
    new-instance v1, Landroid/accounts/Account;

    iget-object v5, v0, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    const-string v6, "com.android.email"

    invoke-direct {v1, v5, v6}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    .local v1, accountManagerAccount:Landroid/accounts/Account;
    iget-wide v5, p0, Lcom/android/email/service/MailService$2;->val$accountId:J

    cmp-long v5, v5, v11

    if-eqz v5, :cond_4

    const-string v5, "com.android.email.provider"

    invoke-static {v1, v5}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 295
    sget-object v6, Lcom/android/email/service/MailService;->mSyncReports:Ljava/util/HashMap;

    monitor-enter v6

    .line 296
    :try_start_0
    sget-object v5, Lcom/android/email/service/MailService;->mSyncReports:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/email/service/MailService$AccountSyncReport;

    .line 297
    .local v3, report:Lcom/android/email/service/MailService$AccountSyncReport;
    iget-wide v7, v3, Lcom/android/email/service/MailService$AccountSyncReport;->accountId:J

    iget-wide v9, p0, Lcom/android/email/service/MailService$2;->val$accountId:J

    cmp-long v5, v7, v9

    if-nez v5, :cond_2

    .line 298
    iget-boolean v5, v3, Lcom/android/email/service/MailService$AccountSyncReport;->syncEnabled:Z

    if-eqz v5, :cond_3

    .line 299
    iget-object v5, p0, Lcom/android/email/service/MailService$2;->this$0:Lcom/android/email/service/MailService;

    iget-object v7, p0, Lcom/android/email/service/MailService$2;->this$0:Lcom/android/email/service/MailService;

    iget-object v7, v7, Lcom/android/email/service/MailService;->mController:Lcom/android/email/Controller;

    iget-wide v8, p0, Lcom/android/email/service/MailService$2;->val$accountId:J

    iget v10, p0, Lcom/android/email/service/MailService$2;->val$startId:I

    #calls: Lcom/android/email/service/MailService;->syncOneAccount(Lcom/android/email/Controller;JI)Z
    invoke-static {v5, v7, v8, v9, v10}, Lcom/android/email/service/MailService;->access$300(Lcom/android/email/service/MailService;Lcom/android/email/Controller;JI)Z

    move-result v4

    .line 305
    .end local v3           #report:Lcom/android/email/service/MailService$AccountSyncReport;
    :cond_3
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 310
    .end local v1           #accountManagerAccount:Landroid/accounts/Account;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_4
    if-nez v4, :cond_6

    .line 312
    iget-wide v5, p0, Lcom/android/email/service/MailService$2;->val$accountId:J

    cmp-long v5, v5, v11

    if-eqz v5, :cond_5

    .line 313
    iget-object v5, p0, Lcom/android/email/service/MailService$2;->this$0:Lcom/android/email/service/MailService;

    iget-wide v6, p0, Lcom/android/email/service/MailService$2;->val$accountId:J

    const/4 v8, 0x0

    #calls: Lcom/android/email/service/MailService;->updateAccountReport(JI)Lcom/android/email/service/MailService$AccountSyncReport;
    invoke-static {v5, v6, v7, v8}, Lcom/android/email/service/MailService;->access$400(Lcom/android/email/service/MailService;JI)Lcom/android/email/service/MailService$AccountSyncReport;

    .line 316
    :cond_5
    iget-object v5, p0, Lcom/android/email/service/MailService$2;->this$0:Lcom/android/email/service/MailService;

    iget-object v6, p0, Lcom/android/email/service/MailService$2;->val$alarmManager:Landroid/app/AlarmManager;

    #calls: Lcom/android/email/service/MailService;->reschedule(Landroid/app/AlarmManager;)V
    invoke-static {v5, v6}, Lcom/android/email/service/MailService;->access$500(Lcom/android/email/service/MailService;Landroid/app/AlarmManager;)V

    .line 318
    iget-object v5, p0, Lcom/android/email/service/MailService$2;->this$0:Lcom/android/email/service/MailService;

    iget v6, p0, Lcom/android/email/service/MailService$2;->val$startId:I

    invoke-virtual {v5, v6}, Landroid/app/Service;->stopSelf(I)V

    .line 319
    iget-object v5, p0, Lcom/android/email/service/MailService$2;->this$0:Lcom/android/email/service/MailService;

    invoke-virtual {v5}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    move-result-object v5

    invoke-static {v5}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v5

    iget-object v6, p0, Lcom/android/email/service/MailService$2;->this$0:Lcom/android/email/service/MailService;

    #getter for: Lcom/android/email/service/MailService;->mControllerCallback:Lcom/android/email/Controller$Result;
    invoke-static {v6}, Lcom/android/email/service/MailService;->access$200(Lcom/android/email/service/MailService;)Lcom/android/email/Controller$Result;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/email/Controller;->removeResultCallback(Lcom/android/email/Controller$Result;)V

    .line 321
    iget-object v5, p0, Lcom/android/email/service/MailService$2;->this$0:Lcom/android/email/service/MailService;

    #calls: Lcom/android/email/service/MailService;->releaseWakeLock()V
    invoke-static {v5}, Lcom/android/email/service/MailService;->access$600(Lcom/android/email/service/MailService;)V

    .line 323
    :cond_6
    return-void

    .line 305
    .restart local v1       #accountManagerAccount:Landroid/accounts/Account;
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method
