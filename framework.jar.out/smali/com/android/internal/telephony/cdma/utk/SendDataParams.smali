.class Lcom/android/internal/telephony/cdma/utk/SendDataParams;
.super Lcom/android/internal/telephony/cdma/utk/CommandParams;
.source "CommandParams.java"


# instance fields
.field chId:I

.field channelData:[B

.field sendImmediately:Z

.field textMsg:Lcom/android/internal/telephony/cdma/utk/TextMessage;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/utk/CommandDetails;[BLcom/android/internal/telephony/cdma/utk/TextMessage;I)V
    .locals 2
    .parameter "cmdDet"
    .parameter "data"
    .parameter "msg"
    .parameter "destinationId"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 325
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/utk/CommandParams;-><init>(Lcom/android/internal/telephony/cdma/utk/CommandDetails;)V

    .line 315
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/SendDataParams;->channelData:[B

    .line 316
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/SendDataParams;->textMsg:Lcom/android/internal/telephony/cdma/utk/TextMessage;

    .line 327
    iput-object p2, p0, Lcom/android/internal/telephony/cdma/utk/SendDataParams;->channelData:[B

    .line 328
    iput-object p3, p0, Lcom/android/internal/telephony/cdma/utk/SendDataParams;->textMsg:Lcom/android/internal/telephony/cdma/utk/TextMessage;

    .line 329
    and-int/lit8 v1, p4, 0xf

    iput v1, p0, Lcom/android/internal/telephony/cdma/utk/SendDataParams;->chId:I

    .line 331
    iget v1, p1, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/utk/SendDataParams;->sendImmediately:Z

    .line 332
    return-void

    .line 331
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
