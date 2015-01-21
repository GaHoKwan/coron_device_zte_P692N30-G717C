.class public Lcom/mediatek/settings/plugin/OP09ApnSettingsImp;
.super Lcom/mediatek/settings/ext/DefaultApnSettingsExt;
.source "OP09ApnSettingsImp.java"


# static fields
.field private static final CHINA_NW_MCC:Ljava/lang/String; = "460"

.field private static final MACOO_NW_MCC:Ljava/lang/String; = "455"

.field private static final TAG:Ljava/lang/String; = "OP09ApnSettingsImp"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPppEditTextPreference:Landroid/preference/EditTextPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/mediatek/settings/ext/DefaultApnSettingsExt;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/mediatek/settings/plugin/OP09ApnSettingsImp;->mContext:Landroid/content/Context;

    .line 28
    return-void
.end method

.method private getPppDialingText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/mediatek/settings/plugin/OP09ApnSettingsImp;->mPppEditTextPreference:Landroid/preference/EditTextPreference;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/mediatek/settings/plugin/OP09ApnSettingsImp;->mPppEditTextPreference:Landroid/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    .line 130
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mediatek/settings/plugin/OP09ApnSettingsImp;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09014c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public addPreference(ILandroid/preference/PreferenceScreen;)V
    .locals 4
    .parameter "slotId"
    .parameter "root"

    .prologue
    const v3, 0x7f09014b

    .line 36
    if-nez p1, :cond_0

    .line 37
    new-instance v0, Landroid/preference/EditTextPreference;

    invoke-virtual {p2}, Landroid/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/mediatek/settings/plugin/OP09ApnSettingsImp;->mPppEditTextPreference:Landroid/preference/EditTextPreference;

    .line 39
    iget-object v0, p0, Lcom/mediatek/settings/plugin/OP09ApnSettingsImp;->mPppEditTextPreference:Landroid/preference/EditTextPreference;

    iget-object v1, p0, Lcom/mediatek/settings/plugin/OP09ApnSettingsImp;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setKey(Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/mediatek/settings/plugin/OP09ApnSettingsImp;->mPppEditTextPreference:Landroid/preference/EditTextPreference;

    iget-object v1, p0, Lcom/mediatek/settings/plugin/OP09ApnSettingsImp;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 43
    iget-object v0, p0, Lcom/mediatek/settings/plugin/OP09ApnSettingsImp;->mPppEditTextPreference:Landroid/preference/EditTextPreference;

    iget-object v1, p0, Lcom/mediatek/settings/plugin/OP09ApnSettingsImp;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 45
    iget-object v0, p0, Lcom/mediatek/settings/plugin/OP09ApnSettingsImp;->mPppEditTextPreference:Landroid/preference/EditTextPreference;

    invoke-virtual {p2, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 47
    :cond_0
    return-void
.end method

.method public customizeApnProjection([Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .parameter "projection"

    .prologue
    .line 55
    const-string v2, "ppp"

    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    aget-object v3, p1, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 63
    .end local p1
    :goto_0
    return-object p1

    .line 58
    .restart local p1
    :cond_0
    array-length v2, p1

    add-int/lit8 v2, v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    .line 59
    .local v1, newStrs:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 60
    aget-object v2, p1, v0

    aput-object v2, v1, v0

    .line 59
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 62
    :cond_1
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    const-string v3, "ppp"

    aput-object v3, v1, v2

    move-object p1, v1

    .line 63
    goto :goto_0
.end method

.method public customizeApnTitles(ILandroid/preference/PreferenceScreen;)V
    .locals 3
    .parameter "slotId"
    .parameter "root"

    .prologue
    .line 71
    if-nez p1, :cond_0

    .line 73
    const-string v0, "apn_name"

    invoke-virtual {p2, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/settings/plugin/OP09ApnSettingsImp;->mContext:Landroid/content/Context;

    const v2, 0x7f090076

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 75
    const-string v0, "apn_apn"

    invoke-virtual {p2, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/settings/plugin/OP09ApnSettingsImp;->mContext:Landroid/content/Context;

    const v2, 0x7f090077

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 77
    const-string v0, "auth_type"

    invoke-virtual {p2, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/settings/plugin/OP09ApnSettingsImp;->mContext:Landroid/content/Context;

    const v2, 0x7f090082

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 79
    const-string v0, "apn_user"

    invoke-virtual {p2, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/settings/plugin/OP09ApnSettingsImp;->mContext:Landroid/content/Context;

    const v2, 0x7f09007a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 81
    const-string v0, "apn_password"

    invoke-virtual {p2, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/settings/plugin/OP09ApnSettingsImp;->mContext:Landroid/content/Context;

    const v2, 0x7f09007b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 84
    :cond_0
    return-void
.end method

.method public getFillListQuery(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "numeric"
    .parameter "slotId"
    .parameter "isMVNO"
    .parameter "spn"
    .parameter "imsi"
    .parameter "pnn"

    .prologue
    .line 137
    invoke-super/range {p0 .. p6}, Lcom/mediatek/settings/ext/DefaultApnSettingsExt;->getFillListQuery(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 138
    .local v1, where:Ljava/lang/String;
    if-nez p2, :cond_0

    .line 139
    const-string v2, "gsm.operator.numeric"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, plmnNumeric:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-lt v2, v3, :cond_0

    const-string v2, "460"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "455"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 142
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and ( apn <> \"ctwap\" )"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 145
    .end local v0           #plmnNumeric:Ljava/lang/String;
    :cond_0
    const-string v2, "OP09ApnSettingsImp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFillListQuery where="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    return-object v1
.end method

.method public saveApnValues(Landroid/content/ContentValues;)V
    .locals 2
    .parameter "contentValues"

    .prologue
    .line 92
    const-string v0, "ppp"

    invoke-direct {p0}, Lcom/mediatek/settings/plugin/OP09ApnSettingsImp;->getPppDialingText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public setPreferenceTextAndSummary(ILjava/lang/String;)V
    .locals 1
    .parameter "slotId"
    .parameter "text"

    .prologue
    .line 101
    if-nez p1, :cond_0

    .line 102
    iget-object v0, p0, Lcom/mediatek/settings/plugin/OP09ApnSettingsImp;->mPppEditTextPreference:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, p2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/mediatek/settings/plugin/OP09ApnSettingsImp;->mPppEditTextPreference:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, p2}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 105
    :cond_0
    return-void
.end method

.method public updateFieldsStatus(ILandroid/preference/PreferenceScreen;)V
    .locals 2
    .parameter "slotId"
    .parameter "root"

    .prologue
    const/4 v1, 0x0

    .line 113
    if-nez p1, :cond_0

    .line 114
    const-string v0, "apn_mms_proxy"

    invoke-virtual {p2, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 115
    const-string v0, "apn_mms_port"

    invoke-virtual {p2, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 116
    const-string v0, "apn_mmsc"

    invoke-virtual {p2, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 117
    const-string v0, "apn_mcc"

    invoke-virtual {p2, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 118
    const-string v0, "apn_mnc"

    invoke-virtual {p2, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 120
    :cond_0
    return-void
.end method
