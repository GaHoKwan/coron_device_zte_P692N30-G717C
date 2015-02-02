.class public Lcom/android/simmelock/NPAddLockSetting;
.super Lcom/android/simmelock/SimLockBaseActivity;
.source "NPAddLockSetting.java"


# static fields
.field private static final ADDLOCK_ICC_SML_COMPLETE:I = 0x78

.field private static final DIALOG_ADDLOCKFAIL:I = 0x2

.field private static final DIALOG_ADDLOCKSUCCEED:I = 0x3

.field private static final DIALOG_MCCMNCLENGTHINCORRECT:I = 0x1

.field private static final DIALOG_PASSWORDLENGTHINCORRECT:I = 0x4

.field private static final DIALOG_PASSWORDWRONG:I = 0x5


# instance fields
.field private clickFlag:Z

.field private etMccMnc:Landroid/widget/EditText;

.field private etPwd:Landroid/widget/EditText;

.field private etPwdConfirm:Landroid/widget/EditText;

.field private mHandler:Landroid/os/Handler;

.field private mMccMncReadSim:Z

.field private mSimMccMnc:Ljava/lang/String;

.field private s1:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 73
    invoke-direct {p0}, Lcom/android/simmelock/SimLockBaseActivity;-><init>()V

    .line 81
    iput-object v0, p0, Lcom/android/simmelock/NPAddLockSetting;->etMccMnc:Landroid/widget/EditText;

    .line 82
    iput-object v0, p0, Lcom/android/simmelock/NPAddLockSetting;->etPwd:Landroid/widget/EditText;

    .line 83
    iput-object v0, p0, Lcom/android/simmelock/NPAddLockSetting;->etPwdConfirm:Landroid/widget/EditText;

    .line 86
    iput-object v0, p0, Lcom/android/simmelock/NPAddLockSetting;->mSimMccMnc:Ljava/lang/String;

    .line 87
    iput-boolean v1, p0, Lcom/android/simmelock/NPAddLockSetting;->mMccMncReadSim:Z

    .line 88
    iput-boolean v1, p0, Lcom/android/simmelock/NPAddLockSetting;->clickFlag:Z

    .line 270
    new-instance v0, Lcom/android/simmelock/NPAddLockSetting$9;

    invoke-direct {v0, p0}, Lcom/android/simmelock/NPAddLockSetting$9;-><init>(Lcom/android/simmelock/NPAddLockSetting;)V

    iput-object v0, p0, Lcom/android/simmelock/NPAddLockSetting;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/simmelock/NPAddLockSetting;)Landroid/widget/Spinner;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/simmelock/NPAddLockSetting;->s1:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/simmelock/NPAddLockSetting;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/simmelock/NPAddLockSetting;->etMccMnc:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/simmelock/NPAddLockSetting;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/android/simmelock/NPAddLockSetting;->mMccMncReadSim:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/simmelock/NPAddLockSetting;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/android/simmelock/NPAddLockSetting;->mMccMncReadSim:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/simmelock/NPAddLockSetting;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/android/simmelock/NPAddLockSetting;->clickFlag:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/simmelock/NPAddLockSetting;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/android/simmelock/NPAddLockSetting;->clickFlag:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/simmelock/NPAddLockSetting;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/simmelock/NPAddLockSetting;->mSimMccMnc:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/simmelock/NPAddLockSetting;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/simmelock/NPAddLockSetting;->etPwd:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/simmelock/NPAddLockSetting;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/simmelock/NPAddLockSetting;->etPwdConfirm:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/simmelock/NPAddLockSetting;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/simmelock/NPAddLockSetting;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/16 v7, 0x81

    const/16 v6, 0x8

    .line 92
    invoke-super {p0, p1}, Lcom/android/simmelock/SimLockBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 93
    const v4, 0x7f030002

    invoke-virtual {p0, v4}, Landroid/app/Activity;->setContentView(I)V

    .line 95
    const v4, 0x7f070017

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/android/simmelock/NPAddLockSetting;->etMccMnc:Landroid/widget/EditText;

    .line 98
    const v4, 0x7f070016

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    iput-object v4, p0, Lcom/android/simmelock/NPAddLockSetting;->s1:Landroid/widget/Spinner;

    .line 99
    const/high16 v4, 0x7f05

    const v5, 0x1090008

    invoke-static {p0, v4, v5}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 101
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v4, 0x1090009

    invoke-virtual {v0, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 102
    iget-object v4, p0, Lcom/android/simmelock/NPAddLockSetting;->s1:Landroid/widget/Spinner;

    invoke-virtual {v4, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 103
    new-instance v3, Lcom/android/simmelock/NPAddLockSetting$1;

    invoke-direct {v3, p0}, Lcom/android/simmelock/NPAddLockSetting$1;-><init>(Lcom/android/simmelock/NPAddLockSetting;)V

    .line 121
    .local v3, l:Landroid/widget/AdapterView$OnItemSelectedListener;
    iget-object v4, p0, Lcom/android/simmelock/NPAddLockSetting;->s1:Landroid/widget/Spinner;

    invoke-virtual {v4, v3}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 123
    const v4, 0x7f070019

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/android/simmelock/NPAddLockSetting;->etPwd:Landroid/widget/EditText;

    .line 124
    const v4, 0x7f07001b

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/android/simmelock/NPAddLockSetting;->etPwdConfirm:Landroid/widget/EditText;

    .line 125
    iget-object v4, p0, Lcom/android/simmelock/NPAddLockSetting;->etPwd:Landroid/widget/EditText;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setInputType(I)V

    .line 126
    iget-object v4, p0, Lcom/android/simmelock/NPAddLockSetting;->etPwd:Landroid/widget/EditText;

    invoke-static {v4, v6}, Lcom/android/simmelock/SMLCommonProcess;->limitEditTextPassword(Landroid/widget/EditText;I)V

    .line 127
    iget-object v4, p0, Lcom/android/simmelock/NPAddLockSetting;->etPwdConfirm:Landroid/widget/EditText;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setInputType(I)V

    .line 128
    iget-object v4, p0, Lcom/android/simmelock/NPAddLockSetting;->etPwdConfirm:Landroid/widget/EditText;

    invoke-static {v4, v6}, Lcom/android/simmelock/SMLCommonProcess;->limitEditTextPassword(Landroid/widget/EditText;I)V

    .line 129
    iget-object v4, p0, Lcom/android/simmelock/NPAddLockSetting;->etMccMnc:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/android/simmelock/SimLockBaseActivity;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 130
    iget-object v4, p0, Lcom/android/simmelock/NPAddLockSetting;->etPwd:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/android/simmelock/SimLockBaseActivity;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 131
    iget-object v4, p0, Lcom/android/simmelock/NPAddLockSetting;->etPwdConfirm:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/android/simmelock/SimLockBaseActivity;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 134
    const v4, 0x7f07001c

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 136
    .local v2, btnConfirm:Landroid/widget/Button;
    new-instance v4, Lcom/android/simmelock/NPAddLockSetting$2;

    invoke-direct {v4, p0}, Lcom/android/simmelock/NPAddLockSetting$2;-><init>(Lcom/android/simmelock/NPAddLockSetting;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    const v4, 0x7f07001d

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 166
    .local v1, btnCancel:Landroid/widget/Button;
    new-instance v4, Lcom/android/simmelock/NPAddLockSetting$3;

    invoke-direct {v4, p0}, Lcom/android/simmelock/NPAddLockSetting$3;-><init>(Lcom/android/simmelock/NPAddLockSetting;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    const v3, 0x7f06000f

    .line 200
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

    .line 206
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    packed-switch p1, :pswitch_data_0

    .line 267
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    :goto_0
    return-object v1

    .line 208
    :pswitch_0
    const v1, 0x7f060022

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/simmelock/NPAddLockSetting$4;

    invoke-direct {v2, p0}, Lcom/android/simmelock/NPAddLockSetting$4;-><init>(Lcom/android/simmelock/NPAddLockSetting;)V

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 218
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    .line 220
    :pswitch_1
    const v1, 0x7f060020

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/simmelock/NPAddLockSetting$5;

    invoke-direct {v2, p0}, Lcom/android/simmelock/NPAddLockSetting$5;-><init>(Lcom/android/simmelock/NPAddLockSetting;)V

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 229
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    .line 231
    :pswitch_2
    const v1, 0x7f060024

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/simmelock/NPAddLockSetting$6;

    invoke-direct {v2, p0}, Lcom/android/simmelock/NPAddLockSetting$6;-><init>(Lcom/android/simmelock/NPAddLockSetting;)V

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 239
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    .line 241
    :pswitch_3
    const v1, 0x7f060023

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/simmelock/NPAddLockSetting$7;

    invoke-direct {v2, p0}, Lcom/android/simmelock/NPAddLockSetting$7;-><init>(Lcom/android/simmelock/NPAddLockSetting;)V

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 252
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    .line 254
    :pswitch_4
    const v1, 0x7f060029

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/simmelock/NPAddLockSetting$8;

    invoke-direct {v2, p0}, Lcom/android/simmelock/NPAddLockSetting$8;-><init>(Lcom/android/simmelock/NPAddLockSetting;)V

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 263
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    .line 206
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 176
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 177
    invoke-virtual {p0}, Lcom/android/simmelock/SimLockBaseActivity;->isSimReady()Z

    move-result v1

    if-nez v1, :cond_0

    .line 178
    const-string v1, "Add NP lock fail : SIM not ready!"

    invoke-virtual {p0, v1}, Lcom/android/simmelock/SimLockBaseActivity;->log(Ljava/lang/String;)V

    .line 196
    :goto_0
    return-void

    .line 187
    :cond_0
    invoke-static {}, Lcom/mediatek/telephony/TelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v0

    .line 188
    .local v0, telephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;
    iget v1, p0, Lcom/android/simmelock/SimLockBaseActivity;->simNumber:I

    invoke-virtual {v0, v1}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSimOperator(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/simmelock/NPAddLockSetting;->mSimMccMnc:Ljava/lang/String;

    .line 191
    iget-object v1, p0, Lcom/android/simmelock/NPAddLockSetting;->mSimMccMnc:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 192
    const-string v1, "Fail to read SIM MCC+MNC!"

    invoke-virtual {p0, v1}, Lcom/android/simmelock/SimLockBaseActivity;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 194
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Read SIM MCC+MNC: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/simmelock/NPAddLockSetting;->mSimMccMnc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/simmelock/SimLockBaseActivity;->log(Ljava/lang/String;)V

    goto :goto_0
.end method
