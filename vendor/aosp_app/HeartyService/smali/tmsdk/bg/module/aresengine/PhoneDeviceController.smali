.class public abstract Ltmsdk/bg/module/aresengine/PhoneDeviceController;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs abstract blockSms([Ljava/lang/Object;)V
.end method

.method public abstract cancelMissCall()V
.end method

.method public abstract disableRingVibration(I)V
.end method

.method public abstract hangup()V
.end method

.method public abstract hangup(I)V
.end method

.method public varargs abstract unBlockSms(Ltmsdk/common/module/aresengine/SmsEntity;[Ljava/lang/Object;)V
.end method
