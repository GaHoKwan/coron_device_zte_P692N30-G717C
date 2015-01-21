.class public Lcom/mediatek/gallery3d/videowriter/DirectBox;
.super Lcom/mediatek/gallery3d/videowriter/Box;
.source "DirectBox.java"


# static fields
.field public static final OUT_FORMAT_MPEG_4:I = 0x1

.field public static TAG:Ljava/lang/String;

.field public static mHeight:I

.field public static mWidth:I


# instance fields
.field private mCodecSpecifiData:[B

.field private mFileType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const-string v0, "Gallery2/DirectBox"

    sput-object v0, Lcom/mediatek/gallery3d/videowriter/DirectBox;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "type"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/mediatek/gallery3d/videowriter/Box;-><init>(Ljava/lang/String;)V

    .line 14
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/gallery3d/videowriter/DirectBox;->mCodecSpecifiData:[B

    .line 18
    return-void
.end method

.method private writeVisualSampleEntry()V
    .locals 4

    .prologue
    const/high16 v3, 0x48

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 61
    invoke-static {v1}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->writeInt8(B)V

    .line 62
    invoke-static {v1}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->writeInt8(B)V

    .line 63
    invoke-static {v1}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->writeInt8(B)V

    .line 64
    invoke-static {v1}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->writeInt8(B)V

    .line 65
    invoke-static {v1}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->writeInt8(B)V

    .line 66
    invoke-static {v1}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->writeInt8(B)V

    .line 67
    invoke-static {v2}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->writeInt16(S)V

    .line 69
    invoke-static {v1}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->writeInt16(S)V

    .line 70
    invoke-static {v1}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->writeInt16(S)V

    .line 71
    invoke-static {v1}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->writeInt32(I)V

    .line 72
    invoke-static {v1}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->writeInt32(I)V

    .line 73
    invoke-static {v1}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->writeInt32(I)V

    .line 74
    sget v0, Lcom/mediatek/gallery3d/videowriter/DirectBox;->mWidth:I

    int-to-short v0, v0

    invoke-static {v0}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->writeInt16(S)V

    .line 75
    sget v0, Lcom/mediatek/gallery3d/videowriter/DirectBox;->mHeight:I

    int-to-short v0, v0

    invoke-static {v0}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->writeInt16(S)V

    .line 76
    invoke-static {v3}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->writeInt32(I)V

    .line 77
    invoke-static {v3}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->writeInt32(I)V

    .line 78
    invoke-static {v1}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->writeInt32(I)V

    .line 79
    invoke-static {v2}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->writeInt16(S)V

    .line 80
    const-string v0, "                                "

    const/16 v1, 0x20

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->writeString(Ljava/lang/String;I)V

    .line 81
    const/16 v0, 0x18

    invoke-static {v0}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->writeInt16(S)V

    .line 82
    const/4 v0, -0x1

    invoke-static {v0}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->writeInt16(S)V

    .line 83
    return-void
.end method


# virtual methods
.method public setCodecSpecifiData([B)V
    .locals 0
    .parameter "data"

    .prologue
    .line 21
    iput-object p1, p0, Lcom/mediatek/gallery3d/videowriter/DirectBox;->mCodecSpecifiData:[B

    .line 22
    return-void
.end method

.method public setFileType(I)V
    .locals 0
    .parameter "fileType"

    .prologue
    .line 24
    iput p1, p0, Lcom/mediatek/gallery3d/videowriter/DirectBox;->mFileType:I

    .line 25
    return-void
.end method

.method public write()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 28
    invoke-super {p0}, Lcom/mediatek/gallery3d/videowriter/Box;->write()V

    .line 29
    iget-object v4, p0, Lcom/mediatek/gallery3d/videowriter/Box;->mType:Ljava/lang/String;

    iget-object v5, p0, Lcom/mediatek/gallery3d/videowriter/Box;->mType:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/gallery3d/videowriter/Box;->mType:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 30
    .local v3, name:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "write"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Box"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 33
    .local v2, methodName:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v4, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 34
    .local v1, method:Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .end local v1           #method:Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 35
    :catch_0
    move-exception v0

    .line 36
    .local v0, e:Ljava/lang/Exception;
    sget-object v4, Lcom/mediatek/gallery3d/videowriter/DirectBox;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "not find method:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",type:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/gallery3d/videowriter/Box;->mType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/gallery3d/ui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public writeAvc1Box()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/mediatek/gallery3d/videowriter/DirectBox;->writeVisualSampleEntry()V

    .line 56
    return-void
.end method

.method public writeAvcCBox()V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/mediatek/gallery3d/videowriter/DirectBox;->mCodecSpecifiData:[B

    invoke-static {v0}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->writeBytes([B)V

    .line 129
    return-void
.end method

.method public writeD263Box()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 121
    invoke-static {v1}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->writeInt32(I)V

    .line 122
    invoke-static {v1}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->writeInt8(B)V

    .line 123
    const/16 v0, 0xa

    invoke-static {v0}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->writeInt8(B)V

    .line 124
    invoke-static {v1}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->writeInt8(B)V

    .line 125
    return-void
.end method

.method public writeEsdsBox()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/16 v3, -0x18

    const/4 v2, 0x3

    const/4 v1, 0x0

    .line 90
    invoke-static {v1}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->writeInt32(I)V

    .line 91
    invoke-static {v2}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->writeInt8(B)V

    .line 92
    iget-object v0, p0, Lcom/mediatek/gallery3d/videowriter/DirectBox;->mCodecSpecifiData:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x17

    int-to-byte v0, v0

    invoke-static {v0}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->writeInt8(B)V

    .line 93
    invoke-static {v1}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->writeInt16(S)V

    .line 94
    const/16 v0, 0x1f

    invoke-static {v0}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->writeInt8(B)V

    .line 95
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->writeInt8(B)V

    .line 96
    iget-object v0, p0, Lcom/mediatek/gallery3d/videowriter/DirectBox;->mCodecSpecifiData:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0xf

    int-to-byte v0, v0

    invoke-static {v0}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->writeInt8(B)V

    .line 97
    const/16 v0, 0x20

    invoke-static {v0}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->writeInt8(B)V

    .line 98
    const/16 v0, 0x11

    invoke-static {v0}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->writeInt8(B)V

    .line 99
    invoke-static {v4}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->writeInt8(B)V

    .line 100
    const/16 v0, 0x77

    invoke-static {v0}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->writeInt8(B)V

    .line 101
    invoke-static {v1}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->writeInt8(B)V

    .line 102
    invoke-static {v1}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->writeInt8(B)V

    .line 103
    invoke-static {v2}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->writeInt8(B)V

    .line 104
    invoke-static {v3}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->writeInt8(B)V

    .line 105
    invoke-static {v1}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->writeInt8(B)V

    .line 106
    invoke-static {v1}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->writeInt8(B)V

    .line 107
    invoke-static {v2}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->writeInt8(B)V

    .line 108
    invoke-static {v3}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->writeInt8(B)V

    .line 109
    invoke-static {v1}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->writeInt8(B)V

    .line 110
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->writeInt8(B)V

    .line 112
    iget-object v0, p0, Lcom/mediatek/gallery3d/videowriter/DirectBox;->mCodecSpecifiData:[B

    array-length v0, v0

    int-to-byte v0, v0

    invoke-static {v0}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->writeInt8(B)V

    .line 113
    iget-object v0, p0, Lcom/mediatek/gallery3d/videowriter/DirectBox;->mCodecSpecifiData:[B

    invoke-static {v0}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->writeBytes([B)V

    .line 115
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->writeInt8(B)V

    .line 116
    invoke-static {v4}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->writeInt8(B)V

    .line 117
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->writeInt8(B)V

    .line 118
    return-void
.end method

.method public writeFtypBox()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 41
    iget v0, p0, Lcom/mediatek/gallery3d/videowriter/DirectBox;->mFileType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 42
    const-string v0, "isom"

    invoke-static {v0, v2}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->writeString(Ljava/lang/String;I)V

    .line 46
    :goto_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->writeInt32(I)V

    .line 47
    const-string v0, "isom"

    invoke-static {v0, v2}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->writeString(Ljava/lang/String;I)V

    .line 48
    const-string v0, "3gp4"

    invoke-static {v0, v2}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->writeString(Ljava/lang/String;I)V

    .line 49
    return-void

    .line 44
    :cond_0
    const-string v0, "3gp4"

    invoke-static {v0, v2}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->writeString(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public writeMp4vBox()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/mediatek/gallery3d/videowriter/DirectBox;->writeVisualSampleEntry()V

    .line 53
    return-void
.end method

.method public writePaspBox()V
    .locals 1

    .prologue
    const/high16 v0, 0x1

    .line 86
    invoke-static {v0}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->writeInt32(I)V

    .line 87
    invoke-static {v0}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->writeInt32(I)V

    .line 88
    return-void
.end method

.method public writeS263Box()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/mediatek/gallery3d/videowriter/DirectBox;->writeVisualSampleEntry()V

    .line 59
    return-void
.end method
