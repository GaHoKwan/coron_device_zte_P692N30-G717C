.class public Lcom/mediatek/ngin3d/j3m/TextureCache;
.super Ljava/lang/Object;
.source "TextureCache.java"


# static fields
.field private static final MAX_GENERATOR_LIST_SIZE:I = 0x18

.field private static final PVR:Ljava/lang/String; = "pvr"

.field private static final TAG:Ljava/lang/String; = "TextureCache"


# instance fields
.field private final mEngine:Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;

.field private final mGeneratorCache:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/mediatek/ngin3d/presentation/BitmapGenerator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;)V
    .locals 1
    .parameter "engine"

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ngin3d/j3m/TextureCache;->mGeneratorCache:Ljava/util/LinkedList;

    .line 71
    iput-object p1, p0, Lcom/mediatek/ngin3d/j3m/TextureCache;->mEngine:Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;

    .line 72
    return-void
.end method


# virtual methods
.method protected addToGeneratorCache(Lcom/mediatek/ngin3d/presentation/BitmapGenerator;)V
    .locals 2
    .parameter "generator"

    .prologue
    .line 210
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/TextureCache;->mGeneratorCache:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 212
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/TextureCache;->mGeneratorCache:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 213
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/TextureCache;->mGeneratorCache:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 215
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/TextureCache;->mGeneratorCache:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 216
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/TextureCache;->mGeneratorCache:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v1, 0x18

    if-le v0, v1, :cond_0

    .line 217
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/TextureCache;->mGeneratorCache:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ngin3d/presentation/BitmapGenerator;

    invoke-virtual {v0}, Lcom/mediatek/ngin3d/presentation/BitmapGenerator;->free()V

    goto :goto_0
.end method

.method protected getTexture(I)Lcom/mediatek/j3m/Texture2D;
    .locals 2
    .parameter "id"

    .prologue
    .line 142
    iget-object v1, p0, Lcom/mediatek/ngin3d/j3m/TextureCache;->mEngine:Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;

    invoke-virtual {v1}, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, name:Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/ngin3d/j3m/TextureCache;->mEngine:Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;

    invoke-virtual {v1}, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->getAssetPool()Lcom/mediatek/j3m/AssetPool;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/mediatek/j3m/AssetPool;->getTexture2D(Ljava/lang/String;)Lcom/mediatek/j3m/Texture2D;

    move-result-object v1

    return-object v1
.end method

.method protected getTexture(Landroid/graphics/Bitmap;)Lcom/mediatek/j3m/Texture2D;
    .locals 10
    .parameter "bitmap"

    .prologue
    .line 93
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    const/4 v3, 0x0

    .line 95
    .local v3, format:I
    const/4 v4, 0x0

    .line 96
    .local v4, type:I
    const/4 v7, 0x4

    .line 115
    .local v7, bytes:I
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 116
    .local v2, height:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 118
    .local v1, width:I
    mul-int v0, v1, v2

    mul-int/2addr v0, v7

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 119
    .local v6, byteBuffer:Ljava/nio/ByteBuffer;
    invoke-virtual {p1, v6}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 120
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    .line 122
    .local v5, bitmapArray:[B
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/TextureCache;->mEngine:Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;

    invoke-virtual {v0}, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->getAssetPool()Lcom/mediatek/j3m/AssetPool;

    move-result-object v0

    invoke-interface/range {v0 .. v5}, Lcom/mediatek/j3m/AssetPool;->createTexture2D(IIII[B)Lcom/mediatek/j3m/Texture2D;

    move-result-object v8

    .line 124
    .end local v1           #width:I
    .end local v2           #height:I
    .end local v3           #format:I
    .end local v4           #type:I
    .end local v5           #bitmapArray:[B
    .end local v6           #byteBuffer:Ljava/nio/ByteBuffer;
    .end local v7           #bytes:I
    :goto_1
    return-object v8

    .line 97
    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    const/4 v3, 0x1

    .line 99
    .restart local v3       #format:I
    const/4 v4, 0x4

    .line 100
    .restart local v4       #type:I
    const/4 v7, 0x2

    .restart local v7       #bytes:I
    goto :goto_0

    .line 101
    .end local v3           #format:I
    .end local v4           #type:I
    .end local v7           #bytes:I
    :cond_1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 102
    const/4 v3, 0x4

    .line 103
    .restart local v3       #format:I
    const/4 v4, 0x0

    .line 104
    .restart local v4       #type:I
    const/4 v7, 0x1

    .restart local v7       #bytes:I
    goto :goto_0

    .line 105
    .end local v3           #format:I
    .end local v4           #type:I
    .end local v7           #bytes:I
    :cond_2
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 106
    const/4 v3, 0x0

    .line 107
    .restart local v3       #format:I
    const/4 v4, 0x2

    .line 108
    .restart local v4       #type:I
    const/4 v7, 0x2

    .line 109
    .restart local v7       #bytes:I
    const-string v0, "TextureCache"

    const-string v9, "Bitmap Config ARGB_4444 is deprecated."

    invoke-static {v0, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 111
    .end local v3           #format:I
    .end local v4           #type:I
    .end local v7           #bytes:I
    :cond_3
    const-string v0, "TextureCache"

    const-string v9, "Bitmap Config unrecognised."

    invoke-static {v0, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const/4 v8, 0x0

    goto :goto_1
.end method

.method public getTexture(Lcom/mediatek/ngin3d/presentation/ImageSource;)Lcom/mediatek/j3m/Texture2D;
    .locals 10
    .parameter "src"

    .prologue
    const/4 v1, 0x0

    .line 154
    iget v0, p1, Lcom/mediatek/ngin3d/presentation/ImageSource;->srcType:I

    packed-switch v0, :pswitch_data_0

    .line 204
    new-instance v0, Lcom/mediatek/ngin3d/utils/Ngin3dException;

    const-string v1, "Unsupported image source"

    invoke-direct {v0, v1}, Lcom/mediatek/ngin3d/utils/Ngin3dException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :pswitch_0
    iget-object v0, p1, Lcom/mediatek/ngin3d/presentation/ImageSource;->srcInfo:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/mediatek/ngin3d/j3m/TextureCache;->getTexture(Ljava/lang/String;)Lcom/mediatek/j3m/Texture2D;

    move-result-object v8

    .line 206
    .local v8, result:Lcom/mediatek/j3m/Texture2D;
    :cond_0
    :goto_0
    return-object v8

    .line 161
    .end local v8           #result:Lcom/mediatek/j3m/Texture2D;
    :pswitch_1
    iget-object v6, p1, Lcom/mediatek/ngin3d/presentation/ImageSource;->srcInfo:Ljava/lang/Object;

    check-cast v6, Landroid/graphics/Bitmap;

    .line 162
    .local v6, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {p0, v6}, Lcom/mediatek/ngin3d/j3m/TextureCache;->getTexture(Landroid/graphics/Bitmap;)Lcom/mediatek/j3m/Texture2D;

    move-result-object v8

    .line 164
    .restart local v8       #result:Lcom/mediatek/j3m/Texture2D;
    iget v0, p1, Lcom/mediatek/ngin3d/presentation/ImageSource;->options:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 165
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 171
    .end local v6           #bitmap:Landroid/graphics/Bitmap;
    .end local v8           #result:Lcom/mediatek/j3m/Texture2D;
    :pswitch_2
    iget-object v0, p1, Lcom/mediatek/ngin3d/presentation/ImageSource;->srcInfo:Ljava/lang/Object;

    check-cast v0, Lcom/mediatek/ngin3d/presentation/ImageDisplay$Resource;

    iget v0, v0, Lcom/mediatek/ngin3d/presentation/ImageDisplay$Resource;->resId:I

    invoke-virtual {p0, v0}, Lcom/mediatek/ngin3d/j3m/TextureCache;->getTexture(I)Lcom/mediatek/j3m/Texture2D;

    move-result-object v8

    .line 172
    .restart local v8       #result:Lcom/mediatek/j3m/Texture2D;
    goto :goto_0

    .line 176
    .end local v8           #result:Lcom/mediatek/j3m/Texture2D;
    :pswitch_3
    iget-object v0, p1, Lcom/mediatek/ngin3d/presentation/ImageSource;->srcInfo:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/mediatek/ngin3d/j3m/TextureCache;->getTexture(Ljava/lang/String;)Lcom/mediatek/j3m/Texture2D;

    move-result-object v8

    .line 177
    .restart local v8       #result:Lcom/mediatek/j3m/Texture2D;
    goto :goto_0

    .line 181
    .end local v8           #result:Lcom/mediatek/j3m/Texture2D;
    :pswitch_4
    iget-object v7, p1, Lcom/mediatek/ngin3d/presentation/ImageSource;->srcInfo:Ljava/lang/Object;

    check-cast v7, Lcom/mediatek/ngin3d/presentation/BitmapGenerator;

    .line 183
    .local v7, generator:Lcom/mediatek/ngin3d/presentation/BitmapGenerator;
    invoke-virtual {v7}, Lcom/mediatek/ngin3d/presentation/BitmapGenerator;->getCachedBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 184
    invoke-virtual {p0, v7}, Lcom/mediatek/ngin3d/j3m/TextureCache;->addToGeneratorCache(Lcom/mediatek/ngin3d/presentation/BitmapGenerator;)V

    .line 186
    :cond_1
    invoke-virtual {v7}, Lcom/mediatek/ngin3d/presentation/BitmapGenerator;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 187
    .restart local v6       #bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {p0, v6}, Lcom/mediatek/ngin3d/j3m/TextureCache;->getTexture(Landroid/graphics/Bitmap;)Lcom/mediatek/j3m/Texture2D;

    move-result-object v8

    .line 189
    .restart local v8       #result:Lcom/mediatek/j3m/Texture2D;
    iget v0, p1, Lcom/mediatek/ngin3d/presentation/ImageSource;->options:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 197
    .end local v6           #bitmap:Landroid/graphics/Bitmap;
    .end local v7           #generator:Lcom/mediatek/ngin3d/presentation/BitmapGenerator;
    .end local v8           #result:Lcom/mediatek/j3m/Texture2D;
    :pswitch_5
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/TextureCache;->mEngine:Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;

    invoke-virtual {v0}, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->getAssetPool()Lcom/mediatek/j3m/AssetPool;

    move-result-object v0

    const/4 v5, 0x0

    move v2, v1

    move v3, v1

    move v4, v1

    invoke-interface/range {v0 .. v5}, Lcom/mediatek/j3m/AssetPool;->createTexture2D(IIII[B)Lcom/mediatek/j3m/Texture2D;

    move-result-object v9

    .line 199
    .local v9, texture:Lcom/mediatek/j3m/Texture2D;
    move-object v8, v9

    .line 200
    .restart local v8       #result:Lcom/mediatek/j3m/Texture2D;
    goto :goto_0

    .line 154
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_3
    .end packed-switch
.end method

.method protected getTexture(Ljava/lang/String;)Lcom/mediatek/j3m/Texture2D;
    .locals 1
    .parameter "filename"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/TextureCache;->mEngine:Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;

    invoke-virtual {v0}, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->getAssetPool()Lcom/mediatek/j3m/AssetPool;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mediatek/j3m/AssetPool;->getTexture2D(Ljava/lang/String;)Lcom/mediatek/j3m/Texture2D;

    move-result-object v0

    return-object v0
.end method

.method public release(Ljava/lang/Object;)V
    .locals 2
    .parameter "key"

    .prologue
    .line 80
    const-string v0, "TextureCache"

    const-string v1, "release() not implemented."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    return-void
.end method
