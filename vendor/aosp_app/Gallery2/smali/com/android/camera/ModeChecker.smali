.class public Lcom/android/camera/ModeChecker;
.super Ljava/lang/Object;
.source "ModeChecker.java"


# static fields
.field private static final MATRIX_NORMAL_ENABLE:[[Z = null

.field private static final MATRIX_PREVIEW3D_ENABLE:[[Z = null

.field private static final MATRIX_SINGLE3D_ENABLE:[[Z = null

.field private static final MODE_STRING_NORMAL:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "ModeChecker"


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 13
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/camera/ModeChecker;->MODE_STRING_NORMAL:[Ljava/lang/String;

    .line 14
    const/16 v0, 0xb

    new-array v0, v0, [[Z

    sput-object v0, Lcom/android/camera/ModeChecker;->MATRIX_NORMAL_ENABLE:[[Z

    .line 15
    const/16 v0, 0xb

    new-array v0, v0, [[Z

    sput-object v0, Lcom/android/camera/ModeChecker;->MATRIX_PREVIEW3D_ENABLE:[[Z

    .line 16
    const/16 v0, 0xb

    new-array v0, v0, [[Z

    sput-object v0, Lcom/android/camera/ModeChecker;->MATRIX_SINGLE3D_ENABLE:[[Z

    .line 19
    sget-object v0, Lcom/android/camera/ModeChecker;->MODE_STRING_NORMAL:[Ljava/lang/String;

    const-string v1, "normal"

    aput-object v1, v0, v4

    .line 20
    sget-object v0, Lcom/android/camera/ModeChecker;->MODE_STRING_NORMAL:[Ljava/lang/String;

    const-string v1, "hdr"

    aput-object v1, v0, v5

    .line 21
    sget-object v0, Lcom/android/camera/ModeChecker;->MODE_STRING_NORMAL:[Ljava/lang/String;

    const-string v1, "face_beauty"

    aput-object v1, v0, v3

    .line 22
    sget-object v0, Lcom/android/camera/ModeChecker;->MODE_STRING_NORMAL:[Ljava/lang/String;

    const-string v1, "autorama"

    aput-object v1, v0, v6

    .line 23
    sget-object v0, Lcom/android/camera/ModeChecker;->MODE_STRING_NORMAL:[Ljava/lang/String;

    const-string v1, "mav"

    aput-object v1, v0, v7

    .line 24
    sget-object v0, Lcom/android/camera/ModeChecker;->MODE_STRING_NORMAL:[Ljava/lang/String;

    const/4 v1, 0x5

    const-string v2, "asd"

    aput-object v2, v0, v1

    .line 25
    sget-object v0, Lcom/android/camera/ModeChecker;->MODE_STRING_NORMAL:[Ljava/lang/String;

    const/4 v1, 0x6

    const-string v2, "smileshot"

    aput-object v2, v0, v1

    .line 26
    sget-object v0, Lcom/android/camera/ModeChecker;->MODE_STRING_NORMAL:[Ljava/lang/String;

    const/4 v1, 0x7

    const-string v2, "motiontrack"

    aput-object v2, v0, v1

    .line 29
    sget-object v0, Lcom/android/camera/ModeChecker;->MATRIX_NORMAL_ENABLE:[[Z

    new-array v1, v3, [Z

    fill-array-data v1, :array_0

    aput-object v1, v0, v4

    .line 30
    sget-object v0, Lcom/android/camera/ModeChecker;->MATRIX_NORMAL_ENABLE:[[Z

    new-array v1, v3, [Z

    fill-array-data v1, :array_1

    aput-object v1, v0, v5

    .line 31
    sget-object v0, Lcom/android/camera/ModeChecker;->MATRIX_NORMAL_ENABLE:[[Z

    new-array v1, v3, [Z

    fill-array-data v1, :array_2

    aput-object v1, v0, v3

    .line 32
    sget-object v0, Lcom/android/camera/ModeChecker;->MATRIX_NORMAL_ENABLE:[[Z

    new-array v1, v3, [Z

    fill-array-data v1, :array_3

    aput-object v1, v0, v6

    .line 33
    sget-object v0, Lcom/android/camera/ModeChecker;->MATRIX_NORMAL_ENABLE:[[Z

    new-array v1, v3, [Z

    fill-array-data v1, :array_4

    aput-object v1, v0, v7

    .line 34
    sget-object v0, Lcom/android/camera/ModeChecker;->MATRIX_NORMAL_ENABLE:[[Z

    const/4 v1, 0x5

    new-array v2, v3, [Z

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    .line 35
    sget-object v0, Lcom/android/camera/ModeChecker;->MATRIX_NORMAL_ENABLE:[[Z

    const/4 v1, 0x6

    new-array v2, v3, [Z

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    .line 36
    sget-object v0, Lcom/android/camera/ModeChecker;->MATRIX_NORMAL_ENABLE:[[Z

    const/4 v1, 0x7

    new-array v2, v3, [Z

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    .line 37
    sget-object v0, Lcom/android/camera/ModeChecker;->MATRIX_NORMAL_ENABLE:[[Z

    const/16 v1, 0x9

    new-array v2, v3, [Z

    fill-array-data v2, :array_8

    aput-object v2, v0, v1

    .line 38
    sget-object v0, Lcom/android/camera/ModeChecker;->MATRIX_NORMAL_ENABLE:[[Z

    const/16 v1, 0xa

    new-array v2, v3, [Z

    fill-array-data v2, :array_9

    aput-object v2, v0, v1

    .line 39
    sget-object v0, Lcom/android/camera/ModeChecker;->MATRIX_NORMAL_ENABLE:[[Z

    const/16 v1, 0x8

    new-array v2, v3, [Z

    fill-array-data v2, :array_a

    aput-object v2, v0, v1

    .line 41
    sget-object v0, Lcom/android/camera/ModeChecker;->MATRIX_PREVIEW3D_ENABLE:[[Z

    new-array v1, v3, [Z

    fill-array-data v1, :array_b

    aput-object v1, v0, v4

    .line 42
    sget-object v0, Lcom/android/camera/ModeChecker;->MATRIX_PREVIEW3D_ENABLE:[[Z

    new-array v1, v3, [Z

    fill-array-data v1, :array_c

    aput-object v1, v0, v5

    .line 43
    sget-object v0, Lcom/android/camera/ModeChecker;->MATRIX_PREVIEW3D_ENABLE:[[Z

    new-array v1, v3, [Z

    fill-array-data v1, :array_d

    aput-object v1, v0, v3

    .line 44
    sget-object v0, Lcom/android/camera/ModeChecker;->MATRIX_PREVIEW3D_ENABLE:[[Z

    new-array v1, v3, [Z

    fill-array-data v1, :array_e

    aput-object v1, v0, v6

    .line 45
    sget-object v0, Lcom/android/camera/ModeChecker;->MATRIX_PREVIEW3D_ENABLE:[[Z

    new-array v1, v3, [Z

    fill-array-data v1, :array_f

    aput-object v1, v0, v7

    .line 46
    sget-object v0, Lcom/android/camera/ModeChecker;->MATRIX_PREVIEW3D_ENABLE:[[Z

    const/4 v1, 0x5

    new-array v2, v3, [Z

    fill-array-data v2, :array_10

    aput-object v2, v0, v1

    .line 47
    sget-object v0, Lcom/android/camera/ModeChecker;->MATRIX_PREVIEW3D_ENABLE:[[Z

    const/4 v1, 0x6

    new-array v2, v3, [Z

    fill-array-data v2, :array_11

    aput-object v2, v0, v1

    .line 48
    sget-object v0, Lcom/android/camera/ModeChecker;->MATRIX_PREVIEW3D_ENABLE:[[Z

    const/4 v1, 0x7

    new-array v2, v3, [Z

    fill-array-data v2, :array_12

    aput-object v2, v0, v1

    .line 49
    sget-object v0, Lcom/android/camera/ModeChecker;->MATRIX_PREVIEW3D_ENABLE:[[Z

    const/16 v1, 0x9

    new-array v2, v3, [Z

    fill-array-data v2, :array_13

    aput-object v2, v0, v1

    .line 50
    sget-object v0, Lcom/android/camera/ModeChecker;->MATRIX_PREVIEW3D_ENABLE:[[Z

    const/16 v1, 0xa

    new-array v2, v3, [Z

    fill-array-data v2, :array_14

    aput-object v2, v0, v1

    .line 51
    sget-object v0, Lcom/android/camera/ModeChecker;->MATRIX_PREVIEW3D_ENABLE:[[Z

    const/16 v1, 0x8

    new-array v2, v3, [Z

    fill-array-data v2, :array_15

    aput-object v2, v0, v1

    .line 53
    sget-object v0, Lcom/android/camera/ModeChecker;->MATRIX_SINGLE3D_ENABLE:[[Z

    new-array v1, v3, [Z

    fill-array-data v1, :array_16

    aput-object v1, v0, v4

    .line 54
    sget-object v0, Lcom/android/camera/ModeChecker;->MATRIX_SINGLE3D_ENABLE:[[Z

    new-array v1, v3, [Z

    fill-array-data v1, :array_17

    aput-object v1, v0, v5

    .line 55
    sget-object v0, Lcom/android/camera/ModeChecker;->MATRIX_SINGLE3D_ENABLE:[[Z

    new-array v1, v3, [Z

    fill-array-data v1, :array_18

    aput-object v1, v0, v3

    .line 56
    sget-object v0, Lcom/android/camera/ModeChecker;->MATRIX_SINGLE3D_ENABLE:[[Z

    new-array v1, v3, [Z

    fill-array-data v1, :array_19

    aput-object v1, v0, v6

    .line 57
    sget-object v0, Lcom/android/camera/ModeChecker;->MATRIX_SINGLE3D_ENABLE:[[Z

    new-array v1, v3, [Z

    fill-array-data v1, :array_1a

    aput-object v1, v0, v7

    .line 58
    sget-object v0, Lcom/android/camera/ModeChecker;->MATRIX_SINGLE3D_ENABLE:[[Z

    const/4 v1, 0x5

    new-array v2, v3, [Z

    fill-array-data v2, :array_1b

    aput-object v2, v0, v1

    .line 59
    sget-object v0, Lcom/android/camera/ModeChecker;->MATRIX_SINGLE3D_ENABLE:[[Z

    const/4 v1, 0x6

    new-array v2, v3, [Z

    fill-array-data v2, :array_1c

    aput-object v2, v0, v1

    .line 60
    sget-object v0, Lcom/android/camera/ModeChecker;->MATRIX_SINGLE3D_ENABLE:[[Z

    const/4 v1, 0x7

    new-array v2, v3, [Z

    fill-array-data v2, :array_1d

    aput-object v2, v0, v1

    .line 61
    sget-object v0, Lcom/android/camera/ModeChecker;->MATRIX_SINGLE3D_ENABLE:[[Z

    const/16 v1, 0x9

    new-array v2, v3, [Z

    fill-array-data v2, :array_1e

    aput-object v2, v0, v1

    .line 62
    sget-object v0, Lcom/android/camera/ModeChecker;->MATRIX_SINGLE3D_ENABLE:[[Z

    const/16 v1, 0xa

    new-array v2, v3, [Z

    fill-array-data v2, :array_1f

    aput-object v2, v0, v1

    .line 63
    sget-object v0, Lcom/android/camera/ModeChecker;->MATRIX_SINGLE3D_ENABLE:[[Z

    const/16 v1, 0x8

    new-array v2, v3, [Z

    fill-array-data v2, :array_20

    aput-object v2, v0, v1

    .line 64
    return-void

    .line 29
    nop

    :array_0
    .array-data 0x1
        0x1t
        0x1t
    .end array-data

    .line 30
    nop

    :array_1
    .array-data 0x1
        0x1t
        0x0t
    .end array-data

    .line 31
    nop

    :array_2
    .array-data 0x1
        0x1t
        0x1t
    .end array-data

    .line 32
    nop

    :array_3
    .array-data 0x1
        0x1t
        0x0t
    .end array-data

    .line 33
    nop

    :array_4
    .array-data 0x1
        0x1t
        0x0t
    .end array-data

    .line 34
    nop

    :array_5
    .array-data 0x1
        0x1t
        0x0t
    .end array-data

    .line 35
    nop

    :array_6
    .array-data 0x1
        0x1t
        0x1t
    .end array-data

    .line 36
    nop

    :array_7
    .array-data 0x1
        0x1t
        0x0t
    .end array-data

    .line 37
    nop

    :array_8
    .array-data 0x1
        0x1t
        0x1t
    .end array-data

    .line 38
    nop

    :array_9
    .array-data 0x1
        0x1t
        0x1t
    .end array-data

    .line 39
    nop

    :array_a
    .array-data 0x1
        0x1t
        0x0t
    .end array-data

    .line 41
    nop

    :array_b
    .array-data 0x1
        0x1t
        0x0t
    .end array-data

    .line 42
    nop

    :array_c
    .array-data 0x1
        0x0t
        0x0t
    .end array-data

    .line 43
    nop

    :array_d
    .array-data 0x1
        0x0t
        0x0t
    .end array-data

    .line 44
    nop

    :array_e
    .array-data 0x1
        0x0t
        0x0t
    .end array-data

    .line 45
    nop

    :array_f
    .array-data 0x1
        0x0t
        0x0t
    .end array-data

    .line 46
    nop

    :array_10
    .array-data 0x1
        0x0t
        0x0t
    .end array-data

    .line 47
    nop

    :array_11
    .array-data 0x1
        0x0t
        0x0t
    .end array-data

    .line 48
    nop

    :array_12
    .array-data 0x1
        0x0t
        0x0t
    .end array-data

    .line 49
    nop

    :array_13
    .array-data 0x1
        0x1t
        0x0t
    .end array-data

    .line 50
    nop

    :array_14
    .array-data 0x1
        0x0t
        0x0t
    .end array-data

    .line 51
    nop

    :array_15
    .array-data 0x1
        0x0t
        0x0t
    .end array-data

    .line 53
    nop

    :array_16
    .array-data 0x1
        0x1t
        0x0t
    .end array-data

    .line 54
    nop

    :array_17
    .array-data 0x1
        0x0t
        0x0t
    .end array-data

    .line 55
    nop

    :array_18
    .array-data 0x1
        0x0t
        0x0t
    .end array-data

    .line 56
    nop

    :array_19
    .array-data 0x1
        0x1t
        0x0t
    .end array-data

    .line 57
    nop

    :array_1a
    .array-data 0x1
        0x0t
        0x0t
    .end array-data

    .line 58
    nop

    :array_1b
    .array-data 0x1
        0x0t
        0x0t
    .end array-data

    .line 59
    nop

    :array_1c
    .array-data 0x1
        0x0t
        0x0t
    .end array-data

    .line 60
    nop

    :array_1d
    .array-data 0x1
        0x0t
        0x0t
    .end array-data

    .line 61
    nop

    :array_1e
    .array-data 0x1
        0x0t
        0x0t
    .end array-data

    .line 62
    nop

    :array_1f
    .array-data 0x1
        0x0t
        0x0t
    .end array-data

    .line 63
    nop

    :array_20
    .array-data 0x1
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCameraPickerVisible(Lcom/android/camera/Camera;)Z
    .locals 9
    .parameter "camera"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 117
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getCameraCount()I

    move-result v0

    .line 118
    .local v0, cameranum:I
    const/4 v7, 0x2

    if-ge v0, v7, :cond_0

    .line 134
    :goto_0
    return v6

    .line 121
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getCurrentMode()I

    move-result v3

    .line 122
    .local v3, mode:I
    invoke-virtual {p0}, Lcom/android/camera/Camera;->isStereoMode()Z

    move-result v4

    .line 124
    .local v4, stereo:Z
    invoke-static {}, Lcom/android/camera/FeatureSwitcher;->isStereoSingle3d()Z

    move-result v7

    if-eqz v7, :cond_1

    if-eqz v4, :cond_1

    .line 125
    sget-object v2, Lcom/android/camera/ModeChecker;->MATRIX_SINGLE3D_ENABLE:[[Z

    .line 131
    .local v2, matrix:[[Z
    :goto_1
    rem-int/lit8 v1, v3, 0x64

    .line 132
    .local v1, index:I
    aget-object v7, v2, v1

    aget-boolean v7, v7, v6

    if-eqz v7, :cond_3

    aget-object v7, v2, v1

    aget-boolean v7, v7, v5

    if-eqz v7, :cond_3

    .line 133
    .local v5, visible:Z
    :goto_2
    const-string v6, "ModeChecker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getCameraPickerVisible("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") return "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v5

    .line 134
    goto :goto_0

    .line 126
    .end local v1           #index:I
    .end local v2           #matrix:[[Z
    .end local v5           #visible:Z
    :cond_1
    if-eqz v4, :cond_2

    .line 127
    sget-object v2, Lcom/android/camera/ModeChecker;->MATRIX_PREVIEW3D_ENABLE:[[Z

    .restart local v2       #matrix:[[Z
    goto :goto_1

    .line 129
    .end local v2           #matrix:[[Z
    :cond_2
    sget-object v2, Lcom/android/camera/ModeChecker;->MATRIX_NORMAL_ENABLE:[[Z

    .restart local v2       #matrix:[[Z
    goto :goto_1

    .restart local v1       #index:I
    :cond_3
    move v5, v6

    .line 132
    goto :goto_2
.end method

.method public static getModePickerVisible(Lcom/android/camera/Camera;II)Z
    .locals 7
    .parameter "camera"
    .parameter "cameraId"
    .parameter "mode"

    .prologue
    .line 138
    const/4 v3, 0x0

    .line 139
    .local v3, visible:Z
    invoke-virtual {p0}, Lcom/android/camera/Camera;->isStereoMode()Z

    move-result v2

    .line 140
    .local v2, stereo:Z
    invoke-virtual {p0}, Lcom/android/camera/Camera;->effectsActive()Z

    move-result v4

    if-nez v4, :cond_3

    .line 142
    invoke-static {}, Lcom/android/camera/FeatureSwitcher;->isStereoSingle3d()Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v2, :cond_1

    .line 143
    sget-object v1, Lcom/android/camera/ModeChecker;->MATRIX_SINGLE3D_ENABLE:[[Z

    .line 149
    .local v1, matrix:[[Z
    :goto_0
    rem-int/lit8 v0, p2, 0x64

    .line 150
    .local v0, index:I
    aget-object v4, v1, v0

    aget-boolean v3, v4, p1

    .line 154
    .end local v0           #index:I
    .end local v1           #matrix:[[Z
    :cond_0
    :goto_1
    const-string v4, "ModeChecker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getModePickerVisible("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") return "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    return v3

    .line 144
    :cond_1
    if-eqz v2, :cond_2

    .line 145
    sget-object v1, Lcom/android/camera/ModeChecker;->MATRIX_PREVIEW3D_ENABLE:[[Z

    .restart local v1       #matrix:[[Z
    goto :goto_0

    .line 147
    .end local v1           #matrix:[[Z
    :cond_2
    sget-object v1, Lcom/android/camera/ModeChecker;->MATRIX_NORMAL_ENABLE:[[Z

    .restart local v1       #matrix:[[Z
    goto :goto_0

    .line 151
    .end local v1           #matrix:[[Z
    :cond_3
    const/16 v4, 0x9

    if-eq v4, p2, :cond_4

    const/16 v4, 0x6d

    if-ne v4, p2, :cond_0

    .line 152
    :cond_4
    const/4 v3, 0x1

    goto :goto_1
.end method

.method public static getStereoPickerVisibile(Lcom/android/camera/Camera;)Z
    .locals 8
    .parameter "camera"

    .prologue
    const/4 v5, 0x0

    .line 97
    invoke-static {}, Lcom/android/camera/FeatureSwitcher;->isStereo3dEnable()Z

    move-result v6

    if-nez v6, :cond_0

    .line 113
    :goto_0
    return v5

    .line 100
    :cond_0
    const/4 v4, 0x0

    .line 101
    .local v4, visible:Z
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getCurrentMode()I

    move-result v3

    .line 102
    .local v3, mode:I
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getCameraId()I

    move-result v0

    .line 104
    .local v0, cameraId:I
    invoke-static {}, Lcom/android/camera/FeatureSwitcher;->isStereoSingle3d()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 105
    sget-object v2, Lcom/android/camera/ModeChecker;->MATRIX_SINGLE3D_ENABLE:[[Z

    .line 110
    .local v2, matrix3d:[[Z
    :goto_1
    rem-int/lit8 v1, v3, 0x64

    .line 111
    .local v1, index:I
    aget-object v6, v2, v1

    aget-boolean v6, v6, v0

    if-eqz v6, :cond_2

    sget-object v6, Lcom/android/camera/ModeChecker;->MATRIX_NORMAL_ENABLE:[[Z

    aget-object v6, v6, v1

    aget-boolean v6, v6, v0

    if-eqz v6, :cond_2

    const/4 v4, 0x1

    .line 112
    :goto_2
    const-string v5, "ModeChecker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getStereoPickerVisibile("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") return "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v4

    .line 113
    goto :goto_0

    .line 107
    .end local v1           #index:I
    .end local v2           #matrix3d:[[Z
    :cond_1
    sget-object v2, Lcom/android/camera/ModeChecker;->MATRIX_PREVIEW3D_ENABLE:[[Z

    .restart local v2       #matrix3d:[[Z
    goto :goto_1

    .restart local v1       #index:I
    :cond_2
    move v4, v5

    .line 111
    goto :goto_2
.end method

.method public static modesSupportedByCamera(Lcom/android/camera/Camera;I)I
    .locals 5
    .parameter "camera"
    .parameter "cameraId"

    .prologue
    .line 159
    const/4 v0, 0x0

    .line 160
    .local v0, count:I
    invoke-virtual {p0}, Lcom/android/camera/Camera;->isStereoMode()Z

    move-result v3

    .line 162
    .local v3, stereo:Z
    invoke-static {}, Lcom/android/camera/FeatureSwitcher;->isStereoSingle3d()Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v3, :cond_1

    .line 163
    sget-object v2, Lcom/android/camera/ModeChecker;->MATRIX_SINGLE3D_ENABLE:[[Z

    .line 169
    .local v2, matrix:[[Z
    :goto_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    const/16 v4, 0xb

    if-ge v1, v4, :cond_3

    .line 170
    aget-object v4, v2, v1

    aget-boolean v4, v4, p1

    if-eqz v4, :cond_0

    .line 171
    add-int/lit8 v0, v0, 0x1

    .line 169
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 164
    .end local v1           #i:I
    .end local v2           #matrix:[[Z
    :cond_1
    if-eqz v3, :cond_2

    .line 165
    sget-object v2, Lcom/android/camera/ModeChecker;->MATRIX_PREVIEW3D_ENABLE:[[Z

    .restart local v2       #matrix:[[Z
    goto :goto_0

    .line 167
    .end local v2           #matrix:[[Z
    :cond_2
    sget-object v2, Lcom/android/camera/ModeChecker;->MATRIX_NORMAL_ENABLE:[[Z

    .restart local v2       #matrix:[[Z
    goto :goto_0

    .line 174
    .restart local v1       #i:I
    :cond_3
    return v0
.end method

.method public static updateModeMatrix(Lcom/android/camera/Camera;I)V
    .locals 8
    .parameter "camera"
    .parameter "cameraId"

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 67
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSupportedCaptureMode()Ljava/util/List;

    move-result-object v2

    .line 69
    .local v2, supported:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v3, "ModeChecker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateModeMatrix: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v1

    .line 72
    .local v1, scenemode:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v3, "ModeChecker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateModeMatrix: scenemode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-static {}, Lcom/android/camera/FeatureSwitcher;->isStereo3dEnable()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/Camera;->isStereoMode()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v7, :cond_4

    .line 78
    sget-object v3, Lcom/android/camera/ModeChecker;->MATRIX_NORMAL_ENABLE:[[Z

    aget-object v3, v3, v0

    aget-boolean v3, v3, p1

    if-eqz v3, :cond_2

    sget-object v3, Lcom/android/camera/ModeChecker;->MODE_STRING_NORMAL:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-interface {v2, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_2

    .line 80
    const/4 v3, 0x1

    if-eq v0, v3, :cond_3

    .line 81
    sget-object v3, Lcom/android/camera/ModeChecker;->MATRIX_NORMAL_ENABLE:[[Z

    aget-object v3, v3, v0

    aput-boolean v6, v3, p1

    .line 86
    :cond_2
    :goto_2
    const-string v3, "ModeChecker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Camera "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'s "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/camera/ModeChecker;->MODE_STRING_NORMAL:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/camera/ModeChecker;->MATRIX_NORMAL_ENABLE:[[Z

    aget-object v5, v5, v0

    aget-boolean v5, v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 82
    :cond_3
    sget-object v3, Lcom/android/camera/ModeChecker;->MODE_STRING_NORMAL:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-interface {v1, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_2

    .line 83
    sget-object v3, Lcom/android/camera/ModeChecker;->MATRIX_NORMAL_ENABLE:[[Z

    aget-object v3, v3, v0

    aput-boolean v6, v3, p1

    goto :goto_2

    .line 91
    :cond_4
    if-nez p1, :cond_0

    .line 92
    sget-object v3, Lcom/android/camera/ModeChecker;->MATRIX_NORMAL_ENABLE:[[Z

    aget-object v3, v3, v7

    invoke-static {}, Lcom/android/camera/FeatureSwitcher;->isLivePhotoEnabled()Z

    move-result v4

    aput-boolean v4, v3, p1

    goto :goto_0
.end method
