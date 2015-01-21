.class public Lcom/mediatek/calendar/extension/OPExtensionFactory;
.super Ljava/lang/Object;
.source "OPExtensionFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OPExtensionFactory"

.field private static sLunarExtension:Lcom/mediatek/calendar/ext/ILunarExtension;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLunarExtension(Landroid/content/Context;)Lcom/mediatek/calendar/ext/ILunarExtension;
    .locals 4
    .parameter "context"

    .prologue
    .line 26
    sget-object v1, Lcom/mediatek/calendar/extension/OPExtensionFactory;->sLunarExtension:Lcom/mediatek/calendar/ext/ILunarExtension;

    if-nez v1, :cond_0

    .line 28
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/mediatek/calendar/ext/ILunarExtension;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Landroid/content/pm/Signature;

    invoke-static {v1, v2, v3}, Lcom/mediatek/pluginmanager/PluginManager;->createPluginObject(Landroid/content/Context;Ljava/lang/String;[Landroid/content/pm/Signature;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/calendar/ext/ILunarExtension;

    sput-object v1, Lcom/mediatek/calendar/extension/OPExtensionFactory;->sLunarExtension:Lcom/mediatek/calendar/ext/ILunarExtension;

    .line 30
    const-string v1, "OPExtensionFactory"

    const-string v2, "use lunar plugin"

    invoke-static {v1, v2}, Lcom/mediatek/calendar/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :cond_0
    :goto_0
    sget-object v1, Lcom/mediatek/calendar/extension/OPExtensionFactory;->sLunarExtension:Lcom/mediatek/calendar/ext/ILunarExtension;

    return-object v1

    .line 31
    :catch_0
    move-exception v0

    .line 32
    .local v0, e:Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException;
    const-string v1, "OPExtensionFactory"

    const-string v2, "get plugin failed, use default"

    invoke-static {v1, v2}, Lcom/mediatek/calendar/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    new-instance v1, Lcom/mediatek/calendar/ext/DefaultLunarExtension;

    invoke-direct {v1}, Lcom/mediatek/calendar/ext/DefaultLunarExtension;-><init>()V

    sput-object v1, Lcom/mediatek/calendar/extension/OPExtensionFactory;->sLunarExtension:Lcom/mediatek/calendar/ext/ILunarExtension;

    goto :goto_0
.end method
