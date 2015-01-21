.class Lcom/android/internal/telephony/cdma/utk/ReceiveDataParams;
.super Lcom/android/internal/telephony/cdma/utk/CommandParams;
.source "CommandParams.java"


# instance fields
.field chId:I

.field reqDataLength:I

.field textMsg:Lcom/android/internal/telephony/cdma/utk/TextMessage;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/utk/CommandDetails;ILcom/android/internal/telephony/cdma/utk/TextMessage;I)V
    .locals 1
    .parameter "cmdDet"
    .parameter "len"
    .parameter "msg"
    .parameter "destinationId"

    .prologue
    .line 307
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/utk/CommandParams;-><init>(Lcom/android/internal/telephony/cdma/utk/CommandDetails;)V

    .line 302
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/cdma/utk/ReceiveDataParams;->reqDataLength:I

    .line 303
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/ReceiveDataParams;->textMsg:Lcom/android/internal/telephony/cdma/utk/TextMessage;

    .line 308
    iput p2, p0, Lcom/android/internal/telephony/cdma/utk/ReceiveDataParams;->reqDataLength:I

    .line 309
    iput-object p3, p0, Lcom/android/internal/telephony/cdma/utk/ReceiveDataParams;->textMsg:Lcom/android/internal/telephony/cdma/utk/TextMessage;

    .line 310
    and-int/lit8 v0, p4, 0xf

    iput v0, p0, Lcom/android/internal/telephony/cdma/utk/ReceiveDataParams;->chId:I

    .line 311
    return-void
.end method
