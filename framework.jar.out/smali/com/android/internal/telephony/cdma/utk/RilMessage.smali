.class Lcom/android/internal/telephony/cdma/utk/RilMessage;
.super Ljava/lang/Object;
.source "UtkService.java"


# instance fields
.field mData:Ljava/lang/Object;

.field mId:I

.field mResCode:Lcom/android/internal/telephony/cdma/utk/ResultCode;


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 0
    .parameter "msgId"
    .parameter "rawData"

    .prologue
    .line 71
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput p1, p0, Lcom/android/internal/telephony/cdma/utk/RilMessage;->mId:I

    .line 73
    iput-object p2, p0, Lcom/android/internal/telephony/cdma/utk/RilMessage;->mData:Ljava/lang/Object;

    .line 74
    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/cdma/utk/RilMessage;)V
    .locals 1
    .parameter "other"

    .prologue
    .line 76
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iget v0, p1, Lcom/android/internal/telephony/cdma/utk/RilMessage;->mId:I

    iput v0, p0, Lcom/android/internal/telephony/cdma/utk/RilMessage;->mId:I

    .line 78
    iget-object v0, p1, Lcom/android/internal/telephony/cdma/utk/RilMessage;->mData:Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/RilMessage;->mData:Ljava/lang/Object;

    .line 79
    iget-object v0, p1, Lcom/android/internal/telephony/cdma/utk/RilMessage;->mResCode:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/RilMessage;->mResCode:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    .line 80
    return-void
.end method
