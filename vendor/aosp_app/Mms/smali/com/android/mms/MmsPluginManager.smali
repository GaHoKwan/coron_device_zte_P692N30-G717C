.class public Lcom/android/mms/MmsPluginManager;
.super Ljava/lang/Object;
.source "MmsPluginManager.java"


# static fields
.field public static final MMS_PLUGIN_TYPE_APPLICATION_GUIDE:I = 0x4

.field public static final MMS_PLUGIN_TYPE_ASK_IF_DOWNLOAD:I = 0xe

.field public static final MMS_PLUGIN_TYPE_CANCEL_DOWNLOAD:I = 0xc

.field public static final MMS_PLUGIN_TYPE_DIALOG_NOTIFY:I = 0x1

.field public static final MMS_PLUGIN_TYPE_FAILED_NOTIFY:I = 0xb

.field public static final MMS_PLUGIN_TYPE_MESSAGE_UTILS:I = 0xd

.field public static final MMS_PLUGIN_TYPE_MMS_ATTACHMENT_ENHANCE:I = 0x5

.field public static final MMS_PLUGIN_TYPE_MMS_COMPOSE:I = 0x8

.field public static final MMS_PLUGIN_TYPE_MMS_SETTINGS:I = 0x9

.field public static final MMS_PLUGIN_TYPE_MMS_SLIDESHOW_EDITOR:I = 0x11

.field public static final MMS_PLUGIN_TYPE_MMS_TRANSACTION:I = 0x7

.field public static final MMS_PLUGIN_TYPE_SMS_RECEIVER:I = 0x3

.field public static final MMS_PLUGIN_TYPE_STRING_REPLACEMENT:I = 0xf

.field public static final MMS_PLUGIN_TYPE_TEXT_SIZE_ADJUST:I = 0x2

.field public static final MMS_PLUGIN_TYPE_UNREAD_MESSAGE:I = 0x10

.field public static final MMS_PLUGIN_TYPE_USER_RECEIVED:I = 0xa

.field private static TAG:Ljava/lang/String;

.field private static mAppGuideExt:Lcom/mediatek/mms/ext/IAppGuideExt;

.field private static mMmsAttachmentEnhancePlugin:Lcom/mediatek/mms/ext/IMmsAttachmentEnhance;

.field private static mMmsComposePlugin:Lcom/mediatek/mms/ext/IMmsCompose;

.field private static mMmsDialogNotifyPlugin:Lcom/mediatek/mms/ext/IMmsDialogNotify;

.field private static mMmsSettingsPlugin:Lcom/mediatek/mms/ext/IMmsSettings;

.field private static mMmsSlideshowEditorPlugin:Lcom/mediatek/mms/ext/IMmsSlideshowEditor;

.field private static mMmsTextSizeAdjustPlugin:Lcom/mediatek/mms/ext/IMmsTextSizeAdjust;

.field private static mMmsTransactionPlugin:Lcom/mediatek/mms/ext/IMmsTransaction;

.field private static mNormalUserReceived:Lcom/mediatek/mms/ext/INormalUserReceived;

.field private static mSmsReceiverPlugin:Lcom/mediatek/mms/ext/ISmsReceiver;

.field private static sAskIfDownloadPlugin:Lcom/mediatek/mms/ext/IMmsAskIfDownload;

.field private static sCancelDownloadPlugin:Lcom/mediatek/mms/ext/IMmsCancelDownload;

.field private static sMmsFailedNotifyPlugin:Lcom/mediatek/mms/ext/IMmsFailedNotify;

.field private static sMmsUtilsPlugin:Lcom/mediatek/mms/ext/IMmsUtils;

.field private static sStringReplacementPlugin:Lcom/mediatek/mms/ext/IStringReplacement;

.field private static sUnreadMessagePlugin:Lcom/mediatek/mms/ext/IUnreadMessageNumber;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 50
    const-string v0, "MmsPluginManager"

    sput-object v0, Lcom/android/mms/MmsPluginManager;->TAG:Ljava/lang/String;

    .line 81
    sput-object v1, Lcom/android/mms/MmsPluginManager;->mMmsTextSizeAdjustPlugin:Lcom/mediatek/mms/ext/IMmsTextSizeAdjust;

    .line 82
    sput-object v1, Lcom/android/mms/MmsPluginManager;->mMmsDialogNotifyPlugin:Lcom/mediatek/mms/ext/IMmsDialogNotify;

    .line 84
    sput-object v1, Lcom/android/mms/MmsPluginManager;->mSmsReceiverPlugin:Lcom/mediatek/mms/ext/ISmsReceiver;

    .line 85
    sput-object v1, Lcom/android/mms/MmsPluginManager;->mAppGuideExt:Lcom/mediatek/mms/ext/IAppGuideExt;

    .line 87
    sput-object v1, Lcom/android/mms/MmsPluginManager;->mMmsAttachmentEnhancePlugin:Lcom/mediatek/mms/ext/IMmsAttachmentEnhance;

    .line 89
    sput-object v1, Lcom/android/mms/MmsPluginManager;->mMmsTransactionPlugin:Lcom/mediatek/mms/ext/IMmsTransaction;

    .line 90
    sput-object v1, Lcom/android/mms/MmsPluginManager;->mMmsComposePlugin:Lcom/mediatek/mms/ext/IMmsCompose;

    .line 92
    sput-object v1, Lcom/android/mms/MmsPluginManager;->mMmsSettingsPlugin:Lcom/mediatek/mms/ext/IMmsSettings;

    .line 94
    sput-object v1, Lcom/android/mms/MmsPluginManager;->mNormalUserReceived:Lcom/mediatek/mms/ext/INormalUserReceived;

    .line 97
    sput-object v1, Lcom/android/mms/MmsPluginManager;->sMmsFailedNotifyPlugin:Lcom/mediatek/mms/ext/IMmsFailedNotify;

    .line 98
    sput-object v1, Lcom/android/mms/MmsPluginManager;->sCancelDownloadPlugin:Lcom/mediatek/mms/ext/IMmsCancelDownload;

    .line 99
    sput-object v1, Lcom/android/mms/MmsPluginManager;->sAskIfDownloadPlugin:Lcom/mediatek/mms/ext/IMmsAskIfDownload;

    .line 100
    sput-object v1, Lcom/android/mms/MmsPluginManager;->sMmsUtilsPlugin:Lcom/mediatek/mms/ext/IMmsUtils;

    .line 101
    sput-object v1, Lcom/android/mms/MmsPluginManager;->sStringReplacementPlugin:Lcom/mediatek/mms/ext/IStringReplacement;

    .line 102
    sput-object v1, Lcom/android/mms/MmsPluginManager;->sUnreadMessagePlugin:Lcom/mediatek/mms/ext/IUnreadMessageNumber;

    .line 106
    sput-object v1, Lcom/android/mms/MmsPluginManager;->mMmsSlideshowEditorPlugin:Lcom/mediatek/mms/ext/IMmsSlideshowEditor;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMmsPluginObject(I)Ljava/lang/Object;
    .locals 4
    .parameter "type"

    .prologue
    .line 261
    const/4 v0, 0x0

    .line 262
    .local v0, obj:Ljava/lang/Object;
    sget-object v1, Lcom/android/mms/MmsPluginManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMmsPlugin, type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    packed-switch p0, :pswitch_data_0

    .line 335
    :pswitch_0
    sget-object v1, Lcom/android/mms/MmsPluginManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMmsPlugin, type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " don\'t exist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    .end local v0           #obj:Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 266
    .restart local v0       #obj:Ljava/lang/Object;
    :pswitch_1
    sget-object v0, Lcom/android/mms/MmsPluginManager;->mMmsDialogNotifyPlugin:Lcom/mediatek/mms/ext/IMmsDialogNotify;

    .line 267
    .local v0, obj:Lcom/mediatek/mms/ext/IMmsDialogNotify;
    goto :goto_0

    .line 270
    .local v0, obj:Ljava/lang/Object;
    :pswitch_2
    sget-object v0, Lcom/android/mms/MmsPluginManager;->mMmsTextSizeAdjustPlugin:Lcom/mediatek/mms/ext/IMmsTextSizeAdjust;

    .line 271
    .local v0, obj:Lcom/mediatek/mms/ext/IMmsTextSizeAdjust;
    goto :goto_0

    .line 275
    .local v0, obj:Ljava/lang/Object;
    :pswitch_3
    sget-object v0, Lcom/android/mms/MmsPluginManager;->mSmsReceiverPlugin:Lcom/mediatek/mms/ext/ISmsReceiver;

    .line 276
    .local v0, obj:Lcom/mediatek/mms/ext/ISmsReceiver;
    goto :goto_0

    .line 278
    .local v0, obj:Ljava/lang/Object;
    :pswitch_4
    sget-object v0, Lcom/android/mms/MmsPluginManager;->mMmsAttachmentEnhancePlugin:Lcom/mediatek/mms/ext/IMmsAttachmentEnhance;

    .line 279
    .local v0, obj:Lcom/mediatek/mms/ext/IMmsAttachmentEnhance;
    goto :goto_0

    .line 282
    .local v0, obj:Ljava/lang/Object;
    :pswitch_5
    sget-object v0, Lcom/android/mms/MmsPluginManager;->mAppGuideExt:Lcom/mediatek/mms/ext/IAppGuideExt;

    .line 283
    .local v0, obj:Lcom/mediatek/mms/ext/IAppGuideExt;
    goto :goto_0

    .line 287
    .local v0, obj:Ljava/lang/Object;
    :pswitch_6
    sget-object v0, Lcom/android/mms/MmsPluginManager;->mMmsTransactionPlugin:Lcom/mediatek/mms/ext/IMmsTransaction;

    .line 288
    .local v0, obj:Lcom/mediatek/mms/ext/IMmsTransaction;
    goto :goto_0

    .line 291
    .local v0, obj:Ljava/lang/Object;
    :pswitch_7
    sget-object v0, Lcom/android/mms/MmsPluginManager;->mMmsComposePlugin:Lcom/mediatek/mms/ext/IMmsCompose;

    .line 292
    .local v0, obj:Lcom/mediatek/mms/ext/IMmsCompose;
    goto :goto_0

    .line 294
    .local v0, obj:Ljava/lang/Object;
    :pswitch_8
    sget-object v0, Lcom/android/mms/MmsPluginManager;->mMmsSettingsPlugin:Lcom/mediatek/mms/ext/IMmsSettings;

    .line 295
    .local v0, obj:Lcom/mediatek/mms/ext/IMmsSettings;
    goto :goto_0

    .line 298
    .local v0, obj:Ljava/lang/Object;
    :pswitch_9
    sget-object v0, Lcom/android/mms/MmsPluginManager;->mNormalUserReceived:Lcom/mediatek/mms/ext/INormalUserReceived;

    .line 299
    .local v0, obj:Lcom/mediatek/mms/ext/INormalUserReceived;
    goto :goto_0

    .line 304
    .local v0, obj:Ljava/lang/Object;
    :pswitch_a
    sget-object v0, Lcom/android/mms/MmsPluginManager;->sMmsFailedNotifyPlugin:Lcom/mediatek/mms/ext/IMmsFailedNotify;

    .line 305
    .local v0, obj:Lcom/mediatek/mms/ext/IMmsFailedNotify;
    goto :goto_0

    .line 308
    .local v0, obj:Ljava/lang/Object;
    :pswitch_b
    sget-object v0, Lcom/android/mms/MmsPluginManager;->sCancelDownloadPlugin:Lcom/mediatek/mms/ext/IMmsCancelDownload;

    .line 309
    .local v0, obj:Lcom/mediatek/mms/ext/IMmsCancelDownload;
    goto :goto_0

    .line 312
    .local v0, obj:Ljava/lang/Object;
    :pswitch_c
    sget-object v0, Lcom/android/mms/MmsPluginManager;->sMmsUtilsPlugin:Lcom/mediatek/mms/ext/IMmsUtils;

    .line 313
    .local v0, obj:Lcom/mediatek/mms/ext/IMmsUtils;
    goto :goto_0

    .line 316
    .local v0, obj:Ljava/lang/Object;
    :pswitch_d
    sget-object v0, Lcom/android/mms/MmsPluginManager;->sAskIfDownloadPlugin:Lcom/mediatek/mms/ext/IMmsAskIfDownload;

    .line 317
    .local v0, obj:Lcom/mediatek/mms/ext/IMmsAskIfDownload;
    goto :goto_0

    .line 320
    .local v0, obj:Ljava/lang/Object;
    :pswitch_e
    sget-object v0, Lcom/android/mms/MmsPluginManager;->sStringReplacementPlugin:Lcom/mediatek/mms/ext/IStringReplacement;

    .line 321
    .local v0, obj:Lcom/mediatek/mms/ext/IStringReplacement;
    goto :goto_0

    .line 324
    .local v0, obj:Ljava/lang/Object;
    :pswitch_f
    sget-object v0, Lcom/android/mms/MmsPluginManager;->sUnreadMessagePlugin:Lcom/mediatek/mms/ext/IUnreadMessageNumber;

    .line 325
    .local v0, obj:Lcom/mediatek/mms/ext/IUnreadMessageNumber;
    goto :goto_0

    .line 330
    .local v0, obj:Ljava/lang/Object;
    :pswitch_10
    sget-object v0, Lcom/android/mms/MmsPluginManager;->mMmsSlideshowEditorPlugin:Lcom/mediatek/mms/ext/IMmsSlideshowEditor;

    .line 331
    .local v0, obj:Lcom/mediatek/mms/ext/IMmsSlideshowEditor;
    goto :goto_0

    .line 263
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method public static initPlugins(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 112
    :try_start_0
    const-class v1, Lcom/mediatek/mms/ext/IMmsDialogNotify;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/content/pm/Signature;

    invoke-static {p0, v1, v2}, Lcom/mediatek/encapsulation/com/mediatek/pluginmanager/EncapsulatedPluginManager;->createPluginObject(Landroid/content/Context;Ljava/lang/String;[Landroid/content/pm/Signature;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/mms/ext/IMmsDialogNotify;

    sput-object v1, Lcom/android/mms/MmsPluginManager;->mMmsDialogNotifyPlugin:Lcom/mediatek/mms/ext/IMmsDialogNotify;

    .line 113
    sget-object v1, Lcom/android/mms/MmsPluginManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "operator mMmsDialogNotifyPlugin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/mms/MmsPluginManager;->mMmsDialogNotifyPlugin:Lcom/mediatek/mms/ext/IMmsDialogNotify;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/util/AndroidException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :goto_0
    :try_start_1
    const-class v1, Lcom/mediatek/mms/ext/IMmsTextSizeAdjust;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/content/pm/Signature;

    invoke-static {p0, v1, v2}, Lcom/mediatek/encapsulation/com/mediatek/pluginmanager/EncapsulatedPluginManager;->createPluginObject(Landroid/content/Context;Ljava/lang/String;[Landroid/content/pm/Signature;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/mms/ext/IMmsTextSizeAdjust;

    sput-object v1, Lcom/android/mms/MmsPluginManager;->mMmsTextSizeAdjustPlugin:Lcom/mediatek/mms/ext/IMmsTextSizeAdjust;

    .line 122
    sget-object v1, Lcom/android/mms/MmsPluginManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "operator mMmsTextSizeAdjustPlugin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/mms/MmsPluginManager;->mMmsTextSizeAdjustPlugin:Lcom/mediatek/mms/ext/IMmsTextSizeAdjust;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/util/AndroidException; {:try_start_1 .. :try_end_1} :catch_1

    .line 131
    :goto_1
    :try_start_2
    const-class v1, Lcom/mediatek/mms/ext/ISmsReceiver;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/content/pm/Signature;

    invoke-static {p0, v1, v2}, Lcom/mediatek/encapsulation/com/mediatek/pluginmanager/EncapsulatedPluginManager;->createPluginObject(Landroid/content/Context;Ljava/lang/String;[Landroid/content/pm/Signature;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/mms/ext/ISmsReceiver;

    sput-object v1, Lcom/android/mms/MmsPluginManager;->mSmsReceiverPlugin:Lcom/mediatek/mms/ext/ISmsReceiver;

    .line 132
    sget-object v1, Lcom/android/mms/MmsPluginManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "operator mSmsReceiverPlugin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/mms/MmsPluginManager;->mSmsReceiverPlugin:Lcom/mediatek/mms/ext/ISmsReceiver;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/util/AndroidException; {:try_start_2 .. :try_end_2} :catch_2

    .line 139
    :goto_2
    :try_start_3
    const-class v1, Lcom/mediatek/mms/ext/IAppGuideExt;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/content/pm/Signature;

    invoke-static {p0, v1, v2}, Lcom/mediatek/encapsulation/com/mediatek/pluginmanager/EncapsulatedPluginManager;->createPluginObject(Landroid/content/Context;Ljava/lang/String;[Landroid/content/pm/Signature;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/mms/ext/IAppGuideExt;

    sput-object v1, Lcom/android/mms/MmsPluginManager;->mAppGuideExt:Lcom/mediatek/mms/ext/IAppGuideExt;
    :try_end_3
    .catch Landroid/util/AndroidException; {:try_start_3 .. :try_end_3} :catch_3

    .line 148
    :goto_3
    :try_start_4
    const-class v1, Lcom/mediatek/mms/ext/IMmsAttachmentEnhance;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/content/pm/Signature;

    invoke-static {p0, v1, v2}, Lcom/mediatek/encapsulation/com/mediatek/pluginmanager/EncapsulatedPluginManager;->createPluginObject(Landroid/content/Context;Ljava/lang/String;[Landroid/content/pm/Signature;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/mms/ext/IMmsAttachmentEnhance;

    sput-object v1, Lcom/android/mms/MmsPluginManager;->mMmsAttachmentEnhancePlugin:Lcom/mediatek/mms/ext/IMmsAttachmentEnhance;

    .line 150
    sget-object v1, Lcom/android/mms/MmsPluginManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "operator mMmsAttachmentEnhancePlugin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/mms/MmsPluginManager;->mMmsAttachmentEnhancePlugin:Lcom/mediatek/mms/ext/IMmsAttachmentEnhance;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Landroid/util/AndroidException; {:try_start_4 .. :try_end_4} :catch_4

    .line 157
    :goto_4
    :try_start_5
    const-class v1, Lcom/mediatek/mms/ext/IMmsTransaction;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/content/pm/Signature;

    invoke-static {p0, v1, v2}, Lcom/mediatek/encapsulation/com/mediatek/pluginmanager/EncapsulatedPluginManager;->createPluginObject(Landroid/content/Context;Ljava/lang/String;[Landroid/content/pm/Signature;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/mms/ext/IMmsTransaction;

    sput-object v1, Lcom/android/mms/MmsPluginManager;->mMmsTransactionPlugin:Lcom/mediatek/mms/ext/IMmsTransaction;

    .line 158
    sget-object v1, Lcom/android/mms/MmsPluginManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "operator mMmsTransactionPlugin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/mms/MmsPluginManager;->mMmsTransactionPlugin:Lcom/mediatek/mms/ext/IMmsTransaction;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/util/AndroidException; {:try_start_5 .. :try_end_5} :catch_5

    .line 166
    :goto_5
    :try_start_6
    const-class v1, Lcom/mediatek/mms/ext/IMmsCompose;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/content/pm/Signature;

    invoke-static {p0, v1, v2}, Lcom/mediatek/encapsulation/com/mediatek/pluginmanager/EncapsulatedPluginManager;->createPluginObject(Landroid/content/Context;Ljava/lang/String;[Landroid/content/pm/Signature;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/mms/ext/IMmsCompose;

    sput-object v1, Lcom/android/mms/MmsPluginManager;->mMmsComposePlugin:Lcom/mediatek/mms/ext/IMmsCompose;

    .line 168
    sget-object v1, Lcom/android/mms/MmsPluginManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "operator mMmsComposePlugin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/mms/MmsPluginManager;->mMmsComposePlugin:Lcom/mediatek/mms/ext/IMmsCompose;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Landroid/util/AndroidException; {:try_start_6 .. :try_end_6} :catch_6

    .line 172
    :goto_6
    sget-object v1, Lcom/android/mms/MmsPluginManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "default mMmsComposePlugin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/mms/MmsPluginManager;->mMmsComposePlugin:Lcom/mediatek/mms/ext/IMmsCompose;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    :try_start_7
    const-class v1, Lcom/mediatek/mms/ext/IMmsSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/content/pm/Signature;

    invoke-static {p0, v1, v2}, Lcom/mediatek/encapsulation/com/mediatek/pluginmanager/EncapsulatedPluginManager;->createPluginObject(Landroid/content/Context;Ljava/lang/String;[Landroid/content/pm/Signature;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/mms/ext/IMmsSettings;

    sput-object v1, Lcom/android/mms/MmsPluginManager;->mMmsSettingsPlugin:Lcom/mediatek/mms/ext/IMmsSettings;

    .line 176
    sget-object v1, Lcom/android/mms/MmsPluginManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "operator mMmsSettingsPlugin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/mms/MmsPluginManager;->mMmsSettingsPlugin:Lcom/mediatek/mms/ext/IMmsSettings;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/util/AndroidException; {:try_start_7 .. :try_end_7} :catch_7

    .line 184
    :goto_7
    :try_start_8
    const-class v1, Lcom/mediatek/mms/ext/INormalUserReceived;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/content/pm/Signature;

    invoke-static {p0, v1, v2}, Lcom/mediatek/encapsulation/com/mediatek/pluginmanager/EncapsulatedPluginManager;->createPluginObject(Landroid/content/Context;Ljava/lang/String;[Landroid/content/pm/Signature;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/mms/ext/INormalUserReceived;

    sput-object v1, Lcom/android/mms/MmsPluginManager;->mNormalUserReceived:Lcom/mediatek/mms/ext/INormalUserReceived;

    .line 185
    sget-object v1, Lcom/android/mms/MmsPluginManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "operator mNormalUserReceived = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/mms/MmsPluginManager;->mNormalUserReceived:Lcom/mediatek/mms/ext/INormalUserReceived;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Landroid/util/AndroidException; {:try_start_8 .. :try_end_8} :catch_8

    .line 194
    :goto_8
    :try_start_9
    const-class v1, Lcom/mediatek/mms/ext/IMmsFailedNotify;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/content/pm/Signature;

    invoke-static {p0, v1, v2}, Lcom/mediatek/encapsulation/com/mediatek/pluginmanager/EncapsulatedPluginManager;->createPluginObject(Landroid/content/Context;Ljava/lang/String;[Landroid/content/pm/Signature;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/mms/ext/IMmsFailedNotify;

    sput-object v1, Lcom/android/mms/MmsPluginManager;->sMmsFailedNotifyPlugin:Lcom/mediatek/mms/ext/IMmsFailedNotify;

    .line 196
    sget-object v1, Lcom/android/mms/MmsPluginManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "operator sMmsFailedNotifyPlugin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/mms/MmsPluginManager;->sMmsFailedNotifyPlugin:Lcom/mediatek/mms/ext/IMmsFailedNotify;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/util/AndroidException; {:try_start_9 .. :try_end_9} :catch_9

    .line 203
    :goto_9
    :try_start_a
    const-class v1, Lcom/mediatek/mms/ext/IMmsCancelDownload;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/content/pm/Signature;

    invoke-static {p0, v1, v2}, Lcom/mediatek/encapsulation/com/mediatek/pluginmanager/EncapsulatedPluginManager;->createPluginObject(Landroid/content/Context;Ljava/lang/String;[Landroid/content/pm/Signature;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/mms/ext/IMmsCancelDownload;

    sput-object v1, Lcom/android/mms/MmsPluginManager;->sCancelDownloadPlugin:Lcom/mediatek/mms/ext/IMmsCancelDownload;

    .line 205
    sget-object v1, Lcom/android/mms/MmsPluginManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "operator sCancelDownloadPlugin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/mms/MmsPluginManager;->sCancelDownloadPlugin:Lcom/mediatek/mms/ext/IMmsCancelDownload;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Landroid/util/AndroidException; {:try_start_a .. :try_end_a} :catch_a

    .line 212
    :goto_a
    :try_start_b
    const-class v1, Lcom/mediatek/mms/ext/IMmsAskIfDownload;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/content/pm/Signature;

    invoke-static {p0, v1, v2}, Lcom/mediatek/encapsulation/com/mediatek/pluginmanager/EncapsulatedPluginManager;->createPluginObject(Landroid/content/Context;Ljava/lang/String;[Landroid/content/pm/Signature;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/mms/ext/IMmsAskIfDownload;

    sput-object v1, Lcom/android/mms/MmsPluginManager;->sAskIfDownloadPlugin:Lcom/mediatek/mms/ext/IMmsAskIfDownload;

    .line 214
    sget-object v1, Lcom/android/mms/MmsPluginManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "operator sAskIfDownloadPlugin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/mms/MmsPluginManager;->sAskIfDownloadPlugin:Lcom/mediatek/mms/ext/IMmsAskIfDownload;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Landroid/util/AndroidException; {:try_start_b .. :try_end_b} :catch_b

    .line 221
    :goto_b
    :try_start_c
    const-class v1, Lcom/mediatek/mms/ext/IMmsUtils;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/content/pm/Signature;

    invoke-static {p0, v1, v2}, Lcom/mediatek/encapsulation/com/mediatek/pluginmanager/EncapsulatedPluginManager;->createPluginObject(Landroid/content/Context;Ljava/lang/String;[Landroid/content/pm/Signature;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/mms/ext/IMmsUtils;

    sput-object v1, Lcom/android/mms/MmsPluginManager;->sMmsUtilsPlugin:Lcom/mediatek/mms/ext/IMmsUtils;

    .line 223
    sget-object v1, Lcom/android/mms/MmsPluginManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "operator sMmsUtilsPlugin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/mms/MmsPluginManager;->sMmsUtilsPlugin:Lcom/mediatek/mms/ext/IMmsUtils;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Landroid/util/AndroidException; {:try_start_c .. :try_end_c} :catch_c

    .line 230
    :goto_c
    :try_start_d
    const-class v1, Lcom/mediatek/mms/ext/IStringReplacement;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/content/pm/Signature;

    invoke-static {p0, v1, v2}, Lcom/mediatek/encapsulation/com/mediatek/pluginmanager/EncapsulatedPluginManager;->createPluginObject(Landroid/content/Context;Ljava/lang/String;[Landroid/content/pm/Signature;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/mms/ext/IStringReplacement;

    sput-object v1, Lcom/android/mms/MmsPluginManager;->sStringReplacementPlugin:Lcom/mediatek/mms/ext/IStringReplacement;

    .line 232
    sget-object v1, Lcom/android/mms/MmsPluginManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "operator sStringReplacementPlugin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/mms/MmsPluginManager;->sStringReplacementPlugin:Lcom/mediatek/mms/ext/IStringReplacement;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catch Landroid/util/AndroidException; {:try_start_d .. :try_end_d} :catch_d

    .line 239
    :goto_d
    :try_start_e
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/mediatek/mms/ext/IUnreadMessageNumber;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Landroid/content/pm/Signature;

    invoke-static {v1, v2, v3}, Lcom/mediatek/encapsulation/com/mediatek/pluginmanager/EncapsulatedPluginManager;->createPluginObject(Landroid/content/Context;Ljava/lang/String;[Landroid/content/pm/Signature;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/mms/ext/IUnreadMessageNumber;

    sput-object v1, Lcom/android/mms/MmsPluginManager;->sUnreadMessagePlugin:Lcom/mediatek/mms/ext/IUnreadMessageNumber;

    .line 241
    sget-object v1, Lcom/android/mms/MmsPluginManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "operator sUnreadMessagePlugin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/mms/MmsPluginManager;->sUnreadMessagePlugin:Lcom/mediatek/mms/ext/IUnreadMessageNumber;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catch Landroid/util/AndroidException; {:try_start_e .. :try_end_e} :catch_e

    .line 250
    :goto_e
    :try_start_f
    const-class v1, Lcom/mediatek/mms/ext/IMmsSlideshowEditor;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/content/pm/Signature;

    invoke-static {p0, v1, v2}, Lcom/mediatek/encapsulation/com/mediatek/pluginmanager/EncapsulatedPluginManager;->createPluginObject(Landroid/content/Context;Ljava/lang/String;[Landroid/content/pm/Signature;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/mms/ext/IMmsSlideshowEditor;

    sput-object v1, Lcom/android/mms/MmsPluginManager;->mMmsSlideshowEditorPlugin:Lcom/mediatek/mms/ext/IMmsSlideshowEditor;

    .line 252
    sget-object v1, Lcom/android/mms/MmsPluginManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "operator mMmsSlideshowEditorPlugin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/mms/MmsPluginManager;->mMmsSlideshowEditorPlugin:Lcom/mediatek/mms/ext/IMmsSlideshowEditor;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catch Landroid/util/AndroidException; {:try_start_f .. :try_end_f} :catch_f

    .line 257
    :goto_f
    return-void

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, e:Landroid/util/AndroidException;
    new-instance v1, Lcom/mediatek/mms/ext/MmsDialogNotifyImpl;

    invoke-direct {v1, p0}, Lcom/mediatek/mms/ext/MmsDialogNotifyImpl;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/mms/MmsPluginManager;->mMmsDialogNotifyPlugin:Lcom/mediatek/mms/ext/IMmsDialogNotify;

    .line 116
    sget-object v1, Lcom/android/mms/MmsPluginManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "default mMmsDialogNotifyPlugin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/mms/MmsPluginManager;->mMmsDialogNotifyPlugin:Lcom/mediatek/mms/ext/IMmsDialogNotify;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 123
    .end local v0           #e:Landroid/util/AndroidException;
    :catch_1
    move-exception v0

    .line 124
    .restart local v0       #e:Landroid/util/AndroidException;
    new-instance v1, Lcom/mediatek/mms/ext/MmsTextSizeAdjustImpl;

    invoke-direct {v1, p0}, Lcom/mediatek/mms/ext/MmsTextSizeAdjustImpl;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/mms/MmsPluginManager;->mMmsTextSizeAdjustPlugin:Lcom/mediatek/mms/ext/IMmsTextSizeAdjust;

    .line 125
    sget-object v1, Lcom/android/mms/MmsPluginManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "default mMmsTextSizeAdjustPlugin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/mms/MmsPluginManager;->mMmsTextSizeAdjustPlugin:Lcom/mediatek/mms/ext/IMmsTextSizeAdjust;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 133
    .end local v0           #e:Landroid/util/AndroidException;
    :catch_2
    move-exception v0

    .line 134
    .restart local v0       #e:Landroid/util/AndroidException;
    new-instance v1, Lcom/mediatek/mms/ext/SmsReceiverImpl;

    invoke-direct {v1, p0}, Lcom/mediatek/mms/ext/SmsReceiverImpl;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/mms/MmsPluginManager;->mSmsReceiverPlugin:Lcom/mediatek/mms/ext/ISmsReceiver;

    .line 135
    sget-object v1, Lcom/android/mms/MmsPluginManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "default mSmsReceiverPlugin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/mms/MmsPluginManager;->mSmsReceiverPlugin:Lcom/mediatek/mms/ext/ISmsReceiver;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 141
    .end local v0           #e:Landroid/util/AndroidException;
    :catch_3
    move-exception v0

    .line 142
    .restart local v0       #e:Landroid/util/AndroidException;
    new-instance v1, Lcom/mediatek/mms/ext/DefaultAppGuideExt;

    invoke-direct {v1}, Lcom/mediatek/mms/ext/DefaultAppGuideExt;-><init>()V

    sput-object v1, Lcom/android/mms/MmsPluginManager;->mAppGuideExt:Lcom/mediatek/mms/ext/IAppGuideExt;

    .line 143
    sget-object v1, Lcom/android/mms/MmsPluginManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "default mAppGuideExt = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/mms/MmsPluginManager;->mAppGuideExt:Lcom/mediatek/mms/ext/IAppGuideExt;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 151
    .end local v0           #e:Landroid/util/AndroidException;
    :catch_4
    move-exception v0

    .line 152
    .restart local v0       #e:Landroid/util/AndroidException;
    new-instance v1, Lcom/mediatek/mms/ext/MmsAttachmentEnhanceImpl;

    invoke-direct {v1, p0}, Lcom/mediatek/mms/ext/MmsAttachmentEnhanceImpl;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/mms/MmsPluginManager;->mMmsAttachmentEnhancePlugin:Lcom/mediatek/mms/ext/IMmsAttachmentEnhance;

    .line 153
    sget-object v1, Lcom/android/mms/MmsPluginManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "default mMmsAttachmentEnhancePlugin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/mms/MmsPluginManager;->mMmsAttachmentEnhancePlugin:Lcom/mediatek/mms/ext/IMmsAttachmentEnhance;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 159
    .end local v0           #e:Landroid/util/AndroidException;
    :catch_5
    move-exception v0

    .line 160
    .restart local v0       #e:Landroid/util/AndroidException;
    new-instance v1, Lcom/mediatek/mms/ext/MmsTransactionImpl;

    invoke-direct {v1, p0}, Lcom/mediatek/mms/ext/MmsTransactionImpl;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/mms/MmsPluginManager;->mMmsTransactionPlugin:Lcom/mediatek/mms/ext/IMmsTransaction;

    .line 161
    sget-object v1, Lcom/android/mms/MmsPluginManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "default mMmsTransactionPlugin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/mms/MmsPluginManager;->mMmsTransactionPlugin:Lcom/mediatek/mms/ext/IMmsTransaction;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 169
    .end local v0           #e:Landroid/util/AndroidException;
    :catch_6
    move-exception v0

    .line 170
    .restart local v0       #e:Landroid/util/AndroidException;
    new-instance v1, Lcom/mediatek/mms/ext/MmsComposeImpl;

    invoke-direct {v1, p0}, Lcom/mediatek/mms/ext/MmsComposeImpl;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/mms/MmsPluginManager;->mMmsComposePlugin:Lcom/mediatek/mms/ext/IMmsCompose;

    goto/16 :goto_6

    .line 177
    .end local v0           #e:Landroid/util/AndroidException;
    :catch_7
    move-exception v0

    .line 178
    .restart local v0       #e:Landroid/util/AndroidException;
    new-instance v1, Lcom/mediatek/mms/ext/MmsSettingsImpl;

    invoke-direct {v1, p0}, Lcom/mediatek/mms/ext/MmsSettingsImpl;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/mms/MmsPluginManager;->mMmsSettingsPlugin:Lcom/mediatek/mms/ext/IMmsSettings;

    .line 179
    sget-object v1, Lcom/android/mms/MmsPluginManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "default mMmsSettingsPlugin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/mms/MmsPluginManager;->mMmsSettingsPlugin:Lcom/mediatek/mms/ext/IMmsSettings;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 186
    .end local v0           #e:Landroid/util/AndroidException;
    :catch_8
    move-exception v0

    .line 187
    .restart local v0       #e:Landroid/util/AndroidException;
    new-instance v1, Lcom/mediatek/mms/ext/NormalUserReceivedImpl;

    invoke-direct {v1, p0}, Lcom/mediatek/mms/ext/NormalUserReceivedImpl;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/mms/MmsPluginManager;->mNormalUserReceived:Lcom/mediatek/mms/ext/INormalUserReceived;

    .line 188
    sget-object v1, Lcom/android/mms/MmsPluginManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "default mNormalUserReceived = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/mms/MmsPluginManager;->mNormalUserReceived:Lcom/mediatek/mms/ext/INormalUserReceived;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 197
    .end local v0           #e:Landroid/util/AndroidException;
    :catch_9
    move-exception v0

    .line 198
    .restart local v0       #e:Landroid/util/AndroidException;
    new-instance v1, Lcom/mediatek/mms/ext/MmsFailedNotifyImpl;

    invoke-direct {v1, p0}, Lcom/mediatek/mms/ext/MmsFailedNotifyImpl;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/mms/MmsPluginManager;->sMmsFailedNotifyPlugin:Lcom/mediatek/mms/ext/IMmsFailedNotify;

    .line 199
    sget-object v1, Lcom/android/mms/MmsPluginManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "default sMmsFailedNotifyPlugin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/mms/MmsPluginManager;->sMmsFailedNotifyPlugin:Lcom/mediatek/mms/ext/IMmsFailedNotify;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 206
    .end local v0           #e:Landroid/util/AndroidException;
    :catch_a
    move-exception v0

    .line 207
    .restart local v0       #e:Landroid/util/AndroidException;
    new-instance v1, Lcom/mediatek/mms/ext/MmsCancelDownloadImpl;

    invoke-direct {v1, p0}, Lcom/mediatek/mms/ext/MmsCancelDownloadImpl;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/mms/MmsPluginManager;->sCancelDownloadPlugin:Lcom/mediatek/mms/ext/IMmsCancelDownload;

    .line 208
    sget-object v1, Lcom/android/mms/MmsPluginManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "default sCancelDownloadPlugin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/mms/MmsPluginManager;->sCancelDownloadPlugin:Lcom/mediatek/mms/ext/IMmsCancelDownload;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    .line 215
    .end local v0           #e:Landroid/util/AndroidException;
    :catch_b
    move-exception v0

    .line 216
    .restart local v0       #e:Landroid/util/AndroidException;
    new-instance v1, Lcom/mediatek/mms/ext/MmsAskIfDownloadImpl;

    invoke-direct {v1, p0}, Lcom/mediatek/mms/ext/MmsAskIfDownloadImpl;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/mms/MmsPluginManager;->sAskIfDownloadPlugin:Lcom/mediatek/mms/ext/IMmsAskIfDownload;

    .line 217
    sget-object v1, Lcom/android/mms/MmsPluginManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "default sAskIfDownloadPlugin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/mms/MmsPluginManager;->sAskIfDownloadPlugin:Lcom/mediatek/mms/ext/IMmsAskIfDownload;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 224
    .end local v0           #e:Landroid/util/AndroidException;
    :catch_c
    move-exception v0

    .line 225
    .restart local v0       #e:Landroid/util/AndroidException;
    new-instance v1, Lcom/mediatek/mms/ext/MmsUtilsImpl;

    invoke-direct {v1, p0}, Lcom/mediatek/mms/ext/MmsUtilsImpl;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/mms/MmsPluginManager;->sMmsUtilsPlugin:Lcom/mediatek/mms/ext/IMmsUtils;

    .line 226
    sget-object v1, Lcom/android/mms/MmsPluginManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "default sMmsUtilsPlugin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/mms/MmsPluginManager;->sMmsUtilsPlugin:Lcom/mediatek/mms/ext/IMmsUtils;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    .line 233
    .end local v0           #e:Landroid/util/AndroidException;
    :catch_d
    move-exception v0

    .line 234
    .restart local v0       #e:Landroid/util/AndroidException;
    new-instance v1, Lcom/mediatek/mms/ext/StringReplacementImpl;

    invoke-direct {v1, p0}, Lcom/mediatek/mms/ext/StringReplacementImpl;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/mms/MmsPluginManager;->sStringReplacementPlugin:Lcom/mediatek/mms/ext/IStringReplacement;

    .line 235
    sget-object v1, Lcom/android/mms/MmsPluginManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "default sStringReplacementPlugin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/mms/MmsPluginManager;->sStringReplacementPlugin:Lcom/mediatek/mms/ext/IStringReplacement;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d

    .line 242
    .end local v0           #e:Landroid/util/AndroidException;
    :catch_e
    move-exception v0

    .line 243
    .restart local v0       #e:Landroid/util/AndroidException;
    new-instance v1, Lcom/mediatek/mms/ext/UnreadMessageNumberImpl;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/mediatek/mms/ext/UnreadMessageNumberImpl;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/mms/MmsPluginManager;->sUnreadMessagePlugin:Lcom/mediatek/mms/ext/IUnreadMessageNumber;

    .line 244
    sget-object v1, Lcom/android/mms/MmsPluginManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "default sUnreadMessagePlugin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/mms/MmsPluginManager;->sUnreadMessagePlugin:Lcom/mediatek/mms/ext/IUnreadMessageNumber;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_e

    .line 253
    .end local v0           #e:Landroid/util/AndroidException;
    :catch_f
    move-exception v0

    .line 254
    .restart local v0       #e:Landroid/util/AndroidException;
    new-instance v1, Lcom/mediatek/mms/ext/MmsSlideshowEditorImpl;

    invoke-direct {v1, p0}, Lcom/mediatek/mms/ext/MmsSlideshowEditorImpl;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/mms/MmsPluginManager;->mMmsSlideshowEditorPlugin:Lcom/mediatek/mms/ext/IMmsSlideshowEditor;

    .line 255
    sget-object v1, Lcom/android/mms/MmsPluginManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "default mMmsSlideshowEditorPlugin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/mms/MmsPluginManager;->mMmsSlideshowEditorPlugin:Lcom/mediatek/mms/ext/IMmsSlideshowEditor;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_f
.end method
