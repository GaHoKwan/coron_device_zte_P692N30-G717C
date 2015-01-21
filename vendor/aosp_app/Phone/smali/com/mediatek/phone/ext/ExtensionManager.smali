.class public final Lcom/mediatek/phone/ext/ExtensionManager;
.super Ljava/lang/Object;
.source "ExtensionManager.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ExtensionManager"

.field private static sInstance:Lcom/mediatek/phone/ext/ExtensionManager;


# instance fields
.field private mIPhonePluginList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/mediatek/phone/ext/IPhonePlugin;",
            ">;"
        }
    .end annotation
.end field

.field private mPhonePluginExtContainer:Lcom/mediatek/phone/ext/PhonePluginExtensionContainer;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Lcom/mediatek/phone/ext/PhonePluginExtensionContainer;

    invoke-direct {v0}, Lcom/mediatek/phone/ext/PhonePluginExtensionContainer;-><init>()V

    iput-object v0, p0, Lcom/mediatek/phone/ext/ExtensionManager;->mPhonePluginExtContainer:Lcom/mediatek/phone/ext/PhonePluginExtensionContainer;

    .line 59
    invoke-direct {p0}, Lcom/mediatek/phone/ext/ExtensionManager;->initContainerByPlugin()V

    .line 60
    return-void
.end method

.method public static getCallSettingsPlugin(Landroid/content/Context;)Lcom/mediatek/phone/ext/ICallSettingsConnection;
    .locals 4
    .parameter "context"

    .prologue
    .line 261
    :try_start_0
    const-class v2, Lcom/mediatek/phone/ext/ICallSettingsConnection;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Landroid/content/pm/Signature;

    invoke-static {p0, v2, v3}, Lcom/mediatek/pluginmanager/PluginManager;->createPluginObject(Landroid/content/Context;Ljava/lang/String;[Landroid/content/pm/Signature;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/phone/ext/ICallSettingsConnection;
    :try_end_0
    .catch Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    .local v1, ext:Lcom/mediatek/phone/ext/ICallSettingsConnection;
    :goto_0
    return-object v1

    .line 263
    .end local v1           #ext:Lcom/mediatek/phone/ext/ICallSettingsConnection;
    :catch_0
    move-exception v0

    .line 264
    .local v0, e:Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException;
    new-instance v1, Lcom/mediatek/phone/ext/DefaultCallSettingsConnection;

    invoke-direct {v1}, Lcom/mediatek/phone/ext/DefaultCallSettingsConnection;-><init>()V

    .restart local v1       #ext:Lcom/mediatek/phone/ext/ICallSettingsConnection;
    goto :goto_0
.end method

.method public static getDataConnectionPlugin(Landroid/content/Context;)Lcom/mediatek/phone/ext/IDataConnection;
    .locals 4
    .parameter "context"

    .prologue
    .line 244
    :try_start_0
    const-class v2, Lcom/mediatek/phone/ext/IDataConnection;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Landroid/content/pm/Signature;

    invoke-static {p0, v2, v3}, Lcom/mediatek/pluginmanager/PluginManager;->createPluginObject(Landroid/content/Context;Ljava/lang/String;[Landroid/content/pm/Signature;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/phone/ext/IDataConnection;
    :try_end_0
    .catch Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    .local v1, ext:Lcom/mediatek/phone/ext/IDataConnection;
    :goto_0
    return-object v1

    .line 246
    .end local v1           #ext:Lcom/mediatek/phone/ext/IDataConnection;
    :catch_0
    move-exception v0

    .line 247
    .local v0, e:Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException;
    new-instance v1, Lcom/mediatek/phone/ext/DefaultDataConnection;

    invoke-direct {v1}, Lcom/mediatek/phone/ext/DefaultDataConnection;-><init>()V

    .restart local v1       #ext:Lcom/mediatek/phone/ext/IDataConnection;
    goto :goto_0
.end method

.method public static getInstance()Lcom/mediatek/phone/ext/ExtensionManager;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/mediatek/phone/ext/ExtensionManager;->sInstance:Lcom/mediatek/phone/ext/ExtensionManager;

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Lcom/mediatek/phone/ext/ExtensionManager;

    invoke-direct {v0}, Lcom/mediatek/phone/ext/ExtensionManager;-><init>()V

    sput-object v0, Lcom/mediatek/phone/ext/ExtensionManager;->sInstance:Lcom/mediatek/phone/ext/ExtensionManager;

    .line 70
    :cond_0
    sget-object v0, Lcom/mediatek/phone/ext/ExtensionManager;->sInstance:Lcom/mediatek/phone/ext/ExtensionManager;

    return-object v0
.end method

.method public static getNotificationMgrPlugin(Landroid/content/Context;)Lcom/mediatek/phone/ext/INotificationMgrExt;
    .locals 4
    .parameter "context"

    .prologue
    .line 279
    :try_start_0
    const-class v2, Lcom/mediatek/phone/ext/INotificationMgrExt;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Landroid/content/pm/Signature;

    invoke-static {p0, v2, v3}, Lcom/mediatek/pluginmanager/PluginManager;->createPluginObject(Landroid/content/Context;Ljava/lang/String;[Landroid/content/pm/Signature;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/phone/ext/INotificationMgrExt;
    :try_end_0
    .catch Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    .local v1, ext:Lcom/mediatek/phone/ext/INotificationMgrExt;
    :goto_0
    return-object v1

    .line 281
    .end local v1           #ext:Lcom/mediatek/phone/ext/INotificationMgrExt;
    :catch_0
    move-exception v0

    .line 282
    .local v0, e:Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException;
    new-instance v1, Lcom/mediatek/phone/ext/DefaultNotificationMgrExt;

    invoke-direct {v1}, Lcom/mediatek/phone/ext/DefaultNotificationMgrExt;-><init>()V

    .restart local v1       #ext:Lcom/mediatek/phone/ext/INotificationMgrExt;
    goto :goto_0
.end method

.method private initContainerByPlugin()V
    .locals 9

    .prologue
    .line 207
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v6

    const-class v7, Lcom/mediatek/phone/ext/IPhonePlugin;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Landroid/content/pm/Signature;

    invoke-static {v6, v7, v8}, Lcom/mediatek/pluginmanager/PluginManager;->create(Landroid/content/Context;Ljava/lang/String;[Landroid/content/pm/Signature;)Lcom/mediatek/pluginmanager/PluginManager;

    move-result-object v5

    .line 210
    .local v5, pm:Lcom/mediatek/pluginmanager/PluginManager;,"Lcom/mediatek/pluginmanager/PluginManager<Lcom/mediatek/phone/ext/IPhonePlugin;>;"
    invoke-virtual {v5}, Lcom/mediatek/pluginmanager/PluginManager;->getPluginCount()I

    move-result v4

    .line 211
    .local v4, pluginCount:I
    if-nez v4, :cond_1

    .line 212
    const-string v6, "No Plugin API, use PhonePluginDefault"

    invoke-static {v6}, Lcom/mediatek/phone/ext/ExtensionManager;->log(Ljava/lang/String;)V

    .line 213
    iget-object v6, p0, Lcom/mediatek/phone/ext/ExtensionManager;->mPhonePluginExtContainer:Lcom/mediatek/phone/ext/PhonePluginExtensionContainer;

    new-instance v7, Lcom/mediatek/phone/ext/PhonePluginDefault;

    invoke-direct {v7}, Lcom/mediatek/phone/ext/PhonePluginDefault;-><init>()V

    invoke-virtual {v6, v7}, Lcom/mediatek/phone/ext/PhonePluginExtensionContainer;->addExtensions(Lcom/mediatek/phone/ext/IPhonePlugin;)V

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v4, :cond_0

    .line 219
    :try_start_0
    invoke-virtual {v5, v1}, Lcom/mediatek/pluginmanager/PluginManager;->getPlugin(I)Lcom/mediatek/pluginmanager/Plugin;

    move-result-object v3

    .line 220
    .local v3, plugIn:Lcom/mediatek/pluginmanager/Plugin;,"Lcom/mediatek/pluginmanager/Plugin<Lcom/mediatek/phone/ext/IPhonePlugin;>;"
    if-eqz v3, :cond_2

    .line 221
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "create plugin object, number = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/phone/ext/ExtensionManager;->log(Ljava/lang/String;)V

    .line 222
    invoke-virtual {v3}, Lcom/mediatek/pluginmanager/Plugin;->createObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/phone/ext/IPhonePlugin;

    .line 223
    .local v2, phonePluginObject:Lcom/mediatek/phone/ext/IPhonePlugin;
    iget-object v6, p0, Lcom/mediatek/phone/ext/ExtensionManager;->mPhonePluginExtContainer:Lcom/mediatek/phone/ext/PhonePluginExtensionContainer;

    invoke-virtual {v6, v2}, Lcom/mediatek/phone/ext/PhonePluginExtensionContainer;->addExtensions(Lcom/mediatek/phone/ext/IPhonePlugin;)V
    :try_end_0
    .catch Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    .end local v2           #phonePluginObject:Lcom/mediatek/phone/ext/IPhonePlugin;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 226
    .end local v3           #plugIn:Lcom/mediatek/pluginmanager/Plugin;,"Lcom/mediatek/pluginmanager/Plugin<Lcom/mediatek/phone/ext/IPhonePlugin;>;"
    :catch_0
    move-exception v0

    .line 227
    .local v0, e:Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException;
    const-string v6, "create plugin object failed"

    invoke-static {v6}, Lcom/mediatek/phone/ext/ExtensionManager;->log(Ljava/lang/String;)V

    .line 228
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 233
    const-string v0, "ExtensionManager"

    invoke-static {v0, p0}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    return-void
.end method


# virtual methods
.method public getCallCardExtension()Lcom/mediatek/phone/ext/CallCardExtension;
    .locals 1

    .prologue
    .line 86
    const-string v0, "getCallCardExtension()"

    invoke-static {v0}, Lcom/mediatek/phone/ext/ExtensionManager;->log(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/mediatek/phone/ext/ExtensionManager;->mPhonePluginExtContainer:Lcom/mediatek/phone/ext/PhonePluginExtensionContainer;

    invoke-virtual {v0}, Lcom/mediatek/phone/ext/PhonePluginExtensionContainer;->getCallCardExtension()Lcom/mediatek/phone/ext/CallCardExtension;

    move-result-object v0

    return-object v0
.end method

.method public getCallNotifierExtension()Lcom/mediatek/phone/ext/CallNotifierExtension;
    .locals 1

    .prologue
    .line 139
    const-string v0, "getCallNotifierExtension()"

    invoke-static {v0}, Lcom/mediatek/phone/ext/ExtensionManager;->log(Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/mediatek/phone/ext/ExtensionManager;->mPhonePluginExtContainer:Lcom/mediatek/phone/ext/PhonePluginExtensionContainer;

    invoke-virtual {v0}, Lcom/mediatek/phone/ext/PhonePluginExtensionContainer;->getCallNotifierExtension()Lcom/mediatek/phone/ext/CallNotifierExtension;

    move-result-object v0

    return-object v0
.end method

.method public getEmergencyDialerExtension()Lcom/mediatek/phone/ext/EmergencyDialerExtension;
    .locals 1

    .prologue
    .line 166
    const-string v0, "getEmergencyDialerExtension()"

    invoke-static {v0}, Lcom/mediatek/phone/ext/ExtensionManager;->log(Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/mediatek/phone/ext/ExtensionManager;->mPhonePluginExtContainer:Lcom/mediatek/phone/ext/PhonePluginExtensionContainer;

    invoke-virtual {v0}, Lcom/mediatek/phone/ext/PhonePluginExtensionContainer;->getEmergencyDialerExtension()Lcom/mediatek/phone/ext/EmergencyDialerExtension;

    move-result-object v0

    return-object v0
.end method

.method public getInCallScreenExtension()Lcom/mediatek/phone/ext/InCallScreenExtension;
    .locals 1

    .prologue
    .line 78
    const-string v0, "getInCallScreenExtension()"

    invoke-static {v0}, Lcom/mediatek/phone/ext/ExtensionManager;->log(Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/mediatek/phone/ext/ExtensionManager;->mPhonePluginExtContainer:Lcom/mediatek/phone/ext/PhonePluginExtensionContainer;

    invoke-virtual {v0}, Lcom/mediatek/phone/ext/PhonePluginExtensionContainer;->getInCallScreenExtension()Lcom/mediatek/phone/ext/InCallScreenExtension;

    move-result-object v0

    return-object v0
.end method

.method public getInCallTouchUiExtension()Lcom/mediatek/phone/ext/InCallTouchUiExtension;
    .locals 1

    .prologue
    .line 95
    const-string v0, "getInCallTouchUiExtension()"

    invoke-static {v0}, Lcom/mediatek/phone/ext/ExtensionManager;->log(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/mediatek/phone/ext/ExtensionManager;->mPhonePluginExtContainer:Lcom/mediatek/phone/ext/PhonePluginExtensionContainer;

    invoke-virtual {v0}, Lcom/mediatek/phone/ext/PhonePluginExtensionContainer;->getInCallTouchUiExtension()Lcom/mediatek/phone/ext/InCallTouchUiExtension;

    move-result-object v0

    return-object v0
.end method

.method public getNotificationExtension()Lcom/mediatek/phone/ext/NotificationExtension;
    .locals 1

    .prologue
    .line 104
    const-string v0, "getNotificationExtension()"

    invoke-static {v0}, Lcom/mediatek/phone/ext/ExtensionManager;->log(Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/mediatek/phone/ext/ExtensionManager;->mPhonePluginExtContainer:Lcom/mediatek/phone/ext/PhonePluginExtensionContainer;

    invoke-virtual {v0}, Lcom/mediatek/phone/ext/PhonePluginExtensionContainer;->getNotificationExtension()Lcom/mediatek/phone/ext/NotificationExtension;

    move-result-object v0

    return-object v0
.end method

.method public getOthersSettingsExtension()Lcom/mediatek/phone/ext/OthersSettingsExtension;
    .locals 1

    .prologue
    .line 193
    const-string v0, "getOthersSettingsExtension()"

    invoke-static {v0}, Lcom/mediatek/phone/ext/ExtensionManager;->log(Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/mediatek/phone/ext/ExtensionManager;->mPhonePluginExtContainer:Lcom/mediatek/phone/ext/PhonePluginExtensionContainer;

    invoke-virtual {v0}, Lcom/mediatek/phone/ext/PhonePluginExtensionContainer;->getOthersSettingsExtension()Lcom/mediatek/phone/ext/OthersSettingsExtension;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneCallOptionHandlerExtension()Lcom/mediatek/phone/ext/PhoneCallOptionHandlerExtension;
    .locals 1

    .prologue
    .line 175
    const-string v0, "getPhoneCallOptionHandlerExtension()"

    invoke-static {v0}, Lcom/mediatek/phone/ext/ExtensionManager;->log(Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/mediatek/phone/ext/ExtensionManager;->mPhonePluginExtContainer:Lcom/mediatek/phone/ext/PhonePluginExtensionContainer;

    invoke-virtual {v0}, Lcom/mediatek/phone/ext/PhonePluginExtensionContainer;->getPhoneCallOptionHandlerExtension()Lcom/mediatek/phone/ext/PhoneCallOptionHandlerExtension;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneCallOptionHandlerFactoryExtension()Lcom/mediatek/phone/ext/PhoneCallOptionHandlerFactoryExtension;
    .locals 1

    .prologue
    .line 184
    const-string v0, "getPhoneCallOptionHandlerFactoryExtension()"

    invoke-static {v0}, Lcom/mediatek/phone/ext/ExtensionManager;->log(Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/mediatek/phone/ext/ExtensionManager;->mPhonePluginExtContainer:Lcom/mediatek/phone/ext/PhonePluginExtensionContainer;

    invoke-virtual {v0}, Lcom/mediatek/phone/ext/PhonePluginExtensionContainer;->getPhoneCallOptionHandlerFactoryExtension()Lcom/mediatek/phone/ext/PhoneCallOptionHandlerFactoryExtension;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneGlobalsBroadcastReceiverExtension()Lcom/mediatek/phone/ext/PhoneGlobalsBroadcastReceiverExtension;
    .locals 1

    .prologue
    .line 157
    const-string v0, "PhoneGlobalsBroadcastReceiverExtension()"

    invoke-static {v0}, Lcom/mediatek/phone/ext/ExtensionManager;->log(Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/mediatek/phone/ext/ExtensionManager;->mPhonePluginExtContainer:Lcom/mediatek/phone/ext/PhonePluginExtensionContainer;

    invoke-virtual {v0}, Lcom/mediatek/phone/ext/PhonePluginExtensionContainer;->getPhoneGlobalsBroadcastReceiverExtension()Lcom/mediatek/phone/ext/PhoneGlobalsBroadcastReceiverExtension;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneGlobalsExtension()Lcom/mediatek/phone/ext/PhoneGlobalsExtension;
    .locals 1

    .prologue
    .line 148
    const-string v0, "PhoneGlobalsBroadcastReceiverExtension()"

    invoke-static {v0}, Lcom/mediatek/phone/ext/ExtensionManager;->log(Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/mediatek/phone/ext/ExtensionManager;->mPhonePluginExtContainer:Lcom/mediatek/phone/ext/PhonePluginExtensionContainer;

    invoke-virtual {v0}, Lcom/mediatek/phone/ext/PhonePluginExtensionContainer;->getPhoneGlobalsExtension()Lcom/mediatek/phone/ext/PhoneGlobalsExtension;

    move-result-object v0

    return-object v0
.end method

.method public getSettingsExtension()Lcom/mediatek/phone/ext/SettingsExtension;
    .locals 1

    .prologue
    .line 202
    const-string v0, "getSettingsExtension()"

    invoke-static {v0}, Lcom/mediatek/phone/ext/ExtensionManager;->log(Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/mediatek/phone/ext/ExtensionManager;->mPhonePluginExtContainer:Lcom/mediatek/phone/ext/PhonePluginExtensionContainer;

    invoke-virtual {v0}, Lcom/mediatek/phone/ext/PhonePluginExtensionContainer;->getSettingsExtension()Lcom/mediatek/phone/ext/SettingsExtension;

    move-result-object v0

    return-object v0
.end method

.method public getVTCallBannerControllerExtension()Lcom/mediatek/phone/ext/VTCallBannerControllerExtension;
    .locals 1

    .prologue
    .line 121
    const-string v0, "getVTCallBannerControllerExtension()"

    invoke-static {v0}, Lcom/mediatek/phone/ext/ExtensionManager;->log(Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/mediatek/phone/ext/ExtensionManager;->mPhonePluginExtContainer:Lcom/mediatek/phone/ext/PhonePluginExtensionContainer;

    invoke-virtual {v0}, Lcom/mediatek/phone/ext/PhonePluginExtensionContainer;->getVTCallBannerControllerExtension()Lcom/mediatek/phone/ext/VTCallBannerControllerExtension;

    move-result-object v0

    return-object v0
.end method

.method public getVTInCallScreenExtension()Lcom/mediatek/phone/ext/VTInCallScreenExtension;
    .locals 1

    .prologue
    .line 113
    const-string v0, "getVTInCallScreenExtension()"

    invoke-static {v0}, Lcom/mediatek/phone/ext/ExtensionManager;->log(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/mediatek/phone/ext/ExtensionManager;->mPhonePluginExtContainer:Lcom/mediatek/phone/ext/PhonePluginExtensionContainer;

    invoke-virtual {v0}, Lcom/mediatek/phone/ext/PhonePluginExtensionContainer;->getVTInCallScreenExtension()Lcom/mediatek/phone/ext/VTInCallScreenExtension;

    move-result-object v0

    return-object v0
.end method

.method public getVTInCallScreenFlagsExtension()Lcom/mediatek/phone/ext/VTInCallScreenFlagsExtension;
    .locals 1

    .prologue
    .line 130
    const-string v0, "getVTInCallScreenFlagsExtension()"

    invoke-static {v0}, Lcom/mediatek/phone/ext/ExtensionManager;->log(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/mediatek/phone/ext/ExtensionManager;->mPhonePluginExtContainer:Lcom/mediatek/phone/ext/PhonePluginExtensionContainer;

    invoke-virtual {v0}, Lcom/mediatek/phone/ext/PhonePluginExtensionContainer;->getVTInCallScreenFlagsExtension()Lcom/mediatek/phone/ext/VTInCallScreenFlagsExtension;

    move-result-object v0

    return-object v0
.end method
