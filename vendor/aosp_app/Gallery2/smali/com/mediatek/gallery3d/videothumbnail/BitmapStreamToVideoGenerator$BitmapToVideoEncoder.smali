.class Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$BitmapToVideoEncoder;
.super Ljava/lang/Object;
.source "BitmapStreamToVideoGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BitmapToVideoEncoder"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Gallery2/BitmapToVideoEncoder"


# instance fields
.field private dumpBitmap:Z

.field private dumpStream:Z

.field private frameNumber:I

.field mVideoW:Lcom/mediatek/gallery3d/videowriter/VideoWriter;

.field private mediaCodec:Landroid/media/MediaCodec;

.field private outputStream:Ljava/io/BufferedOutputStream;


# direct methods
.method public constructor <init>(Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$VideoConfig;Ljava/lang/String;)V
    .locals 11
    .parameter "config"
    .parameter "outputPath"

    .prologue
    const/4 v4, 0x1

    const/high16 v10, 0x447a

    const/4 v5, 0x0

    const/4 v9, 0x0

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    iput-boolean v9, p0, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$BitmapToVideoEncoder;->dumpBitmap:Z

    .line 163
    iput-boolean v9, p0, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$BitmapToVideoEncoder;->dumpStream:Z

    .line 164
    iput v9, p0, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$BitmapToVideoEncoder;->frameNumber:I

    .line 167
    iget-boolean v0, p0, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$BitmapToVideoEncoder;->dumpStream:Z

    if-eqz v0, :cond_0

    .line 168
    new-instance v7, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    const-string v1, "Download/debug.mp4"

    invoke-direct {v7, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 171
    .local v7, file:Ljava/io/File;
    :try_start_0
    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$BitmapToVideoEncoder;->outputStream:Ljava/io/BufferedOutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    .end local v7           #file:Ljava/io/File;
    :cond_0
    :goto_0
    const-string v0, "Gallery2/BitmapToVideoEncoder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init VideoWriter, size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$VideoConfig;->frameWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " * "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$VideoConfig;->frameHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    new-instance v0, Lcom/mediatek/gallery3d/videowriter/VideoWriter;

    iget v2, p1, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$VideoConfig;->frameWidth:I

    iget v3, p1, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$VideoConfig;->frameHeight:I

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/gallery3d/videowriter/VideoWriter;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$BitmapToVideoEncoder;->mVideoW:Lcom/mediatek/gallery3d/videowriter/VideoWriter;

    .line 178
    iget-object v0, p0, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$BitmapToVideoEncoder;->mVideoW:Lcom/mediatek/gallery3d/videowriter/VideoWriter;

    iget v1, p1, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$VideoConfig;->frameInterval:F

    div-float v1, v10, v1

    invoke-virtual {v0, v9, v1}, Lcom/mediatek/gallery3d/videowriter/VideoWriter;->setParameter(IF)V

    .line 179
    iget-object v0, p0, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$BitmapToVideoEncoder;->mVideoW:Lcom/mediatek/gallery3d/videowriter/VideoWriter;

    invoke-virtual {v0}, Lcom/mediatek/gallery3d/videowriter/VideoWriter;->start()V

    .line 181
    const-string v0, "video/mp4v-es"

    invoke-static {v0}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$BitmapToVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    .line 182
    const-string v0, "video/mp4v-es"

    iget v1, p1, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$VideoConfig;->frameWidth:I

    iget v2, p1, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$VideoConfig;->frameHeight:I

    invoke-static {v0, v1, v2}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v8

    .line 184
    .local v8, mediaFormat:Landroid/media/MediaFormat;
    const-string v0, "bitrate"

    iget v1, p1, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$VideoConfig;->bitRate:I

    invoke-virtual {v8, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 185
    const-string v0, "frame-rate"

    iget v1, p1, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$VideoConfig;->frameInterval:F

    div-float v1, v10, v1

    float-to-int v1, v1

    invoke-virtual {v8, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 186
    const-string v0, "color-format"

    const/16 v1, 0xb

    invoke-virtual {v8, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 188
    const-string v0, "i-frame-interval"

    iget v1, p1, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$VideoConfig;->framesBetweenIFrames:I

    invoke-virtual {v8, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 189
    iget-object v0, p0, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$BitmapToVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0, v8, v5, v5, v4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 191
    iget-object v0, p0, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$BitmapToVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 192
    return-void

    .line 172
    .end local v8           #mediaFormat:Landroid/media/MediaFormat;
    .restart local v7       #file:Ljava/io/File;
    :catch_0
    move-exception v6

    .line 173
    .local v6, e:Ljava/lang/Exception;
    const-string v0, "Gallery2/BitmapToVideoEncoder"

    const-string v1, "outputStream initialized fail!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private offerEncoder([B)V
    .locals 16
    .parameter "input"

    .prologue
    .line 210
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$BitmapToVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 211
    .local v11, inputBuffers:[Ljava/nio/ByteBuffer;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$BitmapToVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v15

    .line 212
    .local v15, outputBuffers:[Ljava/nio/ByteBuffer;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$BitmapToVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    const-wide/16 v3, -0x1

    invoke-virtual {v1, v3, v4}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v2

    .line 213
    .local v2, inputBufferIndex:I
    if-ltz v2, :cond_0

    .line 214
    aget-object v10, v11, v2

    .line 215
    .local v10, inputBuffer:Ljava/nio/ByteBuffer;
    invoke-virtual {v10}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    .line 216
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 217
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$BitmapToVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    const/4 v3, 0x0

    move-object/from16 v0, p1

    array-length v4, v0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 220
    .end local v10           #inputBuffer:Ljava/nio/ByteBuffer;
    :cond_0
    new-instance v8, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v8}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 221
    .local v8, bufferInfo:Landroid/media/MediaCodec$BufferInfo;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$BitmapToVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v8, v3, v4}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v14

    .line 222
    .local v14, outputBufferIndex:I
    :goto_0
    if-ltz v14, :cond_3

    .line 223
    aget-object v13, v15, v14

    .line 224
    .local v13, outputBuffer:Ljava/nio/ByteBuffer;
    iget v1, v8, Landroid/media/MediaCodec$BufferInfo;->size:I

    new-array v12, v1, [B

    .line 225
    .local v12, outData:[B
    invoke-virtual {v13, v12}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 226
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$BitmapToVideoEncoder;->dumpStream:Z

    if-eqz v1, :cond_1

    .line 227
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$BitmapToVideoEncoder;->outputStream:Ljava/io/BufferedOutputStream;

    const/4 v3, 0x0

    array-length v4, v12

    invoke-virtual {v1, v12, v3, v4}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 228
    const-string v1, "Gallery2/BitmapToVideoEncoder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "buffer flag:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v8, Landroid/media/MediaCodec$BufferInfo;->flags:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",length:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v8, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_1
    iget v1, v8, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    .line 231
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$BitmapToVideoEncoder;->mVideoW:Lcom/mediatek/gallery3d/videowriter/VideoWriter;

    invoke-virtual {v1, v12}, Lcom/mediatek/gallery3d/videowriter/VideoWriter;->setCodecSpecifiData([B)V

    .line 236
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$BitmapToVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    const/4 v3, 0x0

    invoke-virtual {v1, v14, v3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 237
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$BitmapToVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v8, v3, v4}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v14

    .line 238
    goto :goto_0

    .line 233
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$BitmapToVideoEncoder;->mVideoW:Lcom/mediatek/gallery3d/videowriter/VideoWriter;

    iget v4, v8, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget v1, v8, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    const/4 v5, 0x1

    if-ne v1, v5, :cond_4

    const/4 v1, 0x1

    :goto_2
    invoke-virtual {v3, v12, v4, v1}, Lcom/mediatek/gallery3d/videowriter/VideoWriter;->receiveFrameBuffer([BIZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 239
    .end local v2           #inputBufferIndex:I
    .end local v8           #bufferInfo:Landroid/media/MediaCodec$BufferInfo;
    .end local v11           #inputBuffers:[Ljava/nio/ByteBuffer;
    .end local v12           #outData:[B
    .end local v13           #outputBuffer:Ljava/nio/ByteBuffer;
    .end local v14           #outputBufferIndex:I
    .end local v15           #outputBuffers:[Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v9

    .line 240
    .local v9, e:Ljava/io/IOException;
    const-string v1, "Gallery2/BitmapToVideoEncoder"

    const-string v3, ""

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    .end local v9           #e:Ljava/io/IOException;
    :cond_3
    return-void

    .line 233
    .restart local v2       #inputBufferIndex:I
    .restart local v8       #bufferInfo:Landroid/media/MediaCodec$BufferInfo;
    .restart local v11       #inputBuffers:[Ljava/nio/ByteBuffer;
    .restart local v12       #outData:[B
    .restart local v13       #outputBuffer:Ljava/nio/ByteBuffer;
    .restart local v14       #outputBufferIndex:I
    .restart local v15       #outputBuffers:[Ljava/nio/ByteBuffer;
    :cond_4
    const/4 v1, 0x0

    goto :goto_2
.end method


# virtual methods
.method public addFrame(Landroid/graphics/Bitmap;)V
    .locals 18
    .parameter "bitmap"

    .prologue
    .line 245
    const/4 v14, 0x0

    .line 246
    .local v14, len:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 247
    .local v5, bitmapWidth:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 249
    .local v9, bitmapHeight:I
    mul-int v2, v5, v9

    new-array v3, v2, [I

    .line 250
    .local v3, intArray:[I
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p1

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 251
    mul-int v2, v5, v9

    mul-int/lit8 v2, v2, 0x3

    new-array v11, v2, [B

    .line 252
    .local v11, byteArray:[B
    move-object v10, v3

    .local v10, arr$:[I
    array-length v0, v10

    move/from16 v16, v0

    .local v16, len$:I
    const/4 v13, 0x0

    .local v13, i$:I
    move v15, v14

    .end local v14           #len:I
    .local v15, len:I
    :goto_0
    move/from16 v0, v16

    if-ge v13, v0, :cond_0

    aget v12, v10, v13

    .line 253
    .local v12, i:I
    mul-int/lit8 v2, v15, 0x3

    add-int/lit8 v2, v2, 0x0

    const/high16 v4, 0xff

    and-int/2addr v4, v12

    shr-int/lit8 v4, v4, 0x10

    int-to-byte v4, v4

    aput-byte v4, v11, v2

    .line 254
    mul-int/lit8 v2, v15, 0x3

    add-int/lit8 v2, v2, 0x1

    const v4, 0xff00

    and-int/2addr v4, v12

    shr-int/lit8 v4, v4, 0x8

    int-to-byte v4, v4

    aput-byte v4, v11, v2

    .line 255
    add-int/lit8 v14, v15, 0x1

    .end local v15           #len:I
    .restart local v14       #len:I
    mul-int/lit8 v2, v15, 0x3

    add-int/lit8 v2, v2, 0x2

    and-int/lit16 v4, v12, 0xff

    shr-int/lit8 v4, v4, 0x0

    int-to-byte v4, v4

    aput-byte v4, v11, v2

    .line 252
    add-int/lit8 v13, v13, 0x1

    move v15, v14

    .end local v14           #len:I
    .restart local v15       #len:I
    goto :goto_0

    .line 258
    .end local v12           #i:I
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$BitmapToVideoEncoder;->dumpBitmap:Z

    if-eqz v2, :cond_1

    .line 259
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Download/bitmapToVideo_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$BitmapToVideoEncoder;->frameNumber:I

    add-int/lit8 v6, v4, 0x1

    move-object/from16 v0, p0

    iput v6, v0, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$BitmapToVideoEncoder;->frameNumber:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 260
    .local v17, strName:Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkUtils;->dumpBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 262
    .end local v17           #strName:Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$BitmapToVideoEncoder;->offerEncoder([B)V

    .line 263
    return-void
.end method

.method public close()V
    .locals 2

    .prologue
    .line 195
    iget-object v1, p0, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$BitmapToVideoEncoder;->mVideoW:Lcom/mediatek/gallery3d/videowriter/VideoWriter;

    invoke-virtual {v1}, Lcom/mediatek/gallery3d/videowriter/VideoWriter;->close()V

    .line 197
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$BitmapToVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->stop()V

    .line 198
    iget-object v1, p0, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$BitmapToVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    .line 199
    iget-boolean v1, p0, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$BitmapToVideoEncoder;->dumpStream:Z

    if-eqz v1, :cond_0

    .line 200
    iget-object v1, p0, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$BitmapToVideoEncoder;->outputStream:Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 201
    iget-object v1, p0, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$BitmapToVideoEncoder;->outputStream:Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 203
    :catch_0
    move-exception v0

    .line 204
    .local v0, t:Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
