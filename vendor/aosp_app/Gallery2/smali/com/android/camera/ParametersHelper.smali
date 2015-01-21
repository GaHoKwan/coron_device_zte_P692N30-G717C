.class public Lcom/android/camera/ParametersHelper;
.super Ljava/lang/Object;
.source "ParametersHelper.java"


# static fields
.field public static final FACEBEAUTY_SHARP:I = 0x2

.field public static final FACEBEAUTY_SKIN_COLOR:I = 0x1

.field public static final FACEBEAUTY_SMOOTH:I = 0x0

.field public static final KEY_FACEBEAUTY_SHARP:Ljava/lang/String; = "fb-sharp"

.field public static final KEY_FACEBEAUTY_SHARP_MAX:Ljava/lang/String; = "fb-sharp-max"

.field public static final KEY_FACEBEAUTY_SHARP_MIN:Ljava/lang/String; = "fb-sharp-min"

.field public static final KEY_FACEBEAUTY_SKIN_COLOR:Ljava/lang/String; = "fb-skin-color"

.field public static final KEY_FACEBEAUTY_SKIN_COLOR_MAX:Ljava/lang/String; = "fb-skin-color-max"

.field public static final KEY_FACEBEAUTY_SKIN_COLOR_MIN:Ljava/lang/String; = "fb-skin-color-min"

.field public static final KEY_FACEBEAUTY_SMOOTH:Ljava/lang/String; = "fb-smooth-level"

.field public static final KEY_FACEBEAUTY_SMOOTH_MAX:Ljava/lang/String; = "fb-smooth-level-max"

.field public static final KEY_FACEBEAUTY_SMOOTH_MIN:Ljava/lang/String; = "fb-smooth-level-min"

.field public static final KEY_RECORDING_HINT:Ljava/lang/String; = "recording-hint"

.field public static final KEY_SCENE_MODE_HDR:Ljava/lang/String; = "hdr"

.field public static final KEY_SCENE_MODE_NORMAL:Ljava/lang/String; = "normal"

.field private static final SUPPORTED_VALUES_SUFFIX:Ljava/lang/String; = "-values"

.field private static final TAG:Ljava/lang/String; = "ParametersHelper"

.field public static final ZSD_MODE_OFF:Ljava/lang/String; = "off"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInt(Landroid/hardware/Camera$Parameters;Ljava/lang/String;I)I
    .locals 2
    .parameter "parameters"
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 131
    if-eqz p0, :cond_0

    .line 133
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 138
    .end local p2
    :cond_0
    :goto_0
    return p2

    .line 134
    .restart local p2
    :catch_0
    move-exception v0

    .line 135
    .local v0, ex:Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public static getMaxLevel(Landroid/hardware/Camera$Parameters;I)I
    .locals 2
    .parameter "parameters"
    .parameter "key"

    .prologue
    const/4 v0, 0x0

    .line 44
    packed-switch p1, :pswitch_data_0

    .line 52
    :goto_0
    return v0

    .line 46
    :pswitch_0
    const-string v1, "fb-smooth-level-max"

    invoke-static {p0, v1, v0}, Lcom/android/camera/ParametersHelper;->getInt(Landroid/hardware/Camera$Parameters;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 48
    :pswitch_1
    const-string v1, "fb-skin-color-max"

    invoke-static {p0, v1, v0}, Lcom/android/camera/ParametersHelper;->getInt(Landroid/hardware/Camera$Parameters;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 50
    :pswitch_2
    const-string v1, "fb-sharp-max"

    invoke-static {p0, v1, v0}, Lcom/android/camera/ParametersHelper;->getInt(Landroid/hardware/Camera$Parameters;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 44
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getMinLevel(Landroid/hardware/Camera$Parameters;I)I
    .locals 2
    .parameter "parameters"
    .parameter "key"

    .prologue
    const/4 v0, 0x0

    .line 57
    packed-switch p1, :pswitch_data_0

    .line 65
    :goto_0
    return v0

    .line 59
    :pswitch_0
    const-string v1, "fb-smooth-level-min"

    invoke-static {p0, v1, v0}, Lcom/android/camera/ParametersHelper;->getInt(Landroid/hardware/Camera$Parameters;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 61
    :pswitch_1
    const-string v1, "fb-skin-color-min"

    invoke-static {p0, v1, v0}, Lcom/android/camera/ParametersHelper;->getInt(Landroid/hardware/Camera$Parameters;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 63
    :pswitch_2
    const-string v1, "fb-sharp-min"

    invoke-static {p0, v1, v0}, Lcom/android/camera/ParametersHelper;->getInt(Landroid/hardware/Camera$Parameters;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getSupportedValues(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .parameter "parameters"
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/Camera$Parameters;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 121
    const/4 v1, 0x0

    .line 122
    .local v1, supportedList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    .line 123
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-values"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, str:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/ParametersHelper;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 126
    .end local v0           #str:Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method public static isFaceBeautySupported(Landroid/hardware/Camera$Parameters;)Z
    .locals 3
    .parameter "parameters"

    .prologue
    .line 29
    if-eqz p0, :cond_1

    .line 30
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedCaptureMode()Ljava/util/List;

    move-result-object v0

    .line 31
    .local v0, supported:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "face_beauty"

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 33
    .end local v0           #supported:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "(ParametersHelper)why parameters is null?"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static isSupportedSmooth(Landroid/hardware/Camera$Parameters;)Z
    .locals 3
    .parameter "parameters"

    .prologue
    const/4 v2, 0x0

    .line 38
    invoke-static {p0, v2}, Lcom/android/camera/ParametersHelper;->getMaxLevel(Landroid/hardware/Camera$Parameters;I)I

    move-result v0

    .line 39
    .local v0, max:I
    invoke-static {p0, v2}, Lcom/android/camera/ParametersHelper;->getMinLevel(Landroid/hardware/Camera$Parameters;I)I

    move-result v1

    .line 40
    .local v1, min:I
    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public static split(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7
    .parameter "str"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 107
    const/4 v3, 0x0

    .line 108
    .local v3, substrings:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    .line 109
    new-instance v2, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v4, 0x2c

    invoke-direct {v2, v4}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 110
    .local v2, splitter:Landroid/text/TextUtils$StringSplitter;
    invoke-interface {v2, p0}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    .line 111
    new-instance v3, Ljava/util/ArrayList;

    .end local v3           #substrings:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 112
    .restart local v3       #substrings:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v2}, Landroid/text/TextUtils$StringSplitter;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 113
    .local v1, s:Ljava/lang/String;
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 116
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #s:Ljava/lang/String;
    .end local v2           #splitter:Landroid/text/TextUtils$StringSplitter;
    :cond_0
    const-string v4, "ParametersHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "split("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") return "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    return-object v3
.end method
