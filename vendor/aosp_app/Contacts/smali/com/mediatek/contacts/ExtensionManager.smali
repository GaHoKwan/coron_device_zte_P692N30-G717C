.class public Lcom/mediatek/contacts/ExtensionManager;
.super Ljava/lang/Object;
.source "ExtensionManager.java"


# static fields
.field public static final COMMD_FOR_AAS:Ljava/lang/String; = "ExtensionForAAS"

.field public static final COMMD_FOR_RCS:Ljava/lang/String; = "ExtenstionForRCS"

.field public static final COMMD_FOR_SNE:Ljava/lang/String; = "ExtensionForSNE"

.field public static final COMMD_FOR_SNS:Ljava/lang/String; = "ExtensionForSNS"

.field public static final RCS_CONTACT_PRESENCE_CHANGED:Ljava/lang/String; = "android.intent.action.RCS_CONTACT_PRESENCE_CHANGED"

.field private static final TAG:Ljava/lang/String; = "ExtensionManager"

.field private static sInstance:Lcom/mediatek/contacts/ExtensionManager;


# instance fields
.field private mContactPluinContainer:Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;

.field private mHasPlugin:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/contacts/ExtensionManager;->mHasPlugin:Z

    .line 52
    invoke-virtual {p0}, Lcom/mediatek/contacts/ExtensionManager;->refreshPlugins()V

    .line 53
    return-void
.end method

.method private static declared-synchronized createInstanceSynchronized()V
    .locals 2

    .prologue
    .line 63
    const-class v1, Lcom/mediatek/contacts/ExtensionManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/mediatek/contacts/ExtensionManager;->sInstance:Lcom/mediatek/contacts/ExtensionManager;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lcom/mediatek/contacts/ExtensionManager;

    invoke-direct {v0}, Lcom/mediatek/contacts/ExtensionManager;-><init>()V

    sput-object v0, Lcom/mediatek/contacts/ExtensionManager;->sInstance:Lcom/mediatek/contacts/ExtensionManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    :cond_0
    monitor-exit v1

    return-void

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getInstance()Lcom/mediatek/contacts/ExtensionManager;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/mediatek/contacts/ExtensionManager;->sInstance:Lcom/mediatek/contacts/ExtensionManager;

    if-nez v0, :cond_0

    .line 57
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->createInstanceSynchronized()V

    .line 59
    :cond_0
    sget-object v0, Lcom/mediatek/contacts/ExtensionManager;->sInstance:Lcom/mediatek/contacts/ExtensionManager;

    return-object v0
.end method

.method private getPlugin()V
    .locals 10

    .prologue
    .line 69
    invoke-static {}, Lcom/android/contacts/ContactsApplication;->getInstance()Lcom/android/contacts/ContactsApplication;

    move-result-object v0

    .line 70
    .local v0, applicationContext:Landroid/content/Context;
    const-string v7, "ExtensionManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getPlugin applicationContext : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    const-class v7, Lcom/android/contacts/ext/IContactPlugin;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Landroid/content/pm/Signature;

    invoke-static {v0, v7, v8}, Lcom/mediatek/pluginmanager/PluginManager;->create(Landroid/content/Context;Ljava/lang/String;[Landroid/content/pm/Signature;)Lcom/mediatek/pluginmanager/PluginManager;

    move-result-object v6

    .line 73
    .local v6, pm:Lcom/mediatek/pluginmanager/PluginManager;,"Lcom/mediatek/pluginmanager/PluginManager<Lcom/android/contacts/ext/IContactPlugin;>;"
    const-string v7, "ExtensionManager"

    const-string v8, "get pluginManager"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-virtual {v6}, Lcom/mediatek/pluginmanager/PluginManager;->getPluginCount()I

    move-result v4

    .line 75
    .local v4, num:I
    if-nez v4, :cond_1

    .line 76
    const-string v7, "ExtensionManager"

    const-string v8, "no plugin apk"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    const-string v7, "ExtensionManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "num : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v4, :cond_0

    .line 82
    :try_start_0
    invoke-virtual {v6, v3}, Lcom/mediatek/pluginmanager/PluginManager;->getPlugin(I)Lcom/mediatek/pluginmanager/Plugin;

    move-result-object v1

    .line 83
    .local v1, contactPlugin:Lcom/mediatek/pluginmanager/Plugin;,"Lcom/mediatek/pluginmanager/Plugin<Lcom/android/contacts/ext/IContactPlugin;>;"
    if-eqz v1, :cond_2

    .line 84
    invoke-virtual {v1}, Lcom/mediatek/pluginmanager/Plugin;->createObject()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/ext/IContactPlugin;

    .line 85
    .local v5, plugin:Lcom/android/contacts/ext/IContactPlugin;
    const-string v7, "ExtensionManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[getPlugin] addExtension:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",plugin:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object v7, p0, Lcom/mediatek/contacts/ExtensionManager;->mContactPluinContainer:Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;

    invoke-virtual {v7, v5}, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->addExtensions(Lcom/android/contacts/ext/IContactPlugin;)V

    .line 81
    .end local v5           #plugin:Lcom/android/contacts/ext/IContactPlugin;
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 88
    :cond_2
    const-string v7, "ExtensionManager"

    const-string v8, "contactPlugin is null"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 91
    .end local v1           #contactPlugin:Lcom/mediatek/pluginmanager/Plugin;,"Lcom/mediatek/pluginmanager/Plugin<Lcom/android/contacts/ext/IContactPlugin;>;"
    :catch_0
    move-exception v2

    .line 92
    .local v2, e:Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException;
    const-string v7, "ExtensionManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getPlugin is error "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public HasPlugin()Z
    .locals 3

    .prologue
    .line 183
    const-string v0, "ExtensionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "return mHasPlugin : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/contacts/ExtensionManager;->mHasPlugin:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-boolean v0, p0, Lcom/mediatek/contacts/ExtensionManager;->mHasPlugin:Z

    return v0
.end method

.method public getCallDetailExtension()Lcom/android/contacts/ext/CallDetailExtension;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/mediatek/contacts/ExtensionManager;->mContactPluinContainer:Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;

    invoke-virtual {v0}, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->getCallDetailExtension()Lcom/android/contacts/ext/CallDetailExtension;

    move-result-object v0

    return-object v0
.end method

.method public getCallDetailHistoryAdapterExtension()Lcom/android/contacts/ext/CallDetailHistoryAdapterExtension;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/mediatek/contacts/ExtensionManager;->mContactPluinContainer:Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;

    invoke-virtual {v0}, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->getCallDetailHistoryAdapterExtension()Lcom/android/contacts/ext/CallDetailHistoryAdapterExtension;

    move-result-object v0

    return-object v0
.end method

.method public getCallListExtension()Lcom/android/contacts/ext/CallListExtension;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/mediatek/contacts/ExtensionManager;->mContactPluinContainer:Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;

    invoke-virtual {v0}, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->getCallListExtension()Lcom/android/contacts/ext/CallListExtension;

    move-result-object v0

    return-object v0
.end method

.method public getCallLogAdapterExtension()Lcom/android/contacts/ext/CallLogAdapterExtension;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/mediatek/contacts/ExtensionManager;->mContactPluinContainer:Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;

    invoke-virtual {v0}, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->getCallLogAdapterExtension()Lcom/android/contacts/ext/CallLogAdapterExtension;

    move-result-object v0

    return-object v0
.end method

.method public getCallLogSearchResultActivityExtension()Lcom/android/contacts/ext/CallLogSearchResultActivityExtension;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/mediatek/contacts/ExtensionManager;->mContactPluinContainer:Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;

    invoke-virtual {v0}, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->getCallLogSearchResultActivityExtension()Lcom/android/contacts/ext/CallLogSearchResultActivityExtension;

    move-result-object v0

    return-object v0
.end method

.method public getCallLogSimInfoHelperExtension()Lcom/android/contacts/ext/CallLogSimInfoHelperExtension;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/mediatek/contacts/ExtensionManager;->mContactPluinContainer:Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;

    invoke-virtual {v0}, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->getCallLogSimInfoHelperExtension()Lcom/android/contacts/ext/CallLogSimInfoHelperExtension;

    move-result-object v0

    return-object v0
.end method

.method public getContactAccountExtension()Lcom/android/contacts/ext/ContactAccountExtension;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/mediatek/contacts/ExtensionManager;->mContactPluinContainer:Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;

    invoke-virtual {v0}, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->getContactAccountExtension()Lcom/android/contacts/ext/ContactAccountExtension;

    move-result-object v0

    return-object v0
.end method

.method public getContactDetailEnhancementExtension()Lcom/android/contacts/ext/ContactDetailEnhancementExtension;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/mediatek/contacts/ExtensionManager;->mContactPluinContainer:Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;

    invoke-virtual {v0}, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->getContactDetailEnhancementExtension()Lcom/android/contacts/ext/ContactDetailEnhancementExtension;

    move-result-object v0

    return-object v0
.end method

.method public getContactDetailExtension()Lcom/android/contacts/ext/ContactDetailExtension;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/mediatek/contacts/ExtensionManager;->mContactPluinContainer:Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;

    invoke-virtual {v0}, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->getContactDetailExtension()Lcom/android/contacts/ext/ContactDetailExtension;

    move-result-object v0

    return-object v0
.end method

.method public getContactListExtension()Lcom/android/contacts/ext/ContactListExtension;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/mediatek/contacts/ExtensionManager;->mContactPluinContainer:Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;

    invoke-virtual {v0}, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->getContactListExtension()Lcom/android/contacts/ext/ContactListExtension;

    move-result-object v0

    return-object v0
.end method

.method public getContactsCallOptionHandlerExtension()Lcom/android/contacts/ext/ContactsCallOptionHandlerExtension;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/mediatek/contacts/ExtensionManager;->mContactPluinContainer:Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;

    invoke-virtual {v0}, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->getContactsCallOptionHandlerExtension()Lcom/android/contacts/ext/ContactsCallOptionHandlerExtension;

    move-result-object v0

    return-object v0
.end method

.method public getContactsCallOptionHandlerFactoryExtension()Lcom/android/contacts/ext/ContactsCallOptionHandlerFactoryExtension;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/mediatek/contacts/ExtensionManager;->mContactPluinContainer:Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;

    invoke-virtual {v0}, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->getContactsCallOptionHandlerFactoryExtension()Lcom/android/contacts/ext/ContactsCallOptionHandlerFactoryExtension;

    move-result-object v0

    return-object v0
.end method

.method public getDialPadExtension()Lcom/android/contacts/ext/DialPadExtension;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/mediatek/contacts/ExtensionManager;->mContactPluinContainer:Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;

    invoke-virtual {v0}, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->getDialPadExtension()Lcom/android/contacts/ext/DialPadExtension;

    move-result-object v0

    return-object v0
.end method

.method public getDialerSearchAdapterExtension()Lcom/android/contacts/ext/DialerSearchAdapterExtension;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/mediatek/contacts/ExtensionManager;->mContactPluinContainer:Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;

    invoke-virtual {v0}, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->getDialerSearchAdapterExtension()Lcom/android/contacts/ext/DialerSearchAdapterExtension;

    move-result-object v0

    return-object v0
.end method

.method public getDialtactsExtension()Lcom/android/contacts/ext/DialtactsExtension;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/mediatek/contacts/ExtensionManager;->mContactPluinContainer:Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;

    invoke-virtual {v0}, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->getDialtactsExtension()Lcom/android/contacts/ext/DialtactsExtension;

    move-result-object v0

    return-object v0
.end method

.method public getIccCardExtension()Lcom/android/contacts/ext/IccCardExtension;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/mediatek/contacts/ExtensionManager;->mContactPluinContainer:Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;

    invoke-virtual {v0}, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->getIccCardExtension()Lcom/android/contacts/ext/IccCardExtension;

    move-result-object v0

    return-object v0
.end method

.method public getImportExportEnhancementExtension()Lcom/android/contacts/ext/ImportExportEnhancementExtension;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/mediatek/contacts/ExtensionManager;->mContactPluinContainer:Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;

    invoke-virtual {v0}, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->getImportExportEnhancementExtension()Lcom/android/contacts/ext/ImportExportEnhancementExtension;

    move-result-object v0

    return-object v0
.end method

.method public getQuickContactExtension()Lcom/android/contacts/ext/QuickContactExtension;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/mediatek/contacts/ExtensionManager;->mContactPluinContainer:Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;

    invoke-virtual {v0}, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->getQuickContactExtension()Lcom/android/contacts/ext/QuickContactExtension;

    move-result-object v0

    return-object v0
.end method

.method public getSimPickExtension()Lcom/android/contacts/ext/SimPickExtension;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/mediatek/contacts/ExtensionManager;->mContactPluinContainer:Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;

    invoke-virtual {v0}, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->getSimPickExtension()Lcom/android/contacts/ext/SimPickExtension;

    move-result-object v0

    return-object v0
.end method

.method public getSimServiceExtension()Lcom/android/contacts/ext/SimServiceExtension;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/mediatek/contacts/ExtensionManager;->mContactPluinContainer:Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;

    invoke-virtual {v0}, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->getSimServiceExtension()Lcom/android/contacts/ext/SimServiceExtension;

    move-result-object v0

    return-object v0
.end method

.method public getSpeedDialExtension()Lcom/android/contacts/ext/SpeedDialExtension;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/mediatek/contacts/ExtensionManager;->mContactPluinContainer:Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;

    invoke-virtual {v0}, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->getSpeedDialExtension()Lcom/android/contacts/ext/SpeedDialExtension;

    move-result-object v0

    return-object v0
.end method

.method public refreshPlugins()V
    .locals 0

    .prologue
    .line 200
    invoke-virtual {p0}, Lcom/mediatek/contacts/ExtensionManager;->resetPlugins()V

    .line 201
    invoke-direct {p0}, Lcom/mediatek/contacts/ExtensionManager;->getPlugin()V

    .line 202
    return-void
.end method

.method public resetPlugins()V
    .locals 1

    .prologue
    .line 192
    new-instance v0, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;

    invoke-direct {v0}, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;-><init>()V

    iput-object v0, p0, Lcom/mediatek/contacts/ExtensionManager;->mContactPluinContainer:Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;

    .line 193
    return-void
.end method
