.class Lcom/android/email/activity/setup/AccountSettings$LoadAccountListTask;
.super Landroid/os/AsyncTask;
.source "AccountSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/AccountSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadAccountListTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Long;",
        "Ljava/lang/Void;",
        "[",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSettings;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/setup/AccountSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 483
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettings$LoadAccountListTask;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/setup/AccountSettings;Lcom/android/email/activity/setup/AccountSettings$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 483
    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/AccountSettings$LoadAccountListTask;-><init>(Lcom/android/email/activity/setup/AccountSettings;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 483
    check-cast p1, [Ljava/lang/Long;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/setup/AccountSettings$LoadAccountListTask;->doInBackground([Ljava/lang/Long;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Long;)[Ljava/lang/Object;
    .locals 21
    .parameter "params"

    .prologue
    .line 487
    const/16 v20, 0x0

    .line 488
    .local v20, result:[Landroid/preference/PreferenceActivity$Header;
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    .line 489
    .local v11, deletingAccountFound:Ljava/lang/Boolean;
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 491
    .local v12, deletingAccountId:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/setup/AccountSettings$LoadAccountListTask;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/emailcommon/provider/Account;->CONTENT_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 495
    .local v10, c:Landroid/database/Cursor;
    const/16 v16, 0x0

    .line 496
    .local v16, index:I
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v15

    .line 497
    .local v15, headerCount:I
    new-array v0, v15, [Landroid/preference/PreferenceActivity$Header;

    move-object/from16 v20, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v17, v16

    .line 499
    .end local v16           #index:I
    .local v17, index:I
    :goto_0
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 500
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 501
    .local v8, accountId:J
    cmp-long v2, v8, v12

    if-nez v2, :cond_0

    .line 502
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    .line 503
    goto :goto_0

    .line 505
    :cond_0
    const/4 v2, 0x1

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 506
    .local v18, name:Ljava/lang/String;
    const/4 v2, 0x2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 507
    .local v14, email:Ljava/lang/String;
    new-instance v19, Landroid/preference/PreferenceActivity$Header;

    invoke-direct/range {v19 .. v19}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 508
    .local v19, newHeader:Landroid/preference/PreferenceActivity$Header;
    move-object/from16 v0, v19

    iput-wide v8, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    .line 509
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    iput-object v0, v1, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 510
    move-object/from16 v0, v19

    iput-object v14, v0, Landroid/preference/PreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    .line 511
    const-class v2, Lcom/android/email/activity/setup/AccountSettingsFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    iput-object v2, v0, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 512
    invoke-static {v8, v9, v14}, Lcom/android/email/activity/setup/AccountSettingsFragment;->buildArguments(JLjava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    move-object/from16 v0, v19

    iput-object v2, v0, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 515
    add-int/lit8 v16, v17, 0x1

    .end local v17           #index:I
    .restart local v16       #index:I
    :try_start_2
    aput-object v19, v20, v17
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move/from16 v17, v16

    .line 516
    .end local v16           #index:I
    .restart local v17       #index:I
    goto :goto_0

    .line 518
    .end local v8           #accountId:J
    .end local v14           #email:Ljava/lang/String;
    .end local v18           #name:Ljava/lang/String;
    .end local v19           #newHeader:Landroid/preference/PreferenceActivity$Header;
    :cond_1
    if-eqz v10, :cond_2

    .line 519
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 522
    :cond_2
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v20, v2, v3

    const/4 v3, 0x1

    aput-object v11, v2, v3

    return-object v2

    .line 518
    .end local v15           #headerCount:I
    .end local v17           #index:I
    .restart local v16       #index:I
    :catchall_0
    move-exception v2

    :goto_1
    if-eqz v10, :cond_3

    .line 519
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v2

    .line 518
    .end local v16           #index:I
    .restart local v15       #headerCount:I
    .restart local v17       #index:I
    :catchall_1
    move-exception v2

    move/from16 v16, v17

    .end local v17           #index:I
    .restart local v16       #index:I
    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 483
    check-cast p1, [Ljava/lang/Object;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/setup/AccountSettings$LoadAccountListTask;->onPostExecute([Ljava/lang/Object;)V

    return-void
.end method

.method protected onPostExecute([Ljava/lang/Object;)V
    .locals 5
    .parameter "result"

    .prologue
    const/4 v3, 0x1

    .line 527
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_0

    if-nez p1, :cond_1

    .line 567
    :cond_0
    :goto_0
    return-void

    .line 529
    :cond_1
    const/4 v2, 0x0

    aget-object v2, p1, v2

    check-cast v2, [Landroid/preference/PreferenceActivity$Header;

    move-object v1, v2

    check-cast v1, [Landroid/preference/PreferenceActivity$Header;

    .line 530
    .local v1, headers:[Landroid/preference/PreferenceActivity$Header;
    aget-object v2, p1, v3

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 532
    .local v0, deletingAccountFound:Z
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettings$LoadAccountListTask;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    #setter for: Lcom/android/email/activity/setup/AccountSettings;->mAccountListHeaders:[Landroid/preference/PreferenceActivity$Header;
    invoke-static {v2, v1}, Lcom/android/email/activity/setup/AccountSettings;->access$402(Lcom/android/email/activity/setup/AccountSettings;[Landroid/preference/PreferenceActivity$Header;)[Landroid/preference/PreferenceActivity$Header;

    .line 533
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettings$LoadAccountListTask;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    #getter for: Lcom/android/email/activity/setup/AccountSettings;->mIsBackGround:Z
    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSettings;->access$500(Lcom/android/email/activity/setup/AccountSettings;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 534
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettings$LoadAccountListTask;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-virtual {v2}, Landroid/preference/PreferenceActivity;->invalidateHeaders()V

    .line 536
    :cond_2
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettings$LoadAccountListTask;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    #setter for: Lcom/android/email/activity/setup/AccountSettings;->mFinishedLoadAccount:Z
    invoke-static {v2, v3}, Lcom/android/email/activity/setup/AccountSettings;->access$602(Lcom/android/email/activity/setup/AccountSettings;Z)Z

    .line 537
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettings$LoadAccountListTask;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-virtual {v2}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 538
    if-nez v0, :cond_3

    .line 539
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettings$LoadAccountListTask;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    const-wide/16 v3, -0x1

    #setter for: Lcom/android/email/activity/setup/AccountSettings;->mDeletingAccountId:J
    invoke-static {v2, v3, v4}, Lcom/android/email/activity/setup/AccountSettings;->access$702(Lcom/android/email/activity/setup/AccountSettings;J)J

    .line 542
    :cond_3
    if-eqz v1, :cond_4

    array-length v2, v1

    if-gtz v2, :cond_0

    .line 543
    :cond_4
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettings$LoadAccountListTask;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    #getter for: Lcom/android/email/activity/setup/AccountSettings;->mProgressDialog:Landroid/app/DialogFragment;
    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSettings;->access$800(Lcom/android/email/activity/setup/AccountSettings;)Landroid/app/DialogFragment;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 544
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettings$LoadAccountListTask;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    #getter for: Lcom/android/email/activity/setup/AccountSettings;->mProgressDialog:Landroid/app/DialogFragment;
    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSettings;->access$800(Lcom/android/email/activity/setup/AccountSettings;)Landroid/app/DialogFragment;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Fragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 545
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettings$LoadAccountListTask;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    #getter for: Lcom/android/email/activity/setup/AccountSettings;->mProgressDialog:Landroid/app/DialogFragment;
    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSettings;->access$800(Lcom/android/email/activity/setup/AccountSettings;)Landroid/app/DialogFragment;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 547
    :cond_5
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettings$LoadAccountListTask;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    const/4 v3, 0x0

    #setter for: Lcom/android/email/activity/setup/AccountSettings;->mProgressDialog:Landroid/app/DialogFragment;
    invoke-static {v2, v3}, Lcom/android/email/activity/setup/AccountSettings;->access$802(Lcom/android/email/activity/setup/AccountSettings;Landroid/app/DialogFragment;)Landroid/app/DialogFragment;

    .line 551
    :cond_6
    invoke-static {}, Lcom/android/emailcommon/utility/Utility;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/email/activity/setup/AccountSettings$LoadAccountListTask$1;

    invoke-direct {v3, p0}, Lcom/android/email/activity/setup/AccountSettings$LoadAccountListTask$1;-><init>(Lcom/android/email/activity/setup/AccountSettings$LoadAccountListTask;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
