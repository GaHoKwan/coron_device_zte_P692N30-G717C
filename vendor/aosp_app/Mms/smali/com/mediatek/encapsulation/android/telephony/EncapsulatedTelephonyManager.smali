.class public Lcom/mediatek/encapsulation/android/telephony/EncapsulatedTelephonyManager;
.super Ljava/lang/Object;
.source "EncapsulatedTelephonyManager.java"


# static fields
.field private static mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    sget-object v0, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedTelephonyManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 14
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    sput-object v0, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedTelephonyManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 17
    :cond_0
    return-void
.end method


# virtual methods
.method public getLine1NumberGemini(I)Ljava/lang/String;
    .locals 1
    .parameter "simId"

    .prologue
    .line 25
    sget-object v0, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedTelephonyManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->getLine1NumberGemini(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasIccCardGemini(I)Z
    .locals 1
    .parameter "simId"

    .prologue
    .line 36
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->hasIccCardGemini(I)Z

    move-result v0

    return v0
.end method

.method public isNetworkRoamingGemini(I)Z
    .locals 1
    .parameter "simId"

    .prologue
    .line 46
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->isNetworkRoamingGemini(I)Z

    move-result v0

    return v0
.end method
