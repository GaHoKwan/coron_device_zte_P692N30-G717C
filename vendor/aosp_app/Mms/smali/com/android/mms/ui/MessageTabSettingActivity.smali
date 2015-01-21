.class public Lcom/android/mms/ui/MessageTabSettingActivity;
.super Landroid/app/Activity;
.source "MessageTabSettingActivity.java"

# interfaces
.implements Landroid/app/ActionBar$TabListener;


# static fields
.field private static final MENU_RESTORE_DEFAULT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MessageTabSettingActivity"


# instance fields
.field private isFirst:Z

.field private isSimChanged:Z

.field private mActionBar:Landroid/app/ActionBar;

.field private mSimReceiver:Landroid/content/BroadcastReceiver;

.field private mSlotId:I

.field private mTabCount:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/MessageTabSettingActivity;->mActionBar:Landroid/app/ActionBar;

    .line 83
    iput v1, p0, Lcom/android/mms/ui/MessageTabSettingActivity;->mSlotId:I

    .line 85
    iput v1, p0, Lcom/android/mms/ui/MessageTabSettingActivity;->mTabCount:I

    .line 87
    iput-boolean v1, p0, Lcom/android/mms/ui/MessageTabSettingActivity;->isSimChanged:Z

    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageTabSettingActivity;->isFirst:Z

    .line 362
    new-instance v0, Lcom/android/mms/ui/MessageTabSettingActivity$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageTabSettingActivity$2;-><init>(Lcom/android/mms/ui/MessageTabSettingActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageTabSettingActivity;->mSimReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/MessageTabSettingActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageTabSettingActivity;->isFirst:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/mms/ui/MessageTabSettingActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/android/mms/ui/MessageTabSettingActivity;->isFirst:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/mms/ui/MessageTabSettingActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/android/mms/ui/MessageTabSettingActivity;->isSimChanged:Z

    return p1
.end method

.method private addTabToActionBar(Ljava/lang/String;)Landroid/app/ActionBar$Tab;
    .locals 4
    .parameter "displayName"

    .prologue
    .line 201
    const-string v1, "MessageTabSettingActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addTabToActionBar : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object v1, p0, Lcom/android/mms/ui/MessageTabSettingActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    .line 203
    .local v0, tab:Landroid/app/ActionBar$Tab;
    invoke-virtual {v0, p1}, Landroid/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    .line 204
    invoke-virtual {v0, p0}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    .line 205
    iget-object v1, p0, Lcom/android/mms/ui/MessageTabSettingActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 206
    return-object v0
.end method

.method private getDisplayNameBySlotId(I)Ljava/lang/String;
    .locals 4
    .parameter "slotId"

    .prologue
    .line 195
    const-string v1, "MessageTabSettingActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDisplayNameBySlotId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    invoke-static {p0, p1}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSimInfoBySlot(Landroid/content/Context;I)Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    move-result-object v0

    .line 197
    .local v0, simInfoManager:Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;
    invoke-virtual {v0}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private restoreDefault()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 275
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 277
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {p0}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getInsertedSimInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v4

    .line 279
    .local v4, listSimInfo:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;>;"
    if-eqz v4, :cond_3

    .line 280
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 281
    .local v5, simCount:I
    if-lez v5, :cond_3

    .line 282
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v5, :cond_3

    .line 283
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    invoke-virtual {v8}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSimId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 285
    .local v6, simId:Ljava/lang/Long;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "pref_key_sms_delivery_reports"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 286
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    invoke-virtual {v8}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSlot()I

    move-result v7

    .line 287
    .local v7, slotId:I
    invoke-static {}, Lcom/android/mms/MmsConfig;->getSmsMultiSaveLocationEnabled()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 288
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const/high16 v9, 0x7f08

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    if-nez v8, :cond_2

    .line 289
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    int-to-long v9, v7

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "pref_key_sms_save_location"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Phone"

    invoke-interface {v0, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 298
    :cond_0
    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "pref_key_mms_delivery_reports"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 299
    invoke-static {v7}, Lcom/android/mms/ui/MessageUtils;->isUSimType(I)Z

    move-result v8

    if-nez v8, :cond_1

    .line 300
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "pref_key_mms_read_reports"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 301
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "pref_key_mms_auto_reply_read_reports"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 303
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "pref_key_mms_auto_retrieval"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 304
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "pref_key_mms_retrieval_during_roaming"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 282
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 293
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    int-to-long v9, v7

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "pref_key_sms_save_location"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Device"

    invoke-interface {v0, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_1

    .line 324
    .end local v3           #i:I
    .end local v5           #simCount:I
    .end local v6           #simId:Ljava/lang/Long;
    .end local v7           #slotId:I
    :cond_3
    const-string v8, "pref_key_mms_creation_mode"

    const-string v9, "FREE"

    invoke-interface {v0, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 325
    const-string v8, "pref_key_mms_size_limit"

    const-string v9, "300"

    invoke-interface {v0, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 326
    const-string v8, "pref_key_mms_priority"

    const-string v9, "Normal"

    invoke-interface {v0, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 327
    const-string v8, "pref_key_mms_group_mms"

    invoke-interface {v0, v8, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 329
    const-string v8, "pref_key_enable_notifications"

    invoke-interface {v0, v8, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 330
    const-string v8, "pref_key_mute"

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 331
    const-string v8, "pref_key_ringtone"

    const-string v9, "content://settings/system/notification_sound"

    invoke-interface {v0, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 332
    const-string v8, "pref_key_ringtone_card_second"

    const-string v9, "content://settings/system/notif_sound_second"

    invoke-interface {v0, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 333
    const-string v8, "pref_key_vibrate"

    invoke-interface {v0, v8, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 334
    const-string v8, "pref_key_popup_notification"

    invoke-interface {v0, v8, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 336
    const-string v8, "pref_key_message_font_size"

    invoke-interface {v0, v8, v11}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 337
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f060011

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 338
    .local v1, fontSizeValues:[Ljava/lang/String;
    const-string v8, "message_font_size"

    aget-object v9, v1, v11

    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    invoke-interface {v0, v8, v9}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 339
    const-string v8, "pref_key_auto_delete"

    invoke-interface {v0, v8, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 340
    const-string v8, "MaxSmsMessagesPerThread"

    const/16 v9, 0x1f4

    invoke-interface {v0, v8, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 341
    const-string v8, "MaxMmsMessagesPerThread"

    const/16 v9, 0x32

    invoke-interface {v0, v8, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 342
    const-string v8, "pref_key_wappush_enable"

    invoke-interface {v0, v8, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 343
    const-string v8, "pref_key_show_email_address"

    invoke-interface {v0, v8, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 344
    invoke-static {}, Lcom/android/mms/ui/ClassifyGeneralFragment;->newInstance()Lcom/android/mms/ui/ClassifyGeneralFragment;

    move-result-object v2

    .line 345
    .local v2, generalFragment:Lcom/android/mms/ui/ClassifyGeneralFragment;
    new-instance v8, Lcom/android/mms/ui/MessageTabSettingActivity$1;

    invoke-direct {v8, p0, v2}, Lcom/android/mms/ui/MessageTabSettingActivity$1;-><init>(Lcom/android/mms/ui/MessageTabSettingActivity;Lcom/android/mms/ui/ClassifyGeneralFragment;)V

    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 350
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 351
    return-void
.end method

.method private setInitialTab()V
    .locals 5

    .prologue
    .line 210
    invoke-static {}, Lcom/android/mms/ui/ClassifyGeneralFragment;->newInstance()Lcom/android/mms/ui/ClassifyGeneralFragment;

    move-result-object v1

    .line 211
    .local v1, generalFragment:Lcom/android/mms/ui/ClassifyGeneralFragment;
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b019a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/mms/ui/MessageTabSettingActivity;->addTabToActionBar(Ljava/lang/String;)Landroid/app/ActionBar$Tab;

    move-result-object v2

    .line 212
    .local v2, generalTab:Landroid/app/ActionBar$Tab;
    iget-object v3, p0, Lcom/android/mms/ui/MessageTabSettingActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v3, v2}, Landroid/app/ActionBar;->selectTab(Landroid/app/ActionBar$Tab;)V

    .line 213
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 214
    .local v0, ft:Landroid/app/FragmentTransaction;
    const v3, 0x7f0f0119

    invoke-virtual {v0, v3, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 215
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 216
    return-void
.end method


# virtual methods
.method public addFragment()V
    .locals 15

    .prologue
    const v14, 0x7f0b006c

    const v13, 0x7f0b006b

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 130
    const-string v7, "MessageTabSettingActivity"

    const-string v8, "addFragment"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-static {p0}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getInsertedSimCount(Landroid/content/Context;)I

    move-result v5

    .line 132
    .local v5, simCount:I
    const-string v7, "MessageTabSettingActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "simCount = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-static {}, Lcom/android/mms/ui/ClassifyGeneralFragment;->newInstance()Lcom/android/mms/ui/ClassifyGeneralFragment;

    move-result-object v2

    .line 134
    .local v2, generalFragment:Lcom/android/mms/ui/ClassifyGeneralFragment;
    packed-switch v5, :pswitch_data_0

    .line 191
    :goto_0
    iget-object v7, p0, Lcom/android/mms/ui/MessageTabSettingActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v7}, Landroid/app/ActionBar;->getTabCount()I

    move-result v7

    iput v7, p0, Lcom/android/mms/ui/MessageTabSettingActivity;->mTabCount:I

    .line 192
    return-void

    .line 136
    :pswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 137
    .local v1, ft:Landroid/app/FragmentTransaction;
    const v7, 0x7f0f0119

    invoke-virtual {v1, v7, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 138
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 141
    .end local v1           #ft:Landroid/app/FragmentTransaction;
    :pswitch_1
    iget-object v7, p0, Lcom/android/mms/ui/MessageTabSettingActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v7, v12}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 142
    iget-object v7, p0, Lcom/android/mms/ui/MessageTabSettingActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v7}, Landroid/app/ActionBar;->removeAllTabs()V

    .line 143
    invoke-static {p0}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getInsertedSimInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    invoke-virtual {v7}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSlot()I

    move-result v7

    iput v7, p0, Lcom/android/mms/ui/MessageTabSettingActivity;->mSlotId:I

    .line 144
    iget v7, p0, Lcom/android/mms/ui/MessageTabSettingActivity;->mSlotId:I

    invoke-direct {p0, v7}, Lcom/android/mms/ui/MessageTabSettingActivity;->getDisplayNameBySlotId(I)Ljava/lang/String;

    move-result-object v6

    .line 145
    .local v6, singleSlot:Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 147
    const/4 v4, 0x0

    .line 148
    .local v4, sim:Ljava/lang/String;
    iget v7, p0, Lcom/android/mms/ui/MessageTabSettingActivity;->mSlotId:I

    invoke-static {v7}, Lcom/android/mms/ui/MessageUtils;->isUSimType(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 149
    iget v7, p0, Lcom/android/mms/ui/MessageTabSettingActivity;->mSlotId:I

    if-nez v7, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b006d

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 159
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/mms/ui/MessageTabSettingActivity;->addTabToActionBar(Ljava/lang/String;)Landroid/app/ActionBar$Tab;

    .line 161
    .end local v4           #sim:Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/MessageTabSettingActivity;->setInitialTab()V

    goto :goto_0

    .line 149
    .restart local v4       #sim:Ljava/lang/String;
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b006e

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 154
    :cond_2
    iget v7, p0, Lcom/android/mms/ui/MessageTabSettingActivity;->mSlotId:I

    if-nez v7, :cond_3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_2
    goto :goto_1

    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 164
    .end local v4           #sim:Ljava/lang/String;
    .end local v6           #singleSlot:Ljava/lang/String;
    :pswitch_2
    iget-object v7, p0, Lcom/android/mms/ui/MessageTabSettingActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v7, v12}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 165
    iget-object v7, p0, Lcom/android/mms/ui/MessageTabSettingActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v7}, Landroid/app/ActionBar;->removeAllTabs()V

    .line 166
    invoke-direct {p0, v10}, Lcom/android/mms/ui/MessageTabSettingActivity;->getDisplayNameBySlotId(I)Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, firstSlot:Ljava/lang/String;
    invoke-direct {p0, v11}, Lcom/android/mms/ui/MessageTabSettingActivity;->getDisplayNameBySlotId(I)Ljava/lang/String;

    move-result-object v3

    .line 168
    .local v3, secondSlot:Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 170
    invoke-static {v10}, Lcom/android/mms/ui/MessageUtils;->isUSimType(I)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 171
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b006d

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/mms/ui/MessageTabSettingActivity;->addTabToActionBar(Ljava/lang/String;)Landroid/app/ActionBar$Tab;

    .line 177
    :cond_4
    :goto_3
    if-eqz v3, :cond_5

    .line 178
    invoke-static {v11}, Lcom/android/mms/ui/MessageUtils;->isUSimType(I)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 179
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b006e

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/mms/ui/MessageTabSettingActivity;->addTabToActionBar(Ljava/lang/String;)Landroid/app/ActionBar$Tab;

    .line 186
    :cond_5
    :goto_4
    invoke-direct {p0}, Lcom/android/mms/ui/MessageTabSettingActivity;->setInitialTab()V

    goto/16 :goto_0

    .line 174
    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/mms/ui/MessageTabSettingActivity;->addTabToActionBar(Ljava/lang/String;)Landroid/app/ActionBar$Tab;

    goto :goto_3

    .line 182
    :cond_7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/mms/ui/MessageTabSettingActivity;->addTabToActionBar(Ljava/lang/String;)Landroid/app/ActionBar$Tab;

    goto :goto_4

    .line 134
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 93
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 94
    const-string v1, "MessageTabSettingActivity"

    const-string v2, "onCreate called"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const v1, 0x7f040040

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 96
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MessageTabSettingActivity;->mActionBar:Landroid/app/ActionBar;

    .line 97
    iget-object v1, p0, Lcom/android/mms/ui/MessageTabSettingActivity;->mActionBar:Landroid/app/ActionBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 98
    iget-object v1, p0, Lcom/android/mms/ui/MessageTabSettingActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0232

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 99
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_INDICATOR_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 100
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SIM_SETTING_INFO_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 101
    iget-object v1, p0, Lcom/android/mms/ui/MessageTabSettingActivity;->mSimReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 102
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageTabSettingActivity;->addFragment()V

    .line 103
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 252
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 253
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 254
    const v0, 0x7f0b029c

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 255
    return v2
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 122
    const-string v0, "MessageTabSettingActivity"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v0, p0, Lcom/android/mms/ui/MessageTabSettingActivity;->mSimReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/android/mms/ui/MessageTabSettingActivity;->mSimReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 126
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 127
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 260
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 271
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 262
    :sswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 263
    const/4 v0, 0x1

    goto :goto_1

    .line 265
    :sswitch_1
    invoke-direct {p0}, Lcom/android/mms/ui/MessageTabSettingActivity;->restoreDefault()V

    .line 266
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageTabSettingActivity;->addFragment()V

    goto :goto_0

    .line 260
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x102002c -> :sswitch_0
    .end sparse-switch
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 113
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 114
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageTabSettingActivity;->isSimChanged:Z

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageTabSettingActivity;->addFragment()V

    .line 116
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageTabSettingActivity;->isSimChanged:Z

    .line 118
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 107
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 108
    const-string v0, "MessageTabSettingActivity"

    const-string v1, "onStart()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    return-void
.end method

.method public onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0
    .parameter "tab"
    .parameter "ft"

    .prologue
    .line 359
    return-void
.end method

.method public onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 8
    .parameter "tab"
    .parameter "ft"

    .prologue
    const/4 v7, 0x1

    const v6, 0x7f0f0119

    .line 220
    const-string v4, "MessageTabSettingActivity"

    const-string v5, "onTabSelected"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    invoke-static {}, Lcom/android/mms/ui/ClassifyGeneralFragment;->newInstance()Lcom/android/mms/ui/ClassifyGeneralFragment;

    move-result-object v0

    .line 222
    .local v0, generalFragment:Lcom/android/mms/ui/ClassifyGeneralFragment;
    iget v4, p0, Lcom/android/mms/ui/MessageTabSettingActivity;->mTabCount:I

    packed-switch v4, :pswitch_data_0

    .line 249
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 228
    :pswitch_1
    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v4

    if-nez v4, :cond_1

    .line 229
    iget v4, p0, Lcom/android/mms/ui/MessageTabSettingActivity;->mSlotId:I

    invoke-static {v4}, Lcom/android/mms/ui/ClassifySlotFragment;->newInstance(I)Lcom/android/mms/ui/ClassifySlotFragment;

    move-result-object v1

    .line 230
    .local v1, singleSlotFragement:Lcom/android/mms/ui/ClassifySlotFragment;
    invoke-virtual {p2, v6, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_0

    .line 231
    .end local v1           #singleSlotFragement:Lcom/android/mms/ui/ClassifySlotFragment;
    :cond_1
    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v4

    if-ne v4, v7, :cond_0

    .line 232
    invoke-virtual {p2, v6, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_0

    .line 236
    :pswitch_2
    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v4

    if-nez v4, :cond_2

    .line 237
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/android/mms/ui/ClassifySlotFragment;->newInstance(I)Lcom/android/mms/ui/ClassifySlotFragment;

    move-result-object v2

    .line 238
    .local v2, slot1Fragement:Lcom/android/mms/ui/ClassifySlotFragment;
    invoke-virtual {p2, v6, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_0

    .line 239
    .end local v2           #slot1Fragement:Lcom/android/mms/ui/ClassifySlotFragment;
    :cond_2
    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v4

    if-ne v4, v7, :cond_3

    .line 240
    invoke-static {v7}, Lcom/android/mms/ui/ClassifySlotFragment;->newInstance(I)Lcom/android/mms/ui/ClassifySlotFragment;

    move-result-object v3

    .line 241
    .local v3, slot2Fragement:Lcom/android/mms/ui/ClassifySlotFragment;
    invoke-virtual {p2, v6, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_0

    .line 242
    .end local v3           #slot2Fragement:Lcom/android/mms/ui/ClassifySlotFragment;
    :cond_3
    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 243
    invoke-virtual {p2, v6, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_0

    .line 222
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0
    .parameter "tab"
    .parameter "ft"

    .prologue
    .line 355
    return-void
.end method
