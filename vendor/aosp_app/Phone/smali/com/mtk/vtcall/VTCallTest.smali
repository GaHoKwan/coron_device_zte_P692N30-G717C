.class public Lcom/mtk/vtcall/VTCallTest;
.super Landroid/test/InstrumentationTestCase;
.source "VTCallTest.java"


# static fields
.field private static final DURATION_FLAG:Ljava/lang/String; = "duration"

.field private static final ITERATION_FLAG:Ljava/lang/String; = "iteration"

.field private static final PHONE_NUMBER_FLAG:Ljava/lang/String; = "phone_number"

.field private static final SHREDPRE_NAME:Ljava/lang/String; = "vtcalltest_config"

.field private static final TAG:Ljava/lang/String; = "VTCallTest"


# instance fields
.field private mInst:Landroid/app/Instrumentation;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/test/InstrumentationTestCase;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mtk/vtcall/VTCallTest;->mInst:Landroid/app/Instrumentation;

    return-void
.end method

.method private endCall(I)V
    .locals 26
    .parameter "i"

    .prologue
    .line 75
    :try_start_0
    const-string v9, "android.os.ServiceManager"

    .line 76
    .local v9, serviceManagerName:Ljava/lang/String;
    const-string v11, "android.os.ServiceManagerNative"

    .line 77
    .local v11, serviceManagerNativeName:Ljava/lang/String;
    const-string v17, "com.android.internal.telephony.ITelephony"

    .line 90
    .local v17, telephonyName:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v14

    .line 91
    .local v14, telephonyClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v14}, Ljava/lang/Class;->getClasses()[Ljava/lang/Class;

    move-result-object v22

    const/16 v23, 0x0

    aget-object v19, v22, v23

    .line 92
    .local v19, telephonyStubClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 93
    .local v8, serviceManagerClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    .line 95
    .local v10, serviceManagerNativeClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v22, "getService"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-class v25, Ljava/lang/String;

    aput-object v25, v23, v24

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v8, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 97
    .local v5, getService:Ljava/lang/reflect/Method;
    const-string v22, "asInterface"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-class v25, Landroid/os/IBinder;

    aput-object v25, v23, v24

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v10, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v20

    .line 99
    .local v20, tempInterfaceMethod:Ljava/lang/reflect/Method;
    new-instance v21, Landroid/os/Binder;

    invoke-direct/range {v21 .. v21}, Landroid/os/Binder;-><init>()V

    .line 100
    .local v21, tmpBinder:Landroid/os/Binder;
    const/16 v22, 0x0

    const-string v23, "fake"

    invoke-virtual/range {v21 .. v23}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 102
    const/16 v22, 0x0

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v21, v23, v24

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 103
    .local v12, serviceManagerObject:Ljava/lang/Object;
    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const-string v24, "phone"

    aput-object v24, v22, v23

    move-object/from16 v0, v22

    invoke-virtual {v5, v12, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/IBinder;

    .line 104
    .local v7, retbinder:Landroid/os/IBinder;
    const-string v22, "asInterface"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-class v25, Landroid/os/IBinder;

    aput-object v25, v23, v24

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v13

    .line 107
    .local v13, serviceMethod:Ljava/lang/reflect/Method;
    const/16 v22, 0x0

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v7, v23, v24

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v13, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    .line 110
    .local v18, telephonyObject:Ljava/lang/Object;
    const-string v22, "getCallState"

    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v14, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v16

    .line 111
    .local v16, telephonyGetCallState:Ljava/lang/reflect/Method;
    const/16 v22, 0x0

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 112
    .local v6, nCallState:I
    const-string v22, "VTCallTest"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "call state before hang up = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const/16 v22, 0x2

    move/from16 v0, v22

    invoke-static {v0, v6}, Lcom/mtk/vtcall/VTCallTest;->assertEquals(II)V

    .line 116
    const/high16 v22, 0x3f80

    const/16 v23, 0x64

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/mtk/vtcall/VTCallTest;->takeScreenshot(IFI)Z

    move-result v22

    invoke-static/range {v22 .. v22}, Lcom/mtk/vtcall/VTCallTest;->assertTrue(Z)V

    .line 119
    const-string v22, "endCall"

    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v14, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v15

    .line 120
    .local v15, telephonyEndCall:Ljava/lang/reflect/Method;
    const/16 v22, 0x0

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    const-wide/16 v22, 0x7d0

    invoke-static/range {v22 .. v23}, Landroid/os/SystemClock;->sleep(J)V

    .line 124
    const/16 v22, 0x0

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 125
    const-string v22, "VTCallTest"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "call state after hang up = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-static {v0, v6}, Lcom/mtk/vtcall/VTCallTest;->assertEquals(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    .end local v5           #getService:Ljava/lang/reflect/Method;
    .end local v6           #nCallState:I
    .end local v7           #retbinder:Landroid/os/IBinder;
    .end local v8           #serviceManagerClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v9           #serviceManagerName:Ljava/lang/String;
    .end local v10           #serviceManagerNativeClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v11           #serviceManagerNativeName:Ljava/lang/String;
    .end local v12           #serviceManagerObject:Ljava/lang/Object;
    .end local v13           #serviceMethod:Ljava/lang/reflect/Method;
    .end local v14           #telephonyClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v15           #telephonyEndCall:Ljava/lang/reflect/Method;
    .end local v16           #telephonyGetCallState:Ljava/lang/reflect/Method;
    .end local v17           #telephonyName:Ljava/lang/String;
    .end local v18           #telephonyObject:Ljava/lang/Object;
    .end local v19           #telephonyStubClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v20           #tempInterfaceMethod:Ljava/lang/reflect/Method;
    .end local v21           #tmpBinder:Landroid/os/Binder;
    :goto_0
    return-void

    .line 127
    :catch_0
    move-exception v4

    .line 128
    .local v4, e:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 129
    const-string v22, "VTCallTest"

    const-string v23, "FATAL ERROR: could not connect to telephony subsystem"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const-string v22, "VTCallTest"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Exception object: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getDegreesForRotation(I)F
    .locals 1
    .parameter "value"

    .prologue
    .line 248
    packed-switch p0, :pswitch_data_0

    .line 256
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 250
    :pswitch_0
    const/high16 v0, 0x4387

    goto :goto_0

    .line 252
    :pswitch_1
    const/high16 v0, 0x4334

    goto :goto_0

    .line 254
    :pswitch_2
    const/high16 v0, 0x42b4

    goto :goto_0

    .line 248
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private takeScreenshot(IFI)Z
    .locals 20
    .parameter "i"
    .parameter "scale"
    .parameter "quality"

    .prologue
    .line 185
    new-instance v7, Landroid/util/DisplayMetrics;

    invoke-direct {v7}, Landroid/util/DisplayMetrics;-><init>()V

    .line 186
    .local v7, displayMetrics:Landroid/util/DisplayMetrics;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mtk/vtcall/VTCallTest;->mInst:Landroid/app/Instrumentation;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/app/Instrumentation;->getContext()Landroid/content/Context;

    move-result-object v17

    const-string v18, "display"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/hardware/display/DisplayManager;

    .line 187
    .local v11, mActivityManager:Landroid/hardware/display/DisplayManager;
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v6

    .line 188
    .local v6, display:Landroid/view/Display;
    invoke-virtual {v6, v7}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 189
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v5, v0, [F

    const/16 v17, 0x0

    iget v0, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    aput v18, v5, v17

    const/16 v17, 0x1

    iget v0, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    aput v18, v5, v17

    .line 190
    .local v5, dims:[F
    invoke-virtual {v6}, Landroid/view/Display;->getRotation()I

    move-result v17

    invoke-static/range {v17 .. v17}, Lcom/mtk/vtcall/VTCallTest;->getDegreesForRotation(I)F

    move-result v4

    .line 191
    .local v4, degrees:F
    const/16 v17, 0x0

    cmpl-float v17, v4, v17

    if-lez v17, :cond_2

    const/4 v13, 0x1

    .line 192
    .local v13, requiresRotation:Z
    :goto_0
    new-instance v12, Landroid/graphics/Matrix;

    invoke-direct {v12}, Landroid/graphics/Matrix;-><init>()V

    .line 193
    .local v12, matrix:Landroid/graphics/Matrix;
    invoke-virtual {v12}, Landroid/graphics/Matrix;->reset()V

    .line 194
    const/high16 v17, 0x3f80

    cmpl-float v17, p2, v17

    if-eqz v17, :cond_0

    .line 195
    move/from16 v0, p2

    move/from16 v1, p2

    invoke-virtual {v12, v0, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 197
    :cond_0
    if-eqz v13, :cond_1

    .line 199
    neg-float v0, v4

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 201
    :cond_1
    invoke-virtual {v12, v5}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 202
    const/16 v17, 0x0

    const/16 v18, 0x0

    aget v18, v5, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v18

    aput v18, v5, v17

    .line 203
    const/16 v17, 0x1

    const/16 v18, 0x1

    aget v18, v5, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v18

    aput v18, v5, v17

    .line 206
    const/16 v17, 0x0

    aget v17, v5, v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    const/16 v18, 0x1

    aget v18, v5, v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    invoke-static/range {v17 .. v18}, Landroid/view/Surface;->screenshot(II)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 207
    .local v14, screenShot:Landroid/graphics/Bitmap;
    if-nez v14, :cond_3

    .line 208
    const/16 v17, 0x0

    .line 244
    :goto_1
    return v17

    .line 191
    .end local v12           #matrix:Landroid/graphics/Matrix;
    .end local v13           #requiresRotation:Z
    .end local v14           #screenShot:Landroid/graphics/Bitmap;
    :cond_2
    const/4 v13, 0x0

    goto :goto_0

    .line 211
    .restart local v12       #matrix:Landroid/graphics/Matrix;
    .restart local v13       #requiresRotation:Z
    .restart local v14       #screenShot:Landroid/graphics/Bitmap;
    :cond_3
    if-eqz v13, :cond_5

    .line 213
    iget v0, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v16, v0

    .line 214
    .local v16, width:I
    iget v9, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 215
    .local v9, height:I
    const/high16 v17, 0x3f80

    cmpl-float v17, p2, v17

    if-eqz v17, :cond_4

    .line 216
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, p2

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    move-result v16

    .line 217
    int-to-float v0, v9

    move/from16 v17, v0

    mul-float v17, v17, p2

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 219
    :cond_4
    sget-object v17, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v9, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 220
    .local v15, ss:Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v15}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 221
    .local v3, c:Landroid/graphics/Canvas;
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    div-int/lit8 v17, v17, 0x2

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    div-int/lit8 v18, v18, 0x2

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 222
    invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 223
    const/16 v17, 0x0

    aget v17, v5, v17

    move/from16 v0, v17

    neg-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x4000

    div-float v17, v17, v18

    const/16 v18, 0x1

    aget v18, v5, v18

    move/from16 v0, v18

    neg-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x4000

    div-float v18, v18, v19

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 224
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v3, v14, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 225
    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 226
    move-object v14, v15

    .line 230
    .end local v3           #c:Landroid/graphics/Canvas;
    .end local v9           #height:I
    .end local v15           #ss:Landroid/graphics/Bitmap;
    .end local v16           #width:I
    :cond_5
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 234
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mtk/vtcall/VTCallTest;->mInst:Landroid/app/Instrumentation;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/app/Instrumentation;->getContext()Landroid/content/Context;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 p1, p1, 0x1

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "-VTCallScreen.png"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v8

    .line 235
    .local v8, fos:Ljava/io/FileOutputStream;
    sget-object v17, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    move-object/from16 v0, v17

    move/from16 v1, p3

    invoke-virtual {v14, v0, v1, v8}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 236
    invoke-virtual {v8}, Ljava/io/OutputStream;->flush()V

    .line 237
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->recycle()V

    .line 244
    const/16 v17, 0x1

    goto/16 :goto_1

    .line 238
    .end local v8           #fos:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v10

    .line 239
    .local v10, ioe:Ljava/io/IOException;
    :try_start_1
    const-string v17, "VTCallTest"

    const-string v18, "failed to save screen shot to file"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 240
    const/16 v17, 0x0

    .line 242
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_1

    .end local v10           #ioe:Ljava/io/IOException;
    :catchall_0
    move-exception v17

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->recycle()V

    throw v17
.end method


# virtual methods
.method protected setUp()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 41
    invoke-super {p0}, Ljunit/framework/TestCase;->setUp()V

    .line 42
    invoke-virtual {p0}, Landroid/test/InstrumentationTestCase;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v0

    iput-object v0, p0, Lcom/mtk/vtcall/VTCallTest;->mInst:Landroid/app/Instrumentation;

    .line 43
    return-void
.end method

.method public testVTCall()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 46
    iget-object v6, p0, Lcom/mtk/vtcall/VTCallTest;->mInst:Landroid/app/Instrumentation;

    invoke-virtual {v6}, Landroid/app/Instrumentation;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "vtcalltest_config"

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 47
    .local v5, spVtCall:Landroid/content/SharedPreferences;
    const-string v6, "phone_number"

    invoke-interface {v5, v6, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 48
    .local v4, phone_number:Ljava/lang/String;
    const-string v6, "duration"

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 49
    .local v0, duration_time:I
    const-string v6, "iteration"

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 51
    .local v3, nNumTests:I
    const-string v6, "VTCallTest"

    const-string v7, "testVTCall start!"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.CALL"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 54
    .local v2, intent:Landroid/content/Intent;
    const-string v6, "tel"

    invoke-static {v6, v4, v9}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 55
    const-string v6, "com.android.phone.extra.video"

    const/4 v7, 0x1

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 56
    const-string v6, "com.android.phone.extra.slot"

    invoke-virtual {v2, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 57
    const/high16 v6, 0x1000

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 59
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 60
    iget-object v6, p0, Lcom/mtk/vtcall/VTCallTest;->mInst:Landroid/app/Instrumentation;

    invoke-virtual {v6}, Landroid/app/Instrumentation;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 61
    int-to-long v6, v0

    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V

    .line 63
    invoke-direct {p0, v1}, Lcom/mtk/vtcall/VTCallTest;->endCall(I)V

    .line 64
    add-int/lit8 v6, v3, -0x1

    if-ge v1, v6, :cond_0

    .line 65
    const-wide/16 v6, 0x1388

    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V

    .line 59
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 68
    :cond_1
    const-string v6, "VTCallTest"

    const-string v7, "testVTCall end!"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    return-void
.end method
