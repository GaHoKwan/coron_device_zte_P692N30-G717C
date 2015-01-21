.class public Lcom/mediatek/ngin3d/TextureAtlas;
.super Ljava/lang/Object;
.source "TextureAtlas.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ngin3d/TextureAtlas$Atlas;
    }
.end annotation


# static fields
.field private static final FRAME:Ljava/lang/String; = "frame"

.field private static final FRAMES:Ljava/lang/String; = "frames"

.field private static final HEIGHT:Ljava/lang/String; = "h"

.field private static final ROTATED:Ljava/lang/String; = "rotated"

.field private static final SOURCE_SIZE:Ljava/lang/String; = "sourceSize"

.field private static final SPRITE_SOURCE_SIZE:Ljava/lang/String; = "spriteSourceSize"

.field private static final TRIMMED:Ljava/lang/String; = "trimmed"

.field private static final WIDTH:Ljava/lang/String; = "w"

.field private static final X:Ljava/lang/String; = "x"

.field private static final Y:Ljava/lang/String; = "y"

.field private static sDefault:Lcom/mediatek/ngin3d/TextureAtlas;


# instance fields
.field private final mAtlasSet:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/mediatek/ngin3d/TextureAtlas$Atlas;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ngin3d/TextureAtlas;->mAtlasSet:Ljava/util/HashMap;

    .line 89
    return-void
.end method

.method public static getDefault()Lcom/mediatek/ngin3d/TextureAtlas;
    .locals 2

    .prologue
    .line 76
    const-class v1, Lcom/mediatek/ngin3d/TextureAtlas;

    monitor-enter v1

    .line 77
    :try_start_0
    sget-object v0, Lcom/mediatek/ngin3d/TextureAtlas;->sDefault:Lcom/mediatek/ngin3d/TextureAtlas;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Lcom/mediatek/ngin3d/TextureAtlas;

    invoke-direct {v0}, Lcom/mediatek/ngin3d/TextureAtlas;-><init>()V

    sput-object v0, Lcom/mediatek/ngin3d/TextureAtlas;->sDefault:Lcom/mediatek/ngin3d/TextureAtlas;

    .line 80
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    sget-object v0, Lcom/mediatek/ngin3d/TextureAtlas;->sDefault:Lcom/mediatek/ngin3d/TextureAtlas;

    return-object v0

    .line 80
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getJSONObject(Landroid/content/res/Resources;I)Lorg/json/JSONObject;
    .locals 9
    .parameter "resources"
    .parameter "scriptId"

    .prologue
    .line 117
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v4

    .line 119
    .local v4, is:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {v4}, Ljava/io/InputStream;->available()I

    move-result v5

    .line 120
    .local v5, length:I
    new-array v1, v5, [B

    .line 121
    .local v1, b:[B
    const/4 v7, 0x0

    invoke-virtual {v4, v1, v7, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    if-ne v7, v5, :cond_0

    .line 122
    new-instance v6, Ljava/lang/String;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v7

    invoke-direct {v6, v1, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 123
    .local v6, s:Ljava/lang/String;
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 124
    .local v0, atlas:Lorg/json/JSONObject;
    const-string v7, "frames"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 133
    .local v3, frames:Lorg/json/JSONObject;
    invoke-static {v4}, Lcom/mediatek/ngin3d/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 135
    return-object v3

    .line 126
    .end local v0           #atlas:Lorg/json/JSONObject;
    .end local v3           #frames:Lorg/json/JSONObject;
    .end local v6           #s:Ljava/lang/String;
    :cond_0
    :try_start_1
    new-instance v7, Lcom/mediatek/ngin3d/utils/Ngin3dException;

    const-string v8, "JSON of Packer List doesn\'t read completely"

    invoke-direct {v7, v8}, Lcom/mediatek/ngin3d/utils/Ngin3dException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 128
    .end local v1           #b:[B
    .end local v5           #length:I
    :catch_0
    move-exception v2

    .line 129
    .local v2, e:Ljava/io/IOException;
    :try_start_2
    new-instance v7, Lcom/mediatek/ngin3d/utils/Ngin3dException;

    invoke-direct {v7, v2}, Lcom/mediatek/ngin3d/utils/Ngin3dException;-><init>(Ljava/lang/Throwable;)V

    throw v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 133
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v7

    invoke-static {v4}, Lcom/mediatek/ngin3d/Utils;->closeQuietly(Ljava/io/Closeable;)V

    throw v7

    .line 130
    :catch_1
    move-exception v2

    .line 131
    .local v2, e:Lorg/json/JSONException;
    :try_start_3
    new-instance v7, Lcom/mediatek/ngin3d/utils/Ngin3dException;

    invoke-direct {v7, v2}, Lcom/mediatek/ngin3d/utils/Ngin3dException;-><init>(Ljava/lang/Throwable;)V

    throw v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method private getResourceFilename(Lcom/mediatek/ngin3d/presentation/ImageDisplay$Resource;)Ljava/lang/String;
    .locals 3
    .parameter "res"

    .prologue
    .line 175
    iget-object v1, p1, Lcom/mediatek/ngin3d/presentation/ImageDisplay$Resource;->resources:Landroid/content/res/Resources;

    iget v2, p1, Lcom/mediatek/ngin3d/presentation/ImageDisplay$Resource;->resId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 176
    .local v0, resName:Ljava/lang/String;
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public add(Landroid/content/res/Resources;II)V
    .locals 4
    .parameter "resources"
    .parameter "atlasId"
    .parameter "scriptId"

    .prologue
    .line 163
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 164
    .local v1, name:Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/ngin3d/TextureAtlas;->mAtlasSet:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    invoke-direct {p0, p1, p3}, Lcom/mediatek/ngin3d/TextureAtlas;->getJSONObject(Landroid/content/res/Resources;I)Lorg/json/JSONObject;

    move-result-object v0

    .line 169
    .local v0, frames:Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 170
    iget-object v2, p0, Lcom/mediatek/ngin3d/TextureAtlas;->mAtlasSet:Ljava/util/HashMap;

    new-instance v3, Lcom/mediatek/ngin3d/TextureAtlas$Atlas;

    invoke-direct {v3, p2, v0}, Lcom/mediatek/ngin3d/TextureAtlas$Atlas;-><init>(ILorg/json/JSONObject;)V

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public add(Landroid/content/res/Resources;Ljava/lang/String;I)V
    .locals 3
    .parameter "resources"
    .parameter "asset"
    .parameter "scriptId"

    .prologue
    .line 146
    iget-object v1, p0, Lcom/mediatek/ngin3d/TextureAtlas;->mAtlasSet:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    invoke-direct {p0, p1, p3}, Lcom/mediatek/ngin3d/TextureAtlas;->getJSONObject(Landroid/content/res/Resources;I)Lorg/json/JSONObject;

    move-result-object v0

    .line 150
    .local v0, frames:Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 151
    iget-object v1, p0, Lcom/mediatek/ngin3d/TextureAtlas;->mAtlasSet:Ljava/util/HashMap;

    new-instance v2, Lcom/mediatek/ngin3d/TextureAtlas$Atlas;

    invoke-direct {v2, p2, v0}, Lcom/mediatek/ngin3d/TextureAtlas$Atlas;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-virtual {v1, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public cleanup()V
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/mediatek/ngin3d/TextureAtlas;->mAtlasSet:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 216
    return-void
.end method

.method public getFrame(Lcom/mediatek/ngin3d/presentation/ImageDisplay$Resource;Lcom/mediatek/ngin3d/Box;Lcom/mediatek/ngin3d/Dimension;)Lcom/mediatek/ngin3d/TextureAtlas$Atlas;
    .locals 15
    .parameter "res"
    .parameter "rect"
    .parameter "size"

    .prologue
    .line 190
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/ngin3d/TextureAtlas;->getResourceFilename(Lcom/mediatek/ngin3d/presentation/ImageDisplay$Resource;)Ljava/lang/String;

    move-result-object v2

    .line 192
    .local v2, fileName:Ljava/lang/String;
    iget-object v11, p0, Lcom/mediatek/ngin3d/TextureAtlas;->mAtlasSet:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ngin3d/TextureAtlas$Atlas;

    .line 193
    .local v1, atlas:Lcom/mediatek/ngin3d/TextureAtlas$Atlas;
    iget-object v11, v1, Lcom/mediatek/ngin3d/TextureAtlas$Atlas;->mFrames:Lorg/json/JSONObject;

    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 194
    .local v6, resObject:Lorg/json/JSONObject;
    if-eqz v6, :cond_0

    .line 195
    const-string v11, "frame"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 196
    .local v3, frame:Lorg/json/JSONObject;
    const-string v11, "x"

    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    .line 197
    .local v9, x:I
    const-string v11, "y"

    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    .line 198
    .local v10, y:I
    const-string v11, "w"

    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    .line 199
    .local v8, w:I
    const-string v11, "h"

    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    .line 200
    .local v4, h:I
    int-to-float v11, v9

    int-to-float v12, v10

    add-int v13, v8, v9

    int-to-float v13, v13

    add-int v14, v4, v10

    int-to-float v14, v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12, v13, v14}, Lcom/mediatek/ngin3d/Box;->set(FFFF)V

    .line 202
    const-string v11, "sourceSize"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 203
    .local v7, sourceSize:Lorg/json/JSONObject;
    const-string v11, "w"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v11

    int-to-float v11, v11

    move-object/from16 v0, p3

    iput v11, v0, Lcom/mediatek/ngin3d/Dimension;->width:F

    .line 204
    const-string v11, "h"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v11

    int-to-float v11, v11

    move-object/from16 v0, p3

    iput v11, v0, Lcom/mediatek/ngin3d/Dimension;->height:F

    .line 208
    .end local v1           #atlas:Lcom/mediatek/ngin3d/TextureAtlas$Atlas;
    .end local v3           #frame:Lorg/json/JSONObject;
    .end local v4           #h:I
    .end local v6           #resObject:Lorg/json/JSONObject;
    .end local v7           #sourceSize:Lorg/json/JSONObject;
    .end local v8           #w:I
    .end local v9           #x:I
    .end local v10           #y:I
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/mediatek/ngin3d/TextureAtlas;->mAtlasSet:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    return v0
.end method
