.class public Lcom/android/mms/ui/MessageUtils;
.super Ljava/lang/Object;
.source "MessageUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;
    }
.end annotation


# static fields
.field public static final ACTION_CONTACT_SELECTION:Ljava/lang/String; = "android.intent.action.contacts.list.PICKMULTIPHONEANDEMAILS"

.field public static final ACTION_OPEN_GROUP:Ljava/lang/String; = "com.mediatek.mms.action.opengroup"

.field public static final ACTION_OPEN_GUIDE:Ljava/lang/String; = "com.mediatek.mms.action.openguide"

.field private static final DB_PATH:Ljava/lang/String; = "/data/data/com.android.providers.telephony/databases/mmssms.db"

.field private static final EXTRA_FULLSCREEN_NOTIFICATION:Ljava/lang/String; = "mediatek.intent.extra.FULLSCREEN_NOTIFICATION"

.field private static final EXTRA_SHORTCUT_STEP_NUMBER:Ljava/lang/String; = "com.android.launcher2.extra.shortcut.stepnumber"

.field private static final EXTRA_SHORTCUT_TOTAL_NUMBER:Ljava/lang/String; = "com.android.launcher2.extra.shortcut.totalnumber"

.field public static final IMAGE_COMPRESSION_QUALITY:I = 0x5f

.field private static final INSTALL_SHORTCUT:Ljava/lang/String; = "com.android.launcher.action.INSTALL_SHORTCUT"

.field private static final IPMSG_TAG:Ljava/lang/String; = "Mms/ipmsg"

.field public static final MAX_COMPRESS_TIMES:I = 0x8

.field public static final MESSAGE_OVERHEAD:I = 0x1388

.field public static final MINIMUM_IMAGE_COMPRESSION_QUALITY:I = 0xa

.field public static final NUMBER_OF_RESIZE_ATTEMPTS:I = 0x4

.field private static final NUMERIC_CHARS_SUGAR:[C = null

.field public static final SDCARD_1:Ljava/lang/String; = "/mnt/sdcard"

.field public static final SDCARD_2:Ljava/lang/String; = "/mnt/sdcard2"

.field public static final SHOW_INVITE_PANEL:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Mms"

.field public static final THREAD_SETTINGS_URI:Landroid/net/Uri; = null

.field public static final UPDATE_SENDBUTTON:I = 0x2

.field private static mRemoveOldMmsThread:Ljava/lang/Thread; = null

.field private static numericSugarMap:Ljava/util/HashMap; = null

.field private static sLocalNumber:Ljava/lang/String; = null

.field private static sLocalNumber2:Ljava/lang/String; = null

.field private static sMmsPreference:Lcom/mediatek/mms/ext/IMmsPreference; = null

.field private static sNoSubjectStrings:[Ljava/lang/String; = null

.field private static final sRecipientAddress:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sStorageLowPlugin:Lcom/mediatek/mms/ext/IStorageLow; = null

.field private static final sUim:Ljava/lang/String; = "UIM"

.field public static simInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private static slide:Lcom/android/mms/model/SlideModel;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 255
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v2, 0x14

    invoke-direct {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v1, Lcom/android/mms/ui/MessageUtils;->sRecipientAddress:Ljava/util/Map;

    .line 263
    const/16 v1, 0xb

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/mms/ui/MessageUtils;->NUMERIC_CHARS_SUGAR:[C

    .line 270
    const-string v1, "content://mms-sms/thread_settings/"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/android/mms/ui/MessageUtils;->THREAD_SETTINGS_URI:Landroid/net/Uri;

    .line 272
    new-instance v1, Ljava/util/HashMap;

    sget-object v2, Lcom/android/mms/ui/MessageUtils;->NUMERIC_CHARS_SUGAR:[C

    array-length v2, v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    sput-object v1, Lcom/android/mms/ui/MessageUtils;->numericSugarMap:Ljava/util/HashMap;

    .line 275
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/android/mms/ui/MessageUtils;->NUMERIC_CHARS_SUGAR:[C

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 276
    sget-object v1, Lcom/android/mms/ui/MessageUtils;->numericSugarMap:Ljava/util/HashMap;

    sget-object v2, Lcom/android/mms/ui/MessageUtils;->NUMERIC_CHARS_SUGAR:[C

    aget-char v2, v2, v0

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    sget-object v3, Lcom/android/mms/ui/MessageUtils;->NUMERIC_CHARS_SUGAR:[C

    aget-char v3, v3, v0

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 294
    :cond_0
    const/4 v1, 0x0

    sput-object v1, Lcom/android/mms/ui/MessageUtils;->slide:Lcom/android/mms/model/SlideModel;

    .line 1813
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/android/mms/ui/MessageUtils;->simInfoMap:Ljava/util/Map;

    return-void

    .line 263
    nop

    :array_0
    .array-data 0x2
        0x2dt 0x0t
        0x2et 0x0t
        0x2ct 0x0t
        0x28t 0x0t
        0x29t 0x0t
        0x20t 0x0t
        0x2ft 0x0t
        0x5ct 0x0t
        0x2at 0x0t
        0x23t 0x0t
        0x2bt 0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 313
    return-void
.end method

.method static synthetic access$000()Lcom/android/mms/model/SlideModel;
    .locals 1

    .prologue
    .line 235
    sget-object v0, Lcom/android/mms/ui/MessageUtils;->slide:Lcom/android/mms/model/SlideModel;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/mms/model/SlideModel;)Lcom/android/mms/model/SlideModel;
    .locals 0
    .parameter "x0"

    .prologue
    .line 235
    sput-object p0, Lcom/android/mms/ui/MessageUtils;->slide:Lcom/android/mms/model/SlideModel;

    return-object p0
.end method

.method public static addNumberOrEmailtoContact(Ljava/lang/String;ILandroid/app/Activity;)V
    .locals 7
    .parameter "numberOrEmail"
    .parameter "REQUEST_CODE"
    .parameter "activity"

    .prologue
    .line 1875
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1876
    invoke-virtual {p2}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0087

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1877
    .local v2, message:Ljava/lang/String;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, p0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1878
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1879
    .local v1, dialog:Landroid/app/AlertDialog;
    const/4 v3, -0x1

    invoke-virtual {p2}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0089

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/mms/ui/MessageUtils$9;

    invoke-direct {v5, p0, p1, p2}, Lcom/android/mms/ui/MessageUtils$9;-><init>(Ljava/lang/String;ILandroid/app/Activity;)V

    invoke-virtual {v1, v3, v4, v5}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1899
    const/4 v3, -0x2

    invoke-virtual {p2}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0088

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/mms/ui/MessageUtils$10;

    invoke-direct {v5, p0, p1, p2}, Lcom/android/mms/ui/MessageUtils$10;-><init>(Ljava/lang/String;ILandroid/app/Activity;)V

    invoke-virtual {v1, v3, v4, v5}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1917
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 1919
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    .end local v1           #dialog:Landroid/app/AlertDialog;
    .end local v2           #message:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static addRemoveOldMmsThread(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "r"

    .prologue
    .line 2329
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object v0, Lcom/android/mms/ui/MessageUtils;->mRemoveOldMmsThread:Ljava/lang/Thread;

    .line 2330
    return-void
.end method

.method public static addShortcutToLauncher(Landroid/content/Context;Ljava/util/HashSet;)V
    .locals 3
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2719
    .local p1, threadIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/ui/MessageUtils$13;

    invoke-direct {v1, p1, p0}, Lcom/android/mms/ui/MessageUtils$13;-><init>(Ljava/util/HashSet;Landroid/content/Context;)V

    const-string v2, "Add_Shortcut_Thread"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2789
    return-void
.end method

.method public static asyncDeleteOldMms()V
    .locals 1

    .prologue
    .line 2333
    sget-object v0, Lcom/android/mms/ui/MessageUtils;->mRemoveOldMmsThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 2334
    sget-object v0, Lcom/android/mms/ui/MessageUtils;->mRemoveOldMmsThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2335
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/ui/MessageUtils;->mRemoveOldMmsThread:Ljava/lang/Thread;

    .line 2337
    :cond_0
    return-void
.end method

.method public static canAddToContacts(Lcom/android/mms/data/Contact;)Z
    .locals 4
    .parameter "contact"

    .prologue
    const/4 v2, 0x0

    .line 2156
    invoke-virtual {p0}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v1

    .line 2157
    .local v1, name:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2158
    invoke-virtual {p0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2159
    .local v0, c:C
    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->isSpecialChar(C)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2173
    .end local v0           #c:C
    :cond_0
    :goto_0
    return v2

    .line 2163
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2164
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2165
    .restart local v0       #c:C
    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->isSpecialChar(C)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2169
    .end local v0           #c:C
    :cond_2
    invoke-static {v1}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {v1}, Landroid/provider/Telephony$Mms;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/ui/MessageUtils;->isLocalNumber(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2173
    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static cancelCTDeviceLowNotification(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 3653
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->getStorageLowPlugin(Landroid/content/Context;)V

    .line 3654
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 3655
    .local v0, nm:Landroid/app/NotificationManager;
    sget-object v1, Lcom/android/mms/ui/MessageUtils;->sStorageLowPlugin:Lcom/mediatek/mms/ext/IStorageLow;

    invoke-interface {v1, v0}, Lcom/mediatek/mms/ext/IStorageLow;->cancelNotification(Landroid/app/NotificationManager;)V

    .line 3656
    return-void
.end method

.method public static capturePicture(Landroid/app/Activity;I)V
    .locals 1
    .parameter "activity"
    .parameter "requestCode"

    .prologue
    .line 965
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCapturePictureIntent()Landroid/content/Intent;

    move-result-object v0

    .line 967
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 968
    return-void
.end method

.method public static checkAndModifyUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "url"

    .prologue
    .line 1785
    if-nez p0, :cond_1

    .line 1786
    const/4 p0, 0x0

    .line 1794
    .end local p0
    .local v0, uri:Landroid/net/Uri;
    :cond_0
    :goto_0
    return-object p0

    .line 1789
    .end local v0           #uri:Landroid/net/Uri;
    .restart local p0
    :cond_1
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1790
    .restart local v0       #uri:Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1794
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static checkAppSettingsNeedNotify(Landroid/content/Context;)Z
    .locals 14
    .parameter "context"

    .prologue
    .line 3119
    const/4 v4, 0x1

    .line 3120
    .local v4, appNotificationEnabled:Z
    const-wide/16 v0, 0x0

    .line 3121
    .local v0, appMute:J
    const-wide/16 v2, 0x0

    .line 3124
    .local v2, appMuteStart:J
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 3125
    .local v9, prefs:Landroid/content/SharedPreferences;
    const-string v10, "pref_key_enable_notifications"

    const/4 v11, 0x1

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 3126
    if-nez v4, :cond_0

    .line 3127
    const-string v10, "Mms"

    const-string v11, "app notification set disabled!"

    invoke-static {v10, v11}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3128
    const/4 v10, 0x0

    .line 3153
    :goto_0
    return v10

    .line 3131
    :cond_0
    const-string v10, "pref_key_mute"

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 3132
    .local v8, muteStr:Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    int-to-long v0, v10

    .line 3133
    const-string v10, "mute_start"

    const-wide/16 v11, 0x0

    invoke-interface {v9, v10, v11, v12}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 3134
    const-string v10, "Mms"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\t appmute:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", appMute*3600="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-wide/16 v12, 0xe10

    mul-long/2addr v12, v0

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3135
    const-string v10, "Mms"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\t appMuteStart"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-wide/16 v12, 0x3e8

    div-long v12, v2, v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3136
    const-wide/16 v10, 0x0

    cmp-long v10, v2, v10

    if-lez v10, :cond_1

    const-wide/16 v10, 0x0

    cmp-long v10, v0, v10

    if-lez v10, :cond_1

    .line 3137
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    div-long v5, v10, v12

    .line 3138
    .local v5, currentTime:J
    const-string v10, "Mms"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\t currentTime"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3139
    const-wide/16 v10, 0xe10

    mul-long/2addr v10, v0

    const-wide/16 v12, 0x3e8

    div-long v12, v2, v12

    add-long/2addr v10, v12

    cmp-long v10, v10, v5

    if-gtz v10, :cond_1

    .line 3140
    const-string v10, "Mms"

    const-string v11, "thread mute timeout, reset to default."

    invoke-static {v10, v11}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3141
    const-wide/16 v0, 0x0

    .line 3142
    const-wide/16 v2, 0x0

    .line 3143
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 3144
    .local v7, editor:Landroid/content/SharedPreferences$Editor;
    const-string v10, "mute_start"

    const-wide/16 v11, 0x0

    invoke-interface {v7, v10, v11, v12}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 3145
    const-string v10, "pref_key_mute"

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3146
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3150
    .end local v5           #currentTime:J
    .end local v7           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_1
    const-wide/16 v10, 0x0

    cmp-long v10, v0, v10

    if-lez v10, :cond_2

    .line 3151
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 3153
    :cond_2
    const/4 v10, 0x1

    goto/16 :goto_0
.end method

.method public static checkImageOK(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 6
    .parameter "context"
    .parameter "imageUri"

    .prologue
    const/4 v3, 0x0

    .line 3574
    const/4 v0, 0x0

    .line 3575
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .line 3577
    .local v2, mInputStream:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 3578
    if-eqz v2, :cond_0

    .line 3579
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 3581
    :cond_0
    if-nez v0, :cond_2

    .line 3589
    if-eqz v2, :cond_1

    .line 3590
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 3598
    :cond_1
    :goto_0
    return v3

    .line 3584
    :cond_2
    const/4 v4, 0x1

    .line 3589
    if-eqz v2, :cond_3

    .line 3590
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_3
    move v3, v4

    goto :goto_0

    .line 3586
    :catch_0
    move-exception v1

    .line 3587
    .local v1, e:Ljava/io/FileNotFoundException;
    const/4 v0, 0x0

    .line 3589
    if-eqz v2, :cond_1

    .line 3590
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 3593
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 3594
    .local v1, e:Ljava/lang/OutOfMemoryError;
    const-string v4, "Mms"

    const-string v5, "checkImageOK(Uri): out of memory: "

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 3589
    .end local v1           #e:Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v4

    if-eqz v2, :cond_4

    .line 3590
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_4
    throw v4
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 3595
    :catch_2
    move-exception v1

    .line 3596
    .local v1, e:Ljava/io/IOException;
    const-string v4, "Mms"

    const-string v5, "checkImageOK(Uri): IOException: "

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static checkNeedNotify(Landroid/content/Context;JLandroid/database/Cursor;)Z
    .locals 23
    .parameter "context"
    .parameter "threadId"
    .parameter "cursor"

    .prologue
    .line 2977
    const-wide/16 v8, 0x0

    cmp-long v2, p1, v8

    if-gez v2, :cond_0

    .line 2978
    const-string v2, "Mms"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "illegal threadId:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, p1

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/mediatek/encapsulation/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2979
    const/4 v2, 0x0

    .line 3053
    :goto_0
    return v2

    .line 2981
    :cond_0
    const/4 v14, 0x1

    .line 2982
    .local v14, appNotificationEnabled:Z
    const-wide/16 v10, 0x0

    .line 2983
    .local v10, appMute:J
    const-wide/16 v12, 0x0

    .line 2984
    .local v12, appMuteStart:J
    const/16 v20, 0x1

    .line 2985
    .local v20, threadNotificationEnabled:Z
    const-wide/16 v16, 0x0

    .line 2986
    .local v16, threadMute:J
    const-wide/16 v18, 0x0

    .line 2987
    .local v18, threadMuteStart:J
    invoke-static/range {p0 .. p0}, Lcom/android/mms/ui/MessageUtils;->checkAppSettingsNeedNotify(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2988
    const/4 v2, 0x0

    goto :goto_0

    .line 2990
    :cond_1
    const-wide/16 v8, 0x0

    cmp-long v2, p1, v8

    if-nez v2, :cond_2

    .line 2991
    const/4 v2, 0x1

    goto :goto_0

    .line 2994
    :cond_2
    sget-object v2, Lcom/android/mms/ui/MessageUtils;->THREAD_SETTINGS_URI:Landroid/net/Uri;

    move-wide/from16 v0, p1

    long-to-int v8, v0

    int-to-long v8, v8

    invoke-static {v2, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 2995
    .local v3, threadSettingsUri:Landroid/net/Uri;
    if-eqz p3, :cond_5

    .line 2996
    const/16 v2, 0xd

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-nez v2, :cond_4

    const/16 v20, 0x0

    .line 2997
    :goto_1
    const/16 v2, 0xf

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 2998
    .end local v16           #threadMute:J
    .local v6, threadMute:J
    const/16 v2, 0x13

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 2999
    .end local v18           #threadMuteStart:J
    .local v4, threadMuteStart:J
    const-string v2, "Mms"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "before check: threadNotificationEnabled = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", \tthreadMute = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", \tthreadMuteStart = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3038
    :cond_3
    :goto_2
    if-nez v20, :cond_a

    .line 3039
    const-string v2, "Mms"

    const-string v8, "thread notification is disabled!"

    invoke-static {v2, v8}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3040
    const/4 v2, 0x0

    goto :goto_0

    .line 2996
    .end local v4           #threadMuteStart:J
    .end local v6           #threadMute:J
    .restart local v16       #threadMute:J
    .restart local v18       #threadMuteStart:J
    :cond_4
    const/16 v20, 0x1

    goto :goto_1

    .line 3004
    :cond_5
    const-string v2, "Mms"

    const-string v8, "before query threadSettingsUri in checkNeedNotify()"

    invoke-static {v2, v8}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3005
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v8, 0x5

    new-array v4, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "notification_enable"

    aput-object v9, v4, v8

    const/4 v8, 0x1

    const-string v9, "mute"

    aput-object v9, v4, v8

    const/4 v8, 0x2

    const-string v9, "mute_start"

    aput-object v9, v4, v8

    const/4 v8, 0x3

    const-string v9, "ringtone"

    aput-object v9, v4, v8

    const/4 v8, 0x4

    const-string v9, "vibrate"

    aput-object v9, v4, v8

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 3012
    .local v15, c:Landroid/database/Cursor;
    const-string v2, "Mms"

    const-string v8, "after query threadSettingsUri in checkNeedNotify()"

    invoke-static {v2, v8}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3014
    if-nez v15, :cond_6

    .line 3015
    const-string v2, "Mms"

    const-string v8, "cursor is null."

    invoke-static {v2, v8}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3016
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 3019
    :cond_6
    :try_start_0
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_7

    .line 3020
    const-string v2, "Mms"

    const-string v8, "cursor count is 0"

    invoke-static {v2, v8}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-wide/from16 v4, v18

    .end local v18           #threadMuteStart:J
    .restart local v4       #threadMuteStart:J
    move-wide/from16 v6, v16

    .line 3032
    .end local v16           #threadMute:J
    .restart local v6       #threadMute:J
    :goto_3
    if-eqz v15, :cond_3

    .line 3033
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 3022
    .end local v4           #threadMuteStart:J
    .end local v6           #threadMute:J
    .restart local v16       #threadMute:J
    .restart local v18       #threadMuteStart:J
    :cond_7
    :try_start_1
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3023
    const/4 v2, 0x0

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-nez v2, :cond_9

    const/16 v20, 0x0

    .line 3024
    :goto_4
    const/4 v2, 0x1

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v6

    .line 3025
    .end local v16           #threadMute:J
    .restart local v6       #threadMute:J
    const/4 v2, 0x2

    :try_start_2
    invoke-interface {v15, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-wide v4

    .line 3027
    .end local v18           #threadMuteStart:J
    .restart local v4       #threadMuteStart:J
    :try_start_3
    const-string v2, "Mms"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "before check: threadNotificationEnabled = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", \tthreadMute = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", \tthreadMuteStart = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 3032
    :catchall_0
    move-exception v2

    :goto_5
    if-eqz v15, :cond_8

    .line 3033
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v2

    .line 3023
    .end local v4           #threadMuteStart:J
    .end local v6           #threadMute:J
    .restart local v16       #threadMute:J
    .restart local v18       #threadMuteStart:J
    :cond_9
    const/16 v20, 0x1

    goto :goto_4

    .line 3043
    .end local v15           #c:Landroid/database/Cursor;
    .end local v16           #threadMute:J
    .end local v18           #threadMuteStart:J
    .restart local v4       #threadMuteStart:J
    .restart local v6       #threadMute:J
    :cond_a
    const-string v2, "Mms"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\t threadMute:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", threadMute*3600="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-wide/16 v21, 0xe10

    mul-long v21, v21, v6

    move-wide/from16 v0, v21

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3044
    const-string v2, "Mms"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\t threadMuteStart"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-wide/16 v21, 0x3e8

    div-long v21, v4, v21

    move-wide/from16 v0, v21

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v8, v3

    move-object/from16 v9, p0

    .line 3046
    invoke-static/range {v4 .. v9}, Lcom/android/mms/ui/MessageUtils;->checkThreadMuteTimeout(JJLandroid/net/Uri;Landroid/content/Context;)J

    move-result-wide v6

    .line 3048
    const-wide/16 v8, 0x0

    cmp-long v2, v6, v8

    if-lez v2, :cond_b

    .line 3049
    const-string v2, "Mms"

    const-string v8, "thread mute is set!"

    invoke-static {v2, v8}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3050
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 3053
    :cond_b
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 3032
    .end local v4           #threadMuteStart:J
    .end local v6           #threadMute:J
    .restart local v15       #c:Landroid/database/Cursor;
    .restart local v16       #threadMute:J
    .restart local v18       #threadMuteStart:J
    :catchall_1
    move-exception v2

    move-wide/from16 v4, v18

    .end local v18           #threadMuteStart:J
    .restart local v4       #threadMuteStart:J
    move-wide/from16 v6, v16

    .end local v16           #threadMute:J
    .restart local v6       #threadMute:J
    goto :goto_5

    .end local v4           #threadMuteStart:J
    .restart local v18       #threadMuteStart:J
    :catchall_2
    move-exception v2

    move-wide/from16 v4, v18

    .end local v18           #threadMuteStart:J
    .restart local v4       #threadMuteStart:J
    goto :goto_5
.end method

.method public static checkNeedNotifyForFolderMode(Landroid/content/Context;JJJZ)Z
    .locals 6
    .parameter "context"
    .parameter "threadId"
    .parameter "threadMute"
    .parameter "threadMuteStart"
    .parameter "threadNotificationEnabled"

    .prologue
    .line 3087
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 3088
    const-string v0, "Mms"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal threadId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3089
    const/4 v0, 0x0

    .line 3115
    :goto_0
    return v0

    .line 3091
    :cond_0
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->checkAppSettingsNeedNotify(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3092
    const/4 v0, 0x0

    goto :goto_0

    .line 3095
    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_2

    .line 3096
    const/4 v0, 0x1

    goto :goto_0

    .line 3099
    :cond_2
    if-nez p7, :cond_3

    .line 3100
    const-string v0, "Mms"

    const-string v1, "thread notification is disabled!"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3101
    const/4 v0, 0x0

    goto :goto_0

    .line 3104
    :cond_3
    const-string v0, "Mms"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\t threadMute:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", threadMute*3600="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-wide/16 v2, 0xe10

    mul-long/2addr v2, p3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3105
    const-string v0, "Mms"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\t threadMuteStart"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    div-long v2, p5, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3107
    sget-object v0, Lcom/android/mms/ui/MessageUtils;->THREAD_SETTINGS_URI:Landroid/net/Uri;

    long-to-int v1, p1

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .local v4, threadSettingsUri:Landroid/net/Uri;
    move-wide v0, p5

    move-wide v2, p3

    move-object v5, p0

    .line 3109
    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/MessageUtils;->checkThreadMuteTimeout(JJLandroid/net/Uri;Landroid/content/Context;)J

    move-result-wide p3

    .line 3110
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-lez v0, :cond_4

    .line 3111
    const-string v0, "Mms"

    const-string v1, "thread mute is set!"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3112
    const/4 v0, 0x0

    goto :goto_0

    .line 3115
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static checkThreadMuteTimeout(JJLandroid/net/Uri;Landroid/content/Context;)J
    .locals 10
    .parameter "threadMuteStart"
    .parameter "threadMute"
    .parameter "threadSettingsUri"
    .parameter "context"

    .prologue
    .line 3060
    move-wide v3, p2

    .line 3061
    .local v3, mute:J
    const-wide/16 v6, 0x0

    cmp-long v6, p0, v6

    if-lez v6, :cond_0

    const-wide/16 v6, 0x0

    cmp-long v6, p2, v6

    if-lez v6, :cond_0

    .line 3062
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long v1, v6, v8

    .line 3063
    .local v1, currentTime:J
    const-string v6, "Mms"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\t currentTime"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3064
    const-wide/16 v6, 0xe10

    mul-long/2addr v6, p2

    const-wide/16 v8, 0x3e8

    div-long v8, p0, v8

    add-long/2addr v6, v8

    cmp-long v6, v6, v1

    if-gtz v6, :cond_0

    .line 3065
    const-string v6, "Mms"

    const-string v7, "thread mute timeout, reset to default."

    invoke-static {v6, v7}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3066
    const-wide/16 p2, 0x0

    .line 3067
    const-wide/16 p0, 0x0

    .line 3068
    move-object v5, p4

    .line 3069
    .local v5, threadSettings:Landroid/net/Uri;
    move-object v0, p5

    .line 3070
    .local v0, ct:Landroid/content/Context;
    new-instance v6, Ljava/lang/Thread;

    new-instance v7, Lcom/android/mms/ui/MessageUtils$14;

    invoke-direct {v7, v0, v5}, Lcom/android/mms/ui/MessageUtils$14;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    const-string v8, "reset-mute-Thread"

    invoke-direct {v6, v7, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 3079
    const-wide/16 v3, 0x0

    .line 3082
    .end local v0           #ct:Landroid/content/Context;
    .end local v1           #currentTime:J
    .end local v3           #mute:J
    .end local v5           #threadSettings:Landroid/net/Uri;
    :cond_0
    return-wide v3
.end method

.method public static checkUriContainsDrm(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 4
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 1921
    invoke-static {p0, p1}, Lcom/android/mms/ui/MessageUtils;->convertUriToPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 1924
    .local v1, uripath:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1925
    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 1926
    .local v0, docIndexOf:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v0, v2, :cond_0

    .line 1927
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "dcf"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1928
    const/4 v2, 0x1

    .line 1933
    .end local v0           #docIndexOf:I
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static cleanseMmsSubject(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "subject"

    .prologue
    .line 323
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 337
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 326
    .restart local p1
    :cond_1
    sget-object v2, Lcom/android/mms/ui/MessageUtils;->sNoSubjectStrings:[Ljava/lang/String;

    if-nez v2, :cond_2

    .line 327
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/mms/ui/MessageUtils;->sNoSubjectStrings:[Ljava/lang/String;

    .line 331
    :cond_2
    sget-object v2, Lcom/android/mms/ui/MessageUtils;->sNoSubjectStrings:[Ljava/lang/String;

    array-length v1, v2

    .line 332
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 333
    sget-object v2, Lcom/android/mms/ui/MessageUtils;->sNoSubjectStrings:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 334
    const/4 p1, 0x0

    goto :goto_0

    .line 332
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static confirmDeleteMessage(Landroid/app/Activity;Landroid/net/Uri;)V
    .locals 3
    .parameter "activity"
    .parameter "msgUri"

    .prologue
    .line 2225
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2226
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0b02b6

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2227
    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 2228
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 2229
    const v1, 0x7f0b02ba

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 2230
    const v1, 0x7f0b02bf

    new-instance v2, Lcom/android/mms/ui/MessageUtils$11;

    invoke-direct {v2, p0, p1}, Lcom/android/mms/ui/MessageUtils$11;-><init>(Landroid/app/Activity;Landroid/net/Uri;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2242
    const v1, 0x7f0b0296

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2243
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 2244
    return-void
.end method

.method private static confirmReadReportDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 2
    .parameter "context"
    .parameter "positiveListener"
    .parameter "negativeListener"
    .parameter "cancelListener"

    .prologue
    .line 1385
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1386
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1387
    const v1, 0x7f0b02fd

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1388
    const v1, 0x7f0b02fe

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1389
    const v1, 0x7f0b0295

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1390
    const v1, 0x7f0b0296

    invoke-virtual {v0, v1, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1391
    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 1392
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1393
    return-void
.end method

.method private static convertUriToPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 11
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 1937
    const/4 v8, 0x0

    .line 1938
    .local v8, path:Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 1939
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    .line 1940
    .local v10, scheme:Ljava/lang/String;
    if-eqz v10, :cond_0

    const-string v0, ""

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "file"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1942
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    .line 1972
    .end local v10           #scheme:Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v8

    .line 1943
    .restart local v10       #scheme:Ljava/lang/String;
    :cond_2
    const-string v0, "content"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1944
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    .line 1945
    .local v2, projection:[Ljava/lang/String;
    const/4 v6, 0x0

    .line 1947
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1949
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1951
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given Uri could not be found in media store"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1958
    :catch_0
    move-exception v7

    .line 1959
    .local v7, e:Landroid/database/sqlite/SQLiteException;
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given Uri is not formatted in a way so that it can be found in media store."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1963
    .end local v7           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 1964
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    .line 1955
    :cond_5
    :try_start_2
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 1957
    .local v9, pathIndex:I
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v8

    .line 1963
    if-eqz v6, :cond_1

    .line 1964
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1968
    .end local v2           #projection:[Ljava/lang/String;
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v9           #pathIndex:I
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given Uri scheme is not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static copyFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .parameter "srcFile"
    .parameter "destFile"

    .prologue
    const/4 v9, 0x0

    .line 2817
    const/4 v3, 0x0

    .line 2818
    .local v3, is:Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 2820
    .local v6, os:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2821
    .local v2, inFile:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v10

    if-nez v10, :cond_2

    .line 2841
    if-eqz v3, :cond_0

    .line 2842
    :try_start_1
    throw v3

    .line 2844
    :cond_0
    if-eqz v6, :cond_1

    .line 2845
    throw v6
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a

    .line 2849
    .end local v2           #inFile:Ljava/io/File;
    :cond_1
    :goto_0
    return v9

    .line 2824
    .restart local v2       #inFile:Ljava/io/File;
    :cond_2
    :try_start_2
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 2825
    .end local v3           #is:Ljava/io/InputStream;
    .local v4, is:Ljava/io/InputStream;
    :try_start_3
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2826
    .local v8, outFile:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_3

    .line 2827
    invoke-virtual {v8}, Ljava/io/File;->createNewFile()Z

    .line 2829
    :cond_3
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 2830
    .end local v6           #os:Ljava/io/FileOutputStream;
    .local v7, os:Ljava/io/FileOutputStream;
    const/16 v10, 0x800

    :try_start_4
    new-array v0, v10, [B

    .line 2831
    .local v0, buffer:[B
    const/4 v5, 0x0

    .local v5, len:I
    :goto_1
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v10, -0x1

    if-eq v5, v10, :cond_5

    .line 2832
    const/4 v10, 0x0

    invoke-virtual {v7, v0, v10, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    goto :goto_1

    .line 2835
    .end local v0           #buffer:[B
    .end local v5           #len:I
    :catch_0
    move-exception v1

    move-object v6, v7

    .end local v7           #os:Ljava/io/FileOutputStream;
    .restart local v6       #os:Ljava/io/FileOutputStream;
    move-object v3, v4

    .line 2841
    .end local v2           #inFile:Ljava/io/File;
    .end local v4           #is:Ljava/io/InputStream;
    .end local v8           #outFile:Ljava/io/File;
    .local v1, e:Ljava/io/FileNotFoundException;
    .restart local v3       #is:Ljava/io/InputStream;
    :goto_2
    if-eqz v3, :cond_4

    .line 2842
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 2844
    :cond_4
    if-eqz v6, :cond_1

    .line 2845
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 2847
    :catch_1
    move-exception v10

    goto :goto_0

    .line 2834
    .end local v1           #e:Ljava/io/FileNotFoundException;
    .end local v3           #is:Ljava/io/InputStream;
    .end local v6           #os:Ljava/io/FileOutputStream;
    .restart local v0       #buffer:[B
    .restart local v2       #inFile:Ljava/io/File;
    .restart local v4       #is:Ljava/io/InputStream;
    .restart local v5       #len:I
    .restart local v7       #os:Ljava/io/FileOutputStream;
    .restart local v8       #outFile:Ljava/io/File;
    :cond_5
    const/4 v9, 0x1

    .line 2841
    if-eqz v4, :cond_6

    .line 2842
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 2844
    :cond_6
    if-eqz v7, :cond_7

    .line 2845
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_9

    :cond_7
    :goto_3
    move-object v6, v7

    .end local v7           #os:Ljava/io/FileOutputStream;
    .restart local v6       #os:Ljava/io/FileOutputStream;
    move-object v3, v4

    .line 2849
    .end local v4           #is:Ljava/io/InputStream;
    .restart local v3       #is:Ljava/io/InputStream;
    goto :goto_0

    .line 2837
    .end local v0           #buffer:[B
    .end local v2           #inFile:Ljava/io/File;
    .end local v5           #len:I
    .end local v8           #outFile:Ljava/io/File;
    :catch_2
    move-exception v1

    .line 2841
    .local v1, e:Ljava/io/IOException;
    :goto_4
    if-eqz v3, :cond_8

    .line 2842
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 2844
    :cond_8
    if-eqz v6, :cond_1

    .line 2845
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_0

    .line 2847
    :catch_3
    move-exception v10

    goto :goto_0

    .line 2840
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 2841
    :goto_5
    if-eqz v3, :cond_9

    .line 2842
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 2844
    :cond_9
    if-eqz v6, :cond_a

    .line 2845
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 2849
    :cond_a
    :goto_6
    throw v9

    .line 2847
    :catch_4
    move-exception v10

    goto :goto_6

    .line 2840
    .end local v3           #is:Ljava/io/InputStream;
    .restart local v2       #inFile:Ljava/io/File;
    .restart local v4       #is:Ljava/io/InputStream;
    :catchall_1
    move-exception v9

    move-object v3, v4

    .end local v4           #is:Ljava/io/InputStream;
    .restart local v3       #is:Ljava/io/InputStream;
    goto :goto_5

    .end local v3           #is:Ljava/io/InputStream;
    .end local v6           #os:Ljava/io/FileOutputStream;
    .restart local v4       #is:Ljava/io/InputStream;
    .restart local v7       #os:Ljava/io/FileOutputStream;
    .restart local v8       #outFile:Ljava/io/File;
    :catchall_2
    move-exception v9

    move-object v6, v7

    .end local v7           #os:Ljava/io/FileOutputStream;
    .restart local v6       #os:Ljava/io/FileOutputStream;
    move-object v3, v4

    .end local v4           #is:Ljava/io/InputStream;
    .restart local v3       #is:Ljava/io/InputStream;
    goto :goto_5

    .line 2837
    .end local v3           #is:Ljava/io/InputStream;
    .end local v8           #outFile:Ljava/io/File;
    .restart local v4       #is:Ljava/io/InputStream;
    :catch_5
    move-exception v1

    move-object v3, v4

    .end local v4           #is:Ljava/io/InputStream;
    .restart local v3       #is:Ljava/io/InputStream;
    goto :goto_4

    .end local v3           #is:Ljava/io/InputStream;
    .end local v6           #os:Ljava/io/FileOutputStream;
    .restart local v4       #is:Ljava/io/InputStream;
    .restart local v7       #os:Ljava/io/FileOutputStream;
    .restart local v8       #outFile:Ljava/io/File;
    :catch_6
    move-exception v1

    move-object v6, v7

    .end local v7           #os:Ljava/io/FileOutputStream;
    .restart local v6       #os:Ljava/io/FileOutputStream;
    move-object v3, v4

    .end local v4           #is:Ljava/io/InputStream;
    .restart local v3       #is:Ljava/io/InputStream;
    goto :goto_4

    .line 2835
    .end local v2           #inFile:Ljava/io/File;
    .end local v8           #outFile:Ljava/io/File;
    :catch_7
    move-exception v1

    goto :goto_2

    .end local v3           #is:Ljava/io/InputStream;
    .restart local v2       #inFile:Ljava/io/File;
    .restart local v4       #is:Ljava/io/InputStream;
    :catch_8
    move-exception v1

    move-object v3, v4

    .end local v4           #is:Ljava/io/InputStream;
    .restart local v3       #is:Ljava/io/InputStream;
    goto :goto_2

    .line 2847
    .end local v3           #is:Ljava/io/InputStream;
    .end local v6           #os:Ljava/io/FileOutputStream;
    .restart local v0       #buffer:[B
    .restart local v4       #is:Ljava/io/InputStream;
    .restart local v5       #len:I
    .restart local v7       #os:Ljava/io/FileOutputStream;
    .restart local v8       #outFile:Ljava/io/File;
    :catch_9
    move-exception v10

    goto :goto_3

    .end local v0           #buffer:[B
    .end local v4           #is:Ljava/io/InputStream;
    .end local v5           #len:I
    .end local v7           #os:Ljava/io/FileOutputStream;
    .end local v8           #outFile:Ljava/io/File;
    .restart local v3       #is:Ljava/io/InputStream;
    .restart local v6       #os:Ljava/io/FileOutputStream;
    :catch_a
    move-exception v10

    goto :goto_0
.end method

.method public static createFileForResource(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 9
    .parameter "context"
    .parameter "fileName"
    .parameter "fileResourceId"

    .prologue
    const/4 v5, 0x0

    .line 3164
    const/4 v4, 0x0

    .line 3165
    .local v4, os:Ljava/io/OutputStream;
    const/4 v2, 0x0

    .line 3167
    .local v2, ins:Ljava/io/InputStream;
    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v6}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v4

    .line 3168
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    .line 3169
    const/16 v6, 0x800

    new-array v0, v6, [B

    .line 3170
    .local v0, buffer:[B
    const/4 v3, 0x0

    .local v3, len:I
    :goto_0
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v6, -0x1

    if-eq v3, v6, :cond_2

    .line 3171
    const/4 v6, 0x0

    invoke-virtual {v4, v0, v6, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 3174
    .end local v0           #buffer:[B
    .end local v3           #len:I
    :catch_0
    move-exception v1

    .line 3175
    .local v1, e:Ljava/io/FileNotFoundException;
    :try_start_1
    const-string v6, "Mms"

    const-string v7, "create file failed."

    invoke-static {v6, v7, v1}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3182
    if-eqz v2, :cond_0

    .line 3183
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 3185
    :cond_0
    if-eqz v4, :cond_1

    .line 3186
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 3190
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :cond_1
    :goto_1
    return v5

    .line 3173
    .restart local v0       #buffer:[B
    .restart local v3       #len:I
    :cond_2
    const/4 v5, 0x1

    .line 3182
    if-eqz v2, :cond_3

    .line 3183
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 3185
    :cond_3
    if-eqz v4, :cond_1

    .line 3186
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 3188
    :catch_1
    move-exception v1

    .line 3189
    .local v1, e:Ljava/io/IOException;
    const-string v6, "Mms"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "createFileForResource:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3188
    .end local v0           #buffer:[B
    .end local v3           #len:I
    .local v1, e:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v1

    .line 3189
    .local v1, e:Ljava/io/IOException;
    const-string v6, "Mms"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "createFileForResource:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3177
    .end local v1           #e:Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 3178
    .restart local v1       #e:Ljava/io/IOException;
    :try_start_4
    const-string v6, "Mms"

    const-string v7, "create file failed."

    invoke-static {v6, v7, v1}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3182
    if-eqz v2, :cond_4

    .line 3183
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 3185
    :cond_4
    if-eqz v4, :cond_1

    .line 3186
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_1

    .line 3188
    :catch_4
    move-exception v1

    .line 3189
    const-string v6, "Mms"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "createFileForResource:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3181
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 3182
    if-eqz v2, :cond_5

    .line 3183
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 3185
    :cond_5
    if-eqz v4, :cond_6

    .line 3186
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 3190
    :cond_6
    :goto_2
    throw v5

    .line 3188
    :catch_5
    move-exception v1

    .line 3189
    .restart local v1       #e:Ljava/io/IOException;
    const-string v6, "Mms"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "createFileForResource:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static createIntentByThreadId(Landroid/content/Context;JI)Landroid/content/Intent;
    .locals 4
    .parameter "context"
    .parameter "threadId"
    .parameter "type"

    .prologue
    const/4 v3, 0x1

    .line 2792
    const/4 v0, 0x0

    .line 2793
    .local v0, intent:Landroid/content/Intent;
    const/4 v1, 0x3

    if-ne v1, p3, :cond_1

    .line 2794
    invoke-static {p0, p1, p2}, Lcom/android/mms/ui/CBMessageListActivity;->createIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    .line 2795
    const-string v1, "bFromLaunch"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2805
    :cond_0
    :goto_0
    return-object v0

    .line 2797
    :cond_1
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-class v1, Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2798
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "finish"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2799
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-lez v1, :cond_0

    .line 2800
    const-string v1, "android.intent.action.SENDTO"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2801
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "smsto:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-static {p0, p1, p2, v3}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/ContactList;->getNumbers()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static createLoseSDCardNotice(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "resId"

    .prologue
    .line 2876
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getResourceManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ResourceManager;

    move-result-object v1

    const/16 v2, 0x8b

    invoke-virtual {v1, v2}, Lcom/mediatek/mms/ipmessage/ResourceManager;->getSingleString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0296

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 2881
    return-void
.end method

.method public static createLoseSDCardNotice(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "content"

    .prologue
    .line 2884
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b0153

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0296

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 2889
    return-void
.end method

.method public static createSimpleAdapter(Ljava/util/List;Landroid/content/Context;)Landroid/widget/SimpleAdapter;
    .locals 7
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;>;",
            "Landroid/content/Context;",
            ")",
            "Landroid/widget/SimpleAdapter;"
        }
    .end annotation

    .prologue
    .local p0, entries:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;*>;>;"
    const/4 v5, 0x7

    .line 3321
    new-instance v0, Landroid/widget/SimpleAdapter;

    const v3, 0x7f040067

    new-array v4, v5, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "simIcon"

    aput-object v2, v4, v1

    const/4 v1, 0x1

    const-string v2, "simStatus"

    aput-object v2, v4, v1

    const/4 v1, 0x2

    const-string v2, "ipmsg_indicator"

    aput-object v2, v4, v1

    const/4 v1, 0x3

    const-string v2, "simNumberShort"

    aput-object v2, v4, v1

    const/4 v1, 0x4

    const-string v2, "simName"

    aput-object v2, v4, v1

    const/4 v1, 0x5

    const-string v2, "simNumber"

    aput-object v2, v4, v1

    const/4 v1, 0x6

    const-string v2, "suggested"

    aput-object v2, v4, v1

    new-array v5, v5, [I

    fill-array-data v5, :array_0

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 3327
    .local v0, a:Landroid/widget/SimpleAdapter;
    new-instance v6, Lcom/android/mms/ui/MessageUtils$15;

    invoke-direct {v6, p1}, Lcom/android/mms/ui/MessageUtils$15;-><init>(Landroid/content/Context;)V

    .line 3370
    .local v6, viewBinder:Landroid/widget/SimpleAdapter$ViewBinder;
    invoke-virtual {v0, v6}, Landroid/widget/SimpleAdapter;->setViewBinder(Landroid/widget/SimpleAdapter$ViewBinder;)V

    .line 3371
    return-object v0

    .line 3321
    :array_0
    .array-data 0x4
        0x73t 0x1t 0xft 0x7ft
        0x2at 0x0t 0xft 0x7ft
        0x74t 0x1t 0xft 0x7ft
        0x75t 0x1t 0xft 0x7ft
        0x40t 0x1t 0xft 0x7ft
        0x77t 0x1t 0xft 0x7ft
        0x78t 0x1t 0xft 0x7ft
    .end array-data
.end method

.method public static dealCTDeviceLowNotification(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    const v8, 0x7f02016b

    const/4 v7, 0x0

    .line 3620
    const-string v6, "notification"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 3621
    .local v1, nm:Landroid/app/NotificationManager;
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->getStorageLowPlugin(Landroid/content/Context;)V

    .line 3622
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCTDeviceStorageLowStatus()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 3623
    sget-object v6, Lcom/android/mms/ui/MessageUtils;->sStorageLowPlugin:Lcom/mediatek/mms/ext/IStorageLow;

    invoke-interface {v6}, Lcom/mediatek/mms/ext/IStorageLow;->getNotificationTitle()Ljava/lang/String;

    move-result-object v3

    .line 3624
    .local v3, notificationTitle:Ljava/lang/String;
    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcom/android/mms/ui/ConversationList;

    invoke-direct {v5, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3625
    .local v5, viewConvIntent:Landroid/content/Intent;
    const-string v6, "android.intent.action.VIEW"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3626
    const/high16 v6, 0x3400

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3628
    invoke-static {p0, v7, v5, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 3630
    .local v4, pendingIntent:Landroid/app/PendingIntent;
    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    .line 3631
    .local v2, notification:Landroid/app/Notification;
    iput v8, v2, Landroid/app/Notification;->icon:I

    .line 3632
    iput-object v3, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 3633
    const/4 v6, -0x1

    iput v6, v2, Landroid/app/Notification;->defaults:I

    .line 3635
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f04006f

    invoke-direct {v0, v6, v7}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 3636
    .local v0, contentView:Landroid/widget/RemoteViews;
    const v6, 0x7f0f008b

    invoke-virtual {v0, v6, v8}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 3637
    const v6, 0x7f0f007b

    invoke-virtual {v0, v6, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 3638
    const v6, 0x7f0f00a1

    sget-object v7, Lcom/android/mms/ui/MessageUtils;->sStorageLowPlugin:Lcom/mediatek/mms/ext/IStorageLow;

    invoke-interface {v7}, Lcom/mediatek/mms/ext/IStorageLow;->getNotificationBody()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 3639
    iput-object v0, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 3640
    iput-object v4, v2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 3642
    sget-object v6, Lcom/android/mms/ui/MessageUtils;->sStorageLowPlugin:Lcom/mediatek/mms/ext/IStorageLow;

    invoke-interface {v6, v1, v2}, Lcom/mediatek/mms/ext/IStorageLow;->showNotification(Landroid/app/NotificationManager;Landroid/app/Notification;)V

    .line 3646
    .end local v0           #contentView:Landroid/widget/RemoteViews;
    .end local v2           #notification:Landroid/app/Notification;
    .end local v3           #notificationTitle:Ljava/lang/String;
    .end local v4           #pendingIntent:Landroid/app/PendingIntent;
    .end local v5           #viewConvIntent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 3644
    :cond_0
    sget-object v6, Lcom/android/mms/ui/MessageUtils;->sStorageLowPlugin:Lcom/mediatek/mms/ext/IStorageLow;

    invoke-interface {v6, v1}, Lcom/mediatek/mms/ext/IStorageLow;->cancelNotification(Landroid/app/NotificationManager;)V

    goto :goto_0
.end method

.method public static detectCountry()Ljava/lang/String;
    .locals 5

    .prologue
    .line 2370
    :try_start_0
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v3

    const-string v4, "country_detector"

    invoke-virtual {v3, v4}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/CountryDetector;

    .line 2372
    .local v1, detector:Landroid/location/CountryDetector;
    invoke-virtual {v1}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v0

    .line 2373
    .local v0, country:Landroid/location/Country;
    if-eqz v0, :cond_0

    .line 2374
    invoke-virtual {v0}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 2379
    .end local v0           #country:Landroid/location/Country;
    :goto_0
    return-object v3

    .line 2376
    :catch_0
    move-exception v2

    .line 2377
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2379
    .end local v2           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static existingSD(Lcom/mediatek/encapsulation/android/os/storage/EncapsulatedStorageManager;Z)Z
    .locals 5
    .parameter "storageManager"
    .parameter "isExternal"

    .prologue
    .line 2690
    invoke-virtual {p0}, Lcom/mediatek/encapsulation/android/os/storage/EncapsulatedStorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v3

    .line 2691
    .local v3, volumes:[Landroid/os/storage/StorageVolume;
    const/4 v1, 0x0

    .line 2692
    .local v1, mountPoint:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    .line 2693
    if-eqz p1, :cond_1

    .line 2694
    aget-object v4, v3, v0

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2695
    aget-object v4, v3, v0

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 2705
    :cond_0
    :goto_1
    if-nez v1, :cond_3

    .line 2706
    const/4 v4, 0x0

    .line 2709
    :goto_2
    return v4

    .line 2699
    :cond_1
    aget-object v4, v3, v0

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v4

    if-nez v4, :cond_2

    .line 2700
    aget-object v4, v3, v0

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 2701
    goto :goto_1

    .line 2692
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2708
    :cond_3
    invoke-virtual {p0, v1}, Lcom/mediatek/encapsulation/android/os/storage/EncapsulatedStorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2709
    .local v2, volumeState:Ljava/lang/String;
    const-string v4, "mounted"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_2
.end method

.method private static extractEncStr(Landroid/content/Context;Lcom/google/android/mms/pdu/EncodedStringValue;)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "value"

    .prologue
    .line 1410
    if-eqz p1, :cond_0

    .line 1411
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v0

    .line 1414
    :goto_0
    return-object v0

    .line 1413
    :cond_0
    const-string v0, "Mms"

    const-string v1, "extractEncStr EncodedStringValue is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1414
    const-string v0, ""

    goto :goto_0
.end method

.method public static extractEncStrFromCursor(Landroid/database/Cursor;II)Ljava/lang/String;
    .locals 4
    .parameter "cursor"
    .parameter "columnRawBytes"
    .parameter "columnCharset"

    .prologue
    .line 1397
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1398
    .local v1, rawBytes:Ljava/lang/String;
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 1400
    .local v0, charset:I
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1401
    const-string v1, ""

    .line 1405
    .end local v1           #rawBytes:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 1402
    .restart local v1       #rawBytes:Ljava/lang/String;
    :cond_1
    if-eqz v0, :cond_0

    .line 1405
    new-instance v2, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-static {v1}, Lcom/google/android/mms/pdu/PduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static extractUris([Landroid/text/style/URLSpan;)Ljava/util/ArrayList;
    .locals 4
    .parameter "spans"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/text/style/URLSpan;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1419
    array-length v2, p0

    .line 1420
    .local v2, size:I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1422
    .local v0, accumulator:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 1424
    aget-object v3, p0, v1

    invoke-virtual {v3}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1425
    aget-object v3, p0, v1

    invoke-virtual {v3}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1422
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1429
    :cond_1
    return-object v0
.end method

.method private static formatDetails(Ljava/lang/StringBuilder;Landroid/content/Context;Lcom/google/android/mms/pdu/MultimediaMessagePdu;ILandroid/content/res/Resources;)Ljava/lang/String;
    .locals 2
    .parameter "details"
    .parameter "context"
    .parameter "msg"
    .parameter "size"
    .parameter "res"

    .prologue
    const/16 v1, 0xa

    .line 2300
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2301
    const v0, 0x7f0b02ce

    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2302
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getPriority()I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/mms/ui/MessageUtils;->getPriorityDescription(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2305
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2306
    const v0, 0x7f0b02cd

    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2307
    add-int/lit8 v0, p3, -0x1

    div-int/lit16 v0, v0, 0x400

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2308
    const v0, 0x7f0b0241

    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2310
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatMsgContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 7
    .parameter "subject"
    .parameter "body"
    .parameter "displayAddress"

    .prologue
    const/16 v6, 0xd

    const/16 v5, 0xa

    const/16 v4, 0x20

    .line 3294
    new-instance v0, Ljava/lang/StringBuilder;

    if-nez p2, :cond_2

    const-string v3, ""

    :goto_0
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3298
    .local v0, buf:Ljava/lang/StringBuilder;
    const/16 v3, 0x3a

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3300
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 3301
    .local v1, offset:I
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3302
    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 3303
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3304
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3307
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 3308
    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 3309
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3312
    :cond_1
    new-instance v2, Landroid/text/SpannableString;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 3313
    .local v2, spanText:Landroid/text/SpannableString;
    new-instance v3, Landroid/text/style/StyleSpan;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/4 v4, 0x0

    const/16 v5, 0x21

    invoke-virtual {v2, v3, v4, v1, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 3316
    return-object v2

    .line 3294
    .end local v0           #buf:Ljava/lang/StringBuilder;
    .end local v1           #offset:I
    .end local v2           #spanText:Landroid/text/SpannableString;
    :cond_2
    invoke-virtual {p2, v5, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static formatNumber(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .parameter "number"
    .parameter "context"

    .prologue
    .line 2387
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->detectCountry()Ljava/lang/String;

    move-result-object v1

    .line 2388
    .local v1, countryCode:Ljava/lang/String;
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getAsYouTypeFormatter(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;

    move-result-object v3

    .line 2389
    .local v3, mFormatter:Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 2390
    .local v0, cha:[C
    array-length v2, v0

    .line 2391
    .local v2, ii:I
    const/4 v4, 0x0

    .local v4, num:I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 2392
    aget-char v5, v0, v4

    invoke-virtual {v3, v5}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->inputDigit(C)Ljava/lang/String;

    move-result-object p0

    .line 2391
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2394
    :cond_0
    return-object p0
.end method

.method public static formatTimeStampString(Landroid/content/Context;J)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "when"

    .prologue
    .line 860
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;
    .locals 6
    .parameter "context"
    .parameter "when"
    .parameter "fullFormat"

    .prologue
    .line 864
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    .line 865
    .local v3, then:Landroid/text/format/Time;
    invoke-virtual {v3, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 866
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 867
    .local v2, now:Landroid/text/format/Time;
    invoke-virtual {v2}, Landroid/text/format/Time;->setToNow()V

    .line 870
    const/16 v0, 0xb00

    .line 876
    .local v0, format_flags:I
    iget v4, v3, Landroid/text/format/Time;->year:I

    iget v5, v2, Landroid/text/format/Time;->year:I

    if-eq v4, v5, :cond_1

    .line 877
    or-int/lit8 v0, v0, 0x14

    .line 889
    :goto_0
    if-eqz p3, :cond_0

    .line 890
    or-int/lit8 v0, v0, 0x11

    .line 893
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->isSupportCTFeature()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 894
    const/16 v4, 0xd

    invoke-static {v4}, Lcom/android/mms/MmsPluginManager;->getMmsPluginObject(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/mms/ext/IMmsUtils;

    .line 896
    .local v1, mmsUtils:Lcom/mediatek/mms/ext/IMmsUtils;
    invoke-interface {v1, p0, p1, p2, v0}, Lcom/mediatek/mms/ext/IMmsUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v4

    .line 899
    .end local v1           #mmsUtils:Lcom/mediatek/mms/ext/IMmsUtils;
    :goto_1
    return-object v4

    .line 878
    :cond_1
    iget v4, v3, Landroid/text/format/Time;->yearDay:I

    iget v5, v2, Landroid/text/format/Time;->yearDay:I

    if-eq v4, v5, :cond_2

    .line 880
    or-int/lit8 v0, v0, 0x10

    goto :goto_0

    .line 883
    :cond_2
    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 899
    :cond_3
    invoke-static {p0, p1, p2, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method public static formatTimeStampStringExtend(Landroid/content/Context;J)Ljava/lang/String;
    .locals 8
    .parameter "context"
    .parameter "when"

    .prologue
    const/4 v6, 0x0

    .line 2897
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    .line 2898
    .local v3, then:Landroid/text/format/Time;
    invoke-virtual {v3, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 2899
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 2900
    .local v2, now:Landroid/text/format/Time;
    invoke-virtual {v2}, Landroid/text/format/Time;->setToNow()V

    .line 2903
    const v0, 0x80b00

    .line 2908
    .local v0, format_flags:I
    iget v4, v3, Landroid/text/format/Time;->year:I

    iget v5, v2, Landroid/text/format/Time;->year:I

    if-eq v4, v5, :cond_0

    .line 2909
    or-int/lit8 v0, v0, 0x14

    .line 2924
    :goto_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->isSupportCTFeature()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2925
    const/16 v4, 0xd

    invoke-static {v4}, Lcom/android/mms/MmsPluginManager;->getMmsPluginObject(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/mms/ext/IMmsUtils;

    .line 2927
    .local v1, mmsUtils:Lcom/mediatek/mms/ext/IMmsUtils;
    invoke-interface {v1, p0, p1, p2, v0}, Lcom/mediatek/mms/ext/IMmsUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v4

    .line 2930
    .end local v1           #mmsUtils:Lcom/mediatek/mms/ext/IMmsUtils;
    :goto_1
    return-object v4

    .line 2910
    :cond_0
    iget v4, v3, Landroid/text/format/Time;->yearDay:I

    iget v5, v2, Landroid/text/format/Time;->yearDay:I

    if-eq v4, v5, :cond_2

    .line 2912
    iget v4, v2, Landroid/text/format/Time;->yearDay:I

    iget v5, v3, Landroid/text/format/Time;->yearDay:I

    sub-int/2addr v4, v5

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 2913
    const v4, 0x7f0b014e

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 2915
    :cond_1
    or-int/lit8 v0, v0, 0x10

    goto :goto_0

    .line 2917
    :cond_2
    invoke-virtual {v2, v6}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    invoke-virtual {v3, v6}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/32 v6, 0xea60

    cmp-long v4, v4, v6

    if-gez v4, :cond_3

    .line 2918
    const v4, 0x7f0b01c6

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 2921
    :cond_3
    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2930
    :cond_4
    invoke-static {p0, p1, p2, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method public static get3GCapabilitySIM()I
    .locals 1

    .prologue
    .line 2136
    const/4 v0, -0x1

    .line 2147
    .local v0, retval:I
    return v0
.end method

.method private static getAttachmentSize(Landroid/content/Context;)J
    .locals 5
    .parameter "context"

    .prologue
    .line 2038
    const-string v3, "content://mms/attachment_size"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 2039
    .local v2, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2040
    .local v0, insertValues:Landroid/content/ContentValues;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 2041
    const-string v3, "size"

    invoke-virtual {v2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2042
    .local v1, size:Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    return-wide v3
.end method

.method public static getAttachmentType(Lcom/android/mms/model/SlideshowModel;)I
    .locals 7
    .parameter "model"

    .prologue
    const/4 v4, 0x5

    const/4 v2, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 814
    if-nez p0, :cond_1

    .line 815
    sget v2, Lcom/android/mms/ui/MessageItem;->ATTACHMENT_TYPE_NOT_LOADED:I

    .line 856
    :cond_0
    :goto_0
    return v2

    .line 818
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v0

    .line 819
    .local v0, numberOfSlides:I
    if-gt v0, v3, :cond_0

    .line 821
    if-ne v0, v3, :cond_7

    .line 823
    invoke-virtual {p0, v5}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v1

    .line 824
    .local v1, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 825
    const/4 v2, 0x2

    goto :goto_0

    .line 828
    :cond_2
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v6

    if-nez v6, :cond_0

    .line 832
    :cond_3
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 833
    const/4 v2, 0x3

    goto :goto_0

    .line 836
    :cond_4
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v2

    if-eqz v2, :cond_5

    move v2, v3

    .line 837
    goto :goto_0

    .line 842
    :cond_5
    invoke-virtual {p0}, Lcom/android/mms/model/SlideshowModel;->sizeOfFilesAttach()I

    move-result v2

    if-lez v2, :cond_6

    move v2, v4

    .line 843
    goto :goto_0

    .line 847
    :cond_6
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v2

    if-eqz v2, :cond_7

    move v2, v5

    .line 848
    goto :goto_0

    .line 852
    .end local v1           #slide:Lcom/android/mms/model/SlideModel;
    :cond_7
    invoke-virtual {p0}, Lcom/android/mms/model/SlideshowModel;->sizeOfFilesAttach()I

    move-result v2

    if-lez v2, :cond_8

    move v2, v4

    .line 853
    goto :goto_0

    .line 856
    :cond_8
    sget v2, Lcom/android/mms/ui/MessageItem;->ATTACHMENT_TYPE_NOT_LOADED:I

    goto :goto_0
.end method

.method public static getAvailableBytesInFileSystemAtGivenRoot(Ljava/lang/String;)J
    .locals 8
    .parameter "rootFilePath"

    .prologue
    .line 2590
    new-instance v4, Landroid/os/StatFs;

    invoke-direct {v4, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 2593
    .local v4, stat:Landroid/os/StatFs;
    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v5

    add-int/lit8 v5, v5, -0x80

    int-to-long v0, v5

    .line 2596
    .local v0, availableBlocks:J
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v5

    int-to-long v5, v5

    mul-long v2, v0, v5

    .line 2598
    .local v2, mAvailSize:J
    const-string v5, "Mms"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getAvailableBytesInFileSystemAtGivenRoot(): available space (in bytes) in filesystem rooted at: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2601
    return-wide v2
.end method

.method public static getContentType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 6
    .parameter "uri"

    .prologue
    .line 3552
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 3554
    .local v3, path:Ljava/lang/String;
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v2

    .line 3555
    .local v2, mimeTypeMap:Landroid/webkit/MimeTypeMap;
    invoke-static {v3}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 3556
    .local v1, extension:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3557
    const/16 v5, 0x2e

    invoke-virtual {v3, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 3558
    .local v0, dotPos:I
    if-ltz v0, :cond_0

    .line 3559
    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 3560
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 3564
    .end local v0           #dotPos:I
    :cond_0
    invoke-virtual {v2, v1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3565
    .local v4, type:Ljava/lang/String;
    return-object v4
.end method

.method public static getContentType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "contentType"
    .parameter "fileName"

    .prologue
    .line 2527
    const-string v1, ""

    .line 2528
    .local v1, finalContentType:Ljava/lang/String;
    if-nez p0, :cond_1

    .line 2578
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 2531
    .restart local p0
    :cond_1
    const-string v3, "application/oct-stream"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "application/octet-stream"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2532
    :cond_2
    if-eqz p1, :cond_0

    .line 2533
    const-string v3, "."

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "."

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 2536
    .local v2, suffix:Ljava/lang/String;
    :goto_1
    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2538
    const-string v3, ".bmp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2539
    const-string v1, "image/x-ms-bmp"

    :cond_3
    :goto_2
    move-object p0, v1

    .line 2575
    goto :goto_0

    .line 2533
    .end local v2           #suffix:Ljava/lang/String;
    :cond_4
    const-string v2, ""

    goto :goto_1

    .line 2540
    .restart local v2       #suffix:Ljava/lang/String;
    :cond_5
    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2541
    const-string v1, "image/jpg"

    goto :goto_2

    .line 2542
    :cond_6
    const-string v3, ".wbmp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2543
    const-string v1, "image/vnd.wap.wbmp"

    goto :goto_2

    .line 2544
    :cond_7
    const-string v3, ".gif"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2545
    const-string v1, "image/gif"

    goto :goto_2

    .line 2546
    :cond_8
    const-string v3, ".png"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 2547
    const-string v1, "image/png"

    goto :goto_2

    .line 2548
    :cond_9
    const-string v3, ".jpeg"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 2549
    const-string v1, "image/jpeg"

    goto :goto_2

    .line 2550
    :cond_a
    const-string v3, ".vcs"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 2551
    const-string v1, "text/x-vCalendar"

    goto :goto_2

    .line 2552
    :cond_b
    const-string v3, ".vcf"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 2553
    const-string v1, "text/x-vCard"

    goto :goto_2

    .line 2554
    :cond_c
    const-string v3, ".imy"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 2555
    const-string v1, "audio/imelody"

    goto :goto_2

    .line 2557
    :cond_d
    const-string v3, ".ogg"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 2558
    const-string v1, "application/ogg"

    goto :goto_2

    .line 2559
    :cond_e
    const-string v3, ".aac"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 2560
    const-string v1, "audio/aac"

    goto :goto_2

    .line 2561
    :cond_f
    const-string v3, ".mp2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 2562
    const-string v1, "audio/mpeg"

    goto :goto_2

    .line 2565
    :cond_10
    const-string v3, ".3gp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 2566
    const-string v1, "audio/3gpp"

    goto/16 :goto_2

    .line 2568
    :cond_11
    const-string v3, "."

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_12

    const-string v3, "."

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2570
    .local v0, extension:Ljava/lang/String;
    :goto_3
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2571
    if-nez v1, :cond_3

    goto/16 :goto_0

    .line 2568
    .end local v0           #extension:Ljava/lang/String;
    :cond_12
    const-string v0, ""

    goto :goto_3
.end method

.method public static getDefaultBrokenImage(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "context"

    .prologue
    .line 3606
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200d3

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 3612
    :goto_0
    return-object v0

    .line 3609
    :catch_0
    move-exception v1

    .line 3610
    .local v1, e:Ljava/lang/OutOfMemoryError;
    const-string v2, "Mms"

    const-string v3, "getDefaultBrokenImage: out of memory: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3612
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "path"

    .prologue
    .line 2859
    if-eqz p0, :cond_0

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2866
    :cond_0
    :goto_0
    return-object p0

    .line 2862
    :cond_1
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 2863
    .local v0, index:I
    if-lez v0, :cond_0

    .line 2864
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private static getHomes()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2934
    const-string v6, "Mms/Txn"

    const-string v7, "SmsReceiverService.getHomes"

    invoke-static {v6, v7}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2936
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2937
    .local v2, names:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 2938
    .local v3, packageManager:Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2939
    .local v1, intent:Landroid/content/Intent;
    const-string v6, "android.intent.category.HOME"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2940
    const/high16 v6, 0x1

    invoke-virtual {v3, v1, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 2943
    .local v4, resolveInfo:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 2944
    .local v5, ri:Landroid/content/pm/ResolveInfo;
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2945
    const-string v6, "Mms/Txn"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "package name="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2946
    const-string v6, "Mms/Txn"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "class name="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2948
    .end local v5           #ri:Landroid/content/pm/ResolveInfo;
    :cond_0
    return-object v2
.end method

.method public static getHumanReadableSize(J)Ljava/lang/String;
    .locals 8
    .parameter "size"

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 2052
    long-to-float v0, p0

    .line 2053
    .local v0, fsize:F
    const-wide/16 v2, 0x400

    cmp-long v2, p0, v2

    if-gez v2, :cond_0

    .line 2054
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "B"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2062
    .local v1, tag:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 2055
    .end local v1           #tag:Ljava/lang/String;
    :cond_0
    const-wide/32 v2, 0x100000

    cmp-long v2, p0, v2

    if-gez v2, :cond_1

    .line 2056
    const/high16 v2, 0x4480

    div-float/2addr v0, v2

    .line 2057
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v4, "%.2f"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "KB"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #tag:Ljava/lang/String;
    goto :goto_0

    .line 2059
    .end local v1           #tag:Ljava/lang/String;
    :cond_1
    const/high16 v2, 0x4980

    div-float/2addr v0, v2

    .line 2060
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v4, "%.2f"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "MB"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #tag:Ljava/lang/String;
    goto :goto_0
.end method

.method public static getLocalNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1243
    sget-object v0, Lcom/android/mms/ui/MessageUtils;->sLocalNumber:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1244
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/MmsApp;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/MessageUtils;->sLocalNumber:Ljava/lang/String;

    .line 1246
    :cond_0
    sget-object v0, Lcom/android/mms/ui/MessageUtils;->sLocalNumber:Ljava/lang/String;

    return-object v0
.end method

.method public static getLocalNumberGemini(I)Ljava/lang/String;
    .locals 6
    .parameter "simId"

    .prologue
    .line 1664
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    int-to-long v4, p0

    invoke-static {v3, v4, v5}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSlotById(Landroid/content/Context;J)I

    move-result v1

    .line 1665
    .local v1, slotId:I
    invoke-static {}, Lcom/mediatek/encapsulation/com/mediatek/telephony/EncapsulatedTelephonyManagerEx;->getDefault()Lcom/mediatek/encapsulation/com/mediatek/telephony/EncapsulatedTelephonyManagerEx;

    move-result-object v2

    .line 1666
    .local v2, teleManager:Lcom/mediatek/encapsulation/com/mediatek/telephony/EncapsulatedTelephonyManagerEx;
    const/4 v0, 0x0

    .line 1667
    .local v0, GeminiLocalNumber:Ljava/lang/String;
    if-ltz v1, :cond_0

    .line 1668
    invoke-virtual {v2, v1}, Lcom/mediatek/encapsulation/com/mediatek/telephony/EncapsulatedTelephonyManagerEx;->getLine1Number(I)Ljava/lang/String;

    move-result-object v0

    .line 1669
    const-string v3, "Mms/Txn"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getLocalNumberGemini, Sim ID="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", slot ID="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", lineNumber="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v0

    .line 1675
    :goto_0
    return-object v3

    .line 1674
    :cond_0
    const-string v3, "Mms/Txn"

    const-string v4, "getLocalNumberGemini, illegal slot ID"

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1675
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static getMainCardDisplayName()Ljava/lang/String;
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    const-wide/16 v8, -0x5

    .line 3452
    const-string v2, ""

    .line 3453
    .local v2, mainSimDisplayName:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v0

    .line 3454
    .local v0, ct:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "sms_sim_setting"

    invoke-static {v6, v7, v8, v9}, Lcom/mediatek/encapsulation/android/provider/EncapsulatedSettings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v3

    .line 3457
    .local v3, mainSimId:J
    const-wide/16 v6, -0x1

    cmp-long v6, v3, v6

    if-eqz v6, :cond_0

    cmp-long v6, v3, v8

    if-eqz v6, :cond_0

    .line 3459
    invoke-static {v0, v3, v4}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSlotById(Landroid/content/Context;J)I

    move-result v5

    .line 3460
    .local v5, slotId:I
    invoke-static {v0, v5}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSimInfoBySlot(Landroid/content/Context;I)Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    move-result-object v1

    .line 3461
    .local v1, info:Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;
    invoke-virtual {v1}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    .line 3476
    .end local v5           #slotId:I
    :goto_0
    return-object v2

    .line 3463
    .end local v1           #info:Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;
    :cond_0
    const/4 v6, 0x0

    invoke-static {v0, v6}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSimInfoBySlot(Landroid/content/Context;I)Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    move-result-object v1

    .line 3464
    .restart local v1       #info:Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSimId()J

    move-result-wide v6

    cmp-long v6, v6, v10

    if-lez v6, :cond_1

    .line 3465
    invoke-virtual {v1}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 3467
    :cond_1
    const/4 v6, 0x1

    invoke-static {v0, v6}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSimInfoBySlot(Landroid/content/Context;I)Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    move-result-object v1

    .line 3468
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSimId()J

    move-result-wide v6

    cmp-long v6, v6, v10

    if-lez v6, :cond_2

    .line 3469
    invoke-virtual {v1}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 3471
    :cond_2
    const-string v6, "Mms/ipmsg"

    const-string v7, "error to get main sim display name"

    invoke-static {v6, v7}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getMessageDetails(Landroid/content/Context;Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "msgItem"

    .prologue
    .line 365
    if-nez p1, :cond_0

    .line 366
    const/4 v1, 0x0

    .line 382
    :goto_0
    return-object v1

    .line 369
    :cond_0
    const-string v1, "mms"

    iget-object v2, p1, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 370
    iget v0, p1, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    .line 371
    .local v0, type:I
    packed-switch v0, :pswitch_data_0

    .line 378
    :pswitch_0
    const-string v1, "Mms"

    const-string v2, "No details could be retrieved."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    const-string v1, ""

    goto :goto_0

    .line 373
    :pswitch_1
    invoke-static {p0, p1}, Lcom/android/mms/ui/MessageUtils;->getNotificationIndDetails(Landroid/content/Context;Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 376
    :pswitch_2
    invoke-static {p0, p1}, Lcom/android/mms/ui/MessageUtils;->getMultimediaMessageDetails(Landroid/content/Context;Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 382
    .end local v0           #type:I
    :cond_1
    invoke-static {p0, p1}, Lcom/android/mms/ui/MessageUtils;->getTextMessageDetails(Landroid/content/Context;Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 371
    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static getMmsDetail(Landroid/content/Context;Landroid/net/Uri;II)Ljava/lang/String;
    .locals 10
    .parameter "context"
    .parameter "uri"
    .parameter "size"
    .parameter "msgBox"

    .prologue
    .line 2247
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 2250
    .local v3, res:Landroid/content/res/Resources;
    :try_start_0
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v2

    check-cast v2, Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2257
    .local v2, msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2259
    .local v0, details:Ljava/lang/StringBuilder;
    invoke-static {p0, v0, v3, v2}, Lcom/android/mms/ui/MessageUtils;->initializeMsgDetails(Landroid/content/Context;Ljava/lang/StringBuilder;Landroid/content/res/Resources;Lcom/google/android/mms/pdu/MultimediaMessagePdu;)V

    .line 2262
    new-instance v6, Lcom/mediatek/encapsulation/com/google/android/mms/pdu/EncapsulatedMultimediaMessagePdu;

    invoke-direct {v6, v2}, Lcom/mediatek/encapsulation/com/google/android/mms/pdu/EncapsulatedMultimediaMessagePdu;-><init>(Lcom/google/android/mms/pdu/MultimediaMessagePdu;)V

    invoke-virtual {v6}, Lcom/mediatek/encapsulation/com/google/android/mms/pdu/EncapsulatedMultimediaMessagePdu;->getDateSent()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    const/4 v6, 0x1

    if-ne p3, v6, :cond_0

    .line 2264
    const/16 v6, 0xa

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2265
    const v6, 0x7f0b02c9

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2266
    new-instance v6, Lcom/mediatek/encapsulation/com/google/android/mms/pdu/EncapsulatedMultimediaMessagePdu;

    invoke-direct {v6, v2}, Lcom/mediatek/encapsulation/com/google/android/mms/pdu/EncapsulatedMultimediaMessagePdu;-><init>(Lcom/google/android/mms/pdu/MultimediaMessagePdu;)V

    invoke-virtual {v6}, Lcom/mediatek/encapsulation/com/google/android/mms/pdu/EncapsulatedMultimediaMessagePdu;->getDateSent()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    const/4 v8, 0x1

    invoke-static {p0, v6, v7, v8}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2271
    :cond_0
    const/16 v6, 0xa

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2272
    const/4 v6, 0x3

    if-ne p3, v6, :cond_2

    .line 2273
    const v6, 0x7f0b02cb

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2280
    :goto_0
    invoke-virtual {v2}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getDate()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    const/4 v8, 0x1

    invoke-static {p0, v6, v7, v8}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2284
    const/16 v6, 0xa

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2285
    const v6, 0x7f0b02cc

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2287
    invoke-virtual {v2}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getSubject()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v5

    .line 2288
    .local v5, subject:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v5, :cond_1

    .line 2289
    invoke-virtual {v5}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v4

    .line 2292
    .local v4, subStr:Ljava/lang/String;
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2295
    .end local v4           #subStr:Ljava/lang/String;
    :cond_1
    invoke-static {v0, p0, v2, p2, v3}, Lcom/android/mms/ui/MessageUtils;->formatDetails(Ljava/lang/StringBuilder;Landroid/content/Context;Lcom/google/android/mms/pdu/MultimediaMessagePdu;ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v6

    .end local v0           #details:Ljava/lang/StringBuilder;
    .end local v2           #msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    .end local v5           #subject:Lcom/google/android/mms/pdu/EncodedStringValue;
    :goto_1
    return-object v6

    .line 2252
    :catch_0
    move-exception v1

    .line 2253
    .local v1, e:Lcom/google/android/mms/MmsException;
    const-string v6, "Mms"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to load the message: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2254
    const v6, 0x7f0b02c0

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 2274
    .end local v1           #e:Lcom/google/android/mms/MmsException;
    .restart local v0       #details:Ljava/lang/StringBuilder;
    .restart local v2       #msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    :cond_2
    const/4 v6, 0x1

    if-ne p3, v6, :cond_3

    .line 2275
    const v6, 0x7f0b02ca

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2277
    :cond_3
    const v6, 0x7f0b02c9

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private static getMmsPreferencePlugin(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 3682
    sget-object v1, Lcom/android/mms/ui/MessageUtils;->sMmsPreference:Lcom/mediatek/mms/ext/IMmsPreference;

    if-eqz v1, :cond_0

    .line 3693
    :goto_0
    return-void

    .line 3686
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/mediatek/mms/ext/IMmsPreference;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Landroid/content/pm/Signature;

    invoke-static {v1, v2, v3}, Lcom/mediatek/encapsulation/com/mediatek/pluginmanager/EncapsulatedPluginManager;->createPluginObject(Landroid/content/Context;Ljava/lang/String;[Landroid/content/pm/Signature;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/mms/ext/IMmsPreference;

    sput-object v1, Lcom/android/mms/ui/MessageUtils;->sMmsPreference:Lcom/mediatek/mms/ext/IMmsPreference;

    .line 3688
    const-string v1, "Mms/Txn"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "operator sMmsPreference = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/mms/ui/MessageUtils;->sMmsPreference:Lcom/mediatek/mms/ext/IMmsPreference;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/util/AndroidException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3689
    :catch_0
    move-exception v0

    .line 3690
    .local v0, e:Landroid/util/AndroidException;
    new-instance v1, Lcom/mediatek/mms/ext/MmsPreferenceImpl;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/mediatek/mms/ext/MmsPreferenceImpl;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/mms/ui/MessageUtils;->sMmsPreference:Lcom/mediatek/mms/ext/IMmsPreference;

    .line 3691
    const-string v1, "Mms/Txn"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "default sMmsPreference = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/mms/ui/MessageUtils;->sMmsPreference:Lcom/mediatek/mms/ext/IMmsPreference;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getMmsReportStatus(Landroid/content/Context;J)Ljava/util/List;
    .locals 11
    .parameter "context"
    .parameter "messageId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J)",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 3252
    const-string v0, "Mms"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMmsReportStatus(): messageId = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3253
    sget-object v0, Landroid/provider/Telephony$Mms;->REPORT_STATUS_URI:Landroid/net/Uri;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 3254
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v0, 0x3

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v5, "address"

    aput-object v5, v3, v0

    const/4 v0, 0x1

    const-string v5, "delivery_status"

    aput-object v5, v3, v0

    const/4 v0, 0x2

    const-string v5, "read_status"

    aput-object v5, v3, v0

    move-object v0, p0

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 3256
    .local v7, c:Landroid/database/Cursor;
    if-nez v7, :cond_0

    .line 3268
    :goto_0
    return-object v4

    .line 3260
    :cond_0
    :try_start_0
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 3261
    .local v10, mmsReportStatusList:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;>;"
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3262
    const/4 v8, 0x1

    .line 3263
    .local v8, columnDeliveryStatus:I
    const/4 v9, 0x2

    .line 3264
    .local v9, columnReadStatus:I
    new-instance v0, Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-direct {v0, v1, v3}, Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;-><init>(II)V

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 3268
    .end local v8           #columnDeliveryStatus:I
    .end local v9           #columnReadStatus:I
    .end local v10           #mmsReportStatusList:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;>;"
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .restart local v10       #mmsReportStatusList:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;>;"
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v4, v10

    goto :goto_0
.end method

.method private static getMultimediaMessageDetails(Landroid/content/Context;Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;
    .locals 20
    .parameter "context"
    .parameter "msgItem"

    .prologue
    .line 516
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    const/16 v3, 0x82

    if-ne v2, v3, :cond_0

    .line 517
    invoke-static/range {p0 .. p1}, Lcom/android/mms/ui/MessageUtils;->getNotificationIndDetails(Landroid/content/Context;Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;

    move-result-object v2

    .line 599
    :goto_0
    return-object v2

    .line 520
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 521
    .local v9, details:Ljava/lang/StringBuilder;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 524
    .local v13, res:Landroid/content/res/Resources;
    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    iget-wide v3, v0, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v17

    .line 527
    .local v17, uri:Landroid/net/Uri;
    const/16 v2, 0xd

    invoke-static {v2}, Lcom/android/mms/MmsPluginManager;->getMmsPluginObject(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/mms/ext/IMmsUtils;

    .line 529
    .local v1, mmsUtils:Lcom/mediatek/mms/ext/IMmsUtils;
    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v11

    check-cast v11, Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 537
    .local v11, msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    move-object/from16 v0, p0

    invoke-static {v0, v9, v13, v11}, Lcom/android/mms/ui/MessageUtils;->initializeMsgDetails(Landroid/content/Context;Ljava/lang/StringBuilder;Landroid/content/res/Resources;Lcom/google/android/mms/pdu/MultimediaMessagePdu;)V

    .line 540
    new-instance v2, Lcom/mediatek/encapsulation/com/google/android/mms/pdu/EncapsulatedMultimediaMessagePdu;

    invoke-direct {v2, v11}, Lcom/mediatek/encapsulation/com/google/android/mms/pdu/EncapsulatedMultimediaMessagePdu;-><init>(Lcom/google/android/mms/pdu/MultimediaMessagePdu;)V

    invoke-virtual {v2}, Lcom/mediatek/encapsulation/com/google/android/mms/pdu/EncapsulatedMultimediaMessagePdu;->getDateSent()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 542
    const/16 v2, 0xa

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 543
    const v2, 0x7f0b02c9

    invoke-virtual {v13, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    const-string v8, ""

    .line 546
    .local v8, dateStr:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsConfig;->isSupportCTFeature()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 547
    const-wide/16 v3, 0x0

    new-instance v2, Lcom/mediatek/encapsulation/com/google/android/mms/pdu/EncapsulatedMultimediaMessagePdu;

    invoke-direct {v2, v11}, Lcom/mediatek/encapsulation/com/google/android/mms/pdu/EncapsulatedMultimediaMessagePdu;-><init>(Lcom/google/android/mms/pdu/MultimediaMessagePdu;)V

    invoke-virtual {v2}, Lcom/mediatek/encapsulation/com/google/android/mms/pdu/EncapsulatedMultimediaMessagePdu;->getDateSent()J

    move-result-wide v5

    const-wide/16 v18, 0x3e8

    mul-long v5, v5, v18

    const/4 v7, 0x1

    move-object/from16 v2, p0

    invoke-interface/range {v1 .. v8}, Lcom/mediatek/mms/ext/IMmsUtils;->formatDateAndTimeStampString(Landroid/content/Context;JJZLjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 555
    :goto_1
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 559
    .end local v8           #dateStr:Ljava/lang/String;
    :cond_1
    const/16 v2, 0xa

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 561
    move-object/from16 v0, p1

    iget v12, v0, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    .line 563
    .local v12, msgBox:I
    const/4 v2, 0x3

    if-ne v12, v2, :cond_4

    .line 564
    const v2, 0x7f0b02cb

    invoke-virtual {v13, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    :goto_2
    const-string v8, ""

    .line 572
    .restart local v8       #dateStr:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsConfig;->isSupportCTFeature()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 573
    const-wide/16 v3, 0x0

    invoke-virtual {v11}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getDate()J

    move-result-wide v5

    const-wide/16 v18, 0x3e8

    mul-long v5, v5, v18

    const/4 v7, 0x1

    move-object/from16 v2, p0

    invoke-interface/range {v1 .. v8}, Lcom/mediatek/mms/ext/IMmsUtils;->formatDateAndTimeStampString(Landroid/content/Context;JJZLjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 579
    :goto_3
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 582
    const/16 v2, 0xa

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 583
    const v2, 0x7f0b02cc

    invoke-virtual {v13, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 586
    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/mms/ui/MessageItem;->mMessageSize:I

    .line 588
    .local v14, size:I
    invoke-virtual {v11}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getSubject()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v16

    .line 589
    .local v16, subject:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v16, :cond_2

    .line 590
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v15

    .line 595
    .local v15, subStr:Ljava/lang/String;
    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 599
    .end local v15           #subStr:Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    invoke-static {v9, v0, v11, v14, v13}, Lcom/android/mms/ui/MessageUtils;->formatDetails(Ljava/lang/StringBuilder;Landroid/content/Context;Lcom/google/android/mms/pdu/MultimediaMessagePdu;ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 531
    .end local v8           #dateStr:Ljava/lang/String;
    .end local v11           #msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    .end local v12           #msgBox:I
    .end local v14           #size:I
    .end local v16           #subject:Lcom/google/android/mms/pdu/EncodedStringValue;
    :catch_0
    move-exception v10

    .line 532
    .local v10, e:Lcom/google/android/mms/MmsException;
    const-string v2, "Mms"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to load the message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 533
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b02c0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 551
    .end local v10           #e:Lcom/google/android/mms/MmsException;
    .restart local v8       #dateStr:Ljava/lang/String;
    .restart local v11       #msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    :cond_3
    new-instance v2, Lcom/mediatek/encapsulation/com/google/android/mms/pdu/EncapsulatedMultimediaMessagePdu;

    invoke-direct {v2, v11}, Lcom/mediatek/encapsulation/com/google/android/mms/pdu/EncapsulatedMultimediaMessagePdu;-><init>(Lcom/google/android/mms/pdu/MultimediaMessagePdu;)V

    invoke-virtual {v2}, Lcom/mediatek/encapsulation/com/google/android/mms/pdu/EncapsulatedMultimediaMessagePdu;->getDateSent()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3, v4}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_1

    .line 565
    .end local v8           #dateStr:Ljava/lang/String;
    .restart local v12       #msgBox:I
    :cond_4
    const/4 v2, 0x1

    if-ne v12, v2, :cond_5

    .line 566
    const v2, 0x7f0b02ca

    invoke-virtual {v13, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 568
    :cond_5
    const v2, 0x7f0b02c9

    invoke-virtual {v13, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 576
    .restart local v8       #dateStr:Ljava/lang/String;
    :cond_6
    invoke-virtual {v11}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getDate()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3, v4}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_3
.end method

.method private static getNotificationIndDetails(Landroid/content/Context;Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;
    .locals 14
    .parameter "context"
    .parameter "msgItem"

    .prologue
    .line 447
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 448
    .local v0, details:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 451
    .local v4, res:Landroid/content/res/Resources;
    sget-object v7, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v8, p1, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-static {v7, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 457
    .local v6, uri:Landroid/net/Uri;
    :try_start_0
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v3

    check-cast v3, Lcom/google/android/mms/pdu/NotificationInd;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 465
    .local v3, nInd:Lcom/google/android/mms/pdu/NotificationInd;
    const v7, 0x7f0b02c2

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    const v7, 0x7f0b02c5

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    const/16 v7, 0xa

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 471
    const v7, 0x7f0b0012

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    iget-object v7, p1, Lcom/android/mms/ui/MessageItem;->mServiceCenter:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, p1, Lcom/android/mms/ui/MessageItem;->mServiceCenter:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    invoke-virtual {v3}, Lcom/google/android/mms/pdu/NotificationInd;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/mms/ui/MessageUtils;->extractEncStr(Landroid/content/Context;Lcom/google/android/mms/pdu/EncodedStringValue;)Ljava/lang/String;

    move-result-object v2

    .line 477
    .local v2, from:Ljava/lang/String;
    const/16 v7, 0xa

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 478
    const v7, 0x7f0b02c6

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .end local v2           #from:Ljava/lang/String;
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    const/16 v7, 0xa

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 484
    const v7, 0x7f0b0240

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v3}, Lcom/google/android/mms/pdu/NotificationInd;->getExpiry()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    mul-long/2addr v10, v12

    const/4 v12, 0x1

    invoke-static {p0, v10, v11, v12}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v4, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    const/16 v7, 0xa

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 491
    const v7, 0x7f0b02cc

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    invoke-virtual {v3}, Lcom/google/android/mms/pdu/NotificationInd;->getSubject()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v5

    .line 494
    .local v5, subject:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v5, :cond_0

    .line 495
    invoke-virtual {v5}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    :cond_0
    const/16 v7, 0xa

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 500
    const v7, 0x7f0b02d2

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    new-instance v7, Ljava/lang/String;

    invoke-virtual {v3}, Lcom/google/android/mms/pdu/NotificationInd;->getMessageClass()[B

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    const/16 v7, 0xa

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 505
    const v7, 0x7f0b02cd

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    invoke-virtual {v3}, Lcom/google/android/mms/pdu/NotificationInd;->getMessageSize()J

    move-result-wide v7

    const-wide/16 v9, 0x3ff

    add-long/2addr v7, v9

    const-wide/16 v9, 0x400

    div-long/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    const v7, 0x7f0b0241

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .end local v3           #nInd:Lcom/google/android/mms/pdu/NotificationInd;
    .end local v5           #subject:Lcom/google/android/mms/pdu/EncodedStringValue;
    :goto_2
    return-object v7

    .line 459
    :catch_0
    move-exception v1

    .line 460
    .local v1, e:Lcom/google/android/mms/MmsException;
    const-string v7, "Mms"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to load the message: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 461
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b02c0

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    .line 472
    .end local v1           #e:Lcom/google/android/mms/MmsException;
    .restart local v3       #nInd:Lcom/google/android/mms/pdu/NotificationInd;
    :cond_1
    const-string v7, ""

    goto/16 :goto_0

    .line 479
    .restart local v2       #from:Ljava/lang/String;
    :cond_2
    const v7, 0x7f0b0294

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1
.end method

.method public static getPreferenceValueFloat(Landroid/content/Context;Ljava/lang/String;F)F
    .locals 3
    .parameter "context"
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 2583
    const-string v1, "com.android.mms_preferences"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2584
    .local v0, sp:Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    return v1
.end method

.method private static getPriorityDescription(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "PriorityValue"

    .prologue
    .line 801
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 802
    .local v0, res:Landroid/content/res/Resources;
    packed-switch p1, :pswitch_data_0

    .line 809
    :pswitch_0
    const v1, 0x7f0b02d0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    .line 804
    :pswitch_1
    const v1, 0x7f0b02cf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 806
    :pswitch_2
    const v1, 0x7f0b02d1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 802
    nop

    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getResizedBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "bitmap"
    .parameter "maxWidth"
    .parameter "maxHeight"

    .prologue
    const/4 v11, 0x0

    const-wide/high16 v9, 0x3ff0

    .line 2454
    if-nez p0, :cond_1

    .line 2483
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 2457
    .restart local p0
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 2458
    .local v5, originWidth:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 2460
    .local v4, originHeight:I
    if-ge v5, p1, :cond_2

    if-lt v4, p2, :cond_0

    .line 2464
    :cond_2
    move v6, v5

    .line 2465
    .local v6, width:I
    move v0, v4

    .line 2467
    .local v0, height:I
    if-le v5, p1, :cond_3

    .line 2468
    move v6, p1

    .line 2469
    int-to-double v7, v5

    mul-double/2addr v7, v9

    int-to-double v9, p1

    div-double v1, v7, v9

    .line 2470
    .local v1, i:D
    int-to-double v7, v4

    div-double/2addr v7, v1

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    double-to-int v0, v7

    .line 2471
    invoke-static {p0, v6, v0, v11}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .local v3, mBitmap:Landroid/graphics/Bitmap;
    move-object p0, v3

    .line 2472
    goto :goto_0

    .line 2475
    .end local v1           #i:D
    .end local v3           #mBitmap:Landroid/graphics/Bitmap;
    :cond_3
    if-le v4, p2, :cond_0

    .line 2476
    move v0, p2

    .line 2477
    int-to-double v7, v4

    mul-double/2addr v7, v9

    int-to-double v9, p2

    div-double v1, v7, v9

    .line 2478
    .restart local v1       #i:D
    int-to-double v7, v5

    div-double/2addr v7, v1

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    double-to-int v6, v7

    .line 2479
    invoke-static {p0, v6, v0, v11}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .restart local v3       #mBitmap:Landroid/graphics/Bitmap;
    move-object p0, v3

    .line 2480
    goto :goto_0
.end method

.method public static getSimInfo(Landroid/content/Context;I)Ljava/lang/CharSequence;
    .locals 3
    .parameter "context"
    .parameter "simId"

    .prologue
    .line 1815
    const-string v0, "Mms"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSimInfo simId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1817
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 1818
    const-string v0, ""

    .line 1825
    :goto_0
    return-object v0

    .line 1820
    :cond_0
    sget-object v0, Lcom/android/mms/ui/MessageUtils;->simInfoMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1821
    const-string v0, "Mms"

    const-string v1, "MessageUtils.getSimInfo(): getCache"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1822
    sget-object v0, Lcom/android/mms/ui/MessageUtils;->simInfoMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    goto :goto_0

    .line 1825
    :cond_1
    invoke-static {p0, p1}, Lcom/android/mms/ui/MessageUtils;->getSimInfoSync(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public static getSimInfoSync(Landroid/content/Context;I)Ljava/lang/CharSequence;
    .locals 12
    .parameter "context"
    .parameter "simId"

    .prologue
    const/16 v11, 0x21

    const/4 v10, 0x0

    .line 1830
    int-to-long v6, p1

    invoke-static {p0, v6, v7}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSIMInfoById(Landroid/content/Context;J)Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    move-result-object v5

    .line 1831
    .local v5, simInfo:Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;
    if-eqz v5, :cond_3

    .line 1832
    invoke-virtual {v5}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    .line 1834
    .local v3, displayName:Ljava/lang/String;
    const-string v6, "Mms"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SIMInfo simId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSimId()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mDisplayName="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1836
    if-nez v3, :cond_0

    .line 1837
    sget-object v6, Lcom/android/mms/ui/MessageUtils;->simInfoMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, ""

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1838
    const-string v0, ""

    .line 1870
    .end local v3           #displayName:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 1841
    .restart local v3       #displayName:Ljava/lang/String;
    :cond_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1842
    .local v0, buf:Landroid/text/SpannableStringBuilder;
    const-string v6, "   "

    invoke-virtual {v0, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1845
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x7

    if-ge v6, v7, :cond_1

    .line 1846
    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1852
    :goto_1
    const-string v6, "  "

    invoke-virtual {v0, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1855
    invoke-virtual {v5}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSlot()I

    move-result v6

    if-ltz v6, :cond_2

    invoke-virtual {v5}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSimBackgroundLightRes()I

    move-result v2

    .line 1857
    .local v2, colorRes:I
    :goto_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 1858
    .local v4, drawable:Landroid/graphics/drawable/Drawable;
    new-instance v6, Lcom/mediatek/encapsulation/android/text/style/EncapsulatedBackgroundImageSpan;

    invoke-direct {v6, v2, v4}, Lcom/mediatek/encapsulation/android/text/style/EncapsulatedBackgroundImageSpan;-><init>(ILandroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    invoke-virtual {v0, v6, v10, v7, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1863
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070008

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 1864
    .local v1, color:I
    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v6, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    invoke-virtual {v0, v6, v10, v7, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1866
    sget-object v6, Lcom/android/mms/ui/MessageUtils;->simInfoMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1848
    .end local v1           #color:I
    .end local v2           #colorRes:I
    .end local v4           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x4

    invoke-virtual {v3, v10, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "..."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_1

    .line 1855
    :cond_2
    sget v2, Lcom/mediatek/encapsulation/com/mediatek/internal/EncapsulatedR$drawable;->sim_background_locked:I

    goto :goto_2

    .line 1869
    .end local v0           #buf:Landroid/text/SpannableStringBuilder;
    .end local v3           #displayName:Ljava/lang/String;
    :cond_3
    sget-object v6, Lcom/android/mms/ui/MessageUtils;->simInfoMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, ""

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1870
    const-string v0, ""

    goto/16 :goto_0
.end method

.method public static getSimStatus(ILjava/util/List;Lcom/mediatek/encapsulation/com/mediatek/telephony/EncapsulatedTelephonyManagerEx;)I
    .locals 7
    .parameter "id"
    .parameter
    .parameter "telephonyManager"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;",
            ">;",
            "Lcom/mediatek/encapsulation/com/mediatek/telephony/EncapsulatedTelephonyManagerEx;",
            ")I"
        }
    .end annotation

    .prologue
    .local p1, simInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;>;"
    const/4 v4, -0x1

    .line 2110
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    invoke-virtual {v3}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSlot()I

    move-result v1

    .line 2111
    .local v1, slotId:I
    if-eq v1, v4, :cond_1

    .line 2112
    invoke-static {}, Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;->getInstance()Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;

    move-result-object v2

    .line 2113
    .local v2, teleService:Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;
    if-nez v2, :cond_0

    move v3, v4

    .line 2123
    .end local v2           #teleService:Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;
    :goto_0
    return v3

    .line 2117
    .restart local v2       #teleService:Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;
    :cond_0
    :try_start_0
    invoke-virtual {v2, v1}, Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;->getSimIndicatorStateGemini(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    .line 2118
    :catch_0
    move-exception v0

    .line 2119
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "Mms"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSimIndicatorStateGemini is failed.\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v4

    .line 2120
    goto :goto_0

    .end local v0           #e:Landroid/os/RemoteException;
    .end local v2           #teleService:Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;
    :cond_1
    move v3, v4

    .line 2123
    goto :goto_0
.end method

.method public static getSimStatusResource(I)I
    .locals 3
    .parameter "state"

    .prologue
    .line 2066
    const-string v0, "Mms"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SIM state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2067
    packed-switch p0, :pswitch_data_0

    .line 2105
    :pswitch_0
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 2070
    :pswitch_1
    sget v0, Lcom/mediatek/encapsulation/com/mediatek/internal/EncapsulatedR$drawable;->sim_radio_off:I

    goto :goto_0

    .line 2074
    :pswitch_2
    sget v0, Lcom/mediatek/encapsulation/com/mediatek/internal/EncapsulatedR$drawable;->sim_locked:I

    goto :goto_0

    .line 2078
    :pswitch_3
    sget v0, Lcom/mediatek/encapsulation/com/mediatek/internal/EncapsulatedR$drawable;->sim_invalid:I

    goto :goto_0

    .line 2082
    :pswitch_4
    sget v0, Lcom/mediatek/encapsulation/com/mediatek/internal/EncapsulatedR$drawable;->sim_searching:I

    goto :goto_0

    .line 2086
    :pswitch_5
    sget v0, Lcom/mediatek/encapsulation/com/mediatek/internal/EncapsulatedR$drawable;->sim_roaming:I

    goto :goto_0

    .line 2090
    :pswitch_6
    sget v0, Lcom/mediatek/encapsulation/com/mediatek/internal/EncapsulatedR$drawable;->sim_connected:I

    goto :goto_0

    .line 2094
    :pswitch_7
    sget v0, Lcom/mediatek/encapsulation/com/mediatek/internal/EncapsulatedR$drawable;->sim_roaming_connected:I

    goto :goto_0

    .line 2067
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public static getSmsEncodingType(Landroid/content/Context;)I
    .locals 5
    .parameter "context"

    .prologue
    .line 2201
    const/4 v2, 0x0

    .line 2202
    .local v2, type:I
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2203
    .local v1, prefs:Landroid/content/SharedPreferences;
    const/4 v0, 0x0

    .line 2204
    .local v0, encodingType:Ljava/lang/String;
    const-string v3, "pref_key_sms_input_mode"

    const-string v4, "Automatic"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2206
    const-string v3, "Unicode"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2207
    const/4 v2, 0x3

    .line 2211
    :cond_0
    :goto_0
    return v2

    .line 2208
    :cond_1
    const-string v3, "GSM alphabet"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2209
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static getStatusResourceId(Landroid/content/Context;Lcom/android/mms/ui/MessageItem;)I
    .locals 7
    .parameter "context"
    .parameter "msgItem"

    .prologue
    const v3, 0x7f0200f5

    const v2, 0x7f0200f2

    const/4 v1, 0x0

    .line 3195
    if-nez p1, :cond_1

    .line 3196
    const-string v0, "Mms"

    const-string v2, "getStatusResourceId(): MsgItem is null!"

    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3248
    :cond_0
    :goto_0
    return v1

    .line 3199
    :cond_1
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isSimMsg()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3200
    const-string v0, "Mms"

    const-string v2, "getStatusResourceId(): SIM message."

    invoke-static {v0, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3203
    :cond_2
    const-string v0, "Mms"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getStatusResourceId(): MsgId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p1, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3204
    const-string v4, "Mms"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getStatusResourceId(): isMms = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", SENTBOX = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v0, p1, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    const/4 v6, 0x2

    if-ne v0, v6, :cond_3

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", has read report = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v5, p1, Lcom/android/mms/ui/MessageItem;->mHasReadReport:Z

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", has delivery report = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v5, p1, Lcom/android/mms/ui/MessageItem;->mHasDeliveryReport:Z

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3208
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3209
    iget-boolean v0, p1, Lcom/android/mms/ui/MessageItem;->mHasReadReport:Z

    if-eqz v0, :cond_4

    .line 3210
    const v1, 0x7f0200f4

    goto :goto_0

    :cond_3
    move v0, v1

    .line 3204
    goto :goto_1

    .line 3212
    :cond_4
    iget-boolean v0, p1, Lcom/android/mms/ui/MessageItem;->mHasDeliveryReport:Z

    if-eqz v0, :cond_5

    .line 3213
    const v1, 0x7f0200f3

    goto/16 :goto_0

    .line 3216
    :cond_5
    iget v0, p1, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    :pswitch_1
    move v1, v2

    .line 3218
    goto/16 :goto_0

    .line 3221
    :pswitch_2
    const-string v0, "Mms/Txn"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mms is sending, uri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v3

    .line 3222
    goto/16 :goto_0

    .line 3230
    :cond_6
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3231
    iget v0, p1, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    packed-switch v0, :pswitch_data_1

    :pswitch_3
    goto/16 :goto_0

    :pswitch_4
    move v1, v2

    .line 3237
    goto/16 :goto_0

    :pswitch_5
    move v1, v3

    .line 3234
    goto/16 :goto_0

    .line 3216
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 3231
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public static getStorageFile(Ljava/lang/String;Landroid/content/Context;)Ljava/io/File;
    .locals 8
    .parameter "filename"
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 3431
    const-string v0, ""

    .line 3432
    .local v0, dir:Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/encapsulation/android/os/storage/EncapsulatedStorageManager;->getDefaultPath()Ljava/lang/String;

    move-result-object v3

    .line 3433
    .local v3, path:Ljava/lang/String;
    if-nez v3, :cond_1

    .line 3434
    const-string v5, "Mms"

    const-string v6, "default path is null"

    invoke-static {v5, v6}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v4

    .line 3448
    :cond_0
    :goto_0
    return-object v1

    .line 3437
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3438
    const-string v5, "Mms"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "copyPart,  file full path is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/encapsulation/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3439
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/mms/ui/MessageUtils;->getUniqueDestination(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 3442
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    .line 3443
    .local v2, parentFile:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-nez v5, :cond_0

    .line 3444
    const-string v5, "Mms"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[MMS] copyPart: mkdirs for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " failed!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v4

    .line 3446
    goto/16 :goto_0
.end method

.method private static getStorageLowPlugin(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 3663
    sget-object v1, Lcom/android/mms/ui/MessageUtils;->sStorageLowPlugin:Lcom/mediatek/mms/ext/IStorageLow;

    if-eqz v1, :cond_0

    .line 3674
    :goto_0
    return-void

    .line 3667
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/mediatek/mms/ext/IStorageLow;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Landroid/content/pm/Signature;

    invoke-static {v1, v2, v3}, Lcom/mediatek/encapsulation/com/mediatek/pluginmanager/EncapsulatedPluginManager;->createPluginObject(Landroid/content/Context;Ljava/lang/String;[Landroid/content/pm/Signature;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/mms/ext/IStorageLow;

    sput-object v1, Lcom/android/mms/ui/MessageUtils;->sStorageLowPlugin:Lcom/mediatek/mms/ext/IStorageLow;

    .line 3669
    const-string v1, "Mms/Txn"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "operator sStorageLowPlugin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/mms/ui/MessageUtils;->sStorageLowPlugin:Lcom/mediatek/mms/ext/IStorageLow;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/util/AndroidException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3670
    :catch_0
    move-exception v0

    .line 3671
    .local v0, e:Landroid/util/AndroidException;
    new-instance v1, Lcom/mediatek/mms/ext/StorageLowImpl;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/mediatek/mms/ext/StorageLowImpl;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/mms/ui/MessageUtils;->sStorageLowPlugin:Lcom/mediatek/mms/ext/IStorageLow;

    .line 3672
    const-string v1, "Mms/Txn"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "default sStorageLowPlugin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/mms/ui/MessageUtils;->sStorageLowPlugin:Lcom/mediatek/mms/ext/IStorageLow;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getStorageStatus(Landroid/content/Context;)Ljava/lang/String;
    .locals 22
    .parameter "context"

    .prologue
    .line 1980
    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "_id"

    aput-object v5, v4, v3

    const/4 v3, 0x1

    const-string v5, "m_size"

    aput-object v5, v4, v3

    .line 1983
    .local v4, PROJECTION:[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1984
    .local v2, cr:Landroid/content/ContentResolver;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    .line 1985
    .local v17, res:Landroid/content/res/Resources;
    const/4 v11, 0x0

    .line 1987
    .local v11, cursor:Landroid/database/Cursor;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 1989
    .local v10, buffer:Ljava/lang/StringBuilder;
    sget-object v3, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 1990
    const/16 v16, 0x0

    .line 1991
    .local v16, mmsCount:I
    if-eqz v11, :cond_0

    .line 1992
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v16

    .line 1994
    :cond_0
    const v3, 0x7f0b008c

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1995
    const-string v3, "\n"

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1997
    const-wide/16 v18, 0x0

    .line 1998
    .local v18, size:J
    if-eqz v11, :cond_3

    .line 1999
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2001
    :cond_1
    const/4 v3, 0x1

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v5, v3

    add-long v18, v18, v5

    .line 2002
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2004
    :cond_2
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 2006
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f0b0103

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v18 .. v19}, Lcom/android/mms/ui/MessageUtils;->getHumanReadableSize(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2007
    const-string v3, "\n"

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2009
    invoke-static/range {p0 .. p0}, Lcom/android/mms/ui/MessageUtils;->getAttachmentSize(Landroid/content/Context;)J

    move-result-wide v18

    .line 2010
    const-string v3, "Mms"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mms attachment size = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v18

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2011
    invoke-static/range {v18 .. v19}, Lcom/android/mms/ui/MessageUtils;->getHumanReadableSize(J)Ljava/lang/String;

    move-result-object v20

    .line 2012
    .local v20, sizeTag:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f0b008e

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2013
    const-string v3, "\n"

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2015
    sget-object v3, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 2016
    const/16 v21, 0x0

    .line 2017
    .local v21, smsCount:I
    if-eqz v11, :cond_4

    .line 2018
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v21

    .line 2019
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 2021
    :cond_4
    const v3, 0x7f0b008d

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2022
    const-string v3, "\n"

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2024
    new-instance v13, Ljava/io/File;

    const-string v3, "/data/data/com.android.providers.telephony/databases/mmssms.db"

    invoke-direct {v13, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2025
    .local v13, db:Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v14

    .line 2026
    .local v14, dbsize:J
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f0b008f

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v14, v15}, Lcom/android/mms/ui/MessageUtils;->getHumanReadableSize(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2027
    const-string v3, "\n"

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2029
    new-instance v12, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v12, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 2030
    .local v12, datafs:Landroid/os/StatFs;
    invoke-virtual {v12}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v3

    invoke-virtual {v12}, Landroid/os/StatFs;->getBlockSize()I

    move-result v5

    mul-int/2addr v3, v5

    int-to-long v8, v3

    .line 2031
    .local v8, availableSpace:J
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f0b0090

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v8, v9}, Lcom/android/mms/ui/MessageUtils;->getHumanReadableSize(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2032
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static getTextMessageDetails(Landroid/content/Context;Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;
    .locals 14
    .parameter "context"
    .parameter "msgItem"

    .prologue
    .line 696
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 697
    .local v10, details:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 700
    .local v12, res:Landroid/content/res/Resources;
    const v1, 0x7f0b02c2

    invoke-virtual {v12, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 702
    iget-wide v1, p1, Lcom/android/mms/ui/MessageItem;->mIpMessageId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_5

    .line 703
    invoke-static {p0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getResourceManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ResourceManager;

    move-result-object v1

    const/16 v2, 0x8a

    invoke-virtual {v1, v2}, Lcom/mediatek/mms/ipmessage/ResourceManager;->getSingleString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 709
    :goto_0
    const/16 v1, 0xa

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 711
    iget v13, p1, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    .line 713
    .local v13, smsType:I
    invoke-static {v13}, Landroid/provider/Telephony$Sms;->isOutgoingFolder(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 714
    const v1, 0x7f0b02c7

    invoke-virtual {v12, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 719
    :goto_1
    iget-object v1, p1, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 723
    const/16 v1, 0xd

    invoke-static {v1}, Lcom/android/mms/MmsPluginManager;->getMmsPluginObject(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mms/ext/IMmsUtils;

    .line 726
    .local v0, mmsUtils:Lcom/mediatek/mms/ext/IMmsUtils;
    iget-wide v1, p1, Lcom/android/mms/ui/MessageItem;->mSmsSentDate:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    const/4 v1, 0x1

    if-ne v13, v1, :cond_0

    .line 727
    const/16 v1, 0xa

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 728
    const v1, 0x7f0b02c9

    invoke-virtual {v12, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 729
    const-string v7, ""

    .line 731
    .local v7, dateStr:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsConfig;->isSupportCTFeature()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 732
    const-wide/16 v2, 0x0

    iget-wide v4, p1, Lcom/android/mms/ui/MessageItem;->mSmsSentDate:J

    const/4 v6, 0x1

    move-object v1, p0

    invoke-interface/range {v0 .. v7}, Lcom/mediatek/mms/ext/IMmsUtils;->formatDateAndTimeStampString(Landroid/content/Context;JJZLjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 738
    :goto_2
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 742
    .end local v7           #dateStr:Ljava/lang/String;
    :cond_0
    iget-wide v1, p1, Lcom/android/mms/ui/MessageItem;->mSmsDate:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    .line 743
    const/16 v1, 0xa

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 744
    const/4 v1, 0x3

    if-ne v13, v1, :cond_8

    .line 745
    const v1, 0x7f0b02cb

    invoke-virtual {v12, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 751
    :goto_3
    const-string v7, ""

    .line 753
    .restart local v7       #dateStr:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsConfig;->isSupportCTFeature()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 754
    const-wide/16 v2, 0x0

    iget-wide v4, p1, Lcom/android/mms/ui/MessageItem;->mSmsDate:J

    const/4 v6, 0x1

    move-object v1, p0

    invoke-interface/range {v0 .. v7}, Lcom/mediatek/mms/ext/IMmsUtils;->formatDateAndTimeStampString(Landroid/content/Context;JJZLjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 760
    :goto_4
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 766
    .end local v7           #dateStr:Ljava/lang/String;
    :cond_1
    const/4 v1, 0x1

    if-ne v13, v1, :cond_2

    iget-wide v1, p1, Lcom/android/mms/ui/MessageItem;->mIpMessageId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_2

    .line 767
    const/16 v1, 0xa

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 768
    const v1, 0x7f0b0012

    invoke-virtual {v12, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 769
    iget-object v1, p1, Lcom/android/mms/ui/MessageItem;->mServiceCenter:Ljava/lang/String;

    if-nez v1, :cond_b

    const-string v1, ""

    :goto_5
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 774
    :cond_2
    const/4 v1, 0x2

    if-ne v13, v1, :cond_3

    .line 779
    const-wide/16 v8, -0x1

    .line 780
    .local v8, dateDelivered:J
    const-wide/16 v1, 0x0

    cmp-long v1, v8, v1

    if-lez v1, :cond_3

    .line 781
    const/16 v1, 0xa

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 782
    const v1, 0x7f0b033f

    invoke-virtual {v12, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 783
    const/4 v1, 0x1

    invoke-static {p0, v8, v9, v1}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 788
    .end local v8           #dateDelivered:J
    :cond_3
    iget v11, p1, Lcom/android/mms/ui/MessageItem;->mErrorCode:I

    .line 790
    .local v11, errorCode:I
    if-eqz v11, :cond_4

    .line 791
    const/16 v1, 0xa

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0b02d3

    invoke-virtual {v12, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 796
    :cond_4
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 705
    .end local v0           #mmsUtils:Lcom/mediatek/mms/ext/IMmsUtils;
    .end local v11           #errorCode:I
    .end local v13           #smsType:I
    :cond_5
    const v1, 0x7f0b02c3

    invoke-virtual {v12, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 716
    .restart local v13       #smsType:I
    :cond_6
    const v1, 0x7f0b02c6

    invoke-virtual {v12, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 735
    .restart local v0       #mmsUtils:Lcom/mediatek/mms/ext/IMmsUtils;
    .restart local v7       #dateStr:Ljava/lang/String;
    :cond_7
    iget-wide v1, p1, Lcom/android/mms/ui/MessageItem;->mSmsSentDate:J

    const/4 v3, 0x1

    invoke-static {p0, v1, v2, v3}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_2

    .line 746
    .end local v7           #dateStr:Ljava/lang/String;
    :cond_8
    const/4 v1, 0x1

    if-ne v13, v1, :cond_9

    .line 747
    const v1, 0x7f0b02ca

    invoke-virtual {v12, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 749
    :cond_9
    const v1, 0x7f0b02c9

    invoke-virtual {v12, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 757
    .restart local v7       #dateStr:Ljava/lang/String;
    :cond_a
    iget-wide v1, p1, Lcom/android/mms/ui/MessageItem;->mSmsDate:J

    const/4 v3, 0x1

    invoke-static {p0, v1, v2, v3}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_4

    .line 769
    .end local v7           #dateStr:Ljava/lang/String;
    :cond_b
    iget-object v1, p1, Lcom/android/mms/ui/MessageItem;->mServiceCenter:Ljava/lang/String;

    goto/16 :goto_5
.end method

.method public static getUniqueDestination(Ljava/lang/String;)Ljava/io/File;
    .locals 7
    .parameter "fileName"

    .prologue
    .line 3485
    const-string v5, "."

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 3486
    .local v4, index:I
    if-lez v4, :cond_0

    .line 3487
    add-int/lit8 v5, v4, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 3488
    .local v1, extension:Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 3489
    .local v0, base:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3490
    .local v2, file:Ljava/io/File;
    const/4 v3, 0x2

    .local v3, i:I
    :goto_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3491
    new-instance v2, Ljava/io/File;

    .end local v2           #file:Ljava/io/File;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3490
    .restart local v2       #file:Ljava/io/File;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3494
    .end local v0           #base:Ljava/lang/String;
    .end local v1           #extension:Ljava/lang/String;
    .end local v2           #file:Ljava/io/File;
    .end local v3           #i:I
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3495
    .restart local v2       #file:Ljava/io/File;
    const/4 v3, 0x2

    .restart local v3       #i:I
    :goto_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3496
    new-instance v2, Ljava/io/File;

    .end local v2           #file:Ljava/io/File;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3495
    .restart local v2       #file:Ljava/io/File;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3499
    :cond_1
    return-object v2
.end method

.method public static getUniqueName([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "names"
    .parameter "fileName"

    .prologue
    .line 2420
    if-eqz p0, :cond_0

    array-length v7, p0

    if-nez v7, :cond_2

    :cond_0
    move-object v3, p1

    .line 2442
    :cond_1
    return-object v3

    .line 2423
    :cond_2
    const/4 v4, 0x0

    .line 2424
    .local v4, mIndex:I
    const-string v6, ""

    .line 2425
    .local v6, tempName:Ljava/lang/String;
    move-object v3, p1

    .line 2426
    .local v3, finalName:Ljava/lang/String;
    const-string v0, ""

    .line 2427
    .local v0, extendion:Ljava/lang/String;
    const-string v2, ""

    .line 2428
    .local v2, fileNamePrefix:Ljava/lang/String;
    const/4 v1, 0x0

    .line 2429
    .local v1, fileCount:I
    :goto_0
    array-length v7, p0

    if-ge v4, v7, :cond_1

    .line 2430
    aget-object v6, p0, v4

    .line 2431
    if-eqz v6, :cond_3

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2432
    add-int/lit8 v1, v1, 0x1

    .line 2433
    const-string v7, "."

    invoke-virtual {p1, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    .line 2434
    .local v5, tempInt:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {p1, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2435
    const/4 v7, 0x0

    invoke-virtual {p1, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 2436
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2437
    const/4 v4, 0x0

    .line 2438
    goto :goto_0

    .line 2439
    .end local v5           #tempInt:I
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private static getUnreadMessageNumber(Landroid/content/Context;)I
    .locals 9
    .parameter "context"

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 2344
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v0, "content://mms-sms/unread_count"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2346
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 2348
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2349
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 2350
    .local v7, count:I
    const-string v0, "Mms/Txn"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unread message count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2355
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2360
    .end local v7           #count:I
    :goto_0
    return v7

    .line 2355
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    .line 2358
    :cond_1
    const-string v0, "Mms/Txn"

    const-string v1, "can not get unread message count."

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getVideoCaptureDurationLimit()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 971
    invoke-static {v1}, Landroid/media/CamcorderProfile;->get(I)Landroid/media/CamcorderProfile;

    move-result-object v0

    .line 972
    .local v0, camcorder:Landroid/media/CamcorderProfile;
    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    iget v1, v0, Landroid/media/CamcorderProfile;->duration:I

    goto :goto_0
.end method

.method public static getVisualTextName(Landroid/content/Context;Ljava/lang/String;II)Ljava/lang/CharSequence;
    .locals 7
    .parameter "context"
    .parameter "enumName"
    .parameter "choiceNameResId"
    .parameter "choiceValueResId"

    .prologue
    .line 3400
    const/16 v5, 0xf

    invoke-static {v5}, Lcom/android/mms/MmsPluginManager;->getMmsPluginObject(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/mms/ext/IStringReplacement;

    .line 3402
    .local v3, mStringReplacementPlugin:Lcom/mediatek/mms/ext/IStringReplacement;
    const/4 v4, 0x0

    .line 3404
    .local v4, visualNames:[Ljava/lang/CharSequence;
    invoke-interface {v3}, Lcom/mediatek/mms/ext/IStringReplacement;->isEnableStringReplacement()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3405
    invoke-static {p0}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getInsertedSimInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    invoke-static {p0}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getInsertedSimInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    invoke-virtual {v5}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSlot()I

    move-result v5

    invoke-static {v5}, Lcom/android/mms/ui/MessageUtils;->isUSimType(I)Z

    move-result v5

    if-eqz v5, :cond_0

    const v5, 0x7f06000c

    if-ne p2, v5, :cond_0

    .line 3408
    invoke-interface {v3}, Lcom/mediatek/mms/ext/IStringReplacement;->getSaveLocationString()[Ljava/lang/String;

    move-result-object v2

    .line 3409
    .local v2, location:[Ljava/lang/String;
    move-object v4, v2

    .line 3417
    .end local v2           #location:[Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p3}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    .line 3419
    .local v0, enumNames:[Ljava/lang/CharSequence;
    array-length v5, v4

    array-length v6, v0

    if-eq v5, v6, :cond_2

    .line 3420
    const-string v5, ""

    .line 3427
    :goto_1
    return-object v5

    .line 3411
    .end local v0           #enumNames:[Ljava/lang/CharSequence;
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_0

    .line 3414
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_0

    .line 3422
    .restart local v0       #enumNames:[Ljava/lang/CharSequence;
    :cond_2
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    array-length v5, v0

    if-ge v1, v5, :cond_4

    .line 3423
    aget-object v5, v0, v1

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3424
    aget-object v5, v4, v1

    goto :goto_1

    .line 3422
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 3427
    :cond_4
    const-string v5, ""

    goto :goto_1
.end method

.method public static handleNewNotification(Landroid/content/Context;I)V
    .locals 10
    .parameter "context"
    .parameter "messageCount"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 3503
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3507
    .local v0, clickIntent:Landroid/content/Intent;
    const-string v3, "com.android.mms"

    const-string v4, "com.android.mms.ui.BootActivity"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3509
    const/high16 v3, 0x800

    invoke-static {p0, v8, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 3512
    .local v2, pendingIntent:Landroid/app/PendingIntent;
    new-instance v3, Lcom/mediatek/encapsulation/android/app/EncapsulatedNotificationPlus$EncapsulatedBuilder;

    invoke-direct {v3, p0}, Lcom/mediatek/encapsulation/android/app/EncapsulatedNotificationPlus$EncapsulatedBuilder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0b022e

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mediatek/encapsulation/android/app/EncapsulatedNotificationPlus$EncapsulatedBuilder;->setTitle(Ljava/lang/String;)Lcom/mediatek/encapsulation/android/app/EncapsulatedNotificationPlus$EncapsulatedBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0007

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, p1, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mediatek/encapsulation/android/app/EncapsulatedNotificationPlus$EncapsulatedBuilder;->setMessage(Ljava/lang/String;)Lcom/mediatek/encapsulation/android/app/EncapsulatedNotificationPlus$EncapsulatedBuilder;

    move-result-object v3

    const v4, 0x7f0b0262

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/mediatek/encapsulation/android/app/EncapsulatedNotificationPlus$EncapsulatedBuilder;->setPositiveButton(Ljava/lang/String;Landroid/app/PendingIntent;)Lcom/mediatek/encapsulation/android/app/EncapsulatedNotificationPlus$EncapsulatedBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/encapsulation/android/app/EncapsulatedNotificationPlus$EncapsulatedBuilder;->create()Lcom/mediatek/encapsulation/android/app/EncapsulatedNotificationPlus;

    move-result-object v1

    .line 3518
    .local v1, notiPlus:Lcom/mediatek/encapsulation/android/app/EncapsulatedNotificationPlus;
    invoke-static {v9, v1}, Lcom/mediatek/encapsulation/android/app/EncapsulatedNotificationManagerPlus;->notify(ILcom/mediatek/encapsulation/android/app/EncapsulatedNotificationPlus;)V

    .line 3519
    return-void
.end method

.method public static handleReadReport(Landroid/content/Context;Ljava/util/Collection;ILjava/lang/Runnable;)V
    .locals 0
    .parameter "context"
    .parameter
    .parameter "status"
    .parameter "callback"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;I",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1334
    .local p1, threadIds:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Long;>;"
    if-eqz p3, :cond_0

    .line 1335
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    .line 1380
    :cond_0
    return-void
.end method

.method public static handleReadReportGemini(Landroid/content/Context;JILjava/lang/Runnable;)V
    .locals 15
    .parameter "context"
    .parameter "threadId"
    .parameter "status"
    .parameter "callback"

    .prologue
    .line 1684
    const-string v6, "m_type = 132 AND read = 0 AND rr = 128"

    .line 1688
    .local v6, selection:Ljava/lang/String;
    const-wide/16 v2, -0x1

    cmp-long v2, p1, v2

    if-eqz v2, :cond_0

    .line 1689
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "thread_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1692
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x3

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v7, "_id"

    aput-object v7, v5, v2

    const/4 v2, 0x1

    const-string v7, "m_id"

    aput-object v7, v5, v2

    const/4 v2, 0x2

    const-string v7, "sim_id"

    aput-object v7, v5, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v8}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1696
    .local v9, c:Landroid/database/Cursor;
    if-nez v9, :cond_1

    .line 1749
    :goto_0
    return-void

    .line 1700
    :cond_1
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 1702
    .local v11, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_3

    .line 1703
    if-eqz p4, :cond_2

    .line 1704
    invoke-interface/range {p4 .. p4}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1714
    :cond_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1709
    :cond_3
    :goto_1
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1710
    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v14

    .line 1711
    .local v14, uri:Landroid/net/Uri;
    const/4 v2, 0x1

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v14}, Lcom/android/mms/util/AddressUtils;->getFrom(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v11, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1714
    .end local v14           #uri:Landroid/net/Uri;
    :catchall_0
    move-exception v2

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_4
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1717
    new-instance v13, Lcom/android/mms/ui/MessageUtils$6;

    move/from16 v0, p3

    move-object/from16 v1, p4

    invoke-direct {v13, v11, p0, v0, v1}, Lcom/android/mms/ui/MessageUtils$6;-><init>(Ljava/util/Map;Landroid/content/Context;ILjava/lang/Runnable;)V

    .line 1730
    .local v13, positiveListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v12, Lcom/android/mms/ui/MessageUtils$7;

    move-object/from16 v0, p4

    invoke-direct {v12, v0}, Lcom/android/mms/ui/MessageUtils$7;-><init>(Ljava/lang/Runnable;)V

    .line 1738
    .local v12, negativeListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v10, Lcom/android/mms/ui/MessageUtils$8;

    move-object/from16 v0, p4

    invoke-direct {v10, v0}, Lcom/android/mms/ui/MessageUtils$8;-><init>(Ljava/lang/Runnable;)V

    .line 1746
    .local v10, cancelListener:Landroid/content/DialogInterface$OnCancelListener;
    invoke-static {p0, v13, v12, v10}, Lcom/android/mms/ui/MessageUtils;->confirmReadReportDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)V

    goto :goto_0
.end method

.method public static haveEmailContact(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 11
    .parameter "emailAddress"
    .parameter "context"

    .prologue
    const/4 v10, 0x1

    const/4 v4, 0x0

    const/4 v9, 0x0

    .line 3375
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-static {p0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-array v3, v10, [Ljava/lang/String;

    const-string v0, "display_name"

    aput-object v0, v3, v9

    move-object v0, p1

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 3379
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_2

    .line 3382
    :cond_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3383
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 3384
    .local v8, name:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 3389
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move v0, v10

    .line 3392
    .end local v8           #name:Ljava/lang/String;
    :goto_0
    return v0

    .line 3389
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    move v0, v9

    .line 3392
    goto :goto_0

    .line 3389
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private static initializeMsgDetails(Landroid/content/Context;Ljava/lang/StringBuilder;Landroid/content/res/Resources;Lcom/google/android/mms/pdu/MultimediaMessagePdu;)V
    .locals 6
    .parameter "context"
    .parameter "details"
    .parameter "res"
    .parameter "msg"

    .prologue
    const/16 v5, 0xa

    .line 604
    const v3, 0x7f0b02c2

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 605
    const v3, 0x7f0b02c4

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 607
    instance-of v3, p3, Lcom/google/android/mms/pdu/RetrieveConf;

    if-eqz v3, :cond_0

    move-object v3, p3

    .line 609
    check-cast v3, Lcom/google/android/mms/pdu/RetrieveConf;

    invoke-virtual {v3}, Lcom/google/android/mms/pdu/RetrieveConf;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/mms/ui/MessageUtils;->extractEncStr(Landroid/content/Context;Lcom/google/android/mms/pdu/EncodedStringValue;)Ljava/lang/String;

    move-result-object v0

    .line 610
    .local v0, from:Ljava/lang/String;
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 611
    const v3, 0x7f0b02c6

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 612
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .end local v0           #from:Ljava/lang/String;
    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 617
    :cond_0
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 618
    const v3, 0x7f0b02c7

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 619
    invoke-virtual {p3}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getTo()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v1

    .line 620
    .local v1, to:[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v1, :cond_3

    .line 621
    invoke-static {v1}, Lcom/google/android/mms/pdu/EncodedStringValue;->concat([Lcom/google/android/mms/pdu/EncodedStringValue;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 628
    :goto_1
    instance-of v3, p3, Lcom/google/android/mms/pdu/SendReq;

    if-eqz v3, :cond_1

    .line 629
    check-cast p3, Lcom/google/android/mms/pdu/SendReq;

    .end local p3
    invoke-virtual {p3}, Lcom/google/android/mms/pdu/SendReq;->getBcc()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v2

    .line 630
    .local v2, values:[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v2, :cond_1

    array-length v3, v2

    if-lez v3, :cond_1

    .line 631
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 632
    const v3, 0x7f0b02c8

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 633
    invoke-static {v2}, Lcom/google/android/mms/pdu/EncodedStringValue;->concat([Lcom/google/android/mms/pdu/EncodedStringValue;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 636
    .end local v2           #values:[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_1
    return-void

    .line 612
    .end local v1           #to:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v0       #from:Ljava/lang/String;
    .restart local p3
    :cond_2
    const v3, 0x7f0b0294

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 624
    .end local v0           #from:Ljava/lang/String;
    .restart local v1       #to:[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_3
    const-string v3, "Mms"

    const-string v4, "recipient list is empty!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static is3G(ILjava/util/List;)Z
    .locals 4
    .parameter "id"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 2127
    .local p1, simInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;>;"
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    invoke-virtual {v1}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSlot()I

    move-result v0

    .line 2128
    .local v0, slotId:I
    const-string v1, "Mms"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SIMInfo.getSlotById id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " slotId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2129
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->get3GCapabilitySIM()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 2130
    const/4 v1, 0x1

    .line 2132
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isAlias(Ljava/lang/String;)Z
    .locals 5
    .parameter "string"

    .prologue
    const/4 v3, 0x0

    .line 1542
    invoke-static {}, Lcom/android/mms/MmsConfig;->isAliasEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1562
    :cond_0
    :goto_0
    return v3

    .line 1546
    :cond_1
    if-nez p0, :cond_3

    move v2, v3

    .line 1548
    .local v2, len:I
    :goto_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getAliasMinChars()I

    move-result v4

    if-lt v2, v4, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getAliasMaxChars()I

    move-result v4

    if-gt v2, v4, :cond_0

    .line 1552
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isLetter(C)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1555
    const/4 v1, 0x1

    .local v1, i:I
    :goto_2
    if-ge v1, v2, :cond_4

    .line 1556
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1557
    .local v0, c:C
    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v4

    if-nez v4, :cond_2

    const/16 v4, 0x2e

    if-ne v0, v4, :cond_0

    .line 1555
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1546
    .end local v0           #c:C
    .end local v1           #i:I
    .end local v2           #len:I
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    goto :goto_1

    .line 1562
    .restart local v1       #i:I
    .restart local v2       #len:I
    :cond_4
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private static isDialable(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 2518
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x23

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2b

    if-eq p0, v0, :cond_1

    const/16 v0, 0x4e

    if-eq p0, v0, :cond_1

    const/16 v0, 0x28

    if-eq p0, v0, :cond_1

    const/16 v0, 0x29

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isDialable(Ljava/lang/String;)Z
    .locals 3
    .parameter "address"

    .prologue
    .line 2508
    const/4 v1, 0x0

    .local v1, i:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, count:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 2509
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->isDialable(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2510
    const/4 v2, 0x0

    .line 2513
    :goto_1
    return v2

    .line 2508
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2513
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public static isHome()Z
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 2952
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getHomes()Ljava/util/List;

    move-result-object v2

    .line 2957
    .local v2, homePackageNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v6

    const-string v7, "activity"

    invoke-virtual {v6, v7}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2959
    .local v0, activityManager:Landroid/app/ActivityManager;
    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v5

    .line 2961
    .local v5, rti:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v6, v6, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 2962
    .local v3, packageName:Ljava/lang/String;
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v6, v6, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 2963
    .local v1, className:Ljava/lang/String;
    const-string v6, "Mms/Txn"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "package0="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "class0="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2967
    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    .line 2968
    .local v4, ret:Z
    if-nez v4, :cond_0

    .line 2969
    const-string v6, "com.android.mms.ui.DialogModeActivity"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2970
    const/4 v4, 0x1

    .line 2973
    :cond_0
    return v4
.end method

.method public static isLocalNumber(Ljava/lang/String;)Z
    .locals 3
    .parameter "number"

    .prologue
    const/4 v1, 0x0

    .line 1250
    if-nez p0, :cond_1

    .line 1272
    :cond_0
    :goto_0
    return v1

    .line 1258
    :cond_1
    const/16 v2, 0x40

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_0

    .line 1267
    const/4 v0, 0x0

    .local v0, slotId:I
    :goto_1
    sget v2, Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedPhone;->GEMINI_SIM_NUM:I

    if-ge v0, v2, :cond_0

    .line 1268
    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->getLocalNumberGemini(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1269
    const/4 v1, 0x1

    goto :goto_0

    .line 1267
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static isPhoneNumber(Ljava/lang/String;)Z
    .locals 7
    .parameter "num"

    .prologue
    const/4 v5, 0x0

    .line 2177
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 2178
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2187
    :cond_0
    :goto_0
    return v5

    .line 2181
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 2182
    .local v2, digits:[C
    move-object v0, v2

    .local v0, arr$:[C
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_2

    aget-char v1, v0, v3

    .line 2183
    .local v1, c:C
    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2182
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2187
    .end local v1           #c:C
    :cond_2
    const/4 v5, 0x1

    goto :goto_0
.end method

.method public static isRestrictedType(Landroid/content/Context;J)Z
    .locals 19
    .parameter "context"
    .parameter "msgId"

    .prologue
    .line 2628
    sget-object v15, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p1

    invoke-static {v15, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-static {v0, v15}, Lcom/android/mms/ui/PduBodyCache;->getPduBody(Landroid/content/Context;Landroid/net/Uri;)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v2

    .line 2630
    .local v2, body:Lcom/google/android/mms/pdu/PduBody;
    if-nez v2, :cond_0

    .line 2631
    const/4 v15, 0x0

    .line 2685
    .end local p0
    :goto_0
    return v15

    .line 2634
    .restart local p0
    :cond_0
    invoke-virtual {v2}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v11

    .line 2635
    .local v11, partNum:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ge v5, v11, :cond_9

    .line 2636
    invoke-virtual {v2, v5}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v10

    .line 2637
    .local v10, part:Lcom/google/android/mms/pdu/PduPart;
    const/4 v14, 0x0

    .line 2638
    .local v14, width:I
    const/4 v4, 0x0

    .line 2639
    .local v4, height:I
    new-instance v13, Ljava/lang/String;

    invoke-virtual {v10}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v15

    invoke-direct {v13, v15}, Ljava/lang/String;-><init>([B)V

    .line 2642
    .local v13, type:Ljava/lang/String;
    invoke-static {v13}, Lcom/mediatek/encapsulation/com/google/android/mms/EncapsulatedContentType;->isVideoType(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 2643
    const v8, 0x7f0b02fc

    .line 2672
    .local v8, mediaTypeStringId:I
    :cond_1
    :goto_2
    invoke-static {v13}, Lcom/mediatek/encapsulation/com/google/android/mms/EncapsulatedContentType;->isRestrictedType(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxRestrictedImageWidth()I

    move-result v15

    if-gt v14, v15, :cond_2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxRestrictedImageHeight()I

    move-result v15

    if-le v4, v15, :cond_8

    .line 2675
    :cond_2
    sget v15, Lcom/android/mms/data/WorkingMessage;->sCreationMode:I

    const/16 v16, -0xb

    move/from16 v0, v16

    if-ne v15, v0, :cond_3

    .line 2676
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 2677
    .local v12, res:Landroid/content/res/Resources;
    invoke-virtual {v12, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 2678
    .local v7, mediaType:Ljava/lang/String;
    check-cast p0, Landroid/app/Activity;

    .end local p0
    const v15, 0x7f0b026b

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v7, v16, v17

    move-object/from16 v0, v16

    invoke-virtual {v12, v15, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    const v16, 0x7f0b026c

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v7, v17, v18

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v12, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v15, v1}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 2682
    .end local v7           #mediaType:Ljava/lang/String;
    .end local v12           #res:Landroid/content/res/Resources;
    :cond_3
    const/4 v15, 0x1

    goto :goto_0

    .line 2644
    .end local v8           #mediaTypeStringId:I
    .restart local p0
    :cond_4
    invoke-static {v13}, Lcom/mediatek/encapsulation/com/google/android/mms/EncapsulatedContentType;->isAudioType(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_5

    const-string v15, "application/ogg"

    invoke-virtual {v15, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 2645
    :cond_5
    const v8, 0x7f0b02fa

    .restart local v8       #mediaTypeStringId:I
    goto :goto_2

    .line 2646
    .end local v8           #mediaTypeStringId:I
    :cond_6
    invoke-static {v13}, Lcom/mediatek/encapsulation/com/google/android/mms/EncapsulatedContentType;->isImageType(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 2647
    const v8, 0x7f0b02fb

    .line 2648
    .restart local v8       #mediaTypeStringId:I
    const/4 v6, 0x0

    .line 2650
    .local v6, input:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    invoke-virtual {v10}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v6

    .line 2651
    new-instance v9, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v9}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 2652
    .local v9, opt:Landroid/graphics/BitmapFactory$Options;
    const/4 v15, 0x1

    iput-boolean v15, v9, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 2653
    const/4 v15, 0x0

    invoke-static {v6, v15, v9}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 2654
    iget v14, v9, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 2655
    iget v4, v9, Landroid/graphics/BitmapFactory$Options;->outHeight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2660
    if-eqz v6, :cond_1

    .line 2662
    :try_start_1
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 2663
    :catch_0
    move-exception v3

    .line 2665
    .local v3, e:Ljava/io/IOException;
    const-string v15, "Mms"

    const-string v16, "IOException caught while closing stream"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v3}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 2656
    .end local v3           #e:Ljava/io/IOException;
    .end local v9           #opt:Landroid/graphics/BitmapFactory$Options;
    :catch_1
    move-exception v3

    .line 2658
    .local v3, e:Ljava/io/FileNotFoundException;
    :try_start_2
    const-string v15, "Mms"

    const-string v16, "FileNotFoundException caught while opening stream"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v3}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2660
    if-eqz v6, :cond_1

    .line 2662
    :try_start_3
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_2

    .line 2663
    :catch_2
    move-exception v3

    .line 2665
    .local v3, e:Ljava/io/IOException;
    const-string v15, "Mms"

    const-string v16, "IOException caught while closing stream"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v3}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 2660
    .end local v3           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v15

    if-eqz v6, :cond_7

    .line 2662
    :try_start_4
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 2666
    :cond_7
    :goto_3
    throw v15

    .line 2663
    :catch_3
    move-exception v3

    .line 2665
    .restart local v3       #e:Ljava/io/IOException;
    const-string v16, "Mms"

    const-string v17, "IOException caught while closing stream"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v3}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 2635
    .end local v3           #e:Ljava/io/IOException;
    .end local v6           #input:Ljava/io/InputStream;
    .end local v8           #mediaTypeStringId:I
    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 2685
    .end local v4           #height:I
    .end local v10           #part:Lcom/google/android/mms/pdu/PduPart;
    .end local v13           #type:Ljava/lang/String;
    .end local v14           #width:I
    :cond_9
    const/4 v15, 0x0

    goto/16 :goto_0
.end method

.method private static isSpecialChar(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 2191
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_0

    const/16 v0, 0x25

    if-eq p0, v0, :cond_0

    const/16 v0, 0x24

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isUSimType(I)Z
    .locals 9
    .parameter "slot"

    .prologue
    const/4 v2, 0x0

    .line 3275
    invoke-static {}, Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;->getInstance()Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;

    move-result-object v1

    .line 3276
    .local v1, iTel:Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;
    if-nez v1, :cond_0

    .line 3277
    const-string v3, "Mms"

    const-string v4, "[isUIMType]: iTel = null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3289
    :goto_0
    return v2

    .line 3282
    :cond_0
    :try_start_0
    invoke-virtual {v1, p0}, Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;->getIccCardTypeGemini(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "UIM"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 3286
    :catch_0
    move-exception v0

    .line 3287
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "Mms"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[isUSIMType]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%s: %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v7, 0x1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isVCalendarAvailable(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    .line 2401
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.CALENDARCHOICE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2402
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "text/x-vcalendar"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 2403
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 2404
    .local v2, packageManager:Landroid/content/pm/PackageManager;
    const/high16 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 2407
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static isValidMmsAddress(Ljava/lang/String;)Z
    .locals 2
    .parameter "address"

    .prologue
    .line 1599
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->parseMmsAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1602
    .local v0, retVal:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isWellFormedSmsAddress(Ljava/lang/String;)Z
    .locals 3
    .parameter "address"

    .prologue
    const/4 v1, 0x0

    .line 2494
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->isDialable(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2502
    :cond_0
    :goto_0
    return v1

    .line 2499
    :cond_1
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2502
    .local v0, networkPortion:Ljava/lang/String;
    const-string v2, "+"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->isDialable(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static launchSlideshowActivity(Landroid/content/Context;Landroid/net/Uri;I)V
    .locals 2
    .parameter "context"
    .parameter "msgUri"
    .parameter "requestCode"

    .prologue
    .line 1516
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/SlideshowActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1517
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1518
    if-lez p2, :cond_0

    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 1519
    check-cast p0, Landroid/app/Activity;

    .end local p0
    invoke-virtual {p0, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1523
    :goto_0
    return-void

    .line 1521
    .restart local p0
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 1634
    const-string v0, "Mms"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[MsgUtils] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1635
    return-void
.end method

.method public static modifyDataRoamingStatus(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 3677
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->getMmsPreferencePlugin(Landroid/content/Context;)V

    .line 3678
    sget-object v0, Lcom/android/mms/ui/MessageUtils;->sMmsPreference:Lcom/mediatek/mms/ext/IMmsPreference;

    invoke-interface {v0, p0, p1}, Lcom/mediatek/mms/ext/IMmsPreference;->modifyDataRoamingPreference(Landroid/content/Context;Landroid/content/Intent;)V

    .line 3679
    return-void
.end method

.method public static parseMmsAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "address"

    .prologue
    .line 1614
    invoke-static {p0}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1630
    .end local p0
    .local v0, retVal:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 1619
    .end local v0           #retVal:Ljava/lang/String;
    .restart local p0
    :cond_1
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->parsePhoneNumberForMms(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1620
    .restart local v0       #retVal:Ljava/lang/String;
    if-eqz v0, :cond_2

    move-object p0, v0

    .line 1621
    goto :goto_0

    .line 1625
    :cond_2
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->isAlias(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1630
    const/4 p0, 0x0

    goto :goto_0
.end method

.method private static parsePhoneNumberForMms(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "address"

    .prologue
    .line 1571
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1572
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 1574
    .local v3, len:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_3

    .line 1575
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1578
    .local v1, c:C
    const/16 v4, 0x2b

    if-ne v1, v4, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 1579
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1574
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1583
    :cond_1
    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1584
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1588
    :cond_2
    sget-object v4, Lcom/android/mms/ui/MessageUtils;->numericSugarMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    .line 1589
    const/4 v4, 0x0

    .line 1592
    .end local v1           #c:C
    :goto_2
    return-object v4

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2
.end method

.method public static recordSound(Landroid/app/Activity;IJ)V
    .locals 3
    .parameter "activity"
    .parameter "requestCode"
    .parameter "sizeLimit"

    .prologue
    .line 928
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 929
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "audio/amr"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 930
    const-string v1, "com.android.soundrecorder"

    const-string v2, "com.android.soundrecorder.SoundRecorder"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 932
    const-string v1, "android.provider.MediaStore.extra.MAX_BYTES"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 933
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 934
    return-void
.end method

.method public static recordVideo(Landroid/app/Activity;IJ)V
    .locals 5
    .parameter "activity"
    .parameter "requestCode"
    .parameter "sizeLimit"

    .prologue
    const/4 v4, 0x0

    .line 942
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getVideoCaptureDurationLimit()I

    move-result v0

    .line 944
    .local v0, durationLimit:I
    const-string v2, "Mms:app"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 945
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "recordVideo: durationLimit: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " sizeLimit: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->log(Ljava/lang/String;)V

    .line 949
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.media.action.VIDEO_CAPTURE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 950
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "android.intent.extra.videoQuality"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 951
    const-string v2, "android.intent.extra.sizeLimit"

    invoke-virtual {v1, v2, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 952
    const-string v2, "android.intent.extra.durationLimit"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 955
    const-string v2, "output"

    sget-object v3, Lcom/android/mms/TempFileProvider;->SCRAP_VIDEO_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 957
    const-string v2, "CanShare"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 959
    invoke-virtual {p0, v1, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 960
    return-void
.end method

.method public static replyMessage(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 3
    .parameter "context"
    .parameter "address"
    .parameter "simId"

    .prologue
    .line 2216
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2217
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "address"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2218
    const-string v1, "showinput"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2219
    const-string v1, "simId"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2220
    const-string v1, "com.android.mms.ui.ComposeMessageActivity"

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 2221
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2222
    return-void
.end method

.method public static resizeImage(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Handler;Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;ZZ)V
    .locals 7
    .parameter "context"
    .parameter "imageUri"
    .parameter "handler"
    .parameter "cb"
    .parameter "append"
    .parameter "showToast"

    .prologue
    .line 1203
    new-instance v3, Lcom/android/mms/ui/MessageUtils$3;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/MessageUtils$3;-><init>(Landroid/content/Context;)V

    .line 1208
    .local v3, showProgress:Ljava/lang/Runnable;
    if-eqz p5, :cond_0

    .line 1209
    invoke-virtual {p2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1214
    :cond_0
    :try_start_0
    new-instance v1, Lcom/android/mms/ui/UriImage;

    invoke-direct {v1, p0, p1}, Lcom/android/mms/ui/UriImage;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 1215
    .local v1, image:Lcom/android/mms/ui/UriImage;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxImageWidth()I

    move-result v4

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxImageHeight()I

    move-result v5

    const/4 v6, 0x1

    invoke-static {v6}, Lcom/android/mms/MmsConfig;->getUserSetMmsSizeLimit(Z)I

    move-result v6

    add-int/lit16 v6, v6, -0x1388

    invoke-virtual {v1, v4, v5, v6}, Lcom/android/mms/ui/UriImage;->getResizedImageAsPart(III)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v2

    .line 1218
    .local v2, part:Lcom/google/android/mms/pdu/PduPart;
    invoke-interface {p3, v2, p4}, Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;->onResizeResult(Lcom/google/android/mms/pdu/PduPart;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1223
    invoke-virtual {p2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1225
    .end local v1           #image:Lcom/android/mms/ui/UriImage;
    .end local v2           #part:Lcom/google/android/mms/pdu/PduPart;
    :goto_0
    return-void

    .line 1219
    :catch_0
    move-exception v0

    .line 1220
    .local v0, e:Ljava/lang/IllegalArgumentException;
    :try_start_1
    const-string v4, "Mms"

    const-string v5, "Unexpected IllegalArgumentException."

    invoke-static {v4, v5, v0}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1223
    invoke-virtual {p2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v4

    invoke-virtual {p2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    throw v4
.end method

.method public static resizeImageAsync(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Handler;Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;Z)V
    .locals 8
    .parameter "context"
    .parameter "imageUri"
    .parameter "handler"
    .parameter "cb"
    .parameter "append"

    .prologue
    .line 1140
    new-instance v6, Lcom/android/mms/ui/MessageUtils$1;

    invoke-direct {v6, p0}, Lcom/android/mms/ui/MessageUtils$1;-><init>(Landroid/content/Context;)V

    .line 1147
    .local v6, showProgress:Ljava/lang/Runnable;
    const-wide/16 v0, 0x3e8

    invoke-virtual {p2, v6, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1149
    new-instance v7, Ljava/lang/Thread;

    new-instance v0, Lcom/android/mms/ui/MessageUtils$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/MessageUtils$2;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Handler;Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;ZLjava/lang/Runnable;)V

    const-string v1, "MessageUtils.resizeImageAsync"

    invoke-direct {v7, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 1191
    return-void
.end method

.method public static saveBitmapAsPart(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/Bitmap;)Landroid/net/Uri;
    .locals 8
    .parameter "context"
    .parameter "messageUri"
    .parameter "bitmap"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 1641
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1642
    .local v1, os:Ljava/io/ByteArrayOutputStream;
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x5f

    invoke-virtual {p2, v4, v5, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1644
    new-instance v2, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct {v2}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    .line 1646
    .local v2, part:Lcom/google/android/mms/pdu/PduPart;
    const-string v4, "image/jpeg"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 1647
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Image"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1648
    .local v0, contentId:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    .line 1649
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    .line 1650
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    .line 1652
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v4

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v5

    const/4 v7, 0x0

    invoke-virtual {v4, v2, v5, v6, v7}, Lcom/google/android/mms/pdu/PduPersister;->persistPart(Lcom/google/android/mms/pdu/PduPart;JLjava/util/HashMap;)Landroid/net/Uri;

    move-result-object v3

    .line 1655
    .local v3, retVal:Landroid/net/Uri;
    const-string v4, "Mms:app"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1656
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "saveBitmapAsPart: persisted part with uri="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/mms/ui/MessageUtils;->log(Ljava/lang/String;)V

    .line 1659
    :cond_0
    return-object v3
.end method

.method public static selectAudio(Landroid/app/Activity;I)V
    .locals 3
    .parameter "activity"
    .parameter "requestCode"

    .prologue
    .line 913
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 914
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 915
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 916
    const-string v1, "audio/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 917
    const-string v1, "application/ogg"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 918
    const-string v1, "application/x-ogg"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 920
    const-string v1, "android.intent.extra.drm_level"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 924
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 925
    return-void
.end method

.method public static selectImage(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "requestCode"

    .prologue
    .line 980
    const-string v0, "image/*"

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/android/mms/ui/MessageUtils;->selectMediaByType(Landroid/content/Context;ILjava/lang/String;Z)V

    .line 981
    return-void
.end method

.method private static selectMediaByType(Landroid/content/Context;ILjava/lang/String;Z)V
    .locals 4
    .parameter "context"
    .parameter "requestCode"
    .parameter "contentType"
    .parameter "localFilesOnly"

    .prologue
    .line 985
    instance-of v2, p0, Landroid/app/Activity;

    if-eqz v2, :cond_1

    .line 987
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 989
    .local v0, innerIntent:Landroid/content/Intent;
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 992
    const-string v2, "android.intent.extra.drm_level"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 996
    if-eqz p3, :cond_0

    .line 997
    const-string v2, "android.intent.extra.LOCAL_ONLY"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1000
    :cond_0
    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    .line 1001
    .local v1, wrapperIntent:Landroid/content/Intent;
    check-cast p0, Landroid/app/Activity;

    .end local p0
    invoke-virtual {p0, v1, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1003
    .end local v0           #innerIntent:Landroid/content/Intent;
    .end local v1           #wrapperIntent:Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method public static selectRingtone(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "requestCode"

    .prologue
    const/4 v2, 0x0

    .line 1798
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 1799
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.RINGTONE_PICKER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1800
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.extra.ringtone.SHOW_DEFAULT"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1801
    const-string v1, "android.intent.extra.ringtone.SHOW_SILENT"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1802
    const-string v1, "android.intent.extra.ringtone.INCLUDE_DRM"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1803
    const-string v1, "android.intent.extra.ringtone.TITLE"

    const v2, 0x7f0b030a

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1806
    const-string v1, "android.intent.extra.drm_level"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1809
    check-cast p0, Landroid/app/Activity;

    .end local p0
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1811
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public static selectVideo(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "requestCode"

    .prologue
    .line 976
    const-string v0, "video/*"

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lcom/android/mms/ui/MessageUtils;->selectMediaByType(Landroid/content/Context;ILjava/lang/String;Z)V

    .line 977
    return-void
.end method

.method public static setMmsLimitSize(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    .line 3522
    const/4 v3, 0x0

    .line 3523
    .local v3, otherAppContext:Landroid/content/Context;
    const/4 v4, 0x0

    .line 3525
    .local v4, sp:Landroid/content/SharedPreferences;
    :try_start_0
    const-string v5, "com.android.mms"

    const/4 v6, 0x2

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 3531
    :goto_0
    if-eqz v3, :cond_0

    .line 3532
    const-string v5, "com.android.mms_preferences"

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 3535
    :cond_0
    const/4 v2, 0x0

    .line 3536
    .local v2, mSizeLimitTemp:Ljava/lang/String;
    const/4 v1, 0x0

    .line 3537
    .local v1, mMmsSizeLimit:I
    if-eqz v4, :cond_1

    .line 3538
    const-string v5, "pref_key_mms_size_limit"

    const-string v6, "300"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3540
    :cond_1
    if-eqz v2, :cond_2

    const-string v5, "100"

    invoke-virtual {v2, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_2

    .line 3541
    const/16 v1, 0x64

    .line 3547
    :goto_1
    invoke-static {v1}, Lcom/android/mms/MmsConfig;->setUserSetMmsSizeLimit(I)V

    .line 3548
    return-void

    .line 3528
    .end local v1           #mMmsSizeLimit:I
    .end local v2           #mSizeLimitTemp:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 3529
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "Mms"

    const-string v6, "ConversationList NotFoundContext"

    invoke-static {v5, v6}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3542
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #mMmsSizeLimit:I
    .restart local v2       #mSizeLimitTemp:Ljava/lang/String;
    :cond_2
    if-eqz v2, :cond_3

    const-string v5, "200"

    invoke-virtual {v2, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_3

    .line 3543
    const/16 v1, 0xc8

    goto :goto_1

    .line 3545
    :cond_3
    const/16 v1, 0x12c

    goto :goto_1
.end method

.method public static showDiscardDraftConfirmDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 3
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 1230
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0273

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0274

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0295

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0296

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1240
    return-void
.end method

.method public static showErrorDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "activity"
    .parameter "title"
    .parameter "message"

    .prologue
    .line 1071
    invoke-static {p1, p2}, Lcom/android/mms/ui/ErrorDialog;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/android/mms/ui/ErrorDialog;

    move-result-object v2

    .line 1073
    .local v2, errDialog:Lcom/android/mms/ui/ErrorDialog;
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string v5, "errDialog"

    invoke-virtual {v2, v4, v5}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1109
    :goto_0
    return-void

    .line 1074
    :catch_0
    move-exception v0

    .line 1076
    .local v0, e:Ljava/lang/IllegalStateException;
    :try_start_1
    const-string v4, "Mms"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "showErrorDialog catch IllegalStateException."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1077
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    .line 1078
    .local v3, transaction:Landroid/app/FragmentTransaction;
    const-string v4, "errDialog"

    invoke-virtual {v3, v2, v4}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 1079
    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1080
    .end local v3           #transaction:Landroid/app/FragmentTransaction;
    :catch_1
    move-exception v1

    .line 1081
    .local v1, e2:Ljava/lang/Exception;
    const-string v4, "Mms"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "showErrorDialog commitAllowingStateLoss catch Exception."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static updateNotification(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 2314
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/ui/MessageUtils$12;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/MessageUtils$12;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2322
    return-void
.end method

.method public static updatePartsIfNeeded(Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/PduPersister;Landroid/net/Uri;Lcom/google/android/mms/pdu/PduBody;Ljava/util/HashMap;)V
    .locals 1
    .parameter "slideshow"
    .parameter "persister"
    .parameter "uri"
    .parameter "pb"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/mms/model/SlideshowModel;",
            "Lcom/google/android/mms/pdu/PduPersister;",
            "Landroid/net/Uri;",
            "Lcom/google/android/mms/pdu/PduBody;",
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 3697
    .local p4, preOpenedFiles:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/net/Uri;Ljava/io/InputStream;>;"
    invoke-virtual {p0}, Lcom/android/mms/model/SlideshowModel;->needUpdate()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3702
    :goto_0
    return-void

    .line 3700
    :cond_0
    invoke-virtual {p1, p2, p3, p4}, Lcom/google/android/mms/pdu/PduPersister;->updateParts(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduBody;Ljava/util/HashMap;)V

    .line 3701
    invoke-virtual {p0}, Lcom/android/mms/model/SlideshowModel;->resetUpdateState()V

    goto :goto_0
.end method

.method public static viewMmsMessageAttachment(Landroid/app/Activity;Landroid/net/Uri;Lcom/android/mms/model/SlideshowModel;ILcom/android/mms/ui/AsyncDialog;)V
    .locals 5
    .parameter "activity"
    .parameter "msgUri"
    .parameter "slideshow"
    .parameter "requestCode"
    .parameter "asyncDialog"

    .prologue
    const/4 v2, 0x0

    .line 1454
    if-nez p2, :cond_1

    move v0, v2

    .line 1456
    .local v0, isSimple:Z
    :goto_0
    if-eqz v0, :cond_2

    .line 1457
    invoke-virtual {p2, v2}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v1

    .line 1460
    .local v1, slideTemp:Lcom/android/mms/model/SlideModel;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 1462
    :cond_0
    invoke-static {p0, p2}, Lcom/android/mms/ui/MessageUtils;->viewSimpleSlideshow(Landroid/content/Context;Lcom/android/mms/model/SlideshowModel;)V

    .line 1512
    .end local v1           #slideTemp:Lcom/android/mms/model/SlideModel;
    :goto_1
    return-void

    .line 1454
    .end local v0           #isSimple:Z
    :cond_1
    invoke-virtual {p2}, Lcom/android/mms/model/SlideshowModel;->isSimple()Z

    move-result v0

    goto :goto_0

    .line 1471
    .restart local v0       #isSimple:Z
    :cond_2
    new-instance v2, Lcom/android/mms/ui/MessageUtils$4;

    invoke-direct {v2, p2, p0, p1}, Lcom/android/mms/ui/MessageUtils$4;-><init>(Lcom/android/mms/model/SlideshowModel;Landroid/app/Activity;Landroid/net/Uri;)V

    new-instance v3, Lcom/android/mms/ui/MessageUtils$5;

    invoke-direct {v3, v0, p3, p0, p1}, Lcom/android/mms/ui/MessageUtils$5;-><init>(ZILandroid/app/Activity;Landroid/net/Uri;)V

    const v4, 0x7f0b0338

    invoke-virtual {p4, v2, v3, v4}, Lcom/android/mms/ui/AsyncDialog;->runAsync(Ljava/lang/Runnable;Ljava/lang/Runnable;I)V

    goto :goto_1
.end method

.method public static viewMmsMessageAttachment(Landroid/app/Activity;Landroid/net/Uri;Lcom/android/mms/model/SlideshowModel;Lcom/android/mms/ui/AsyncDialog;)V
    .locals 1
    .parameter "activity"
    .parameter "msgUri"
    .parameter "slideshow"
    .parameter "asyncDialog"

    .prologue
    .line 1446
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lcom/android/mms/ui/MessageUtils;->viewMmsMessageAttachment(Landroid/app/Activity;Landroid/net/Uri;Lcom/android/mms/model/SlideshowModel;ILcom/android/mms/ui/AsyncDialog;)V

    .line 1447
    return-void
.end method

.method public static viewMmsMessageAttachmentMini(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/SlideshowModel;)V
    .locals 7
    .parameter "context"
    .parameter "msgUri"
    .parameter "slideshow"

    .prologue
    const/4 v5, 0x0

    .line 1753
    if-nez p1, :cond_0

    .line 1780
    :goto_0
    return-void

    .line 1756
    :cond_0
    if-nez p2, :cond_2

    move v2, v5

    .line 1757
    .local v2, isSimple:Z
    :goto_1
    if-eqz p2, :cond_1

    .line 1759
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v4

    .line 1761
    .local v4, persister:Lcom/google/android/mms/pdu/PduPersister;
    :try_start_0
    invoke-virtual {p2}, Lcom/android/mms/model/SlideshowModel;->toPduBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v3

    .line 1762
    .local v3, pb:Lcom/google/android/mms/pdu/PduBody;
    const/4 v6, 0x0

    invoke-static {p2, v4, p1, v3, v6}, Lcom/android/mms/ui/MessageUtils;->updatePartsIfNeeded(Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/PduPersister;Landroid/net/Uri;Lcom/google/android/mms/pdu/PduBody;Ljava/util/HashMap;)V

    .line 1764
    invoke-virtual {p2, v3}, Lcom/android/mms/model/SlideshowModel;->sync(Lcom/google/android/mms/pdu/PduBody;)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1773
    .end local v3           #pb:Lcom/google/android/mms/pdu/PduBody;
    .end local v4           #persister:Lcom/google/android/mms/pdu/PduPersister;
    :cond_1
    if-eqz v2, :cond_3

    if-eqz p2, :cond_3

    invoke-virtual {p2, v5}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1774
    new-instance v1, Landroid/content/Intent;

    const-class v5, Lcom/android/mms/ui/SlideshowActivity;

    invoke-direct {v1, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1778
    .local v1, intent:Landroid/content/Intent;
    :goto_2
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1779
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1756
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #isSimple:Z
    :cond_2
    invoke-virtual {p2}, Lcom/android/mms/model/SlideshowModel;->isSimple()Z

    move-result v2

    goto :goto_1

    .line 1765
    .restart local v2       #isSimple:Z
    .restart local v4       #persister:Lcom/google/android/mms/pdu/PduPersister;
    :catch_0
    move-exception v0

    .line 1766
    .local v0, e:Lcom/google/android/mms/MmsException;
    const-string v5, "Mms"

    const-string v6, "Unable to save message for preview"

    invoke-static {v5, v6}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1776
    .end local v0           #e:Lcom/google/android/mms/MmsException;
    .end local v4           #persister:Lcom/google/android/mms/pdu/PduPersister;
    :cond_3
    new-instance v1, Landroid/content/Intent;

    const-class v5, Lcom/android/mms/ui/MmsPlayerActivity;

    invoke-direct {v1, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .restart local v1       #intent:Landroid/content/Intent;
    goto :goto_2
.end method

.method public static viewSimpleSlideshow(Landroid/content/Context;Lcom/android/mms/model/SlideshowModel;)V
    .locals 10
    .parameter "context"
    .parameter "slideshow"

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x1

    .line 1006
    invoke-virtual {p1}, Lcom/android/mms/model/SlideshowModel;->isSimple()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1007
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "viewSimpleSlideshow() called on a non-simple slideshow"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1010
    :cond_0
    invoke-virtual {p1, v7}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v5

    .line 1011
    .local v5, slide:Lcom/android/mms/model/SlideModel;
    const/4 v3, 0x0

    .line 1012
    .local v3, mm:Lcom/android/mms/model/MediaModel;
    invoke-virtual {v5}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1013
    invoke-virtual {v5}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v3

    .line 1023
    :cond_1
    :goto_0
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1024
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1025
    const-string v6, "SingleItemOnly"

    invoke-virtual {v2, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1030
    const-string v6, "CanShare"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1033
    const-string v6, "mediatek.intent.extra.FULLSCREEN_NOTIFICATION"

    invoke-virtual {v2, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1036
    const-string v0, ""

    .line 1037
    .local v0, contentType:Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 1038
    invoke-virtual {v3}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 1039
    const-string v6, "Mms"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "viewSimpleSildeshow. Uri:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1040
    const-string v6, "Mms"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "viewSimpleSildeshow. contentType:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1041
    invoke-virtual {v3}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v2, v6, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1046
    :cond_2
    :try_start_0
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1059
    .end local p0
    :cond_3
    :goto_1
    return-void

    .line 1014
    .end local v0           #contentType:Ljava/lang/String;
    .end local v2           #intent:Landroid/content/Intent;
    .restart local p0
    :cond_4
    invoke-virtual {v5}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1015
    invoke-virtual {v5}, Lcom/android/mms/model/SlideModel;->getVideo()Lcom/android/mms/model/VideoModel;

    move-result-object v3

    goto :goto_0

    .line 1018
    :cond_5
    invoke-virtual {v5}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1019
    invoke-virtual {v5}, Lcom/android/mms/model/SlideModel;->getAudio()Lcom/android/mms/model/AudioModel;

    move-result-object v3

    goto :goto_0

    .line 1047
    .restart local v0       #contentType:Ljava/lang/String;
    .restart local v2       #intent:Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 1048
    .local v1, e:Landroid/content/ActivityNotFoundException;
    invoke-static {}, Lcom/android/mms/MmsApp;->getToastHandler()Lcom/android/mms/MmsApp$ToastHandler;

    move-result-object v6

    invoke-static {v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v4

    .line 1049
    .local v4, msg:Landroid/os/Message;
    const/16 v6, 0xa

    iput v6, v4, Landroid/os/Message;->what:I

    .line 1050
    iput-object v0, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1051
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 1054
    instance-of v6, p0, Lcom/android/mms/ui/ComposeMessageActivity;

    if-eqz v6, :cond_3

    .line 1055
    check-cast p0, Lcom/android/mms/ui/ComposeMessageActivity;

    .end local p0
    iput-boolean v9, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mClickCanResponse:Z

    goto :goto_1
.end method

.method public static writeHprofDataToFile()V
    .locals 5

    .prologue
    .line 1529
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/mms_oom_hprof_data"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1531
    .local v1, filename:Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Landroid/os/Debug;->dumpHprofData(Ljava/lang/String;)V

    .line 1532
    const-string v2, "Mms"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "##### written hprof data to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1536
    :goto_0
    return-void

    .line 1533
    :catch_0
    move-exception v0

    .line 1534
    .local v0, ex:Ljava/io/IOException;
    const-string v2, "Mms"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "writeHprofDataToFile: caught "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
