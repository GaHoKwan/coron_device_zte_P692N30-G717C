.class Lcom/zte/heartyservice/privacy/PasswordSetting$RestoreCheckPasswordState;
.super Lcom/zte/heartyservice/privacy/PasswordSetting$PasswordState;
.source "PasswordSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/privacy/PasswordSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RestoreCheckPasswordState"
.end annotation


# instance fields
.field mbackupDirPath:Ljava/lang/String;

.field final synthetic this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/privacy/PasswordSetting;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter "backupDirPath"

    .prologue
    .line 523
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$RestoreCheckPasswordState;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    .line 524
    const/4 v0, 0x0

    const v1, 0x7f0a0173

    invoke-direct {p0, p1, v0, v1}, Lcom/zte/heartyservice/privacy/PasswordSetting$PasswordState;-><init>(Lcom/zte/heartyservice/privacy/PasswordSetting;II)V

    .line 521
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$RestoreCheckPasswordState;->mbackupDirPath:Ljava/lang/String;

    .line 525
    #getter for: Lcom/zte/heartyservice/privacy/PasswordSetting;->mPasswordType:I
    invoke-static {p1}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$600(Lcom/zte/heartyservice/privacy/PasswordSetting;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 526
    const v0, 0x7f0a0430

    iput v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$RestoreCheckPasswordState;->mPasswordLableRes:I

    .line 530
    :goto_0
    iput-object p2, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$RestoreCheckPasswordState;->mbackupDirPath:Ljava/lang/String;

    .line 531
    return-void

    .line 528
    :cond_0
    const v0, 0x7f0a032c

    iput v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$RestoreCheckPasswordState;->mPasswordLableRes:I

    goto :goto_0
.end method


# virtual methods
.method public enter()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v0, 0x1

    .line 535
    invoke-super {p0}, Lcom/zte/heartyservice/privacy/PasswordSetting$PasswordState;->enter()V

    .line 536
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$RestoreCheckPasswordState;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    #getter for: Lcom/zte/heartyservice/privacy/PasswordSetting;->mPasswordSummary:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$1600(Lcom/zte/heartyservice/privacy/PasswordSetting;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 537
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$RestoreCheckPasswordState;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    #getter for: Lcom/zte/heartyservice/privacy/PasswordSetting;->mPasswordType:I
    invoke-static {v1}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$600(Lcom/zte/heartyservice/privacy/PasswordSetting;)I

    move-result v1

    if-ne v1, v0, :cond_2

    .line 538
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$RestoreCheckPasswordState;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    #getter for: Lcom/zte/heartyservice/privacy/PasswordSetting;->mLockPatternView:Lcom/zte/heartyservice/common/ui/LockPatternView;
    invoke-static {v1}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$000(Lcom/zte/heartyservice/privacy/PasswordSetting;)Lcom/zte/heartyservice/common/ui/LockPatternView;

    move-result-object v1

    invoke-static {}, Lcom/zte/heartyservice/privacy/PrivacySetting;->getPatternShowTrack()Z

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/zte/heartyservice/common/ui/LockPatternView;->setInStealthMode(Z)V

    .line 540
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$RestoreCheckPasswordState;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    #getter for: Lcom/zte/heartyservice/privacy/PasswordSetting;->mSubmitBtn:Landroid/widget/Button;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$1500(Lcom/zte/heartyservice/privacy/PasswordSetting;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 544
    :cond_0
    :goto_1
    return-void

    .line 538
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 541
    :cond_2
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$RestoreCheckPasswordState;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    #getter for: Lcom/zte/heartyservice/privacy/PasswordSetting;->mPasswordType:I
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$600(Lcom/zte/heartyservice/privacy/PasswordSetting;)I

    move-result v0

    if-nez v0, :cond_0

    .line 542
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$RestoreCheckPasswordState;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    #getter for: Lcom/zte/heartyservice/privacy/PasswordSetting;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$200(Lcom/zte/heartyservice/privacy/PasswordSetting;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$RestoreCheckPasswordState;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    #getter for: Lcom/zte/heartyservice/privacy/PasswordSetting;->mPasswordEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$300(Lcom/zte/heartyservice/privacy/PasswordSetting;)Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zte/heartyservice/common/utils/AppUtils;->showSoftInput(Landroid/content/Context;Landroid/view/View;)V

    goto :goto_1
.end method

.method public next()Lcom/zte/heartyservice/privacy/PasswordSetting$State;
    .locals 5

    .prologue
    .line 548
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$RestoreCheckPasswordState;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    #calls: Lcom/zte/heartyservice/privacy/PasswordSetting;->getPassword()Ljava/lang/String;
    invoke-static {v1}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$1700(Lcom/zte/heartyservice/privacy/PasswordSetting;)Ljava/lang/String;

    move-result-object v0

    .line 549
    .local v0, password:Ljava/lang/String;
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$RestoreCheckPasswordState;->mbackupDirPath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/zte/heartyservice/privacy/RestorePrivacyHelper;->checkBackupPrivacyPassword(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 552
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$RestoreCheckPasswordState;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    #getter for: Lcom/zte/heartyservice/privacy/PasswordSetting;->mLockPatternView:Lcom/zte/heartyservice/common/ui/LockPatternView;
    invoke-static {v1}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$000(Lcom/zte/heartyservice/privacy/PasswordSetting;)Lcom/zte/heartyservice/common/ui/LockPatternView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/heartyservice/common/ui/LockPatternView;->clearPattern()V

    .line 553
    new-instance v1, Lcom/zte/heartyservice/privacy/PasswordSetting$RestoringState;

    iget-object v2, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$RestoreCheckPasswordState;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    iget-object v3, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$RestoreCheckPasswordState;->mbackupDirPath:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Lcom/zte/heartyservice/privacy/PasswordSetting$RestoringState;-><init>(Lcom/zte/heartyservice/privacy/PasswordSetting;Ljava/lang/String;Ljava/lang/String;)V

    move-object p0, v1

    .line 562
    .end local p0
    :goto_0
    return-object p0

    .line 555
    .restart local p0
    :cond_0
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$RestoreCheckPasswordState;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    #getter for: Lcom/zte/heartyservice/privacy/PasswordSetting;->mPasswordType:I
    invoke-static {v1}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$600(Lcom/zte/heartyservice/privacy/PasswordSetting;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 556
    const v1, 0x7f0a0411

    iput v1, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$RestoreCheckPasswordState;->mPasswordLableRes:I

    .line 560
    :goto_1
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$RestoreCheckPasswordState;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    #getter for: Lcom/zte/heartyservice/privacy/PasswordSetting;->mLockPatternView:Lcom/zte/heartyservice/common/ui/LockPatternView;
    invoke-static {v1}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$000(Lcom/zte/heartyservice/privacy/PasswordSetting;)Lcom/zte/heartyservice/common/ui/LockPatternView;

    move-result-object v1

    sget-object v2, Lcom/zte/heartyservice/common/ui/LockPatternView$DisplayMode;->Wrong:Lcom/zte/heartyservice/common/ui/LockPatternView$DisplayMode;

    invoke-virtual {v1, v2}, Lcom/zte/heartyservice/common/ui/LockPatternView;->setDisplayMode(Lcom/zte/heartyservice/common/ui/LockPatternView$DisplayMode;)V

    .line 561
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$RestoreCheckPasswordState;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    #getter for: Lcom/zte/heartyservice/privacy/PasswordSetting;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$2100(Lcom/zte/heartyservice/privacy/PasswordSetting;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 558
    :cond_1
    const v1, 0x7f0a0325

    iput v1, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$RestoreCheckPasswordState;->mPasswordLableRes:I

    goto :goto_1
.end method
