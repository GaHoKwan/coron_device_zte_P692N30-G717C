.class public Lcom/zte/heartyservice/setting/AutoUpdateSettings;
.super Lcom/zte/heartyservice/common/datatype/AbstractHeartyActivity;
.source "AutoUpdateSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mActionBarSwitch:Lcom/zte/heartyservice/common/datatype/P3Switch;

.field private mEdit:Landroid/widget/EditText;

.field private mTextView1:Landroid/widget/TextView;

.field private mTextView2:Landroid/widget/TextView;

.field private mTextView3:Landroid/widget/TextView;

.field private period:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/zte/heartyservice/common/datatype/AbstractHeartyActivity;-><init>()V

    .line 39
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/zte/heartyservice/setting/AutoUpdateSettings;->period:J

    return-void
.end method

.method static synthetic access$000(Lcom/zte/heartyservice/setting/AutoUpdateSettings;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/setting/AutoUpdateSettings;->setEnable(Z)V

    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 136
    const v0, 0x7f0e02bf

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/setting/AutoUpdateSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/heartyservice/setting/AutoUpdateSettings;->mTextView1:Landroid/widget/TextView;

    .line 137
    const v0, 0x7f0e02c1

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/setting/AutoUpdateSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/heartyservice/setting/AutoUpdateSettings;->mTextView2:Landroid/widget/TextView;

    .line 138
    const v0, 0x7f0e02c2

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/setting/AutoUpdateSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/heartyservice/setting/AutoUpdateSettings;->mTextView3:Landroid/widget/TextView;

    .line 140
    iget-object v0, p0, Lcom/zte/heartyservice/setting/AutoUpdateSettings;->mTextView3:Landroid/widget/TextView;

    const v1, 0x7f0a00c2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 141
    const v0, 0x7f0e02c0

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/setting/AutoUpdateSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/zte/heartyservice/setting/AutoUpdateSettings;->mEdit:Landroid/widget/EditText;

    .line 142
    iget-object v0, p0, Lcom/zte/heartyservice/setting/AutoUpdateSettings;->mEdit:Landroid/widget/EditText;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 143
    return-void
.end method

.method private setEnable(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/zte/heartyservice/setting/AutoUpdateSettings;->mTextView1:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 147
    iget-object v0, p0, Lcom/zte/heartyservice/setting/AutoUpdateSettings;->mTextView2:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 148
    iget-object v0, p0, Lcom/zte/heartyservice/setting/AutoUpdateSettings;->mTextView3:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 149
    iget-object v0, p0, Lcom/zte/heartyservice/setting/AutoUpdateSettings;->mEdit:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 150
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 10
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v9, 0x0

    .line 91
    if-eqz p2, :cond_1

    invoke-static {}, Lcom/zte/heartyservice/common/utils/XmlParseUtils;->isCMVersion()Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "autoupdate_dont_notice"

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {p0, v6, v7}, Lcom/zte/heartyservice/common/utils/SettingUtils;->getBooleanSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 93
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 94
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 95
    .local v3, dialogInflater:Landroid/view/LayoutInflater;
    const v6, 0x7f030023

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 96
    .local v5, view:Landroid/view/View;
    const v6, 0x7f0e0076

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 97
    .local v4, msg1:Landroid/widget/TextView;
    const v6, 0x7f0a0381

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    .line 98
    const v6, 0x7f0e0058

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 99
    .local v1, cb:Landroid/widget/CheckBox;
    new-instance v6, Lcom/zte/heartyservice/setting/AutoUpdateSettings$1;

    invoke-direct {v6, p0}, Lcom/zte/heartyservice/setting/AutoUpdateSettings$1;-><init>(Lcom/zte/heartyservice/setting/AutoUpdateSettings;)V

    invoke-virtual {v1, v6}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 104
    const v6, 0x7f0a00af

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f0a0173

    new-instance v8, Lcom/zte/heartyservice/setting/AutoUpdateSettings$3;

    invoke-direct {v8, p0}, Lcom/zte/heartyservice/setting/AutoUpdateSettings$3;-><init>(Lcom/zte/heartyservice/setting/AutoUpdateSettings;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f0a0174

    new-instance v8, Lcom/zte/heartyservice/setting/AutoUpdateSettings$2;

    invoke-direct {v8, p0, p1}, Lcom/zte/heartyservice/setting/AutoUpdateSettings$2;-><init>(Lcom/zte/heartyservice/setting/AutoUpdateSettings;Landroid/widget/CompoundButton;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 121
    .local v2, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v2, v9}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 122
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 123
    invoke-static {v2}, Lcom/zte/heartyservice/common/ui/DialogActivity;->setCustomAlertDialogStyle(Landroid/app/AlertDialog;)V

    .line 131
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    .end local v1           #cb:Landroid/widget/CheckBox;
    .end local v2           #dialog:Landroid/app/AlertDialog;
    .end local v3           #dialogInflater:Landroid/view/LayoutInflater;
    .end local v4           #msg1:Landroid/widget/TextView;
    .end local v5           #view:Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    const-string v6, "hs_auto_update"

    invoke-static {v6, p2}, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->setOption(Ljava/lang/String;Z)V

    .line 126
    invoke-direct {p0, p2}, Lcom/zte/heartyservice/setting/AutoUpdateSettings;->setEnable(Z)V

    .line 127
    if-eqz p2, :cond_0

    .line 128
    const/4 v6, 0x3

    invoke-static {p0, v6}, Lcom/zte/heartyservice/main/HeartyServiceApp;->checkTimer(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    const/16 v3, 0x10

    const/4 v4, -0x2

    .line 43
    invoke-super {p0, p1}, Lcom/zte/heartyservice/common/datatype/AbstractHeartyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    invoke-virtual {p0}, Lcom/zte/heartyservice/setting/AutoUpdateSettings;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0300e2

    invoke-virtual {v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 47
    .local v0, rightOfActionBar:Landroid/view/View;
    const v1, 0x7f0e032a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/zte/heartyservice/common/datatype/P3Switch;

    iput-object v1, p0, Lcom/zte/heartyservice/setting/AutoUpdateSettings;->mActionBarSwitch:Lcom/zte/heartyservice/common/datatype/P3Switch;

    .line 50
    const v1, 0x7f0a00af

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/setting/AutoUpdateSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v5}, Lcom/zte/heartyservice/setting/AutoUpdateSettings;->initActionBar(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 51
    iget-object v1, p0, Lcom/zte/heartyservice/setting/AutoUpdateSettings;->actionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v3, v3}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 53
    iget-object v1, p0, Lcom/zte/heartyservice/setting/AutoUpdateSettings;->actionBar:Landroid/app/ActionBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 54
    iget-object v1, p0, Lcom/zte/heartyservice/setting/AutoUpdateSettings;->actionBar:Landroid/app/ActionBar;

    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    const/16 v3, 0x15

    invoke-direct {v2, v4, v4, v3}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v0, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 59
    const v1, 0x7f0300a2

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/setting/AutoUpdateSettings;->setContentView(I)V

    .line 60
    invoke-direct {p0}, Lcom/zte/heartyservice/setting/AutoUpdateSettings;->initView()V

    .line 61
    return-void
.end method

.method public onPause()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 77
    invoke-super {p0}, Lcom/zte/heartyservice/common/datatype/AbstractHeartyActivity;->onPause()V

    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/zte/heartyservice/setting/AutoUpdateSettings;->mEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/zte/heartyservice/setting/AutoUpdateSettings;->period:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :goto_0
    iget-wide v0, p0, Lcom/zte/heartyservice/setting/AutoUpdateSettings;->period:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 85
    iget-wide v0, p0, Lcom/zte/heartyservice/setting/AutoUpdateSettings;->period:J

    const-wide/16 v2, 0x18

    mul-long/2addr v0, v2

    const-wide/16 v2, 0xe10

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-static {v4, v0, v1}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setPeriod(IJ)V

    .line 86
    invoke-static {p0, v4}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setSettingTimer(Landroid/content/Context;I)V

    .line 88
    :cond_0
    return-void

    .line 81
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 65
    invoke-super {p0}, Lcom/zte/heartyservice/common/datatype/AbstractHeartyActivity;->onResume()V

    .line 66
    const-string v1, "hs_auto_update"

    invoke-static {v1}, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->isOptionOn(Ljava/lang/String;)Z

    move-result v0

    .line 67
    .local v0, enable:Z
    iget-object v1, p0, Lcom/zte/heartyservice/setting/AutoUpdateSettings;->mActionBarSwitch:Lcom/zte/heartyservice/common/datatype/P3Switch;

    invoke-virtual {v1, v0}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setChecked(Z)V

    .line 68
    iget-object v1, p0, Lcom/zte/heartyservice/setting/AutoUpdateSettings;->mActionBarSwitch:Lcom/zte/heartyservice/common/datatype/P3Switch;

    invoke-virtual {v1, p0}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 69
    invoke-direct {p0, v0}, Lcom/zte/heartyservice/setting/AutoUpdateSettings;->setEnable(Z)V

    .line 70
    const-string v1, "hs_auto_update_data"

    invoke-static {v1}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPeriod(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/zte/heartyservice/setting/AutoUpdateSettings;->period:J

    .line 71
    iget-wide v1, p0, Lcom/zte/heartyservice/setting/AutoUpdateSettings;->period:J

    const-wide/32 v3, 0x5265c00

    div-long/2addr v1, v3

    iput-wide v1, p0, Lcom/zte/heartyservice/setting/AutoUpdateSettings;->period:J

    .line 72
    iget-object v1, p0, Lcom/zte/heartyservice/setting/AutoUpdateSettings;->mEdit:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/zte/heartyservice/setting/AutoUpdateSettings;->period:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 73
    return-void
.end method
