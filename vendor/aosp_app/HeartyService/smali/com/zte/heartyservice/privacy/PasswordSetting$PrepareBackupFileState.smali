.class Lcom/zte/heartyservice/privacy/PasswordSetting$PrepareBackupFileState;
.super Lcom/zte/heartyservice/privacy/PasswordSetting$State;
.source "PasswordSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/privacy/PasswordSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PrepareBackupFileState"
.end annotation


# instance fields
.field private mProgressDialog:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;


# direct methods
.method private constructor <init>(Lcom/zte/heartyservice/privacy/PasswordSetting;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 490
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$PrepareBackupFileState;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    invoke-direct {p0, p1, v0}, Lcom/zte/heartyservice/privacy/PasswordSetting$State;-><init>(Lcom/zte/heartyservice/privacy/PasswordSetting;Lcom/zte/heartyservice/privacy/PasswordSetting$1;)V

    .line 491
    iput-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$PrepareBackupFileState;->mProgressDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/heartyservice/privacy/PasswordSetting;Lcom/zte/heartyservice/privacy/PasswordSetting$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 490
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/privacy/PasswordSetting$PrepareBackupFileState;-><init>(Lcom/zte/heartyservice/privacy/PasswordSetting;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 495
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$PrepareBackupFileState;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    #getter for: Lcom/zte/heartyservice/privacy/PasswordSetting;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$200(Lcom/zte/heartyservice/privacy/PasswordSetting;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$PrepareBackupFileState;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 496
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$PrepareBackupFileState;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$PrepareBackupFileState;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    const v2, 0x7f0a0648

    invoke-virtual {v1, v2}, Lcom/zte/heartyservice/privacy/PasswordSetting;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 498
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$PrepareBackupFileState;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 499
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$PrepareBackupFileState;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 500
    new-instance v0, Lcom/zte/heartyservice/privacy/PasswordSetting$PrepareBackupFileTask;

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$PrepareBackupFileState;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/zte/heartyservice/privacy/PasswordSetting$PrepareBackupFileTask;-><init>(Lcom/zte/heartyservice/privacy/PasswordSetting;Lcom/zte/heartyservice/privacy/PasswordSetting$1;)V

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/privacy/PasswordSetting$PrepareBackupFileTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 501
    return-void
.end method

.method public next()Lcom/zte/heartyservice/privacy/PasswordSetting$State;
    .locals 3

    .prologue
    .line 505
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$PrepareBackupFileState;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 506
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$PrepareBackupFileState;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    #getter for: Lcom/zte/heartyservice/privacy/PasswordSetting;->mBackupFileList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$2300(Lcom/zte/heartyservice/privacy/PasswordSetting;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 507
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 508
    .local v0, data:Landroid/content/Intent;
    const-string v1, "privacy_files"

    iget-object v2, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$PrepareBackupFileState;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    #getter for: Lcom/zte/heartyservice/privacy/PasswordSetting;->mBackupFileList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$2300(Lcom/zte/heartyservice/privacy/PasswordSetting;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 509
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$PrepareBackupFileState;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/zte/heartyservice/privacy/PasswordSetting;->setResult(ILandroid/content/Intent;)V

    .line 510
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$PrepareBackupFileState;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    #getter for: Lcom/zte/heartyservice/privacy/PasswordSetting;->mBackupFileList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$2300(Lcom/zte/heartyservice/privacy/PasswordSetting;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 511
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/zte/heartyservice/privacy/PrivacySetting;->setLastNoticeTime(J)V

    .line 515
    .end local v0           #data:Landroid/content/Intent;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method
