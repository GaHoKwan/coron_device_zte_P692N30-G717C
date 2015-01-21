.class public Lcom/mediatek/phone/ext/CallCardExtension;
.super Ljava/lang/Object;
.source "CallCardExtension.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public displayMainCallStatus(Lcom/android/internal/telephony/Call;Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;)V
    .locals 0
    .parameter "call"
    .parameter "simInfo"

    .prologue
    .line 71
    return-void
.end method

.method public onFinishInflate(Landroid/view/View;)V
    .locals 0
    .parameter "callCard"

    .prologue
    .line 52
    return-void
.end method

.method public updateCallInfoLayout(Lcom/android/internal/telephony/PhoneConstants$State;)Z
    .locals 1
    .parameter "state"

    .prologue
    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public updateState(Lcom/android/internal/telephony/CallManager;)V
    .locals 0
    .parameter "cm"

    .prologue
    .line 68
    return-void
.end method
