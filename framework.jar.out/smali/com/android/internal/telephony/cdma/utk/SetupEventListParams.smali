.class Lcom/android/internal/telephony/cdma/utk/SetupEventListParams;
.super Lcom/android/internal/telephony/cdma/utk/CommandParams;
.source "CommandParams.java"


# instance fields
.field eventList:[B


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/utk/CommandDetails;[B)V
    .locals 3
    .parameter "cmdDet"
    .parameter "eList"

    .prologue
    const/4 v2, 0x0

    .line 207
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/utk/CommandParams;-><init>(Lcom/android/internal/telephony/cdma/utk/CommandDetails;)V

    .line 204
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/SetupEventListParams;->eventList:[B

    .line 209
    if-eqz p2, :cond_0

    .line 210
    array-length v0, p2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/SetupEventListParams;->eventList:[B

    .line 211
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/SetupEventListParams;->eventList:[B

    array-length v1, p2

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 213
    :cond_0
    return-void
.end method
