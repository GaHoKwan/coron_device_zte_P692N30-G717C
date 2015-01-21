.class public Lcom/mediatek/contacts/plugin/calloption/ContactsCallOptionHandlerFactoryOP09Extension;
.super Lcom/android/contacts/ext/ContactsCallOptionHandlerFactoryExtension;
.source "ContactsCallOptionHandlerFactoryOP09Extension.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ContactsCallOptionHandlerFactoryOP09Extension"


# instance fields
.field private mPluginContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "pluginContext"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/contacts/ext/ContactsCallOptionHandlerFactoryExtension;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/mediatek/contacts/plugin/calloption/ContactsCallOptionHandlerFactoryOP09Extension;->mPluginContext:Landroid/content/Context;

    .line 55
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 65
    const-string v0, "ContactsCallOptionHandlerFactoryOP09Extension"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    return-void
.end method


# virtual methods
.method public createHandlerPrototype(Lcom/mediatek/calloption/CallOptionHandlerFactory;)V
    .locals 2
    .parameter "callOptionHandlerFactory"

    .prologue
    .line 58
    const-string v0, "createHandlerPrototype()"

    invoke-static {v0}, Lcom/mediatek/contacts/plugin/calloption/ContactsCallOptionHandlerFactoryOP09Extension;->log(Ljava/lang/String;)V

    .line 59
    new-instance v0, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;

    iget-object v1, p0, Lcom/mediatek/contacts/plugin/calloption/ContactsCallOptionHandlerFactoryOP09Extension;->mPluginContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mediatek/calloption/plugin/OP09InternationalCallOptionHandler;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Lcom/mediatek/calloption/CallOptionHandlerFactory;->setInternationalCallOptionHandler(Lcom/mediatek/calloption/CallOptionBaseHandler;)V

    .line 61
    new-instance v0, Lcom/mediatek/calloption/plugin/OP09EmergencyCallOptionHandler;

    iget-object v1, p0, Lcom/mediatek/contacts/plugin/calloption/ContactsCallOptionHandlerFactoryOP09Extension;->mPluginContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mediatek/calloption/plugin/OP09EmergencyCallOptionHandler;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Lcom/mediatek/calloption/CallOptionHandlerFactory;->setEmergencyCallOptionHandler(Lcom/mediatek/calloption/CallOptionBaseHandler;)V

    .line 62
    return-void
.end method
