.class public abstract Ltmsdk/common/module/aresengine/MmsTransactionHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final APN_ALREADY_ACTIVE:I = 0x0

.field public static final APN_REQUEST_STARTED:I = 0x1

.field public static final DEFAULT_NETWORK_FEATURE:Ljava/lang/String; = "enableMMS"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract beginMmsConnectivity(Ljava/lang/String;)I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract beginMmsConnectivity(Ljava/lang/String;I)I
.end method

.method public abstract retrieveMmsContent(Ltmsdk/common/module/aresengine/SmsEntity;)I
.end method

.method public abstract sendAcknowledgeInd(Ltmsdk/common/module/aresengine/SmsEntity;)I
.end method

.method public abstract sendNotifyRespInd(ILtmsdk/common/module/aresengine/SmsEntity;)I
.end method

.method public abstract stop()V
.end method
