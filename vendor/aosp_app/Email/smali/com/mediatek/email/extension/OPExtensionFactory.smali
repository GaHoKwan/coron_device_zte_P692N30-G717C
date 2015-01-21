.class public Lcom/mediatek/email/extension/OPExtensionFactory;
.super Ljava/lang/Object;
.source "OPExtensionFactory.java"


# static fields
.field private static final METANAME_SN:Ljava/lang/String; = "sendnotification"

.field private static final TAG:Ljava/lang/String; = "OPExtensionFactory"

.field private static sProviderExtension:Lcom/mediatek/email/ext/IServerProviderPlugin;

.field private static sSendNotification:Lcom/mediatek/email/ext/ISendNotification;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getProviderExtension(Landroid/content/Context;)Lcom/mediatek/email/ext/IServerProviderPlugin;
    .locals 4
    .parameter "context"

    .prologue
    .line 67
    const-class v2, Lcom/mediatek/email/extension/OPExtensionFactory;

    monitor-enter v2

    :try_start_0
    sget-boolean v1, Lcom/android/emailcommon/Configuration;->mIsRunTestcase:Z

    if-eqz v1, :cond_1

    .line 68
    new-instance v1, Lcom/mediatek/email/ext/DefaultServerProviderExtension;

    invoke-direct {v1}, Lcom/mediatek/email/ext/DefaultServerProviderExtension;-><init>()V

    sput-object v1, Lcom/mediatek/email/extension/OPExtensionFactory;->sProviderExtension:Lcom/mediatek/email/ext/IServerProviderPlugin;

    .line 80
    :cond_0
    :goto_0
    sget-object v1, Lcom/mediatek/email/extension/OPExtensionFactory;->sProviderExtension:Lcom/mediatek/email/ext/IServerProviderPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v1

    .line 69
    :cond_1
    :try_start_1
    sget-object v1, Lcom/mediatek/email/extension/OPExtensionFactory;->sProviderExtension:Lcom/mediatek/email/ext/IServerProviderPlugin;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_0

    .line 72
    :try_start_2
    const-class v1, Lcom/mediatek/email/ext/IServerProviderPlugin;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Landroid/content/pm/Signature;

    invoke-static {p0, v1, v3}, Lcom/mediatek/pluginmanager/PluginManager;->createPluginObject(Landroid/content/Context;Ljava/lang/String;[Landroid/content/pm/Signature;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/email/ext/IServerProviderPlugin;

    sput-object v1, Lcom/mediatek/email/extension/OPExtensionFactory;->sProviderExtension:Lcom/mediatek/email/ext/IServerProviderPlugin;

    .line 74
    const-string v1, "OPExtensionFactory"

    const-string v3, "use email esp plugin"

    invoke-static {v1, v3}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, e:Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException;
    :try_start_3
    const-string v1, "OPExtensionFactory"

    const-string v3, "get plugin failed, use default"

    invoke-static {v1, v3}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    new-instance v1, Lcom/mediatek/email/ext/DefaultServerProviderExtension;

    invoke-direct {v1}, Lcom/mediatek/email/ext/DefaultServerProviderExtension;-><init>()V

    sput-object v1, Lcom/mediatek/email/extension/OPExtensionFactory;->sProviderExtension:Lcom/mediatek/email/ext/IServerProviderPlugin;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 67
    .end local v0           #e:Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized getSendingNotifyExtension(Landroid/content/Context;)Lcom/mediatek/email/ext/ISendNotification;
    .locals 5
    .parameter "context"

    .prologue
    .line 42
    const-class v2, Lcom/mediatek/email/extension/OPExtensionFactory;

    monitor-enter v2

    :try_start_0
    sget-boolean v1, Lcom/android/emailcommon/Configuration;->mIsRunTestcase:Z

    if-eqz v1, :cond_1

    .line 43
    new-instance v1, Lcom/mediatek/email/ext/DefaultSendNotification;

    invoke-direct {v1}, Lcom/mediatek/email/ext/DefaultSendNotification;-><init>()V

    sput-object v1, Lcom/mediatek/email/extension/OPExtensionFactory;->sSendNotification:Lcom/mediatek/email/ext/ISendNotification;

    .line 54
    :cond_0
    :goto_0
    sget-object v1, Lcom/mediatek/email/extension/OPExtensionFactory;->sSendNotification:Lcom/mediatek/email/ext/ISendNotification;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v1

    .line 44
    :cond_1
    :try_start_1
    sget-object v1, Lcom/mediatek/email/extension/OPExtensionFactory;->sSendNotification:Lcom/mediatek/email/ext/ISendNotification;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_0

    .line 46
    :try_start_2
    const-class v1, Lcom/mediatek/email/ext/ISendNotification;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "sendnotification"

    const/4 v4, 0x0

    new-array v4, v4, [Landroid/content/pm/Signature;

    invoke-static {p0, v1, v3, v4}, Lcom/mediatek/pluginmanager/PluginManager;->createPluginObject(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Landroid/content/pm/Signature;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/email/ext/ISendNotification;

    sput-object v1, Lcom/mediatek/email/extension/OPExtensionFactory;->sSendNotification:Lcom/mediatek/email/ext/ISendNotification;

    .line 48
    const-string v1, "OPExtensionFactory"

    const-string v3, "use SendNotification plugin"

    invoke-static {v1, v3}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, e:Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException;
    :try_start_3
    const-string v1, "OPExtensionFactory"

    const-string v3, "get plugin failed, use default"

    invoke-static {v1, v3}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    new-instance v1, Lcom/mediatek/email/ext/DefaultSendNotification;

    invoke-direct {v1}, Lcom/mediatek/email/ext/DefaultSendNotification;-><init>()V

    sput-object v1, Lcom/mediatek/email/extension/OPExtensionFactory;->sSendNotification:Lcom/mediatek/email/ext/ISendNotification;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 42
    .end local v0           #e:Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static resetAllPluginObject(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 29
    sput-object v0, Lcom/mediatek/email/extension/OPExtensionFactory;->sSendNotification:Lcom/mediatek/email/ext/ISendNotification;

    .line 30
    sput-object v0, Lcom/mediatek/email/extension/OPExtensionFactory;->sProviderExtension:Lcom/mediatek/email/ext/IServerProviderPlugin;

    .line 31
    invoke-static {p0}, Lcom/mediatek/email/extension/OPExtensionFactory;->getSendingNotifyExtension(Landroid/content/Context;)Lcom/mediatek/email/ext/ISendNotification;

    .line 32
    invoke-static {p0}, Lcom/mediatek/email/extension/OPExtensionFactory;->getProviderExtension(Landroid/content/Context;)Lcom/mediatek/email/ext/IServerProviderPlugin;

    .line 33
    return-void
.end method
