.class public Lcom/mediatek/mtklogger/utils/SwitchPreference;
.super Landroid/preference/Preference;
.source "SwitchPreference.java"


# instance fields
.field private isChecked:Z

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attr"

    .prologue
    const/4 v1, 0x0

    .line 21
    invoke-direct {p0, p1, p2, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/mtklogger/utils/SwitchPreference;->mCheckBox:Landroid/widget/CheckBox;

    .line 18
    iput-boolean v1, p0, Lcom/mediatek/mtklogger/utils/SwitchPreference;->isChecked:Z

    .line 23
    iput-object p1, p0, Lcom/mediatek/mtklogger/utils/SwitchPreference;->mContext:Landroid/content/Context;

    .line 24
    const v0, 0x7f030010

    invoke-virtual {p0, v0}, Lcom/mediatek/mtklogger/utils/SwitchPreference;->setLayoutResource(I)V

    .line 25
    invoke-virtual {p0}, Lcom/mediatek/mtklogger/utils/SwitchPreference;->isPersistent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/mediatek/mtklogger/utils/SwitchPreference;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mediatek/mtklogger/utils/SwitchPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/mtklogger/utils/SwitchPreference;->isChecked:Z

    .line 28
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/mtklogger/utils/SwitchPreference;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/mediatek/mtklogger/utils/SwitchPreference;->callOnStateChangeListener(Z)V

    return-void
.end method

.method private callOnStateChangeListener(Z)V
    .locals 1
    .parameter "newValue"

    .prologue
    .line 66
    invoke-virtual {p0, p1}, Lcom/mediatek/mtklogger/utils/SwitchPreference;->setChecked(Z)V

    .line 67
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/mtklogger/utils/SwitchPreference;->callChangeListener(Ljava/lang/Object;)Z

    .line 68
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/mediatek/mtklogger/utils/SwitchPreference;->isChecked:Z

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 32
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 33
    const v0, 0x7f09003e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/mediatek/mtklogger/utils/SwitchPreference;->mCheckBox:Landroid/widget/CheckBox;

    .line 34
    iget-object v0, p0, Lcom/mediatek/mtklogger/utils/SwitchPreference;->mCheckBox:Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lcom/mediatek/mtklogger/utils/SwitchPreference;->isChecked:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 35
    invoke-virtual {p0}, Lcom/mediatek/mtklogger/utils/SwitchPreference;->isPersistent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    iget-boolean v0, p0, Lcom/mediatek/mtklogger/utils/SwitchPreference;->isChecked:Z

    invoke-virtual {p0, v0}, Lcom/mediatek/mtklogger/utils/SwitchPreference;->persistBoolean(Z)Z

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/mediatek/mtklogger/utils/SwitchPreference;->mCheckBox:Landroid/widget/CheckBox;

    new-instance v1, Lcom/mediatek/mtklogger/utils/SwitchPreference$1;

    invoke-direct {v1, p0}, Lcom/mediatek/mtklogger/utils/SwitchPreference$1;-><init>(Lcom/mediatek/mtklogger/utils/SwitchPreference;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 44
    return-void
.end method

.method protected onClick()V
    .locals 2

    .prologue
    .line 48
    invoke-super {p0}, Landroid/preference/Preference;->onClick()V

    .line 49
    invoke-virtual {p0}, Lcom/mediatek/mtklogger/utils/SwitchPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 50
    .local v0, newValue:Z
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/mtklogger/utils/SwitchPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 54
    :goto_1
    return-void

    .line 49
    .end local v0           #newValue:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 53
    .restart local v0       #newValue:Z
    :cond_1
    invoke-virtual {p0, v0}, Lcom/mediatek/mtklogger/utils/SwitchPreference;->setChecked(Z)V

    goto :goto_1
.end method

.method public setChecked(Z)V
    .locals 0
    .parameter "checked"

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/mediatek/mtklogger/utils/SwitchPreference;->isChecked:Z

    .line 62
    invoke-virtual {p0}, Lcom/mediatek/mtklogger/utils/SwitchPreference;->notifyChanged()V

    .line 63
    return-void
.end method
