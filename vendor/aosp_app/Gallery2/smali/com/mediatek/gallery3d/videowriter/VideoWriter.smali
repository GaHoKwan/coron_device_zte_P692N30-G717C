.class public Lcom/mediatek/gallery3d/videowriter/VideoWriter;
.super Ljava/lang/Object;
.source "VideoWriter.java"


# static fields
.field public static final KEY_FRAME_RATE:I = 0x0

.field public static final MEDIA_MIMETYPE_VIDEO_AVC:Ljava/lang/String; = "video/avc"

.field public static final MEDIA_MIMETYPE_VIDEO_H263:Ljava/lang/String; = "video/3gpp"

.field public static final MEDIA_MIMETYPE_VIDEO_MPEG4:Ljava/lang/String; = "video/mp4v-es"

.field public static TAG:Ljava/lang/String;


# instance fields
.field private mAvcC:Lcom/mediatek/gallery3d/videowriter/DirectBox;

.field private mChunkOffset:I

.field private mDinf:Lcom/mediatek/gallery3d/videowriter/Box;

.field private mDref:Lcom/mediatek/gallery3d/videowriter/FullBox;

.field private mEncoderType:Ljava/lang/String;

.field private mEsds:Lcom/mediatek/gallery3d/videowriter/DirectBox;

.field private mFps:F

.field private mFrameNumber:I

.field private mFtyp:Lcom/mediatek/gallery3d/videowriter/DirectBox;

.field private mHdlr:Lcom/mediatek/gallery3d/videowriter/FullBox;

.field private mHeight:I

.field private mMdat:Lcom/mediatek/gallery3d/videowriter/Box;

.field private mMdatOffset:I

.field private mMdatSize:I

.field private mMdhd:Lcom/mediatek/gallery3d/videowriter/FullBox;

.field private mMdia:Lcom/mediatek/gallery3d/videowriter/Box;

.field private mMediaTimeScale:I

.field private mMinf:Lcom/mediatek/gallery3d/videowriter/Box;

.field private mMoov:Lcom/mediatek/gallery3d/videowriter/Box;

.field private mMvhd:Lcom/mediatek/gallery3d/videowriter/FullBox;

.field private mStbl:Lcom/mediatek/gallery3d/videowriter/Box;

.field private mStco:Lcom/mediatek/gallery3d/videowriter/FullBox;

.field private mStsc:Lcom/mediatek/gallery3d/videowriter/FullBox;

.field private mStsd:Lcom/mediatek/gallery3d/videowriter/FullBox;

.field private mStss:Lcom/mediatek/gallery3d/videowriter/FullBox;

.field private mStsz:Lcom/mediatek/gallery3d/videowriter/FullBox;

.field private mStts:Lcom/mediatek/gallery3d/videowriter/FullBox;

.field private mTkhd:Lcom/mediatek/gallery3d/videowriter/FullBox;

.field private mTrak:Lcom/mediatek/gallery3d/videowriter/Box;

.field private mUrl:Lcom/mediatek/gallery3d/videowriter/FullBox;

.field private mVmhd:Lcom/mediatek/gallery3d/videowriter/FullBox;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    const-string v0, "Gallery2/VideoWriter"

    sput-object v0, Lcom/mediatek/gallery3d/videowriter/VideoWriter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIILjava/lang/String;)V
    .locals 5
    .parameter "path"
    .parameter "width"
    .parameter "height"
    .parameter "fileType"
    .parameter "encoderType"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/high16 v0, 0x4170

    iput v0, p0, Lcom/mediatek/gallery3d/videowriter/VideoWriter;->mFps:F

    .line 16
    iput v3, p0, Lcom/mediatek/gallery3d/videowriter/VideoWriter;->mFrameNumber:I

    .line 18
    const v0, 0x15f90

    iput v0, p0, Lcom/mediatek/gallery3d/videowriter/VideoWriter;->mMediaTimeScale:I

    .line 19
    iput v3, p0, Lcom/mediatek/gallery3d/videowriter/VideoWriter;->mChunkOffset:I

    .line 20
    iput v3, p0, Lcom/mediatek/gallery3d/videowriter/VideoWriter;->mMdatOffset:I

    .line 21
    iput v3, p0, Lcom/mediatek/gallery3d/videowriter/VideoWriter;->mMdatSize:I

    .line 24
    new-instance v0, Lcom/mediatek/gallery3d/videowriter/DirectBox;

    const-string v1, "ftyp"

    invoke-direct {v0, v1}, Lcom/mediatek/gallery3d/videowriter/DirectBox;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/gallery3d/videowriter/VideoWriter;->mFtyp:Lcom/mediatek/gallery3d/videowriter/DirectBox;

    .line 25
    new-instance v0, Lcom/mediatek/gallery3d/videowriter/Box;

    const-string v1, "mdat"

    invoke-direct {v0, v1}, Lcom/mediatek/gallery3d/videowriter/Box;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/gallery3d/videowriter/VideoWriter;->mMdat:Lcom/mediatek/gallery3d/videowriter/Box;

    .line 26
    new-instance v0, Lcom/mediatek/gallery3d/videowriter/Box;

    const-string v1, "moov"

    invoke-direct {v0, v1}, Lcom/mediatek/gallery3d/videowriter/Box;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/gallery3d/videowriter/VideoWriter;->mMoov:Lcom/mediatek/gallery3d/videowriter/Box;

    .line 27
    new-instance v0, Lcom/mediatek/gallery3d/videowriter/FullBox;

    const-string v1, "mvhd"

    invoke-direct {v0, v1, v3, v3}, Lcom/mediatek/gallery3d/videowriter/FullBox;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/mediatek/gallery3d/videowriter/VideoWriter;->mMvhd:Lcom/mediatek/gallery3d/videowriter/FullBox;

    .line 28
    new-instance v0, Lcom/mediatek/gallery3d/videowriter/Box;

    const-string v1, "trak"

    invoke-direct {v0, v1}, Lcom/mediatek/gallery3d/videowriter/Box;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/gallery3d/videowriter/VideoWriter;->mTrak:Lcom/mediatek/gallery3d/videowriter/Box;

    .line 29
    new-instance v0, Lcom/mediatek/gallery3d/videowriter/FullBox;

    const-string v1, "tkhd"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v3, v2}, Lcom/mediatek/gallery3d/videowriter/FullBox;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/mediatek/gallery3d/videowriter/VideoWriter;->mTkhd:Lcom/mediatek/gallery3d/videowriter/FullBox;

    .line 30
    new-instance v0, Lcom/mediatek/gallery3d/videowriter/Box;

    const-string v1, "mdia"

    invoke-direct {v0, v1}, Lcom/mediatek/gallery3d/videowriter/Box;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/gallery3d/videowriter/VideoWriter;->mMdia:Lcom/mediatek/gallery3d/videowriter/Box;

    .line 31
    new-instance v0, Lcom/mediatek/gallery3d/videowriter/FullBox;

    const-string v1, "mdhd"

    invoke-direct {v0, v1, v3, v3}, Lcom/mediatek/gallery3d/videowriter/FullBox;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/mediatek/gallery3d/videowriter/VideoWriter;->mMdhd:Lcom/mediatek/gallery3d/videowriter/FullBox;

    .line 32
    new-instance v0, Lcom/mediatek/gallery3d/videowriter/FullBox;

    const-string v1, "hdlr"

    invoke-direct {v0, v1, v3, v3}, Lcom/mediatek/gallery3d/videowriter/FullBox;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/mediatek/gallery3d/videowriter/VideoWriter;->mHdlr:Lcom/mediatek/gallery3d/videowriter/FullBox;

    .line 33
    new-instance v0, Lcom/mediatek/gallery3d/videowriter/Box;

    const-string v1, "minf"

    invoke-direct {v0, v1}, Lcom/mediatek/gallery3d/videowriter/Box;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/gallery3d/videowriter/VideoWriter;->mMinf:Lcom/mediatek/gallery3d/videowriter/Box;

    .line 34
    new-instance v0, Lcom/mediatek/gallery3d/videowriter/FullBox;

    const-string v1, "vmhd"

    invoke-direct {v0, v1, v3, v4}, Lcom/mediatek/gallery3d/videowriter/FullBox;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/mediatek/gallery3d/videowriter/VideoWriter;->mVmhd:Lcom/mediatek/gallery3d/videowriter/FullBox;

    .line 35
    new-instance v0, Lcom/mediatek/gallery3d/videowriter/Box;

    const-string v1, "dinf"

    invoke-direct {v0, v1}, Lcom/mediatek/gallery3d/videowriter/Box;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/gallery3d/videowriter/VideoWriter;->mDinf:Lcom/mediatek/gallery3d/videowriter/Box;

    .line 36
    new-instance v0, Lcom/mediatek/gallery3d/videowriter/FullBox;

    const-string v1, "dref"

    invoke-direct {v0, v1, v3, v3}, Lcom/mediatek/gallery3d/videowriter/FullBox;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/mediatek/gallery3d/videowriter/VideoWriter;->mDref:Lcom/mediatek/gallery3d/videowriter/FullBox;

    .line 37
    new-instance v0, Lcom/mediatek/gallery3d/videowriter/Box;

    const-string v1, "stbl"

    invoke-direct {v0, v1}, Lcom/mediatek/gallery3d/videowriter/Box;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/gallery3d/videowriter/VideoWriter;->mStbl:Lcom/mediatek/gallery3d/videowriter/Box;

    .line 38
    new-instance v0, Lcom/mediatek/gallery3d/videowriter/FullBox;

    const-string v1, "stsd"

    invoke-direct {v0, v1, v3, v3}, Lcom/mediatek/gallery3d/videowriter/FullBox;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/mediatek/gallery3d/videowriter/VideoWriter;->mStsd:Lcom/mediatek/gallery3d/videowriter/FullBox;

    .line 39
    new-instance v0, Lcom/mediatek/gallery3d/videowriter/FullBox;

    const-string v1, "stts"

    invoke-direct {v0, v1, v3, v3}, Lcom/mediatek/gallery3d/videowriter/FullBox;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/mediatek/gallery3d/videowriter/VideoWriter;->mStts:Lcom/mediatek/gallery3d/videowriter/FullBox;

    .line 40
    new-instance v0, Lcom/mediatek/gallery3d/videowriter/FullBox;

    const-string v1, "stss"

    invoke-direct {v0, v1, v3, v3}, Lcom/mediatek/gallery3d/videowriter/FullBox;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/mediatek/gallery3d/videowriter/VideoWriter;->mStss:Lcom/mediatek/gallery3d/videowriter/FullBox;

    .line 41
    new-instance v0, Lcom/mediatek/gallery3d/videowriter/FullBox;

    const-string v1, "stsz"

    invoke-direct {v0, v1, v3, v3}, Lcom/mediatek/gallery3d/videowriter/FullBox;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/mediatek/gallery3d/videowriter/VideoWriter;->mStsz:Lcom/mediatek/gallery3d/videowriter/FullBox;

    .line 42
    new-instance v0, Lcom/mediatek/gallery3d/videowriter/FullBox;

    const-string v1, "stsc"

    invoke-direct {v0, v1, v3, v3}, Lcom/mediatek/gallery3d/videowriter/FullBox;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/mediatek/gallery3d/videowriter/VideoWriter;->mStsc:Lcom/mediatek/gallery3d/videowriter/FullBox;

    .line 43
    new-instance v0, Lcom/mediatek/gallery3d/videowriter/FullBox;

    const-string v1, "stco"

    invoke-direct {v0, v1, v3, v3}, Lcom/mediatek/gallery3d/videowriter/FullBox;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/mediatek/gallery3d/videowriter/VideoWriter;->mStco:Lcom/mediatek/gallery3d/videowriter/FullBox;

    .line 44
    new-instance v0, Lcom/mediatek/gallery3d/videowriter/FullBox;

    const-string v1, "url "

    invoke-direct {v0, v1, v3, v4}, Lcom/mediatek/gallery3d/videowriter/FullBox;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/mediatek/gallery3d/videowriter/VideoWriter;->mUrl:Lcom/mediatek/gallery3d/videowriter/FullBox;

    .line 49
    iput p2, p0, Lcom/mediatek/gallery3d/videowriter/VideoWriter;->mWidth:I

    .line 50
    iput p3, p0, Lcom/mediatek/gallery3d/videowriter/VideoWriter;->mHeight:I

    .line 51
    invoke-static {p1}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->openFile(Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/mediatek/gallery3d/videowriter/VideoWriter;->mFtyp:Lcom/mediatek/gallery3d/videowriter/DirectBox;

    invoke-virtual {v0, p4}, Lcom/mediatek/gallery3d/videowriter/DirectBox;->setFileType(I)V

    .line 53
    iput-object p5, p0, Lcom/mediatek/gallery3d/videowriter/VideoWriter;->mEncoderType:Ljava/lang/String;

    .line 54
    invoke-virtual {p0}, Lcom/mediatek/gallery3d/videowriter/VideoWriter;->initBoxes()V

    .line 55
    return-void
.end method

.method private initBoxesData()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 155
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    const-wide/32 v3, 0x7c25b080

    add-long/2addr v1, v3

    long-to-int v0, v1

    .line 156
    .local v0, now:I
    sput v0, Lcom/mediatek/gallery3d/videowriter/FullBox;->mCreateTime:I

    .line 157
    iget v1, p0, Lcom/mediatek/gallery3d/videowriter/VideoWriter;->mFps:F

    sput v1, Lcom/mediatek/gallery3d/videowriter/FullBox;->mFps:F

    .line 158
    iget v1, p0, Lcom/mediatek/gallery3d/videowriter/VideoWriter;->mFrameNumber:I

    sput v1, Lcom/mediatek/gallery3d/videowriter/FullBox;->mFrameNumber:I

    .line 159
    iget v1, p0, Lcom/mediatek/gallery3d/videowriter/VideoWriter;->mMediaTimeScale:I

    sput v1, Lcom/mediatek/gallery3d/videowriter/FullBox;->mMediaTimeScale:I

    .line 160
    iget v1, p0, Lcom/mediatek/gallery3d/videowriter/VideoWriter;->mWidth:I

    sput v1, Lcom/mediatek/gallery3d/videowriter/FullBox;->mWidth:I

    .line 161
    iget v1, p0, Lcom/mediatek/gallery3d/videowriter/VideoWriter;->mHeight:I

    sput v1, Lcom/mediatek/gallery3d/videowriter/FullBox;->mHeight:I

    .line 162
    iget v1, p0, Lcom/mediatek/gallery3d/videowriter/VideoWriter;->mWidth:I

    sput v1, Lcom/mediatek/gallery3d/videowriter/DirectBox;->mWidth:I

    .line 163
    iget v1, p0, Lcom/mediatek/gallery3d/videowriter/VideoWriter;->mHeight:I

    sput v1, Lcom/mediatek/gallery3d/videowriter/DirectBox;->mHeight:I

    .line 165
    iget-object v1, p0, Lcom/mediatek/gallery3d/videowriter/VideoWriter;->mStts:Lcom/mediatek/gallery3d/videowriter/FullBox;

    new-array v2, v7, [I

    iget v3, p0, Lcom/mediatek/gallery3d/videowriter/VideoWriter;->mFrameNumber:I

    aput v3, v2, v6

    iget v3, p0, Lcom/mediatek/gallery3d/videowriter/VideoWriter;->mMediaTimeScale:I

    int-to-float v3, v3

    iget v4, p0, Lcom/mediatek/gallery3d/videowriter/VideoWriter;->mFps:F

    div-float/2addr v3, v4

    float-to-int v3, v3

    aput v3, v2, v5

    invoke-virtual {v1, v2}, Lcom/mediatek/gallery3d/videowriter/FullBox;->add([I)V

    .line 166
    iget-object v1, p0, Lcom/mediatek/gallery3d/videowriter/VideoWriter;->mStsc:Lcom/mediatek/gallery3d/videowriter/FullBox;

    const/4 v2, 0x3

    new-array v2, v2, [I

    aput v5, v2, v6

    iget v3, p0, Lcom/mediatek/gallery3d/videowriter/VideoWriter;->mFrameNumber:I

    aput v3, v2, v5

    aput v5, v2, v7

    invoke-virtual {v1, v2}, Lcom/mediatek/gallery3d/videowriter/FullBox;->add([I)V

    .line 167
    iget-object v1, p0, Lcom/mediatek/gallery3d/videowriter/VideoWriter;->mStco:Lcom/mediatek/gallery3d/videowriter/FullBox;

    new-array v2, v5, [I

    iget v3, p0, Lcom/mediatek/gallery3d/videowriter/VideoWriter;->mChunkOffset:I

    aput v3, v2, v6

    invoke-virtual {v1, v2}, Lcom/mediatek/gallery3d/videowriter/FullBox;->add([I)V

    .line 168
    return-void
.end method

.method private writeMoovBox()V
    .locals 1

    .prologue
    .line 147
    invoke-direct {p0}, Lcom/mediatek/gallery3d/videowriter/VideoWriter;->initBoxesData()V

    .line 148
    iget-object v0, p0, Lcom/mediatek/gallery3d/videowriter/VideoWriter;->mMoov:Lcom/mediatek/gallery3d/videowriter/Box;

    invoke-virtual {v0}, Lcom/mediatek/gallery3d/videowriter/Box;->wholeWrite()V

    .line 149
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 138
    sget-object v0, Lcom/mediatek/gallery3d/videowriter/VideoWriter;->TAG:Ljava/lang/String;

    const-string v1, "video writer close"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-direct {p0}, Lcom/mediatek/gallery3d/videowriter/VideoWriter;->writeMoovBox()V

    .line 140
    invoke-static {}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->writeBufToFile()V

    .line 142
    iget v0, p0, Lcom/mediatek/gallery3d/videowriter/VideoWriter;->mMdatOffset:I

    iget v1, p0, Lcom/mediatek/gallery3d/videowriter/VideoWriter;->mMdatSize:I

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->setFileData(II)V

    .line 143
    invoke-static {}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->close()V

    .line 144
    return-void
.end method

.method public initBoxes()V
    .locals 7

    .prologue
    .line 58
    iget-object v5, p0, Lcom/mediatek/gallery3d/videowriter/VideoWriter;->mMoov:Lcom/mediatek/gallery3d/videowriter/Box;

    iget-object v6, p0, Lcom/mediatek/gallery3d/videowriter/VideoWriter;->mMvhd:Lcom/mediatek/gallery3d/videowriter/FullBox;

    invoke-virtual {v5, v6}, Lcom/mediatek/gallery3d/videowriter/Box;->addSubBox(Lcom/mediatek/gallery3d/videowriter/Box;)V

    .line 59
    iget-object v5, p0, Lcom/mediatek/gallery3d/videowriter/VideoWriter;->mMoov:Lcom/mediatek/gallery3d/videowriter/Box;

    iget-object v6, p0, Lcom/mediatek/gallery3d/videowriter/VideoWriter;->mTrak:Lcom/mediatek/gallery3d/videowriter/Box;

    invoke-virtual {v5, v6}, Lcom/mediatek/gallery3d/videowriter/Box;->addSubBox(Lcom/mediatek/gallery3d/videowriter/Box;)V

    .line 60
    iget-object v5, p0, Lcom/mediatek/gallery3d/videowriter/VideoWriter;->mTrak:Lcom/mediatek/gallery3d/videowriter/Box;

    iget-object v6, p0, Lcom/mediatek/gallery3d/videowriter/VideoWriter;->mTkhd:Lcom/mediatek/gallery3d/videowriter/FullBox;

    invoke-virtual {v5, v6}, Lcom/mediatek/gallery3d/videowriter/Box;->addSubBox(Lcom/mediatek/gallery3d/videowriter/Box;)V

    .line 61
    iget-object v5, p0, Lcom/mediatek/gallery3d/videowriter/VideoWriter;->mTrak:Lcom/mediatek/gallery3d/videowriter/Box;

    iget-object v6, p0, Lcom/mediatek/gallery3d/videowriter/VideoWriter;->mMdia:Lcom/mediatek/gallery3d/videowriter/Box;

    invoke-virtual {v5, v6}, Lcom/mediatek/gallery3d/videowriter/Box;->addSubBox(Lcom/mediatek/gallery3d/videowriter/Box;)V

    .line 62
    iget-object v5, p0, Lcom/mediatek/gallery3d/videowriter/VideoWriter;->mMdia:Lcom/mediatek/gallery3d/videowriter/Box;

    iget-object v6, p0, Lcom/mediatek/gallery3d/videowriter/VideoWriter;->mMdhd:Lcom/mediatek/gallery3d/videowriter/FullBox;

    invoke-virtual {v5, v6}, Lcom/mediatek/gallery3d/videowriter/Box;->addSubBox(Lcom/mediatek/gallery3d/videowriter/Box;)V

    .line 63
    iget-object v5, p0, Lcom/mediatek/gallery3d/videowriter/VideoWriter;->mMdia:Lcom/mediatek/gallery3d/videowriter/Box;

    iget-object v6, p0, Lcom/mediatek/gallery3d/videowriter/VideoWriter;->mHdlr:Lcom/mediatek/gallery3d/videowriter/FullBox;

    invoke-virtual {v5, v6}, Lcom/mediatek/gallery3d/videowriter/Box;->addSubBox(Lcom/mediatek/gallery3d/videowriter/Box;)V

    .line 64
    iget-object v5, p0, Lcom/mediatek/gallery3d/videowriter/VideoWriter;->mMdia:Lcom/mediatek/gallery3d/videowriter/Box;

    iget-object v6, p0, Lcom/mediatek/gallery3d/videowriter/VideoWriter;->mMinf:Lcom/mediatek/gallery3d/videowriter/Box;

    invoke-virtual {v5, v6}, Lcom/mediatek/gallery3d/videowriter/Box;->addSubBox(Lcom/mediatek/gallery3d/videowriter/Box;)V

    .line 65
    iget-object v5, p0, Lcom/mediatek/gallery3d/videowriter/VideoWriter;->mMinf:Lcom/mediatek/gallery3d/videowriter/Box;

    iget-object v6, p0, Lcom/mediatek/gallery3d/videowriter/VideoWriter;->mVmhd:Lcom/mediatek/gallery3d/videowriter/FullBox;

    invoke-virtual {v5, v6}, Lcom/mediatek/gallery3d/videowriter/Box;->addSubBox(Lcom/mediatek/gallery3d/videowriter/Box;)V

    .line 66
    iget-object v5, p0, Lcom/mediatek/gallery3d/videowriter/VideoWriter;->mMinf:Lcom/mediatek/gallery3d/videowriter/Box;

    iget-object v6, p0, Lcom/mediatek/gallery3d/videowriter/VideoWriter;->mDinf:Lcom/mediatek/gallery3d/videowriter/Box;

    invoke-virtual {v5, v6}, Lcom/mediatek/gallery3d/videowriter/Box;->addSubBox(Lcom/mediatek/gallery3d/videowriter/Box;)V

    .line 67
    iget-object v5, p0, Lcom/mediatek/gallery3d/videowriter/VideoWriter;->mMinf:Lcom/mediatek/gallery3d/videowriter/Box;

    iget-object v6, p0, Lcom/mediatek/gallery3d/videowriter/VideoWriter;->mStbl:Lcom/mediatek/gallery3d/videowriter/Box;

    invoke-virtual {v5, v6}, Lcom/mediatek/gallery3d/videowriter/Box;->addSubBox(Lcom/mediatek/gallery3d/videowriter/Box;)V

    .line 68
    iget-object v5, p0, Lcom/mediatek/gallery3d/videowriter/VideoWriter;->mDinf:Lcom/mediatek/gallery3d/videowriter/Box;

    iget-object v6, p0, Lcom/mediatek/gallery3d/videowriter/VideoWriter;->mDref:Lcom/mediatek/gallery3d/videowriter/FullBox;

    invoke-virtual {v5, v6}, Lcom/mediatek/gallery3d/videowriter/Box;->addSubBox(Lcom/mediatek/gallery3d/videowriter/Box;)V

    .line 69
    iget-object v5, p0, Lcom/mediatek/gallery3d/videowriter/VideoWriter;->mDref:Lcom/mediatek/gallery3d/videowriter/FullBox;

    iget-object v6, p0, Lcom/mediatek/gallery3d/videowriter/VideoWriter;->mUrl:Lcom/mediatek/gallery3d/videowriter/FullBox;

    invoke-virtual {v5, v6}, Lcom/mediatek/gallery3d/videowriter/Box;->addSubBox(Lcom/mediatek/gallery3d/videowriter/Box;)V

    .line 70
    iget-object v5, p0, Lcom/mediatek/gallery3d/videowriter/VideoWriter;->mStbl:Lcom/mediatek/gallery3d/videowriter/Box;

    iget-object v6, p0, Lcom/mediatek/gallery3d/videowriter/VideoWriter;->mStsd:Lcom/mediatek/gallery3d/videowriter/FullBox;

    invoke-virtual {v5, v6}, Lcom/mediatek/gallery3d/videowriter/Box;->addSubBox(Lcom/mediatek/gallery3d/videowriter/Box;)V

    .line 71
    iget-object v5, p0, Lcom/mediatek/gallery3d/videowriter/VideoWriter;->mEncoderType:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/mediatek/gallery3d/videowriter/VideoWriter;->mEncoderType:Ljava/lang/String;

    const-string v6, "video/mp4v-es"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 72
    :cond_0
    new-instance v2, Lcom/mediatek/gallery3d/videowriter/DirectBox;

    const-string v5, "mp4v"

    invoke-direct {v2, v5}, Lcom/mediatek/gallery3d/videowriter/DirectBox;-><init>(Ljava/lang/String;)V

    .line 73
    .local v2, mp4v:Lcom/mediatek/gallery3d/videowriter/DirectBox;
    new-instance v5, Lcom/mediatek/gallery3d/videowriter/DirectBox;

    const-string v6, "esds"

    invoke-direct {v5, v6}, Lcom/mediatek/gallery3d/videowriter/DirectBox;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/mediatek/gallery3d/videowriter/VideoWriter;->mEsds:Lcom/mediatek/gallery3d/videowriter/DirectBox;

    .line 74
    new-instance v3, Lcom/mediatek/gallery3d/videowriter/DirectBox;

    const-string v5, "pasp"

    invoke-direct {v3, v5}, Lcom/mediatek/gallery3d/videowriter/DirectBox;-><init>(Ljava/lang/String;)V

    .line 75
    .local v3, pasp:Lcom/mediatek/gallery3d/videowriter/DirectBox;
    iget-object v5, p0, Lcom/mediatek/gallery3d/videowriter/VideoWriter;->mStsd:Lcom/mediatek/gallery3d/videowriter/FullBox;

    invoke-virtual {v5, v2}, Lcom/mediatek/gallery3d/videowriter/Box;->addSubBox(Lcom/mediatek/gallery3d/videowriter/Box;)V

    .line 76
    iget-object v5, p0, Lcom/mediatek/gallery3d/videowriter/VideoWriter;->mEsds:Lcom/mediatek/gallery3d/videowriter/DirectBox;

    invoke-virtual {v2, v5}, Lcom/mediatek/gallery3d/videowriter/Box;->addSubBox(Lcom/mediatek/gallery3d/videowriter/Box;)V

    .line 77
    invoke-virtual {v2, v3}, Lcom/mediatek/gallery3d/videowriter/Box;->addSubBox(Lcom/mediatek/gallery3d/videowriter/Box;)V

    .line 95
    .end local v2           #mp4v:Lcom/mediatek/gallery3d/videowriter/DirectBox;
    :goto_0
    iget-object v5, p0, Lcom/mediatek/gallery3d/videowriter/VideoWriter;->mStbl:Lcom/mediatek/gallery3d/videowriter/Box;

    iget-object v6, p0, Lcom/mediatek/gallery3d/videowriter/VideoWriter;->mStts:Lcom/mediatek/gallery3d/videowriter/FullBox;

    invoke-virtual {v5, v6}, Lcom/mediatek/gallery3d/videowriter/Box;->addSubBox(Lcom/mediatek/gallery3d/videowriter/Box;)V

    .line 96
    iget-object v5, p0, Lcom/mediatek/gallery3d/videowriter/VideoWriter;->mStbl:Lcom/mediatek/gallery3d/videowriter/Box;

    iget-object v6, p0, Lcom/mediatek/gallery3d/videowriter/VideoWriter;->mStss:Lcom/mediatek/gallery3d/videowriter/FullBox;

    invoke-virtual {v5, v6}, Lcom/mediatek/gallery3d/videowriter/Box;->addSubBox(Lcom/mediatek/gallery3d/videowriter/Box;)V

    .line 97
    iget-object v5, p0, Lcom/mediatek/gallery3d/videowriter/VideoWriter;->mStbl:Lcom/mediatek/gallery3d/videowriter/Box;

    iget-object v6, p0, Lcom/mediatek/gallery3d/videowriter/VideoWriter;->mStsz:Lcom/mediatek/gallery3d/videowriter/FullBox;

    invoke-virtual {v5, v6}, Lcom/mediatek/gallery3d/videowriter/Box;->addSubBox(Lcom/mediatek/gallery3d/videowriter/Box;)V

    .line 98
    iget-object v5, p0, Lcom/mediatek/gallery3d/videowriter/VideoWriter;->mStbl:Lcom/mediatek/gallery3d/videowriter/Box;

    iget-object v6, p0, Lcom/mediatek/gallery3d/videowriter/VideoWriter;->mStsc:Lcom/mediatek/gallery3d/videowriter/FullBox;

    invoke-virtual {v5, v6}, Lcom/mediatek/gallery3d/videowriter/Box;->addSubBox(Lcom/mediatek/gallery3d/videowriter/Box;)V

    .line 99
    iget-object v5, p0, Lcom/mediatek/gallery3d/videowriter/VideoWriter;->mStbl:Lcom/mediatek/gallery3d/videowriter/Box;

    iget-object v6, p0, Lcom/mediatek/gallery3d/videowriter/VideoWriter;->mStco:Lcom/mediatek/gallery3d/videowriter/FullBox;

    invoke-virtual {v5, v6}, Lcom/mediatek/gallery3d/videowriter/Box;->addSubBox(Lcom/mediatek/gallery3d/videowriter/Box;)V

    .line 100
    return-void

    .line 78
    .end local v3           #pasp:Lcom/mediatek/gallery3d/videowriter/DirectBox;
    :cond_1
    iget-object v5, p0, Lcom/mediatek/gallery3d/videowriter/VideoWriter;->mEncoderType:Ljava/lang/String;

    const-string v6, "video/avc"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 79
    new-instance v0, Lcom/mediatek/gallery3d/videowriter/DirectBox;

    const-string v5, "avc1"

    invoke-direct {v0, v5}, Lcom/mediatek/gallery3d/videowriter/DirectBox;-><init>(Ljava/lang/String;)V

    .line 80
    .local v0, avc1:Lcom/mediatek/gallery3d/videowriter/DirectBox;
    new-instance v5, Lcom/mediatek/gallery3d/videowriter/DirectBox;

    const-string v6, "avcC"

    invoke-direct {v5, v6}, Lcom/mediatek/gallery3d/videowriter/DirectBox;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/mediatek/gallery3d/videowriter/VideoWriter;->mAvcC:Lcom/mediatek/gallery3d/videowriter/DirectBox;

    .line 81
    new-instance v3, Lcom/mediatek/gallery3d/videowriter/DirectBox;

    const-string v5, "pasp"

    invoke-direct {v3, v5}, Lcom/mediatek/gallery3d/videowriter/DirectBox;-><init>(Ljava/lang/String;)V

    .line 82
    .restart local v3       #pasp:Lcom/mediatek/gallery3d/videowriter/DirectBox;
    iget-object v5, p0, Lcom/mediatek/gallery3d/videowriter/VideoWriter;->mStsd:Lcom/mediatek/gallery3d/videowriter/FullBox;

    invoke-virtual {v5, v0}, Lcom/mediatek/gallery3d/videowriter/Box;->addSubBox(Lcom/mediatek/gallery3d/videowriter/Box;)V

    .line 83
    iget-object v5, p0, Lcom/mediatek/gallery3d/videowriter/VideoWriter;->mAvcC:Lcom/mediatek/gallery3d/videowriter/DirectBox;

    invoke-virtual {v0, v5}, Lcom/mediatek/gallery3d/videowriter/Box;->addSubBox(Lcom/mediatek/gallery3d/videowriter/Box;)V

    .line 84
    invoke-virtual {v0, v3}, Lcom/mediatek/gallery3d/videowriter/Box;->addSubBox(Lcom/mediatek/gallery3d/videowriter/Box;)V

    goto :goto_0

    .line 85
    .end local v0           #avc1:Lcom/mediatek/gallery3d/videowriter/DirectBox;
    .end local v3           #pasp:Lcom/mediatek/gallery3d/videowriter/DirectBox;
    :cond_2
    iget-object v5, p0, Lcom/mediatek/gallery3d/videowriter/VideoWriter;->mEncoderType:Ljava/lang/String;

    const-string v6, "video/3gpp"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 86
    new-instance v4, Lcom/mediatek/gallery3d/videowriter/DirectBox;

    const-string v5, "s263"

    invoke-direct {v4, v5}, Lcom/mediatek/gallery3d/videowriter/DirectBox;-><init>(Ljava/lang/String;)V

    .line 87
    .local v4, s263:Lcom/mediatek/gallery3d/videowriter/DirectBox;
    new-instance v1, Lcom/mediatek/gallery3d/videowriter/DirectBox;

    const-string v5, "d263"

    invoke-direct {v1, v5}, Lcom/mediatek/gallery3d/videowriter/DirectBox;-><init>(Ljava/lang/String;)V

    .line 88
    .local v1, d263:Lcom/mediatek/gallery3d/videowriter/DirectBox;
    new-instance v3, Lcom/mediatek/gallery3d/videowriter/DirectBox;

    const-string v5, "pasp"

    invoke-direct {v3, v5}, Lcom/mediatek/gallery3d/videowriter/DirectBox;-><init>(Ljava/lang/String;)V

    .line 89
    .restart local v3       #pasp:Lcom/mediatek/gallery3d/videowriter/DirectBox;
    iget-object v5, p0, Lcom/mediatek/gallery3d/videowriter/VideoWriter;->mStsd:Lcom/mediatek/gallery3d/videowriter/FullBox;

    invoke-virtual {v5, v4}, Lcom/mediatek/gallery3d/videowriter/Box;->addSubBox(Lcom/mediatek/gallery3d/videowriter/Box;)V

    .line 90
    invoke-virtual {v4, v1}, Lcom/mediatek/gallery3d/videowriter/Box;->addSubBox(Lcom/mediatek/gallery3d/videowriter/Box;)V

    goto :goto_0

    .line 93
    .end local v1           #d263:Lcom/mediatek/gallery3d/videowriter/DirectBox;
    .end local v3           #pasp:Lcom/mediatek/gallery3d/videowriter/DirectBox;
    .end local v4           #s263:Lcom/mediatek/gallery3d/videowriter/DirectBox;
    :cond_3
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5
.end method

.method public receiveFrameBuffer([BIZ)V
    .locals 4
    .parameter "outData"
    .parameter "bufferSize"
    .parameter "iFrame"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 120
    invoke-static {p1, p2}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->writeBitStreamToFile([BI)V

    .line 121
    iget-object v0, p0, Lcom/mediatek/gallery3d/videowriter/VideoWriter;->mStsz:Lcom/mediatek/gallery3d/videowriter/FullBox;

    new-array v1, v2, [I

    aput p2, v1, v3

    invoke-virtual {v0, v1}, Lcom/mediatek/gallery3d/videowriter/FullBox;->add([I)V

    .line 122
    iget v0, p0, Lcom/mediatek/gallery3d/videowriter/VideoWriter;->mMdatSize:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/mediatek/gallery3d/videowriter/VideoWriter;->mMdatSize:I

    .line 123
    iget v0, p0, Lcom/mediatek/gallery3d/videowriter/VideoWriter;->mFrameNumber:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mediatek/gallery3d/videowriter/VideoWriter;->mFrameNumber:I

    .line 124
    if-eqz p3, :cond_0

    .line 125
    iget-object v0, p0, Lcom/mediatek/gallery3d/videowriter/VideoWriter;->mStss:Lcom/mediatek/gallery3d/videowriter/FullBox;

    new-array v1, v2, [I

    iget v2, p0, Lcom/mediatek/gallery3d/videowriter/VideoWriter;->mFrameNumber:I

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/mediatek/gallery3d/videowriter/FullBox;->add([I)V

    .line 127
    :cond_0
    return-void
.end method

.method public setCodecSpecifiData([B)V
    .locals 2
    .parameter "data"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/mediatek/gallery3d/videowriter/VideoWriter;->mEncoderType:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/gallery3d/videowriter/VideoWriter;->mEncoderType:Ljava/lang/String;

    const-string v1, "video/mp4v-es"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/mediatek/gallery3d/videowriter/VideoWriter;->mEsds:Lcom/mediatek/gallery3d/videowriter/DirectBox;

    invoke-virtual {v0, p1}, Lcom/mediatek/gallery3d/videowriter/DirectBox;->setCodecSpecifiData([B)V

    .line 135
    :cond_1
    :goto_0
    return-void

    .line 132
    :cond_2
    iget-object v0, p0, Lcom/mediatek/gallery3d/videowriter/VideoWriter;->mEncoderType:Ljava/lang/String;

    const-string v1, "video/avc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    iget-object v0, p0, Lcom/mediatek/gallery3d/videowriter/VideoWriter;->mAvcC:Lcom/mediatek/gallery3d/videowriter/DirectBox;

    invoke-virtual {v0, p1}, Lcom/mediatek/gallery3d/videowriter/DirectBox;->setCodecSpecifiData([B)V

    goto :goto_0
.end method

.method public setParameter(IF)V
    .locals 0
    .parameter "type"
    .parameter "data"

    .prologue
    .line 103
    if-nez p1, :cond_0

    .line 104
    iput p2, p0, Lcom/mediatek/gallery3d/videowriter/VideoWriter;->mFps:F

    .line 106
    :cond_0
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 109
    sget-object v0, Lcom/mediatek/gallery3d/videowriter/VideoWriter;->TAG:Ljava/lang/String;

    const-string v1, "video writer start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v0, p0, Lcom/mediatek/gallery3d/videowriter/VideoWriter;->mFtyp:Lcom/mediatek/gallery3d/videowriter/DirectBox;

    invoke-virtual {v0}, Lcom/mediatek/gallery3d/videowriter/Box;->wholeWrite()V

    .line 111
    iget-object v0, p0, Lcom/mediatek/gallery3d/videowriter/VideoWriter;->mMdat:Lcom/mediatek/gallery3d/videowriter/Box;

    invoke-virtual {v0}, Lcom/mediatek/gallery3d/videowriter/Box;->wholeWrite()V

    .line 113
    iget-object v0, p0, Lcom/mediatek/gallery3d/videowriter/VideoWriter;->mFtyp:Lcom/mediatek/gallery3d/videowriter/DirectBox;

    invoke-virtual {v0}, Lcom/mediatek/gallery3d/videowriter/Box;->getBoxSize()I

    move-result v0

    iget-object v1, p0, Lcom/mediatek/gallery3d/videowriter/VideoWriter;->mMdat:Lcom/mediatek/gallery3d/videowriter/Box;

    invoke-virtual {v1}, Lcom/mediatek/gallery3d/videowriter/Box;->getBoxSize()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/mediatek/gallery3d/videowriter/VideoWriter;->mChunkOffset:I

    .line 114
    iget-object v0, p0, Lcom/mediatek/gallery3d/videowriter/VideoWriter;->mFtyp:Lcom/mediatek/gallery3d/videowriter/DirectBox;

    invoke-virtual {v0}, Lcom/mediatek/gallery3d/videowriter/Box;->getBoxSize()I

    move-result v0

    iput v0, p0, Lcom/mediatek/gallery3d/videowriter/VideoWriter;->mMdatOffset:I

    .line 115
    iget-object v0, p0, Lcom/mediatek/gallery3d/videowriter/VideoWriter;->mMdat:Lcom/mediatek/gallery3d/videowriter/Box;

    invoke-virtual {v0}, Lcom/mediatek/gallery3d/videowriter/Box;->getBoxSize()I

    move-result v0

    iput v0, p0, Lcom/mediatek/gallery3d/videowriter/VideoWriter;->mMdatSize:I

    .line 116
    invoke-static {}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->writeBufToFile()V

    .line 117
    return-void
.end method
