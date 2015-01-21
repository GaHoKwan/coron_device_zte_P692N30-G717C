.class public Lcom/zte/aliveupdate/ui/AutoCheckSetting;
.super Landroid/app/Activity;
.source "AutoCheckSetting.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "AutoCheckSetting"


# instance fields
.field private autoCheckBox:Landroid/widget/CheckBox;

.field private isChanged:Z

.field private networkSetting:Landroid/widget/RadioGroup;

.field private onlyWifi:Landroid/widget/RadioButton;

.field private peroidSetting:Landroid/widget/RadioGroup;

.field private switcher:Landroid/widget/Switch;

.field private wifiAndData:Landroid/widget/RadioButton;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/aliveupdate/ui/AutoCheckSetting;->isChanged:Z

    return-void
.end method

.method static synthetic access$002(Lcom/zte/aliveupdate/ui/AutoCheckSetting;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/zte/aliveupdate/ui/AutoCheckSetting;->isChanged:Z

    return p1
.end method

.method static synthetic access$100(Lcom/zte/aliveupdate/ui/AutoCheckSetting;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/zte/aliveupdate/ui/AutoCheckSetting;->eventInit(Z)V

    return-void
.end method

.method private eventInit(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 180
    invoke-virtual {p0, p1}, Lcom/zte/aliveupdate/ui/AutoCheckSetting;->setContentViewEnable(Z)V

    .line 181
    return-void
.end method

.method private initAutoCheckBox()V
    .locals 4

    .prologue
    .line 69
    const v1, 0x7f0a0027

    invoke-virtual {p0, v1}, Lcom/zte/aliveupdate/ui/AutoCheckSetting;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/zte/aliveupdate/ui/AutoCheckSetting;->autoCheckBox:Landroid/widget/CheckBox;

    .line 71
    iget-object v1, p0, Lcom/zte/aliveupdate/ui/AutoCheckSetting;->autoCheckBox:Landroid/widget/CheckBox;

    new-instance v2, Lcom/zte/aliveupdate/ui/AutoCheckSetting$1;

    invoke-direct {v2, p0}, Lcom/zte/aliveupdate/ui/AutoCheckSetting$1;-><init>(Lcom/zte/aliveupdate/ui/AutoCheckSetting;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 85
    invoke-static {}, Lcom/zte/aliveupdate/main/AliveUpdateApp;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "IS_AUTO_CHECK_OPENED"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 88
    .local v0, b:Z
    iget-object v1, p0, Lcom/zte/aliveupdate/ui/AutoCheckSetting;->autoCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 89
    invoke-direct {p0, v0}, Lcom/zte/aliveupdate/ui/AutoCheckSetting;->eventInit(Z)V

    .line 91
    return-void
.end method

.method private initContentView()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 95
    const v1, 0x7f030006

    invoke-virtual {p0, v1}, Lcom/zte/aliveupdate/ui/AutoCheckSetting;->setContentView(I)V

    .line 96
    const v1, 0x7f0a0028

    invoke-virtual {p0, v1}, Lcom/zte/aliveupdate/ui/AutoCheckSetting;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    iput-object v1, p0, Lcom/zte/aliveupdate/ui/AutoCheckSetting;->networkSetting:Landroid/widget/RadioGroup;

    .line 97
    const v1, 0x7f0a002b

    invoke-virtual {p0, v1}, Lcom/zte/aliveupdate/ui/AutoCheckSetting;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    iput-object v1, p0, Lcom/zte/aliveupdate/ui/AutoCheckSetting;->peroidSetting:Landroid/widget/RadioGroup;

    .line 98
    const v1, 0x7f0a0029

    invoke-virtual {p0, v1}, Lcom/zte/aliveupdate/ui/AutoCheckSetting;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/zte/aliveupdate/ui/AutoCheckSetting;->onlyWifi:Landroid/widget/RadioButton;

    .line 99
    const v1, 0x7f0a002a

    invoke-virtual {p0, v1}, Lcom/zte/aliveupdate/ui/AutoCheckSetting;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/zte/aliveupdate/ui/AutoCheckSetting;->wifiAndData:Landroid/widget/RadioButton;

    .line 101
    invoke-static {}, Lcom/zte/aliveupdate/main/AliveUpdateApp;->getNetWorkType()Lcom/zte/aliveupdate/common/datatype/NetWorkType;

    move-result-object v0

    .line 102
    .local v0, netWorkType:Lcom/zte/aliveupdate/common/datatype/NetWorkType;
    sget-object v1, Lcom/zte/aliveupdate/common/datatype/NetWorkType;->WIFI_ONLY:Lcom/zte/aliveupdate/common/datatype/NetWorkType;

    if-ne v0, v1, :cond_0

    .line 103
    iget-object v1, p0, Lcom/zte/aliveupdate/ui/AutoCheckSetting;->onlyWifi:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 108
    :goto_0
    invoke-virtual {p0}, Lcom/zte/aliveupdate/ui/AutoCheckSetting;->setPeriodChecked()V

    .line 109
    return-void

    .line 105
    :cond_0
    iget-object v1, p0, Lcom/zte/aliveupdate/ui/AutoCheckSetting;->wifiAndData:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0
.end method

.method private setSwitchStyle()V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 163
    :try_start_0
    invoke-virtual {p0}, Lcom/zte/aliveupdate/ui/AutoCheckSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02004d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 165
    .local v0, trackDrawable:Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/zte/aliveupdate/ui/AutoCheckSetting;->switcher:Landroid/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 166
    iget-object v1, p0, Lcom/zte/aliveupdate/ui/AutoCheckSetting;->switcher:Landroid/widget/Switch;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setTextOff(Ljava/lang/CharSequence;)V

    .line 167
    iget-object v1, p0, Lcom/zte/aliveupdate/ui/AutoCheckSetting;->switcher:Landroid/widget/Switch;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setTextOn(Ljava/lang/CharSequence;)V

    .line 168
    iget-object v1, p0, Lcom/zte/aliveupdate/ui/AutoCheckSetting;->switcher:Landroid/widget/Switch;

    const v2, 0x7f040016

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setThumbResource(I)V

    .line 169
    iget-object v1, p0, Lcom/zte/aliveupdate/ui/AutoCheckSetting;->switcher:Landroid/widget/Switch;

    const/16 v2, 0xa

    const/16 v3, 0xa

    const/16 v4, 0xa

    const/16 v5, 0xa

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/Switch;->setPadding(IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    .end local v0           #trackDrawable:Landroid/graphics/drawable/Drawable;
    :goto_0
    return-void

    .line 174
    :catch_0
    move-exception v1

    goto :goto_0

    .line 171
    :catch_1
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 251
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 252
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 3
    .parameter "group"
    .parameter "checkedId"

    .prologue
    .line 201
    packed-switch p2, :pswitch_data_0

    .line 239
    :goto_0
    :pswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/aliveupdate/ui/AutoCheckSetting;->isChanged:Z

    .line 240
    return-void

    .line 203
    :pswitch_1
    invoke-static {}, Lcom/zte/aliveupdate/main/AliveUpdateApp;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ALIVE_UPDATE_NETWORK_TYPE"

    sget-object v2, Lcom/zte/aliveupdate/common/datatype/NetWorkType;->WIFI_ONLY:Lcom/zte/aliveupdate/common/datatype/NetWorkType;

    invoke-virtual {v2}, Lcom/zte/aliveupdate/common/datatype/NetWorkType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 209
    const-string v0, "AutoCheckSetting"

    const-string v1, "R.id.only_wifi"

    invoke-static {v0, v1}, Lcom/zte/util/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 212
    :pswitch_2
    invoke-static {}, Lcom/zte/aliveupdate/main/AliveUpdateApp;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ALIVE_UPDATE_NETWORK_TYPE"

    sget-object v2, Lcom/zte/aliveupdate/common/datatype/NetWorkType;->WIFI_AND_DATA:Lcom/zte/aliveupdate/common/datatype/NetWorkType;

    invoke-virtual {v2}, Lcom/zte/aliveupdate/common/datatype/NetWorkType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 218
    const-string v0, "AutoCheckSetting"

    const-string v1, "R.id.wifi_and_data"

    invoke-static {v0, v1}, Lcom/zte/util/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 222
    :pswitch_3
    sget-object v0, Lcom/zte/aliveupdate/common/datatype/PeriodType;->EVERY_WEEK:Lcom/zte/aliveupdate/common/datatype/PeriodType;

    invoke-virtual {v0}, Lcom/zte/aliveupdate/common/datatype/PeriodType;->saveChecked()V

    .line 223
    const-string v0, "AutoCheckSetting"

    const-string v1, "R.id.every_week"

    invoke-static {v0, v1}, Lcom/zte/util/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 227
    :pswitch_4
    sget-object v0, Lcom/zte/aliveupdate/common/datatype/PeriodType;->EVERY_MONTH:Lcom/zte/aliveupdate/common/datatype/PeriodType;

    invoke-virtual {v0}, Lcom/zte/aliveupdate/common/datatype/PeriodType;->saveChecked()V

    .line 228
    const-string v0, "AutoCheckSetting"

    const-string v1, "R.id.every_month"

    invoke-static {v0, v1}, Lcom/zte/util/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 232
    :pswitch_5
    sget-object v0, Lcom/zte/aliveupdate/common/datatype/PeriodType;->EVETY_THREE_MONTH:Lcom/zte/aliveupdate/common/datatype/PeriodType;

    invoke-virtual {v0}, Lcom/zte/aliveupdate/common/datatype/PeriodType;->saveChecked()V

    .line 234
    const-string v0, "AutoCheckSetting"

    const-string v1, "R.id.every_three_month"

    invoke-static {v0, v1}, Lcom/zte/util/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 201
    :pswitch_data_0
    .packed-switch 0x7f0a0029
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const v0, 0x7f030006

    invoke-virtual {p0, v0}, Lcom/zte/aliveupdate/ui/AutoCheckSetting;->setContentView(I)V

    .line 52
    invoke-direct {p0}, Lcom/zte/aliveupdate/ui/AutoCheckSetting;->initContentView()V

    .line 54
    invoke-direct {p0}, Lcom/zte/aliveupdate/ui/AutoCheckSetting;->initAutoCheckBox()V

    .line 59
    iget-object v0, p0, Lcom/zte/aliveupdate/ui/AutoCheckSetting;->networkSetting:Landroid/widget/RadioGroup;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/zte/aliveupdate/ui/AutoCheckSetting;->networkSetting:Landroid/widget/RadioGroup;

    invoke-virtual {v0, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 65
    :cond_0
    return-void
.end method

.method public setContentViewEnable(Z)V
    .locals 1
    .parameter "b"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/zte/aliveupdate/ui/AutoCheckSetting;->networkSetting:Landroid/widget/RadioGroup;

    invoke-virtual {v0, p1}, Landroid/widget/RadioGroup;->setEnabled(Z)V

    .line 185
    iget-object v0, p0, Lcom/zte/aliveupdate/ui/AutoCheckSetting;->peroidSetting:Landroid/widget/RadioGroup;

    invoke-virtual {v0, p1}, Landroid/widget/RadioGroup;->setEnabled(Z)V

    .line 186
    iget-object v0, p0, Lcom/zte/aliveupdate/ui/AutoCheckSetting;->onlyWifi:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 187
    iget-object v0, p0, Lcom/zte/aliveupdate/ui/AutoCheckSetting;->wifiAndData:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 188
    return-void
.end method

.method setPeriodChecked()V
    .locals 2

    .prologue
    .line 193
    invoke-static {}, Lcom/zte/aliveupdate/main/AliveUpdateApp;->getPeriodType()Lcom/zte/aliveupdate/common/datatype/PeriodType;

    move-result-object v0

    .line 194
    .local v0, periodType:Lcom/zte/aliveupdate/common/datatype/PeriodType;
    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/zte/aliveupdate/common/datatype/PeriodType;->setCheck(Landroid/app/Activity;Z)V

    .line 197
    return-void
.end method
