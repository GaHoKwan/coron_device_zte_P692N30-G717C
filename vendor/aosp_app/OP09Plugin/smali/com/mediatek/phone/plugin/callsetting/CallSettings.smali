.class public Lcom/mediatek/phone/plugin/callsetting/CallSettings;
.super Landroid/app/Activity;
.source "CallSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/phone/plugin/callsetting/CallSettings$SIMInfoComparable;,
        Lcom/mediatek/phone/plugin/callsetting/CallSettings$TabListener;
    }
.end annotation


# static fields
.field public static final FRAGMENT_TAG_GENERAL:Ljava/lang/String; = "GENERAL"

.field public static final FRAGMENT_TAG_SIM_1:Ljava/lang/String; = "SIM1"

.field public static final FRAGMENT_TAG_SIM_2:Ljava/lang/String; = "SIM2"

.field private static final PHONE_TYPE_FOR_GENERAL_TAB:I = -0x1

.field private static final SIM_SLOT_ID_GENERAL_TAB:I = -0x1

.field private static final TAG:Ljava/lang/String; = "CallSettings"


# instance fields
.field private mNotStopped:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSimInfoComparable:Lcom/mediatek/phone/plugin/callsetting/CallSettings$SIMInfoComparable;

.field private mSimList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mTelephony:Lcom/android/internal/telephony/ITelephony;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 52
    new-instance v0, Lcom/mediatek/phone/plugin/callsetting/CallSettings$SIMInfoComparable;

    invoke-direct {v0}, Lcom/mediatek/phone/plugin/callsetting/CallSettings$SIMInfoComparable;-><init>()V

    iput-object v0, p0, Lcom/mediatek/phone/plugin/callsetting/CallSettings;->mSimInfoComparable:Lcom/mediatek/phone/plugin/callsetting/CallSettings$SIMInfoComparable;

    .line 54
    new-instance v0, Lcom/mediatek/phone/plugin/callsetting/CallSettings$1;

    invoke-direct {v0, p0}, Lcom/mediatek/phone/plugin/callsetting/CallSettings$1;-><init>(Lcom/mediatek/phone/plugin/callsetting/CallSettings;)V

    iput-object v0, p0, Lcom/mediatek/phone/plugin/callsetting/CallSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 292
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/phone/plugin/callsetting/CallSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/mediatek/phone/plugin/callsetting/CallSettings;->updateTabs()V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/phone/plugin/callsetting/CallSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/mediatek/phone/plugin/callsetting/CallSettings;->setScreenEnabled()V

    return-void
.end method

.method private addCallSettingTab(IILjava/lang/String;)V
    .locals 8
    .parameter "slotId"
    .parameter "phoneType"
    .parameter "simName"

    .prologue
    const/4 v3, -0x1

    .line 185
    if-ltz p1, :cond_0

    .line 186
    invoke-direct {p0, p1, p2}, Lcom/mediatek/phone/plugin/callsetting/CallSettings;->createTabListener(II)Lcom/mediatek/phone/plugin/callsetting/CallSettings$TabListener;

    move-result-object v0

    .line 187
    .local v0, tabListener:Lcom/mediatek/phone/plugin/callsetting/CallSettings$TabListener;,"Lcom/mediatek/phone/plugin/callsetting/CallSettings$TabListener<Landroid/app/Fragment;>;"
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090097

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    add-int/lit8 v7, p1, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p3, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 188
    .local v2, title:Ljava/lang/String;
    invoke-static {p1}, Lcom/mediatek/phone/plugin/callsetting/CallSettings;->getSimTagBySlotId(I)Ljava/lang/String;

    move-result-object v1

    .line 194
    .local v1, tag:Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/app/ActionBar$Tab;->setTag(Ljava/lang/Object;)Landroid/app/ActionBar$Tab;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 199
    return-void

    .line 190
    .end local v0           #tabListener:Lcom/mediatek/phone/plugin/callsetting/CallSettings$TabListener;,"Lcom/mediatek/phone/plugin/callsetting/CallSettings$TabListener<Landroid/app/Fragment;>;"
    .end local v1           #tag:Ljava/lang/String;
    .end local v2           #title:Ljava/lang/String;
    :cond_0
    invoke-direct {p0, v3, v3}, Lcom/mediatek/phone/plugin/callsetting/CallSettings;->createTabListener(II)Lcom/mediatek/phone/plugin/callsetting/CallSettings$TabListener;

    move-result-object v0

    .line 191
    .restart local v0       #tabListener:Lcom/mediatek/phone/plugin/callsetting/CallSettings$TabListener;,"Lcom/mediatek/phone/plugin/callsetting/CallSettings$TabListener<Landroid/app/Fragment;>;"
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090096

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 192
    .restart local v2       #title:Ljava/lang/String;
    const-string v1, "GENERAL"

    .restart local v1       #tag:Ljava/lang/String;
    goto :goto_0
.end method

.method private addGeneralCallSettingTab()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 202
    const/4 v0, 0x0

    invoke-direct {p0, v1, v1, v0}, Lcom/mediatek/phone/plugin/callsetting/CallSettings;->addCallSettingTab(IILjava/lang/String;)V

    .line 203
    return-void
.end method

.method private clearAllFragment()V
    .locals 1

    .prologue
    .line 135
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->removeAllTabs()V

    .line 136
    return-void
.end method

.method private createTabListener(II)Lcom/mediatek/phone/plugin/callsetting/CallSettings$TabListener;
    .locals 3
    .parameter "slotId"
    .parameter "phoneType"

    .prologue
    .line 228
    packed-switch p2, :pswitch_data_0

    .line 236
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 230
    :pswitch_1
    new-instance v0, Lcom/mediatek/phone/plugin/callsetting/CallSettings$TabListener;

    invoke-static {p1}, Lcom/mediatek/phone/plugin/callsetting/CallSettings;->getSimTagBySlotId(I)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/mediatek/phone/plugin/callsetting/CdmaCallSettings;

    invoke-direct {v0, p0, v1, v2}, Lcom/mediatek/phone/plugin/callsetting/CallSettings$TabListener;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Class;)V

    .line 234
    :goto_0
    return-object v0

    .line 232
    :pswitch_2
    new-instance v0, Lcom/mediatek/phone/plugin/callsetting/CallSettings$TabListener;

    invoke-static {p1}, Lcom/mediatek/phone/plugin/callsetting/CallSettings;->getSimTagBySlotId(I)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/mediatek/phone/plugin/callsetting/GsmCallSettings;

    invoke-direct {v0, p0, v1, v2}, Lcom/mediatek/phone/plugin/callsetting/CallSettings$TabListener;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Class;)V

    goto :goto_0

    .line 234
    :pswitch_3
    new-instance v0, Lcom/mediatek/phone/plugin/callsetting/CallSettings$TabListener;

    const-string v1, "GENERAL"

    const-class v2, Lcom/mediatek/phone/plugin/callsetting/GeneralCallSettings;

    invoke-direct {v0, p0, v1, v2}, Lcom/mediatek/phone/plugin/callsetting/CallSettings$TabListener;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Class;)V

    goto :goto_0

    .line 228
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static getSimSlotIdByTag(Ljava/lang/String;)I
    .locals 1
    .parameter "tag"

    .prologue
    .line 217
    const-string v0, "SIM1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    const/4 v0, 0x0

    .line 220
    :goto_0
    return v0

    .line 219
    :cond_0
    const-string v0, "SIM2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 220
    const/4 v0, 0x1

    goto :goto_0

    .line 222
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static getSimTagBySlotId(I)Ljava/lang/String;
    .locals 1
    .parameter "slotId"

    .prologue
    .line 206
    packed-switch p0, :pswitch_data_0

    .line 212
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 208
    :pswitch_0
    const-string v0, "SIM1"

    .line 210
    :goto_0
    return-object v0

    :pswitch_1
    const-string v0, "SIM2"

    goto :goto_0

    .line 206
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getSimType(I)I
    .locals 1
    .parameter "slotId"

    .prologue
    .line 241
    iget-object v0, p0, Lcom/mediatek/phone/plugin/callsetting/CallSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->getPhoneTypeGemini(I)I

    move-result v0

    return v0
.end method

.method private setScreenEnabled()V
    .locals 13

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 139
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v11, "airplane_mode_on"

    const/4 v12, -0x1

    invoke-static {v8, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-lez v8, :cond_2

    move v6, v9

    .line 140
    .local v6, isAirplaneOn:Z
    :goto_0
    iget-object v8, p0, Lcom/mediatek/phone/plugin/callsetting/CallSettings;->mSimList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v7

    .line 144
    .local v7, simSize:I
    const/4 v4, 0x0

    .line 146
    .local v4, indexSlotRadioOn:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v7, :cond_4

    .line 147
    iget-object v8, p0, Lcom/mediatek/phone/plugin/callsetting/CallSettings;->mSimList:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    iget v3, v8, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    .line 148
    .local v3, indexSimSlot:I
    invoke-static {v3}, Lcom/mediatek/phone/plugin/callsetting/CallSettings;->getSimTagBySlotId(I)Ljava/lang/String;

    move-result-object v5

    .line 149
    .local v5, indexTag:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 150
    .local v1, indexFrag:Landroid/app/Fragment;
    if-nez v6, :cond_0

    .line 151
    invoke-direct {p0, v3}, Lcom/mediatek/phone/plugin/callsetting/CallSettings;->slotRadioOn(I)Z

    move-result v4

    .line 152
    const-string v8, "CallSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "setScreenEnabled indexSimSlot="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", indexTag="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", indexSlotRadioOn="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", indexFrag="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_0
    instance-of v8, v1, Landroid/preference/PreferenceFragment;

    if-eqz v8, :cond_1

    move-object v2, v1

    .line 156
    check-cast v2, Landroid/preference/PreferenceFragment;

    .line 157
    .local v2, indexPreferenceFrag:Landroid/preference/PreferenceFragment;
    invoke-virtual {v2}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    if-nez v6, :cond_3

    if-eqz v4, :cond_3

    move v8, v9

    :goto_2
    invoke-virtual {v11, v8}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 146
    .end local v2           #indexPreferenceFrag:Landroid/preference/PreferenceFragment;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0           #i:I
    .end local v1           #indexFrag:Landroid/app/Fragment;
    .end local v3           #indexSimSlot:I
    .end local v4           #indexSlotRadioOn:Z
    .end local v5           #indexTag:Ljava/lang/String;
    .end local v6           #isAirplaneOn:Z
    .end local v7           #simSize:I
    :cond_2
    move v6, v10

    .line 139
    goto :goto_0

    .restart local v0       #i:I
    .restart local v1       #indexFrag:Landroid/app/Fragment;
    .restart local v2       #indexPreferenceFrag:Landroid/preference/PreferenceFragment;
    .restart local v3       #indexSimSlot:I
    .restart local v4       #indexSlotRadioOn:Z
    .restart local v5       #indexTag:Ljava/lang/String;
    .restart local v6       #isAirplaneOn:Z
    .restart local v7       #simSize:I
    :cond_3
    move v8, v10

    .line 157
    goto :goto_2

    .line 160
    .end local v1           #indexFrag:Landroid/app/Fragment;
    .end local v2           #indexPreferenceFrag:Landroid/preference/PreferenceFragment;
    .end local v3           #indexSimSlot:I
    .end local v5           #indexTag:Ljava/lang/String;
    :cond_4
    return-void
.end method

.method private slotRadioOn(I)Z
    .locals 5
    .parameter "slotId"

    .prologue
    .line 163
    const/4 v1, 0x0

    .line 165
    .local v1, isRadioOn:Z
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/phone/plugin/callsetting/CallSettings;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    if-eqz v2, :cond_0

    .line 166
    iget-object v2, p0, Lcom/mediatek/phone/plugin/callsetting/CallSettings;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->isRadioOnGemini(I)Z

    move-result v1

    .line 167
    const-string v2, "CallSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Slot "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is in radion state "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :cond_0
    :goto_0
    return v1

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "CallSettings"

    const-string v3, "mTelephony exception"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateSimList()V
    .locals 2

    .prologue
    .line 176
    invoke-static {p0}, Lcom/mediatek/telephony/SimInfoManager;->getInsertedSimInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/phone/plugin/callsetting/CallSettings;->mSimList:Ljava/util/List;

    .line 177
    iget-object v0, p0, Lcom/mediatek/phone/plugin/callsetting/CallSettings;->mSimList:Ljava/util/List;

    iget-object v1, p0, Lcom/mediatek/phone/plugin/callsetting/CallSettings;->mSimInfoComparable:Lcom/mediatek/phone/plugin/callsetting/CallSettings$SIMInfoComparable;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 178
    return-void
.end method

.method private updateTabs()V
    .locals 7

    .prologue
    .line 115
    iget-boolean v4, p0, Lcom/mediatek/phone/plugin/callsetting/CallSettings;->mNotStopped:Z

    if-eqz v4, :cond_1

    .line 116
    invoke-direct {p0}, Lcom/mediatek/phone/plugin/callsetting/CallSettings;->clearAllFragment()V

    .line 117
    iget-object v4, p0, Lcom/mediatek/phone/plugin/callsetting/CallSettings;->mSimList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 118
    .local v2, simSize:I
    if-lez v2, :cond_2

    .line 119
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 120
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 121
    iget-object v4, p0, Lcom/mediatek/phone/plugin/callsetting/CallSettings;->mSimList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    iget v3, v4, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    .line 122
    .local v3, slotId:I
    invoke-direct {p0, v3}, Lcom/mediatek/phone/plugin/callsetting/CallSettings;->getSimType(I)I

    move-result v5

    iget-object v4, p0, Lcom/mediatek/phone/plugin/callsetting/CallSettings;->mSimList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    iget-object v4, v4, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDisplayName:Ljava/lang/String;

    invoke-direct {p0, v3, v5, v4}, Lcom/mediatek/phone/plugin/callsetting/CallSettings;->addCallSettingTab(IILjava/lang/String;)V

    .line 120
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 124
    .end local v3           #slotId:I
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/phone/plugin/callsetting/CallSettings;->addGeneralCallSettingTab()V

    .line 131
    .end local v1           #i:I
    .end local v2           #simSize:I
    :cond_1
    :goto_1
    return-void

    .line 126
    .restart local v2       #simSize:I
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 127
    new-instance v0, Lcom/mediatek/phone/plugin/callsetting/GeneralCallSettings;

    invoke-direct {v0}, Lcom/mediatek/phone/plugin/callsetting/GeneralCallSettings;-><init>()V

    .line 128
    .local v0, generalFrag:Landroid/app/Fragment;
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v4

    const v5, 0x1020002

    const-string v6, "GENERAL"

    invoke-virtual {v4, v5, v0, v6}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 72
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/mediatek/phone/plugin/callsetting/CallSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 74
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/phone/plugin/callsetting/CallSettings;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    .line 75
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 101
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 102
    invoke-direct {p0}, Lcom/mediatek/phone/plugin/callsetting/CallSettings;->updateSimList()V

    .line 103
    invoke-direct {p0}, Lcom/mediatek/phone/plugin/callsetting/CallSettings;->updateTabs()V

    .line 104
    invoke-direct {p0}, Lcom/mediatek/phone/plugin/callsetting/CallSettings;->setScreenEnabled()V

    .line 105
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "outState"

    .prologue
    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/phone/plugin/callsetting/CallSettings;->mNotStopped:Z

    .line 94
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 95
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 79
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 80
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/phone/plugin/callsetting/CallSettings;->mNotStopped:Z

    .line 81
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 82
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 83
    const-string v1, "android.intent.action.RADIO_TECHNOLOGY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 84
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 85
    const-string v1, "android.intent.action.DUAL_SIM_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 86
    iget-object v1, p0, Lcom/mediatek/phone/plugin/callsetting/CallSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 87
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 109
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/phone/plugin/callsetting/CallSettings;->mNotStopped:Z

    .line 111
    iget-object v0, p0, Lcom/mediatek/phone/plugin/callsetting/CallSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 112
    return-void
.end method
