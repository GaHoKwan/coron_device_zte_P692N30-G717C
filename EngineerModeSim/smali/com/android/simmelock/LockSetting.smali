.class public Lcom/android/simmelock/LockSetting;
.super Lcom/android/simmelock/SimLockBaseActivity;
.source "LockSetting.java"


# static fields
.field private static final LOCK_ICC_SML_COMPLETE:I = 0x78


# instance fields
.field final DIALOG_LOCKFAIL:I

.field final DIALOG_LOCKSUCCEED:I

.field final DIALOG_PASSWORDLENGTHINCORRECT:I

.field final DIALOG_PASSWORDWRONG:I

.field private clickFlag:Z

.field et:Landroid/widget/EditText;

.field private lockPassword:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field re_et:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-direct {p0}, Lcom/android/simmelock/SimLockBaseActivity;-><init>()V

    .line 71
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/simmelock/LockSetting;->DIALOG_LOCKFAIL:I

    .line 72
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/simmelock/LockSetting;->DIALOG_PASSWORDLENGTHINCORRECT:I

    .line 73
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/simmelock/LockSetting;->DIALOG_LOCKSUCCEED:I

    .line 74
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/simmelock/LockSetting;->DIALOG_PASSWORDWRONG:I

    .line 76
    iput-object v1, p0, Lcom/android/simmelock/LockSetting;->et:Landroid/widget/EditText;

    .line 77
    iput-object v1, p0, Lcom/android/simmelock/LockSetting;->re_et:Landroid/widget/EditText;

    .line 78
    iput-object v1, p0, Lcom/android/simmelock/LockSetting;->lockPassword:Ljava/lang/String;

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/simmelock/LockSetting;->clickFlag:Z

    .line 217
    new-instance v0, Lcom/android/simmelock/LockSetting$7;

    invoke-direct {v0, p0}, Lcom/android/simmelock/LockSetting$7;-><init>(Lcom/android/simmelock/LockSetting;)V

    iput-object v0, p0, Lcom/android/simmelock/LockSetting;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/simmelock/LockSetting;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/simmelock/LockSetting;->clickFlag:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/simmelock/LockSetting;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/android/simmelock/LockSetting;->clickFlag:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/simmelock/LockSetting;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/simmelock/LockSetting;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/16 v7, 0x81

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 83
    invoke-super {p0, p1}, Lcom/android/simmelock/SimLockBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 84
    const v3, 0x7f030001

    invoke-virtual {p0, v3}, Landroid/app/Activity;->setContentView(I)V

    .line 87
    const v3, 0x7f070010

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/android/simmelock/LockSetting;->et:Landroid/widget/EditText;

    .line 88
    iget-object v3, p0, Lcom/android/simmelock/LockSetting;->et:Landroid/widget/EditText;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setInputType(I)V

    .line 89
    iget-object v3, p0, Lcom/android/simmelock/LockSetting;->et:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/android/simmelock/SimLockBaseActivity;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 90
    iget-object v3, p0, Lcom/android/simmelock/LockSetting;->et:Landroid/widget/EditText;

    invoke-static {v3, v6}, Lcom/android/simmelock/SMLCommonProcess;->limitEditTextPassword(Landroid/widget/EditText;I)V

    .line 91
    iget v3, p0, Lcom/android/simmelock/SimLockBaseActivity;->lockCategory:I

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/simmelock/SimLockBaseActivity;->lockCategory:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    iget v3, p0, Lcom/android/simmelock/SimLockBaseActivity;->lockCategory:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    iget v3, p0, Lcom/android/simmelock/SimLockBaseActivity;->lockCategory:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    iget v3, p0, Lcom/android/simmelock/SimLockBaseActivity;->lockCategory:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    .line 92
    :cond_0
    const v3, 0x7f070011

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 93
    .local v2, t:Landroid/widget/TextView;
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 94
    const v3, 0x7f070012

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/android/simmelock/LockSetting;->re_et:Landroid/widget/EditText;

    .line 95
    iget-object v3, p0, Lcom/android/simmelock/LockSetting;->re_et:Landroid/widget/EditText;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setInputType(I)V

    .line 96
    iget-object v3, p0, Lcom/android/simmelock/LockSetting;->re_et:Landroid/widget/EditText;

    invoke-static {v3, v6}, Lcom/android/simmelock/SMLCommonProcess;->limitEditTextPassword(Landroid/widget/EditText;I)V

    .line 97
    iget-object v3, p0, Lcom/android/simmelock/LockSetting;->re_et:Landroid/widget/EditText;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 98
    iget-object v3, p0, Lcom/android/simmelock/LockSetting;->re_et:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/android/simmelock/SimLockBaseActivity;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 101
    .end local v2           #t:Landroid/widget/TextView;
    :cond_1
    const v3, 0x7f070013

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 103
    .local v1, btnConfirm:Landroid/widget/Button;
    new-instance v3, Lcom/android/simmelock/LockSetting$1;

    invoke-direct {v3, p0}, Lcom/android/simmelock/LockSetting$1;-><init>(Lcom/android/simmelock/LockSetting;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    const v3, 0x7f070014

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 140
    .local v0, btnCancel:Landroid/widget/Button;
    new-instance v3, Lcom/android/simmelock/LockSetting$2;

    invoke-direct {v3, p0}, Lcom/android/simmelock/LockSetting$2;-><init>(Lcom/android/simmelock/LockSetting;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    const v3, 0x7f06000f

    .line 149
    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 151
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

    .line 157
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    packed-switch p1, :pswitch_data_0

    .line 214
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    :goto_0
    return-object v1

    .line 159
    .restart local v0       #builder:Landroid/app/AlertDialog$Builder;
    :pswitch_0
    const v1, 0x7f060010

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/simmelock/LockSetting$3;

    invoke-direct {v2, p0}, Lcom/android/simmelock/LockSetting$3;-><init>(Lcom/android/simmelock/LockSetting;)V

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 170
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    .line 172
    :pswitch_1
    const v1, 0x7f060020

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/simmelock/LockSetting$4;

    invoke-direct {v2, p0}, Lcom/android/simmelock/LockSetting$4;-><init>(Lcom/android/simmelock/LockSetting;)V

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 183
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    .line 185
    :pswitch_2
    const v1, 0x7f060011

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/simmelock/LockSetting$5;

    invoke-direct {v2, p0}, Lcom/android/simmelock/LockSetting$5;-><init>(Lcom/android/simmelock/LockSetting;)V

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 197
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    .line 199
    :pswitch_3
    const v1, 0x7f060029

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/simmelock/LockSetting$6;

    invoke-direct {v2, p0}, Lcom/android/simmelock/LockSetting$6;-><init>(Lcom/android/simmelock/LockSetting;)V

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 211
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    .line 157
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
