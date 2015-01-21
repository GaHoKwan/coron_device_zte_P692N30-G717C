.class public Lcom/android/mms/ui/MultiSimPreferenceActivity;
.super Landroid/preference/PreferenceActivity;
.source "MultiSimPreferenceActivity.java"

# interfaces
.implements Lcom/android/mms/ui/AdvancedCheckBoxPreference$GetSimInfo;


# static fields
.field private static final TAG:Ljava/lang/String; = "MultiSimPreferenceActivity"


# instance fields
.field private mIntentPreference:Ljava/lang/String;

.field private mListSimInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;",
            ">;"
        }
    .end annotation
.end field

.field private mSim1CurrentId:I

.field private mSim2CurrentId:I

.field private mSimCount:I

.field private mSimPreferencesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/ui/AdvancedCheckBoxPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mSimReceiver:Landroid/content/BroadcastReceiver;

.field private mTitleId:I

.field private simCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 84
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MultiSimPreferenceActivity;->mSimPreferencesList:Ljava/util/ArrayList;

    .line 95
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/MultiSimPreferenceActivity;->mTitleId:I

    .line 304
    new-instance v0, Lcom/android/mms/ui/MultiSimPreferenceActivity$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MultiSimPreferenceActivity$1;-><init>(Lcom/android/mms/ui/MultiSimPreferenceActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/MultiSimPreferenceActivity;->mSimReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private changeMultiCardKeyToSimRelated(Ljava/lang/String;)V
    .locals 18
    .parameter "preference"

    .prologue
    .line 162
    const/4 v2, 0x0

    .line 163
    .local v2, i:I
    const/4 v5, 0x0

    .line 164
    .local v5, j:I
    const-string v13, "pref_key_sim1"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Lcom/android/mms/ui/AdvancedCheckBoxPreference;

    .line 165
    .local v8, sim1:Lcom/android/mms/ui/AdvancedCheckBoxPreference;
    const-string v13, "pref_key_sim2"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/mms/ui/AdvancedCheckBoxPreference;

    .line 166
    .local v9, sim2:Lcom/android/mms/ui/AdvancedCheckBoxPreference;
    const-string v13, "pref_key_sim3"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Lcom/android/mms/ui/AdvancedCheckBoxPreference;

    .line 167
    .local v10, sim3:Lcom/android/mms/ui/AdvancedCheckBoxPreference;
    const-string v13, "pref_key_sim4"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Lcom/android/mms/ui/AdvancedCheckBoxPreference;

    .line 168
    .local v11, sim4:Lcom/android/mms/ui/AdvancedCheckBoxPreference;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MultiSimPreferenceActivity;->mSimPreferencesList:Ljava/util/ArrayList;

    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MultiSimPreferenceActivity;->mSimPreferencesList:Ljava/util/ArrayList;

    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MultiSimPreferenceActivity;->mSimPreferencesList:Ljava/util/ArrayList;

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MultiSimPreferenceActivity;->mSimPreferencesList:Ljava/util/ArrayList;

    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MultiSimPreferenceActivity;->mSimPreferencesList:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/mms/ui/AdvancedCheckBoxPreference;

    .line 173
    .local v7, sim:Lcom/android/mms/ui/AdvancedCheckBoxPreference;
    if-eqz v7, :cond_0

    .line 174
    move-object/from16 v0, p0

    invoke-virtual {v7, v0, v2}, Lcom/android/mms/ui/AdvancedCheckBoxPreference;->init(Landroid/content/Context;I)V

    .line 176
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 178
    .end local v7           #sim:Lcom/android/mms/ui/AdvancedCheckBoxPreference;
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MultiSimPreferenceActivity;->mSimPreferencesList:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    new-array v4, v13, [Z

    .line 179
    .local v4, isHasCardInthisSlot:[Z
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MultiSimPreferenceActivity;->mListSimInfo:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    .line 180
    .local v12, simInfo:Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;
    invoke-virtual {v12}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSlot()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/MultiSimPreferenceActivity;->mSimPreferencesList:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v13, v14, :cond_2

    .line 181
    invoke-virtual {v12}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSlot()I

    move-result v13

    const/4 v14, 0x1

    aput-boolean v14, v4, v13

    goto :goto_1

    .line 184
    .end local v12           #simInfo:Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;
    :cond_3
    const/4 v2, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MultiSimPreferenceActivity;->mSimPreferencesList:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v2, v13, :cond_7

    .line 185
    aget-boolean v13, v4, v2

    if-nez v13, :cond_5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MultiSimPreferenceActivity;->mSimPreferencesList:Ljava/util/ArrayList;

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_5

    .line 186
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MultiSimPreferenceActivity;->mSimPreferencesList:Ljava/util/ArrayList;

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/preference/Preference;

    invoke-virtual {v14, v13}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 184
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 188
    :cond_5
    const/4 v5, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MultiSimPreferenceActivity;->mListSimInfo:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-ge v5, v13, :cond_4

    .line 189
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MultiSimPreferenceActivity;->mListSimInfo:Ljava/util/List;

    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    invoke-virtual {v13}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSlot()I

    move-result v13

    if-ne v13, v2, :cond_6

    .line 190
    const/4 v6, 0x0

    .line 191
    .local v6, mchecked:Z
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Lcom/android/mms/ui/MultiSimPreferenceActivity;->isChecked(Ljava/lang/String;I)Z

    move-result v6

    .line 192
    const-string v13, "MultiSimPreferenceActivity"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "changeMultiCardKeyToSimRelated[preference]"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    const-string v13, "MultiSimPreferenceActivity"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "changeMultiCardKeyToSimRelated[SlotId]"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    const-string v14, "MultiSimPreferenceActivity"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "changeMultiCardKeyToSimRelated[SimId]"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MultiSimPreferenceActivity;->mListSimInfo:Ljava/util/List;

    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    invoke-virtual {v13}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSimId()J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v14, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    const-string v13, "MultiSimPreferenceActivity"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "changeMultiCardKeyToSimRelated[checked]"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MultiSimPreferenceActivity;->mSimPreferencesList:Ljava/util/ArrayList;

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/mms/ui/AdvancedCheckBoxPreference;

    invoke-virtual {v13, v6}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 188
    .end local v6           #mchecked:Z
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_3

    .line 201
    :cond_7
    return-void
.end method

.method private isChecked(Ljava/lang/String;I)Z
    .locals 7
    .parameter "preference"
    .parameter "sim_id"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 130
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 131
    .local v0, prefs:Landroid/content/SharedPreferences;
    iget-object v1, p0, Lcom/android/mms/ui/MultiSimPreferenceActivity;->mIntentPreference:Ljava/lang/String;

    const-string v4, "pref_key_sms_delivery_reports"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 132
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/mms/ui/MultiSimPreferenceActivity;->mListSimInfo:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    invoke-virtual {v1}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSimId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "pref_key_sms_delivery_reports"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 157
    :goto_0
    return v1

    .line 133
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/MultiSimPreferenceActivity;->mIntentPreference:Ljava/lang/String;

    const-string v4, "pref_key_mms_delivery_reports"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 134
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/mms/ui/MultiSimPreferenceActivity;->mListSimInfo:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    invoke-virtual {v1}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSimId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "pref_key_mms_delivery_reports"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_0

    .line 135
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/MultiSimPreferenceActivity;->mIntentPreference:Ljava/lang/String;

    const-string v4, "pref_key_mms_auto_retrieval"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 136
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/mms/ui/MultiSimPreferenceActivity;->mListSimInfo:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    invoke-virtual {v1}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSimId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "pref_key_mms_auto_retrieval"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_0

    .line 137
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/MultiSimPreferenceActivity;->mIntentPreference:Ljava/lang/String;

    const-string v4, "pref_key_mms_read_reports"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 138
    iget-object v1, p0, Lcom/android/mms/ui/MultiSimPreferenceActivity;->mListSimInfo:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    invoke-virtual {v1}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSlot()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MultiSimPreferenceActivity;->isUSimType(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 139
    iget-object v3, p0, Lcom/android/mms/ui/MultiSimPreferenceActivity;->mSimPreferencesList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/mms/ui/MultiSimPreferenceActivity;->mListSimInfo:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    invoke-virtual {v1}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSlot()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/AdvancedCheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    move v1, v2

    .line 140
    goto/16 :goto_0

    .line 142
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/mms/ui/MultiSimPreferenceActivity;->mListSimInfo:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    invoke-virtual {v1}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSimId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "pref_key_mms_read_reports"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    goto/16 :goto_0

    .line 143
    :cond_4
    iget-object v1, p0, Lcom/android/mms/ui/MultiSimPreferenceActivity;->mIntentPreference:Ljava/lang/String;

    const-string v4, "pref_key_mms_retrieval_during_roaming"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 144
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/mms/ui/MultiSimPreferenceActivity;->mListSimInfo:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    invoke-virtual {v1}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSimId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "pref_key_mms_auto_retrieval"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_5

    .line 145
    iget-object v3, p0, Lcom/android/mms/ui/MultiSimPreferenceActivity;->mSimPreferencesList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/mms/ui/MultiSimPreferenceActivity;->mListSimInfo:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    invoke-virtual {v1}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSlot()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/AdvancedCheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 147
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/mms/ui/MultiSimPreferenceActivity;->mListSimInfo:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    invoke-virtual {v1}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSimId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "pref_key_mms_retrieval_during_roaming"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    goto/16 :goto_0

    .line 148
    :cond_6
    iget-object v1, p0, Lcom/android/mms/ui/MultiSimPreferenceActivity;->mIntentPreference:Ljava/lang/String;

    const-string v4, "pref_key_mms_auto_reply_read_reports"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 149
    iget-object v1, p0, Lcom/android/mms/ui/MultiSimPreferenceActivity;->mListSimInfo:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    invoke-virtual {v1}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSlot()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MultiSimPreferenceActivity;->isUSimType(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 150
    iget-object v3, p0, Lcom/android/mms/ui/MultiSimPreferenceActivity;->mSimPreferencesList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/mms/ui/MultiSimPreferenceActivity;->mListSimInfo:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    invoke-virtual {v1}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSlot()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/AdvancedCheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    move v1, v2

    .line 151
    goto/16 :goto_0

    .line 153
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/mms/ui/MultiSimPreferenceActivity;->mListSimInfo:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    invoke-virtual {v1}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSimId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "pref_key_mms_auto_reply_read_reports"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    goto/16 :goto_0

    .line 154
    :cond_8
    iget-object v1, p0, Lcom/android/mms/ui/MultiSimPreferenceActivity;->mIntentPreference:Ljava/lang/String;

    const-string v4, "pref_key_mms_enable_to_send_delivery_reports"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 155
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/mms/ui/MultiSimPreferenceActivity;->mListSimInfo:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    invoke-virtual {v1}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSimId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "pref_key_mms_enable_to_send_delivery_reports"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    goto/16 :goto_0

    :cond_9
    move v1, v3

    .line 157
    goto/16 :goto_0
.end method


# virtual methods
.method public getNumberFormat(I)I
    .locals 3
    .parameter "id"

    .prologue
    .line 231
    iget-object v2, p0, Lcom/android/mms/ui/MultiSimPreferenceActivity;->mListSimInfo:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    .line 232
    .local v1, simInfo:Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;
    invoke-virtual {v1}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSlot()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 233
    invoke-virtual {v1}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getDispalyNumberFormat()I

    move-result v2

    .line 236
    .end local v1           #simInfo:Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getSimColor(I)I
    .locals 3
    .parameter "id"

    .prologue
    .line 222
    iget-object v2, p0, Lcom/android/mms/ui/MultiSimPreferenceActivity;->mListSimInfo:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    .line 223
    .local v1, simInfo:Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;
    invoke-virtual {v1}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSlot()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 224
    invoke-virtual {v1}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSimBackgroundLightRes()I

    move-result v2

    .line 227
    .end local v1           #simInfo:Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getSimName(I)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MultiSimPreferenceActivity;->getSimName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimName(I)Ljava/lang/String;
    .locals 3
    .parameter "id"

    .prologue
    .line 204
    iget-object v2, p0, Lcom/android/mms/ui/MultiSimPreferenceActivity;->mListSimInfo:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    .line 205
    .local v1, simInfo:Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;
    invoke-virtual {v1}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSlot()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 206
    invoke-virtual {v1}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    .line 209
    .end local v1           #simInfo:Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;
    :goto_0
    return-object v2

    :cond_1
    const-string v2, ""

    goto :goto_0
.end method

.method public bridge synthetic getSimNumber(I)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MultiSimPreferenceActivity;->getSimNumber(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimNumber(I)Ljava/lang/String;
    .locals 3
    .parameter "id"

    .prologue
    .line 213
    iget-object v2, p0, Lcom/android/mms/ui/MultiSimPreferenceActivity;->mListSimInfo:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    .line 214
    .local v1, simInfo:Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;
    invoke-virtual {v1}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSlot()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 215
    invoke-virtual {v1}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getNumber()Ljava/lang/String;

    move-result-object v2

    .line 218
    .end local v1           #simInfo:Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;
    :goto_0
    return-object v2

    :cond_1
    const-string v2, ""

    goto :goto_0
.end method

.method public getSimStatus(I)I
    .locals 9
    .parameter "id"

    .prologue
    const/4 v5, -0x1

    .line 240
    invoke-static {}, Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;->getInstance()Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;

    move-result-object v4

    .line 242
    .local v4, teleService:Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;
    const/4 v3, -0x1

    .line 243
    .local v3, slotId:I
    iget-object v6, p0, Lcom/android/mms/ui/MultiSimPreferenceActivity;->mListSimInfo:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    .line 244
    .local v2, simInfo:Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;
    invoke-virtual {v2}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSlot()I

    move-result v6

    if-ne v6, p1, :cond_0

    .line 245
    invoke-virtual {v2}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSlot()I

    move-result v3

    goto :goto_0

    .line 248
    .end local v2           #simInfo:Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;
    :cond_1
    if-eq v3, v5, :cond_2

    .line 250
    :try_start_0
    invoke-virtual {v4, v3}, Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;->getSimIndicatorStateGemini(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 256
    :cond_2
    :goto_1
    return v5

    .line 251
    :catch_0
    move-exception v0

    .line 252
    .local v0, e:Landroid/os/RemoteException;
    const-string v6, "MultiSimPreferenceActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getSimIndicatorStateGemini is failed.\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public is3G(I)Z
    .locals 6
    .parameter "id"

    .prologue
    .line 261
    const/4 v2, -0x1

    .line 262
    .local v2, slotId:I
    iget-object v3, p0, Lcom/android/mms/ui/MultiSimPreferenceActivity;->mListSimInfo:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    .line 263
    .local v1, simInfo:Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;
    invoke-virtual {v1}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSlot()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 264
    invoke-virtual {v1}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSlot()I

    move-result v2

    goto :goto_0

    .line 267
    .end local v1           #simInfo:Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;
    :cond_1
    const-string v3, "MultiSimPreferenceActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SIMInfo.getSlotById id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " slotId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->get3GCapabilitySIM()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 269
    const/4 v3, 0x1

    .line 271
    :goto_1
    return v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public isUSimType(I)Z
    .locals 9
    .parameter "slot"

    .prologue
    const/4 v6, 0x2

    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 278
    invoke-static {}, Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;->getInstance()Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;

    move-result-object v1

    .line 279
    .local v1, iTel:Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;
    if-nez v1, :cond_0

    .line 280
    const-string v3, "MultiSimPreferenceActivity"

    const-string v4, "[isUIMType]: iTel = null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :goto_0
    return v2

    .line 285
    :cond_0
    :try_start_0
    invoke-virtual {v1, p1}, Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;->getIccCardTypeGemini(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "UIM"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 286
    :catch_0
    move-exception v0

    .line 287
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "MultiSimPreferenceActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[isUIMType]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%s: %s"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 288
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 289
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "MultiSimPreferenceActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[isUIMType]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%s: %s"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    .line 99
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 100
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 101
    invoke-static {p0}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getInsertedSimInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/MultiSimPreferenceActivity;->mListSimInfo:Ljava/util/List;

    .line 102
    iget-object v2, p0, Lcom/android/mms/ui/MultiSimPreferenceActivity;->mListSimInfo:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/MultiSimPreferenceActivity;->mSimCount:I

    .line 104
    const v2, 0x7f05000b

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 105
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 106
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "preference"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/MultiSimPreferenceActivity;->mIntentPreference:Ljava/lang/String;

    .line 108
    const-string v2, "MultiSimPreferenceActivity, getIntent:"

    invoke-virtual {v1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    const-string v2, "MultiSimPreferenceActivity, getpreference:"

    iget-object v3, p0, Lcom/android/mms/ui/MultiSimPreferenceActivity;->mIntentPreference:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const-string v2, "preferenceTitleId"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/MultiSimPreferenceActivity;->mTitleId:I

    .line 111
    iget v2, p0, Lcom/android/mms/ui/MultiSimPreferenceActivity;->mTitleId:I

    if-eqz v2, :cond_0

    .line 112
    iget v2, p0, Lcom/android/mms/ui/MultiSimPreferenceActivity;->mTitleId:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 114
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/MultiSimPreferenceActivity;->mIntentPreference:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/mms/ui/MultiSimPreferenceActivity;->changeMultiCardKeyToSimRelated(Ljava/lang/String;)V

    .line 115
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SIM_INDICATOR_STATE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 116
    .local v0, filter:Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/mms/ui/MultiSimPreferenceActivity;->mSimReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 118
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 297
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 298
    iget-object v0, p0, Lcom/android/mms/ui/MultiSimPreferenceActivity;->mSimReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/android/mms/ui/MultiSimPreferenceActivity;->mSimReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 301
    :cond_0
    return-void
.end method

.method public onNavigateUp()Z
    .locals 1

    .prologue
    .line 318
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 319
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 10
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 323
    const/4 v4, 0x0

    .line 324
    .local v4, i:I
    const/4 v2, -0x1

    .line 325
    .local v2, currentSlotId:I
    const-wide/16 v0, -0x1

    .line 326
    .local v0, currentSimId:J
    iget-object v7, p0, Lcom/android/mms/ui/MultiSimPreferenceActivity;->mSimPreferencesList:Ljava/util/ArrayList;

    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 327
    iget-object v7, p0, Lcom/android/mms/ui/MultiSimPreferenceActivity;->mListSimInfo:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    .line 328
    .local v6, simInfo:Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;
    invoke-virtual {v6}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSlot()I

    move-result v7

    if-ne v7, v2, :cond_0

    .line 329
    invoke-virtual {v6}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSimId()J

    move-result-wide v0

    .line 333
    .end local v6           #simInfo:Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;
    :cond_1
    const-string v7, "MultiSimPreferenceActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onPreferenceTreeClick[SlotId]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    const-string v7, "MultiSimPreferenceActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onPreferenceTreeClick[SimId]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 336
    .local v3, editor:Landroid/content/SharedPreferences$Editor;
    iget-object v7, p0, Lcom/android/mms/ui/MultiSimPreferenceActivity;->mIntentPreference:Ljava/lang/String;

    const-string v8, "pref_key_sms_delivery_reports"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 337
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "pref_key_sms_delivery_reports"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v7, p2

    check-cast v7, Lcom/android/mms/ui/AdvancedCheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v7

    invoke-interface {v3, v8, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 358
    :cond_2
    :goto_0
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 359
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v7

    return v7

    .line 339
    :cond_3
    iget-object v7, p0, Lcom/android/mms/ui/MultiSimPreferenceActivity;->mIntentPreference:Ljava/lang/String;

    const-string v8, "pref_key_mms_delivery_reports"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 340
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "pref_key_mms_delivery_reports"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v7, p2

    check-cast v7, Lcom/android/mms/ui/AdvancedCheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v7

    invoke-interface {v3, v8, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 342
    :cond_4
    iget-object v7, p0, Lcom/android/mms/ui/MultiSimPreferenceActivity;->mIntentPreference:Ljava/lang/String;

    const-string v8, "pref_key_mms_auto_retrieval"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 343
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "pref_key_mms_auto_retrieval"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v7, p2

    check-cast v7, Lcom/android/mms/ui/AdvancedCheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v7

    invoke-interface {v3, v8, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 345
    :cond_5
    iget-object v7, p0, Lcom/android/mms/ui/MultiSimPreferenceActivity;->mIntentPreference:Ljava/lang/String;

    const-string v8, "pref_key_mms_read_reports"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 346
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "pref_key_mms_read_reports"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v7, p2

    check-cast v7, Lcom/android/mms/ui/AdvancedCheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v7

    invoke-interface {v3, v8, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_0

    .line 348
    :cond_6
    iget-object v7, p0, Lcom/android/mms/ui/MultiSimPreferenceActivity;->mIntentPreference:Ljava/lang/String;

    const-string v8, "pref_key_mms_retrieval_during_roaming"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 349
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "pref_key_mms_retrieval_during_roaming"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v7, p2

    check-cast v7, Lcom/android/mms/ui/AdvancedCheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v7

    invoke-interface {v3, v8, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_0

    .line 351
    :cond_7
    iget-object v7, p0, Lcom/android/mms/ui/MultiSimPreferenceActivity;->mIntentPreference:Ljava/lang/String;

    const-string v8, "pref_key_mms_auto_reply_read_reports"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 352
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "pref_key_mms_auto_reply_read_reports"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v7, p2

    check-cast v7, Lcom/android/mms/ui/AdvancedCheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v7

    invoke-interface {v3, v8, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_0

    .line 354
    :cond_8
    iget-object v7, p0, Lcom/android/mms/ui/MultiSimPreferenceActivity;->mIntentPreference:Ljava/lang/String;

    const-string v8, "pref_key_mms_enable_to_send_delivery_reports"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 355
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "pref_key_mms_enable_to_send_delivery_reports"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v7, p2

    check-cast v7, Lcom/android/mms/ui/AdvancedCheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v7

    invoke-interface {v3, v8, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 121
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 122
    invoke-static {p0}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getInsertedSimInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/MultiSimPreferenceActivity;->mListSimInfo:Ljava/util/List;

    .line 123
    iget-object v2, p0, Lcom/android/mms/ui/MultiSimPreferenceActivity;->mSimPreferencesList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/AdvancedCheckBoxPreference;

    .line 124
    .local v1, sim:Lcom/android/mms/ui/AdvancedCheckBoxPreference;
    if-eqz v1, :cond_0

    .line 125
    invoke-virtual {v1, p0}, Lcom/android/mms/ui/AdvancedCheckBoxPreference;->setNotifyChange(Landroid/content/Context;)V

    goto :goto_0

    .line 128
    .end local v1           #sim:Lcom/android/mms/ui/AdvancedCheckBoxPreference;
    :cond_1
    return-void
.end method
