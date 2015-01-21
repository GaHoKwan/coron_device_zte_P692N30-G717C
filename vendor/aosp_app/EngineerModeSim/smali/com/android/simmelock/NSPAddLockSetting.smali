.class public Lcom/android/simmelock/NSPAddLockSetting;
.super Lcom/android/simmelock/SimLockBaseActivity;
.source "NSPAddLockSetting.java"


# static fields
.field private static final ADDLOCK_ICC_SML_COMPLETE:I = 0x6f

.field private static final DIALOG_ADDLOCKFAIL:I = 0x2

.field private static final DIALOG_ADDLOCKSUCCEED:I = 0x3

.field private static final DIALOG_MCCMNCHLRLENGTHINCORRECT:I = 0x1

.field private static final DIALOG_PASSWORDLENGTHINCORRECT:I = 0x4

.field private static final DIALOG_PASSWORDWRONG:I = 0x5


# instance fields
.field private clickFlag:Z

.field private etMccMncHlr:Landroid/widget/EditText;

.field private etPwd:Landroid/widget/EditText;

.field private etPwdConfirm:Landroid/widget/EditText;

.field private mHandler:Landroid/os/Handler;

.field private mMccMncHlrReadSim:Z

.field private mSimMccMncHlr:Ljava/lang/String;

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
    iput-object v0, p0, Lcom/android/simmelock/NSPAddLockSetting;->etMccMncHlr:Landroid/widget/EditText;

    .line 82
    iput-object v0, p0, Lcom/android/simmelock/NSPAddLockSetting;->etPwd:Landroid/widget/EditText;

    .line 83
    iput-object v0, p0, Lcom/android/simmelock/NSPAddLockSetting;->etPwdConfirm:Landroid/widget/EditText;

    .line 86
    iput-object v0, p0, Lcom/android/simmelock/NSPAddLockSetting;->mSimMccMncHlr:Ljava/lang/String;

    .line 87
    iput-boolean v1, p0, Lcom/android/simmelock/NSPAddLockSetting;->mMccMncHlrReadSim:Z

    .line 88
    iput-boolean v1, p0, Lcom/android/simmelock/NSPAddLockSetting;->clickFlag:Z

    .line 288
    new-instance v0, Lcom/android/simmelock/NSPAddLockSetting$9;

    invoke-direct {v0, p0}, Lcom/android/simmelock/NSPAddLockSetting$9;-><init>(Lcom/android/simmelock/NSPAddLockSetting;)V

    iput-object v0, p0, Lcom/android/simmelock/NSPAddLockSetting;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/simmelock/NSPAddLockSetting;)Landroid/widget/Spinner;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/simmelock/NSPAddLockSetting;->s1:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/simmelock/NSPAddLockSetting;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/simmelock/NSPAddLockSetting;->etMccMncHlr:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/simmelock/NSPAddLockSetting;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/android/simmelock/NSPAddLockSetting;->mMccMncHlrReadSim:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/simmelock/NSPAddLockSetting;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/android/simmelock/NSPAddLockSetting;->mMccMncHlrReadSim:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/simmelock/NSPAddLockSetting;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/android/simmelock/NSPAddLockSetting;->clickFlag:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/simmelock/NSPAddLockSetting;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/android/simmelock/NSPAddLockSetting;->clickFlag:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/simmelock/NSPAddLockSetting;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/simmelock/NSPAddLockSetting;->mSimMccMncHlr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/simmelock/NSPAddLockSetting;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/simmelock/NSPAddLockSetting;->etPwd:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/simmelock/NSPAddLockSetting;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/simmelock/NSPAddLockSetting;->etPwdConfirm:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/simmelock/NSPAddLockSetting;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/simmelock/NSPAddLockSetting;->mHandler:Landroid/os/Handler;

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
    const v4, 0x7f030003

    invoke-virtual {p0, v4}, Landroid/app/Activity;->setContentView(I)V

    .line 96
    const v4, 0x7f070020

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/android/simmelock/NSPAddLockSetting;->etMccMncHlr:Landroid/widget/EditText;

    .line 99
    const v4, 0x7f07001f

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    iput-object v4, p0, Lcom/android/simmelock/NSPAddLockSetting;->s1:Landroid/widget/Spinner;

    .line 100
    const/high16 v4, 0x7f05

    const v5, 0x1090008

    invoke-static {p0, v4, v5}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 102
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v4, 0x1090009

    invoke-virtual {v0, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 103
    iget-object v4, p0, Lcom/android/simmelock/NSPAddLockSetting;->s1:Landroid/widget/Spinner;

    invoke-virtual {v4, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 104
    new-instance v3, Lcom/android/simmelock/NSPAddLockSetting$1;

    invoke-direct {v3, p0}, Lcom/android/simmelock/NSPAddLockSetting$1;-><init>(Lcom/android/simmelock/NSPAddLockSetting;)V

    .line 122
    .local v3, l:Landroid/widget/AdapterView$OnItemSelectedListener;
    iget-object v4, p0, Lcom/android/simmelock/NSPAddLockSetting;->s1:Landroid/widget/Spinner;

    invoke-virtual {v4, v3}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 124
    const v4, 0x7f070022

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/android/simmelock/NSPAddLockSetting;->etPwd:Landroid/widget/EditText;

    .line 125
    const v4, 0x7f070024

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/android/simmelock/NSPAddLockSetting;->etPwdConfirm:Landroid/widget/EditText;

    .line 126
    iget-object v4, p0, Lcom/android/simmelock/NSPAddLockSetting;->etPwd:Landroid/widget/EditText;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setInputType(I)V

    .line 127
    iget-object v4, p0, Lcom/android/simmelock/NSPAddLockSetting;->etPwd:Landroid/widget/EditText;

    invoke-static {v4, v6}, Lcom/android/simmelock/SMLCommonProcess;->limitEditTextPassword(Landroid/widget/EditText;I)V

    .line 128
    iget-object v4, p0, Lcom/android/simmelock/NSPAddLockSetting;->etPwdConfirm:Landroid/widget/EditText;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setInputType(I)V

    .line 129
    iget-object v4, p0, Lcom/android/simmelock/NSPAddLockSetting;->etPwdConfirm:Landroid/widget/EditText;

    invoke-static {v4, v6}, Lcom/android/simmelock/SMLCommonProcess;->limitEditTextPassword(Landroid/widget/EditText;I)V

    .line 130
    iget-object v4, p0, Lcom/android/simmelock/NSPAddLockSetting;->etMccMncHlr:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/android/simmelock/SimLockBaseActivity;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 131
    iget-object v4, p0, Lcom/android/simmelock/NSPAddLockSetting;->etPwd:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/android/simmelock/SimLockBaseActivity;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 132
    iget-object v4, p0, Lcom/android/simmelock/NSPAddLockSetting;->etPwdConfirm:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/android/simmelock/SimLockBaseActivity;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 135
    const v4, 0x7f070025

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 137
    .local v2, btnConfirm:Landroid/widget/Button;
    new-instance v4, Lcom/android/simmelock/NSPAddLockSetting$2;

    invoke-direct {v4, p0}, Lcom/android/simmelock/NSPAddLockSetting$2;-><init>(Lcom/android/simmelock/NSPAddLockSetting;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    const v4, 0x7f070026

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 165
    .local v1, btnCancel:Landroid/widget/Button;
    new-instance v4, Lcom/android/simmelock/NSPAddLockSetting$3;

    invoke-direct {v4, p0}, Lcom/android/simmelock/NSPAddLockSetting$3;-><init>(Lcom/android/simmelock/NSPAddLockSetting;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    const v3, 0x7f06000f

    .line 218
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

    .line 224
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    packed-switch p1, :pswitch_data_0

    .line 285
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    :goto_0
    return-object v1

    .line 226
    :pswitch_0
    const v1, 0x7f060022

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/simmelock/NSPAddLockSetting$4;

    invoke-direct {v2, p0}, Lcom/android/simmelock/NSPAddLockSetting$4;-><init>(Lcom/android/simmelock/NSPAddLockSetting;)V

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 236
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    .line 238
    :pswitch_1
    const v1, 0x7f060020

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/simmelock/NSPAddLockSetting$5;

    invoke-direct {v2, p0}, Lcom/android/simmelock/NSPAddLockSetting$5;-><init>(Lcom/android/simmelock/NSPAddLockSetting;)V

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 247
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    .line 249
    :pswitch_2
    const v1, 0x7f060025

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/simmelock/NSPAddLockSetting$6;

    invoke-direct {v2, p0}, Lcom/android/simmelock/NSPAddLockSetting$6;-><init>(Lcom/android/simmelock/NSPAddLockSetting;)V

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 257
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    .line 259
    :pswitch_3
    const v1, 0x7f060023

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/simmelock/NSPAddLockSetting$7;

    invoke-direct {v2, p0}, Lcom/android/simmelock/NSPAddLockSetting$7;-><init>(Lcom/android/simmelock/NSPAddLockSetting;)V

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 270
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    .line 272
    :pswitch_4
    const v1, 0x7f060029

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/simmelock/NSPAddLockSetting$8;

    invoke-direct {v2, p0}, Lcom/android/simmelock/NSPAddLockSetting$8;-><init>(Lcom/android/simmelock/NSPAddLockSetting;)V

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 281
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    .line 224
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
    .locals 5

    .prologue
    .line 175
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 176
    invoke-virtual {p0}, Lcom/android/simmelock/SimLockBaseActivity;->isSimReady()Z

    move-result v3

    if-nez v3, :cond_0

    .line 177
    const-string v3, "Add NP lock fail : SIM not ready!"

    invoke-virtual {p0, v3}, Lcom/android/simmelock/SimLockBaseActivity;->log(Ljava/lang/String;)V

    .line 214
    :goto_0
    return-void

    .line 182
    :cond_0
    const/4 v1, 0x0

    .local v1, mccMnc:Ljava/lang/String;
    const/4 v0, 0x0

    .line 193
    .local v0, imsi:Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/telephony/TelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v2

    .line 194
    .local v2, telephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;
    iget v3, p0, Lcom/android/simmelock/SimLockBaseActivity;->simNumber:I

    invoke-virtual {v2, v3}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSimOperator(I)Ljava/lang/String;

    move-result-object v1

    .line 195
    if-eqz v1, :cond_1

    .line 196
    iget v3, p0, Lcom/android/simmelock/SimLockBaseActivity;->simNumber:I

    invoke-virtual {v2, v3}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    .line 197
    if-eqz v0, :cond_1

    .line 198
    const/4 v3, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/simmelock/NSPAddLockSetting;->mSimMccMncHlr:Ljava/lang/String;

    .line 203
    :cond_1
    if-nez v0, :cond_2

    .line 204
    const-string v3, "Fail to read SIM IMSI!"

    invoke-virtual {p0, v3}, Lcom/android/simmelock/SimLockBaseActivity;->log(Ljava/lang/String;)V

    .line 209
    :goto_1
    if-nez v1, :cond_3

    .line 210
    const-string v3, "Fail to read SIM MCC+MNC!"

    invoke-virtual {p0, v3}, Lcom/android/simmelock/SimLockBaseActivity;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 206
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Read SIM IMSI: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/simmelock/SimLockBaseActivity;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 212
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Read SIM MCC+MNC: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/simmelock/SimLockBaseActivity;->log(Ljava/lang/String;)V

    goto :goto_0
.end method
