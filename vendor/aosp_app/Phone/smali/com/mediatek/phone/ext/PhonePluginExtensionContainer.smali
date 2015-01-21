.class public Lcom/mediatek/phone/ext/PhonePluginExtensionContainer;
.super Ljava/lang/Object;
.source "PhonePluginExtensionContainer.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PhonePluginExtensionContainer"


# instance fields
.field private mCallCardExtensionContainer:Lcom/mediatek/phone/ext/CallCardExtensionContainer;

.field private mCallNotifierExtensionContainer:Lcom/mediatek/phone/ext/CallNotifierExtensionContainer;

.field private mEmergencyDialerExtensionContainer:Lcom/mediatek/phone/ext/EmergencyDialerExtensionContainer;

.field private mInCallScreenExtensionContainer:Lcom/mediatek/phone/ext/InCallScreenExtensionContainer;

.field private mInCallTouchUiExtensionContainer:Lcom/mediatek/phone/ext/InCallTouchUiExtensionContainer;

.field private mNotificationExtensionContainer:Lcom/mediatek/phone/ext/NotificationExtensionContainer;

.field private mOthersSettingsExtensionContainer:Lcom/mediatek/phone/ext/OthersSettingsExtensionContainer;

.field private mPhoneCallOptionHandlerExtensionContainer:Lcom/mediatek/phone/ext/PhoneCallOptionHandlerExtensionContainer;

.field private mPhoneCallOptionHandlerFactoryExtensionContainer:Lcom/mediatek/phone/ext/PhoneCallOptionHandlerFactoryExtensionContainer;

.field private mPhoneGlobalsBroadcastReceiverExtensionContainer:Lcom/mediatek/phone/ext/PhoneGlobalsBroadcastReceiverExtensionContainer;

.field private mPhoneGlobalsExtensionContainer:Lcom/mediatek/phone/ext/PhoneGlobalsExtensionContainer;

.field private mSettingsExtensionContainer:Lcom/mediatek/phone/ext/SettingsExtensionContainer;

.field private mVTCallBannerControllerExtensionContainer:Lcom/mediatek/phone/ext/VTCallBannerControllerExtensionContainer;

.field private mVTInCallScreenExtensionContainer:Lcom/mediatek/phone/ext/VTInCallScreenExtensionContainer;

.field private mVTInCallScreenFlagsExtensionContainer:Lcom/mediatek/phone/ext/VTInCallScreenFlagsExtensionContainer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Lcom/mediatek/phone/ext/InCallScreenExtensionContainer;

    invoke-direct {v0}, Lcom/mediatek/phone/ext/InCallScreenExtensionContainer;-><init>()V

    iput-object v0, p0, Lcom/mediatek/phone/ext/PhonePluginExtensionContainer;->mInCallScreenExtensionContainer:Lcom/mediatek/phone/ext/InCallScreenExtensionContainer;

    .line 62
    new-instance v0, Lcom/mediatek/phone/ext/CallCardExtensionContainer;

    invoke-direct {v0}, Lcom/mediatek/phone/ext/CallCardExtensionContainer;-><init>()V

    iput-object v0, p0, Lcom/mediatek/phone/ext/PhonePluginExtensionContainer;->mCallCardExtensionContainer:Lcom/mediatek/phone/ext/CallCardExtensionContainer;

    .line 63
    new-instance v0, Lcom/mediatek/phone/ext/InCallTouchUiExtensionContainer;

    invoke-direct {v0}, Lcom/mediatek/phone/ext/InCallTouchUiExtensionContainer;-><init>()V

    iput-object v0, p0, Lcom/mediatek/phone/ext/PhonePluginExtensionContainer;->mInCallTouchUiExtensionContainer:Lcom/mediatek/phone/ext/InCallTouchUiExtensionContainer;

    .line 64
    new-instance v0, Lcom/mediatek/phone/ext/NotificationExtensionContainer;

    invoke-direct {v0}, Lcom/mediatek/phone/ext/NotificationExtensionContainer;-><init>()V

    iput-object v0, p0, Lcom/mediatek/phone/ext/PhonePluginExtensionContainer;->mNotificationExtensionContainer:Lcom/mediatek/phone/ext/NotificationExtensionContainer;

    .line 65
    new-instance v0, Lcom/mediatek/phone/ext/VTCallBannerControllerExtensionContainer;

    invoke-direct {v0}, Lcom/mediatek/phone/ext/VTCallBannerControllerExtensionContainer;-><init>()V

    iput-object v0, p0, Lcom/mediatek/phone/ext/PhonePluginExtensionContainer;->mVTCallBannerControllerExtensionContainer:Lcom/mediatek/phone/ext/VTCallBannerControllerExtensionContainer;

    .line 66
    new-instance v0, Lcom/mediatek/phone/ext/VTInCallScreenExtensionContainer;

    invoke-direct {v0}, Lcom/mediatek/phone/ext/VTInCallScreenExtensionContainer;-><init>()V

    iput-object v0, p0, Lcom/mediatek/phone/ext/PhonePluginExtensionContainer;->mVTInCallScreenExtensionContainer:Lcom/mediatek/phone/ext/VTInCallScreenExtensionContainer;

    .line 67
    new-instance v0, Lcom/mediatek/phone/ext/VTInCallScreenFlagsExtensionContainer;

    invoke-direct {v0}, Lcom/mediatek/phone/ext/VTInCallScreenFlagsExtensionContainer;-><init>()V

    iput-object v0, p0, Lcom/mediatek/phone/ext/PhonePluginExtensionContainer;->mVTInCallScreenFlagsExtensionContainer:Lcom/mediatek/phone/ext/VTInCallScreenFlagsExtensionContainer;

    .line 68
    new-instance v0, Lcom/mediatek/phone/ext/CallNotifierExtensionContainer;

    invoke-direct {v0}, Lcom/mediatek/phone/ext/CallNotifierExtensionContainer;-><init>()V

    iput-object v0, p0, Lcom/mediatek/phone/ext/PhonePluginExtensionContainer;->mCallNotifierExtensionContainer:Lcom/mediatek/phone/ext/CallNotifierExtensionContainer;

    .line 69
    new-instance v0, Lcom/mediatek/phone/ext/PhoneGlobalsExtensionContainer;

    invoke-direct {v0}, Lcom/mediatek/phone/ext/PhoneGlobalsExtensionContainer;-><init>()V

    iput-object v0, p0, Lcom/mediatek/phone/ext/PhonePluginExtensionContainer;->mPhoneGlobalsExtensionContainer:Lcom/mediatek/phone/ext/PhoneGlobalsExtensionContainer;

    .line 70
    new-instance v0, Lcom/mediatek/phone/ext/PhoneGlobalsBroadcastReceiverExtensionContainer;

    invoke-direct {v0}, Lcom/mediatek/phone/ext/PhoneGlobalsBroadcastReceiverExtensionContainer;-><init>()V

    iput-object v0, p0, Lcom/mediatek/phone/ext/PhonePluginExtensionContainer;->mPhoneGlobalsBroadcastReceiverExtensionContainer:Lcom/mediatek/phone/ext/PhoneGlobalsBroadcastReceiverExtensionContainer;

    .line 71
    new-instance v0, Lcom/mediatek/phone/ext/EmergencyDialerExtensionContainer;

    invoke-direct {v0}, Lcom/mediatek/phone/ext/EmergencyDialerExtensionContainer;-><init>()V

    iput-object v0, p0, Lcom/mediatek/phone/ext/PhonePluginExtensionContainer;->mEmergencyDialerExtensionContainer:Lcom/mediatek/phone/ext/EmergencyDialerExtensionContainer;

    .line 72
    new-instance v0, Lcom/mediatek/phone/ext/PhoneCallOptionHandlerExtensionContainer;

    invoke-direct {v0}, Lcom/mediatek/phone/ext/PhoneCallOptionHandlerExtensionContainer;-><init>()V

    iput-object v0, p0, Lcom/mediatek/phone/ext/PhonePluginExtensionContainer;->mPhoneCallOptionHandlerExtensionContainer:Lcom/mediatek/phone/ext/PhoneCallOptionHandlerExtensionContainer;

    .line 73
    new-instance v0, Lcom/mediatek/phone/ext/PhoneCallOptionHandlerFactoryExtensionContainer;

    invoke-direct {v0}, Lcom/mediatek/phone/ext/PhoneCallOptionHandlerFactoryExtensionContainer;-><init>()V

    iput-object v0, p0, Lcom/mediatek/phone/ext/PhonePluginExtensionContainer;->mPhoneCallOptionHandlerFactoryExtensionContainer:Lcom/mediatek/phone/ext/PhoneCallOptionHandlerFactoryExtensionContainer;

    .line 74
    new-instance v0, Lcom/mediatek/phone/ext/OthersSettingsExtensionContainer;

    invoke-direct {v0}, Lcom/mediatek/phone/ext/OthersSettingsExtensionContainer;-><init>()V

    iput-object v0, p0, Lcom/mediatek/phone/ext/PhonePluginExtensionContainer;->mOthersSettingsExtensionContainer:Lcom/mediatek/phone/ext/OthersSettingsExtensionContainer;

    .line 75
    new-instance v0, Lcom/mediatek/phone/ext/SettingsExtensionContainer;

    invoke-direct {v0}, Lcom/mediatek/phone/ext/SettingsExtensionContainer;-><init>()V

    iput-object v0, p0, Lcom/mediatek/phone/ext/PhonePluginExtensionContainer;->mSettingsExtensionContainer:Lcom/mediatek/phone/ext/SettingsExtensionContainer;

    .line 76
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 226
    const-string v0, "PhonePluginExtensionContainer"

    invoke-static {v0, p0}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    return-void
.end method


# virtual methods
.method public addExtensions(Lcom/mediatek/phone/ext/IPhonePlugin;)V
    .locals 2
    .parameter "phonePlugin"

    .prologue
    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addExtensions, phone plugin object is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/phone/ext/PhonePluginExtensionContainer;->log(Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lcom/mediatek/phone/ext/PhonePluginExtensionContainer;->mInCallScreenExtensionContainer:Lcom/mediatek/phone/ext/InCallScreenExtensionContainer;

    invoke-interface {p1}, Lcom/mediatek/phone/ext/IPhonePlugin;->createInCallScreenExtension()Lcom/mediatek/phone/ext/InCallScreenExtension;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/phone/ext/InCallScreenExtensionContainer;->add(Lcom/mediatek/phone/ext/InCallScreenExtension;)V

    .line 209
    iget-object v0, p0, Lcom/mediatek/phone/ext/PhonePluginExtensionContainer;->mCallCardExtensionContainer:Lcom/mediatek/phone/ext/CallCardExtensionContainer;

    invoke-interface {p1}, Lcom/mediatek/phone/ext/IPhonePlugin;->createCallCardExtension()Lcom/mediatek/phone/ext/CallCardExtension;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/phone/ext/CallCardExtensionContainer;->add(Lcom/mediatek/phone/ext/CallCardExtension;)V

    .line 210
    iget-object v0, p0, Lcom/mediatek/phone/ext/PhonePluginExtensionContainer;->mInCallTouchUiExtensionContainer:Lcom/mediatek/phone/ext/InCallTouchUiExtensionContainer;

    invoke-interface {p1}, Lcom/mediatek/phone/ext/IPhonePlugin;->createInCallTouchUiExtension()Lcom/mediatek/phone/ext/InCallTouchUiExtension;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/phone/ext/InCallTouchUiExtensionContainer;->add(Lcom/mediatek/phone/ext/InCallTouchUiExtension;)V

    .line 211
    iget-object v0, p0, Lcom/mediatek/phone/ext/PhonePluginExtensionContainer;->mNotificationExtensionContainer:Lcom/mediatek/phone/ext/NotificationExtensionContainer;

    invoke-interface {p1}, Lcom/mediatek/phone/ext/IPhonePlugin;->createNotificationExtension()Lcom/mediatek/phone/ext/NotificationExtension;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/phone/ext/NotificationExtensionContainer;->add(Lcom/mediatek/phone/ext/NotificationExtension;)V

    .line 212
    iget-object v0, p0, Lcom/mediatek/phone/ext/PhonePluginExtensionContainer;->mVTCallBannerControllerExtensionContainer:Lcom/mediatek/phone/ext/VTCallBannerControllerExtensionContainer;

    invoke-interface {p1}, Lcom/mediatek/phone/ext/IPhonePlugin;->createVTCallBannerControllerExtension()Lcom/mediatek/phone/ext/VTCallBannerControllerExtension;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/phone/ext/VTCallBannerControllerExtensionContainer;->add(Lcom/mediatek/phone/ext/VTCallBannerControllerExtension;)V

    .line 213
    iget-object v0, p0, Lcom/mediatek/phone/ext/PhonePluginExtensionContainer;->mVTInCallScreenExtensionContainer:Lcom/mediatek/phone/ext/VTInCallScreenExtensionContainer;

    invoke-interface {p1}, Lcom/mediatek/phone/ext/IPhonePlugin;->createVTInCallScreenExtension()Lcom/mediatek/phone/ext/VTInCallScreenExtension;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/phone/ext/VTInCallScreenExtensionContainer;->add(Lcom/mediatek/phone/ext/VTInCallScreenExtension;)V

    .line 214
    iget-object v0, p0, Lcom/mediatek/phone/ext/PhonePluginExtensionContainer;->mVTInCallScreenFlagsExtensionContainer:Lcom/mediatek/phone/ext/VTInCallScreenFlagsExtensionContainer;

    invoke-interface {p1}, Lcom/mediatek/phone/ext/IPhonePlugin;->createVTInCallScreenFlagsExtension()Lcom/mediatek/phone/ext/VTInCallScreenFlagsExtension;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/phone/ext/VTInCallScreenFlagsExtensionContainer;->add(Lcom/mediatek/phone/ext/VTInCallScreenFlagsExtension;)V

    .line 215
    iget-object v0, p0, Lcom/mediatek/phone/ext/PhonePluginExtensionContainer;->mPhoneGlobalsExtensionContainer:Lcom/mediatek/phone/ext/PhoneGlobalsExtensionContainer;

    invoke-interface {p1}, Lcom/mediatek/phone/ext/IPhonePlugin;->createPhoneGlobalsExtension()Lcom/mediatek/phone/ext/PhoneGlobalsExtension;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/phone/ext/PhoneGlobalsExtensionContainer;->add(Lcom/mediatek/phone/ext/PhoneGlobalsExtension;)V

    .line 216
    iget-object v0, p0, Lcom/mediatek/phone/ext/PhonePluginExtensionContainer;->mPhoneGlobalsBroadcastReceiverExtensionContainer:Lcom/mediatek/phone/ext/PhoneGlobalsBroadcastReceiverExtensionContainer;

    invoke-interface {p1}, Lcom/mediatek/phone/ext/IPhonePlugin;->createPhoneGlobalsBroadcastReceiverExtension()Lcom/mediatek/phone/ext/PhoneGlobalsBroadcastReceiverExtension;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/phone/ext/PhoneGlobalsBroadcastReceiverExtensionContainer;->add(Lcom/mediatek/phone/ext/PhoneGlobalsBroadcastReceiverExtension;)V

    .line 217
    iget-object v0, p0, Lcom/mediatek/phone/ext/PhonePluginExtensionContainer;->mEmergencyDialerExtensionContainer:Lcom/mediatek/phone/ext/EmergencyDialerExtensionContainer;

    invoke-interface {p1}, Lcom/mediatek/phone/ext/IPhonePlugin;->createEmergencyDialerExtension()Lcom/mediatek/phone/ext/EmergencyDialerExtension;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/phone/ext/EmergencyDialerExtensionContainer;->add(Lcom/mediatek/phone/ext/EmergencyDialerExtension;)V

    .line 218
    iget-object v0, p0, Lcom/mediatek/phone/ext/PhonePluginExtensionContainer;->mPhoneCallOptionHandlerExtensionContainer:Lcom/mediatek/phone/ext/PhoneCallOptionHandlerExtensionContainer;

    invoke-interface {p1}, Lcom/mediatek/phone/ext/IPhonePlugin;->createPhoneCallOptionHandlerExtension()Lcom/mediatek/phone/ext/PhoneCallOptionHandlerExtension;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/phone/ext/PhoneCallOptionHandlerExtensionContainer;->add(Lcom/mediatek/phone/ext/PhoneCallOptionHandlerExtension;)V

    .line 219
    iget-object v0, p0, Lcom/mediatek/phone/ext/PhonePluginExtensionContainer;->mPhoneCallOptionHandlerFactoryExtensionContainer:Lcom/mediatek/phone/ext/PhoneCallOptionHandlerFactoryExtensionContainer;

    invoke-interface {p1}, Lcom/mediatek/phone/ext/IPhonePlugin;->createPhoneCallOptionHandlerFactoryExtension()Lcom/mediatek/phone/ext/PhoneCallOptionHandlerFactoryExtension;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/phone/ext/PhoneCallOptionHandlerFactoryExtensionContainer;->add(Lcom/mediatek/phone/ext/PhoneCallOptionHandlerFactoryExtension;)V

    .line 220
    iget-object v0, p0, Lcom/mediatek/phone/ext/PhonePluginExtensionContainer;->mCallNotifierExtensionContainer:Lcom/mediatek/phone/ext/CallNotifierExtensionContainer;

    invoke-interface {p1}, Lcom/mediatek/phone/ext/IPhonePlugin;->createCallNotifierExtension()Lcom/mediatek/phone/ext/CallNotifierExtension;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/phone/ext/CallNotifierExtensionContainer;->add(Lcom/mediatek/phone/ext/CallNotifierExtension;)V

    .line 221
    iget-object v0, p0, Lcom/mediatek/phone/ext/PhonePluginExtensionContainer;->mOthersSettingsExtensionContainer:Lcom/mediatek/phone/ext/OthersSettingsExtensionContainer;

    invoke-interface {p1}, Lcom/mediatek/phone/ext/IPhonePlugin;->createOthersSettingsExtension()Lcom/mediatek/phone/ext/OthersSettingsExtension;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/phone/ext/OthersSettingsExtensionContainer;->add(Lcom/mediatek/phone/ext/OthersSettingsExtension;)V

    .line 222
    iget-object v0, p0, Lcom/mediatek/phone/ext/PhonePluginExtensionContainer;->mSettingsExtensionContainer:Lcom/mediatek/phone/ext/SettingsExtensionContainer;

    invoke-interface {p1}, Lcom/mediatek/phone/ext/IPhonePlugin;->createSettingsExtension()Lcom/mediatek/phone/ext/SettingsExtension;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/phone/ext/SettingsExtensionContainer;->add(Lcom/mediatek/phone/ext/SettingsExtension;)V

    .line 223
    return-void
.end method

.method public getCallCardExtension()Lcom/mediatek/phone/ext/CallCardExtension;
    .locals 1

    .prologue
    .line 92
    const-string v0, "getCallCardExtension()"

    invoke-static {v0}, Lcom/mediatek/phone/ext/PhonePluginExtensionContainer;->log(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/mediatek/phone/ext/PhonePluginExtensionContainer;->mCallCardExtensionContainer:Lcom/mediatek/phone/ext/CallCardExtensionContainer;

    return-object v0
.end method

.method public getCallNotifierExtension()Lcom/mediatek/phone/ext/CallNotifierExtension;
    .locals 1

    .prologue
    .line 147
    const-string v0, "getCallNotifierExtension()"

    invoke-static {v0}, Lcom/mediatek/phone/ext/PhonePluginExtensionContainer;->log(Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/mediatek/phone/ext/PhonePluginExtensionContainer;->mCallNotifierExtensionContainer:Lcom/mediatek/phone/ext/CallNotifierExtensionContainer;

    return-object v0
.end method

.method public getEmergencyDialerExtension()Lcom/mediatek/phone/ext/EmergencyDialerExtension;
    .locals 1

    .prologue
    .line 169
    const-string v0, "getEmergencyDialerExtension()"

    invoke-static {v0}, Lcom/mediatek/phone/ext/PhonePluginExtensionContainer;->log(Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/mediatek/phone/ext/PhonePluginExtensionContainer;->mEmergencyDialerExtensionContainer:Lcom/mediatek/phone/ext/EmergencyDialerExtensionContainer;

    return-object v0
.end method

.method public getInCallScreenExtension()Lcom/mediatek/phone/ext/InCallScreenExtension;
    .locals 1

    .prologue
    .line 83
    const-string v0, "getInCallScreenExtension()"

    invoke-static {v0}, Lcom/mediatek/phone/ext/PhonePluginExtensionContainer;->log(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/mediatek/phone/ext/PhonePluginExtensionContainer;->mInCallScreenExtensionContainer:Lcom/mediatek/phone/ext/InCallScreenExtensionContainer;

    return-object v0
.end method

.method public getInCallTouchUiExtension()Lcom/mediatek/phone/ext/InCallTouchUiExtension;
    .locals 1

    .prologue
    .line 101
    const-string v0, "getInCallTouchUiExtension()"

    invoke-static {v0}, Lcom/mediatek/phone/ext/PhonePluginExtensionContainer;->log(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/mediatek/phone/ext/PhonePluginExtensionContainer;->mInCallTouchUiExtensionContainer:Lcom/mediatek/phone/ext/InCallTouchUiExtensionContainer;

    return-object v0
.end method

.method public getNotificationExtension()Lcom/mediatek/phone/ext/NotificationExtension;
    .locals 1

    .prologue
    .line 111
    const-string v0, "getNotificationExtension()"

    invoke-static {v0}, Lcom/mediatek/phone/ext/PhonePluginExtensionContainer;->log(Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/mediatek/phone/ext/PhonePluginExtensionContainer;->mNotificationExtensionContainer:Lcom/mediatek/phone/ext/NotificationExtensionContainer;

    return-object v0
.end method

.method public getOthersSettingsExtension()Lcom/mediatek/phone/ext/OthersSettingsExtension;
    .locals 1

    .prologue
    .line 188
    const-string v0, "getOthersSettingsExtension()"

    invoke-static {v0}, Lcom/mediatek/phone/ext/PhonePluginExtensionContainer;->log(Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lcom/mediatek/phone/ext/PhonePluginExtensionContainer;->mOthersSettingsExtensionContainer:Lcom/mediatek/phone/ext/OthersSettingsExtensionContainer;

    return-object v0
.end method

.method public getPhoneCallOptionHandlerExtension()Lcom/mediatek/phone/ext/PhoneCallOptionHandlerExtension;
    .locals 1

    .prologue
    .line 174
    const-string v0, "getPhoneCallOptionHandlerExtension()"

    invoke-static {v0}, Lcom/mediatek/phone/ext/PhonePluginExtensionContainer;->log(Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/mediatek/phone/ext/PhonePluginExtensionContainer;->mPhoneCallOptionHandlerExtensionContainer:Lcom/mediatek/phone/ext/PhoneCallOptionHandlerExtensionContainer;

    return-object v0
.end method

.method public getPhoneCallOptionHandlerFactoryExtension()Lcom/mediatek/phone/ext/PhoneCallOptionHandlerFactoryExtension;
    .locals 1

    .prologue
    .line 179
    const-string v0, "getPhoneCallOptionHandlerExtension()"

    invoke-static {v0}, Lcom/mediatek/phone/ext/PhonePluginExtensionContainer;->log(Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/mediatek/phone/ext/PhonePluginExtensionContainer;->mPhoneCallOptionHandlerFactoryExtensionContainer:Lcom/mediatek/phone/ext/PhoneCallOptionHandlerFactoryExtensionContainer;

    return-object v0
.end method

.method public getPhoneGlobalsBroadcastReceiverExtension()Lcom/mediatek/phone/ext/PhoneGlobalsBroadcastReceiverExtension;
    .locals 1

    .prologue
    .line 164
    const-string v0, "getPhoneGlobalsBroadcastReceiverExtension()"

    invoke-static {v0}, Lcom/mediatek/phone/ext/PhonePluginExtensionContainer;->log(Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/mediatek/phone/ext/PhonePluginExtensionContainer;->mPhoneGlobalsBroadcastReceiverExtensionContainer:Lcom/mediatek/phone/ext/PhoneGlobalsBroadcastReceiverExtensionContainer;

    return-object v0
.end method

.method public getPhoneGlobalsExtension()Lcom/mediatek/phone/ext/PhoneGlobalsExtension;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/mediatek/phone/ext/PhonePluginExtensionContainer;->mPhoneGlobalsExtensionContainer:Lcom/mediatek/phone/ext/PhoneGlobalsExtensionContainer;

    return-object v0
.end method

.method public getSettingsExtension()Lcom/mediatek/phone/ext/SettingsExtension;
    .locals 1

    .prologue
    .line 197
    const-string v0, "getSettingsExtension()"

    invoke-static {v0}, Lcom/mediatek/phone/ext/PhonePluginExtensionContainer;->log(Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/mediatek/phone/ext/PhonePluginExtensionContainer;->mSettingsExtensionContainer:Lcom/mediatek/phone/ext/SettingsExtensionContainer;

    return-object v0
.end method

.method public getVTCallBannerControllerExtension()Lcom/mediatek/phone/ext/VTCallBannerControllerExtension;
    .locals 1

    .prologue
    .line 120
    const-string v0, "getVTCallBannerControllerExtension()"

    invoke-static {v0}, Lcom/mediatek/phone/ext/PhonePluginExtensionContainer;->log(Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/mediatek/phone/ext/PhonePluginExtensionContainer;->mVTCallBannerControllerExtensionContainer:Lcom/mediatek/phone/ext/VTCallBannerControllerExtensionContainer;

    return-object v0
.end method

.method public getVTInCallScreenExtension()Lcom/mediatek/phone/ext/VTInCallScreenExtension;
    .locals 1

    .prologue
    .line 129
    const-string v0, "getVTInCallScreenExtension()"

    invoke-static {v0}, Lcom/mediatek/phone/ext/PhonePluginExtensionContainer;->log(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/mediatek/phone/ext/PhonePluginExtensionContainer;->mVTInCallScreenExtensionContainer:Lcom/mediatek/phone/ext/VTInCallScreenExtensionContainer;

    return-object v0
.end method

.method public getVTInCallScreenFlagsExtension()Lcom/mediatek/phone/ext/VTInCallScreenFlagsExtension;
    .locals 1

    .prologue
    .line 138
    const-string v0, "getVTInCallScreenFlagsExtension()"

    invoke-static {v0}, Lcom/mediatek/phone/ext/PhonePluginExtensionContainer;->log(Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/mediatek/phone/ext/PhonePluginExtensionContainer;->mVTInCallScreenFlagsExtensionContainer:Lcom/mediatek/phone/ext/VTInCallScreenFlagsExtensionContainer;

    return-object v0
.end method
