.class public Lcom/mediatek/phone/calloption/PhoneCallOptionHandlerFactory;
.super Lcom/mediatek/calloption/CallOptionHandlerFactory;
.source "PhoneCallOptionHandlerFactory.java"


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
    .line 9
    new-instance v0, Lcom/mediatek/phone/calloption/PhoneInternetCallOptionHandler;

    invoke-direct {v0}, Lcom/mediatek/phone/calloption/PhoneInternetCallOptionHandler;-><init>()V

    iput-object v0, p0, Lcom/mediatek/calloption/CallOptionHandlerFactory;->mInternetCallOptionHandler:Lcom/mediatek/calloption/CallOptionBaseHandler;

    .line 10
    new-instance v0, Lcom/mediatek/phone/calloption/PhoneVideoCallOptionHandler;

    invoke-direct {v0}, Lcom/mediatek/phone/calloption/PhoneVideoCallOptionHandler;-><init>()V

    iput-object v0, p0, Lcom/mediatek/calloption/CallOptionHandlerFactory;->mVideoCallOptionHandler:Lcom/mediatek/calloption/CallOptionBaseHandler;

    .line 11
    new-instance v0, Lcom/mediatek/phone/calloption/PhoneInternationalCallOptionHandler;

    invoke-direct {v0}, Lcom/mediatek/phone/calloption/PhoneInternationalCallOptionHandler;-><init>()V

    iput-object v0, p0, Lcom/mediatek/calloption/CallOptionHandlerFactory;->mInternationalCallOptionHandler:Lcom/mediatek/calloption/CallOptionBaseHandler;

    .line 12
    new-instance v0, Lcom/mediatek/phone/calloption/PhoneSimSelectionCallOptionHandler;

    invoke-direct {v0}, Lcom/mediatek/phone/calloption/PhoneSimSelectionCallOptionHandler;-><init>()V

    iput-object v0, p0, Lcom/mediatek/calloption/CallOptionHandlerFactory;->mSimSelectionCallOptionHandler:Lcom/mediatek/calloption/CallOptionBaseHandler;

    .line 13
    new-instance v0, Lcom/mediatek/phone/calloption/PhoneSimStatusCallOptionHandler;

    invoke-direct {v0}, Lcom/mediatek/phone/calloption/PhoneSimStatusCallOptionHandler;-><init>()V

    iput-object v0, p0, Lcom/mediatek/calloption/CallOptionHandlerFactory;->mSimStatusCallOptionHandler:Lcom/mediatek/calloption/CallOptionBaseHandler;

    .line 14
    new-instance v0, Lcom/mediatek/phone/calloption/PhoneIpCallOptionHandler;

    invoke-direct {v0}, Lcom/mediatek/phone/calloption/PhoneIpCallOptionHandler;-><init>()V

    iput-object v0, p0, Lcom/mediatek/calloption/CallOptionHandlerFactory;->mIpCallOptionHandler:Lcom/mediatek/calloption/CallOptionBaseHandler;

    .line 15
    new-instance v0, Lcom/mediatek/phone/calloption/PhoneVoiceMailCallOptionHandler;

    invoke-direct {v0}, Lcom/mediatek/phone/calloption/PhoneVoiceMailCallOptionHandler;-><init>()V

    iput-object v0, p0, Lcom/mediatek/calloption/CallOptionHandlerFactory;->mVoiceMailCallOptionHandler:Lcom/mediatek/calloption/CallOptionBaseHandler;

    .line 16
    invoke-static {}, Lcom/mediatek/phone/ext/ExtensionManager;->getInstance()Lcom/mediatek/phone/ext/ExtensionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/phone/ext/ExtensionManager;->getPhoneCallOptionHandlerFactoryExtension()Lcom/mediatek/phone/ext/PhoneCallOptionHandlerFactoryExtension;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mediatek/phone/ext/PhoneCallOptionHandlerFactoryExtension;->createHandlerPrototype(Lcom/mediatek/calloption/CallOptionHandlerFactory;)V

    .line 17
    return-void
.end method
