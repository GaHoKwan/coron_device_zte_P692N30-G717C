.class public Lcom/mediatek/music/ext/Extensions;
.super Ljava/lang/Object;
.source "Extensions.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MusicExtensions"

.field static sPlugin:Lcom/mediatek/music/ext/IMusicTrackBrowser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/music/ext/Extensions;->sPlugin:Lcom/mediatek/music/ext/IMusicTrackBrowser;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPluginObject(Landroid/content/Context;)Lcom/mediatek/music/ext/IMusicTrackBrowser;
    .locals 4
    .parameter "context"

    .prologue
    .line 50
    sget-object v1, Lcom/mediatek/music/ext/Extensions;->sPlugin:Lcom/mediatek/music/ext/IMusicTrackBrowser;

    if-nez v1, :cond_0

    .line 52
    :try_start_0
    const-class v1, Lcom/mediatek/music/ext/IMusicTrackBrowser;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/content/pm/Signature;

    invoke-static {p0, v1, v2}, Lcom/mediatek/pluginmanager/PluginManager;->createPluginObject(Landroid/content/Context;Ljava/lang/String;[Landroid/content/pm/Signature;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/music/ext/IMusicTrackBrowser;

    sput-object v1, Lcom/mediatek/music/ext/Extensions;->sPlugin:Lcom/mediatek/music/ext/IMusicTrackBrowser;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    sget-object v1, Lcom/mediatek/music/ext/Extensions;->sPlugin:Lcom/mediatek/music/ext/IMusicTrackBrowser;

    if-nez v1, :cond_0

    .line 58
    new-instance v1, Lcom/mediatek/music/ext/DefaultMusicTrackBrowserExtensions;

    invoke-direct {v1, p0}, Lcom/mediatek/music/ext/DefaultMusicTrackBrowserExtensions;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/mediatek/music/ext/Extensions;->sPlugin:Lcom/mediatek/music/ext/IMusicTrackBrowser;

    .line 62
    :cond_0
    :goto_0
    sget-object v1, Lcom/mediatek/music/ext/Extensions;->sPlugin:Lcom/mediatek/music/ext/IMusicTrackBrowser;

    return-object v1

    .line 54
    :catch_0
    move-exception v0

    .line 55
    .local v0, e:Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException;
    :try_start_1
    const-string v1, "MusicExtensions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "None operator sPlugin:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    sget-object v1, Lcom/mediatek/music/ext/Extensions;->sPlugin:Lcom/mediatek/music/ext/IMusicTrackBrowser;

    if-nez v1, :cond_0

    .line 58
    new-instance v1, Lcom/mediatek/music/ext/DefaultMusicTrackBrowserExtensions;

    invoke-direct {v1, p0}, Lcom/mediatek/music/ext/DefaultMusicTrackBrowserExtensions;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/mediatek/music/ext/Extensions;->sPlugin:Lcom/mediatek/music/ext/IMusicTrackBrowser;

    goto :goto_0

    .line 57
    .end local v0           #e:Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException;
    :catchall_0
    move-exception v1

    sget-object v2, Lcom/mediatek/music/ext/Extensions;->sPlugin:Lcom/mediatek/music/ext/IMusicTrackBrowser;

    if-nez v2, :cond_1

    .line 58
    new-instance v2, Lcom/mediatek/music/ext/DefaultMusicTrackBrowserExtensions;

    invoke-direct {v2, p0}, Lcom/mediatek/music/ext/DefaultMusicTrackBrowserExtensions;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/mediatek/music/ext/Extensions;->sPlugin:Lcom/mediatek/music/ext/IMusicTrackBrowser;

    :cond_1
    throw v1
.end method
