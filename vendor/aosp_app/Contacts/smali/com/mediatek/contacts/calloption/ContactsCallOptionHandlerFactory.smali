.class public Lcom/mediatek/contacts/calloption/ContactsCallOptionHandlerFactory;
.super Lcom/mediatek/calloption/CallOptionHandlerFactory;
.source "ContactsCallOptionHandlerFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/mediatek/calloption/CallOptionHandlerFactory;-><init>()V

    return-void
.end method


# virtual methods
.method protected createHandlerPrototype()V
    .locals 1

    .prologue
    .line 8
    new-instance v0, Lcom/mediatek/contacts/calloption/ContactsInternetCallOptionHandler;

    invoke-direct {v0}, Lcom/mediatek/contacts/calloption/ContactsInternetCallOptionHandler;-><init>()V

    iput-object v0, p0, Lcom/mediatek/calloption/CallOptionHandlerFactory;->mInternetCallOptionHandler:Lcom/mediatek/calloption/CallOptionBaseHandler;

    .line 9
    new-instance v0, Lcom/mediatek/contacts/calloption/ContactsVideoCallOptionHandler;

    invoke-direct {v0}, Lcom/mediatek/contacts/calloption/ContactsVideoCallOptionHandler;-><init>()V

    iput-object v0, p0, Lcom/mediatek/calloption/CallOptionHandlerFactory;->mVideoCallOptionHandler:Lcom/mediatek/calloption/CallOptionBaseHandler;

    .line 10
    new-instance v0, Lcom/mediatek/contacts/calloption/ContactsInternationalCallOptionHandler;

    invoke-direct {v0}, Lcom/mediatek/contacts/calloption/ContactsInternationalCallOptionHandler;-><init>()V

    iput-object v0, p0, Lcom/mediatek/calloption/CallOptionHandlerFactory;->mInternationalCallOptionHandler:Lcom/mediatek/calloption/CallOptionBaseHandler;

    .line 11
    new-instance v0, Lcom/mediatek/contacts/calloption/ContactsSimSelectionCallOptionHandler;

    invoke-direct {v0}, Lcom/mediatek/contacts/calloption/ContactsSimSelectionCallOptionHandler;-><init>()V

    iput-object v0, p0, Lcom/mediatek/calloption/CallOptionHandlerFactory;->mSimSelectionCallOptionHandler:Lcom/mediatek/calloption/CallOptionBaseHandler;

    .line 12
    new-instance v0, Lcom/mediatek/contacts/calloption/ContactsSimStatusCallOptionHandler;

    invoke-direct {v0}, Lcom/mediatek/contacts/calloption/ContactsSimStatusCallOptionHandler;-><init>()V

    iput-object v0, p0, Lcom/mediatek/calloption/CallOptionHandlerFactory;->mSimStatusCallOptionHandler:Lcom/mediatek/calloption/CallOptionBaseHandler;

    .line 13
    new-instance v0, Lcom/mediatek/contacts/calloption/ContactsIpCallOptionHandler;

    invoke-direct {v0}, Lcom/mediatek/contacts/calloption/ContactsIpCallOptionHandler;-><init>()V

    iput-object v0, p0, Lcom/mediatek/calloption/CallOptionHandlerFactory;->mIpCallOptionHandler:Lcom/mediatek/calloption/CallOptionBaseHandler;

    .line 14
    new-instance v0, Lcom/mediatek/contacts/calloption/ContactsVoiceMailCallOptionHandler;

    invoke-direct {v0}, Lcom/mediatek/contacts/calloption/ContactsVoiceMailCallOptionHandler;-><init>()V

    iput-object v0, p0, Lcom/mediatek/calloption/CallOptionHandlerFactory;->mVoiceMailCallOptionHandler:Lcom/mediatek/calloption/CallOptionBaseHandler;

    .line 15
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/contacts/ExtensionManager;->getContactsCallOptionHandlerFactoryExtension()Lcom/android/contacts/ext/ContactsCallOptionHandlerFactoryExtension;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/contacts/ext/ContactsCallOptionHandlerFactoryExtension;->createHandlerPrototype(Lcom/mediatek/calloption/CallOptionHandlerFactory;)V

    .line 16
    return-void
.end method
