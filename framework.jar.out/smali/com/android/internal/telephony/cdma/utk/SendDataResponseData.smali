.class Lcom/android/internal/telephony/cdma/utk/SendDataResponseData;
.super Lcom/android/internal/telephony/cdma/utk/ResponseData;
.source "ResponseData.java"


# instance fields
.field availableTxSize:I


# direct methods
.method constructor <init>(I)V
    .locals 1
    .parameter "len"

    .prologue
    .line 402
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/utk/ResponseData;-><init>()V

    .line 399
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/cdma/utk/SendDataResponseData;->availableTxSize:I

    .line 403
    iput p1, p0, Lcom/android/internal/telephony/cdma/utk/SendDataResponseData;->availableTxSize:I

    .line 404
    return-void
.end method


# virtual methods
.method public format(Ljava/io/ByteArrayOutputStream;)V
    .locals 2
    .parameter "buf"

    .prologue
    const/16 v1, 0xff

    .line 408
    if-nez p1, :cond_0

    .line 420
    :goto_0
    return-void

    .line 413
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->CHANNEL_DATA_LENGTH:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->value()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 414
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 415
    iget v0, p0, Lcom/android/internal/telephony/cdma/utk/SendDataResponseData;->availableTxSize:I

    if-lt v0, v1, :cond_1

    .line 416
    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    .line 418
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/cdma/utk/SendDataResponseData;->availableTxSize:I

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0
.end method
