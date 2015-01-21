.class public Lcom/mediatek/encapsulation/com/mediatek/pluginmanager/EncapsulatedPluginManager;
.super Ljava/lang/Object;
.source "EncapsulatedPluginManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs createPluginObject(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Landroid/content/pm/Signature;)Ljava/lang/Object;
    .locals 1
    .parameter "context"
    .parameter "pluginIntent"
    .parameter "version"
    .parameter "metaname"
    .parameter "signatures"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/AndroidException;
        }
    .end annotation

    .prologue
    .line 36
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/content/pm/Signature;

    invoke-static {p0, p1, p2, p3, v0}, Lcom/mediatek/pluginmanager/PluginManager;->createPluginObject(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Landroid/content/pm/Signature;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static varargs createPluginObject(Landroid/content/Context;Ljava/lang/String;[Landroid/content/pm/Signature;)Ljava/lang/Object;
    .locals 1
    .parameter "context"
    .parameter "pluginIntent"
    .parameter "signatures"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/AndroidException;
        }
    .end annotation

    .prologue
    .line 26
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/content/pm/Signature;

    invoke-static {p0, p1, v0}, Lcom/mediatek/pluginmanager/PluginManager;->createPluginObject(Landroid/content/Context;Ljava/lang/String;[Landroid/content/pm/Signature;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
