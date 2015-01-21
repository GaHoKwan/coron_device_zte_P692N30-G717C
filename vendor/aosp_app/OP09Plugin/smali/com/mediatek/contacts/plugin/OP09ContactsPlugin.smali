.class public Lcom/mediatek/contacts/plugin/OP09ContactsPlugin;
.super Lcom/android/contacts/ext/ContactPluginDefault;
.source "OP09ContactsPlugin.java"


# static fields
.field public static final BEIJING_TIME_ZONE_ID:Ljava/lang/String; = "Asia/Shanghai"

.field public static final BROADCAST_TIME_DISPLAY_MODE:Ljava/lang/String; = "com.mediatek.ct.TIME_DISPLAY_MODE"

.field private static final TAG:Ljava/lang/String; = "OP09ContactsPlugin"


# instance fields
.field private mPluginContext:Landroid/content/Context;

.field private mTimeDisplayModeReceiver:Landroid/content/BroadcastReceiver;

.field private mTimezoneRawOffset:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/contacts/ext/ContactPluginDefault;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/contacts/plugin/OP09ContactsPlugin;->mTimezoneRawOffset:I

    .line 114
    new-instance v0, Lcom/mediatek/contacts/plugin/OP09ContactsPlugin$1;

    invoke-direct {v0, p0}, Lcom/mediatek/contacts/plugin/OP09ContactsPlugin$1;-><init>(Lcom/mediatek/contacts/plugin/OP09ContactsPlugin;)V

    iput-object v0, p0, Lcom/mediatek/contacts/plugin/OP09ContactsPlugin;->mTimeDisplayModeReceiver:Landroid/content/BroadcastReceiver;

    .line 52
    iput-object p1, p0, Lcom/mediatek/contacts/plugin/OP09ContactsPlugin;->mPluginContext:Landroid/content/Context;

    .line 53
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/contacts/plugin/OP09ContactsPlugin;->mPluginContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/mediatek/phone/SIMInfoWrapper;->init(Landroid/content/Context;)V

    .line 54
    invoke-direct {p0}, Lcom/mediatek/contacts/plugin/OP09ContactsPlugin;->updateTimezoneRawOffset()V

    .line 55
    iget-object v0, p0, Lcom/mediatek/contacts/plugin/OP09ContactsPlugin;->mPluginContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/contacts/plugin/OP09ContactsPlugin;->mTimeDisplayModeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.mediatek.ct.TIME_DISPLAY_MODE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 56
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-static {p0}, Lcom/mediatek/contacts/plugin/OP09ContactsPlugin;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/contacts/plugin/OP09ContactsPlugin;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/mediatek/contacts/plugin/OP09ContactsPlugin;->updateTimezoneRawOffset()V

    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 150
    const-string v0, "OP09ContactsPlugin"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    return-void
.end method

.method private updateTimezoneRawOffset()V
    .locals 3

    .prologue
    .line 125
    iget-object v0, p0, Lcom/mediatek/contacts/plugin/OP09ContactsPlugin;->mPluginContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "Settings.System.CT_TIME_DISPLAY_MODE"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 126
    const-string v0, "Asia/Shanghai"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/mediatek/contacts/plugin/OP09ContactsPlugin;->mTimezoneRawOffset:I

    .line 131
    :goto_0
    return-void

    .line 129
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/contacts/plugin/OP09ContactsPlugin;->mTimezoneRawOffset:I

    goto :goto_0
.end method


# virtual methods
.method public createCallDetailExtension()Lcom/android/contacts/ext/CallDetailExtension;
    .locals 2

    .prologue
    .line 75
    new-instance v0, Lcom/mediatek/contacts/plugin/calllog/CallDetailOP09Extension;

    iget-object v1, p0, Lcom/mediatek/contacts/plugin/OP09ContactsPlugin;->mPluginContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mediatek/contacts/plugin/calllog/CallDetailOP09Extension;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public createCallDetailHistoryAdapterExtension()Lcom/android/contacts/ext/CallDetailHistoryAdapterExtension;
    .locals 2

    .prologue
    .line 79
    new-instance v0, Lcom/mediatek/contacts/plugin/calllog/CallDetailHistoryAdapterOP09Extension;

    iget-object v1, p0, Lcom/mediatek/contacts/plugin/OP09ContactsPlugin;->mPluginContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/mediatek/contacts/plugin/calllog/CallDetailHistoryAdapterOP09Extension;-><init>(Landroid/content/Context;Lcom/mediatek/contacts/plugin/OP09ContactsPlugin;)V

    return-object v0
.end method

.method public createCallListExtension()Lcom/android/contacts/ext/CallListExtension;
    .locals 2

    .prologue
    .line 67
    new-instance v0, Lcom/mediatek/contacts/plugin/calllog/CallListOP09Extension;

    iget-object v1, p0, Lcom/mediatek/contacts/plugin/OP09ContactsPlugin;->mPluginContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mediatek/contacts/plugin/calllog/CallListOP09Extension;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public createCallLogAdapterExtension()Lcom/android/contacts/ext/CallLogAdapterExtension;
    .locals 2

    .prologue
    .line 71
    new-instance v0, Lcom/mediatek/contacts/plugin/calllog/CallLogAdapterOP09Extension;

    iget-object v1, p0, Lcom/mediatek/contacts/plugin/OP09ContactsPlugin;->mPluginContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/mediatek/contacts/plugin/calllog/CallLogAdapterOP09Extension;-><init>(Landroid/content/Context;Lcom/mediatek/contacts/plugin/OP09ContactsPlugin;)V

    return-object v0
.end method

.method public createCallLogSearchResultActivityExtension()Lcom/android/contacts/ext/CallLogSearchResultActivityExtension;
    .locals 1

    .prologue
    .line 87
    new-instance v0, Lcom/mediatek/contacts/plugin/calllog/CallLogSearchResultActivityOP09Extension;

    invoke-direct {v0}, Lcom/mediatek/contacts/plugin/calllog/CallLogSearchResultActivityOP09Extension;-><init>()V

    return-object v0
.end method

.method public createCallLogSimInfoHelperExtension()Lcom/android/contacts/ext/CallLogSimInfoHelperExtension;
    .locals 2

    .prologue
    .line 95
    new-instance v0, Lcom/mediatek/contacts/plugin/calllog/CallLogSimInfoHelperOP09Extension;

    iget-object v1, p0, Lcom/mediatek/contacts/plugin/OP09ContactsPlugin;->mPluginContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/mediatek/contacts/plugin/calllog/CallLogSimInfoHelperOP09Extension;-><init>(Landroid/content/Context;Lcom/mediatek/contacts/plugin/OP09ContactsPlugin;)V

    return-object v0
.end method

.method public createContactDetailEnhancementExtension()Lcom/android/contacts/ext/ContactDetailEnhancementExtension;
    .locals 2

    .prologue
    .line 91
    new-instance v0, Lcom/mediatek/contacts/plugin/OP09ContactDetailEnhancementExtension;

    iget-object v1, p0, Lcom/mediatek/contacts/plugin/OP09ContactsPlugin;->mPluginContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mediatek/contacts/plugin/OP09ContactDetailEnhancementExtension;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public createContactListExtension()Lcom/android/contacts/ext/ContactListExtension;
    .locals 1

    .prologue
    .line 107
    new-instance v0, Lcom/mediatek/contacts/plugin/OP09ContactListExtension;

    invoke-direct {v0}, Lcom/mediatek/contacts/plugin/OP09ContactListExtension;-><init>()V

    return-object v0
.end method

.method public createContactsCallOptionHandlerFactoryExtension()Lcom/android/contacts/ext/ContactsCallOptionHandlerFactoryExtension;
    .locals 2

    .prologue
    .line 63
    new-instance v0, Lcom/mediatek/contacts/plugin/calloption/ContactsCallOptionHandlerFactoryOP09Extension;

    iget-object v1, p0, Lcom/mediatek/contacts/plugin/OP09ContactsPlugin;->mPluginContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mediatek/contacts/plugin/calloption/ContactsCallOptionHandlerFactoryOP09Extension;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public createDialPadExtension()Lcom/android/contacts/ext/DialPadExtension;
    .locals 2

    .prologue
    .line 59
    new-instance v0, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;

    iget-object v1, p0, Lcom/mediatek/contacts/plugin/OP09ContactsPlugin;->mPluginContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public createDialerSearchAdapterExtension()Lcom/android/contacts/ext/DialerSearchAdapterExtension;
    .locals 1

    .prologue
    .line 83
    new-instance v0, Lcom/mediatek/contacts/plugin/dialpad/DialerSearchAdapterOP09Extension;

    invoke-direct {v0, p0}, Lcom/mediatek/contacts/plugin/dialpad/DialerSearchAdapterOP09Extension;-><init>(Lcom/mediatek/contacts/plugin/OP09ContactsPlugin;)V

    return-object v0
.end method

.method public createIccCardExtension()Lcom/android/contacts/ext/IccCardExtension;
    .locals 2

    .prologue
    .line 103
    new-instance v0, Lcom/mediatek/contacts/plugin/OP09IccCardExtension;

    iget-object v1, p0, Lcom/mediatek/contacts/plugin/OP09ContactsPlugin;->mPluginContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mediatek/contacts/plugin/OP09IccCardExtension;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public createImportExportEnhancementExtension()Lcom/android/contacts/ext/ImportExportEnhancementExtension;
    .locals 2

    .prologue
    .line 111
    new-instance v0, Lcom/mediatek/contacts/plugin/vcard/OP09ImportExportEnhancementExtension;

    iget-object v1, p0, Lcom/mediatek/contacts/plugin/OP09ContactsPlugin;->mPluginContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mediatek/contacts/plugin/vcard/OP09ImportExportEnhancementExtension;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public createSimServiceExtension()Lcom/android/contacts/ext/SimServiceExtension;
    .locals 2

    .prologue
    .line 99
    new-instance v0, Lcom/mediatek/contacts/plugin/simcontacts/OP09SimServiceExtension;

    iget-object v1, p0, Lcom/mediatek/contacts/plugin/OP09ContactsPlugin;->mPluginContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mediatek/contacts/plugin/simcontacts/OP09SimServiceExtension;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getTimezoneOffset(J)I
    .locals 2
    .parameter "date"

    .prologue
    .line 138
    iget v0, p0, Lcom/mediatek/contacts/plugin/OP09ContactsPlugin;->mTimezoneRawOffset:I

    if-nez v0, :cond_0

    .line 139
    const/4 v0, 0x0

    .line 144
    :goto_0
    return v0

    .line 141
    :cond_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    iget v0, p0, Lcom/mediatek/contacts/plugin/OP09ContactsPlugin;->mTimezoneRawOffset:I

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0

    .line 144
    :cond_1
    iget v0, p0, Lcom/mediatek/contacts/plugin/OP09ContactsPlugin;->mTimezoneRawOffset:I

    goto :goto_0
.end method

.method public getTimezoneRawOffset()I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/mediatek/contacts/plugin/OP09ContactsPlugin;->mTimezoneRawOffset:I

    return v0
.end method
