.class Lcom/android/internal/telephony/cdma/utk/GetChannelStatusResponseData;
.super Lcom/android/internal/telephony/cdma/utk/ResponseData;
.source "ResponseData.java"


# instance fields
.field mChannelStatus:Lcom/android/internal/telephony/cdma/utk/ChannelStatus;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/utk/ChannelStatus;)V
    .locals 1
    .parameter "channelStatus"

    .prologue
    .line 471
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/utk/ResponseData;-><init>()V

    .line 472
    new-instance v0, Lcom/android/internal/telephony/cdma/utk/ChannelStatus;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/cdma/utk/ChannelStatus;-><init>(Lcom/android/internal/telephony/cdma/utk/ChannelStatus;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/GetChannelStatusResponseData;->mChannelStatus:Lcom/android/internal/telephony/cdma/utk/ChannelStatus;

    .line 473
    return-void
.end method


# virtual methods
.method public format(Ljava/io/ByteArrayOutputStream;)V
    .locals 1
    .parameter "buf"

    .prologue
    .line 477
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/GetChannelStatusResponseData;->mChannelStatus:Lcom/android/internal/telephony/cdma/utk/ChannelStatus;

    if-nez v0, :cond_1

    .line 482
    :cond_0
    :goto_0
    return-void

    .line 481
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/GetChannelStatusResponseData;->mChannelStatus:Lcom/android/internal/telephony/cdma/utk/ChannelStatus;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/cdma/utk/ChannelStatus;->writeToBuffer(Ljava/io/ByteArrayOutputStream;)V

    goto :goto_0
.end method
