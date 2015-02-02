.class public Lcom/mediatek/engineermode/videotelephone/TagsSelectActivity;
.super Landroid/preference/PreferenceActivity;
.source "TagsSelectActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final NUMER_10:I = 0xa

.field private static final NUMER_11:I = 0xb

.field private static final NUMER_12:I = 0xc

.field private static final NUMER_13:I = 0xd

.field private static final NUMER_14:I = 0xe

.field private static final NUMER_3:I = 0x3

.field private static final NUMER_4:I = 0x4

.field private static final NUMER_5:I = 0x5

.field private static final NUMER_6:I = 0x6

.field private static final NUMER_7:I = 0x7

.field private static final NUMER_8:I = 0x8

.field private static final NUMER_9:I = 0x9

.field private static final PREFERENCE_KEYS:[Ljava/lang/String;


# instance fields
.field private mDebugPref:Landroid/preference/CheckBoxPreference;

.field private mErrorPref:Landroid/preference/CheckBoxPreference;

.field private mGroup10Pref:Landroid/preference/CheckBoxPreference;

.field private mGroup1Pref:Landroid/preference/CheckBoxPreference;

.field private mGroup2Pref:Landroid/preference/CheckBoxPreference;

.field private mGroup3Pref:Landroid/preference/CheckBoxPreference;

.field private mGroup4Pref:Landroid/preference/CheckBoxPreference;

.field private mGroup5Pref:Landroid/preference/CheckBoxPreference;

.field private mGroup6Pref:Landroid/preference/CheckBoxPreference;

.field private mGroup7Pref:Landroid/preference/CheckBoxPreference;

.field private mGroup8Pref:Landroid/preference/CheckBoxPreference;

.field private mGroup9Pref:Landroid/preference/CheckBoxPreference;

.field private mInfoPref:Landroid/preference/CheckBoxPreference;

.field private mTagName:Ljava/lang/String;

.field private mTagNameKey:Ljava/lang/String;

.field private mTagValueKey:Ljava/lang/String;

.field private mVerbosePref:Landroid/preference/CheckBoxPreference;

.field private mWarningPref:Landroid/preference/CheckBoxPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 71
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "log_filter_tag_0"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "log_filter_tag_1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "log_filter_tag_2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "log_filter_tag_3"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "log_filter_tag_4"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "log_filter_tag_5"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "log_filter_tag_6"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "log_filter_tag_7"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "log_filter_tag_8"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "log_filter_tag_9"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "log_filter_tag_10"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "log_filter_tag_11"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "log_filter_tag_12"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "log_filter_tag_13"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "log_filter_tag_14"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/engineermode/videotelephone/TagsSelectActivity;->PREFERENCE_KEYS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private initStatus()V
    .locals 9

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x1

    .line 136
    const-string v5, "EM/VideoTelephony"

    const-string v6, "initStatus()"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :try_start_0
    const-string v5, "engineermode_vt_preferences"

    const/4 v6, 0x1

    invoke-virtual {p0, v5, v6}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 141
    .local v3, preferences:Landroid/content/SharedPreferences;
    iget-object v5, p0, Lcom/mediatek/engineermode/videotelephone/TagsSelectActivity;->mTagValueKey:Ljava/lang/String;

    const/4 v6, -0x1

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 142
    .local v4, value:I
    if-ne v8, v4, :cond_1

    .line 145
    iget-object v5, p0, Lcom/mediatek/engineermode/videotelephone/TagsSelectActivity;->mWarningPref:Landroid/preference/CheckBoxPreference;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 146
    iget-object v5, p0, Lcom/mediatek/engineermode/videotelephone/TagsSelectActivity;->mErrorPref:Landroid/preference/CheckBoxPreference;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 163
    .end local v3           #preferences:Landroid/content/SharedPreferences;
    .end local v4           #value:I
    :cond_0
    :goto_0
    return-void

    .line 149
    .restart local v3       #preferences:Landroid/content/SharedPreferences;
    .restart local v4       #value:I
    :cond_1
    const/16 v5, 0xf

    new-array v1, v5, [Landroid/preference/CheckBoxPreference;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/mediatek/engineermode/videotelephone/TagsSelectActivity;->mVerbosePref:Landroid/preference/CheckBoxPreference;

    aput-object v6, v1, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/mediatek/engineermode/videotelephone/TagsSelectActivity;->mDebugPref:Landroid/preference/CheckBoxPreference;

    aput-object v6, v1, v5

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/mediatek/engineermode/videotelephone/TagsSelectActivity;->mInfoPref:Landroid/preference/CheckBoxPreference;

    aput-object v6, v1, v5

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/mediatek/engineermode/videotelephone/TagsSelectActivity;->mWarningPref:Landroid/preference/CheckBoxPreference;

    aput-object v6, v1, v5

    const/4 v5, 0x4

    iget-object v6, p0, Lcom/mediatek/engineermode/videotelephone/TagsSelectActivity;->mErrorPref:Landroid/preference/CheckBoxPreference;

    aput-object v6, v1, v5

    const/4 v5, 0x5

    iget-object v6, p0, Lcom/mediatek/engineermode/videotelephone/TagsSelectActivity;->mGroup1Pref:Landroid/preference/CheckBoxPreference;

    aput-object v6, v1, v5

    const/4 v5, 0x6

    iget-object v6, p0, Lcom/mediatek/engineermode/videotelephone/TagsSelectActivity;->mGroup2Pref:Landroid/preference/CheckBoxPreference;

    aput-object v6, v1, v5

    const/4 v5, 0x7

    iget-object v6, p0, Lcom/mediatek/engineermode/videotelephone/TagsSelectActivity;->mGroup3Pref:Landroid/preference/CheckBoxPreference;

    aput-object v6, v1, v5

    const/16 v5, 0x8

    iget-object v6, p0, Lcom/mediatek/engineermode/videotelephone/TagsSelectActivity;->mGroup4Pref:Landroid/preference/CheckBoxPreference;

    aput-object v6, v1, v5

    const/16 v5, 0x9

    iget-object v6, p0, Lcom/mediatek/engineermode/videotelephone/TagsSelectActivity;->mGroup5Pref:Landroid/preference/CheckBoxPreference;

    aput-object v6, v1, v5

    const/16 v5, 0xa

    iget-object v6, p0, Lcom/mediatek/engineermode/videotelephone/TagsSelectActivity;->mGroup6Pref:Landroid/preference/CheckBoxPreference;

    aput-object v6, v1, v5

    const/16 v5, 0xb

    iget-object v6, p0, Lcom/mediatek/engineermode/videotelephone/TagsSelectActivity;->mGroup7Pref:Landroid/preference/CheckBoxPreference;

    aput-object v6, v1, v5

    const/16 v5, 0xc

    iget-object v6, p0, Lcom/mediatek/engineermode/videotelephone/TagsSelectActivity;->mGroup8Pref:Landroid/preference/CheckBoxPreference;

    aput-object v6, v1, v5

    const/16 v5, 0xd

    iget-object v6, p0, Lcom/mediatek/engineermode/videotelephone/TagsSelectActivity;->mGroup9Pref:Landroid/preference/CheckBoxPreference;

    aput-object v6, v1, v5

    const/16 v5, 0xe

    iget-object v6, p0, Lcom/mediatek/engineermode/videotelephone/TagsSelectActivity;->mGroup10Pref:Landroid/preference/CheckBoxPreference;

    aput-object v6, v1, v5

    .line 154
    .local v1, checkBoxs:[Landroid/preference/CheckBoxPreference;
    const/4 v0, 0x0

    .local v0, boxNum:I
    :goto_1
    array-length v5, v1

    if-ge v0, v5, :cond_0

    .line 155
    shl-int v5, v7, v0

    and-int/2addr v5, v4

    if-eqz v5, :cond_2

    .line 156
    aget-object v5, v1, v0

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/preference/TwoStatePreference;->setChecked(Z)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 159
    .end local v0           #boxNum:I
    .end local v1           #checkBoxs:[Landroid/preference/CheckBoxPreference;
    .end local v3           #preferences:Landroid/content/SharedPreferences;
    .end local v4           #value:I
    :catch_0
    move-exception v2

    .line 160
    .local v2, e:Ljava/lang/ClassCastException;
    const-string v5, "EM/VideoTelephony"

    const-string v6, "TagsSelectActivity get string from pref exception"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private saveStatus()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 166
    const-string v5, "EM/VideoTelephony"

    const-string v6, "saveStatus()"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    const/4 v4, 0x0

    .line 168
    .local v4, value:I
    const/16 v5, 0xf

    new-array v1, v5, [Landroid/preference/CheckBoxPreference;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/mediatek/engineermode/videotelephone/TagsSelectActivity;->mVerbosePref:Landroid/preference/CheckBoxPreference;

    aput-object v6, v1, v5

    iget-object v5, p0, Lcom/mediatek/engineermode/videotelephone/TagsSelectActivity;->mDebugPref:Landroid/preference/CheckBoxPreference;

    aput-object v5, v1, v8

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/mediatek/engineermode/videotelephone/TagsSelectActivity;->mInfoPref:Landroid/preference/CheckBoxPreference;

    aput-object v6, v1, v5

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/mediatek/engineermode/videotelephone/TagsSelectActivity;->mWarningPref:Landroid/preference/CheckBoxPreference;

    aput-object v6, v1, v5

    const/4 v5, 0x4

    iget-object v6, p0, Lcom/mediatek/engineermode/videotelephone/TagsSelectActivity;->mErrorPref:Landroid/preference/CheckBoxPreference;

    aput-object v6, v1, v5

    const/4 v5, 0x5

    iget-object v6, p0, Lcom/mediatek/engineermode/videotelephone/TagsSelectActivity;->mGroup1Pref:Landroid/preference/CheckBoxPreference;

    aput-object v6, v1, v5

    const/4 v5, 0x6

    iget-object v6, p0, Lcom/mediatek/engineermode/videotelephone/TagsSelectActivity;->mGroup2Pref:Landroid/preference/CheckBoxPreference;

    aput-object v6, v1, v5

    const/4 v5, 0x7

    iget-object v6, p0, Lcom/mediatek/engineermode/videotelephone/TagsSelectActivity;->mGroup3Pref:Landroid/preference/CheckBoxPreference;

    aput-object v6, v1, v5

    const/16 v5, 0x8

    iget-object v6, p0, Lcom/mediatek/engineermode/videotelephone/TagsSelectActivity;->mGroup4Pref:Landroid/preference/CheckBoxPreference;

    aput-object v6, v1, v5

    const/16 v5, 0x9

    iget-object v6, p0, Lcom/mediatek/engineermode/videotelephone/TagsSelectActivity;->mGroup5Pref:Landroid/preference/CheckBoxPreference;

    aput-object v6, v1, v5

    const/16 v5, 0xa

    iget-object v6, p0, Lcom/mediatek/engineermode/videotelephone/TagsSelectActivity;->mGroup6Pref:Landroid/preference/CheckBoxPreference;

    aput-object v6, v1, v5

    const/16 v5, 0xb

    iget-object v6, p0, Lcom/mediatek/engineermode/videotelephone/TagsSelectActivity;->mGroup7Pref:Landroid/preference/CheckBoxPreference;

    aput-object v6, v1, v5

    const/16 v5, 0xc

    iget-object v6, p0, Lcom/mediatek/engineermode/videotelephone/TagsSelectActivity;->mGroup8Pref:Landroid/preference/CheckBoxPreference;

    aput-object v6, v1, v5

    const/16 v5, 0xd

    iget-object v6, p0, Lcom/mediatek/engineermode/videotelephone/TagsSelectActivity;->mGroup9Pref:Landroid/preference/CheckBoxPreference;

    aput-object v6, v1, v5

    const/16 v5, 0xe

    iget-object v6, p0, Lcom/mediatek/engineermode/videotelephone/TagsSelectActivity;->mGroup10Pref:Landroid/preference/CheckBoxPreference;

    aput-object v6, v1, v5

    .line 173
    .local v1, checkBoxs:[Landroid/preference/CheckBoxPreference;
    const/4 v0, 0x0

    .local v0, boxNum:I
    :goto_0
    array-length v5, v1

    if-ge v0, v5, :cond_1

    .line 174
    aget-object v5, v1, v0

    invoke-virtual {v5}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 175
    shl-int v5, v8, v0

    add-int/2addr v4, v5

    .line 173
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 178
    :cond_1
    const-string v5, "EM/VideoTelephony"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TagsSelectActivity saveStatus() value = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    const-string v5, "engineermode_vt_preferences"

    invoke-virtual {p0, v5, v8}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 183
    .local v3, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 184
    .local v2, edit:Landroid/content/SharedPreferences$Editor;
    iget-object v5, p0, Lcom/mediatek/engineermode/videotelephone/TagsSelectActivity;->mTagNameKey:Ljava/lang/String;

    iget-object v6, p0, Lcom/mediatek/engineermode/videotelephone/TagsSelectActivity;->mTagName:Ljava/lang/String;

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 185
    iget-object v5, p0, Lcom/mediatek/engineermode/videotelephone/TagsSelectActivity;->mTagValueKey:Ljava/lang/String;

    invoke-interface {v2, v5, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 186
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 187
    const-string v5, "EM/VideoTelephony"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mTagNameKey = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/engineermode/videotelephone/TagsSelectActivity;->mTagNameKey:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mTagName = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/engineermode/videotelephone/TagsSelectActivity;->mTagName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    const-string v5, "EM/VideoTelephony"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mTagValueKey = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/engineermode/videotelephone/TagsSelectActivity;->mTagValueKey:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " tagValue = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 92
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 93
    const v0, 0x7f04000b

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 95
    sget-object v0, Lcom/mediatek/engineermode/videotelephone/TagsSelectActivity;->PREFERENCE_KEYS:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/mediatek/engineermode/videotelephone/TagsSelectActivity;->mVerbosePref:Landroid/preference/CheckBoxPreference;

    .line 96
    sget-object v0, Lcom/mediatek/engineermode/videotelephone/TagsSelectActivity;->PREFERENCE_KEYS:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/mediatek/engineermode/videotelephone/TagsSelectActivity;->mDebugPref:Landroid/preference/CheckBoxPreference;

    .line 97
    sget-object v0, Lcom/mediatek/engineermode/videotelephone/TagsSelectActivity;->PREFERENCE_KEYS:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/mediatek/engineermode/videotelephone/TagsSelectActivity;->mInfoPref:Landroid/preference/CheckBoxPreference;

    .line 98
    sget-object v0, Lcom/mediatek/engineermode/videotelephone/TagsSelectActivity;->PREFERENCE_KEYS:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/mediatek/engineermode/videotelephone/TagsSelectActivity;->mWarningPref:Landroid/preference/CheckBoxPreference;

    .line 100
    sget-object v0, Lcom/mediatek/engineermode/videotelephone/TagsSelectActivity;->PREFERENCE_KEYS:[Ljava/lang/String;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/mediatek/engineermode/videotelephone/TagsSelectActivity;->mErrorPref:Landroid/preference/CheckBoxPreference;

    .line 102
    sget-object v0, Lcom/mediatek/engineermode/videotelephone/TagsSelectActivity;->PREFERENCE_KEYS:[Ljava/lang/String;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/mediatek/engineermode/videotelephone/TagsSelectActivity;->mGroup1Pref:Landroid/preference/CheckBoxPreference;

    .line 104
    sget-object v0, Lcom/mediatek/engineermode/videotelephone/TagsSelectActivity;->PREFERENCE_KEYS:[Ljava/lang/String;

    const/4 v1, 0x6

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/mediatek/engineermode/videotelephone/TagsSelectActivity;->mGroup2Pref:Landroid/preference/CheckBoxPreference;

    .line 106
    sget-object v0, Lcom/mediatek/engineermode/videotelephone/TagsSelectActivity;->PREFERENCE_KEYS:[Ljava/lang/String;

    const/4 v1, 0x7

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/mediatek/engineermode/videotelephone/TagsSelectActivity;->mGroup3Pref:Landroid/preference/CheckBoxPreference;

    .line 108
    sget-object v0, Lcom/mediatek/engineermode/videotelephone/TagsSelectActivity;->PREFERENCE_KEYS:[Ljava/lang/String;

    const/16 v1, 0x8

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/mediatek/engineermode/videotelephone/TagsSelectActivity;->mGroup4Pref:Landroid/preference/CheckBoxPreference;

    .line 110
    sget-object v0, Lcom/mediatek/engineermode/videotelephone/TagsSelectActivity;->PREFERENCE_KEYS:[Ljava/lang/String;

    const/16 v1, 0x9

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/mediatek/engineermode/videotelephone/TagsSelectActivity;->mGroup5Pref:Landroid/preference/CheckBoxPreference;

    .line 112
    sget-object v0, Lcom/mediatek/engineermode/videotelephone/TagsSelectActivity;->PREFERENCE_KEYS:[Ljava/lang/String;

    const/16 v1, 0xa

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/mediatek/engineermode/videotelephone/TagsSelectActivity;->mGroup6Pref:Landroid/preference/CheckBoxPreference;

    .line 114
    sget-object v0, Lcom/mediatek/engineermode/videotelephone/TagsSelectActivity;->PREFERENCE_KEYS:[Ljava/lang/String;

    const/16 v1, 0xb

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/mediatek/engineermode/videotelephone/TagsSelectActivity;->mGroup7Pref:Landroid/preference/CheckBoxPreference;

    .line 116
    sget-object v0, Lcom/mediatek/engineermode/videotelephone/TagsSelectActivity;->PREFERENCE_KEYS:[Ljava/lang/String;

    const/16 v1, 0xc

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/mediatek/engineermode/videotelephone/TagsSelectActivity;->mGroup8Pref:Landroid/preference/CheckBoxPreference;

    .line 118
    sget-object v0, Lcom/mediatek/engineermode/videotelephone/TagsSelectActivity;->PREFERENCE_KEYS:[Ljava/lang/String;

    const/16 v1, 0xd

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/mediatek/engineermode/videotelephone/TagsSelectActivity;->mGroup9Pref:Landroid/preference/CheckBoxPreference;

    .line 120
    sget-object v0, Lcom/mediatek/engineermode/videotelephone/TagsSelectActivity;->PREFERENCE_KEYS:[Ljava/lang/String;

    const/16 v1, 0xe

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/mediatek/engineermode/videotelephone/TagsSelectActivity;->mGroup10Pref:Landroid/preference/CheckBoxPreference;

    .line 122
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 195
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 196
    invoke-direct {p0}, Lcom/mediatek/engineermode/videotelephone/TagsSelectActivity;->saveStatus()V

    .line 197
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 209
    const/4 v0, 0x0

    return v0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 126
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 127
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 128
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "tag_name_key"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/engineermode/videotelephone/TagsSelectActivity;->mTagNameKey:Ljava/lang/String;

    .line 129
    const-string v1, "tag_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/engineermode/videotelephone/TagsSelectActivity;->mTagName:Ljava/lang/String;

    .line 130
    const-string v1, "tag_value_key"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/engineermode/videotelephone/TagsSelectActivity;->mTagValueKey:Ljava/lang/String;

    .line 131
    iget-object v1, p0, Lcom/mediatek/engineermode/videotelephone/TagsSelectActivity;->mTagName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 132
    invoke-direct {p0}, Lcom/mediatek/engineermode/videotelephone/TagsSelectActivity;->initStatus()V

    .line 133
    return-void
.end method
