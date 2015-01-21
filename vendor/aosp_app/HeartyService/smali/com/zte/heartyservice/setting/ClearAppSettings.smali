.class public Lcom/zte/heartyservice/setting/ClearAppSettings;
.super Lcom/zte/heartyservice/common/datatype/AbstractHeartyActivity;
.source "ClearAppSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# static fields
.field private static final MAX_PERIOD:I = 0xa

.field private static final MIN_PERIOD:I = 0x2


# instance fields
.field private clearSetting:Landroid/view/View;

.field private mActionBarSwitch:Lcom/zte/heartyservice/common/datatype/P3Switch;

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
    .line 109
    iget-object v0, p0, Lcom/zte/heartyservice/setting/ClearAppSettings;->mActionBarSwitch:Lcom/zte/heartyservice/common/datatype/P3Switch;

    invoke-virtual {v0, p0}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 110
    const v0, 0x7f0e02bf

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/setting/ClearAppSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/heartyservice/setting/ClearAppSettings;->mTextView:Landroid/widget/TextView;

    .line 111
    const v0, 0x7f0e0353

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/setting/ClearAppSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/zte/heartyservice/setting/ClearAppSettings;->mSeekBar:Landroid/widget/SeekBar;

    .line 112
    const v0, 0x7f0e02c1

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/setting/ClearAppSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/heartyservice/setting/ClearAppSettings;->mTextView2:Landroid/widget/TextView;

    .line 113
    const v0, 0x7f0e0354

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/setting/ClearAppSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/setting/ClearAppSettings;->clearSetting:Landroid/view/View;

    .line 114
    iget-object v0, p0, Lcom/zte/heartyservice/setting/ClearAppSettings;->clearSetting:Landroid/view/View;

    new-instance v1, Lcom/zte/heartyservice/setting/ClearAppSettings$3;

    invoke-direct {v1, p0}, Lcom/zte/heartyservice/setting/ClearAppSettings$3;-><init>(Lcom/zte/heartyservice/setting/ClearAppSettings;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    iget-object v0, p0, Lcom/zte/heartyservice/setting/ClearAppSettings;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 121
    iget-object v0, p0, Lcom/zte/heartyservice/setting/ClearAppSettings;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 122
    return-void
.end method

.method private setEnable(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/zte/heartyservice/setting/ClearAppSettings;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 136
    iget-object v0, p0, Lcom/zte/heartyservice/setting/ClearAppSettings;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 137
    iget-object v0, p0, Lcom/zte/heartyservice/setting/ClearAppSettings;->mTextView2:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 138
    iget-object v0, p0, Lcom/zte/heartyservice/setting/ClearAppSettings;->clearSetting:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 139
    return-void
.end method

.method private setText(J)V
    .locals 6
    .parameter "period"

    .prologue
    .line 125
    const v1, 0x7f0a00b6

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/setting/ClearAppSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, info:Ljava/lang/String;
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-nez v1, :cond_0

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0a00b5

    invoke-virtual {p0, v2}, Lcom/zte/heartyservice/setting/ClearAppSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 131
    :goto_0
    iget-object v1, p0, Lcom/zte/heartyservice/setting/ClearAppSettings;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    return-void

    .line 129
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0a00b7

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/zte/heartyservice/setting/ClearAppSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 79
    const-string v1, "hs_clear_app"

    invoke-static {v1, p2}, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->setOption(Ljava/lang/String;Z)V

    .line 80
    invoke-direct {p0, p2}, Lcom/zte/heartyservice/setting/ClearAppSettings;->setEnable(Z)V

    .line 81
    if-eqz p2, :cond_1

    .line 82
    if-eqz p2, :cond_0

    const-string v1, "auto_clean_first_enabled"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/zte/heartyservice/common/utils/SettingUtils;->getBooleanSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 83
    const-string v1, "auto_clean_first_enabled"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/zte/heartyservice/common/utils/SettingUtils;->putBooleanSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 84
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a0605

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a0606

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a0607

    new-instance v3, Lcom/zte/heartyservice/setting/ClearAppSettings$2;

    invoke-direct {v3, p0}, Lcom/zte/heartyservice/setting/ClearAppSettings$2;-><init>(Lcom/zte/heartyservice/setting/ClearAppSettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a0608

    new-instance v3, Lcom/zte/heartyservice/setting/ClearAppSettings$1;

    invoke-direct {v3, p0}, Lcom/zte/heartyservice/setting/ClearAppSettings$1;-><init>(Lcom/zte/heartyservice/setting/ClearAppSettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 101
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 102
    invoke-static {v0}, Lcom/zte/heartyservice/common/ui/DialogActivity;->setCustomAlertDialogStyle(Landroid/app/AlertDialog;)V

    .line 104
    .end local v0           #dialog:Landroid/app/AlertDialog;
    :cond_0
    const/4 v1, 0x2

    invoke-static {p0, v1}, Lcom/zte/heartyservice/main/HeartyServiceApp;->checkTimer(Landroid/content/Context;I)V

    .line 106
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

    .line 39
    invoke-super {p0, p1}, Lcom/zte/heartyservice/common/datatype/AbstractHeartyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-virtual {p0}, Lcom/zte/heartyservice/setting/ClearAppSettings;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0300e2

    invoke-virtual {v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 43
    .local v0, rightOfActionBar:Landroid/view/View;
    const v1, 0x7f0e032a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/zte/heartyservice/common/datatype/P3Switch;

    iput-object v1, p0, Lcom/zte/heartyservice/setting/ClearAppSettings;->mActionBarSwitch:Lcom/zte/heartyservice/common/datatype/P3Switch;

    .line 46
    const v1, 0x7f0a00a9

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/setting/ClearAppSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v5}, Lcom/zte/heartyservice/setting/ClearAppSettings;->initActionBar(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 47
    iget-object v1, p0, Lcom/zte/heartyservice/setting/ClearAppSettings;->actionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v3, v3}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 49
    iget-object v1, p0, Lcom/zte/heartyservice/setting/ClearAppSettings;->actionBar:Landroid/app/ActionBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 50
    iget-object v1, p0, Lcom/zte/heartyservice/setting/ClearAppSettings;->actionBar:Landroid/app/ActionBar;

    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    const/16 v3, 0x15

    invoke-direct {v2, v4, v4, v3}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v0, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 54
    const v1, 0x7f0300ee

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/setting/ClearAppSettings;->setContentView(I)V

    .line 55
    invoke-direct {p0}, Lcom/zte/heartyservice/setting/ClearAppSettings;->initView()V

    .line 56
    return-void
.end method

.method public onPause()V
    .locals 5

    .prologue
    const-wide/16 v2, 0x3c

    const/4 v4, 0x2

    .line 72
    invoke-super {p0}, Lcom/zte/heartyservice/common/datatype/AbstractHeartyActivity;->onPause()V

    .line 73
    iget-wide v0, p0, Lcom/zte/heartyservice/setting/ClearAppSettings;->mPeriod:J

    mul-long/2addr v0, v2

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-static {v4, v0, v1}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setPeriod(IJ)V

    .line 74
    invoke-static {p0, v4}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setSettingTimer(Landroid/content/Context;I)V

    .line 75
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 142
    add-int/lit8 v0, p2, 0x2

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/zte/heartyservice/setting/ClearAppSettings;->mPeriod:J

    .line 143
    add-int/lit8 v0, p2, 0x2

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/zte/heartyservice/setting/ClearAppSettings;->setText(J)V

    .line 144
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    .line 60
    invoke-super {p0}, Lcom/zte/heartyservice/common/datatype/AbstractHeartyActivity;->onResume()V

    .line 61
    const-string v1, "hs_clear_app"

    invoke-static {v1}, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->isOptionOn(Ljava/lang/String;)Z

    move-result v0

    .line 62
    .local v0, enable:Z
    iget-object v1, p0, Lcom/zte/heartyservice/setting/ClearAppSettings;->mActionBarSwitch:Lcom/zte/heartyservice/common/datatype/P3Switch;

    invoke-virtual {v1, v0}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setChecked(Z)V

    .line 63
    const-string v1, "hs_clear_app_data"

    invoke-static {v1}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPeriod(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/zte/heartyservice/setting/ClearAppSettings;->mPeriod:J

    .line 64
    iget-wide v1, p0, Lcom/zte/heartyservice/setting/ClearAppSettings;->mPeriod:J

    const-wide/32 v3, 0x36ee80

    div-long/2addr v1, v3

    iput-wide v1, p0, Lcom/zte/heartyservice/setting/ClearAppSettings;->mPeriod:J

    .line 65
    iget-object v1, p0, Lcom/zte/heartyservice/setting/ClearAppSettings;->mSeekBar:Landroid/widget/SeekBar;

    iget-wide v2, p0, Lcom/zte/heartyservice/setting/ClearAppSettings;->mPeriod:J

    const-wide/16 v4, 0x2

    sub-long/2addr v2, v4

    long-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 66
    iget-wide v1, p0, Lcom/zte/heartyservice/setting/ClearAppSettings;->mPeriod:J

    invoke-direct {p0, v1, v2}, Lcom/zte/heartyservice/setting/ClearAppSettings;->setText(J)V

    .line 67
    invoke-direct {p0, v0}, Lcom/zte/heartyservice/setting/ClearAppSettings;->setEnable(Z)V

    .line 68
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 149
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 154
    return-void
.end method
