.class public Lcom/mediatek/downloadmanager/ext/Extensions;
.super Ljava/lang/Object;
.source "Extensions.java"


# static fields
.field private static sPlugin:Lcom/mediatek/downloadmanager/ext/IDownloadProviderFeatureEx;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/downloadmanager/ext/Extensions;->sPlugin:Lcom/mediatek/downloadmanager/ext/IDownloadProviderFeatureEx;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefault(Landroid/content/Context;)Lcom/mediatek/downloadmanager/ext/IDownloadProviderFeatureEx;
    .locals 3
    .parameter "context"

    .prologue
    .line 11
    sget-object v1, Lcom/mediatek/downloadmanager/ext/Extensions;->sPlugin:Lcom/mediatek/downloadmanager/ext/IDownloadProviderFeatureEx;

    if-nez v1, :cond_0

    .line 13
    :try_start_0
    const-class v1, Lcom/mediatek/downloadmanager/ext/IDownloadProviderFeatureEx;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/content/pm/Signature;

    invoke-static {p0, v1, v2}, Lcom/mediatek/pluginmanager/PluginManager;->createPluginObject(Landroid/content/Context;Ljava/lang/String;[Landroid/content/pm/Signature;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/downloadmanager/ext/IDownloadProviderFeatureEx;

    sput-object v1, Lcom/mediatek/downloadmanager/ext/Extensions;->sPlugin:Lcom/mediatek/downloadmanager/ext/IDownloadProviderFeatureEx;
    :try_end_0
    .catch Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    :cond_0
    :goto_0
    sget-object v1, Lcom/mediatek/downloadmanager/ext/Extensions;->sPlugin:Lcom/mediatek/downloadmanager/ext/IDownloadProviderFeatureEx;

    return-object v1

    .line 15
    :catch_0
    move-exception v0

    .line 16
    .local v0, e:Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException;
    new-instance v1, Lcom/mediatek/downloadmanager/ext/DownloadProviderFeatureEx;

    invoke-direct {v1, p0}, Lcom/mediatek/downloadmanager/ext/DownloadProviderFeatureEx;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/mediatek/downloadmanager/ext/Extensions;->sPlugin:Lcom/mediatek/downloadmanager/ext/IDownloadProviderFeatureEx;

    goto :goto_0
.end method
