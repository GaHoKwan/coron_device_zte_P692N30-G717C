.class Lcom/mediatek/ngin3d/android/MultisampleConfigChooser;
.super Ljava/lang/Object;
.source "MultisampleConfigChooser.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$EGLConfigChooser;
.implements Lcom/mediatek/ngin3d/android/EGLConfigChooser;


# static fields
.field private static final TAG:Ljava/lang/String; = "GDC11"


# instance fields
.field private mUsesCoverageAa:Z

.field private mValue:[I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I
    .locals 2
    .parameter "egl"
    .parameter "display"
    .parameter "config"
    .parameter "attribute"
    .parameter "defaultValue"

    .prologue
    .line 160
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/MultisampleConfigChooser;->mValue:[I

    invoke-interface {p1, p2, p3, p4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/MultisampleConfigChooser;->mValue:[I

    const/4 v1, 0x0

    aget p5, v0, v1

    .line 163
    .end local p5
    :cond_0
    return p5
.end method


# virtual methods
.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 17
    .parameter "egl"
    .parameter "display"

    .prologue
    .line 56
    const/4 v1, 0x1

    new-array v1, v1, [I

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/mediatek/ngin3d/android/MultisampleConfigChooser;->mValue:[I

    .line 59
    const/16 v1, 0x11

    new-array v3, v1, [I

    fill-array-data v3, :array_0

    .line 72
    .local v3, configSpec:[I
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/ngin3d/android/MultisampleConfigChooser;->mValue:[I

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 74
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "eglChooseConfig failed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 76
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/ngin3d/android/MultisampleConfigChooser;->mValue:[I

    const/4 v2, 0x0

    aget v5, v1, v2

    .line 78
    .local v5, numConfigs:I
    if-gtz v5, :cond_4

    .line 83
    const/16 v13, 0x30e0

    .line 84
    .local v13, eglCoverageBuffersNV:I
    const/16 v14, 0x30e1

    .line 86
    .local v14, eglCoverageSamplesNV:I
    const/16 v1, 0x11

    new-array v3, v1, [I

    .end local v3           #configSpec:[I
    fill-array-data v3, :array_1

    .line 98
    .restart local v3       #configSpec:[I
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/ngin3d/android/MultisampleConfigChooser;->mValue:[I

    .end local v5           #numConfigs:I
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 100
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "2nd eglChooseConfig failed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 102
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/ngin3d/android/MultisampleConfigChooser;->mValue:[I

    const/4 v2, 0x0

    aget v5, v1, v2

    .line 104
    .restart local v5       #numConfigs:I
    if-gtz v5, :cond_3

    .line 106
    const/16 v1, 0xd

    new-array v3, v1, [I

    .end local v3           #configSpec:[I
    fill-array-data v3, :array_2

    .line 116
    .restart local v3       #configSpec:[I
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/ngin3d/android/MultisampleConfigChooser;->mValue:[I

    .end local v5           #numConfigs:I
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 118
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "3rd eglChooseConfig failed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 120
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/ngin3d/android/MultisampleConfigChooser;->mValue:[I

    const/4 v2, 0x0

    aget v5, v1, v2

    .line 122
    .restart local v5       #numConfigs:I
    if-gtz v5, :cond_4

    .line 123
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "No configs match configSpec"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 126
    :cond_3
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/mediatek/ngin3d/android/MultisampleConfigChooser;->mUsesCoverageAa:Z

    .line 131
    .end local v13           #eglCoverageBuffersNV:I
    .end local v14           #eglCoverageSamplesNV:I
    :cond_4
    new-array v4, v5, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 132
    .local v4, configs:[Ljavax/microedition/khronos/egl/EGLConfig;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/ngin3d/android/MultisampleConfigChooser;->mValue:[I

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v1

    if-nez v1, :cond_5

    .line 134
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "data eglChooseConfig failed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 141
    :cond_5
    const/16 v16, -0x1

    .line 142
    .local v16, index:I
    const/4 v15, 0x0

    .local v15, i:I
    :goto_0
    array-length v1, v4

    if-ge v15, v1, :cond_6

    .line 143
    aget-object v9, v4, v15

    const/16 v10, 0x3024

    const/4 v11, 0x0

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    invoke-direct/range {v6 .. v11}, Lcom/mediatek/ngin3d/android/MultisampleConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_8

    .line 144
    move/from16 v16, v15

    .line 148
    :cond_6
    const/4 v1, -0x1

    move/from16 v0, v16

    if-ne v0, v1, :cond_7

    .line 149
    const-string v1, "GDC11"

    const-string v2, "Did not find sane config, using first"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_7
    array-length v1, v4

    if-lez v1, :cond_9

    aget-object v12, v4, v16

    .line 152
    .local v12, config:Ljavax/microedition/khronos/egl/EGLConfig;
    :goto_1
    if-nez v12, :cond_a

    .line 153
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "No config chosen"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 142
    .end local v12           #config:Ljavax/microedition/khronos/egl/EGLConfig;
    :cond_8
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 151
    :cond_9
    const/4 v12, 0x0

    goto :goto_1

    .line 155
    .restart local v12       #config:Ljavax/microedition/khronos/egl/EGLConfig;
    :cond_a
    return-object v12

    .line 59
    :array_0
    .array-data 0x4
        0x24t 0x30t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x23t 0x30t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x22t 0x30t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x21t 0x30t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x25t 0x30t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x40t 0x30t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x32t 0x30t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x31t 0x30t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x38t 0x30t 0x0t 0x0t
    .end array-data

    .line 86
    :array_1
    .array-data 0x4
        0x24t 0x30t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x23t 0x30t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x22t 0x30t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x21t 0x30t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x25t 0x30t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x40t 0x30t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0xe0t 0x30t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0xe1t 0x30t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x38t 0x30t 0x0t 0x0t
    .end array-data

    .line 106
    :array_2
    .array-data 0x4
        0x24t 0x30t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x23t 0x30t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x22t 0x30t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x21t 0x30t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x25t 0x30t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x40t 0x30t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x38t 0x30t 0x0t 0x0t
    .end array-data
.end method

.method public usesCoverageAa()Z
    .locals 1

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/mediatek/ngin3d/android/MultisampleConfigChooser;->mUsesCoverageAa:Z

    return v0
.end method
