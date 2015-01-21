.class Lcom/android/internal/telephony/cdma/utk/TimerManagementParams;
.super Lcom/android/internal/telephony/cdma/utk/CommandParams;
.source "CommandParams.java"


# instance fields
.field dataRaw:[B

.field timerAction:I

.field timerId:I


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/utk/CommandDetails;I[B)V
    .locals 3
    .parameter "cmdDet"
    .parameter "id"
    .parameter "data"

    .prologue
    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 234
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/utk/CommandParams;-><init>(Lcom/android/internal/telephony/cdma/utk/CommandDetails;)V

    .line 229
    iput v2, p0, Lcom/android/internal/telephony/cdma/utk/TimerManagementParams;->timerId:I

    .line 230
    iput v2, p0, Lcom/android/internal/telephony/cdma/utk/TimerManagementParams;->timerAction:I

    .line 231
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/TimerManagementParams;->dataRaw:[B

    .line 236
    iget v0, p1, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    and-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/android/internal/telephony/cdma/utk/TimerManagementParams;->timerAction:I

    .line 237
    iput p2, p0, Lcom/android/internal/telephony/cdma/utk/TimerManagementParams;->timerId:I

    .line 239
    if-eqz p3, :cond_0

    array-length v0, p3

    if-ne v0, v1, :cond_0

    .line 240
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/TimerManagementParams;->dataRaw:[B

    .line 241
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/TimerManagementParams;->dataRaw:[B

    array-length v1, p3

    invoke-static {p3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 243
    :cond_0
    return-void
.end method
