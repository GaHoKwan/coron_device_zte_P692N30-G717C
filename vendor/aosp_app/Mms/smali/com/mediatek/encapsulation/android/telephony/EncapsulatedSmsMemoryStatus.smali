.class public Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSmsMemoryStatus;
.super Ljava/lang/Object;
.source "EncapsulatedSmsMemoryStatus.java"


# instance fields
.field private mSmsMemoryStatus:Lcom/mediatek/common/telephony/IccSmsStorageStatus;

.field public mTotal:I

.field public mUsed:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .parameter "used"
    .parameter "total"

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput p1, p0, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSmsMemoryStatus;->mUsed:I

    .line 26
    iput p2, p0, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSmsMemoryStatus;->mTotal:I

    .line 27
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/common/telephony/IccSmsStorageStatus;)V
    .locals 0
    .parameter "smsMemoryStatus"

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    if-eqz p1, :cond_0

    .line 18
    iput-object p1, p0, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSmsMemoryStatus;->mSmsMemoryStatus:Lcom/mediatek/common/telephony/IccSmsStorageStatus;

    .line 21
    :cond_0
    return-void
.end method


# virtual methods
.method public getTotal()I
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSmsMemoryStatus;->mSmsMemoryStatus:Lcom/mediatek/common/telephony/IccSmsStorageStatus;

    invoke-virtual {v0}, Lcom/mediatek/common/telephony/IccSmsStorageStatus;->getTotal()I

    move-result v0

    return v0
.end method

.method public getUsed()I
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSmsMemoryStatus;->mSmsMemoryStatus:Lcom/mediatek/common/telephony/IccSmsStorageStatus;

    invoke-virtual {v0}, Lcom/mediatek/common/telephony/IccSmsStorageStatus;->getUsed()I

    move-result v0

    return v0
.end method
