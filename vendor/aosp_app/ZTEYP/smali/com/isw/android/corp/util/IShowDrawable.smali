.class public Lcom/isw/android/corp/util/IShowDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "IShowDrawable.java"


# static fields
.field static height:I

.field static width:I


# instance fields
.field final handler:Landroid/os/Handler;

.field iImgPath:Ljava/lang/String;

.field iRectHight:I

.field iRectWidth:I

.field isGif:Z

.field myHeigth:I

.field myWidth:I

.field paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "imgPath"

    .prologue
    .line 75
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 55
    new-instance v0, Lcom/isw/android/corp/util/IShowDrawable$1;

    invoke-direct {v0, p0}, Lcom/isw/android/corp/util/IShowDrawable$1;-><init>(Lcom/isw/android/corp/util/IShowDrawable;)V

    iput-object v0, p0, Lcom/isw/android/corp/util/IShowDrawable;->handler:Landroid/os/Handler;

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isw/android/corp/util/IShowDrawable;->isGif:Z

    .line 76
    iput-object p1, p0, Lcom/isw/android/corp/util/IShowDrawable;->iImgPath:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/widget/ImageView;II)V
    .locals 1
    .parameter "imgPath"
    .parameter "imageView"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 55
    new-instance v0, Lcom/isw/android/corp/util/IShowDrawable$1;

    invoke-direct {v0, p0}, Lcom/isw/android/corp/util/IShowDrawable$1;-><init>(Lcom/isw/android/corp/util/IShowDrawable;)V

    iput-object v0, p0, Lcom/isw/android/corp/util/IShowDrawable;->handler:Landroid/os/Handler;

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isw/android/corp/util/IShowDrawable;->isGif:Z

    .line 67
    iput-object p1, p0, Lcom/isw/android/corp/util/IShowDrawable;->iImgPath:Ljava/lang/String;

    .line 69
    iput p3, p0, Lcom/isw/android/corp/util/IShowDrawable;->myWidth:I

    .line 70
    iput p4, p0, Lcom/isw/android/corp/util/IShowDrawable;->myHeigth:I

    .line 73
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 19
    .parameter "canvas"

    .prologue
    .line 91
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isw/android/corp/util/IShowDrawable;->paint:Landroid/graphics/Paint;

    if-nez v2, :cond_0

    .line 92
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/isw/android/corp/util/IShowDrawable;->paint:Landroid/graphics/Paint;

    .line 93
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isw/android/corp/util/IShowDrawable;->paint:Landroid/graphics/Paint;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 97
    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    sget v4, Lcom/isw/android/corp/util/IShowDrawable;->width:I

    int-to-float v4, v4

    sget v5, Lcom/isw/android/corp/util/IShowDrawable;->height:I

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isw/android/corp/util/IShowDrawable;->paint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 98
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isw/android/corp/util/IShowDrawable;->iImgPath:Ljava/lang/String;

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 99
    .local v1, bitmap:Landroid/graphics/Bitmap;
    if-nez v1, :cond_1

    .line 177
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    :goto_0
    return-void

    .line 103
    .restart local v1       #bitmap:Landroid/graphics/Bitmap;
    :cond_1
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 104
    .local v9, bitmapWidth:I
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 106
    .local v8, bitmapHeight:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/isw/android/corp/util/IShowDrawable;->setWidth(I)V

    .line 107
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/isw/android/corp/util/IShowDrawable;->setHeight(I)V

    .line 109
    const/4 v13, 0x0

    .line 110
    .local v13, imageViewWidth:F
    const/4 v12, 0x0

    .line 112
    .local v12, imageViewHeight:F
    const/4 v6, 0x0

    .line 115
    .local v6, matrix:Landroid/graphics/Matrix;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/isw/android/corp/util/IShowDrawable;->myWidth:I

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget v2, v0, Lcom/isw/android/corp/util/IShowDrawable;->myHeigth:I

    if-eqz v2, :cond_5

    .line 116
    move-object/from16 v0, p0

    iget v2, v0, Lcom/isw/android/corp/util/IShowDrawable;->myWidth:I

    int-to-float v13, v2

    .line 117
    move-object/from16 v0, p0

    iget v2, v0, Lcom/isw/android/corp/util/IShowDrawable;->myHeigth:I

    int-to-float v12, v2

    .line 119
    const/16 v18, 0x0

    .line 120
    .local v18, widthScaleMatrix:F
    const/4 v11, 0x0

    .line 121
    .local v11, heightScaleMatrix:F
    const/4 v15, 0x0

    .line 124
    .local v15, scaleMatrix:F
    int-to-float v2, v9

    cmpl-float v2, v2, v13

    if-gtz v2, :cond_7

    int-to-float v2, v8

    cmpl-float v2, v2, v12

    if-gtz v2, :cond_7

    const/16 v16, 0x0

    .line 125
    .local v16, tooBig:Z
    :goto_1
    int-to-float v2, v9

    cmpg-float v2, v2, v13

    if-ltz v2, :cond_8

    int-to-float v2, v8

    cmpg-float v2, v2, v12

    if-ltz v2, :cond_8

    const/16 v17, 0x0

    .line 127
    .local v17, tooSmall:Z
    :goto_2
    if-nez v16, :cond_2

    if-eqz v17, :cond_5

    .line 128
    :cond_2
    int-to-float v2, v9

    div-float v18, v13, v2

    .line 129
    int-to-float v2, v8

    div-float v11, v12, v2

    .line 132
    if-eqz v16, :cond_3

    .line 133
    cmpl-float v2, v18, v11

    if-lez v2, :cond_9

    move v15, v11

    .line 135
    :goto_3
    int-to-float v2, v9

    mul-float/2addr v2, v15

    float-to-int v2, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/isw/android/corp/util/IShowDrawable;->setWidth(I)V

    .line 136
    int-to-float v2, v8

    mul-float/2addr v2, v15

    float-to-int v2, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/isw/android/corp/util/IShowDrawable;->setHeight(I)V

    .line 138
    :cond_3
    if-eqz v17, :cond_4

    .line 139
    float-to-int v2, v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/isw/android/corp/util/IShowDrawable;->setWidth(I)V

    .line 140
    float-to-int v2, v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/isw/android/corp/util/IShowDrawable;->setHeight(I)V

    .line 145
    :cond_4
    new-instance v6, Landroid/graphics/Matrix;

    .end local v6           #matrix:Landroid/graphics/Matrix;
    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 146
    .restart local v6       #matrix:Landroid/graphics/Matrix;
    move/from16 v0, v18

    invoke-virtual {v6, v0, v11}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 149
    .end local v11           #heightScaleMatrix:F
    .end local v15           #scaleMatrix:F
    .end local v16           #tooBig:Z
    .end local v17           #tooSmall:Z
    .end local v18           #widthScaleMatrix:F
    :cond_5
    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/isw/android/corp/util/IShowDrawable;->width:I

    sget v5, Lcom/isw/android/corp/util/IShowDrawable;->height:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/isw/android/corp/util/IShowDrawable;->setBounds(IIII)V

    .line 150
    if-eqz v6, :cond_a

    .line 151
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v7, 0x1

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 152
    .local v14, resizedBitmap:Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isw/android/corp/util/IShowDrawable;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 159
    .end local v14           #resizedBitmap:Landroid/graphics/Bitmap;
    :goto_4
    if-eqz v6, :cond_6

    .line 160
    const/4 v6, 0x0

    .line 165
    :cond_6
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 167
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .end local v6           #matrix:Landroid/graphics/Matrix;
    .end local v8           #bitmapHeight:I
    .end local v9           #bitmapWidth:I
    .end local v12           #imageViewHeight:F
    .end local v13           #imageViewWidth:F
    :catch_0
    move-exception v10

    .line 168
    .local v10, e:Ljava/lang/OutOfMemoryError;
    const-string v2, " IShowDrawable exception "

    const-string v3, "OutOfMemoryError"

    invoke-static {v2, v3}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 124
    .end local v10           #e:Ljava/lang/OutOfMemoryError;
    .restart local v1       #bitmap:Landroid/graphics/Bitmap;
    .restart local v6       #matrix:Landroid/graphics/Matrix;
    .restart local v8       #bitmapHeight:I
    .restart local v9       #bitmapWidth:I
    .restart local v11       #heightScaleMatrix:F
    .restart local v12       #imageViewHeight:F
    .restart local v13       #imageViewWidth:F
    .restart local v15       #scaleMatrix:F
    .restart local v18       #widthScaleMatrix:F
    :cond_7
    const/16 v16, 0x1

    goto :goto_1

    .line 125
    .restart local v16       #tooBig:Z
    :cond_8
    const/16 v17, 0x1

    goto :goto_2

    .restart local v17       #tooSmall:Z
    :cond_9
    move/from16 v15, v18

    .line 133
    goto :goto_3

    .line 156
    .end local v11           #heightScaleMatrix:F
    .end local v15           #scaleMatrix:F
    .end local v16           #tooBig:Z
    .end local v17           #tooSmall:Z
    .end local v18           #widthScaleMatrix:F
    :cond_a
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/isw/android/corp/util/IShowDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/isw/android/corp/util/IShowDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isw/android/corp/util/IShowDrawable;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    .line 169
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .end local v6           #matrix:Landroid/graphics/Matrix;
    .end local v8           #bitmapHeight:I
    .end local v9           #bitmapWidth:I
    .end local v12           #imageViewHeight:F
    .end local v13           #imageViewWidth:F
    :catch_1
    move-exception v10

    .line 170
    .local v10, e:Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    .line 171
    const-string v2, " IShowDrawable exception "

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "  picture path:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isw/android/corp/util/IShowDrawable;->iImgPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 173
    invoke-static {}, Ljava/lang/System;->runFinalization()V

    .line 174
    const-string v2, "freeMemory"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "-------------"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public fileConnect(Ljava/lang/String;)[B
    .locals 6
    .parameter "imgFilePath"

    .prologue
    .line 233
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 234
    .local v4, is:Ljava/io/FileInputStream;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 235
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    const/4 v1, 0x0

    .line 236
    .local v1, ch:I
    :goto_0
    invoke-virtual {v4}, Ljava/io/FileInputStream;->read()I

    move-result v1

    const/4 v5, -0x1

    if-ne v1, v5, :cond_0

    .line 240
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 241
    .local v2, datas:[B
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 242
    const/4 v0, 0x0

    .line 243
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 244
    const/4 v4, 0x0

    .line 249
    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v1           #ch:I
    .end local v2           #datas:[B
    .end local v4           #is:Ljava/io/FileInputStream;
    :goto_1
    return-object v2

    .line 238
    .restart local v0       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #ch:I
    .restart local v4       #is:Ljava/io/FileInputStream;
    :cond_0
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 247
    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v1           #ch:I
    .end local v4           #is:Ljava/io/FileInputStream;
    :catch_0
    move-exception v3

    .line 249
    .local v3, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 265
    sget v0, Lcom/isw/android/corp/util/IShowDrawable;->height:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public getRgbBitMap()[I
    .locals 10

    .prologue
    .line 196
    const/4 v1, 0x0

    .line 200
    .local v1, rgb:[I
    const/4 v0, 0x0

    .line 202
    .local v0, bitmap:Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v9, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/isw/android/corp/util/IShowDrawable;->iImgPath:Ljava/lang/String;

    invoke-direct {v9, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 203
    .local v9, fis:Ljava/io/FileInputStream;
    invoke-static {v9}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 205
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sput v2, Lcom/isw/android/corp/util/IShowDrawable;->width:I

    .line 206
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sput v2, Lcom/isw/android/corp/util/IShowDrawable;->height:I

    .line 209
    sget v2, Lcom/isw/android/corp/util/IShowDrawable;->width:I

    iput v2, p0, Lcom/isw/android/corp/util/IShowDrawable;->iRectWidth:I

    .line 210
    sget v2, Lcom/isw/android/corp/util/IShowDrawable;->height:I

    iput v2, p0, Lcom/isw/android/corp/util/IShowDrawable;->iRectHight:I

    .line 211
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int/2addr v2, v3

    new-array v1, v2, [I

    .line 212
    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 213
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 212
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 215
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    .end local v9           #fis:Ljava/io/FileInputStream;
    :goto_0
    return-object v1

    .line 217
    :catch_0
    move-exception v8

    .line 218
    .local v8, e:Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getRgbFromBitmap(Landroid/graphics/Bitmap;)[I
    .locals 8
    .parameter "bitmap"

    .prologue
    const/4 v2, 0x0

    .line 182
    const/4 v1, 0x0

    .line 183
    .local v1, rgb:[I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    sput v0, Lcom/isw/android/corp/util/IShowDrawable;->width:I

    .line 184
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    sput v0, Lcom/isw/android/corp/util/IShowDrawable;->height:I

    .line 185
    sget v0, Lcom/isw/android/corp/util/IShowDrawable;->width:I

    iput v0, p0, Lcom/isw/android/corp/util/IShowDrawable;->iRectWidth:I

    .line 186
    sget v0, Lcom/isw/android/corp/util/IShowDrawable;->height:I

    iput v0, p0, Lcom/isw/android/corp/util/IShowDrawable;->iRectHight:I

    .line 188
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int/2addr v0, v3

    new-array v1, v0, [I

    .line 189
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 190
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    move-object v0, p1

    move v4, v2

    move v5, v2

    .line 189
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 192
    return-object v1
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 255
    sget v0, Lcom/isw/android/corp/util/IShowDrawable;->width:I

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 84
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .parameter "cf"

    .prologue
    .line 81
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 271
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .parameter "width"

    .prologue
    .line 261
    return-void
.end method
