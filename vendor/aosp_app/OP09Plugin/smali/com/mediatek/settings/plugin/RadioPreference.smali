.class public Lcom/mediatek/settings/plugin/RadioPreference;
.super Landroid/preference/Preference;
.source "RadioPreference.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RadioButtonPreference"


# instance fields
.field private mCarrierNumeric:Ljava/lang/String;

.field private mIsChecked:Z

.field private mRadioButton:Landroid/widget/RadioButton;

.field private mSummary:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 30
    const-string v0, "title"

    const-string v1, "summary"

    invoke-direct {p0, p1, v0, v1}, Lcom/mediatek/settings/plugin/RadioPreference;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    const v0, 0x7f030006

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "title"
    .parameter "summary"

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/mediatek/settings/plugin/RadioPreference;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .parameter "context"
    .parameter "title"
    .parameter "summary"
    .parameter "isChecked"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 44
    iput-object p2, p0, Lcom/mediatek/settings/plugin/RadioPreference;->mTitle:Ljava/lang/String;

    .line 45
    iput-object p3, p0, Lcom/mediatek/settings/plugin/RadioPreference;->mSummary:Ljava/lang/String;

    .line 46
    iput-boolean p4, p0, Lcom/mediatek/settings/plugin/RadioPreference;->mIsChecked:Z

    .line 47
    const v0, 0x7f030006

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 49
    iget-object v0, p0, Lcom/mediatek/settings/plugin/RadioPreference;->mTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/mediatek/settings/plugin/RadioPreference;->mTitle:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/mediatek/settings/plugin/RadioPreference;->mSummary:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 53
    iget-object v0, p0, Lcom/mediatek/settings/plugin/RadioPreference;->mSummary:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 55
    :cond_1
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 59
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 60
    const v0, 0x7f0b001a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/mediatek/settings/plugin/RadioPreference;->mRadioButton:Landroid/widget/RadioButton;

    .line 61
    iget-object v0, p0, Lcom/mediatek/settings/plugin/RadioPreference;->mRadioButton:Landroid/widget/RadioButton;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/mediatek/settings/plugin/RadioPreference;->mRadioButton:Landroid/widget/RadioButton;

    iget-boolean v1, p0, Lcom/mediatek/settings/plugin/RadioPreference;->mIsChecked:Z

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 66
    :goto_0
    return-void

    .line 64
    :cond_0
    const-string v0, "RadioButtonPreference"

    const-string v1, "radio button can\'t be find"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setChecked(Z)V
    .locals 0
    .parameter "newCheckStatus"

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/mediatek/settings/plugin/RadioPreference;->mIsChecked:Z

    .line 74
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    .line 75
    return-void
.end method
