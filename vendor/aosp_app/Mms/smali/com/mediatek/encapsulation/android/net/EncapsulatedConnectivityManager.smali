.class public Lcom/mediatek/encapsulation/android/net/EncapsulatedConnectivityManager;
.super Ljava/lang/Object;
.source "EncapsulatedConnectivityManager.java"


# instance fields
.field private mConnectivityManager:Landroid/net/ConnectivityManager;


# direct methods
.method public constructor <init>(Landroid/net/ConnectivityManager;)V
    .locals 0
    .parameter "cm"

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/mediatek/encapsulation/android/net/EncapsulatedConnectivityManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 12
    return-void
.end method


# virtual methods
.method public startUsingNetworkFeatureGemini(ILjava/lang/String;I)I
    .locals 1
    .parameter "networkType"
    .parameter "feature"
    .parameter "radioNum"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/mediatek/encapsulation/android/net/EncapsulatedConnectivityManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/net/ConnectivityManager;->startUsingNetworkFeatureGemini(ILjava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public stopUsingNetworkFeatureGemini(ILjava/lang/String;I)I
    .locals 1
    .parameter "networkType"
    .parameter "feature"
    .parameter "radioNum"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/mediatek/encapsulation/android/net/EncapsulatedConnectivityManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/net/ConnectivityManager;->stopUsingNetworkFeatureGemini(ILjava/lang/String;I)I

    move-result v0

    return v0
.end method
