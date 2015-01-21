.class public Lcom/android/simmelock/UnlockSetting;
.super Lcom/android/simmelock/SimLockBaseActivity;
.source "UnlockSetting.java"


# static fields
.field static final DIALOG_PASSWORDLENGTHINCORRECT:I = 0x1

.field static final DIALOG_QUERYFAIL:I = 0x4

.field static final DIALOG_UNLOCKFAILED:I = 0x3

.field static final DIALOG_UNLOCKSUCCEED:I = 0x2

.field private static final UNLOCK_ICC_SML_COMPLETE:I = 0x78

.field private static final UNLOCK_ICC_SML_QUERYLEFTTIMES:I = 0x6e


# instance fields
.field private clickFlag:Z

.field etPwd:Landroid/widget/EditText;

.field etPwdLeftChances:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mPwdLeftChances:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 71
    invoke-direct {p0}, Lcom/android/simmelock/SimLockBaseActivity;-><init>()V

    .line 79
    iput-object v0, p0, Lcom/android/simmelock/UnlockSetting;->etPwd:Landroid/widget/EditText;

    .line 80
    iput-object v0, p0, Lcom/android/simmelock/UnlockSetting;->etPwdLeftChances:Landroid/widget/TextView;

    .line 81
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/simmelock/UnlockSetting;->mPwdLeftChances:I

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/simmelock/UnlockSetting;->clickFlag:Z

    .line 224
    new-instance v0, Lcom/android/simmelock/UnlockSetting$7;

    invoke-direct {v0, p0}, Lcom/android/simmelock/UnlockSetting$7;-><init>(Lcom/android/simmelock/UnlockSetting;)V

    iput-object v0, p0, Lcom/android/simmelock/UnlockSetting;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/simmelock/UnlockSetting;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/android/simmelock/UnlockSetting;->clickFlag:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/simmelock/UnlockSetting;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/android/simmelock/UnlockSetting;->clickFlag:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/simmelock/UnlockSetting;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/simmelock/UnlockSetting;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/simmelock/UnlockSetting;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget v0, p0, Lcom/android/simmelock/UnlockSetting;->mPwdLeftChances:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/simmelock/UnlockSetting;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput p1, p0, Lcom/android/simmelock/UnlockSetting;->mPwdLeftChances:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/simmelock/UnlockSetting;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/simmelock/UnlockSetting;->queryLeftTimes()V

    return-void
.end method

.method private queryLeftTimes()V
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 272
    iget-object v0, p0, Lcom/android/simmelock/UnlockSetting;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6e

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v7

    .line 273
    .local v7, callback_query:Landroid/os/Message;
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 274
    .local v8, mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    iget v0, p0, Lcom/android/simmelock/SimLockBaseActivity;->simNumber:I

    invoke-virtual {v8, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    iget v1, p0, Lcom/android/simmelock/SimLockBaseActivity;->lockCategory:I

    const/4 v2, 0x0

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/IccCard;->QueryIccNetworkLock(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 277
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 281
    const-string v0, "SIMMELOCK"

    const-string v1, "[UnlckSetting]onConfigurationChanged "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 283
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    .line 86
    invoke-super {p0, p1}, Lcom/android/simmelock/SimLockBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 87
    const v6, 0x7f030008

    invoke-virtual {p0, v6}, Landroid/app/Activity;->setContentView(I)V

    .line 89
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 90
    .local v2, bundle:Landroid/os/Bundle;
    const-string v6, "LOCALNAME"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 91
    .local v4, localName:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    .line 92
    .local v3, conf:Landroid/content/res/Configuration;
    iget-object v6, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v7, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    .line 93
    .local v5, locale:Ljava/lang/String;
    const-string v6, "SIMMELOCK"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "localName: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "    || getLocalClassName: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    if-eqz v4, :cond_0

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 95
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 144
    :goto_0
    return-void

    .line 100
    :cond_0
    const v6, 0x7f07003f

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/simmelock/UnlockSetting;->etPwdLeftChances:Landroid/widget/TextView;

    .line 103
    const v6, 0x7f07003d

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/android/simmelock/UnlockSetting;->etPwd:Landroid/widget/EditText;

    .line 104
    iget-object v6, p0, Lcom/android/simmelock/UnlockSetting;->etPwd:Landroid/widget/EditText;

    const/16 v7, 0x81

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setInputType(I)V

    .line 105
    iget-object v6, p0, Lcom/android/simmelock/UnlockSetting;->etPwd:Landroid/widget/EditText;

    const/16 v7, 0x8

    invoke-static {v6, v7}, Lcom/android/simmelock/SMLCommonProcess;->limitEditTextPassword(Landroid/widget/EditText;I)V

    .line 106
    iget-object v6, p0, Lcom/android/simmelock/UnlockSetting;->etPwd:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/android/simmelock/SimLockBaseActivity;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 108
    const v6, 0x7f070040

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 110
    .local v1, btnConfirm:Landroid/widget/Button;
    new-instance v6, Lcom/android/simmelock/UnlockSetting$1;

    invoke-direct {v6, p0}, Lcom/android/simmelock/UnlockSetting$1;-><init>(Lcom/android/simmelock/UnlockSetting;)V

    invoke-virtual {v1, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    const v6, 0x7f070041

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 139
    .local v0, btnCancel:Landroid/widget/Button;
    new-instance v6, Lcom/android/simmelock/UnlockSetting$2;

    invoke-direct {v6, p0}, Lcom/android/simmelock/UnlockSetting$2;-><init>(Lcom/android/simmelock/UnlockSetting;)V

    invoke-virtual {v0, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    const v3, 0x7f06000f

    .line 154
    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 156
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f06000c

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 162
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    packed-switch p1, :pswitch_data_0

    .line 220
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :cond_1
    const-string v1, "SIMMELOCK"

    const-string v2, "show null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    :goto_0
    return-object v1

    .line 164
    .restart local v0       #builder:Landroid/app/AlertDialog$Builder;
    :pswitch_0
    const-string v1, "SIMMELOCK"

    const-string v2, "show DIALOG_UNLOCKFAILED"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const v1, 0x7f060012

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/simmelock/UnlockSetting$3;

    invoke-direct {v2, p0}, Lcom/android/simmelock/UnlockSetting$3;-><init>(Lcom/android/simmelock/UnlockSetting;)V

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 174
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    .line 176
    :pswitch_1
    const-string v1, "SIMMELOCK"

    const-string v2, "show DIALOG_PASSWORDLENGTHINCORRECT"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    const v1, 0x7f060020

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/simmelock/UnlockSetting$4;

    invoke-direct {v2, p0}, Lcom/android/simmelock/UnlockSetting$4;-><init>(Lcom/android/simmelock/UnlockSetting;)V

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 185
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    .line 187
    :pswitch_2
    const-string v1, "SIMMELOCK"

    const-string v2, "show DIALOG_UNLOCKSUCCEED"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    const v1, 0x7f060013

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/simmelock/UnlockSetting$5;

    invoke-direct {v2, p0}, Lcom/android/simmelock/UnlockSetting$5;-><init>(Lcom/android/simmelock/UnlockSetting;)V

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 206
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    .line 208
    :pswitch_3
    const-string v1, "SIMMELOCK"

    const-string v2, "show DIALOG_QUERYFAIL"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    const v1, 0x7f060021

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/simmelock/UnlockSetting$6;

    invoke-direct {v2, p0}, Lcom/android/simmelock/UnlockSetting$6;-><init>(Lcom/android/simmelock/UnlockSetting;)V

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 217
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    .line 162
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 148
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 149
    invoke-direct {p0}, Lcom/android/simmelock/UnlockSetting;->queryLeftTimes()V

    .line 150
    return-void
.end method
