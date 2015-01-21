.class public Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;
.super Landroid/app/Dialog;
.source "ZTEPrivacyAppLockDialog.java"


# static fields
.field private static final CLEAR_MSG:I = 0x1

.field private static final DIALOG_DISMISS_MSG:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ZTEPrivacyAppLockDialog"

.field private static passwordInputTimes:I


# instance fields
.field private mAppLockPwd:Landroid/widget/EditText;

.field private mContext:Landroid/content/Context;

.field final mHandler:Landroid/os/Handler;

.field private mLockPatternView:Lcom/zte/heartyservice/common/ui/LockPatternView;

.field private mPwdtip:Landroid/widget/TextView;

.field private mUnlockButton:Landroid/widget/Button;

.field private packageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    sput v0, Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;->passwordInputTimes:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "pkg"

    .prologue
    .line 67
    const v0, 0x7f0c00c4

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 45
    new-instance v0, Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog$1;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog$1;-><init>(Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;)V

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;->mHandler:Landroid/os/Handler;

    .line 68
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;->mContext:Landroid/content/Context;

    .line 69
    iput-object p2, p0, Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;->packageName:Ljava/lang/String;

    .line 71
    const v0, 0x7f030014

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;->setContentView(I)V

    .line 73
    const v0, 0x7f0e004a

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;->mPwdtip:Landroid/widget/TextView;

    .line 74
    const v0, 0x7f0e004d

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;->mAppLockPwd:Landroid/widget/EditText;

    .line 75
    const v0, 0x7f0e004e

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;->mUnlockButton:Landroid/widget/Button;

    .line 77
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;->mAppLockPwd:Landroid/widget/EditText;

    new-instance v1, Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog$2;

    invoke-direct {v1, p0}, Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog$2;-><init>(Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 100
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;->mUnlockButton:Landroid/widget/Button;

    new-instance v1, Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog$3;

    invoke-direct {v1, p0}, Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog$3;-><init>(Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    new-instance v0, Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog$4;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog$4;-><init>(Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;)V

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 139
    const v0, 0x7f0e004b

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zte/heartyservice/common/ui/LockPatternView;

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;->mLockPatternView:Lcom/zte/heartyservice/common/ui/LockPatternView;

    .line 140
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;->mLockPatternView:Lcom/zte/heartyservice/common/ui/LockPatternView;

    invoke-static {}, Lcom/zte/heartyservice/privacy/PrivacySetting;->getPatternShowTrack()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/zte/heartyservice/common/ui/LockPatternView;->setInStealthMode(Z)V

    .line 141
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;->mLockPatternView:Lcom/zte/heartyservice/common/ui/LockPatternView;

    invoke-static {}, Lcom/zte/heartyservice/privacy/PrivacySetting;->getPatternVibrate()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/common/ui/LockPatternView;->setTactileFeedbackEnabled(Z)V

    .line 142
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;->mLockPatternView:Lcom/zte/heartyservice/common/ui/LockPatternView;

    new-instance v1, Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog$5;

    invoke-direct {v1, p0}, Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog$5;-><init>(Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;)V

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/common/ui/LockPatternView;->setOnPatternListener(Lcom/zte/heartyservice/common/ui/LockPatternView$OnPatternListener;)V

    .line 178
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d2

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 179
    return-void

    .line 140
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;->mAppLockPwd:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;)Lcom/zte/heartyservice/common/ui/LockPatternView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;->mLockPatternView:Lcom/zte/heartyservice/common/ui/LockPatternView;

    return-object v0
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 32
    sget v0, Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;->passwordInputTimes:I

    return v0
.end method

.method static synthetic access$202(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    sput p0, Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;->passwordInputTimes:I

    return p0
.end method

.method static synthetic access$208()I
    .locals 2

    .prologue
    .line 32
    sget v0, Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;->passwordInputTimes:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;->passwordInputTimes:I

    return v0
.end method

.method static synthetic access$300(Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;->mPwdtip:Landroid/widget/TextView;

    return-object v0
.end method

.method private isPatternPassword()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 211
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPasswordType()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 214
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 7
    .parameter "newConfig"

    .prologue
    const v6, 0x7f0e0049

    const v5, 0x7f0e0048

    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 220
    invoke-direct {p0}, Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;->isPatternPassword()Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 221
    invoke-virtual {p0, v6}, Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 222
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 243
    :cond_0
    :goto_0
    return-void

    .line 225
    :cond_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 227
    invoke-virtual {p0, v5}, Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 228
    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 232
    .end local v0           #view:Landroid/view/View;
    :cond_2
    invoke-virtual {p0, v5}, Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 233
    .restart local v0       #view:Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v3, :cond_0

    .line 236
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 238
    invoke-virtual {p0, v6}, Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 239
    if-eqz v0, :cond_0

    .line 240
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public prepare(Ljava/lang/String;)V
    .locals 13
    .parameter "packageName"

    .prologue
    const v12, 0x7f0e004f

    const v11, 0x7f0e004c

    const v10, 0x7f0e0047

    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 182
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;->packageName:Ljava/lang/String;

    .line 183
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getErrorLoginTime()Ljava/util/Date;

    move-result-object v4

    invoke-static {v4}, Lcom/zte/heartyservice/common/utils/StringUtils;->isObjNotNull(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 184
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getErrorLoginTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 185
    .local v2, errorLoginTime:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 186
    .local v0, currentMillis:J
    sub-long v4, v0, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/32 v6, 0x493e0

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    .line 187
    invoke-virtual {p0, v12}, Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 188
    invoke-virtual {p0, v10}, Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    .line 208
    .end local v0           #currentMillis:J
    .end local v2           #errorLoginTime:J
    :goto_0
    return-void

    .line 192
    :cond_0
    invoke-virtual {p0, v12}, Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    .line 193
    invoke-virtual {p0, v10}, Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 194
    const/4 v4, 0x1

    invoke-direct {p0}, Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;->isPatternPassword()Z

    move-result v5

    if-ne v4, v5, :cond_1

    .line 195
    invoke-virtual {p0, v11}, Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    .line 196
    iget-object v4, p0, Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;->mLockPatternView:Lcom/zte/heartyservice/common/ui/LockPatternView;

    invoke-virtual {v4, v8}, Lcom/zte/heartyservice/common/ui/LockPatternView;->setVisibility(I)V

    .line 197
    iget-object v4, p0, Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;->mLockPatternView:Lcom/zte/heartyservice/common/ui/LockPatternView;

    invoke-virtual {v4}, Lcom/zte/heartyservice/common/ui/LockPatternView;->clearPattern()V

    .line 198
    iget-object v4, p0, Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;->mPwdtip:Landroid/widget/TextView;

    const v5, 0x7f0a0410

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 207
    :goto_1
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_0

    .line 200
    :cond_1
    iget-object v4, p0, Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;->mLockPatternView:Lcom/zte/heartyservice/common/ui/LockPatternView;

    invoke-virtual {v4, v9}, Lcom/zte/heartyservice/common/ui/LockPatternView;->setVisibility(I)V

    .line 201
    invoke-virtual {p0, v11}, Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 202
    iget-object v4, p0, Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;->mPwdtip:Landroid/widget/TextView;

    const v5, 0x7f0a032c

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 203
    iget-object v4, p0, Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;->mAppLockPwd:Landroid/widget/EditText;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 204
    iget-object v4, p0, Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;->mAppLockPwd:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->requestFocus()Z

    .line 205
    iget-object v4, p0, Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;->mAppLockPwd:Landroid/widget/EditText;

    invoke-static {v4, v5}, Lcom/zte/heartyservice/common/utils/AppUtils;->showInputMethodAppLockUse(Landroid/content/Context;Landroid/view/View;)V

    goto :goto_1
.end method
