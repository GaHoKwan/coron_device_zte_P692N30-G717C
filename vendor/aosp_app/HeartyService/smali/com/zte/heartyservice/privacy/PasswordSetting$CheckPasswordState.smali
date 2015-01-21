.class Lcom/zte/heartyservice/privacy/PasswordSetting$CheckPasswordState;
.super Lcom/zte/heartyservice/privacy/PasswordSetting$PasswordState;
.source "PasswordSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/privacy/PasswordSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckPasswordState"
.end annotation


# instance fields
.field private mErrorTime:I

.field final synthetic this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/privacy/PasswordSetting;Z)V
    .locals 2
    .parameter
    .parameter "reset"

    .prologue
    const/4 v1, 0x0

    .line 225
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$CheckPasswordState;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    .line 226
    const v0, 0x7f0a0173

    invoke-direct {p0, p1, v1, v0}, Lcom/zte/heartyservice/privacy/PasswordSetting$PasswordState;-><init>(Lcom/zte/heartyservice/privacy/PasswordSetting;II)V

    .line 223
    iput v1, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$CheckPasswordState;->mErrorTime:I

    .line 227
    #getter for: Lcom/zte/heartyservice/privacy/PasswordSetting;->mPasswordType:I
    invoke-static {p1}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$600(Lcom/zte/heartyservice/privacy/PasswordSetting;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 228
    if-eqz p2, :cond_0

    .line 229
    const v0, 0x7f0a042f

    iput v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$CheckPasswordState;->mPasswordLableRes:I

    .line 240
    :goto_0
    return-void

    .line 231
    :cond_0
    const v0, 0x7f0a0430

    iput v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$CheckPasswordState;->mPasswordLableRes:I

    goto :goto_0

    .line 234
    :cond_1
    if-eqz p2, :cond_2

    .line 235
    const v0, 0x7f0a032e

    iput v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$CheckPasswordState;->mPasswordLableRes:I

    goto :goto_0

    .line 237
    :cond_2
    const v0, 0x7f0a032c

    iput v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$CheckPasswordState;->mPasswordLableRes:I

    goto :goto_0
.end method


# virtual methods
.method public enter()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v0, 0x1

    .line 244
    invoke-super {p0}, Lcom/zte/heartyservice/privacy/PasswordSetting$PasswordState;->enter()V

    .line 245
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$CheckPasswordState;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    #getter for: Lcom/zte/heartyservice/privacy/PasswordSetting;->mPasswordSummary:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$1600(Lcom/zte/heartyservice/privacy/PasswordSetting;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 246
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$CheckPasswordState;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    #getter for: Lcom/zte/heartyservice/privacy/PasswordSetting;->mPasswordType:I
    invoke-static {v1}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$600(Lcom/zte/heartyservice/privacy/PasswordSetting;)I

    move-result v1

    if-ne v1, v0, :cond_2

    .line 247
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$CheckPasswordState;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    #getter for: Lcom/zte/heartyservice/privacy/PasswordSetting;->mLockPatternView:Lcom/zte/heartyservice/common/ui/LockPatternView;
    invoke-static {v1}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$000(Lcom/zte/heartyservice/privacy/PasswordSetting;)Lcom/zte/heartyservice/common/ui/LockPatternView;

    move-result-object v1

    invoke-static {}, Lcom/zte/heartyservice/privacy/PrivacySetting;->getPatternShowTrack()Z

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/zte/heartyservice/common/ui/LockPatternView;->setInStealthMode(Z)V

    .line 249
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$CheckPasswordState;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    #getter for: Lcom/zte/heartyservice/privacy/PasswordSetting;->mSubmitBtn:Landroid/widget/Button;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$1500(Lcom/zte/heartyservice/privacy/PasswordSetting;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 253
    :cond_0
    :goto_1
    return-void

    .line 247
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 250
    :cond_2
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$CheckPasswordState;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    #getter for: Lcom/zte/heartyservice/privacy/PasswordSetting;->mPasswordType:I
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$600(Lcom/zte/heartyservice/privacy/PasswordSetting;)I

    move-result v0

    if-nez v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$CheckPasswordState;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    #getter for: Lcom/zte/heartyservice/privacy/PasswordSetting;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$200(Lcom/zte/heartyservice/privacy/PasswordSetting;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$CheckPasswordState;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    #getter for: Lcom/zte/heartyservice/privacy/PasswordSetting;->mPasswordEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$300(Lcom/zte/heartyservice/privacy/PasswordSetting;)Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zte/heartyservice/common/utils/AppUtils;->showSoftInput(Landroid/content/Context;Landroid/view/View;)V

    goto :goto_1
.end method

.method public next()Lcom/zte/heartyservice/privacy/PasswordSetting$State;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 257
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$CheckPasswordState;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    #calls: Lcom/zte/heartyservice/privacy/PasswordSetting;->getPassword()Ljava/lang/String;
    invoke-static {v2}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$1700(Lcom/zte/heartyservice/privacy/PasswordSetting;)Ljava/lang/String;

    move-result-object v1

    .line 258
    .local v1, password:Ljava/lang/String;
    invoke-static {v1}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->checkPrivacyPassword(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 259
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$CheckPasswordState;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    #getter for: Lcom/zte/heartyservice/privacy/PasswordSetting;->mEnterType:Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;
    invoke-static {v2}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$1800(Lcom/zte/heartyservice/privacy/PasswordSetting;)Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;

    move-result-object v2

    sget-object v4, Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;->RESET_PASSWORD:Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;

    if-ne v2, v4, :cond_0

    .line 260
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$CheckPasswordState;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    #getter for: Lcom/zte/heartyservice/privacy/PasswordSetting;->mLockPatternView:Lcom/zte/heartyservice/common/ui/LockPatternView;
    invoke-static {v2}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$000(Lcom/zte/heartyservice/privacy/PasswordSetting;)Lcom/zte/heartyservice/common/ui/LockPatternView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zte/heartyservice/common/ui/LockPatternView;->clearPattern()V

    .line 261
    new-instance v2, Lcom/zte/heartyservice/privacy/PasswordSetting$PasswordTypeSelectState;

    iget-object v4, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$CheckPasswordState;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    invoke-direct {v2, v4, v3}, Lcom/zte/heartyservice/privacy/PasswordSetting$PasswordTypeSelectState;-><init>(Lcom/zte/heartyservice/privacy/PasswordSetting;Lcom/zte/heartyservice/privacy/PasswordSetting$1;)V

    move-object p0, v2

    .line 301
    .end local p0
    :goto_0
    return-object p0

    .line 262
    .restart local p0
    :cond_0
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$CheckPasswordState;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    #getter for: Lcom/zte/heartyservice/privacy/PasswordSetting;->mEnterType:Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;
    invoke-static {v2}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$1800(Lcom/zte/heartyservice/privacy/PasswordSetting;)Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;

    move-result-object v2

    sget-object v4, Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;->LOGIN:Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;

    if-ne v2, v4, :cond_1

    .line 263
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$CheckPasswordState;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    #calls: Lcom/zte/heartyservice/privacy/PasswordSetting;->startPrivacyTarget()V
    invoke-static {v2}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$1200(Lcom/zte/heartyservice/privacy/PasswordSetting;)V

    .line 265
    :cond_1
    #calls: Lcom/zte/heartyservice/privacy/PasswordSetting;->startMonitor()V
    invoke-static {}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$1300()V

    .line 266
    invoke-static {v1}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setPassword(Ljava/lang/String;)V

    .line 267
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPrivacySQLiteOpenHelper()Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v2

    invoke-static {v2}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setPrivateKey(Ljava/security/PrivateKey;)V

    .line 269
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$CheckPasswordState;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    #getter for: Lcom/zte/heartyservice/privacy/PasswordSetting;->mLockPatternView:Lcom/zte/heartyservice/common/ui/LockPatternView;
    invoke-static {v2}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$000(Lcom/zte/heartyservice/privacy/PasswordSetting;)Lcom/zte/heartyservice/common/ui/LockPatternView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zte/heartyservice/common/ui/LockPatternView;->clearPattern()V

    .line 270
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$CheckPasswordState;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    const/4 v4, -0x1

    invoke-virtual {v2, v4}, Lcom/zte/heartyservice/privacy/PasswordSetting;->setResult(I)V

    move-object p0, v3

    .line 271
    goto :goto_0

    .line 272
    :cond_2
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$CheckPasswordState;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    #getter for: Lcom/zte/heartyservice/privacy/PasswordSetting;->mEnterType:Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;
    invoke-static {v2}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$1800(Lcom/zte/heartyservice/privacy/PasswordSetting;)Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;

    move-result-object v2

    sget-object v4, Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;->RESET_PASSWORD:Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;

    if-eq v2, v4, :cond_3

    invoke-static {v1}, Lcom/zte/heartyservice/privacy/PrivacySetting;->checkDisguise(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 274
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$CheckPasswordState;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    #calls: Lcom/zte/heartyservice/privacy/PasswordSetting;->startDisguise()V
    invoke-static {v2}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$2000(Lcom/zte/heartyservice/privacy/PasswordSetting;)V

    .line 275
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$CheckPasswordState;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    #getter for: Lcom/zte/heartyservice/privacy/PasswordSetting;->mLockPatternView:Lcom/zte/heartyservice/common/ui/LockPatternView;
    invoke-static {v2}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$000(Lcom/zte/heartyservice/privacy/PasswordSetting;)Lcom/zte/heartyservice/common/ui/LockPatternView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zte/heartyservice/common/ui/LockPatternView;->clearPattern()V

    move-object p0, v3

    .line 276
    goto :goto_0

    .line 278
    :cond_3
    iget v2, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$CheckPasswordState;->mErrorTime:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$CheckPasswordState;->mErrorTime:I

    .line 279
    iget v2, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$CheckPasswordState;->mErrorTime:I

    const/4 v4, 0x5

    if-lt v2, v4, :cond_4

    .line 280
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {v2}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setErrorLoginTime(Ljava/util/Date;)V

    .line 281
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$CheckPasswordState;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    #getter for: Lcom/zte/heartyservice/privacy/PasswordSetting;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$200(Lcom/zte/heartyservice/privacy/PasswordSetting;)Landroid/content/Context;

    move-result-object v2

    const-class v4, Lcom/zte/heartyservice/privacy/PasswordSetting;

    invoke-direct {v0, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 282
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$CheckPasswordState;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    #getter for: Lcom/zte/heartyservice/privacy/PasswordSetting;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$200(Lcom/zte/heartyservice/privacy/PasswordSetting;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->startActivitySafe(Landroid/content/Context;Landroid/content/Intent;)V

    .line 283
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$CheckPasswordState;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    #getter for: Lcom/zte/heartyservice/privacy/PasswordSetting;->mLockPatternView:Lcom/zte/heartyservice/common/ui/LockPatternView;
    invoke-static {v2}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$000(Lcom/zte/heartyservice/privacy/PasswordSetting;)Lcom/zte/heartyservice/common/ui/LockPatternView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zte/heartyservice/common/ui/LockPatternView;->clearPattern()V

    move-object p0, v3

    .line 284
    goto/16 :goto_0

    .line 286
    .end local v0           #intent:Landroid/content/Intent;
    :cond_4
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$CheckPasswordState;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    #getter for: Lcom/zte/heartyservice/privacy/PasswordSetting;->mEnterType:Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;
    invoke-static {v2}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$1800(Lcom/zte/heartyservice/privacy/PasswordSetting;)Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;

    move-result-object v2

    sget-object v3, Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;->RESET_PASSWORD:Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;

    if-ne v2, v3, :cond_6

    .line 287
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$CheckPasswordState;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    #getter for: Lcom/zte/heartyservice/privacy/PasswordSetting;->mPasswordType:I
    invoke-static {v2}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$600(Lcom/zte/heartyservice/privacy/PasswordSetting;)I

    move-result v2

    if-ne v2, v5, :cond_5

    .line 288
    const v2, 0x7f0a0431

    iput v2, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$CheckPasswordState;->mPasswordLableRes:I

    .line 299
    :goto_1
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$CheckPasswordState;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    #getter for: Lcom/zte/heartyservice/privacy/PasswordSetting;->mLockPatternView:Lcom/zte/heartyservice/common/ui/LockPatternView;
    invoke-static {v2}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$000(Lcom/zte/heartyservice/privacy/PasswordSetting;)Lcom/zte/heartyservice/common/ui/LockPatternView;

    move-result-object v2

    sget-object v3, Lcom/zte/heartyservice/common/ui/LockPatternView$DisplayMode;->Wrong:Lcom/zte/heartyservice/common/ui/LockPatternView$DisplayMode;

    invoke-virtual {v2, v3}, Lcom/zte/heartyservice/common/ui/LockPatternView;->setDisplayMode(Lcom/zte/heartyservice/common/ui/LockPatternView$DisplayMode;)V

    .line 300
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$CheckPasswordState;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    #getter for: Lcom/zte/heartyservice/privacy/PasswordSetting;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$2100(Lcom/zte/heartyservice/privacy/PasswordSetting;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x0

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 290
    :cond_5
    const v2, 0x7f0a0326

    iput v2, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$CheckPasswordState;->mPasswordLableRes:I

    goto :goto_1

    .line 293
    :cond_6
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$CheckPasswordState;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    #getter for: Lcom/zte/heartyservice/privacy/PasswordSetting;->mPasswordType:I
    invoke-static {v2}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$600(Lcom/zte/heartyservice/privacy/PasswordSetting;)I

    move-result v2

    if-ne v2, v5, :cond_7

    .line 294
    const v2, 0x7f0a0411

    iput v2, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$CheckPasswordState;->mPasswordLableRes:I

    goto :goto_1

    .line 296
    :cond_7
    const v2, 0x7f0a0325

    iput v2, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$CheckPasswordState;->mPasswordLableRes:I

    goto :goto_1
.end method
