.class public final Lcom/mediatek/op/MediatekOPClassFactory;
.super Ljava/lang/Object;
.source "MediatekOPClassFactory.java"


# static fields
.field private static final DEBUG_GETINSTANCE:Z = true

.field private static final DEBUG_PERFORMANCE:Z = true

.field private static final TAG:Ljava/lang/String; = "MediatekOP09ClassFactory"

.field private static opInterfaceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mediatek/op/MediatekOPClassFactory;->opInterfaceMap:Ljava/util/Map;

    .line 41
    sget-object v0, Lcom/mediatek/op/MediatekOPClassFactory;->opInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/IFwkExt;

    const-string v2, "com.mediatek.op.FwkExtOP09"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/mediatek/op/MediatekOPClassFactory;->opInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/bootanim/IBootAnimExt;

    const-string v2, "com.mediatek.op.bootanim.BootAnimExtOP09"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/mediatek/op/MediatekOPClassFactory;->opInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/util/IPatterns;

    const-string v2, "com.mediatek.op.util.OP09Patterns"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/mediatek/op/MediatekOPClassFactory;->opInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/util/IWebProtocolNames;

    const-string v2, "com.mediatek.op.util.OP09WebProtocolNames"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/mediatek/op/MediatekOPClassFactory;->opInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/telephony/IServiceStateExt;

    const-string v2, "com.mediatek.op.telephony.ServiceStateExtOP09"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/mediatek/op/MediatekOPClassFactory;->opInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/telephony/IUiccControllerExt;

    const-string v2, "com.mediatek.op.telephony.UiccControllerExtOP09"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/mediatek/op/MediatekOPClassFactory;->opInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/sms/IConcatenatedSmsFwkExt;

    const-string v2, "com.mediatek.op.sms.ConcatenatedSmsFwkExtOP09"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/mediatek/op/MediatekOPClassFactory;->opInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/telephony/IPhoneNumberExt;

    const-string v2, "com.mediatek.op.telephony.PhoneNumberExtOP09"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/mediatek/op/MediatekOPClassFactory;->opInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/policy/IDualClock;

    const-string v2, "com.mediatek.op.policy.DualClockImp"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/mediatek/op/MediatekOPClassFactory;->opInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/policy/ICardInfoExt;

    const-string v2, "com.mediatek.op.policy.CardInfoExtImp"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/mediatek/op/MediatekOPClassFactory;->opInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/policy/IOperatorSIMString;

    const-string v2, "com.mediatek.op.policy.OperatorSIMStringImp"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/mediatek/op/MediatekOPClassFactory;->opInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/policy/IEmergencyButtonExt;

    const-string v2, "com.mediatek.op.policy.OP09EmergencyButtonExt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/mediatek/op/MediatekOPClassFactory;->opInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/policy/ICarrierTextExt;

    const-string v2, "com.mediatek.op.policy.OP09CarrierTextExt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/mediatek/op/MediatekOPClassFactory;->opInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/telephony/ITelephonyExt;

    const-string v2, "com.mediatek.op.telephony.TelephonyExtOP09"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/mediatek/op/MediatekOPClassFactory;->opInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/telephony/internationalroaming/strategy/ICardStrategy;

    const-string v2, "com.mediatek.op.telephony.internationalroaming.strategy.OP09CardStrategy"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/mediatek/op/MediatekOPClassFactory;->opInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/telephony/internationalroaming/strategy/IDataStrategy;

    const-string v2, "com.mediatek.op.telephony.internationalroaming.strategy.OP09DataStrategy"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/mediatek/op/MediatekOPClassFactory;->opInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/telephony/internationalroaming/strategy/IGeneralStrategy;

    const-string v2, "com.mediatek.op.telephony.internationalroaming.strategy.OP09GeneralStrategy"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/mediatek/op/MediatekOPClassFactory;->opInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/telephony/internationalroaming/strategy/INetworkSelectionStrategy;

    const-string v2, "com.mediatek.op.telephony.internationalroaming.strategy.OP09NetworkSelectionStrategy"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/mediatek/op/MediatekOPClassFactory;->opInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/server/IConnectivityRoamingExt;

    const-string v2, "com.mediatek.op.server.ConnectivityRoamingExtOP09"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/mediatek/op/MediatekOPClassFactory;->opInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/telephony/ITelephonyProviderExt;

    const-string v2, "com.mediatek.op.telephony.OP09TelephonyProviderExt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getOpIfClassName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 76
    .local p0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 78
    .local v0, ifClassName:Ljava/lang/String;
    sget-object v1, Lcom/mediatek/op/MediatekOPClassFactory;->opInterfaceMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    sget-object v1, Lcom/mediatek/op/MediatekOPClassFactory;->opInterfaceMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #ifClassName:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 82
    .restart local v0       #ifClassName:Ljava/lang/String;
    :cond_0
    return-object v0
.end method
