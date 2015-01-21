.class public Lcom/zte/heartyservice/setting/AutoCheckSettings;
.super Lcom/zte/heartyservice/common/datatype/AbstractHeartyActivity;
.source "AutoCheckSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mActionBarSwitch:Lcom/zte/heartyservice/common/datatype/ZTESwitch;

.field private mEdit:Landroid/widget/EditText;

.field private mTextView1:Landroid/widget/TextView;

.field private mTextView2:Landroid/widget/TextView;

.field private mTextView3:Landroid/widget/TextView;

.field private period:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/zte/heartyservice/common/datatype/AbstractHeartyActivity;-><init>()V

    .line 23
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/zte/heartyservice/setting/AutoCheckSettings;->period:J

    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/zte/heartyservice/setting/AutoCheckSettings;->mActionBarSwitch:Lcom/zte/heartyservice/common/datatype/ZTESwitch;

    invoke-virtual {v0, p0}, Lcom/zte/heartyservice/common/datatype/ZTESwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 77
    const v0, 0x7f0e02bf

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/setting/AutoCheckSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/heartyservice/setting/AutoCheckSettings;->mTextView1:Landroid/widget/TextView;

    .line 78
    const v0, 0x7f0e02c1

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/setting/AutoCheckSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/heartyservice/setting/AutoCheckSettings;->mTextView2:Landroid/widget/TextView;

    .line 79
    const v0, 0x7f0e02c2

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/setting/AutoCheckSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/heartyservice/setting/AutoCheckSettings;->mTextView3:Landroid/widget/TextView;

    .line 81
    iget-object v0, p0, Lcom/zte/heartyservice/setting/AutoCheckSettings;->mTextView3:Landroid/widget/TextView;

    const v1, 0x7f0a00c0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 82
    const v0, 0x7f0e02c0

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/setting/AutoCheckSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/zte/heartyservice/setting/AutoCheckSettings;->mEdit:Landroid/widget/EditText;

    .line 83
    iget-object v0, p0, Lcom/zte/heartyservice/setting/AutoCheckSettings;->mEdit:Landroid/widget/EditText;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 84
    return-void
.end method

.method private setEnable(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/zte/heartyservice/setting/AutoCheckSettings;->mTextView1:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 88
    iget-object v0, p0, Lcom/zte/heartyservice/setting/AutoCheckSettings;->mTextView2:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 89
    iget-object v0, p0, Lcom/zte/heartyservice/setting/AutoCheckSettings;->mTextView3:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 90
    iget-object v0, p0, Lcom/zte/heartyservice/setting/AutoCheckSettings;->mEdit:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 91
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 68
    const-string v0, "hs_auto_check"

    invoke-static {v0, p2}, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->setOption(Ljava/lang/String;Z)V

    .line 69
    invoke-direct {p0, p2}, Lcom/zte/heartyservice/setting/AutoCheckSettings;->setEnable(Z)V

    .line 70
    if-eqz p2, :cond_0

    .line 71
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/zte/heartyservice/main/HeartyServiceApp;->checkTimer(Landroid/content/Context;I)V

    .line 73
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/16 v2, 0x10

    const/4 v4, -0x2

    .line 27
    invoke-super {p0, p1}, Lcom/zte/heartyservice/common/datatype/AbstractHeartyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    new-instance v0, Lcom/zte/heartyservice/common/datatype/ZTESwitch;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/common/datatype/ZTESwitch;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zte/heartyservice/setting/AutoCheckSettings;->mActionBarSwitch:Lcom/zte/heartyservice/common/datatype/ZTESwitch;

    .line 31
    const v0, 0x7f0a00a3

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/setting/AutoCheckSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/zte/heartyservice/setting/AutoCheckSettings;->initActionBar(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 32
    iget-object v0, p0, Lcom/zte/heartyservice/setting/AutoCheckSettings;->actionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v2, v2}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 33
    iget-object v0, p0, Lcom/zte/heartyservice/setting/AutoCheckSettings;->actionBar:Landroid/app/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 34
    iget-object v0, p0, Lcom/zte/heartyservice/setting/AutoCheckSettings;->actionBar:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/zte/heartyservice/setting/AutoCheckSettings;->mActionBarSwitch:Lcom/zte/heartyservice/common/datatype/ZTESwitch;

    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    const/16 v3, 0x15

    invoke-direct {v2, v4, v4, v3}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 36
    const v0, 0x7f0300a2

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/setting/AutoCheckSettings;->setContentView(I)V

    .line 37
    invoke-direct {p0}, Lcom/zte/heartyservice/setting/AutoCheckSettings;->initView()V

    .line 38
    return-void
.end method

.method public onPause()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 53
    invoke-super {p0}, Lcom/zte/heartyservice/common/datatype/AbstractHeartyActivity;->onPause()V

    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/zte/heartyservice/setting/AutoCheckSettings;->mEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/zte/heartyservice/setting/AutoCheckSettings;->period:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :goto_0
    iget-wide v0, p0, Lcom/zte/heartyservice/setting/AutoCheckSettings;->period:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 61
    iget-wide v0, p0, Lcom/zte/heartyservice/setting/AutoCheckSettings;->period:J

    const-wide/16 v2, 0x18

    mul-long/2addr v0, v2

    const-wide/16 v2, 0xe10

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-static {v4, v0, v1}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setPeriod(IJ)V

    .line 62
    invoke-static {p0, v4}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setSettingTimer(Landroid/content/Context;I)V

    .line 64
    :cond_0
    return-void

    .line 57
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 42
    invoke-super {p0}, Lcom/zte/heartyservice/common/datatype/AbstractHeartyActivity;->onResume()V

    .line 43
    const-string v1, "hs_auto_check"

    invoke-static {v1}, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->isOptionOn(Ljava/lang/String;)Z

    move-result v0

    .line 44
    .local v0, enable:Z
    iget-object v1, p0, Lcom/zte/heartyservice/setting/AutoCheckSettings;->mActionBarSwitch:Lcom/zte/heartyservice/common/datatype/ZTESwitch;

    invoke-virtual {v1, v0}, Lcom/zte/heartyservice/common/datatype/ZTESwitch;->setChecked(Z)V

    .line 45
    invoke-direct {p0, v0}, Lcom/zte/heartyservice/setting/AutoCheckSettings;->setEnable(Z)V

    .line 46
    const-string v1, "hs_auto_check_data"

    invoke-static {v1}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPeriod(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/zte/heartyservice/setting/AutoCheckSettings;->period:J

    .line 47
    iget-wide v1, p0, Lcom/zte/heartyservice/setting/AutoCheckSettings;->period:J

    const-wide/32 v3, 0x5265c00

    div-long/2addr v1, v3

    iput-wide v1, p0, Lcom/zte/heartyservice/setting/AutoCheckSettings;->period:J

    .line 48
    iget-object v1, p0, Lcom/zte/heartyservice/setting/AutoCheckSettings;->mEdit:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/zte/heartyservice/setting/AutoCheckSettings;->period:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 49
    return-void
.end method
