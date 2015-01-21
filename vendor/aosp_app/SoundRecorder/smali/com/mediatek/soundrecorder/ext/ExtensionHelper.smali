.class public Lcom/mediatek/soundrecorder/ext/ExtensionHelper;
.super Ljava/lang/Object;
.source "ExtensionHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getExtension(Landroid/content/Context;)Lcom/mediatek/soundrecorder/ext/IQualityLevel;
    .locals 8
    .parameter "context"

    .prologue
    const/4 v7, 0x0

    .line 51
    const-class v5, Lcom/mediatek/soundrecorder/ext/IQualityLevel;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Landroid/content/pm/Signature;

    invoke-static {p0, v5, v6}, Lcom/mediatek/pluginmanager/PluginManager;->create(Landroid/content/Context;Ljava/lang/String;[Landroid/content/pm/Signature;)Lcom/mediatek/pluginmanager/PluginManager;

    move-result-object v2

    .line 52
    .local v2, pm:Lcom/mediatek/pluginmanager/PluginManager;,"Lcom/mediatek/pluginmanager/PluginManager<Lcom/mediatek/soundrecorder/ext/IQualityLevel;>;"
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/mediatek/pluginmanager/PluginManager;->getPluginCount()I

    move-result v5

    if-eqz v5, :cond_1

    .line 53
    invoke-virtual {v2, v7}, Lcom/mediatek/pluginmanager/PluginManager;->getPlugin(I)Lcom/mediatek/pluginmanager/Plugin;

    move-result-object v1

    .line 54
    .local v1, plugin:Lcom/mediatek/pluginmanager/Plugin;,"Lcom/mediatek/pluginmanager/Plugin<Lcom/mediatek/soundrecorder/ext/IQualityLevel;>;"
    if-eqz v1, :cond_0

    .line 56
    :try_start_0
    invoke-virtual {v1}, Lcom/mediatek/pluginmanager/Plugin;->createObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/soundrecorder/ext/IQualityLevel;
    :try_end_0
    .catch Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException; {:try_start_0 .. :try_end_0} :catch_0

    .local v3, qaulityLevel:Lcom/mediatek/soundrecorder/ext/IQualityLevel;
    :goto_0
    move-object v4, v3

    .line 67
    .end local v1           #plugin:Lcom/mediatek/pluginmanager/Plugin;,"Lcom/mediatek/pluginmanager/Plugin<Lcom/mediatek/soundrecorder/ext/IQualityLevel;>;"
    .end local v3           #qaulityLevel:Lcom/mediatek/soundrecorder/ext/IQualityLevel;
    .local v4, qaulityLevel:Lcom/mediatek/soundrecorder/ext/IQualityLevel;
    :goto_1
    return-object v4

    .line 57
    .end local v4           #qaulityLevel:Lcom/mediatek/soundrecorder/ext/IQualityLevel;
    .restart local v1       #plugin:Lcom/mediatek/pluginmanager/Plugin;,"Lcom/mediatek/pluginmanager/Plugin<Lcom/mediatek/soundrecorder/ext/IQualityLevel;>;"
    :catch_0
    move-exception v0

    .line 58
    .local v0, e:Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException;
    new-instance v3, Lcom/mediatek/soundrecorder/ext/DefaultQualityLevel;

    invoke-direct {v3}, Lcom/mediatek/soundrecorder/ext/DefaultQualityLevel;-><init>()V

    .restart local v3       #qaulityLevel:Lcom/mediatek/soundrecorder/ext/IQualityLevel;
    goto :goto_0

    .line 62
    .end local v0           #e:Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException;
    .end local v3           #qaulityLevel:Lcom/mediatek/soundrecorder/ext/IQualityLevel;
    :cond_0
    new-instance v3, Lcom/mediatek/soundrecorder/ext/DefaultQualityLevel;

    invoke-direct {v3}, Lcom/mediatek/soundrecorder/ext/DefaultQualityLevel;-><init>()V

    .end local v1           #plugin:Lcom/mediatek/pluginmanager/Plugin;,"Lcom/mediatek/pluginmanager/Plugin<Lcom/mediatek/soundrecorder/ext/IQualityLevel;>;"
    .restart local v3       #qaulityLevel:Lcom/mediatek/soundrecorder/ext/IQualityLevel;
    :goto_2
    move-object v4, v3

    .line 67
    .end local v3           #qaulityLevel:Lcom/mediatek/soundrecorder/ext/IQualityLevel;
    .restart local v4       #qaulityLevel:Lcom/mediatek/soundrecorder/ext/IQualityLevel;
    goto :goto_1

    .line 65
    .end local v4           #qaulityLevel:Lcom/mediatek/soundrecorder/ext/IQualityLevel;
    :cond_1
    new-instance v3, Lcom/mediatek/soundrecorder/ext/DefaultQualityLevel;

    invoke-direct {v3}, Lcom/mediatek/soundrecorder/ext/DefaultQualityLevel;-><init>()V

    .restart local v3       #qaulityLevel:Lcom/mediatek/soundrecorder/ext/IQualityLevel;
    goto :goto_2
.end method
