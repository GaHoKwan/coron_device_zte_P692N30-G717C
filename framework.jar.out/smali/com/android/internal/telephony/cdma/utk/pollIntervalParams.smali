.class Lcom/android/internal/telephony/cdma/utk/pollIntervalParams;
.super Lcom/android/internal/telephony/cdma/utk/CommandParams;
.source "CommandParams.java"


# instance fields
.field timeInterval:I

.field timeUnit:I


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/utk/CommandDetails;II)V
    .locals 1
    .parameter "cmdDet"
    .parameter "u"
    .parameter "ti"

    .prologue
    const/4 v0, 0x0

    .line 221
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/utk/CommandParams;-><init>(Lcom/android/internal/telephony/cdma/utk/CommandDetails;)V

    .line 217
    iput v0, p0, Lcom/android/internal/telephony/cdma/utk/pollIntervalParams;->timeUnit:I

    .line 218
    iput v0, p0, Lcom/android/internal/telephony/cdma/utk/pollIntervalParams;->timeInterval:I

    .line 223
    iput p2, p0, Lcom/android/internal/telephony/cdma/utk/pollIntervalParams;->timeUnit:I

    .line 224
    iput p3, p0, Lcom/android/internal/telephony/cdma/utk/pollIntervalParams;->timeInterval:I

    .line 225
    return-void
.end method
