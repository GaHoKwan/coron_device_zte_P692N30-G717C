.class public Lcom/mediatek/ngin3d/animation/KeyframeDataLoader;
.super Ljava/lang/Object;
.source "KeyframeDataLoader.java"


# static fields
.field static final ACTION:Ljava/lang/String; = "Action"

.field static final ANCHOR_POINT:Ljava/lang/String; = "AnchorPoint"

.field private static final ANIMATION_TYPES:[I = null

.field static final COMPOSITIONS:Ljava/lang/String; = "Compositions"

.field static final COMPOSITION_DURATION:Ljava/lang/String; = "CompDur"

.field static final COMPOSITION_IN:Ljava/lang/String; = "CompIn"

.field static final COMP_HEIGHT:Ljava/lang/String; = "Height"

.field static final COMP_WIDTH:Ljava/lang/String; = "Width"

.field static final CURVE_TYPE:Ljava/lang/String; = "Type"

.field static final DURATION:Ljava/lang/String; = "Dur"

.field static final FRAMES:Ljava/lang/String; = "Frames"

.field static final IN_TANVAL:Ljava/lang/String; = "InTanX"

.field static final IN_TANX:Ljava/lang/String; = "InTanX"

.field static final IN_TANY:Ljava/lang/String; = "InTanY"

.field static final IN_TANZ:Ljava/lang/String; = "InTanZ"

.field static final KEYFRAMES:Ljava/lang/String; = "Keyframes"

.field static final KEYFRAME_TIME:Ljava/lang/String; = "Time"

.field static final LAYERS:Ljava/lang/String; = "Layers"

.field static final LAYER_HEIGHT:Ljava/lang/String; = "LayHeight"

.field static final LAYER_WIDTH:Ljava/lang/String; = "LayWidth"

.field static final MARKER:Ljava/lang/String; = "Marker"

.field static final MARKER_TIME:Ljava/lang/String; = "Time"

.field static final NORMALIZATION:Ljava/lang/String; = "Normalization"

.field static final OPACITY:Ljava/lang/String; = "Opacity"

.field static final ORIENTATION:Ljava/lang/String; = "Orientation"

.field static final OUT_TANVAL:Ljava/lang/String; = "OutTanX"

.field static final OUT_TANX:Ljava/lang/String; = "OutTanX"

.field static final OUT_TANY:Ljava/lang/String; = "OutTanY"

.field static final OUT_TANZ:Ljava/lang/String; = "OutTanZ"

.field static final PARAMETERS:Ljava/lang/String; = "Parameters"

.field static final POINT_OF_INTEREST:Ljava/lang/String; = "PointOfInterest"

.field static final POSITION:Ljava/lang/String; = "Position"

.field static final ROTATION:Ljava/lang/String; = "Rotation"

.field static final SCALE:Ljava/lang/String; = "Scale"

.field static final TAG:Ljava/lang/String; = "KeyframeDataLoader"

.field static final TRANSFORM:Ljava/lang/String; = "Transform"

.field static final VALUE:Ljava/lang/String; = "Val"

.field static final VERSION:Ljava/lang/String; = "Version"

.field static final XROTATION:Ljava/lang/String; = "XRotation"

.field static final X_AXIS:Ljava/lang/String; = "X"

.field static final YROTATION:Ljava/lang/String; = "YRotation"

.field static final Y_AXIS:Ljava/lang/String; = "Y"

.field static final ZROTATION:Ljava/lang/String; = "ZRotation"

.field static final Z_AXIS:Ljava/lang/String; = "Z"


# instance fields
.field private mProject:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 107
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mediatek/ngin3d/animation/KeyframeDataLoader;->ANIMATION_TYPES:[I

    return-void

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 7
    .parameter "context"
    .parameter "resId"

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    .line 116
    .local v2, i:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v3

    .line 117
    .local v3, length:I
    new-array v0, v3, [B

    .line 118
    .local v0, b:[B
    const/4 v6, 0x0

    invoke-virtual {v2, v0, v6, v3}, Ljava/io/InputStream;->read([BII)I

    .line 119
    new-instance v5, Ljava/lang/String;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v6

    invoke-direct {v5, v0, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 120
    .local v5, s:Ljava/lang/String;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 121
    .local v4, obj:Lorg/json/JSONObject;
    iput-object v4, p0, Lcom/mediatek/ngin3d/animation/KeyframeDataLoader;->mProject:Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 127
    invoke-static {v2}, Lcom/mediatek/ngin3d/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 129
    return-void

    .line 122
    .end local v0           #b:[B
    .end local v3           #length:I
    .end local v4           #obj:Lorg/json/JSONObject;
    .end local v5           #s:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 123
    .local v1, e:Ljava/io/IOException;
    :try_start_1
    new-instance v6, Lcom/mediatek/ngin3d/utils/Ngin3dException;

    invoke-direct {v6, v1}, Lcom/mediatek/ngin3d/utils/Ngin3dException;-><init>(Ljava/lang/Throwable;)V

    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 127
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    invoke-static {v2}, Lcom/mediatek/ngin3d/Utils;->closeQuietly(Ljava/io/Closeable;)V

    throw v6

    .line 124
    :catch_1
    move-exception v1

    .line 125
    .local v1, e:Lorg/json/JSONException;
    :try_start_2
    new-instance v6, Lcom/mediatek/ngin3d/utils/Ngin3dException;

    invoke-direct {v6, v1}, Lcom/mediatek/ngin3d/utils/Ngin3dException;-><init>(Ljava/lang/Throwable;)V

    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method private fillJsonToArray([ILorg/json/JSONArray;I)V
    .locals 3
    .parameter "dest"
    .parameter "src"
    .parameter "size"

    .prologue
    .line 218
    if-nez p2, :cond_1

    .line 219
    const-string v1, "KeyframeDataLoader"

    const-string v2, "Null src is specified"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :cond_0
    return-void

    .line 222
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 223
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->optInt(I)I

    move-result v1

    aput v1, p1, v0

    .line 222
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private fillJsonToFloatArray([FLorg/json/JSONArray;I)V
    .locals 3
    .parameter "dest"
    .parameter "src"
    .parameter "size"

    .prologue
    .line 208
    if-nez p2, :cond_1

    .line 209
    const-string v1, "KeyframeDataLoader"

    const-string v2, "Null src is specified"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :cond_0
    return-void

    .line 212
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 213
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v1

    double-to-float v1, v1

    aput v1, p1, v0

    .line 212
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private fillJsonToStringArray([Ljava/lang/String;Lorg/json/JSONArray;I)V
    .locals 3
    .parameter "dest"
    .parameter "src"
    .parameter "size"

    .prologue
    .line 198
    if-nez p2, :cond_1

    .line 199
    const-string v1, "KeyframeDataLoader"

    const-string v2, "Null src is specified"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_0
    return-void

    .line 202
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 203
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    .line 202
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getAnimationString(I)Ljava/lang/String;
    .locals 1
    .parameter "animationType"

    .prologue
    .line 167
    packed-switch p1, :pswitch_data_0

    .line 193
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 169
    :pswitch_0
    const-string v0, "Position"

    goto :goto_0

    .line 172
    :pswitch_1
    const-string v0, "Orientation"

    goto :goto_0

    .line 175
    :pswitch_2
    const-string v0, "Scale"

    goto :goto_0

    .line 178
    :pswitch_3
    const-string v0, "Opacity"

    goto :goto_0

    .line 181
    :pswitch_4
    const-string v0, "XRotation"

    goto :goto_0

    .line 184
    :pswitch_5
    const-string v0, "YRotation"

    goto :goto_0

    .line 187
    :pswitch_6
    const-string v0, "ZRotation"

    goto :goto_0

    .line 190
    :pswitch_7
    const-string v0, "AnchorPoint"

    goto :goto_0

    .line 167
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private getKeyframeData(Lorg/json/JSONObject;I)Lcom/mediatek/ngin3d/animation/KeyframeData;
    .locals 27
    .parameter "layer"
    .parameter "sampleType"

    .prologue
    .line 259
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/mediatek/ngin3d/animation/KeyframeDataLoader;->getAnimationString(I)Ljava/lang/String;

    move-result-object v14

    .line 260
    .local v14, type:Ljava/lang/String;
    if-eqz v14, :cond_0

    if-nez p1, :cond_1

    .line 261
    :cond_0
    const/16 v23, 0x0

    .line 390
    :goto_0
    return-object v23

    .line 267
    :cond_1
    const-string v23, "CompDur"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v23

    const-wide v25, 0x408f400000000000L

    mul-double v23, v23, v25

    move-wide/from16 v0, v23

    double-to-int v7, v0

    .line 268
    .local v7, duration:I
    const-string v23, "CompIn"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v23

    const-wide v25, 0x408f400000000000L

    mul-double v23, v23, v25

    move-wide/from16 v0, v23

    double-to-int v6, v0

    .line 269
    .local v6, delay:I
    const-string v23, "Normalization"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 271
    .local v10, normalized:Z
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 274
    .local v4, anim:Lorg/json/JSONObject;
    if-nez v4, :cond_2

    .line 275
    const-string v23, "KeyframeDataLoader"

    const-string v24, "no Anime type %s , return null animation"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    const/16 v23, 0x0

    goto :goto_0

    .line 278
    :cond_2
    new-instance v12, Lcom/mediatek/ngin3d/animation/Samples;

    move/from16 v0, p2

    invoke-direct {v12, v0}, Lcom/mediatek/ngin3d/animation/Samples;-><init>(I)V

    .line 281
    .local v12, samples:Lcom/mediatek/ngin3d/animation/Samples;
    const-string v23, "Type"

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 282
    .local v9, keyFrames:Lorg/json/JSONArray;
    if-nez v9, :cond_6

    .line 283
    const/16 v23, 0x4

    move/from16 v0, p2

    move/from16 v1, v23

    if-ne v0, v1, :cond_3

    .line 284
    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v3, v0, [F

    .line 285
    .local v3, alpha:[F
    const/16 v23, 0x0

    const-string v24, "Val"

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v24

    move-wide/from16 v0, v24

    double-to-float v0, v0

    move/from16 v24, v0

    aput v24, v3, v23

    .line 286
    const-string v23, "v"

    move-object/from16 v0, v23

    invoke-virtual {v12, v0, v3}, Lcom/mediatek/ngin3d/animation/Samples;->add(Ljava/lang/String;[F)Lcom/mediatek/ngin3d/animation/Samples;

    .line 287
    new-instance v23, Lcom/mediatek/ngin3d/animation/KeyframeData;

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2, v12}, Lcom/mediatek/ngin3d/animation/KeyframeData;-><init>(IILcom/mediatek/ngin3d/animation/Samples;)V

    goto/16 :goto_0

    .line 288
    .end local v3           #alpha:[F
    :cond_3
    const/16 v23, 0x5

    move/from16 v0, p2

    move/from16 v1, v23

    if-eq v0, v1, :cond_4

    const/16 v23, 0x6

    move/from16 v0, p2

    move/from16 v1, v23

    if-eq v0, v1, :cond_4

    const/16 v23, 0x7

    move/from16 v0, p2

    move/from16 v1, v23

    if-ne v0, v1, :cond_5

    .line 290
    :cond_4
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 292
    :cond_5
    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [F

    move-object/from16 v16, v0

    .line 293
    .local v16, x:[F
    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [F

    move-object/from16 v18, v0

    .line 294
    .local v18, y:[F
    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [F

    move-object/from16 v20, v0

    .line 295
    .local v20, z:[F
    const/16 v23, 0x0

    const-string v24, "X"

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v24

    move-wide/from16 v0, v24

    double-to-float v0, v0

    move/from16 v24, v0

    aput v24, v16, v23

    .line 296
    const/16 v23, 0x0

    const-string v24, "Y"

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v24

    move-wide/from16 v0, v24

    double-to-float v0, v0

    move/from16 v24, v0

    aput v24, v18, v23

    .line 297
    const/16 v23, 0x0

    const-string v24, "Z"

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v24

    move-wide/from16 v0, v24

    double-to-float v0, v0

    move/from16 v24, v0

    aput v24, v20, v23

    .line 298
    const-string v23, "x"

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v12, v0, v1}, Lcom/mediatek/ngin3d/animation/Samples;->add(Ljava/lang/String;[F)Lcom/mediatek/ngin3d/animation/Samples;

    .line 299
    const-string v23, "y"

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Lcom/mediatek/ngin3d/animation/Samples;->add(Ljava/lang/String;[F)Lcom/mediatek/ngin3d/animation/Samples;

    .line 300
    const-string v23, "z"

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Lcom/mediatek/ngin3d/animation/Samples;->add(Ljava/lang/String;[F)Lcom/mediatek/ngin3d/animation/Samples;

    .line 301
    new-instance v23, Lcom/mediatek/ngin3d/animation/KeyframeData;

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2, v12, v10}, Lcom/mediatek/ngin3d/animation/KeyframeData;-><init>(IILcom/mediatek/ngin3d/animation/Samples;Z)V

    goto/16 :goto_0

    .line 304
    .end local v16           #x:[F
    .end local v18           #y:[F
    .end local v20           #z:[F
    :cond_6
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v8

    .line 306
    .local v8, frameSize:I
    new-array v5, v8, [I

    .line 307
    .local v5, curveType:[I
    new-array v13, v8, [F

    .line 308
    .local v13, time:[F
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v9, v8}, Lcom/mediatek/ngin3d/animation/KeyframeDataLoader;->fillJsonToArray([ILorg/json/JSONArray;I)V

    .line 309
    const-string v23, "Time"

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v13, v1, v8}, Lcom/mediatek/ngin3d/animation/KeyframeDataLoader;->fillJsonToFloatArray([FLorg/json/JSONArray;I)V

    .line 311
    const-string v23, "type"

    move-object/from16 v0, v23

    invoke-virtual {v12, v0, v5}, Lcom/mediatek/ngin3d/animation/Samples;->add(Ljava/lang/String;[I)Lcom/mediatek/ngin3d/animation/Samples;

    move-result-object v23

    const-string v24, "time"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v13}, Lcom/mediatek/ngin3d/animation/Samples;->add(Ljava/lang/String;[F)Lcom/mediatek/ngin3d/animation/Samples;

    .line 314
    const/16 v23, 0x4

    move/from16 v0, p2

    move/from16 v1, v23

    if-ne v0, v1, :cond_7

    .line 316
    const/16 v23, 0x3

    move/from16 v0, v23

    filled-new-array {v0, v8}, [I

    move-result-object v23

    sget-object v24, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [[F

    .line 317
    .local v11, pValues:[[F
    const/16 v23, 0x0

    aget-object v23, v11, v23

    const-string v24, "Val"

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2, v8}, Lcom/mediatek/ngin3d/animation/KeyframeDataLoader;->fillJsonToFloatArray([FLorg/json/JSONArray;I)V

    .line 318
    const/16 v23, 0x1

    aget-object v23, v11, v23

    const-string v24, "InTanX"

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2, v8}, Lcom/mediatek/ngin3d/animation/KeyframeDataLoader;->fillJsonToFloatArray([FLorg/json/JSONArray;I)V

    .line 319
    const/16 v23, 0x2

    aget-object v23, v11, v23

    const-string v24, "OutTanX"

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2, v8}, Lcom/mediatek/ngin3d/animation/KeyframeDataLoader;->fillJsonToFloatArray([FLorg/json/JSONArray;I)V

    .line 321
    const-string v23, "v"

    const/16 v24, 0x0

    aget-object v24, v11, v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v12, v0, v1}, Lcom/mediatek/ngin3d/animation/Samples;->add(Ljava/lang/String;[F)Lcom/mediatek/ngin3d/animation/Samples;

    move-result-object v23

    const-string v24, "itx"

    const/16 v25, 0x1

    aget-object v25, v11, v25

    invoke-virtual/range {v23 .. v25}, Lcom/mediatek/ngin3d/animation/Samples;->add(Ljava/lang/String;[F)Lcom/mediatek/ngin3d/animation/Samples;

    move-result-object v23

    const-string v24, "otx"

    const/16 v25, 0x2

    aget-object v25, v11, v25

    invoke-virtual/range {v23 .. v25}, Lcom/mediatek/ngin3d/animation/Samples;->add(Ljava/lang/String;[F)Lcom/mediatek/ngin3d/animation/Samples;

    .line 390
    .end local v11           #pValues:[[F
    :goto_1
    new-instance v23, Lcom/mediatek/ngin3d/animation/KeyframeData;

    move-object/from16 v0, v23

    invoke-direct {v0, v7, v6, v12, v10}, Lcom/mediatek/ngin3d/animation/KeyframeData;-><init>(IILcom/mediatek/ngin3d/animation/Samples;Z)V

    goto/16 :goto_0

    .line 324
    :cond_7
    const/16 v23, 0x5

    move/from16 v0, p2

    move/from16 v1, v23

    if-ne v0, v1, :cond_8

    .line 325
    new-array v0, v8, [F

    move-object/from16 v22, v0

    .line 326
    .local v22, zeroArray:[F
    const/16 v23, 0x3

    move/from16 v0, v23

    filled-new-array {v0, v8}, [I

    move-result-object v23

    sget-object v24, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [[F

    .line 327
    .local v17, xValues:[[F
    const/16 v23, 0x0

    aget-object v23, v17, v23

    const-string v24, "Val"

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2, v8}, Lcom/mediatek/ngin3d/animation/KeyframeDataLoader;->fillJsonToFloatArray([FLorg/json/JSONArray;I)V

    .line 328
    const/16 v23, 0x1

    aget-object v23, v17, v23

    const-string v24, "InTanX"

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2, v8}, Lcom/mediatek/ngin3d/animation/KeyframeDataLoader;->fillJsonToFloatArray([FLorg/json/JSONArray;I)V

    .line 329
    const/16 v23, 0x2

    aget-object v23, v17, v23

    const-string v24, "OutTanX"

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2, v8}, Lcom/mediatek/ngin3d/animation/KeyframeDataLoader;->fillJsonToFloatArray([FLorg/json/JSONArray;I)V

    .line 330
    const-string v23, "x"

    const/16 v24, 0x0

    aget-object v24, v17, v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v12, v0, v1}, Lcom/mediatek/ngin3d/animation/Samples;->add(Ljava/lang/String;[F)Lcom/mediatek/ngin3d/animation/Samples;

    move-result-object v23

    const-string v24, "itx"

    const/16 v25, 0x1

    aget-object v25, v17, v25

    invoke-virtual/range {v23 .. v25}, Lcom/mediatek/ngin3d/animation/Samples;->add(Ljava/lang/String;[F)Lcom/mediatek/ngin3d/animation/Samples;

    move-result-object v23

    const-string v24, "otx"

    const/16 v25, 0x2

    aget-object v25, v17, v25

    invoke-virtual/range {v23 .. v25}, Lcom/mediatek/ngin3d/animation/Samples;->add(Ljava/lang/String;[F)Lcom/mediatek/ngin3d/animation/Samples;

    move-result-object v23

    const-string v24, "y"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/ngin3d/animation/Samples;->add(Ljava/lang/String;[F)Lcom/mediatek/ngin3d/animation/Samples;

    move-result-object v23

    const-string v24, "ity"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/ngin3d/animation/Samples;->add(Ljava/lang/String;[F)Lcom/mediatek/ngin3d/animation/Samples;

    move-result-object v23

    const-string v24, "oty"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/ngin3d/animation/Samples;->add(Ljava/lang/String;[F)Lcom/mediatek/ngin3d/animation/Samples;

    move-result-object v23

    const-string v24, "z"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/ngin3d/animation/Samples;->add(Ljava/lang/String;[F)Lcom/mediatek/ngin3d/animation/Samples;

    move-result-object v23

    const-string v24, "itz"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/ngin3d/animation/Samples;->add(Ljava/lang/String;[F)Lcom/mediatek/ngin3d/animation/Samples;

    move-result-object v23

    const-string v24, "otz"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/ngin3d/animation/Samples;->add(Ljava/lang/String;[F)Lcom/mediatek/ngin3d/animation/Samples;

    goto/16 :goto_1

    .line 339
    .end local v17           #xValues:[[F
    .end local v22           #zeroArray:[F
    :cond_8
    const/16 v23, 0x6

    move/from16 v0, p2

    move/from16 v1, v23

    if-ne v0, v1, :cond_9

    .line 340
    new-array v0, v8, [F

    move-object/from16 v22, v0

    .line 341
    .restart local v22       #zeroArray:[F
    const/16 v23, 0x3

    move/from16 v0, v23

    filled-new-array {v0, v8}, [I

    move-result-object v23

    sget-object v24, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [[F

    .line 342
    .local v19, yValues:[[F
    const/16 v23, 0x0

    aget-object v23, v19, v23

    const-string v24, "Val"

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2, v8}, Lcom/mediatek/ngin3d/animation/KeyframeDataLoader;->fillJsonToFloatArray([FLorg/json/JSONArray;I)V

    .line 343
    const/16 v23, 0x1

    aget-object v23, v19, v23

    const-string v24, "InTanX"

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2, v8}, Lcom/mediatek/ngin3d/animation/KeyframeDataLoader;->fillJsonToFloatArray([FLorg/json/JSONArray;I)V

    .line 344
    const/16 v23, 0x2

    aget-object v23, v19, v23

    const-string v24, "OutTanX"

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2, v8}, Lcom/mediatek/ngin3d/animation/KeyframeDataLoader;->fillJsonToFloatArray([FLorg/json/JSONArray;I)V

    .line 345
    const-string v23, "x"

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v12, v0, v1}, Lcom/mediatek/ngin3d/animation/Samples;->add(Ljava/lang/String;[F)Lcom/mediatek/ngin3d/animation/Samples;

    move-result-object v23

    const-string v24, "itx"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/ngin3d/animation/Samples;->add(Ljava/lang/String;[F)Lcom/mediatek/ngin3d/animation/Samples;

    move-result-object v23

    const-string v24, "otx"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/ngin3d/animation/Samples;->add(Ljava/lang/String;[F)Lcom/mediatek/ngin3d/animation/Samples;

    move-result-object v23

    const-string v24, "y"

    const/16 v25, 0x0

    aget-object v25, v19, v25

    invoke-virtual/range {v23 .. v25}, Lcom/mediatek/ngin3d/animation/Samples;->add(Ljava/lang/String;[F)Lcom/mediatek/ngin3d/animation/Samples;

    move-result-object v23

    const-string v24, "ity"

    const/16 v25, 0x1

    aget-object v25, v19, v25

    invoke-virtual/range {v23 .. v25}, Lcom/mediatek/ngin3d/animation/Samples;->add(Ljava/lang/String;[F)Lcom/mediatek/ngin3d/animation/Samples;

    move-result-object v23

    const-string v24, "oty"

    const/16 v25, 0x2

    aget-object v25, v19, v25

    invoke-virtual/range {v23 .. v25}, Lcom/mediatek/ngin3d/animation/Samples;->add(Ljava/lang/String;[F)Lcom/mediatek/ngin3d/animation/Samples;

    move-result-object v23

    const-string v24, "z"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/ngin3d/animation/Samples;->add(Ljava/lang/String;[F)Lcom/mediatek/ngin3d/animation/Samples;

    move-result-object v23

    const-string v24, "itz"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/ngin3d/animation/Samples;->add(Ljava/lang/String;[F)Lcom/mediatek/ngin3d/animation/Samples;

    move-result-object v23

    const-string v24, "otz"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/ngin3d/animation/Samples;->add(Ljava/lang/String;[F)Lcom/mediatek/ngin3d/animation/Samples;

    goto/16 :goto_1

    .line 354
    .end local v19           #yValues:[[F
    .end local v22           #zeroArray:[F
    :cond_9
    const/16 v23, 0x7

    move/from16 v0, p2

    move/from16 v1, v23

    if-ne v0, v1, :cond_a

    .line 355
    new-array v0, v8, [F

    move-object/from16 v22, v0

    .line 356
    .restart local v22       #zeroArray:[F
    const/16 v23, 0x3

    move/from16 v0, v23

    filled-new-array {v0, v8}, [I

    move-result-object v23

    sget-object v24, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, [[F

    .line 357
    .local v21, zValues:[[F
    const/16 v23, 0x0

    aget-object v23, v21, v23

    const-string v24, "Val"

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2, v8}, Lcom/mediatek/ngin3d/animation/KeyframeDataLoader;->fillJsonToFloatArray([FLorg/json/JSONArray;I)V

    .line 358
    const/16 v23, 0x1

    aget-object v23, v21, v23

    const-string v24, "InTanX"

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2, v8}, Lcom/mediatek/ngin3d/animation/KeyframeDataLoader;->fillJsonToFloatArray([FLorg/json/JSONArray;I)V

    .line 359
    const/16 v23, 0x2

    aget-object v23, v21, v23

    const-string v24, "OutTanX"

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2, v8}, Lcom/mediatek/ngin3d/animation/KeyframeDataLoader;->fillJsonToFloatArray([FLorg/json/JSONArray;I)V

    .line 360
    const-string v23, "x"

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v12, v0, v1}, Lcom/mediatek/ngin3d/animation/Samples;->add(Ljava/lang/String;[F)Lcom/mediatek/ngin3d/animation/Samples;

    move-result-object v23

    const-string v24, "itx"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/ngin3d/animation/Samples;->add(Ljava/lang/String;[F)Lcom/mediatek/ngin3d/animation/Samples;

    move-result-object v23

    const-string v24, "otx"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/ngin3d/animation/Samples;->add(Ljava/lang/String;[F)Lcom/mediatek/ngin3d/animation/Samples;

    move-result-object v23

    const-string v24, "y"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/ngin3d/animation/Samples;->add(Ljava/lang/String;[F)Lcom/mediatek/ngin3d/animation/Samples;

    move-result-object v23

    const-string v24, "ity"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/ngin3d/animation/Samples;->add(Ljava/lang/String;[F)Lcom/mediatek/ngin3d/animation/Samples;

    move-result-object v23

    const-string v24, "oty"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/ngin3d/animation/Samples;->add(Ljava/lang/String;[F)Lcom/mediatek/ngin3d/animation/Samples;

    move-result-object v23

    const-string v24, "z"

    const/16 v25, 0x0

    aget-object v25, v21, v25

    invoke-virtual/range {v23 .. v25}, Lcom/mediatek/ngin3d/animation/Samples;->add(Ljava/lang/String;[F)Lcom/mediatek/ngin3d/animation/Samples;

    move-result-object v23

    const-string v24, "itz"

    const/16 v25, 0x1

    aget-object v25, v21, v25

    invoke-virtual/range {v23 .. v25}, Lcom/mediatek/ngin3d/animation/Samples;->add(Ljava/lang/String;[F)Lcom/mediatek/ngin3d/animation/Samples;

    move-result-object v23

    const-string v24, "otz"

    const/16 v25, 0x2

    aget-object v25, v21, v25

    invoke-virtual/range {v23 .. v25}, Lcom/mediatek/ngin3d/animation/Samples;->add(Ljava/lang/String;[F)Lcom/mediatek/ngin3d/animation/Samples;

    goto/16 :goto_1

    .line 370
    .end local v21           #zValues:[[F
    .end local v22           #zeroArray:[F
    :cond_a
    const/16 v23, 0x9

    move/from16 v0, v23

    filled-new-array {v0, v8}, [I

    move-result-object v23

    sget-object v24, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [[F

    .line 371
    .local v15, values:[[F
    const/16 v23, 0x0

    aget-object v23, v15, v23

    const-string v24, "X"

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2, v8}, Lcom/mediatek/ngin3d/animation/KeyframeDataLoader;->fillJsonToFloatArray([FLorg/json/JSONArray;I)V

    .line 372
    const/16 v23, 0x1

    aget-object v23, v15, v23

    const-string v24, "InTanX"

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2, v8}, Lcom/mediatek/ngin3d/animation/KeyframeDataLoader;->fillJsonToFloatArray([FLorg/json/JSONArray;I)V

    .line 373
    const/16 v23, 0x2

    aget-object v23, v15, v23

    const-string v24, "OutTanX"

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2, v8}, Lcom/mediatek/ngin3d/animation/KeyframeDataLoader;->fillJsonToFloatArray([FLorg/json/JSONArray;I)V

    .line 374
    const/16 v23, 0x3

    aget-object v23, v15, v23

    const-string v24, "Y"

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2, v8}, Lcom/mediatek/ngin3d/animation/KeyframeDataLoader;->fillJsonToFloatArray([FLorg/json/JSONArray;I)V

    .line 375
    const/16 v23, 0x4

    aget-object v23, v15, v23

    const-string v24, "InTanY"

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2, v8}, Lcom/mediatek/ngin3d/animation/KeyframeDataLoader;->fillJsonToFloatArray([FLorg/json/JSONArray;I)V

    .line 376
    const/16 v23, 0x5

    aget-object v23, v15, v23

    const-string v24, "OutTanY"

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2, v8}, Lcom/mediatek/ngin3d/animation/KeyframeDataLoader;->fillJsonToFloatArray([FLorg/json/JSONArray;I)V

    .line 377
    const/16 v23, 0x6

    aget-object v23, v15, v23

    const-string v24, "Z"

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2, v8}, Lcom/mediatek/ngin3d/animation/KeyframeDataLoader;->fillJsonToFloatArray([FLorg/json/JSONArray;I)V

    .line 378
    const/16 v23, 0x7

    aget-object v23, v15, v23

    const-string v24, "InTanZ"

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2, v8}, Lcom/mediatek/ngin3d/animation/KeyframeDataLoader;->fillJsonToFloatArray([FLorg/json/JSONArray;I)V

    .line 379
    const/16 v23, 0x8

    aget-object v23, v15, v23

    const-string v24, "OutTanZ"

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2, v8}, Lcom/mediatek/ngin3d/animation/KeyframeDataLoader;->fillJsonToFloatArray([FLorg/json/JSONArray;I)V

    .line 380
    const-string v23, "x"

    const/16 v24, 0x0

    aget-object v24, v15, v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v12, v0, v1}, Lcom/mediatek/ngin3d/animation/Samples;->add(Ljava/lang/String;[F)Lcom/mediatek/ngin3d/animation/Samples;

    move-result-object v23

    const-string v24, "itx"

    const/16 v25, 0x1

    aget-object v25, v15, v25

    invoke-virtual/range {v23 .. v25}, Lcom/mediatek/ngin3d/animation/Samples;->add(Ljava/lang/String;[F)Lcom/mediatek/ngin3d/animation/Samples;

    move-result-object v23

    const-string v24, "otx"

    const/16 v25, 0x2

    aget-object v25, v15, v25

    invoke-virtual/range {v23 .. v25}, Lcom/mediatek/ngin3d/animation/Samples;->add(Ljava/lang/String;[F)Lcom/mediatek/ngin3d/animation/Samples;

    move-result-object v23

    const-string v24, "y"

    const/16 v25, 0x3

    aget-object v25, v15, v25

    invoke-virtual/range {v23 .. v25}, Lcom/mediatek/ngin3d/animation/Samples;->add(Ljava/lang/String;[F)Lcom/mediatek/ngin3d/animation/Samples;

    move-result-object v23

    const-string v24, "ity"

    const/16 v25, 0x4

    aget-object v25, v15, v25

    invoke-virtual/range {v23 .. v25}, Lcom/mediatek/ngin3d/animation/Samples;->add(Ljava/lang/String;[F)Lcom/mediatek/ngin3d/animation/Samples;

    move-result-object v23

    const-string v24, "oty"

    const/16 v25, 0x5

    aget-object v25, v15, v25

    invoke-virtual/range {v23 .. v25}, Lcom/mediatek/ngin3d/animation/Samples;->add(Ljava/lang/String;[F)Lcom/mediatek/ngin3d/animation/Samples;

    move-result-object v23

    const-string v24, "z"

    const/16 v25, 0x6

    aget-object v25, v15, v25

    invoke-virtual/range {v23 .. v25}, Lcom/mediatek/ngin3d/animation/Samples;->add(Ljava/lang/String;[F)Lcom/mediatek/ngin3d/animation/Samples;

    move-result-object v23

    const-string v24, "itz"

    const/16 v25, 0x7

    aget-object v25, v15, v25

    invoke-virtual/range {v23 .. v25}, Lcom/mediatek/ngin3d/animation/Samples;->add(Ljava/lang/String;[F)Lcom/mediatek/ngin3d/animation/Samples;

    move-result-object v23

    const-string v24, "otz"

    const/16 v25, 0x8

    aget-object v25, v15, v25

    invoke-virtual/range {v23 .. v25}, Lcom/mediatek/ngin3d/animation/Samples;->add(Ljava/lang/String;[F)Lcom/mediatek/ngin3d/animation/Samples;

    goto/16 :goto_1
.end method

.method private getKeyframeVersion(Lorg/json/JSONObject;)I
    .locals 1
    .parameter "layer"

    .prologue
    .line 228
    const-string v0, "Version"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private getMarkerData(Lorg/json/JSONObject;)Lcom/mediatek/ngin3d/animation/KeyframeData;
    .locals 9
    .parameter "layer"

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x1

    .line 240
    const-string v7, "Marker"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 241
    .local v0, marker:Lorg/json/JSONObject;
    if-nez v0, :cond_1

    .line 255
    :cond_0
    :goto_0
    return-object v6

    .line 243
    :cond_1
    const-string v7, "Time"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 244
    .local v5, time:Lorg/json/JSONArray;
    if-eqz v5, :cond_0

    .line 247
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v1

    .line 248
    .local v1, markerSize:I
    new-array v2, v1, [F

    .line 249
    .local v2, pValues:[F
    new-array v3, v1, [Ljava/lang/String;

    .line 250
    .local v3, sValues:[Ljava/lang/String;
    const-string v6, "Time"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    invoke-direct {p0, v2, v6, v1}, Lcom/mediatek/ngin3d/animation/KeyframeDataLoader;->fillJsonToFloatArray([FLorg/json/JSONArray;I)V

    .line 251
    const-string v6, "Action"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    invoke-direct {p0, v3, v6, v1}, Lcom/mediatek/ngin3d/animation/KeyframeDataLoader;->fillJsonToStringArray([Ljava/lang/String;Lorg/json/JSONArray;I)V

    .line 252
    new-instance v4, Lcom/mediatek/ngin3d/animation/Samples;

    const/16 v6, 0x9

    invoke-direct {v4, v6}, Lcom/mediatek/ngin3d/animation/Samples;-><init>(I)V

    .line 253
    .local v4, samples:Lcom/mediatek/ngin3d/animation/Samples;
    const-string v6, "time"

    invoke-virtual {v4, v6, v2}, Lcom/mediatek/ngin3d/animation/Samples;->add(Ljava/lang/String;[F)Lcom/mediatek/ngin3d/animation/Samples;

    .line 254
    const-string v6, "action"

    invoke-virtual {v4, v6, v3}, Lcom/mediatek/ngin3d/animation/Samples;->add(Ljava/lang/String;[Ljava/lang/String;)Lcom/mediatek/ngin3d/animation/Samples;

    .line 255
    new-instance v6, Lcom/mediatek/ngin3d/animation/KeyframeData;

    invoke-direct {v6, v8, v8, v4}, Lcom/mediatek/ngin3d/animation/KeyframeData;-><init>(IILcom/mediatek/ngin3d/animation/Samples;)V

    goto :goto_0
.end method

.method private getTargetHeight(Lorg/json/JSONObject;)I
    .locals 1
    .parameter "layer"

    .prologue
    .line 236
    const-string v0, "LayHeight"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private getTargetWidth(Lorg/json/JSONObject;)I
    .locals 1
    .parameter "layer"

    .prologue
    .line 232
    const-string v0, "LayWidth"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private getValue(Lorg/json/JSONObject;Ljava/lang/String;)F
    .locals 3
    .parameter "j"
    .parameter "item"

    .prologue
    .line 447
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 449
    .local v0, v:Lorg/json/JSONArray;
    if-nez v0, :cond_0

    .line 450
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v1

    double-to-float v1, v1

    .line 452
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v1

    double-to-float v1, v1

    goto :goto_0
.end method


# virtual methods
.method public getKeyframeData(Ljava/lang/String;I)Lcom/mediatek/ngin3d/animation/KeyframeData;
    .locals 6
    .parameter "name"
    .parameter "animationType"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 402
    const-string v3, "KeyframeDataLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GetAnimation(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    invoke-virtual {p0, p1}, Lcom/mediatek/ngin3d/animation/KeyframeDataLoader;->getLayer(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 406
    .local v0, layer:Lorg/json/JSONObject;
    const-string v3, "Parameters"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 407
    .local v1, para:Lorg/json/JSONObject;
    if-eqz v1, :cond_0

    .line 408
    const-string v3, "Transform"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 409
    .local v2, trans:Lorg/json/JSONObject;
    if-eqz v2, :cond_0

    .line 410
    const-string v3, "KeyframeDataLoader"

    const-string v4, "Transform object exists"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    move-object v0, v2

    .line 415
    .end local v2           #trans:Lorg/json/JSONObject;
    :cond_0
    invoke-direct {p0, v0, p2}, Lcom/mediatek/ngin3d/animation/KeyframeDataLoader;->getKeyframeData(Lorg/json/JSONObject;I)Lcom/mediatek/ngin3d/animation/KeyframeData;

    move-result-object v3

    return-object v3
.end method

.method public getKeyframeDataSet()Lcom/mediatek/ngin3d/animation/KeyframeDataSet;
    .locals 8

    .prologue
    .line 424
    const/4 v3, 0x0

    .line 425
    .local v3, dataSet:Lcom/mediatek/ngin3d/animation/KeyframeDataSet;
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/mediatek/ngin3d/animation/KeyframeDataLoader;->getLayer(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 427
    .local v0, actorObj:Lorg/json/JSONObject;
    sget-object v1, Lcom/mediatek/ngin3d/animation/KeyframeDataLoader;->ANIMATION_TYPES:[I

    .local v1, arr$:[I
    array-length v5, v1

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_2

    aget v6, v1, v4

    .line 428
    .local v6, type:I
    invoke-direct {p0, v0, v6}, Lcom/mediatek/ngin3d/animation/KeyframeDataLoader;->getKeyframeData(Lorg/json/JSONObject;I)Lcom/mediatek/ngin3d/animation/KeyframeData;

    move-result-object v2

    .line 429
    .local v2, data:Lcom/mediatek/ngin3d/animation/KeyframeData;
    if-eqz v2, :cond_1

    .line 430
    if-nez v3, :cond_0

    .line 431
    new-instance v3, Lcom/mediatek/ngin3d/animation/KeyframeDataSet;

    .end local v3           #dataSet:Lcom/mediatek/ngin3d/animation/KeyframeDataSet;
    invoke-direct {v3}, Lcom/mediatek/ngin3d/animation/KeyframeDataSet;-><init>()V

    .line 433
    .restart local v3       #dataSet:Lcom/mediatek/ngin3d/animation/KeyframeDataSet;
    :cond_0
    invoke-virtual {v3, v2}, Lcom/mediatek/ngin3d/animation/KeyframeDataSet;->add(Lcom/mediatek/ngin3d/animation/KeyframeData;)V

    .line 427
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 437
    .end local v2           #data:Lcom/mediatek/ngin3d/animation/KeyframeData;
    .end local v6           #type:I
    :cond_2
    if-eqz v3, :cond_3

    .line 438
    invoke-direct {p0, v0}, Lcom/mediatek/ngin3d/animation/KeyframeDataLoader;->getKeyframeVersion(Lorg/json/JSONObject;)I

    move-result v7

    invoke-virtual {v3, v7}, Lcom/mediatek/ngin3d/animation/KeyframeDataSet;->setVersion(I)V

    .line 439
    invoke-direct {p0, v0}, Lcom/mediatek/ngin3d/animation/KeyframeDataLoader;->getTargetWidth(Lorg/json/JSONObject;)I

    move-result v7

    invoke-virtual {v3, v7}, Lcom/mediatek/ngin3d/animation/KeyframeDataSet;->setTargetWidth(I)V

    .line 440
    invoke-direct {p0, v0}, Lcom/mediatek/ngin3d/animation/KeyframeDataLoader;->getTargetHeight(Lorg/json/JSONObject;)I

    move-result v7

    invoke-virtual {v3, v7}, Lcom/mediatek/ngin3d/animation/KeyframeDataSet;->setTargetHeight(I)V

    .line 441
    invoke-direct {p0, v0}, Lcom/mediatek/ngin3d/animation/KeyframeDataLoader;->getMarkerData(Lorg/json/JSONObject;)Lcom/mediatek/ngin3d/animation/KeyframeData;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/mediatek/ngin3d/animation/KeyframeDataSet;->setMarker(Lcom/mediatek/ngin3d/animation/KeyframeData;)V

    .line 443
    :cond_3
    return-object v3
.end method

.method public getLayer(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 7
    .parameter "objectName"

    .prologue
    .line 141
    iget-object v5, p0, Lcom/mediatek/ngin3d/animation/KeyframeDataLoader;->mProject:Lorg/json/JSONObject;

    const-string v6, "Layers"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 142
    .local v1, actorsArray:Lorg/json/JSONArray;
    if-nez v1, :cond_1

    .line 144
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/KeyframeDataLoader;->mProject:Lorg/json/JSONObject;

    .line 163
    :cond_0
    :goto_0
    return-object v0

    .line 146
    :cond_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    .line 147
    .local v4, size:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v4, :cond_4

    .line 148
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 149
    .local v0, actorObj:Lorg/json/JSONObject;
    if-eqz v0, :cond_3

    .line 150
    if-nez p1, :cond_2

    .line 151
    const-string v5, "KeyframeDataLoader"

    const-string v6, "objectName is null, return first layer directly"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 154
    :cond_2
    const-string v5, "LayName"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 155
    .local v3, s:Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 147
    .end local v3           #s:Ljava/lang/String;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 163
    .end local v0           #actorObj:Lorg/json/JSONObject;
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method
