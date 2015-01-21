.class public Lcom/android/commands/input/Input;
.super Ljava/lang/Object;
.source "Input.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Input"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private injectKeyEvent(Landroid/view/KeyEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 200
    const-string v0, "Input"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "injectKeyEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 203
    return-void
.end method

.method private injectMotionEvent(IIJFFF)V
    .locals 23
    .parameter "inputSource"
    .parameter "action"
    .parameter "when"
    .parameter "x"
    .parameter "y"
    .parameter "pressure"

    .prologue
    .line 216
    const/high16 v21, 0x3f80

    .line 217
    .local v21, DEFAULT_SIZE:F
    const/16 v18, 0x0

    .line 218
    .local v18, DEFAULT_META_STATE:I
    const/high16 v19, 0x3f80

    .line 219
    .local v19, DEFAULT_PRECISION_X:F
    const/high16 v20, 0x3f80

    .line 220
    .local v20, DEFAULT_PRECISION_Y:F
    const/16 v16, 0x0

    .line 221
    .local v16, DEFAULT_DEVICE_ID:I
    const/16 v17, 0x0

    .line 222
    .local v17, DEFAULT_EDGE_FLAGS:I
    const/high16 v10, 0x3f80

    const/4 v11, 0x0

    const/high16 v12, 0x3f80

    const/high16 v13, 0x3f80

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-wide/from16 v2, p3

    move-wide/from16 v4, p3

    move/from16 v6, p2

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-static/range {v2 .. v15}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v22

    .line 225
    .local v22, event:Landroid/view/MotionEvent;
    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setSource(I)V

    .line 226
    const-string v2, "Input"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "injectMotionEvent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v2

    const/4 v3, 0x2

    move-object/from16 v0, v22

    invoke-virtual {v2, v0, v3}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 229
    return-void
.end method

.method private static final lerp(FFF)F
    .locals 1
    .parameter "a"
    .parameter "b"
    .parameter "alpha"

    .prologue
    .line 232
    sub-float v0, p1, p0

    mul-float/2addr v0, p2

    add-float/2addr v0, p0

    return v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1
    .parameter "args"

    .prologue
    .line 41
    new-instance v0, Lcom/android/commands/input/Input;

    invoke-direct {v0}, Lcom/android/commands/input/Input;-><init>()V

    invoke-direct {v0, p0}, Lcom/android/commands/input/Input;->run([Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method private run([Ljava/lang/String;)V
    .locals 9
    .parameter "args"

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 45
    array-length v0, p1

    if-ge v0, v2, :cond_0

    .line 46
    invoke-direct {p0}, Lcom/android/commands/input/Input;->showUsage()V

    .line 126
    :goto_0
    return-void

    .line 50
    :cond_0
    const/4 v0, 0x0

    aget-object v6, p1, v0

    .line 53
    .local v6, command:Ljava/lang/String;
    :try_start_0
    const-string v0, "text"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 54
    array-length v0, p1

    if-ne v0, v3, :cond_1

    .line 55
    const/4 v0, 0x1

    aget-object v0, p1, v0

    invoke-direct {p0, v0}, Lcom/android/commands/input/Input;->sendText(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 122
    :catch_0
    move-exception v0

    .line 124
    :cond_1
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: Invalid arguments for command: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 125
    invoke-direct {p0}, Lcom/android/commands/input/Input;->showUsage()V

    goto :goto_0

    .line 58
    :cond_2
    :try_start_1
    const-string v0, "keyevent"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 59
    array-length v0, p1

    if-ne v0, v3, :cond_1

    .line 60
    const/4 v0, 0x1

    aget-object v0, p1, v0

    invoke-static {v0}, Landroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v7

    .line 61
    .local v7, keyCode:I
    if-nez v7, :cond_3

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KEYCODE_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x1

    aget-object v2, p1, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v7

    .line 64
    :cond_3
    invoke-direct {p0, v7}, Lcom/android/commands/input/Input;->sendKeyEvent(I)V

    goto :goto_0

    .line 67
    .end local v7           #keyCode:I
    :cond_4
    const-string v0, "tap"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 68
    array-length v0, p1

    if-ne v0, v4, :cond_1

    .line 69
    const/16 v0, 0x1002

    const/4 v2, 0x1

    aget-object v2, p1, v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    const/4 v3, 0x2

    aget-object v3, p1, v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-direct {p0, v0, v2, v3}, Lcom/android/commands/input/Input;->sendTap(IFF)V

    goto/16 :goto_0

    .line 72
    :cond_5
    const-string v0, "swipe"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 73
    array-length v0, p1

    const/4 v2, 0x5

    if-ne v0, v2, :cond_1

    .line 74
    const/16 v1, 0x1002

    const/4 v0, 0x1

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    const/4 v0, 0x2

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    const/4 v0, 0x3

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    const/4 v0, 0x4

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/commands/input/Input;->sendSwipe(IFFFF)V

    goto/16 :goto_0

    .line 78
    :cond_6
    const-string v0, "touchscreen"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "touchpad"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 80
    :cond_7
    const/16 v1, 0x1002

    .line 81
    .local v1, inputSource:I
    const-string v0, "touchpad"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 82
    const v1, 0x100008

    .line 85
    :cond_8
    array-length v0, p1

    if-le v0, v2, :cond_1

    .line 86
    const/4 v0, 0x1

    aget-object v8, p1, v0

    .line 87
    .local v8, subcommand:Ljava/lang/String;
    const-string v0, "tap"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 88
    array-length v0, p1

    if-ne v0, v5, :cond_1

    .line 89
    const/4 v0, 0x2

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    const/4 v2, 0x3

    aget-object v2, p1, v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-direct {p0, v1, v0, v2}, Lcom/android/commands/input/Input;->sendTap(IFF)V

    goto/16 :goto_0

    .line 93
    :cond_9
    const-string v0, "swipe"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    array-length v0, p1

    const/4 v2, 0x6

    if-ne v0, v2, :cond_1

    .line 95
    const/4 v0, 0x2

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    const/4 v0, 0x3

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    const/4 v0, 0x4

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    const/4 v0, 0x5

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/commands/input/Input;->sendSwipe(IFFFF)V

    goto/16 :goto_0

    .line 102
    .end local v1           #inputSource:I
    .end local v8           #subcommand:Ljava/lang/String;
    :cond_a
    const-string v0, "trackball"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 104
    array-length v0, p1

    if-le v0, v2, :cond_1

    .line 105
    const/4 v0, 0x1

    aget-object v8, p1, v0

    .line 106
    .restart local v8       #subcommand:Ljava/lang/String;
    const-string v0, "press"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 107
    const v0, 0x10004

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/android/commands/input/Input;->sendTap(IFF)V

    goto/16 :goto_0

    .line 109
    :cond_b
    const-string v0, "roll"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    array-length v0, p1

    if-ne v0, v5, :cond_1

    .line 111
    const v0, 0x10004

    const/4 v2, 0x2

    aget-object v2, p1, v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    const/4 v3, 0x3

    aget-object v3, p1, v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-direct {p0, v0, v2, v3}, Lcom/android/commands/input/Input;->sendMove(IFF)V

    goto/16 :goto_0

    .line 118
    .end local v8           #subcommand:Ljava/lang/String;
    :cond_c
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: Unknown command: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 119
    invoke-direct {p0}, Lcom/android/commands/input/Input;->showUsage()V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private sendKeyEvent(I)V
    .locals 13
    .parameter "keyCode"

    .prologue
    .line 162
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 163
    .local v1, now:J
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x101

    move-wide v3, v1

    move v6, p1

    invoke-direct/range {v0 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    invoke-direct {p0, v0}, Lcom/android/commands/input/Input;->injectKeyEvent(Landroid/view/KeyEvent;)V

    .line 165
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x101

    move-wide v3, v1

    move v6, p1

    invoke-direct/range {v0 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    invoke-direct {p0, v0}, Lcom/android/commands/input/Input;->injectKeyEvent(Landroid/view/KeyEvent;)V

    .line 167
    return-void
.end method

.method private sendMove(IFF)V
    .locals 8
    .parameter "inputSource"
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 195
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 196
    .local v3, now:J
    const/4 v2, 0x2

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/commands/input/Input;->injectMotionEvent(IIJFFF)V

    .line 197
    return-void
.end method

.method private sendSwipe(IFFFF)V
    .locals 12
    .parameter "inputSource"
    .parameter "x1"
    .parameter "y1"
    .parameter "x2"
    .parameter "y2"

    .prologue
    .line 176
    const/16 v9, 0xb

    .line 177
    .local v9, NUM_STEPS:I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 178
    .local v4, now:J
    const/4 v3, 0x0

    const/high16 v8, 0x3f80

    move-object v1, p0

    move v2, p1

    move v6, p2

    move v7, p3

    invoke-direct/range {v1 .. v8}, Lcom/android/commands/input/Input;->injectMotionEvent(IIJFFF)V

    .line 179
    const/4 v11, 0x1

    .local v11, i:I
    :goto_0
    const/16 v1, 0xb

    if-ge v11, v1, :cond_0

    .line 180
    int-to-float v1, v11

    const/high16 v2, 0x4130

    div-float v10, v1, v2

    .line 181
    .local v10, alpha:F
    const/4 v3, 0x2

    move/from16 v0, p4

    invoke-static {p2, v0, v10}, Lcom/android/commands/input/Input;->lerp(FFF)F

    move-result v6

    move/from16 v0, p5

    invoke-static {p3, v0, v10}, Lcom/android/commands/input/Input;->lerp(FFF)F

    move-result v7

    const/high16 v8, 0x3f80

    move-object v1, p0

    move v2, p1

    invoke-direct/range {v1 .. v8}, Lcom/android/commands/input/Input;->injectMotionEvent(IIJFFF)V

    .line 179
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 184
    .end local v10           #alpha:F
    :cond_0
    const/4 v3, 0x1

    const/4 v8, 0x0

    move-object v1, p0

    move v2, p1

    move v6, p2

    move v7, p3

    invoke-direct/range {v1 .. v8}, Lcom/android/commands/input/Input;->injectMotionEvent(IIJFFF)V

    .line 185
    return-void
.end method

.method private sendTap(IFF)V
    .locals 8
    .parameter "inputSource"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 170
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 171
    .local v3, now:J
    const/4 v2, 0x0

    const/high16 v7, 0x3f80

    move-object v0, p0

    move v1, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/commands/input/Input;->injectMotionEvent(IIJFFF)V

    .line 172
    const/4 v2, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/commands/input/Input;->injectMotionEvent(IIJFFF)V

    .line 173
    return-void
.end method

.method private sendText(Ljava/lang/String;)V
    .locals 8
    .parameter "text"

    .prologue
    .line 136
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 138
    .local v0, buff:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .line 139
    .local v2, escapeFlag:Z
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    if-ge v4, v6, :cond_2

    .line 140
    if-eqz v2, :cond_0

    .line 141
    const/4 v2, 0x0

    .line 142
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v6

    const/16 v7, 0x73

    if-ne v6, v7, :cond_0

    .line 143
    const/16 v6, 0x20

    invoke-virtual {v0, v4, v6}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 144
    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 147
    :cond_0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v6

    const/16 v7, 0x25

    if-ne v6, v7, :cond_1

    .line 148
    const/4 v2, 0x1

    .line 139
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 152
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 154
    .local v1, chars:[C
    const/4 v6, -0x1

    invoke-static {v6}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v5

    .line 155
    .local v5, kcm:Landroid/view/KeyCharacterMap;
    invoke-virtual {v5, v1}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    move-result-object v3

    .line 156
    .local v3, events:[Landroid/view/KeyEvent;
    const/4 v4, 0x0

    :goto_1
    array-length v6, v3

    if-ge v4, v6, :cond_3

    .line 157
    aget-object v6, v3, v4

    invoke-direct {p0, v6}, Lcom/android/commands/input/Input;->injectKeyEvent(Landroid/view/KeyEvent;)V

    .line 156
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 159
    :cond_3
    return-void
.end method

.method private showUsage()V
    .locals 2

    .prologue
    .line 236
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "usage: input ..."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 237
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       input text <string>"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 238
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       input keyevent <key code number or name>"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 239
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       input [touchscreen|touchpad] tap <x> <y>"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 240
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       input [touchscreen|touchpad] swipe <x1> <y1> <x2> <y2>"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 241
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       input trackball press"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 242
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       input trackball roll <dx> <dy>"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 243
    return-void
.end method
