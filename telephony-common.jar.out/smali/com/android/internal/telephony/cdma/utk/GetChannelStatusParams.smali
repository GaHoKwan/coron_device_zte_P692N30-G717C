.class Lcom/android/internal/telephony/cdma/utk/GetChannelStatusParams;
.super Lcom/android/internal/telephony/cdma/utk/CommandParams;
.source "CommandParams.java"


# instance fields
.field chId:I


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/utk/CommandDetails;I)V
    .locals 1
    .parameter "cmdDet"
    .parameter "destinationId"

    .prologue
    .line 339
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/utk/CommandParams;-><init>(Lcom/android/internal/telephony/cdma/utk/CommandDetails;)V

    .line 340
    and-int/lit8 v0, p2, 0xf

    iput v0, p0, Lcom/android/internal/telephony/cdma/utk/GetChannelStatusParams;->chId:I

    .line 341
    return-void
.end method
