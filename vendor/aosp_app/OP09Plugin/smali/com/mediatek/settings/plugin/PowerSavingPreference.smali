.class public Lcom/mediatek/settings/plugin/PowerSavingPreference;
.super Landroid/preference/Preference;
.source "PowerSavingPreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "Power Savings"


# instance fields
.field private mPowerSavingManager:Lcom/mediatek/settings/plugin/PowerSavingManager;

.field private mPowerSavingSwitch:Landroid/widget/Switch;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 29
    const-string v1, "Power Savings"

    const-string v2, "new PowerSavingPreference"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    const v1, 0x7f03002c

    invoke-virtual {p0, v1}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 31
    const v1, 0x7f09013c

    invoke-virtual {p0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 32
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 34
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 35
    const-class v1, Lcom/mediatek/settings/plugin/PowerSavingSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 37
    invoke-static {p1}, Lcom/mediatek/settings/plugin/PowerSavingManager;->getInstance(Landroid/content/Context;)Lcom/mediatek/settings/plugin/PowerSavingManager;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/settings/plugin/PowerSavingPreference;->mPowerSavingManager:Lcom/mediatek/settings/plugin/PowerSavingManager;

    .line 38
    return-void
.end method


# virtual methods
.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 42
    const-string v2, "Power Savings"

    const-string v3, "PowerSavingPreference getView()"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    invoke-super {p0, p1, p2}, Landroid/preference/Preference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 44
    .local v1, view:Landroid/view/View;
    const v2, 0x7f0b00ae

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Switch;

    iput-object v2, p0, Lcom/mediatek/settings/plugin/PowerSavingPreference;->mPowerSavingSwitch:Landroid/widget/Switch;

    .line 45
    iget-object v2, p0, Lcom/mediatek/settings/plugin/PowerSavingPreference;->mPowerSavingSwitch:Landroid/widget/Switch;

    if-eqz v2, :cond_1

    .line 46
    iget-object v2, p0, Lcom/mediatek/settings/plugin/PowerSavingPreference;->mPowerSavingManager:Lcom/mediatek/settings/plugin/PowerSavingManager;

    invoke-virtual {v2}, Lcom/mediatek/settings/plugin/PowerSavingManager;->isPowerSavingModeOn()Z

    move-result v0

    .line 47
    .local v0, isHaveChecked:Z
    iget-object v2, p0, Lcom/mediatek/settings/plugin/PowerSavingPreference;->mPowerSavingSwitch:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    if-eq v0, v2, :cond_0

    .line 48
    iget-object v2, p0, Lcom/mediatek/settings/plugin/PowerSavingPreference;->mPowerSavingSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 50
    :cond_0
    iget-object v2, p0, Lcom/mediatek/settings/plugin/PowerSavingPreference;->mPowerSavingSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 54
    .end local v0           #isHaveChecked:Z
    :goto_0
    return-object v1

    .line 52
    :cond_1
    const-string v2, "Power Savings"

    const-string v3, " -- > Power Saving Switch == null"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 59
    iget-object v1, p0, Lcom/mediatek/settings/plugin/PowerSavingPreference;->mPowerSavingManager:Lcom/mediatek/settings/plugin/PowerSavingManager;

    invoke-virtual {v1}, Lcom/mediatek/settings/plugin/PowerSavingManager;->isPowerSavingModeOn()Z

    move-result v0

    .line 60
    .local v0, isPoSavingChecked:Z
    const-string v1, "Power Savings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "switch onCheckedChanged: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    if-ne v0, p2, :cond_0

    .line 63
    const-string v1, "Power Savings"

    const-string v2, "-->Don\'t care this change -- "

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :goto_0
    return-void

    .line 66
    :cond_0
    iget-object v1, p0, Lcom/mediatek/settings/plugin/PowerSavingPreference;->mPowerSavingManager:Lcom/mediatek/settings/plugin/PowerSavingManager;

    invoke-virtual {v1, p2}, Lcom/mediatek/settings/plugin/PowerSavingManager;->turnOn(Z)V

    goto :goto_0
.end method
