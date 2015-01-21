.class public Lcom/mediatek/encapsulation/android/net/EncapsulatedNetworkInfo;
.super Ljava/lang/Object;
.source "EncapsulatedNetworkInfo.java"


# instance fields
.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mSlot:I


# direct methods
.method public constructor <init>(Landroid/net/NetworkInfo;I)V
    .locals 0
    .parameter "info"
    .parameter "slot"

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/mediatek/encapsulation/android/net/EncapsulatedNetworkInfo;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 14
    iput p2, p0, Lcom/mediatek/encapsulation/android/net/EncapsulatedNetworkInfo;->mSlot:I

    .line 15
    return-void
.end method


# virtual methods
.method public getSimId()I
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/mediatek/encapsulation/android/net/EncapsulatedNetworkInfo;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSimId()I

    move-result v0

    return v0
.end method
