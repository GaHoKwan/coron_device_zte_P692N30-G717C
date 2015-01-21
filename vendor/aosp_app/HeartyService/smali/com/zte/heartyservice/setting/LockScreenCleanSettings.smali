.class public Lcom/zte/heartyservice/setting/LockScreenCleanSettings;
.super Lcom/zte/heartyservice/common/datatype/AbstractHeartyActivity;
.source "LockScreenCleanSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# static fields
.field private static final MAX_PERIOD:I = 0x6

.field private static final MIN_PERIOD:I = 0x1


# instance fields
.field private clearSetting:Landroid/view/View;

.field private mActionBarSwitch:Lcom/zte/heartyservice/common/datatype/P3Switch;

.field private mDelay:I

.field private mPeriod:J

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mTextView:Landroid/widget/TextView;

.field private mTextView2:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/zte/heartyservice/common/datatype/AbstractHeartyActivity;-><init>()V

    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/zte/heartyservice/setting/LockScreenCleanSettings;->mActionBarSwitch:Lcom/zte/heartyservice/common/datatype/P3Switch;

    invoke-virtual {v0, p0}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 114
    const v0, 0x7f0e02bf

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/setting/LockScreenCleanSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/heartyservice/setting/LockScreenCleanSettings;->mTextView:Landroid/widget/TextView;

    .line 115
    const v0, 0x7f0e0353

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/setting/LockScreenCleanSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/zte/heartyservice/setting/LockScreenCleanSettings;->mSeekBar:Landroid/widget/SeekBar;

    .line 116
    const v0, 0x7f0e02c1

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/setting/LockScreenCleanSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/heartyservice/setting/LockScreenCleanSettings;->mTextView2:Landroid/widget/TextView;

    .line 117
    const v0, 0x7f0e0354

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/setting/LockScreenCleanSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/setting/LockScreenCleanSettings;->clearSetting:Landroid/view/View;

    .line 118
    iget-object v0, p0, Lcom/zte/heartyservice/setting/LockScreenCleanSettings;->clearSetting:Landroid/view/View;

    new-instance v1, Lcom/zte/heartyservice/setting/LockScreenCleanSettings$3;

    invoke-direct {v1, p0}, Lcom/zte/heartyservice/setting/LockScreenCleanSettings$3;-><init>(Lcom/zte/heartyservice/setting/LockScreenCleanSettings;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    iget-object v0, p0, Lcom/zte/heartyservice/setting/LockScreenCleanSettings;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 125
    iget-object v0, p0, Lcom/zte/heartyservice/setting/LockScreenCleanSettings;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 126
    return-void
.end method

.method private setEnable(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/zte/heartyservice/setting/LockScreenCleanSettings;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 140
    iget-object v0, p0, Lcom/zte/heartyservice/setting/LockScreenCleanSettings;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 141
    iget-object v0, p0, Lcom/zte/heartyservice/setting/LockScreenCleanSettings;->mTextView2:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 142
    iget-object v0, p0, Lcom/zte/heartyservice/setting/LockScreenCleanSettings;->clearSetting:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 143
    return-void
.end method

.method private setText(I)V
    .locals 5
    .parameter "delay"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 130
    const/4 v1, 0x6

    if-ne p1, v1, :cond_0

    .line 131
    const v1, 0x7f0a067d

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/zte/heartyservice/setting/LockScreenCleanSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, info:Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/zte/heartyservice/setting/LockScreenCleanSettings;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    return-void

    .line 133
    .end local v0           #info:Ljava/lang/String;
    :cond_0
    const v1, 0x7f0a067c

    new-array v2, v3, [Ljava/lang/Object;

    mul-int/lit8 v3, p1, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/zte/heartyservice/setting/LockScreenCleanSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #info:Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 83
    const-string v1, "hs_lock_screen_clean"

    invoke-static {v1, p2}, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->setOption(Ljava/lang/String;Z)V

    .line 84
    invoke-direct {p0, p2}, Lcom/zte/heartyservice/setting/LockScreenCleanSettings;->setEnable(Z)V

    .line 85
    if-eqz p2, :cond_1

    .line 86
    if-eqz p2, :cond_0

    const-string v1, "auto_clean_first_enabled"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/zte/heartyservice/common/utils/SettingUtils;->getBooleanSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 87
    const-string v1, "auto_clean_first_enabled"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/zte/heartyservice/common/utils/SettingUtils;->putBooleanSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 88
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a067e

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a067f

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a0607

    new-instance v3, Lcom/zte/heartyservice/setting/LockScreenCleanSettings$2;

    invoke-direct {v3, p0}, Lcom/zte/heartyservice/setting/LockScreenCleanSettings$2;-><init>(Lcom/zte/heartyservice/setting/LockScreenCleanSettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a0608

    new-instance v3, Lcom/zte/heartyservice/setting/LockScreenCleanSettings$1;

    invoke-direct {v3, p0}, Lcom/zte/heartyservice/setting/LockScreenCleanSettings$1;-><init>(Lcom/zte/heartyservice/setting/LockScreenCleanSettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 105
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 106
    invoke-static {v0}, Lcom/zte/heartyservice/common/ui/DialogActivity;->setCustomAlertDialogStyle(Landroid/app/AlertDialog;)V

    .line 108
    .end local v0           #dialog:Landroid/app/AlertDialog;
    :cond_0
    const/4 v1, 0x2

    invoke-static {p0, v1}, Lcom/zte/heartyservice/main/HeartyServiceApp;->checkTimer(Landroid/content/Context;I)V

    .line 110
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    const/16 v3, 0x10

    const/4 v4, -0x2

    .line 41
    invoke-super {p0, p1}, Lcom/zte/heartyservice/common/datatype/AbstractHeartyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-virtual {p0}, Lcom/zte/heartyservice/setting/LockScreenCleanSettings;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0300e2

    invoke-virtual {v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 45
    .local v0, rightOfActionBar:Landroid/view/View;
    const v1, 0x7f0e032a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/zte/heartyservice/common/datatype/P3Switch;

    iput-object v1, p0, Lcom/zte/heartyservice/setting/LockScreenCleanSettings;->mActionBarSwitch:Lcom/zte/heartyservice/common/datatype/P3Switch;

    .line 48
    const v1, 0x7f0a067b

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/setting/LockScreenCleanSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v5}, Lcom/zte/heartyservice/setting/LockScreenCleanSettings;->initActionBar(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 49
    iget-object v1, p0, Lcom/zte/heartyservice/setting/LockScreenCleanSettings;->actionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v3, v3}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 51
    iget-object v1, p0, Lcom/zte/heartyservice/setting/LockScreenCleanSettings;->actionBar:Landroid/app/ActionBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 52
    iget-object v1, p0, Lcom/zte/heartyservice/setting/LockScreenCleanSettings;->actionBar:Landroid/app/ActionBar;

    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    const/16 v3, 0x15

    invoke-direct {v2, v4, v4, v3}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v0, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 56
    const v1, 0x7f0300ef

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/setting/LockScreenCleanSettings;->setContentView(I)V

    .line 57
    invoke-direct {p0}, Lcom/zte/heartyservice/setting/LockScreenCleanSettings;->initView()V

    .line 58
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 75
    invoke-super {p0}, Lcom/zte/heartyservice/common/datatype/AbstractHeartyActivity;->onPause()V

    .line 78
    const-string v0, "lock_screen_clean_delay"

    iget v1, p0, Lcom/zte/heartyservice/setting/LockScreenCleanSettings;->mDelay:I

    invoke-static {p0, v0, v1}, Lcom/zte/heartyservice/common/utils/SettingUtils;->putIntSetting(Landroid/content/Context;Ljava/lang/String;I)V

    .line 79
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 146
    add-int/lit8 v0, p2, 0x1

    iput v0, p0, Lcom/zte/heartyservice/setting/LockScreenCleanSettings;->mDelay:I

    .line 147
    iget v0, p0, Lcom/zte/heartyservice/setting/LockScreenCleanSettings;->mDelay:I

    invoke-direct {p0, v0}, Lcom/zte/heartyservice/setting/LockScreenCleanSettings;->setText(I)V

    .line 148
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 62
    invoke-super {p0}, Lcom/zte/heartyservice/common/datatype/AbstractHeartyActivity;->onResume()V

    .line 63
    const-string v1, "hs_lock_screen_clean"

    invoke-static {v1}, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->isOptionOn(Ljava/lang/String;)Z

    move-result v0

    .line 64
    .local v0, enable:Z
    iget-object v1, p0, Lcom/zte/heartyservice/setting/LockScreenCleanSettings;->mActionBarSwitch:Lcom/zte/heartyservice/common/datatype/P3Switch;

    invoke-virtual {v1, v0}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setChecked(Z)V

    .line 67
    const-string v1, "lock_screen_clean_delay"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/zte/heartyservice/common/utils/SettingUtils;->getIntSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/zte/heartyservice/setting/LockScreenCleanSettings;->mDelay:I

    .line 68
    iget-object v1, p0, Lcom/zte/heartyservice/setting/LockScreenCleanSettings;->mSeekBar:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/zte/heartyservice/setting/LockScreenCleanSettings;->mDelay:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 69
    iget v1, p0, Lcom/zte/heartyservice/setting/LockScreenCleanSettings;->mDelay:I

    invoke-direct {p0, v1}, Lcom/zte/heartyservice/setting/LockScreenCleanSettings;->setText(I)V

    .line 70
    invoke-direct {p0, v0}, Lcom/zte/heartyservice/setting/LockScreenCleanSettings;->setEnable(Z)V

    .line 71
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 152
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 156
    return-void
.end method
