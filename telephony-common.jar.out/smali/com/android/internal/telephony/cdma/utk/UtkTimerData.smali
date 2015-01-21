.class Lcom/android/internal/telephony/cdma/utk/UtkTimerData;
.super Ljava/lang/Object;
.source "UtkService.java"


# instance fields
.field mBcdData:[B

.field mId:I

.field mRemaining:J


# direct methods
.method constructor <init>(I[B)V
    .locals 7
    .parameter "id"
    .parameter "data"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput v3, p0, Lcom/android/internal/telephony/cdma/utk/UtkTimerData;->mId:I

    .line 85
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkTimerData;->mBcdData:[B

    .line 87
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkTimerData;->mRemaining:J

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    iput p1, p0, Lcom/android/internal/telephony/cdma/utk/UtkTimerData;->mId:I

    .line 93
    if-eqz p2, :cond_0

    array-length v1, p2

    if-ne v1, v4, :cond_0

    .line 94
    new-array v1, v4, [B

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkTimerData;->mBcdData:[B

    .line 95
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkTimerData;->mBcdData:[B

    invoke-static {p2, v3, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 97
    invoke-static {p2}, Lcom/android/internal/telephony/cdma/utk/UtkService;->bcdToDigit([B)[B

    move-result-object v0

    .line 99
    .local v0, digit:[B
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " bcd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    if-eqz v0, :cond_0

    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " convert to digit="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-byte v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-byte v2, v0, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-byte v2, v0, v6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    aget-byte v1, v0, v3

    mul-int/lit16 v1, v1, 0xe10

    int-to-long v1, v1

    aget-byte v3, v0, v5

    mul-int/lit16 v3, v3, 0x258

    int-to-long v3, v3

    add-long/2addr v1, v3

    aget-byte v3, v0, v6

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkTimerData;->mRemaining:J

    .line 107
    .end local v0           #digit:[B
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mRemaining="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/internal/telephony/cdma/utk/UtkTimerData;->mRemaining:J

    long-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    return-void
.end method


# virtual methods
.method public utkTick()V
    .locals 4

    .prologue
    .line 111
    iget-wide v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkTimerData;->mRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkTimerData;->mRemaining:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkTimerData;->mRemaining:J

    .line 112
    :cond_0
    return-void
.end method
