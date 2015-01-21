.class public Lcom/android/internal/telephony/cdma/utk/LocalInfo;
.super Ljava/lang/Object;
.source "LocalInfo.java"


# instance fields
.field public BASE_ID:I

.field public BASE_LAT:I

.field public BASE_LONG:I

.field public IMSI_11_12:I

.field public MCC:I

.field public NID:I

.field public SID:I

.field public Technology:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public copyFrom(Lcom/android/internal/telephony/cdma/utk/LocalInfo;)V
    .locals 1
    .parameter "other"

    .prologue
    .line 86
    if-nez p1, :cond_0

    .line 96
    :goto_0
    return-void

    .line 88
    :cond_0
    iget v0, p1, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->Technology:I

    iput v0, p0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->Technology:I

    .line 89
    iget v0, p1, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->MCC:I

    iput v0, p0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->MCC:I

    .line 90
    iget v0, p1, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->IMSI_11_12:I

    iput v0, p0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->IMSI_11_12:I

    .line 91
    iget v0, p1, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->SID:I

    iput v0, p0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->SID:I

    .line 92
    iget v0, p1, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->NID:I

    iput v0, p0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->NID:I

    .line 93
    iget v0, p1, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->BASE_ID:I

    iput v0, p0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->BASE_ID:I

    .line 94
    iget v0, p1, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->BASE_LAT:I

    iput v0, p0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->BASE_LAT:I

    .line 95
    iget v0, p1, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->BASE_LONG:I

    iput v0, p0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->BASE_LONG:I

    goto :goto_0
.end method

.method public localInfoFormat(Ljava/io/ByteArrayOutputStream;)V
    .locals 3
    .parameter "buf"

    .prologue
    const v1, 0xff00

    .line 40
    if-nez p1, :cond_0

    .line 71
    :goto_0
    return-void

    .line 44
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->LOCATION_INFORMATION:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->value()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 45
    const/16 v0, 0xf

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 47
    iget v0, p0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->MCC:I

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 48
    iget v0, p0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->MCC:I

    shr-int/lit8 v0, v0, 0x8

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 50
    iget v0, p0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->IMSI_11_12:I

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 52
    iget v0, p0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->SID:I

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 53
    iget v0, p0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->SID:I

    shr-int/lit8 v0, v0, 0x8

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 55
    iget v0, p0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->NID:I

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 56
    iget v0, p0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->NID:I

    shr-int/lit8 v0, v0, 0x8

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 58
    iget v0, p0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->BASE_ID:I

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 59
    iget v0, p0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->BASE_ID:I

    shr-int/lit8 v0, v0, 0x8

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 61
    iget v0, p0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->BASE_LAT:I

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 62
    iget v0, p0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->BASE_LAT:I

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 63
    iget v0, p0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->BASE_LAT:I

    shr-int/lit8 v0, v0, 0x10

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 65
    iget v0, p0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->BASE_LONG:I

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 66
    iget v0, p0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->BASE_LONG:I

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 67
    iget v0, p0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->BASE_LONG:I

    shr-int/lit8 v0, v0, 0x10

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 69
    const-string v0, "LocalInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " MCC:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->MCC:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " IMSI:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->IMSI_11_12:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " SID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->SID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " NID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->NID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " BASEID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->BASE_ID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " BASELAT:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->BASE_LAT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " BASELONG:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->BASE_LONG:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public technologyFormat(Ljava/io/ByteArrayOutputStream;)V
    .locals 2
    .parameter "buf"

    .prologue
    .line 74
    if-nez p1, :cond_0

    .line 83
    :goto_0
    return-void

    .line 78
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LocalInformationResponseData technology = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->Technology:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    const/16 v0, 0x3f

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 81
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 82
    iget v0, p0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->Technology:I

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0
.end method
