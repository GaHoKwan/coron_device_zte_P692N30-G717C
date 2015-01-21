.class public Lcom/mediatek/phone/plugin/OP09PhonePlugin;
.super Lcom/mediatek/phone/ext/PhonePluginDefault;
.source "OP09PhonePlugin.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OP09PhonePlugin"


# instance fields
.field private mPluginContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/mediatek/phone/ext/PhonePluginDefault;-><init>(Landroid/content/Context;)V

    .line 59
    iput-object p1, p0, Lcom/mediatek/phone/plugin/OP09PhonePlugin;->mPluginContext:Landroid/content/Context;

    .line 61
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/phone/SIMInfoWrapper;->init(Landroid/content/Context;)V

    .line 62
    return-void
.end method


# virtual methods
.method public createCallCardExtension()Lcom/mediatek/phone/ext/CallCardExtension;
    .locals 2

    .prologue
    .line 73
    new-instance v0, Lcom/mediatek/phone/plugin/OP09CallCardExtension;

    iget-object v1, p0, Lcom/mediatek/phone/plugin/OP09PhonePlugin;->mPluginContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mediatek/phone/plugin/OP09CallCardExtension;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public createEmergencyDialerExtension()Lcom/mediatek/phone/ext/EmergencyDialerExtension;
    .locals 2

    .prologue
    .line 65
    new-instance v0, Lcom/mediatek/phone/plugin/EmergencyDialerOP09Extension;

    iget-object v1, p0, Lcom/mediatek/phone/plugin/OP09PhonePlugin;->mPluginContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mediatek/phone/plugin/EmergencyDialerOP09Extension;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public createNotificationExtension()Lcom/mediatek/phone/ext/NotificationExtension;
    .locals 2

    .prologue
    .line 85
    new-instance v0, Lcom/mediatek/phone/plugin/OP09NotificationExtension;

    iget-object v1, p0, Lcom/mediatek/phone/plugin/OP09PhonePlugin;->mPluginContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mediatek/phone/plugin/OP09NotificationExtension;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public createPhoneCallOptionHandlerFactoryExtension()Lcom/mediatek/phone/ext/PhoneCallOptionHandlerFactoryExtension;
    .locals 2

    .prologue
    .line 69
    new-instance v0, Lcom/mediatek/phone/plugin/calloption/PhoneCallOptionHandlerFactoryOP09Extension;

    iget-object v1, p0, Lcom/mediatek/phone/plugin/OP09PhonePlugin;->mPluginContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mediatek/phone/plugin/calloption/PhoneCallOptionHandlerFactoryOP09Extension;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public createPhoneGlobalsExtension()Lcom/mediatek/phone/ext/PhoneGlobalsExtension;
    .locals 2

    .prologue
    .line 81
    new-instance v0, Lcom/mediatek/phone/plugin/OP09PhoneGlobalsExtension;

    iget-object v1, p0, Lcom/mediatek/phone/plugin/OP09PhonePlugin;->mPluginContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mediatek/phone/plugin/OP09PhoneGlobalsExtension;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public createSettingsExtension()Lcom/mediatek/phone/ext/SettingsExtension;
    .locals 2

    .prologue
    .line 77
    new-instance v0, Lcom/mediatek/phone/plugin/SettingsOP09Extension;

    iget-object v1, p0, Lcom/mediatek/phone/plugin/OP09PhonePlugin;->mPluginContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mediatek/phone/plugin/SettingsOP09Extension;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
