.class public Lcom/mediatek/browser/ext/Extensions;
.super Ljava/lang/Object;
.source "Extensions.java"


# static fields
.field private static volatile sDownloadPlugin:Lcom/mediatek/browser/ext/IBrowserDownloadEx;

.field private static volatile sProcessNetworkPlugin:Lcom/mediatek/browser/ext/IBrowserProcessNetworkEx;

.field private static volatile sRegionalPhonePlugin:Lcom/mediatek/browser/ext/IBrowserRegionalPhoneEx;

.field private static volatile sSmallFeaturePlugin:Lcom/mediatek/browser/ext/IBrowserSmallFeatureEx;

.field private static volatile sSmsHandlerPlugin:Lcom/mediatek/browser/ext/IBrowserSmsHandlerEx;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 9
    sput-object v0, Lcom/mediatek/browser/ext/Extensions;->sSmallFeaturePlugin:Lcom/mediatek/browser/ext/IBrowserSmallFeatureEx;

    .line 10
    sput-object v0, Lcom/mediatek/browser/ext/Extensions;->sDownloadPlugin:Lcom/mediatek/browser/ext/IBrowserDownloadEx;

    .line 11
    sput-object v0, Lcom/mediatek/browser/ext/Extensions;->sProcessNetworkPlugin:Lcom/mediatek/browser/ext/IBrowserProcessNetworkEx;

    .line 12
    sput-object v0, Lcom/mediatek/browser/ext/Extensions;->sSmsHandlerPlugin:Lcom/mediatek/browser/ext/IBrowserSmsHandlerEx;

    .line 13
    sput-object v0, Lcom/mediatek/browser/ext/Extensions;->sRegionalPhonePlugin:Lcom/mediatek/browser/ext/IBrowserRegionalPhoneEx;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDownloadPlugin(Landroid/content/Context;)Lcom/mediatek/browser/ext/IBrowserDownloadEx;
    .locals 4
    .parameter "context"

    .prologue
    .line 33
    sget-object v1, Lcom/mediatek/browser/ext/Extensions;->sDownloadPlugin:Lcom/mediatek/browser/ext/IBrowserDownloadEx;

    if-nez v1, :cond_1

    .line 34
    const-class v2, Lcom/mediatek/browser/ext/Extensions;

    monitor-enter v2

    .line 35
    :try_start_0
    sget-object v1, Lcom/mediatek/browser/ext/Extensions;->sDownloadPlugin:Lcom/mediatek/browser/ext/IBrowserDownloadEx;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 37
    :try_start_1
    const-class v1, Lcom/mediatek/browser/ext/IBrowserDownloadEx;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Landroid/content/pm/Signature;

    invoke-static {p0, v1, v3}, Lcom/mediatek/pluginmanager/PluginManager;->createPluginObject(Landroid/content/Context;Ljava/lang/String;[Landroid/content/pm/Signature;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/browser/ext/IBrowserDownloadEx;

    sput-object v1, Lcom/mediatek/browser/ext/Extensions;->sDownloadPlugin:Lcom/mediatek/browser/ext/IBrowserDownloadEx;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException; {:try_start_1 .. :try_end_1} :catch_0

    .line 43
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 45
    :cond_1
    sget-object v1, Lcom/mediatek/browser/ext/Extensions;->sDownloadPlugin:Lcom/mediatek/browser/ext/IBrowserDownloadEx;

    return-object v1

    .line 39
    :catch_0
    move-exception v0

    .line 40
    .local v0, e:Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException;
    :try_start_3
    new-instance v1, Lcom/mediatek/browser/ext/BrowserDownloadEx;

    invoke-direct {v1}, Lcom/mediatek/browser/ext/BrowserDownloadEx;-><init>()V

    sput-object v1, Lcom/mediatek/browser/ext/Extensions;->sDownloadPlugin:Lcom/mediatek/browser/ext/IBrowserDownloadEx;

    goto :goto_0

    .line 43
    .end local v0           #e:Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public static getProcessNetworkPlugin(Landroid/content/Context;)Lcom/mediatek/browser/ext/IBrowserProcessNetworkEx;
    .locals 4
    .parameter "context"

    .prologue
    .line 49
    sget-object v1, Lcom/mediatek/browser/ext/Extensions;->sProcessNetworkPlugin:Lcom/mediatek/browser/ext/IBrowserProcessNetworkEx;

    if-nez v1, :cond_1

    .line 50
    const-class v2, Lcom/mediatek/browser/ext/Extensions;

    monitor-enter v2

    .line 51
    :try_start_0
    sget-object v1, Lcom/mediatek/browser/ext/Extensions;->sProcessNetworkPlugin:Lcom/mediatek/browser/ext/IBrowserProcessNetworkEx;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 53
    :try_start_1
    const-class v1, Lcom/mediatek/browser/ext/IBrowserProcessNetworkEx;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Landroid/content/pm/Signature;

    invoke-static {p0, v1, v3}, Lcom/mediatek/pluginmanager/PluginManager;->createPluginObject(Landroid/content/Context;Ljava/lang/String;[Landroid/content/pm/Signature;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/browser/ext/IBrowserProcessNetworkEx;

    sput-object v1, Lcom/mediatek/browser/ext/Extensions;->sProcessNetworkPlugin:Lcom/mediatek/browser/ext/IBrowserProcessNetworkEx;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException; {:try_start_1 .. :try_end_1} :catch_0

    .line 59
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 61
    :cond_1
    sget-object v1, Lcom/mediatek/browser/ext/Extensions;->sProcessNetworkPlugin:Lcom/mediatek/browser/ext/IBrowserProcessNetworkEx;

    return-object v1

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, e:Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException;
    :try_start_3
    new-instance v1, Lcom/mediatek/browser/ext/BrowserProcessNetworkEx;

    invoke-direct {v1}, Lcom/mediatek/browser/ext/BrowserProcessNetworkEx;-><init>()V

    sput-object v1, Lcom/mediatek/browser/ext/Extensions;->sProcessNetworkPlugin:Lcom/mediatek/browser/ext/IBrowserProcessNetworkEx;

    goto :goto_0

    .line 59
    .end local v0           #e:Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public static getRegionalPhonePlugin(Landroid/content/Context;)Lcom/mediatek/browser/ext/IBrowserRegionalPhoneEx;
    .locals 4
    .parameter "context"

    .prologue
    .line 81
    sget-object v1, Lcom/mediatek/browser/ext/Extensions;->sRegionalPhonePlugin:Lcom/mediatek/browser/ext/IBrowserRegionalPhoneEx;

    if-nez v1, :cond_1

    .line 82
    const-class v2, Lcom/mediatek/browser/ext/Extensions;

    monitor-enter v2

    .line 83
    :try_start_0
    sget-object v1, Lcom/mediatek/browser/ext/Extensions;->sRegionalPhonePlugin:Lcom/mediatek/browser/ext/IBrowserRegionalPhoneEx;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 85
    :try_start_1
    const-class v1, Lcom/mediatek/browser/ext/IBrowserRegionalPhoneEx;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Landroid/content/pm/Signature;

    invoke-static {p0, v1, v3}, Lcom/mediatek/pluginmanager/PluginManager;->createPluginObject(Landroid/content/Context;Ljava/lang/String;[Landroid/content/pm/Signature;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/browser/ext/IBrowserRegionalPhoneEx;

    sput-object v1, Lcom/mediatek/browser/ext/Extensions;->sRegionalPhonePlugin:Lcom/mediatek/browser/ext/IBrowserRegionalPhoneEx;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException; {:try_start_1 .. :try_end_1} :catch_0

    .line 91
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 93
    :cond_1
    sget-object v1, Lcom/mediatek/browser/ext/Extensions;->sRegionalPhonePlugin:Lcom/mediatek/browser/ext/IBrowserRegionalPhoneEx;

    return-object v1

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, e:Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException;
    :try_start_3
    new-instance v1, Lcom/mediatek/browser/ext/BrowserRegionalPhoneEx;

    invoke-direct {v1}, Lcom/mediatek/browser/ext/BrowserRegionalPhoneEx;-><init>()V

    sput-object v1, Lcom/mediatek/browser/ext/Extensions;->sRegionalPhonePlugin:Lcom/mediatek/browser/ext/IBrowserRegionalPhoneEx;

    goto :goto_0

    .line 91
    .end local v0           #e:Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public static getSmallFeaturePlugin(Landroid/content/Context;)Lcom/mediatek/browser/ext/IBrowserSmallFeatureEx;
    .locals 4
    .parameter "context"

    .prologue
    .line 17
    sget-object v1, Lcom/mediatek/browser/ext/Extensions;->sSmallFeaturePlugin:Lcom/mediatek/browser/ext/IBrowserSmallFeatureEx;

    if-nez v1, :cond_1

    .line 18
    const-class v2, Lcom/mediatek/browser/ext/Extensions;

    monitor-enter v2

    .line 19
    :try_start_0
    sget-object v1, Lcom/mediatek/browser/ext/Extensions;->sSmallFeaturePlugin:Lcom/mediatek/browser/ext/IBrowserSmallFeatureEx;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 21
    :try_start_1
    const-class v1, Lcom/mediatek/browser/ext/IBrowserSmallFeatureEx;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Landroid/content/pm/Signature;

    invoke-static {p0, v1, v3}, Lcom/mediatek/pluginmanager/PluginManager;->createPluginObject(Landroid/content/Context;Ljava/lang/String;[Landroid/content/pm/Signature;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/browser/ext/IBrowserSmallFeatureEx;

    sput-object v1, Lcom/mediatek/browser/ext/Extensions;->sSmallFeaturePlugin:Lcom/mediatek/browser/ext/IBrowserSmallFeatureEx;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException; {:try_start_1 .. :try_end_1} :catch_0

    .line 27
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 29
    :cond_1
    sget-object v1, Lcom/mediatek/browser/ext/Extensions;->sSmallFeaturePlugin:Lcom/mediatek/browser/ext/IBrowserSmallFeatureEx;

    return-object v1

    .line 23
    :catch_0
    move-exception v0

    .line 24
    .local v0, e:Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException;
    :try_start_3
    new-instance v1, Lcom/mediatek/browser/ext/BrowserSmallFeatureEx;

    invoke-direct {v1, p0}, Lcom/mediatek/browser/ext/BrowserSmallFeatureEx;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/mediatek/browser/ext/Extensions;->sSmallFeaturePlugin:Lcom/mediatek/browser/ext/IBrowserSmallFeatureEx;

    goto :goto_0

    .line 27
    .end local v0           #e:Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public static getSmsHandlerPlugin(Landroid/content/Context;)Lcom/mediatek/browser/ext/IBrowserSmsHandlerEx;
    .locals 4
    .parameter "context"

    .prologue
    .line 65
    sget-object v1, Lcom/mediatek/browser/ext/Extensions;->sSmsHandlerPlugin:Lcom/mediatek/browser/ext/IBrowserSmsHandlerEx;

    if-nez v1, :cond_1

    .line 66
    const-class v2, Lcom/mediatek/browser/ext/Extensions;

    monitor-enter v2

    .line 67
    :try_start_0
    sget-object v1, Lcom/mediatek/browser/ext/Extensions;->sSmsHandlerPlugin:Lcom/mediatek/browser/ext/IBrowserSmsHandlerEx;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 69
    :try_start_1
    const-class v1, Lcom/mediatek/browser/ext/IBrowserSmsHandlerEx;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Landroid/content/pm/Signature;

    invoke-static {p0, v1, v3}, Lcom/mediatek/pluginmanager/PluginManager;->createPluginObject(Landroid/content/Context;Ljava/lang/String;[Landroid/content/pm/Signature;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/browser/ext/IBrowserSmsHandlerEx;

    sput-object v1, Lcom/mediatek/browser/ext/Extensions;->sSmsHandlerPlugin:Lcom/mediatek/browser/ext/IBrowserSmsHandlerEx;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException; {:try_start_1 .. :try_end_1} :catch_0

    .line 75
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 77
    :cond_1
    sget-object v1, Lcom/mediatek/browser/ext/Extensions;->sSmsHandlerPlugin:Lcom/mediatek/browser/ext/IBrowserSmsHandlerEx;

    return-object v1

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, e:Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException;
    :try_start_3
    new-instance v1, Lcom/mediatek/browser/ext/BrowserSmsHandlerEx;

    invoke-direct {v1}, Lcom/mediatek/browser/ext/BrowserSmsHandlerEx;-><init>()V

    sput-object v1, Lcom/mediatek/browser/ext/Extensions;->sSmsHandlerPlugin:Lcom/mediatek/browser/ext/IBrowserSmsHandlerEx;

    goto :goto_0

    .line 75
    .end local v0           #e:Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method
