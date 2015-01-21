.class Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;
.super Landroid/os/AsyncTask;
.source "AccountCheckSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/AccountCheckSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccountCheckTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Lcom/android/emailcommon/mail/MessagingException;",
        ">;"
    }
.end annotation


# instance fields
.field final mAccount:Lcom/android/emailcommon/provider/Account;

.field final mCheckEmail:Ljava/lang/String;

.field final mCheckPassword:Ljava/lang/String;

.field final mContext:Landroid/content/Context;

.field final mMode:I

.field final mStoreHost:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/email/activity/setup/AccountCheckSettingsFragment;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/setup/AccountCheckSettingsFragment;ILcom/android/emailcommon/provider/Account;)V
    .locals 1
    .parameter
    .parameter "mode"
    .parameter "checkAccount"

    .prologue
    .line 531
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->this$0:Lcom/android/email/activity/setup/AccountCheckSettingsFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 532
    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mContext:Landroid/content/Context;

    .line 533
    iput p2, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mMode:I

    .line 534
    iput-object p3, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mAccount:Lcom/android/emailcommon/provider/Account;

    .line 535
    iget-object v0, p3, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    iget-object v0, v0, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mStoreHost:Ljava/lang/String;

    .line 536
    iget-object v0, p3, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mCheckEmail:Ljava/lang/String;

    .line 537
    iget-object v0, p3, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    iget-object v0, v0, Lcom/android/emailcommon/provider/HostAuth;->mPassword:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mCheckPassword:Ljava/lang/String;

    .line 538
    return-void
.end method

.method private fakeChecker()Lcom/android/emailcommon/mail/MessagingException;
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 643
    const/16 v0, 0x7d0

    .line 644
    .local v0, DELAY:I
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 687
    :cond_0
    :goto_0
    return-object v3

    .line 645
    :cond_1
    iget v4, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mMode:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_2

    .line 646
    new-array v3, v7, [Ljava/lang/Integer;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p0, v3}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 648
    const-wide/16 v3, 0x7d0

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 656
    :goto_1
    new-instance v1, Lcom/android/emailcommon/provider/HostAuth;

    invoke-direct {v1}, Lcom/android/emailcommon/provider/HostAuth;-><init>()V

    .line 657
    .local v1, auth:Lcom/android/emailcommon/provider/HostAuth;
    const-string v3, "user"

    const-string v4, "password"

    invoke-virtual {v1, v3, v4}, Lcom/android/emailcommon/provider/HostAuth;->setLogin(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    const-string v3, "eas"

    const-string v4, "testserver.com"

    invoke-virtual {v1, v3, v4, v6}, Lcom/android/emailcommon/provider/HostAuth;->setConnection(Ljava/lang/String;Ljava/lang/String;I)V

    .line 659
    new-instance v3, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AutoDiscoverResults;

    invoke-direct {v3, v6, v1}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AutoDiscoverResults;-><init>(ZLcom/android/emailcommon/provider/HostAuth;)V

    goto :goto_0

    .line 649
    .end local v1           #auth:Lcom/android/emailcommon/provider/HostAuth;
    :catch_0
    move-exception v2

    .line 650
    .local v2, e:Ljava/lang/InterruptedException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fakeChecker occur InterruptedException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 661
    .end local v2           #e:Ljava/lang/InterruptedException;
    :cond_2
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 662
    iget v4, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mMode:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_3

    .line 663
    new-array v4, v7, [Ljava/lang/Integer;

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p0, v4}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 665
    const-wide/16 v4, 0x7d0

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    .line 675
    :cond_3
    :goto_2
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 676
    iget v4, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mMode:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_0

    .line 677
    new-array v4, v7, [Ljava/lang/Integer;

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p0, v4}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 679
    const-wide/16 v4, 0x7d0

    :try_start_2
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 680
    :catch_1
    move-exception v2

    .line 681
    .restart local v2       #e:Ljava/lang/InterruptedException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fakeChecker occur InterruptedException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 666
    .end local v2           #e:Ljava/lang/InterruptedException;
    :catch_2
    move-exception v2

    .line 667
    .restart local v2       #e:Ljava/lang/InterruptedException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fakeChecker occur InterruptedException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;)V

    goto :goto_2
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/android/emailcommon/mail/MessagingException;
    .locals 15
    .parameter "params"

    .prologue
    .line 547
    :try_start_0
    iget v12, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mMode:I

    and-int/lit8 v12, v12, 0x4

    if-eqz v12, :cond_4

    .line 548
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v12

    if-eqz v12, :cond_0

    const/4 v5, 0x0

    .line 633
    :goto_0
    return-object v5

    .line 549
    :cond_0
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Integer;

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {p0, v12}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 550
    const-string v12, "Email"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Begin auto-discover for "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mCheckEmail:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    iget-object v12, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v13, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mContext:Landroid/content/Context;

    invoke-static {v12, v13}, Lcom/android/email/mail/Store;->getInstance(Lcom/android/emailcommon/provider/Account;Landroid/content/Context;)Lcom/android/email/mail/Store;

    move-result-object v11

    .line 552
    .local v11, store:Lcom/android/email/mail/Store;
    iget-object v12, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mContext:Landroid/content/Context;

    iget-object v13, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mCheckEmail:Ljava/lang/String;

    iget-object v14, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mCheckPassword:Ljava/lang/String;

    invoke-virtual {v11, v12, v13, v14}, Lcom/android/email/mail/Store;->autoDiscover(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    .line 558
    .local v7, result:Landroid/os/Bundle;
    if-nez v7, :cond_1

    .line 559
    new-instance v5, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AutoDiscoverResults;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct {v5, v12, v13}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AutoDiscoverResults;-><init>(ZLcom/android/emailcommon/provider/HostAuth;)V

    goto :goto_0

    .line 630
    .end local v7           #result:Landroid/os/Bundle;
    .end local v11           #store:Lcom/android/email/mail/Store;
    :catch_0
    move-exception v5

    .line 633
    .local v5, me:Lcom/android/emailcommon/mail/MessagingException;
    goto :goto_0

    .line 561
    .end local v5           #me:Lcom/android/emailcommon/mail/MessagingException;
    .restart local v7       #result:Landroid/os/Bundle;
    .restart local v11       #store:Lcom/android/email/mail/Store;
    :cond_1
    const-string v12, "autodiscover_error_code"

    invoke-virtual {v7, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 563
    .local v3, errorCode:I
    const/16 v12, 0xb

    if-ne v3, v12, :cond_2

    .line 564
    new-instance v5, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AutoDiscoverResults;

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-direct {v5, v12, v13}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AutoDiscoverResults;-><init>(ZLcom/android/emailcommon/provider/HostAuth;)V

    goto :goto_0

    .line 566
    :cond_2
    const/4 v12, -0x1

    if-eq v3, v12, :cond_3

    .line 567
    new-instance v5, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AutoDiscoverResults;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct {v5, v12, v13}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AutoDiscoverResults;-><init>(ZLcom/android/emailcommon/provider/HostAuth;)V

    goto :goto_0

    .line 569
    :cond_3
    const-string v12, "autodiscover_host_auth"

    invoke-virtual {v7, v12}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Lcom/android/emailcommon/provider/HostAuth;

    .line 571
    .local v10, serverInfo:Lcom/android/emailcommon/provider/HostAuth;
    new-instance v5, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AutoDiscoverResults;

    const/4 v12, 0x0

    invoke-direct {v5, v12, v10}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AutoDiscoverResults;-><init>(ZLcom/android/emailcommon/provider/HostAuth;)V

    goto :goto_0

    .line 576
    .end local v3           #errorCode:I
    .end local v7           #result:Landroid/os/Bundle;
    .end local v10           #serverInfo:Lcom/android/emailcommon/provider/HostAuth;
    .end local v11           #store:Lcom/android/email/mail/Store;
    :cond_4
    iget v12, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mMode:I

    and-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_9

    .line 577
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v12

    if-eqz v12, :cond_5

    const/4 v5, 0x0

    goto :goto_0

    .line 578
    :cond_5
    const-string v12, "Email"

    const-string v13, "Begin check of incoming email settings"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Integer;

    const/4 v13, 0x0

    const/4 v14, 0x2

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {p0, v12}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 581
    iget-object v12, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v13, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mContext:Landroid/content/Context;

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Lcom/android/email/mail/Store;->getInstance(Lcom/android/emailcommon/provider/Account;Landroid/content/Context;Z)Lcom/android/email/mail/Store;

    move-result-object v11

    .line 582
    .restart local v11       #store:Lcom/android/email/mail/Store;
    invoke-virtual {v11}, Lcom/android/email/mail/Store;->checkSettings()Landroid/os/Bundle;

    move-result-object v1

    .line 583
    .local v1, bundle:Landroid/os/Bundle;
    const/4 v8, 0x0

    .line 584
    .local v8, resultCode:I
    if-eqz v1, :cond_6

    .line 585
    const-string v12, "validate_result_code"

    invoke-virtual {v1, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 588
    const-string v12, "validate_protocol_version"

    const/4 v13, 0x0

    invoke-virtual {v1, v12, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 590
    .local v6, protocolVerion:Ljava/lang/String;
    if-eqz v6, :cond_6

    .line 591
    iget-object v12, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mAccount:Lcom/android/emailcommon/provider/Account;

    iput-object v6, v12, Lcom/android/emailcommon/provider/Account;->mProtocolVersion:Ljava/lang/String;

    .line 594
    .end local v6           #protocolVerion:Ljava/lang/String;
    :cond_6
    const/4 v12, 0x7

    if-ne v8, v12, :cond_7

    .line 595
    const-string v12, "validate_policy_set"

    invoke-virtual {v1, v12}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v12

    check-cast v12, Lcom/android/emailcommon/provider/Policy;

    invoke-static {v12}, Lcom/android/email/activity/setup/SetupData;->setPolicy(Lcom/android/emailcommon/provider/Policy;)V

    .line 597
    new-instance v5, Lcom/android/emailcommon/mail/MessagingException;

    iget-object v12, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mStoreHost:Ljava/lang/String;

    invoke-direct {v5, v8, v12}, Lcom/android/emailcommon/mail/MessagingException;-><init>(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 599
    :cond_7
    const/16 v12, 0x8

    if-ne v8, v12, :cond_8

    .line 600
    const-string v12, "validate_unsupported_policies"

    invoke-virtual {v1, v12}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 602
    .local v2, data:[Ljava/lang/String;
    new-instance v5, Lcom/android/emailcommon/mail/MessagingException;

    iget-object v12, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mStoreHost:Ljava/lang/String;

    invoke-direct {v5, v8, v12, v2}, Lcom/android/emailcommon/mail/MessagingException;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 604
    .end local v2           #data:[Ljava/lang/String;
    :cond_8
    const/4 v12, -0x1

    if-eq v8, v12, :cond_9

    .line 605
    const-string v12, "validate_error_message"

    invoke-virtual {v1, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 607
    .local v4, errorMessage:Ljava/lang/String;
    new-instance v5, Lcom/android/emailcommon/mail/MessagingException;

    invoke-direct {v5, v8, v4}, Lcom/android/emailcommon/mail/MessagingException;-><init>(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 612
    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v4           #errorMessage:Ljava/lang/String;
    .end local v8           #resultCode:I
    .end local v11           #store:Lcom/android/email/mail/Store;
    :cond_9
    iget v12, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mMode:I

    and-int/lit8 v12, v12, 0x2

    if-eqz v12, :cond_b

    .line 613
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v12

    if-eqz v12, :cond_a

    const/4 v5, 0x0

    goto/16 :goto_0

    .line 614
    :cond_a
    const-string v12, "Email"

    const-string v13, "Begin check of outgoing email settings"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Integer;

    const/4 v13, 0x0

    const/4 v14, 0x3

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {p0, v12}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 616
    iget-object v12, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mContext:Landroid/content/Context;

    iget-object v13, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mAccount:Lcom/android/emailcommon/provider/Account;

    invoke-static {v12, v13}, Lcom/android/email/mail/Sender;->getInstance(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)Lcom/android/email/mail/Sender;

    move-result-object v9

    .line 617
    .local v9, sender:Lcom/android/email/mail/Sender;
    invoke-virtual {v9}, Lcom/android/email/mail/Sender;->close()V

    .line 619
    instance-of v12, v9, Lcom/android/email/mail/transport/SmtpSender;

    if-eqz v12, :cond_c

    .line 620
    move-object v0, v9

    check-cast v0, Lcom/android/email/mail/transport/SmtpSender;

    move-object v12, v0

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/android/email/mail/transport/SmtpSender;->open(Z)V

    .line 625
    :goto_1
    invoke-virtual {v9}, Lcom/android/email/mail/Sender;->close()V

    .line 629
    .end local v9           #sender:Lcom/android/email/mail/Sender;
    :cond_b
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 622
    .restart local v9       #sender:Lcom/android/email/mail/Sender;
    :cond_c
    invoke-virtual {v9}, Lcom/android/email/mail/Sender;->open()V
    :try_end_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 517
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->doInBackground([Ljava/lang/Void;)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/emailcommon/mail/MessagingException;)V
    .locals 6
    .parameter "result"

    .prologue
    const/4 v5, 0x1

    .line 713
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 739
    :goto_0
    return-void

    .line 716
    :cond_0
    if-nez p1, :cond_1

    .line 717
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->this$0:Lcom/android/email/activity/setup/AccountCheckSettingsFragment;

    const/4 v3, 0x4

    const/4 v4, 0x0

    #calls: Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->reportProgress(ILcom/android/emailcommon/mail/MessagingException;Z)V
    invoke-static {v2, v3, v4, v5}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->access$000(Lcom/android/email/activity/setup/AccountCheckSettingsFragment;ILcom/android/emailcommon/mail/MessagingException;Z)V

    goto :goto_0

    .line 719
    :cond_1
    const/4 v1, 0x6

    .line 720
    .local v1, progressState:I
    invoke-virtual {p1}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionType()I

    move-result v0

    .line 722
    .local v0, exceptionType:I
    packed-switch v0, :pswitch_data_0

    .line 737
    :goto_1
    :pswitch_0
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->this$0:Lcom/android/email/activity/setup/AccountCheckSettingsFragment;

    #calls: Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->reportProgress(ILcom/android/emailcommon/mail/MessagingException;Z)V
    invoke-static {v2, v1, p1, v5}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->access$000(Lcom/android/email/activity/setup/AccountCheckSettingsFragment;ILcom/android/emailcommon/mail/MessagingException;Z)V

    goto :goto_0

    .line 726
    :pswitch_1
    const/4 v1, 0x7

    .line 727
    goto :goto_1

    .line 729
    :pswitch_2
    const/16 v1, 0x8

    .line 730
    goto :goto_1

    .line 734
    :pswitch_3
    const/4 v1, 0x5

    goto :goto_1

    .line 722
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 517
    check-cast p1, Lcom/android/emailcommon/mail/MessagingException;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->onPostExecute(Lcom/android/emailcommon/mail/MessagingException;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 4
    .parameter "progress"

    .prologue
    .line 696
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 700
    :goto_0
    return-void

    .line 699
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->this$0:Lcom/android/email/activity/setup/AccountCheckSettingsFragment;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    #calls: Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->reportProgress(ILcom/android/emailcommon/mail/MessagingException;Z)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->access$000(Lcom/android/email/activity/setup/AccountCheckSettingsFragment;ILcom/android/emailcommon/mail/MessagingException;Z)V

    goto :goto_0
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 517
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
