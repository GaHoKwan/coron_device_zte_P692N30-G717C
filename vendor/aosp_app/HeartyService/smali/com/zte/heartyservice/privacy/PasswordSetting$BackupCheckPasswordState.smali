.class Lcom/zte/heartyservice/privacy/PasswordSetting$BackupCheckPasswordState;
.super Lcom/zte/heartyservice/privacy/PasswordSetting$PasswordState;
.source "PasswordSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/privacy/PasswordSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackupCheckPasswordState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/privacy/PasswordSetting;)V
    .locals 2
    .parameter

    .prologue
    .line 308
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$BackupCheckPasswordState;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    .line 309
    const/4 v0, 0x0

    const v1, 0x7f0a0173

    invoke-direct {p0, p1, v0, v1}, Lcom/zte/heartyservice/privacy/PasswordSetting$PasswordState;-><init>(Lcom/zte/heartyservice/privacy/PasswordSetting;II)V

    .line 310
    #getter for: Lcom/zte/heartyservice/privacy/PasswordSetting;->mPasswordType:I
    invoke-static {p1}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$600(Lcom/zte/heartyservice/privacy/PasswordSetting;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 311
    const v0, 0x7f0a0430

    iput v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$BackupCheckPasswordState;->mPasswordLableRes:I

    .line 315
    :goto_0
    return-void

    .line 313
    :cond_0
    const v0, 0x7f0a032c

    iput v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$BackupCheckPasswordState;->mPasswordLableRes:I

    goto :goto_0
.end method


# virtual methods
.method public enter()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v0, 0x1

    .line 319
    invoke-super {p0}, Lcom/zte/heartyservice/privacy/PasswordSetting$PasswordState;->enter()V

    .line 320
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$BackupCheckPasswordState;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    #getter for: Lcom/zte/heartyservice/privacy/PasswordSetting;->mPasswordSummary:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$1600(Lcom/zte/heartyservice/privacy/PasswordSetting;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 321
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$BackupCheckPasswordState;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    #getter for: Lcom/zte/heartyservice/privacy/PasswordSetting;->mPasswordType:I
    invoke-static {v1}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$600(Lcom/zte/heartyservice/privacy/PasswordSetting;)I

    move-result v1

    if-ne v1, v0, :cond_2

    .line 322
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$BackupCheckPasswordState;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    #getter for: Lcom/zte/heartyservice/privacy/PasswordSetting;->mLockPatternView:Lcom/zte/heartyservice/common/ui/LockPatternView;
    invoke-static {v1}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$000(Lcom/zte/heartyservice/privacy/PasswordSetting;)Lcom/zte/heartyservice/common/ui/LockPatternView;

    move-result-object v1

    invoke-static {}, Lcom/zte/heartyservice/privacy/PrivacySetting;->getPatternShowTrack()Z

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/zte/heartyservice/common/ui/LockPatternView;->setInStealthMode(Z)V

    .line 324
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$BackupCheckPasswordState;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    #getter for: Lcom/zte/heartyservice/privacy/PasswordSetting;->mSubmitBtn:Landroid/widget/Button;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$1500(Lcom/zte/heartyservice/privacy/PasswordSetting;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 328
    :cond_0
    :goto_1
    return-void

    .line 322
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 325
    :cond_2
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$BackupCheckPasswordState;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    #getter for: Lcom/zte/heartyservice/privacy/PasswordSetting;->mPasswordType:I
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$600(Lcom/zte/heartyservice/privacy/PasswordSetting;)I

    move-result v0

    if-nez v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$BackupCheckPasswordState;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    #getter for: Lcom/zte/heartyservice/privacy/PasswordSetting;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$200(Lcom/zte/heartyservice/privacy/PasswordSetting;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$BackupCheckPasswordState;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    #getter for: Lcom/zte/heartyservice/privacy/PasswordSetting;->mPasswordEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$300(Lcom/zte/heartyservice/privacy/PasswordSetting;)Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zte/heartyservice/common/utils/AppUtils;->showSoftInput(Landroid/content/Context;Landroid/view/View;)V

    goto :goto_1
.end method

.method public next()Lcom/zte/heartyservice/privacy/PasswordSetting$State;
    .locals 5

    .prologue
    .line 332
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$BackupCheckPasswordState;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    #calls: Lcom/zte/heartyservice/privacy/PasswordSetting;->getPassword()Ljava/lang/String;
    invoke-static {v1}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$1700(Lcom/zte/heartyservice/privacy/PasswordSetting;)Ljava/lang/String;

    move-result-object v0

    .line 333
    .local v0, password:Ljava/lang/String;
    invoke-static {v0}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->checkPrivacyPassword(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 334
    invoke-static {v0}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setPassword(Ljava/lang/String;)V

    .line 335
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPrivacySQLiteOpenHelper()Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v1

    invoke-static {v1}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setPrivateKey(Ljava/security/PrivateKey;)V

    .line 337
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$BackupCheckPasswordState;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    #getter for: Lcom/zte/heartyservice/privacy/PasswordSetting;->mLockPatternView:Lcom/zte/heartyservice/common/ui/LockPatternView;
    invoke-static {v1}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$000(Lcom/zte/heartyservice/privacy/PasswordSetting;)Lcom/zte/heartyservice/common/ui/LockPatternView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/heartyservice/common/ui/LockPatternView;->clearPattern()V

    .line 338
    new-instance v1, Lcom/zte/heartyservice/privacy/PasswordSetting$PrepareBackupFileState;

    iget-object v2, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$BackupCheckPasswordState;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/zte/heartyservice/privacy/PasswordSetting$PrepareBackupFileState;-><init>(Lcom/zte/heartyservice/privacy/PasswordSetting;Lcom/zte/heartyservice/privacy/PasswordSetting$1;)V

    move-object p0, v1

    .line 347
    .end local p0
    :goto_0
    return-object p0

    .line 340
    .restart local p0
    :cond_0
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$BackupCheckPasswordState;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    #getter for: Lcom/zte/heartyservice/privacy/PasswordSetting;->mPasswordType:I
    invoke-static {v1}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$600(Lcom/zte/heartyservice/privacy/PasswordSetting;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 341
    const v1, 0x7f0a0411

    iput v1, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$BackupCheckPasswordState;->mPasswordLableRes:I

    .line 345
    :goto_1
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$BackupCheckPasswordState;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    #getter for: Lcom/zte/heartyservice/privacy/PasswordSetting;->mLockPatternView:Lcom/zte/heartyservice/common/ui/LockPatternView;
    invoke-static {v1}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$000(Lcom/zte/heartyservice/privacy/PasswordSetting;)Lcom/zte/heartyservice/common/ui/LockPatternView;

    move-result-object v1

    sget-object v2, Lcom/zte/heartyservice/common/ui/LockPatternView$DisplayMode;->Wrong:Lcom/zte/heartyservice/common/ui/LockPatternView$DisplayMode;

    invoke-virtual {v1, v2}, Lcom/zte/heartyservice/common/ui/LockPatternView;->setDisplayMode(Lcom/zte/heartyservice/common/ui/LockPatternView$DisplayMode;)V

    .line 346
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$BackupCheckPasswordState;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    #getter for: Lcom/zte/heartyservice/privacy/PasswordSetting;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$2100(Lcom/zte/heartyservice/privacy/PasswordSetting;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 343
    :cond_1
    const v1, 0x7f0a0325

    iput v1, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$BackupCheckPasswordState;->mPasswordLableRes:I

    goto :goto_1
.end method
