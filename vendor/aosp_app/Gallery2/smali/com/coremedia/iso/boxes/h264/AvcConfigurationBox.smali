.class public final Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;
.super Lcom/googlecode/mp4parser/AbstractBox;
.source "AvcConfigurationBox.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;
    }
.end annotation


# static fields
.field public static final TYPE:Ljava/lang/String; = "avcC"


# instance fields
.field public avcDecoderConfigurationRecord:Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    const-string v0, "avcC"

    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractBox;-><init>(Ljava/lang/String;)V

    .line 42
    new-instance v0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;-><init>()V

    iput-object v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;->avcDecoderConfigurationRecord:Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;

    .line 47
    return-void
.end method


# virtual methods
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
    .locals 1
    .parameter "content"

    .prologue
    .line 147
    new-instance v0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;

    invoke-direct {v0, p1}, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;-><init>(Ljava/nio/ByteBuffer;)V

    iput-object v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;->avcDecoderConfigurationRecord:Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;

    .line 148
    return-void
.end method

.method public getAvcLevelIndication()I
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;->avcDecoderConfigurationRecord:Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;

    iget v0, v0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->avcLevelIndication:I

    return v0
.end method

.method public getAvcProfileIndication()I
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;->avcDecoderConfigurationRecord:Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;

    iget v0, v0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->avcProfileIndication:I

    return v0
.end method

.method public getBitDepthChromaMinus8()I
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;->avcDecoderConfigurationRecord:Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;

    iget v0, v0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->bitDepthChromaMinus8:I

    return v0
.end method

.method public getBitDepthLumaMinus8()I
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;->avcDecoderConfigurationRecord:Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;

    iget v0, v0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->bitDepthLumaMinus8:I

    return v0
.end method

.method public getChromaFormat()I
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;->avcDecoderConfigurationRecord:Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;

    iget v0, v0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->chromaFormat:I

    return v0
.end method

.method public getConfigurationVersion()I
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;->avcDecoderConfigurationRecord:Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;

    iget v0, v0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->configurationVersion:I

    return v0
.end method

.method public getContent(Ljava/nio/ByteBuffer;)V
    .locals 1
    .parameter "byteBuffer"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;->avcDecoderConfigurationRecord:Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;

    invoke-virtual {v0, p1}, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->getContent(Ljava/nio/ByteBuffer;)V

    .line 160
    return-void
.end method

.method public getContentSize()J
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;->avcDecoderConfigurationRecord:Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;

    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->getContentSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLengthSizeMinusOne()I
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;->avcDecoderConfigurationRecord:Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;

    iget v0, v0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->lengthSizeMinusOne:I

    return v0
.end method

.method public getPPS()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;->avcDecoderConfigurationRecord:Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;

    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->getPPS()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPictureParameterSets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;->avcDecoderConfigurationRecord:Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;

    iget-object v0, v0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->pictureParameterSets:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPictureParameterSetsAsStrings()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 180
    iget-object v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;->avcDecoderConfigurationRecord:Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;

    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->getPictureParameterSetsAsStrings()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getProfileCompatibility()I
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;->avcDecoderConfigurationRecord:Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;

    iget v0, v0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->profileCompatibility:I

    return v0
.end method

.method public getSPS()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;->avcDecoderConfigurationRecord:Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;

    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->getSPS()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSequenceParameterSetExts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 130
    iget-object v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;->avcDecoderConfigurationRecord:Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;

    iget-object v0, v0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->sequenceParameterSetExts:Ljava/util/List;

    return-object v0
.end method

.method public getSequenceParameterSetExtsAsStrings()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 176
    iget-object v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;->avcDecoderConfigurationRecord:Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;

    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->getSequenceParameterSetExtsAsStrings()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSequenceParameterSets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;->avcDecoderConfigurationRecord:Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;

    iget-object v0, v0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->sequenceParameterSets:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSequenceParameterSetsAsStrings()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 172
    iget-object v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;->avcDecoderConfigurationRecord:Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;

    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->getSequenceParameterSetsAsStrings()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getavcDecoderConfigurationRecord()Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;->avcDecoderConfigurationRecord:Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;

    return-object v0
.end method

.method public hasExts()Z
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;->avcDecoderConfigurationRecord:Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;

    iget-boolean v0, v0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->hasExts:Z

    return v0
.end method

.method public setAvcLevelIndication(I)V
    .locals 1
    .parameter "avcLevelIndication"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;->avcDecoderConfigurationRecord:Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;

    iput p1, v0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->avcLevelIndication:I

    .line 91
    return-void
.end method

.method public setAvcProfileIndication(I)V
    .locals 1
    .parameter "avcProfileIndication"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;->avcDecoderConfigurationRecord:Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;

    iput p1, v0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->avcProfileIndication:I

    .line 83
    return-void
.end method

.method public setBitDepthChromaMinus8(I)V
    .locals 1
    .parameter "bitDepthChromaMinus8"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;->avcDecoderConfigurationRecord:Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;

    iput p1, v0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->bitDepthChromaMinus8:I

    .line 127
    return-void
.end method

.method public setBitDepthLumaMinus8(I)V
    .locals 1
    .parameter "bitDepthLumaMinus8"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;->avcDecoderConfigurationRecord:Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;

    iput p1, v0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->bitDepthLumaMinus8:I

    .line 119
    return-void
.end method

.method public setChromaFormat(I)V
    .locals 1
    .parameter "chromaFormat"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;->avcDecoderConfigurationRecord:Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;

    iput p1, v0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->chromaFormat:I

    .line 111
    return-void
.end method

.method public setConfigurationVersion(I)V
    .locals 1
    .parameter "configurationVersion"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;->avcDecoderConfigurationRecord:Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;

    iput p1, v0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->configurationVersion:I

    .line 79
    return-void
.end method

.method public setHasExts(Z)V
    .locals 1
    .parameter "hasExts"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;->avcDecoderConfigurationRecord:Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;

    iput-boolean p1, v0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->hasExts:Z

    .line 143
    return-void
.end method

.method public setLengthSizeMinusOne(I)V
    .locals 1
    .parameter "lengthSizeMinusOne"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;->avcDecoderConfigurationRecord:Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;

    iput p1, v0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->lengthSizeMinusOne:I

    .line 95
    return-void
.end method

.method public setPictureParameterSets(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[B>;)V"
        }
    .end annotation

    .prologue
    .line 102
    .local p1, pictureParameterSets:Ljava/util/List;,"Ljava/util/List<[B>;"
    iget-object v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;->avcDecoderConfigurationRecord:Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;

    iput-object p1, v0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->pictureParameterSets:Ljava/util/List;

    .line 103
    return-void
.end method

.method public setProfileCompatibility(I)V
    .locals 1
    .parameter "profileCompatibility"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;->avcDecoderConfigurationRecord:Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;

    iput p1, v0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->profileCompatibility:I

    .line 87
    return-void
.end method

.method public setSequenceParameterSetExts(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[B>;)V"
        }
    .end annotation

    .prologue
    .line 134
    .local p1, sequenceParameterSetExts:Ljava/util/List;,"Ljava/util/List<[B>;"
    iget-object v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;->avcDecoderConfigurationRecord:Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;

    iput-object p1, v0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->sequenceParameterSetExts:Ljava/util/List;

    .line 135
    return-void
.end method

.method public setSequenceParameterSets(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[B>;)V"
        }
    .end annotation

    .prologue
    .line 98
    .local p1, sequenceParameterSets:Ljava/util/List;,"Ljava/util/List<[B>;"
    iget-object v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;->avcDecoderConfigurationRecord:Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;

    iput-object p1, v0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->sequenceParameterSets:Ljava/util/List;

    .line 99
    return-void
.end method
