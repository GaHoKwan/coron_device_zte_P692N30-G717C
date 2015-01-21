.class public Lcom/mediatek/settings/VTAdvancedSetting;
.super Landroid/preference/PreferenceActivity;
.source "VTAdvancedSetting.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final BUTTON_VT_AUTO_DROPBACK_KEY:Ljava/lang/String; = "button_vt_auto_dropback_key"

.field private static final BUTTON_VT_CB_KEY:Ljava/lang/String; = "button_cb_expand_key"

.field private static final BUTTON_VT_CF_KEY:Ljava/lang/String; = "button_cf_expand_key"

.field private static final BUTTON_VT_ENABLE_BACK_CAMERA_KEY:Ljava/lang/String; = "button_vt_enable_back_camera_key"

.field private static final BUTTON_VT_ENABLE_PEER_REPLACE_KEY:Ljava/lang/String; = "button_vt_enable_peer_replace_key"

.field private static final BUTTON_VT_MORE_KEY:Ljava/lang/String; = "button_more_expand_key"

.field private static final BUTTON_VT_MO_LOCAL_VIDEO_DISPLAY_KEY:Ljava/lang/String; = "button_vt_mo_local_video_display_key"

.field private static final BUTTON_VT_MT_LOCAL_VIDEO_DISPLAY_KEY:Ljava/lang/String; = "button_vt_mt_local_video_display_key"

.field private static final BUTTON_VT_PEER_BIGGER_KEY:Ljava/lang/String; = "button_vt_peer_bigger_key"

.field private static final BUTTON_VT_PEER_REPLACE_KEY:Ljava/lang/String; = "button_vt_replace_peer_expand_key"

.field private static final BUTTON_VT_REPLACE_KEY:Ljava/lang/String; = "button_vt_replace_expand_key"

.field private static final CHECKBOX_RING_ONLY_ONCE_KEY:Ljava/lang/String; = "ring_only_once_key"

.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "Settings/VTAdvancedSetting"

.field public static final NAME_PIC_TO_REPLACE_LOCAL_VIDEO_DEFAULT:Ljava/lang/String; = "pic_to_replace_local_video_default"

.field public static final NAME_PIC_TO_REPLACE_LOCAL_VIDEO_USERSELECT:Ljava/lang/String; = "pic_to_replace_local_video_userselect"

.field public static final NAME_PIC_TO_REPLACE_PEER_VIDEO_DEFAULT:Ljava/lang/String; = "pic_to_replace_peer_video_default"

.field public static final NAME_PIC_TO_REPLACE_PEER_VIDEO_USERSELECT:Ljava/lang/String; = "pic_to_replace_peer_video_userselect"

.field public static final REQUESTCODE_PICTRUE_PICKED_WITH_DATA:I = 0xbcd

.field private static final SELECT_DEFAULT_PICTURE:Ljava/lang/String; = "0"

.field public static final SELECT_DEFAULT_PICTURE2:Ljava/lang/String; = "0"

.field private static final SELECT_MY_PICTURE:Ljava/lang/String; = "2"

.field public static final SELECT_MY_PICTURE2:Ljava/lang/String; = "1"


# instance fields
.field private mButtonCb:Landroid/preference/Preference;

.field private mButtonCf:Landroid/preference/Preference;

.field private mButtonMore:Landroid/preference/Preference;

.field private mButtonVTAutoDropBack:Landroid/preference/CheckBoxPreference;

.field private mButtonVTEnablePeerReplace:Landroid/preference/CheckBoxPreference;

.field private mButtonVTEnablebackCamer:Landroid/preference/CheckBoxPreference;

.field private mButtonVTMoVideo:Landroid/preference/CheckBoxPreference;

.field private mButtonVTMtVideo:Landroid/preference/ListPreference;

.field private mButtonVTPeerBigger:Landroid/preference/CheckBoxPreference;

.field private mButtonVTPeerReplace:Landroid/preference/ListPreference;

.field private mButtonVTReplace:Landroid/preference/ListPreference;

.field private mCheckBoxRingOnlyOnce:Landroid/preference/CheckBoxPreference;

.field private mPreCfr:Lcom/mediatek/settings/PreCheckForRunning;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSlotId:I

.field private mWhichToSave:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 77
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 97
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mWhichToSave:I

    .line 104
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mSlotId:I

    .line 117
    iput-object v1, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonCf:Landroid/preference/Preference;

    .line 118
    iput-object v1, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonCb:Landroid/preference/Preference;

    .line 119
    iput-object v1, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonMore:Landroid/preference/Preference;

    .line 128
    iput-object v1, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mPreCfr:Lcom/mediatek/settings/PreCheckForRunning;

    .line 134
    new-instance v0, Lcom/mediatek/settings/VTAdvancedSetting$1;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/VTAdvancedSetting$1;-><init>(Lcom/mediatek/settings/VTAdvancedSetting;)V

    iput-object v0, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/settings/VTAdvancedSetting;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/mediatek/settings/VTAdvancedSetting;->setScreenEnabled()V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 77
    invoke-static {p0}, Lcom/mediatek/settings/VTAdvancedSetting;->log(Ljava/lang/String;)V

    return-void
.end method

.method private findSimId()V
    .locals 3

    .prologue
    .line 505
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/phone/gemini/GeminiUtils;->get3GSimCards(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 506
    .local v0, simList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 507
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    iget v1, v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    iput v1, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mSlotId:I

    .line 511
    :goto_0
    return-void

    .line 509
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public static getPicPathDefault()Ljava/lang/String;
    .locals 1

    .prologue
    .line 395
    const-string v0, "/data/data/com.android.phone/pic_to_replace_local_video_default.vt"

    return-object v0
.end method

.method public static getPicPathDefault2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 403
    const-string v0, "/data/data/com.android.phone/pic_to_replace_peer_video_default.vt"

    return-object v0
.end method

.method public static getPicPathUserselect(I)Ljava/lang/String;
    .locals 2
    .parameter "slodId"

    .prologue
    .line 399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/data/com.android.phone/pic_to_replace_local_video_userselect_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".vt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPicPathUserselect2(I)Ljava/lang/String;
    .locals 2
    .parameter "slodId"

    .prologue
    .line 407
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/data/com.android.phone/pic_to_replace_peer_video_userselect_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".vt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initVTSettings()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 455
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 457
    .local v1, sp:Landroid/content/SharedPreferences;
    iget-object v2, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTEnablePeerReplace:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_0

    .line 458
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTEnablePeerReplace:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mSlotId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 459
    .local v0, key:Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTEnablePeerReplace:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 460
    iget-object v2, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTEnablePeerReplace:Landroid/preference/CheckBoxPreference;

    invoke-interface {v1, v0, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 462
    .end local v0           #key:Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTMoVideo:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_1

    .line 463
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTMoVideo:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mSlotId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 464
    .restart local v0       #key:Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTMoVideo:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 465
    iget-object v2, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTMoVideo:Landroid/preference/CheckBoxPreference;

    invoke-interface {v1, v0, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 467
    .end local v0           #key:Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTMtVideo:Landroid/preference/ListPreference;

    if-eqz v2, :cond_2

    .line 468
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTMtVideo:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mSlotId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 469
    .restart local v0       #key:Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTMtVideo:Landroid/preference/ListPreference;

    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 470
    iget-object v2, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTMtVideo:Landroid/preference/ListPreference;

    const-string v3, "0"

    invoke-interface {v1, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 472
    .end local v0           #key:Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTEnablebackCamer:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_3

    .line 473
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTEnablebackCamer:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mSlotId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 474
    .restart local v0       #key:Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTEnablebackCamer:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 475
    iget-object v2, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTEnablebackCamer:Landroid/preference/CheckBoxPreference;

    invoke-interface {v1, v0, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 477
    .end local v0           #key:Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTPeerBigger:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_4

    .line 478
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTPeerBigger:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mSlotId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 479
    .restart local v0       #key:Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTPeerBigger:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 480
    iget-object v2, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTPeerBigger:Landroid/preference/CheckBoxPreference;

    invoke-interface {v1, v0, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 482
    .end local v0           #key:Ljava/lang/String;
    :cond_4
    iget-object v2, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTAutoDropBack:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_5

    .line 483
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTAutoDropBack:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mSlotId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 484
    .restart local v0       #key:Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTAutoDropBack:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 485
    iget-object v2, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTAutoDropBack:Landroid/preference/CheckBoxPreference;

    invoke-interface {v1, v0, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 487
    .end local v0           #key:Ljava/lang/String;
    :cond_5
    iget-object v2, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mCheckBoxRingOnlyOnce:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_6

    .line 488
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mCheckBoxRingOnlyOnce:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mSlotId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 489
    .restart local v0       #key:Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mCheckBoxRingOnlyOnce:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 490
    iget-object v2, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mCheckBoxRingOnlyOnce:Landroid/preference/CheckBoxPreference;

    invoke-interface {v1, v0, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 492
    .end local v0           #key:Ljava/lang/String;
    :cond_6
    iget-object v2, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTReplace:Landroid/preference/ListPreference;

    if-eqz v2, :cond_7

    .line 493
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTReplace:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mSlotId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 494
    .restart local v0       #key:Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTReplace:Landroid/preference/ListPreference;

    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 495
    iget-object v2, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTReplace:Landroid/preference/ListPreference;

    const-string v3, "0"

    invoke-interface {v1, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 497
    .end local v0           #key:Ljava/lang/String;
    :cond_7
    iget-object v2, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTPeerReplace:Landroid/preference/ListPreference;

    if-eqz v2, :cond_8

    .line 498
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTPeerReplace:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mSlotId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 499
    .restart local v0       #key:Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTPeerReplace:Landroid/preference/ListPreference;

    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 500
    iget-object v2, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTPeerReplace:Landroid/preference/ListPreference;

    const-string v3, "0"

    invoke-interface {v1, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 502
    .end local v0           #key:Ljava/lang/String;
    :cond_8
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 131
    const-string v0, "Settings/VTAdvancedSetting"

    invoke-static {v0, p0}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    return-void
.end method

.method private setScreenEnabled()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 432
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/phone/gemini/GeminiUtils;->get3GSimCards(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 433
    .local v2, simList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v4, :cond_5

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    iget v3, v3, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    iget v6, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mSlotId:I

    if-ne v3, v6, :cond_5

    .line 434
    iget v3, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mSlotId:I

    invoke-static {v3, p0}, Lcom/mediatek/phone/gemini/GeminiUtils;->isRadioOffBySlot(ILandroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v4

    .line 435
    .local v1, isRadioOn:Z
    :goto_0
    iget v3, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mSlotId:I

    if-ltz v3, :cond_1

    move v0, v4

    .line 436
    .local v0, is3GEnable:Z
    :goto_1
    iget-object v3, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTReplace:Landroid/preference/ListPreference;

    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 437
    iget-object v3, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTPeerReplace:Landroid/preference/ListPreference;

    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 438
    iget-object v3, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTEnablePeerReplace:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 439
    iget-object v3, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTMoVideo:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 440
    iget-object v3, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTMtVideo:Landroid/preference/ListPreference;

    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 441
    iget-object v3, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTEnablebackCamer:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 442
    iget-object v3, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTPeerBigger:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 443
    iget-object v3, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTAutoDropBack:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 444
    iget-object v3, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mCheckBoxRingOnlyOnce:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 446
    iget-object v6, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonCf:Landroid/preference/Preference;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    move v3, v4

    :goto_2
    invoke-virtual {v6, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 447
    iget-object v6, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonCb:Landroid/preference/Preference;

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    move v3, v4

    :goto_3
    invoke-virtual {v6, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 448
    iget-object v3, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonMore:Landroid/preference/Preference;

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    :goto_4
    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 452
    .end local v0           #is3GEnable:Z
    .end local v1           #isRadioOn:Z
    :goto_5
    return-void

    :cond_0
    move v1, v5

    .line 434
    goto :goto_0

    .restart local v1       #isRadioOn:Z
    :cond_1
    move v0, v5

    .line 435
    goto :goto_1

    .restart local v0       #is3GEnable:Z
    :cond_2
    move v3, v5

    .line 446
    goto :goto_2

    :cond_3
    move v3, v5

    .line 447
    goto :goto_3

    :cond_4
    move v4, v5

    .line 448
    goto :goto_4

    .line 450
    .end local v0           #is3GEnable:Z
    .end local v1           #isRadioOn:Z
    :cond_5
    const-class v3, Lcom/mediatek/settings/CallSettings;

    invoke-static {p0, v3}, Lcom/mediatek/phone/gemini/GeminiUtils;->goUpToTopLevelSetting(Landroid/app/Activity;Ljava/lang/Class;)V

    goto :goto_5
.end method

.method private showDialogDefaultPic(Ljava/lang/String;)V
    .locals 7
    .parameter "filename"

    .prologue
    const/4 v6, -0x2

    .line 298
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 299
    .local v2, mImg:Landroid/widget/ImageView;
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 300
    .local v1, mBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 301
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 302
    .local v0, linear:Landroid/widget/LinearLayout;
    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 303
    const/16 v5, 0x11

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 305
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 306
    .local v4, myBuilder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 307
    const v5, 0x7f080030

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 308
    const v5, 0x104000a

    new-instance v6, Lcom/mediatek/settings/VTAdvancedSetting$2;

    invoke-direct {v6, p0}, Lcom/mediatek/settings/VTAdvancedSetting$2;-><init>(Lcom/mediatek/settings/VTAdvancedSetting;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 316
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 317
    .local v3, myAlertDialog:Landroid/app/AlertDialog;
    new-instance v5, Lcom/mediatek/settings/VTAdvancedSetting$3;

    invoke-direct {v5, p0, v2, v1}, Lcom/mediatek/settings/VTAdvancedSetting$3;-><init>(Lcom/mediatek/settings/VTAdvancedSetting;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v5}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 326
    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    .line 327
    return-void
.end method

.method private showDialogMyPic(Ljava/lang/String;)V
    .locals 7
    .parameter "filename"

    .prologue
    const/4 v6, -0x2

    .line 330
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 331
    .local v2, mImg2:Landroid/widget/ImageView;
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 332
    .local v1, mBitmap2:Landroid/graphics/Bitmap;
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 333
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 334
    .local v0, linear:Landroid/widget/LinearLayout;
    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 335
    const/16 v5, 0x11

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 337
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 338
    .local v4, myBuilder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 339
    const v5, 0x7f080032

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 340
    const v5, 0x7f08003b

    new-instance v6, Lcom/mediatek/settings/VTAdvancedSetting$4;

    invoke-direct {v6, p0}, Lcom/mediatek/settings/VTAdvancedSetting$4;-><init>(Lcom/mediatek/settings/VTAdvancedSetting;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 373
    const v5, 0x104000a

    new-instance v6, Lcom/mediatek/settings/VTAdvancedSetting$5;

    invoke-direct {v6, p0}, Lcom/mediatek/settings/VTAdvancedSetting$5;-><init>(Lcom/mediatek/settings/VTAdvancedSetting;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 381
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 382
    .local v3, myAlertDialog:Landroid/app/AlertDialog;
    new-instance v5, Lcom/mediatek/settings/VTAdvancedSetting$6;

    invoke-direct {v5, p0, v2, v1}, Lcom/mediatek/settings/VTAdvancedSetting$6;-><init>(Lcom/mediatek/settings/VTAdvancedSetting;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v5}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 391
    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    .line 392
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 263
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActivityResult: requestCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", resultCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/settings/VTAdvancedSetting;->log(Ljava/lang/String;)V

    .line 265
    const/4 v2, -0x1

    if-eq p2, v2, :cond_0

    .line 295
    :goto_0
    return-void

    .line 268
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 271
    :pswitch_0
    :try_start_0
    const-string v2, "data"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 272
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 273
    iget v2, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mWhichToSave:I

    if-nez v2, :cond_2

    .line 274
    iget v2, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mSlotId:I

    invoke-static {v2}, Lcom/mediatek/settings/VTAdvancedSetting;->getPicPathUserselect(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/mediatek/phone/vt/VTCallUtils;->saveMyBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 278
    :goto_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 280
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " - Bitmap.isRecycled() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/settings/VTAdvancedSetting;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_1
    :goto_2
    iget v2, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mWhichToSave:I

    if-nez v2, :cond_3

    .line 287
    iget v2, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mSlotId:I

    invoke-static {v2}, Lcom/mediatek/settings/VTAdvancedSetting;->getPicPathUserselect(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/settings/VTAdvancedSetting;->showDialogMyPic(Ljava/lang/String;)V

    goto :goto_0

    .line 276
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    :cond_2
    :try_start_1
    iget v2, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mSlotId:I

    invoke-static {v2}, Lcom/mediatek/settings/VTAdvancedSetting;->getPicPathUserselect2(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/mediatek/phone/vt/VTCallUtils;->saveMyBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 283
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 284
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 289
    .end local v1           #e:Ljava/io/IOException;
    :cond_3
    iget v2, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mSlotId:I

    invoke-static {v2}, Lcom/mediatek/settings/VTAdvancedSetting;->getPicPathUserselect2(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/settings/VTAdvancedSetting;->showDialogMyPic(Ljava/lang/String;)V

    goto :goto_0

    .line 268
    nop

    :pswitch_data_0
    .packed-switch 0xbcd
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 515
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 517
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->clearScrapViewsIfNeeded()V

    .line 518
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    .line 157
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 158
    const v2, 0x7f060020

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 160
    new-instance v2, Lcom/mediatek/settings/PreCheckForRunning;

    invoke-direct {v2, p0}, Lcom/mediatek/settings/PreCheckForRunning;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mPreCfr:Lcom/mediatek/settings/PreCheckForRunning;

    .line 162
    const-string v2, "button_vt_replace_expand_key"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTReplace:Landroid/preference/ListPreference;

    .line 163
    iget-object v2, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTReplace:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 164
    const-string v2, "button_vt_replace_peer_expand_key"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTPeerReplace:Landroid/preference/ListPreference;

    .line 165
    iget-object v2, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTPeerReplace:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 166
    const-string v2, "button_cf_expand_key"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonCf:Landroid/preference/Preference;

    .line 167
    const-string v2, "button_cb_expand_key"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonCb:Landroid/preference/Preference;

    .line 168
    const-string v2, "button_more_expand_key"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonMore:Landroid/preference/Preference;

    .line 169
    const-string v2, "button_vt_enable_peer_replace_key"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTEnablePeerReplace:Landroid/preference/CheckBoxPreference;

    .line 170
    iget-object v2, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTEnablePeerReplace:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 171
    const-string v2, "button_vt_mo_local_video_display_key"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTMoVideo:Landroid/preference/CheckBoxPreference;

    .line 172
    iget-object v2, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTMoVideo:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 173
    const-string v2, "button_vt_mt_local_video_display_key"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTMtVideo:Landroid/preference/ListPreference;

    .line 174
    iget-object v2, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTMtVideo:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 175
    const-string v2, "button_vt_enable_back_camera_key"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTEnablebackCamer:Landroid/preference/CheckBoxPreference;

    .line 176
    iget-object v2, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTEnablebackCamer:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 177
    const-string v2, "button_vt_peer_bigger_key"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTPeerBigger:Landroid/preference/CheckBoxPreference;

    .line 178
    iget-object v2, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTPeerBigger:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 179
    const-string v2, "button_vt_auto_dropback_key"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTAutoDropBack:Landroid/preference/CheckBoxPreference;

    .line 180
    iget-object v2, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTAutoDropBack:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 181
    const-string v2, "ring_only_once_key"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mCheckBoxRingOnlyOnce:Landroid/preference/CheckBoxPreference;

    .line 183
    const-string v2, "Settings/VTAdvancedSetting"

    const-string v3, "FeatureOption.MTK_VT3G324M_SUPPORT=falseFeatureOption.MTK_PHONE_VT_VOICE_ANSWER=false"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mCheckBoxRingOnlyOnce:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 191
    invoke-direct {p0}, Lcom/mediatek/settings/VTAdvancedSetting;->findSimId()V

    .line 192
    invoke-direct {p0}, Lcom/mediatek/settings/VTAdvancedSetting;->initVTSettings()V

    .line 194
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 195
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 197
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 199
    :cond_0
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 200
    .local v1, intentFilter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.SIM_INDICATOR_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 201
    const-string v2, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 202
    iget-object v2, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 203
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 424
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 425
    iget-object v0, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mPreCfr:Lcom/mediatek/settings/PreCheckForRunning;

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mPreCfr:Lcom/mediatek/settings/PreCheckForRunning;

    invoke-virtual {v0}, Lcom/mediatek/settings/PreCheckForRunning;->deRegister()V

    .line 428
    :cond_0
    iget-object v0, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 429
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 212
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 213
    .local v0, itemId:I
    packed-switch v0, :pswitch_data_0

    .line 220
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 215
    :pswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 216
    const/4 v1, 0x1

    goto :goto_0

    .line 213
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v3, 0x1

    .line 224
    const-string v0, "Settings/VTAdvancedSetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[mSlotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    const-string v0, "Settings/VTAdvancedSetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[objValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    const-string v0, "Settings/VTAdvancedSetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object v0, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTReplace:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_2

    .line 229
    iget v0, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mSlotId:I

    invoke-static {v0}, Lcom/mediatek/phone/vt/VTCallUtils;->checkVTFile(I)V

    .line 230
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mWhichToSave:I

    .line 232
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 234
    const-string v0, " Picture for replacing local video -- selected DEFAULT PICTURE"

    invoke-static {v0}, Lcom/mediatek/settings/VTAdvancedSetting;->log(Ljava/lang/String;)V

    .line 236
    invoke-static {}, Lcom/mediatek/settings/VTAdvancedSetting;->getPicPathDefault()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/settings/VTAdvancedSetting;->showDialogDefaultPic(Ljava/lang/String;)V

    .line 258
    :cond_0
    :goto_0
    return v3

    .line 237
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    const-string v0, " Picture for replacing local video -- selected MY PICTURE"

    invoke-static {v0}, Lcom/mediatek/settings/VTAdvancedSetting;->log(Ljava/lang/String;)V

    .line 241
    iget v0, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mSlotId:I

    invoke-static {v0}, Lcom/mediatek/settings/VTAdvancedSetting;->getPicPathUserselect(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/settings/VTAdvancedSetting;->showDialogMyPic(Ljava/lang/String;)V

    goto :goto_0

    .line 243
    :cond_2
    iget-object v0, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTPeerReplace:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_0

    .line 244
    iget v0, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mSlotId:I

    invoke-static {v0}, Lcom/mediatek/phone/vt/VTCallUtils;->checkVTFile(I)V

    .line 245
    iput v3, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mWhichToSave:I

    .line 246
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 248
    const-string v0, " Picture for replacing peer video -- selected DEFAULT PICTURE"

    invoke-static {v0}, Lcom/mediatek/settings/VTAdvancedSetting;->log(Ljava/lang/String;)V

    .line 250
    invoke-static {}, Lcom/mediatek/settings/VTAdvancedSetting;->getPicPathDefault2()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/settings/VTAdvancedSetting;->showDialogDefaultPic(Ljava/lang/String;)V

    goto :goto_0

    .line 251
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    const-string v0, " Picture for replacing peer video -- selected MY PICTURE"

    invoke-static {v0}, Lcom/mediatek/settings/VTAdvancedSetting;->log(Ljava/lang/String;)V

    .line 255
    iget v0, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mSlotId:I

    invoke-static {v0}, Lcom/mediatek/settings/VTAdvancedSetting;->getPicPathUserselect2(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/settings/VTAdvancedSetting;->showDialogMyPic(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v1, 0x1

    .line 411
    iget-object v2, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonCf:Landroid/preference/Preference;

    if-eq v2, p2, :cond_0

    iget-object v2, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonCb:Landroid/preference/Preference;

    if-eq v2, p2, :cond_0

    iget-object v2, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonMore:Landroid/preference/Preference;

    if-ne v2, p2, :cond_2

    .line 412
    :cond_0
    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/mediatek/phone/gemini/GeminiUtils;->getSlotId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mSlotId:I

    .line 413
    iget v2, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mSlotId:I

    invoke-static {v2}, Lcom/mediatek/phone/gemini/GeminiUtils;->isValidSlot(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 414
    invoke-virtual {p2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 415
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "ISVT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 416
    iget v2, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mSlotId:I

    iget-object v3, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mPreCfr:Lcom/mediatek/settings/PreCheckForRunning;

    invoke-static {v2, p2, v3}, Lcom/mediatek/phone/gemini/GeminiUtils;->startActivity(ILandroid/preference/Preference;Lcom/mediatek/settings/PreCheckForRunning;)V

    .line 420
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 206
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 207
    invoke-direct {p0}, Lcom/mediatek/settings/VTAdvancedSetting;->setScreenEnabled()V

    .line 208
    return-void
.end method
