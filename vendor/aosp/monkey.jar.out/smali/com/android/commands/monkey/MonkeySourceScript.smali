.class public Lcom/android/commands/monkey/MonkeySourceScript;
.super Ljava/lang/Object;
.source "MonkeySourceScript.java"

# interfaces
.implements Lcom/android/commands/monkey/MonkeyEventSource;


# static fields
.field private static final EVENT_KEYWORD_ACTIVITY:Ljava/lang/String; = "LaunchActivity"

.field private static final EVENT_KEYWORD_DEVICE_WAKEUP:Ljava/lang/String; = "DeviceWakeUp"

.field private static final EVENT_KEYWORD_DRAG:Ljava/lang/String; = "Drag"

.field private static final EVENT_KEYWORD_END_APP_FRAMERATE_CAPTURE:Ljava/lang/String; = "EndCaptureAppFramerate"

.field private static final EVENT_KEYWORD_END_FRAMERATE_CAPTURE:Ljava/lang/String; = "EndCaptureFramerate"

.field private static final EVENT_KEYWORD_FLIP:Ljava/lang/String; = "DispatchFlip"

.field private static final EVENT_KEYWORD_INPUT_STRING:Ljava/lang/String; = "DispatchString"

.field private static final EVENT_KEYWORD_INSTRUMENTATION:Ljava/lang/String; = "LaunchInstrumentation"

.field private static final EVENT_KEYWORD_KEY:Ljava/lang/String; = "DispatchKey"

.field private static final EVENT_KEYWORD_KEYPRESS:Ljava/lang/String; = "DispatchPress"

.field private static final EVENT_KEYWORD_LONGPRESS:Ljava/lang/String; = "LongPress"

.field private static final EVENT_KEYWORD_PINCH_ZOOM:Ljava/lang/String; = "PinchZoom"

.field private static final EVENT_KEYWORD_POINTER:Ljava/lang/String; = "DispatchPointer"

.field private static final EVENT_KEYWORD_POWERLOG:Ljava/lang/String; = "PowerLog"

.field private static final EVENT_KEYWORD_PRESSANDHOLD:Ljava/lang/String; = "PressAndHold"

.field private static final EVENT_KEYWORD_PROFILE_WAIT:Ljava/lang/String; = "ProfileWait"

.field private static final EVENT_KEYWORD_ROTATION:Ljava/lang/String; = "RotateScreen"

.field private static final EVENT_KEYWORD_RUNCMD:Ljava/lang/String; = "RunCmd"

.field private static final EVENT_KEYWORD_START_APP_FRAMERATE_CAPTURE:Ljava/lang/String; = "StartCaptureAppFramerate"

.field private static final EVENT_KEYWORD_START_FRAMERATE_CAPTURE:Ljava/lang/String; = "StartCaptureFramerate"

.field private static final EVENT_KEYWORD_TAP:Ljava/lang/String; = "Tap"

.field private static final EVENT_KEYWORD_TRACKBALL:Ljava/lang/String; = "DispatchTrackball"

.field private static final EVENT_KEYWORD_WAIT:Ljava/lang/String; = "UserWait"

.field private static final EVENT_KEYWORD_WRITEPOWERLOG:Ljava/lang/String; = "WriteLog"

.field private static final HEADER_COUNT:Ljava/lang/String; = "count="

.field private static final HEADER_SPEED:Ljava/lang/String; = "speed="

.field private static LONGPRESS_WAIT_TIME:I = 0x0

.field private static final MAX_ONE_TIME_READS:I = 0x64

.field private static final SLEEP_COMPENSATE_DIFF:J = 0x10L

.field private static final STARTING_DATA_LINE:Ljava/lang/String; = "start data >>"

.field private static final THIS_DEBUG:Z


# instance fields
.field mBufferedReader:Ljava/io/BufferedReader;

.field private mDeviceSleepTime:J

.field private mEventCountInScript:I

.field mFStream:Ljava/io/FileInputStream;

.field private mFileOpened:Z

.field mInputStream:Ljava/io/DataInputStream;

.field private mLastExportDownTimeKey:J

.field private mLastExportDownTimeMotion:J

.field private mLastExportEventTime:J

.field private mLastRecordedDownTimeKey:J

.field private mLastRecordedDownTimeMotion:J

.field private mLastRecordedEventTime:J

.field private mProfileWaitTime:J

.field private mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

.field private mScriptFileName:Ljava/lang/String;

.field private mSpeed:D

.field private mVerbose:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 138
    const/16 v0, 0x7d0

    sput v0, Lcom/android/commands/monkey/MonkeySourceScript;->LONGPRESS_WAIT_TIME:I

    return-void
.end method

.method public constructor <init>(Ljava/util/Random;Ljava/lang/String;JZJJ)V
    .locals 2
    .parameter "random"
    .parameter "filename"
    .parameter "throttle"
    .parameter "randomizeThrottle"
    .parameter "profileWaitTime"
    .parameter "deviceSleepTime"

    .prologue
    .line 157
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mEventCountInScript:I

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mVerbose:I

    .line 52
    const-wide/high16 v0, 0x3ff0

    iput-wide v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mSpeed:D

    .line 62
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastRecordedDownTimeKey:J

    .line 64
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastRecordedDownTimeMotion:J

    .line 66
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastExportDownTimeKey:J

    .line 68
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastExportDownTimeMotion:J

    .line 70
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastExportEventTime:J

    .line 72
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastRecordedEventTime:J

    .line 136
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mFileOpened:Z

    .line 140
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mProfileWaitTime:J

    .line 142
    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mDeviceSleepTime:J

    .line 158
    iput-object p2, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mScriptFileName:Ljava/lang/String;

    .line 159
    new-instance v0, Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-direct {v0, p1, p3, p4, p5}, Lcom/android/commands/monkey/MonkeyEventQueue;-><init>(Ljava/util/Random;JZ)V

    iput-object v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    .line 160
    iput-wide p6, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mProfileWaitTime:J

    .line 161
    iput-wide p8, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mDeviceSleepTime:J

    .line 162
    return-void
.end method

.method private adjustKeyEventTime(Lcom/android/commands/monkey/MonkeyKeyEvent;)V
    .locals 10
    .parameter "e"

    .prologue
    const-wide/16 v8, 0x0

    .line 778
    invoke-virtual {p1}, Lcom/android/commands/monkey/MonkeyKeyEvent;->getEventTime()J

    move-result-wide v6

    cmp-long v6, v6, v8

    if-gez v6, :cond_0

    .line 806
    :goto_0
    return-void

    .line 781
    :cond_0
    const-wide/16 v2, 0x0

    .line 782
    .local v2, thisDownTime:J
    const-wide/16 v4, 0x0

    .line 783
    .local v4, thisEventTime:J
    const-wide/16 v0, 0x0

    .line 785
    .local v0, expectedDelay:J
    iget-wide v6, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastRecordedEventTime:J

    cmp-long v6, v6, v8

    if-gtz v6, :cond_1

    .line 787
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 788
    move-wide v4, v2

    .line 800
    :goto_1
    invoke-virtual {p1}, Lcom/android/commands/monkey/MonkeyKeyEvent;->getDownTime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastRecordedDownTimeKey:J

    .line 801
    invoke-virtual {p1}, Lcom/android/commands/monkey/MonkeyKeyEvent;->getEventTime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastRecordedEventTime:J

    .line 802
    invoke-virtual {p1, v2, v3}, Lcom/android/commands/monkey/MonkeyKeyEvent;->setDownTime(J)V

    .line 803
    invoke-virtual {p1, v4, v5}, Lcom/android/commands/monkey/MonkeyKeyEvent;->setEventTime(J)V

    .line 804
    iput-wide v2, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastExportDownTimeKey:J

    .line 805
    iput-wide v4, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastExportEventTime:J

    goto :goto_0

    .line 790
    :cond_1
    invoke-virtual {p1}, Lcom/android/commands/monkey/MonkeyKeyEvent;->getDownTime()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastRecordedDownTimeKey:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_2

    .line 791
    invoke-virtual {p1}, Lcom/android/commands/monkey/MonkeyKeyEvent;->getDownTime()J

    move-result-wide v2

    .line 795
    :goto_2
    invoke-virtual {p1}, Lcom/android/commands/monkey/MonkeyKeyEvent;->getEventTime()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastRecordedEventTime:J

    sub-long/2addr v6, v8

    long-to-double v6, v6

    iget-wide v8, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mSpeed:D

    mul-double/2addr v6, v8

    double-to-long v0, v6

    .line 796
    iget-wide v6, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastExportEventTime:J

    add-long v4, v6, v0

    .line 798
    const-wide/16 v6, 0x10

    sub-long v6, v0, v6

    invoke-direct {p0, v6, v7}, Lcom/android/commands/monkey/MonkeySourceScript;->needSleep(J)V

    goto :goto_1

    .line 793
    :cond_2
    iget-wide v2, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastExportDownTimeKey:J

    goto :goto_2
.end method

.method private adjustMotionEventTime(Lcom/android/commands/monkey/MonkeyMotionEvent;)V
    .locals 6
    .parameter "e"

    .prologue
    .line 814
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 815
    .local v2, thisEventTime:J
    invoke-virtual {p1}, Lcom/android/commands/monkey/MonkeyMotionEvent;->getDownTime()J

    move-result-wide v0

    .line 817
    .local v0, thisDownTime:J
    iget-wide v4, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastRecordedDownTimeMotion:J

    cmp-long v4, v0, v4

    if-nez v4, :cond_0

    .line 819
    iget-wide v4, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastExportDownTimeMotion:J

    invoke-virtual {p1, v4, v5}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    .line 828
    :goto_0
    invoke-virtual {p1, v2, v3}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setEventTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    .line 829
    return-void

    .line 822
    :cond_0
    iput-wide v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastRecordedDownTimeMotion:J

    .line 824
    invoke-virtual {p1, v2, v3}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    .line 825
    iput-wide v2, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastExportDownTimeMotion:J

    goto :goto_0
.end method

.method private closeFile()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 692
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mFileOpened:Z

    .line 695
    :try_start_0
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mFStream:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 696
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 700
    :goto_0
    return-void

    .line 697
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private handleEvent(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 83
    .parameter "s"
    .parameter "args"

    .prologue
    .line 249
    const-string v14, "DispatchKey"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    if-ltz v14, :cond_1

    move-object/from16 v0, p2

    array-length v14, v0

    const/16 v15, 0x8

    if-ne v14, v15, :cond_1

    .line 251
    :try_start_0
    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v15, " old key\n"

    invoke-virtual {v14, v15}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 252
    const/4 v14, 0x0

    aget-object v14, p2, v14

    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 253
    .local v4, downTime:J
    const/4 v14, 0x1

    aget-object v14, p2, v14

    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 254
    .local v6, eventTime:J
    const/4 v14, 0x2

    aget-object v14, p2, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 255
    .local v8, action:I
    const/4 v14, 0x3

    aget-object v14, p2, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 256
    .local v9, code:I
    const/4 v14, 0x4

    aget-object v14, p2, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 257
    .local v10, repeat:I
    const/4 v14, 0x5

    aget-object v14, p2, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 258
    .local v11, metaState:I
    const/4 v14, 0x6

    aget-object v14, p2, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 259
    .local v12, device:I
    const/4 v14, 0x7

    aget-object v14, p2, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 261
    .local v13, scancode:I
    new-instance v3, Lcom/android/commands/monkey/MonkeyKeyEvent;

    invoke-direct/range {v3 .. v13}, Lcom/android/commands/monkey/MonkeyKeyEvent;-><init>(JJIIIIII)V

    .line 263
    .local v3, e:Lcom/android/commands/monkey/MonkeyKeyEvent;
    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, " Key code "

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v20, "\n"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 265
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v14, v3}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 266
    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v15, "Added key up \n"

    invoke-virtual {v14, v15}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_6

    .line 661
    .end local v3           #e:Lcom/android/commands/monkey/MonkeyKeyEvent;
    .end local v4           #downTime:J
    .end local v6           #eventTime:J
    .end local v8           #action:I
    .end local v9           #code:I
    .end local v10           #repeat:I
    .end local v11           #metaState:I
    .end local v12           #device:I
    .end local v13           #scancode:I
    :cond_0
    :goto_0
    return-void

    .line 273
    :cond_1
    const-string v14, "DispatchPointer"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    if-gez v14, :cond_2

    const-string v14, "DispatchTrackball"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    if-ltz v14, :cond_4

    :cond_2
    move-object/from16 v0, p2

    array-length v14, v0

    const/16 v15, 0xc

    if-ne v14, v15, :cond_4

    .line 276
    const/4 v14, 0x0

    :try_start_1
    aget-object v14, p2, v14

    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 277
    .restart local v4       #downTime:J
    const/4 v14, 0x1

    aget-object v14, p2, v14

    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 278
    .restart local v6       #eventTime:J
    const/4 v14, 0x2

    aget-object v14, p2, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 279
    .restart local v8       #action:I
    const/4 v14, 0x3

    aget-object v14, p2, v14

    invoke-static {v14}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v16

    .line 280
    .local v16, x:F
    const/4 v14, 0x4

    aget-object v14, p2, v14

    invoke-static {v14}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v17

    .line 281
    .local v17, y:F
    const/4 v14, 0x5

    aget-object v14, p2, v14

    invoke-static {v14}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v18

    .line 282
    .local v18, pressure:F
    const/4 v14, 0x6

    aget-object v14, p2, v14

    invoke-static {v14}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v19

    .line 283
    .local v19, size:F
    const/4 v14, 0x7

    aget-object v14, p2, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 284
    .restart local v11       #metaState:I
    const/16 v14, 0x8

    aget-object v14, p2, v14

    invoke-static {v14}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v76

    .line 285
    .local v76, xPrecision:F
    const/16 v14, 0x9

    aget-object v14, p2, v14

    invoke-static {v14}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v80

    .line 286
    .local v80, yPrecision:F
    const/16 v14, 0xa

    aget-object v14, p2, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 287
    .restart local v12       #device:I
    const/16 v14, 0xb

    aget-object v14, p2, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v40

    .line 290
    .local v40, edgeFlags:I
    const-string v14, "Pointer"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    if-lez v14, :cond_3

    .line 291
    new-instance v3, Lcom/android/commands/monkey/MonkeyTouchEvent;

    invoke-direct {v3, v8}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    .line 296
    .local v3, e:Lcom/android/commands/monkey/MonkeyMotionEvent;
    :goto_1
    invoke-virtual {v3, v4, v5}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v14

    invoke-virtual {v14, v6, v7}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setEventTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v14

    invoke-virtual {v14, v11}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setMetaState(I)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v14

    move/from16 v0, v76

    move/from16 v1, v80

    invoke-virtual {v14, v0, v1}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setPrecision(FF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v14

    invoke-virtual {v14, v12}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setDeviceId(I)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v14

    move/from16 v0, v40

    invoke-virtual {v14, v0}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setEdgeFlags(I)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual/range {v14 .. v19}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFFFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    .line 303
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v14, v3}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    goto/16 :goto_0

    .line 304
    .end local v3           #e:Lcom/android/commands/monkey/MonkeyMotionEvent;
    .end local v4           #downTime:J
    .end local v6           #eventTime:J
    .end local v8           #action:I
    .end local v11           #metaState:I
    .end local v12           #device:I
    .end local v16           #x:F
    .end local v17           #y:F
    .end local v18           #pressure:F
    .end local v19           #size:F
    .end local v40           #edgeFlags:I
    .end local v76           #xPrecision:F
    .end local v80           #yPrecision:F
    :catch_0
    move-exception v14

    goto/16 :goto_0

    .line 293
    .restart local v4       #downTime:J
    .restart local v6       #eventTime:J
    .restart local v8       #action:I
    .restart local v11       #metaState:I
    .restart local v12       #device:I
    .restart local v16       #x:F
    .restart local v17       #y:F
    .restart local v18       #pressure:F
    .restart local v19       #size:F
    .restart local v40       #edgeFlags:I
    .restart local v76       #xPrecision:F
    .restart local v80       #yPrecision:F
    :cond_3
    new-instance v3, Lcom/android/commands/monkey/MonkeyTrackballEvent;

    invoke-direct {v3, v8}, Lcom/android/commands/monkey/MonkeyTrackballEvent;-><init>(I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v3       #e:Lcom/android/commands/monkey/MonkeyMotionEvent;
    goto :goto_1

    .line 310
    .end local v3           #e:Lcom/android/commands/monkey/MonkeyMotionEvent;
    .end local v4           #downTime:J
    .end local v6           #eventTime:J
    .end local v8           #action:I
    .end local v11           #metaState:I
    .end local v12           #device:I
    .end local v16           #x:F
    .end local v17           #y:F
    .end local v18           #pressure:F
    .end local v19           #size:F
    .end local v40           #edgeFlags:I
    .end local v76           #xPrecision:F
    .end local v80           #yPrecision:F
    :cond_4
    const-string v14, "RotateScreen"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    if-ltz v14, :cond_7

    move-object/from16 v0, p2

    array-length v14, v0

    const/4 v15, 0x2

    if-ne v14, v15, :cond_7

    .line 312
    const/4 v14, 0x0

    :try_start_2
    aget-object v14, p2, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v65

    .line 313
    .local v65, rotationDegree:I
    const/4 v14, 0x1

    aget-object v14, p2, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v48

    .line 314
    .local v48, persist:I
    if-eqz v65, :cond_5

    const/4 v14, 0x1

    move/from16 v0, v65

    if-eq v0, v14, :cond_5

    const/4 v14, 0x2

    move/from16 v0, v65

    if-eq v0, v14, :cond_5

    const/4 v14, 0x3

    move/from16 v0, v65

    if-ne v0, v14, :cond_0

    .line 318
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    new-instance v20, Lcom/android/commands/monkey/MonkeyRotationEvent;

    if-eqz v48, :cond_6

    const/4 v14, 0x1

    :goto_2
    move-object/from16 v0, v20

    move/from16 v1, v65

    invoke-direct {v0, v1, v14}, Lcom/android/commands/monkey/MonkeyRotationEvent;-><init>(IZ)V

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 321
    .end local v48           #persist:I
    .end local v65           #rotationDegree:I
    :catch_1
    move-exception v14

    goto/16 :goto_0

    .line 318
    .restart local v48       #persist:I
    .restart local v65       #rotationDegree:I
    :cond_6
    const/4 v14, 0x0

    goto :goto_2

    .line 327
    .end local v48           #persist:I
    .end local v65           #rotationDegree:I
    :cond_7
    const-string v14, "Tap"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    if-ltz v14, :cond_a

    move-object/from16 v0, p2

    array-length v14, v0

    const/4 v15, 0x2

    if-lt v14, v15, :cond_a

    .line 329
    const/4 v14, 0x0

    :try_start_3
    aget-object v14, p2, v14

    invoke-static {v14}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v16

    .line 330
    .restart local v16       #x:F
    const/4 v14, 0x1

    aget-object v14, p2, v14

    invoke-static {v14}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v17

    .line 331
    .restart local v17       #y:F
    const-wide/16 v70, 0x0

    .line 332
    .local v70, tapDuration:J
    move-object/from16 v0, p2

    array-length v14, v0

    const/4 v15, 0x3

    if-ne v14, v15, :cond_8

    .line 333
    const/4 v14, 0x2

    aget-object v14, p2, v14

    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v70

    .line 337
    :cond_8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 338
    .restart local v4       #downTime:J
    new-instance v14, Lcom/android/commands/monkey/MonkeyTouchEvent;

    const/4 v15, 0x0

    invoke-direct {v14, v15}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    invoke-virtual {v14, v4, v5}, Lcom/android/commands/monkey/MonkeyTouchEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v14

    invoke-virtual {v14, v4, v5}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setEventTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v20

    const/16 v21, 0x0

    const/high16 v24, 0x3f80

    const/high16 v25, 0x40a0

    move/from16 v22, v16

    move/from16 v23, v17

    invoke-virtual/range {v20 .. v25}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFFFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v37

    .line 342
    .local v37, e1:Lcom/android/commands/monkey/MonkeyMotionEvent;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    move-object/from16 v0, v37

    invoke-virtual {v14, v0}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 343
    const-wide/16 v14, 0x0

    cmp-long v14, v70, v14

    if-lez v14, :cond_9

    .line 344
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    new-instance v15, Lcom/android/commands/monkey/MonkeyWaitEvent;

    move-wide/from16 v0, v70

    invoke-direct {v15, v0, v1}, Lcom/android/commands/monkey/MonkeyWaitEvent;-><init>(J)V

    invoke-virtual {v14, v15}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 346
    :cond_9
    new-instance v14, Lcom/android/commands/monkey/MonkeyTouchEvent;

    const/4 v15, 0x1

    invoke-direct {v14, v15}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    invoke-virtual {v14, v4, v5}, Lcom/android/commands/monkey/MonkeyTouchEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v14

    invoke-virtual {v14, v4, v5}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setEventTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v20

    const/16 v21, 0x0

    const/high16 v24, 0x3f80

    const/high16 v25, 0x40a0

    move/from16 v22, v16

    move/from16 v23, v17

    invoke-virtual/range {v20 .. v25}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFFFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v38

    .line 350
    .local v38, e2:Lcom/android/commands/monkey/MonkeyMotionEvent;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    move-object/from16 v0, v38

    invoke-virtual {v14, v0}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 351
    .end local v4           #downTime:J
    .end local v16           #x:F
    .end local v17           #y:F
    .end local v37           #e1:Lcom/android/commands/monkey/MonkeyMotionEvent;
    .end local v38           #e2:Lcom/android/commands/monkey/MonkeyMotionEvent;
    .end local v70           #tapDuration:J
    :catch_2
    move-exception v3

    .line 352
    .local v3, e:Ljava/lang/NumberFormatException;
    sget-object v14, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "// "

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v3}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 358
    .end local v3           #e:Ljava/lang/NumberFormatException;
    :cond_a
    const-string v14, "PressAndHold"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    if-ltz v14, :cond_b

    move-object/from16 v0, p2

    array-length v14, v0

    const/4 v15, 0x3

    if-ne v14, v15, :cond_b

    .line 360
    const/4 v14, 0x0

    :try_start_4
    aget-object v14, p2, v14

    invoke-static {v14}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v16

    .line 361
    .restart local v16       #x:F
    const/4 v14, 0x1

    aget-object v14, p2, v14

    invoke-static {v14}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v17

    .line 362
    .restart local v17       #y:F
    const/4 v14, 0x2

    aget-object v14, p2, v14

    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v51

    .line 365
    .local v51, pressDuration:J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 367
    .restart local v4       #downTime:J
    new-instance v14, Lcom/android/commands/monkey/MonkeyTouchEvent;

    const/4 v15, 0x0

    invoke-direct {v14, v15}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    invoke-virtual {v14, v4, v5}, Lcom/android/commands/monkey/MonkeyTouchEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v14

    invoke-virtual {v14, v4, v5}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setEventTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v20

    const/16 v21, 0x0

    const/high16 v24, 0x3f80

    const/high16 v25, 0x40a0

    move/from16 v22, v16

    move/from16 v23, v17

    invoke-virtual/range {v20 .. v25}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFFFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v37

    .line 371
    .restart local v37       #e1:Lcom/android/commands/monkey/MonkeyMotionEvent;
    new-instance v38, Lcom/android/commands/monkey/MonkeyWaitEvent;

    move-object/from16 v0, v38

    move-wide/from16 v1, v51

    invoke-direct {v0, v1, v2}, Lcom/android/commands/monkey/MonkeyWaitEvent;-><init>(J)V

    .line 372
    .local v38, e2:Lcom/android/commands/monkey/MonkeyWaitEvent;
    new-instance v14, Lcom/android/commands/monkey/MonkeyTouchEvent;

    const/4 v15, 0x1

    invoke-direct {v14, v15}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    add-long v20, v4, v51

    move-wide/from16 v0, v20

    invoke-virtual {v14, v0, v1}, Lcom/android/commands/monkey/MonkeyTouchEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v14

    add-long v20, v4, v51

    move-wide/from16 v0, v20

    invoke-virtual {v14, v0, v1}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setEventTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v20

    const/16 v21, 0x0

    const/high16 v24, 0x3f80

    const/high16 v25, 0x40a0

    move/from16 v22, v16

    move/from16 v23, v17

    invoke-virtual/range {v20 .. v25}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFFFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v39

    .line 376
    .local v39, e3:Lcom/android/commands/monkey/MonkeyMotionEvent;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    move-object/from16 v0, v37

    invoke-virtual {v14, v0}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 377
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    move-object/from16 v0, v38

    invoke-virtual {v14, v0}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 378
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    move-object/from16 v0, v38

    invoke-virtual {v14, v0}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_0

    .line 380
    .end local v4           #downTime:J
    .end local v16           #x:F
    .end local v17           #y:F
    .end local v37           #e1:Lcom/android/commands/monkey/MonkeyMotionEvent;
    .end local v38           #e2:Lcom/android/commands/monkey/MonkeyWaitEvent;
    .end local v39           #e3:Lcom/android/commands/monkey/MonkeyMotionEvent;
    .end local v51           #pressDuration:J
    :catch_3
    move-exception v3

    .line 381
    .restart local v3       #e:Ljava/lang/NumberFormatException;
    sget-object v14, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "// "

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v3}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 387
    .end local v3           #e:Ljava/lang/NumberFormatException;
    :cond_b
    const-string v14, "Drag"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    if-ltz v14, :cond_d

    move-object/from16 v0, p2

    array-length v14, v0

    const/4 v15, 0x5

    if-ne v14, v15, :cond_d

    .line 388
    const/4 v14, 0x0

    aget-object v14, p2, v14

    invoke-static {v14}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v77

    .line 389
    .local v77, xStart:F
    const/4 v14, 0x1

    aget-object v14, p2, v14

    invoke-static {v14}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v81

    .line 390
    .local v81, yStart:F
    const/4 v14, 0x2

    aget-object v14, p2, v14

    invoke-static {v14}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v75

    .line 391
    .local v75, xEnd:F
    const/4 v14, 0x3

    aget-object v14, p2, v14

    invoke-static {v14}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v79

    .line 392
    .local v79, yEnd:F
    const/4 v14, 0x4

    aget-object v14, p2, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v69

    .line 394
    .local v69, stepCount:I
    move/from16 v16, v77

    .line 395
    .restart local v16       #x:F
    move/from16 v17, v81

    .line 396
    .restart local v17       #y:F
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 397
    .restart local v4       #downTime:J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 399
    .restart local v6       #eventTime:J
    if-lez v69, :cond_d

    .line 400
    sub-float v14, v75, v77

    move/from16 v0, v69

    int-to-float v15, v0

    div-float v78, v14, v15

    .line 401
    .local v78, xStep:F
    sub-float v14, v79, v81

    move/from16 v0, v69

    int-to-float v15, v0

    div-float v82, v14, v15

    .line 403
    .local v82, yStep:F
    new-instance v14, Lcom/android/commands/monkey/MonkeyTouchEvent;

    const/4 v15, 0x0

    invoke-direct {v14, v15}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    invoke-virtual {v14, v4, v5}, Lcom/android/commands/monkey/MonkeyTouchEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v14

    invoke-virtual {v14, v6, v7}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setEventTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v20

    const/16 v21, 0x0

    const/high16 v24, 0x3f80

    const/high16 v25, 0x40a0

    move/from16 v22, v16

    move/from16 v23, v17

    invoke-virtual/range {v20 .. v25}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFFFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v3

    .line 406
    .local v3, e:Lcom/android/commands/monkey/MonkeyMotionEvent;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v14, v3}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 408
    const/16 v41, 0x0

    .local v41, i:I
    :goto_3
    move/from16 v0, v41

    move/from16 v1, v69

    if-ge v0, v1, :cond_c

    .line 409
    add-float v16, v16, v78

    .line 410
    add-float v17, v17, v82

    .line 411
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 412
    new-instance v14, Lcom/android/commands/monkey/MonkeyTouchEvent;

    const/4 v15, 0x2

    invoke-direct {v14, v15}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    invoke-virtual {v14, v4, v5}, Lcom/android/commands/monkey/MonkeyTouchEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v14

    invoke-virtual {v14, v6, v7}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setEventTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v20

    const/16 v21, 0x0

    const/high16 v24, 0x3f80

    const/high16 v25, 0x40a0

    move/from16 v22, v16

    move/from16 v23, v17

    invoke-virtual/range {v20 .. v25}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFFFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v3

    .line 414
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v14, v3}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 408
    add-int/lit8 v41, v41, 0x1

    goto :goto_3

    .line 417
    :cond_c
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 418
    new-instance v14, Lcom/android/commands/monkey/MonkeyTouchEvent;

    const/4 v15, 0x1

    invoke-direct {v14, v15}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    invoke-virtual {v14, v4, v5}, Lcom/android/commands/monkey/MonkeyTouchEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v14

    invoke-virtual {v14, v6, v7}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setEventTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v20

    const/16 v21, 0x0

    const/high16 v24, 0x3f80

    const/high16 v25, 0x40a0

    move/from16 v22, v16

    move/from16 v23, v17

    invoke-virtual/range {v20 .. v25}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFFFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v3

    .line 420
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v14, v3}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 425
    .end local v3           #e:Lcom/android/commands/monkey/MonkeyMotionEvent;
    .end local v4           #downTime:J
    .end local v6           #eventTime:J
    .end local v16           #x:F
    .end local v17           #y:F
    .end local v41           #i:I
    .end local v69           #stepCount:I
    .end local v75           #xEnd:F
    .end local v77           #xStart:F
    .end local v78           #xStep:F
    .end local v79           #yEnd:F
    .end local v81           #yStart:F
    .end local v82           #yStep:F
    :cond_d
    const-string v14, "PinchZoom"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    if-ltz v14, :cond_f

    move-object/from16 v0, p2

    array-length v14, v0

    const/16 v15, 0x9

    if-ne v14, v15, :cond_f

    .line 427
    const/4 v14, 0x0

    aget-object v14, p2, v14

    invoke-static {v14}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v54

    .line 428
    .local v54, pt1xStart:F
    const/4 v14, 0x1

    aget-object v14, p2, v14

    invoke-static {v14}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v57

    .line 429
    .local v57, pt1yStart:F
    const/4 v14, 0x2

    aget-object v14, p2, v14

    invoke-static {v14}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v53

    .line 430
    .local v53, pt1xEnd:F
    const/4 v14, 0x3

    aget-object v14, p2, v14

    invoke-static {v14}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v56

    .line 432
    .local v56, pt1yEnd:F
    const/4 v14, 0x4

    aget-object v14, p2, v14

    invoke-static {v14}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v60

    .line 433
    .local v60, pt2xStart:F
    const/4 v14, 0x5

    aget-object v14, p2, v14

    invoke-static {v14}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v63

    .line 434
    .local v63, pt2yStart:F
    const/4 v14, 0x6

    aget-object v14, p2, v14

    invoke-static {v14}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v59

    .line 435
    .local v59, pt2xEnd:F
    const/4 v14, 0x7

    aget-object v14, p2, v14

    invoke-static {v14}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v62

    .line 437
    .local v62, pt2yEnd:F
    const/16 v14, 0x8

    aget-object v14, p2, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v69

    .line 439
    .restart local v69       #stepCount:I
    move/from16 v22, v54

    .line 440
    .local v22, x1:F
    move/from16 v23, v57

    .line 441
    .local v23, y1:F
    move/from16 v26, v60

    .line 442
    .local v26, x2:F
    move/from16 v27, v63

    .line 444
    .local v27, y2:F
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 445
    .restart local v4       #downTime:J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 447
    .restart local v6       #eventTime:J
    if-lez v69, :cond_f

    .line 448
    sub-float v14, v53, v54

    move/from16 v0, v69

    int-to-float v15, v0

    div-float v55, v14, v15

    .line 449
    .local v55, pt1xStep:F
    sub-float v14, v56, v57

    move/from16 v0, v69

    int-to-float v15, v0

    div-float v58, v14, v15

    .line 451
    .local v58, pt1yStep:F
    sub-float v14, v59, v60

    move/from16 v0, v69

    int-to-float v15, v0

    div-float v61, v14, v15

    .line 452
    .local v61, pt2xStep:F
    sub-float v14, v62, v63

    move/from16 v0, v69

    int-to-float v15, v0

    div-float v64, v14, v15

    .line 454
    .local v64, pt2yStep:F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    new-instance v15, Lcom/android/commands/monkey/MonkeyTouchEvent;

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-direct {v15, v0}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    invoke-virtual {v15, v4, v5}, Lcom/android/commands/monkey/MonkeyTouchEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v15

    invoke-virtual {v15, v6, v7}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setEventTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v20

    const/16 v21, 0x0

    const/high16 v24, 0x3f80

    const/high16 v25, 0x40a0

    invoke-virtual/range {v20 .. v25}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFFFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 457
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    new-instance v15, Lcom/android/commands/monkey/MonkeyTouchEvent;

    const/16 v20, 0x105

    move/from16 v0, v20

    invoke-direct {v15, v0}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    invoke-virtual {v15, v4, v5}, Lcom/android/commands/monkey/MonkeyTouchEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v15

    const/16 v20, 0x0

    move/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v15, v0, v1, v2}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v15

    const/16 v20, 0x1

    move/from16 v0, v20

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v15, v0, v1, v2}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v15

    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setIntermediateNote(Z)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 461
    const/16 v41, 0x0

    .restart local v41       #i:I
    :goto_4
    move/from16 v0, v41

    move/from16 v1, v69

    if-ge v0, v1, :cond_e

    .line 462
    add-float v22, v22, v55

    .line 463
    add-float v23, v23, v58

    .line 464
    add-float v26, v26, v61

    .line 465
    add-float v27, v27, v64

    .line 467
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 468
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    new-instance v15, Lcom/android/commands/monkey/MonkeyTouchEvent;

    const/16 v20, 0x2

    move/from16 v0, v20

    invoke-direct {v15, v0}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    invoke-virtual {v15, v4, v5}, Lcom/android/commands/monkey/MonkeyTouchEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v15

    invoke-virtual {v15, v6, v7}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setEventTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v20

    const/16 v21, 0x0

    const/high16 v24, 0x3f80

    const/high16 v25, 0x40a0

    invoke-virtual/range {v20 .. v25}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFFFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v24

    const/16 v25, 0x1

    const/high16 v28, 0x3f80

    const/high16 v29, 0x40a0

    invoke-virtual/range {v24 .. v29}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFFFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 461
    add-int/lit8 v41, v41, 0x1

    goto :goto_4

    .line 472
    :cond_e
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 473
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    new-instance v15, Lcom/android/commands/monkey/MonkeyTouchEvent;

    const/16 v20, 0x6

    move/from16 v0, v20

    invoke-direct {v15, v0}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    invoke-virtual {v15, v4, v5}, Lcom/android/commands/monkey/MonkeyTouchEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v15

    invoke-virtual {v15, v6, v7}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setEventTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v15

    const/16 v20, 0x0

    move/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v15, v0, v1, v2}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v15

    const/16 v20, 0x1

    move/from16 v0, v20

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v15, v0, v1, v2}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 480
    .end local v4           #downTime:J
    .end local v6           #eventTime:J
    .end local v22           #x1:F
    .end local v23           #y1:F
    .end local v26           #x2:F
    .end local v27           #y2:F
    .end local v41           #i:I
    .end local v53           #pt1xEnd:F
    .end local v54           #pt1xStart:F
    .end local v55           #pt1xStep:F
    .end local v56           #pt1yEnd:F
    .end local v57           #pt1yStart:F
    .end local v58           #pt1yStep:F
    .end local v59           #pt2xEnd:F
    .end local v60           #pt2xStart:F
    .end local v61           #pt2xStep:F
    .end local v62           #pt2yEnd:F
    .end local v63           #pt2yStart:F
    .end local v64           #pt2yStep:F
    .end local v69           #stepCount:I
    :cond_f
    const-string v14, "DispatchFlip"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    if-ltz v14, :cond_10

    move-object/from16 v0, p2

    array-length v14, v0

    const/4 v15, 0x1

    if-ne v14, v15, :cond_10

    .line 481
    const/4 v14, 0x0

    aget-object v14, p2, v14

    invoke-static {v14}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v45

    .line 482
    .local v45, keyboardOpen:Z
    new-instance v3, Lcom/android/commands/monkey/MonkeyFlipEvent;

    move/from16 v0, v45

    invoke-direct {v3, v0}, Lcom/android/commands/monkey/MonkeyFlipEvent;-><init>(Z)V

    .line 483
    .local v3, e:Lcom/android/commands/monkey/MonkeyFlipEvent;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v14, v3}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 487
    .end local v3           #e:Lcom/android/commands/monkey/MonkeyFlipEvent;
    .end local v45           #keyboardOpen:Z
    :cond_10
    const-string v14, "LaunchActivity"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    if-ltz v14, :cond_13

    move-object/from16 v0, p2

    array-length v14, v0

    const/4 v15, 0x2

    if-lt v14, v15, :cond_13

    .line 488
    const/4 v14, 0x0

    aget-object v49, p2, v14

    .line 489
    .local v49, pkg_name:Ljava/lang/String;
    const/4 v14, 0x1

    aget-object v33, p2, v14

    .line 490
    .local v33, cl_name:Ljava/lang/String;
    const-wide/16 v30, 0x0

    .line 492
    .local v30, alarmTime:J
    new-instance v47, Landroid/content/ComponentName;

    move-object/from16 v0, v47

    move-object/from16 v1, v49

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    .local v47, mApp:Landroid/content/ComponentName;
    move-object/from16 v0, p2

    array-length v14, v0

    const/4 v15, 0x2

    if-le v14, v15, :cond_11

    .line 496
    const/4 v14, 0x2

    :try_start_5
    aget-object v14, p2, v14

    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_4

    move-result-wide v30

    .line 503
    :cond_11
    move-object/from16 v0, p2

    array-length v14, v0

    const/4 v15, 0x2

    if-ne v14, v15, :cond_12

    .line 504
    new-instance v3, Lcom/android/commands/monkey/MonkeyActivityEvent;

    move-object/from16 v0, v47

    invoke-direct {v3, v0}, Lcom/android/commands/monkey/MonkeyActivityEvent;-><init>(Landroid/content/ComponentName;)V

    .line 505
    .local v3, e:Lcom/android/commands/monkey/MonkeyActivityEvent;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v14, v3}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    goto/16 :goto_0

    .line 497
    .end local v3           #e:Lcom/android/commands/monkey/MonkeyActivityEvent;
    :catch_4
    move-exception v3

    .line 498
    .local v3, e:Ljava/lang/NumberFormatException;
    sget-object v14, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "// "

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v3}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 507
    .end local v3           #e:Ljava/lang/NumberFormatException;
    :cond_12
    new-instance v3, Lcom/android/commands/monkey/MonkeyActivityEvent;

    move-object/from16 v0, v47

    move-wide/from16 v1, v30

    invoke-direct {v3, v0, v1, v2}, Lcom/android/commands/monkey/MonkeyActivityEvent;-><init>(Landroid/content/ComponentName;J)V

    .line 508
    .local v3, e:Lcom/android/commands/monkey/MonkeyActivityEvent;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v14, v3}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    goto/16 :goto_0

    .line 514
    .end local v3           #e:Lcom/android/commands/monkey/MonkeyActivityEvent;
    .end local v30           #alarmTime:J
    .end local v33           #cl_name:Ljava/lang/String;
    .end local v47           #mApp:Landroid/content/ComponentName;
    .end local v49           #pkg_name:Ljava/lang/String;
    :cond_13
    const-string v14, "DeviceWakeUp"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    if-ltz v14, :cond_14

    .line 515
    const-string v49, "com.google.android.powerutil"

    .line 516
    .restart local v49       #pkg_name:Ljava/lang/String;
    const-string v33, "com.google.android.powerutil.WakeUpScreen"

    .line 517
    .restart local v33       #cl_name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mDeviceSleepTime:J

    move-wide/from16 v35, v0

    .line 520
    .local v35, deviceSleepTime:J
    new-instance v47, Landroid/content/ComponentName;

    move-object/from16 v0, v47

    move-object/from16 v1, v49

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    .restart local v47       #mApp:Landroid/content/ComponentName;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    new-instance v15, Lcom/android/commands/monkey/MonkeyActivityEvent;

    move-object/from16 v0, v47

    move-wide/from16 v1, v35

    invoke-direct {v15, v0, v1, v2}, Lcom/android/commands/monkey/MonkeyActivityEvent;-><init>(Landroid/content/ComponentName;J)V

    invoke-virtual {v14, v15}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 524
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    new-instance v15, Lcom/android/commands/monkey/MonkeyKeyEvent;

    const/16 v20, 0x0

    const/16 v21, 0x7

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v15, v0, v1}, Lcom/android/commands/monkey/MonkeyKeyEvent;-><init>(II)V

    invoke-virtual {v14, v15}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 525
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    new-instance v15, Lcom/android/commands/monkey/MonkeyKeyEvent;

    const/16 v20, 0x1

    const/16 v21, 0x7

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v15, v0, v1}, Lcom/android/commands/monkey/MonkeyKeyEvent;-><init>(II)V

    invoke-virtual {v14, v15}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 529
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    new-instance v15, Lcom/android/commands/monkey/MonkeyWaitEvent;

    const-wide/16 v20, 0xbb8

    add-long v20, v20, v35

    move-wide/from16 v0, v20

    invoke-direct {v15, v0, v1}, Lcom/android/commands/monkey/MonkeyWaitEvent;-><init>(J)V

    invoke-virtual {v14, v15}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 532
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    new-instance v15, Lcom/android/commands/monkey/MonkeyKeyEvent;

    const/16 v20, 0x0

    const/16 v21, 0x52

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v15, v0, v1}, Lcom/android/commands/monkey/MonkeyKeyEvent;-><init>(II)V

    invoke-virtual {v14, v15}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 533
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    new-instance v15, Lcom/android/commands/monkey/MonkeyKeyEvent;

    const/16 v20, 0x1

    const/16 v21, 0x52

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v15, v0, v1}, Lcom/android/commands/monkey/MonkeyKeyEvent;-><init>(II)V

    invoke-virtual {v14, v15}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 536
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    new-instance v15, Lcom/android/commands/monkey/MonkeyKeyEvent;

    const/16 v20, 0x0

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v15, v0, v1}, Lcom/android/commands/monkey/MonkeyKeyEvent;-><init>(II)V

    invoke-virtual {v14, v15}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 537
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    new-instance v15, Lcom/android/commands/monkey/MonkeyKeyEvent;

    const/16 v20, 0x1

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v15, v0, v1}, Lcom/android/commands/monkey/MonkeyKeyEvent;-><init>(II)V

    invoke-virtual {v14, v15}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    goto/16 :goto_0

    .line 543
    .end local v33           #cl_name:Ljava/lang/String;
    .end local v35           #deviceSleepTime:J
    .end local v47           #mApp:Landroid/content/ComponentName;
    .end local v49           #pkg_name:Ljava/lang/String;
    :cond_14
    const-string v14, "LaunchInstrumentation"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    if-ltz v14, :cond_15

    move-object/from16 v0, p2

    array-length v14, v0

    const/4 v15, 0x2

    if-ne v14, v15, :cond_15

    .line 544
    const/4 v14, 0x0

    aget-object v73, p2, v14

    .line 545
    .local v73, test_name:Ljava/lang/String;
    const/4 v14, 0x1

    aget-object v66, p2, v14

    .line 546
    .local v66, runner_name:Ljava/lang/String;
    new-instance v3, Lcom/android/commands/monkey/MonkeyInstrumentationEvent;

    move-object/from16 v0, v73

    move-object/from16 v1, v66

    invoke-direct {v3, v0, v1}, Lcom/android/commands/monkey/MonkeyInstrumentationEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    .local v3, e:Lcom/android/commands/monkey/MonkeyInstrumentationEvent;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v14, v3}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    goto/16 :goto_0

    .line 552
    .end local v3           #e:Lcom/android/commands/monkey/MonkeyInstrumentationEvent;
    .end local v66           #runner_name:Ljava/lang/String;
    .end local v73           #test_name:Ljava/lang/String;
    :cond_15
    const-string v14, "UserWait"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    if-ltz v14, :cond_16

    move-object/from16 v0, p2

    array-length v14, v0

    const/4 v15, 0x1

    if-ne v14, v15, :cond_16

    .line 554
    const/4 v14, 0x0

    :try_start_6
    aget-object v14, p2, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    int-to-long v0, v14

    move-wide/from16 v67, v0

    .line 555
    .local v67, sleeptime:J
    new-instance v3, Lcom/android/commands/monkey/MonkeyWaitEvent;

    move-wide/from16 v0, v67

    invoke-direct {v3, v0, v1}, Lcom/android/commands/monkey/MonkeyWaitEvent;-><init>(J)V

    .line 556
    .local v3, e:Lcom/android/commands/monkey/MonkeyWaitEvent;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v14, v3}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_5

    goto/16 :goto_0

    .line 557
    .end local v3           #e:Lcom/android/commands/monkey/MonkeyWaitEvent;
    .end local v67           #sleeptime:J
    :catch_5
    move-exception v14

    goto/16 :goto_0

    .line 564
    :cond_16
    const-string v14, "ProfileWait"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    if-ltz v14, :cond_17

    .line 565
    new-instance v3, Lcom/android/commands/monkey/MonkeyWaitEvent;

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mProfileWaitTime:J

    invoke-direct {v3, v14, v15}, Lcom/android/commands/monkey/MonkeyWaitEvent;-><init>(J)V

    .line 566
    .restart local v3       #e:Lcom/android/commands/monkey/MonkeyWaitEvent;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v14, v3}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    goto/16 :goto_0

    .line 571
    .end local v3           #e:Lcom/android/commands/monkey/MonkeyWaitEvent;
    :cond_17
    const-string v14, "DispatchPress"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    if-ltz v14, :cond_18

    move-object/from16 v0, p2

    array-length v14, v0

    const/4 v15, 0x1

    if-ne v14, v15, :cond_18

    .line 572
    const/4 v14, 0x0

    aget-object v44, p2, v14

    .line 573
    .local v44, key_name:Ljava/lang/String;
    invoke-static/range {v44 .. v44}, Lcom/android/commands/monkey/MonkeySourceRandom;->getKeyCode(Ljava/lang/String;)I

    move-result v43

    .line 574
    .local v43, keyCode:I
    if-eqz v43, :cond_0

    .line 577
    new-instance v3, Lcom/android/commands/monkey/MonkeyKeyEvent;

    const/4 v14, 0x0

    move/from16 v0, v43

    invoke-direct {v3, v14, v0}, Lcom/android/commands/monkey/MonkeyKeyEvent;-><init>(II)V

    .line 578
    .local v3, e:Lcom/android/commands/monkey/MonkeyKeyEvent;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v14, v3}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 579
    new-instance v3, Lcom/android/commands/monkey/MonkeyKeyEvent;

    .end local v3           #e:Lcom/android/commands/monkey/MonkeyKeyEvent;
    const/4 v14, 0x1

    move/from16 v0, v43

    invoke-direct {v3, v14, v0}, Lcom/android/commands/monkey/MonkeyKeyEvent;-><init>(II)V

    .line 580
    .restart local v3       #e:Lcom/android/commands/monkey/MonkeyKeyEvent;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v14, v3}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    goto/16 :goto_0

    .line 585
    .end local v3           #e:Lcom/android/commands/monkey/MonkeyKeyEvent;
    .end local v43           #keyCode:I
    .end local v44           #key_name:Ljava/lang/String;
    :cond_18
    const-string v14, "LongPress"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    if-ltz v14, :cond_19

    .line 587
    new-instance v3, Lcom/android/commands/monkey/MonkeyKeyEvent;

    const/4 v14, 0x0

    const/16 v15, 0x17

    invoke-direct {v3, v14, v15}, Lcom/android/commands/monkey/MonkeyKeyEvent;-><init>(II)V

    .line 588
    .restart local v3       #e:Lcom/android/commands/monkey/MonkeyKeyEvent;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v14, v3}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 589
    new-instance v74, Lcom/android/commands/monkey/MonkeyWaitEvent;

    sget v14, Lcom/android/commands/monkey/MonkeySourceScript;->LONGPRESS_WAIT_TIME:I

    int-to-long v14, v14

    move-object/from16 v0, v74

    invoke-direct {v0, v14, v15}, Lcom/android/commands/monkey/MonkeyWaitEvent;-><init>(J)V

    .line 590
    .local v74, we:Lcom/android/commands/monkey/MonkeyWaitEvent;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    move-object/from16 v0, v74

    invoke-virtual {v14, v0}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 591
    new-instance v3, Lcom/android/commands/monkey/MonkeyKeyEvent;

    .end local v3           #e:Lcom/android/commands/monkey/MonkeyKeyEvent;
    const/4 v14, 0x1

    const/16 v15, 0x17

    invoke-direct {v3, v14, v15}, Lcom/android/commands/monkey/MonkeyKeyEvent;-><init>(II)V

    .line 592
    .restart local v3       #e:Lcom/android/commands/monkey/MonkeyKeyEvent;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v14, v3}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 596
    .end local v3           #e:Lcom/android/commands/monkey/MonkeyKeyEvent;
    .end local v74           #we:Lcom/android/commands/monkey/MonkeyWaitEvent;
    :cond_19
    const-string v14, "PowerLog"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    if-ltz v14, :cond_1a

    move-object/from16 v0, p2

    array-length v14, v0

    if-lez v14, :cond_1a

    .line 597
    const/4 v14, 0x0

    aget-object v50, p2, v14

    .line 600
    .local v50, power_log_type:Ljava/lang/String;
    move-object/from16 v0, p2

    array-length v14, v0

    const/4 v15, 0x1

    if-ne v14, v15, :cond_1d

    .line 601
    new-instance v3, Lcom/android/commands/monkey/MonkeyPowerEvent;

    move-object/from16 v0, v50

    invoke-direct {v3, v0}, Lcom/android/commands/monkey/MonkeyPowerEvent;-><init>(Ljava/lang/String;)V

    .line 602
    .local v3, e:Lcom/android/commands/monkey/MonkeyPowerEvent;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v14, v3}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 611
    .end local v3           #e:Lcom/android/commands/monkey/MonkeyPowerEvent;
    .end local v50           #power_log_type:Ljava/lang/String;
    :cond_1a
    :goto_5
    const-string v14, "WriteLog"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    if-ltz v14, :cond_1b

    .line 612
    new-instance v3, Lcom/android/commands/monkey/MonkeyPowerEvent;

    invoke-direct {v3}, Lcom/android/commands/monkey/MonkeyPowerEvent;-><init>()V

    .line 613
    .restart local v3       #e:Lcom/android/commands/monkey/MonkeyPowerEvent;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v14, v3}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 617
    .end local v3           #e:Lcom/android/commands/monkey/MonkeyPowerEvent;
    :cond_1b
    const-string v14, "RunCmd"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    if-ltz v14, :cond_1c

    move-object/from16 v0, p2

    array-length v14, v0

    const/4 v15, 0x1

    if-ne v14, v15, :cond_1c

    .line 618
    const/4 v14, 0x0

    aget-object v34, p2, v14

    .line 619
    .local v34, cmd:Ljava/lang/String;
    new-instance v3, Lcom/android/commands/monkey/MonkeyCommandEvent;

    move-object/from16 v0, v34

    invoke-direct {v3, v0}, Lcom/android/commands/monkey/MonkeyCommandEvent;-><init>(Ljava/lang/String;)V

    .line 620
    .local v3, e:Lcom/android/commands/monkey/MonkeyCommandEvent;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v14, v3}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 624
    .end local v3           #e:Lcom/android/commands/monkey/MonkeyCommandEvent;
    .end local v34           #cmd:Ljava/lang/String;
    :cond_1c
    const-string v14, "DispatchString"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    if-ltz v14, :cond_1e

    move-object/from16 v0, p2

    array-length v14, v0

    const/4 v15, 0x1

    if-ne v14, v15, :cond_1e

    .line 625
    const/4 v14, 0x0

    aget-object v42, p2, v14

    .line 626
    .local v42, input:Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "input text "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, v42

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    .line 627
    .restart local v34       #cmd:Ljava/lang/String;
    new-instance v3, Lcom/android/commands/monkey/MonkeyCommandEvent;

    move-object/from16 v0, v34

    invoke-direct {v3, v0}, Lcom/android/commands/monkey/MonkeyCommandEvent;-><init>(Ljava/lang/String;)V

    .line 628
    .restart local v3       #e:Lcom/android/commands/monkey/MonkeyCommandEvent;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v14, v3}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    goto/16 :goto_0

    .line 603
    .end local v3           #e:Lcom/android/commands/monkey/MonkeyCommandEvent;
    .end local v34           #cmd:Ljava/lang/String;
    .end local v42           #input:Ljava/lang/String;
    .restart local v50       #power_log_type:Ljava/lang/String;
    :cond_1d
    move-object/from16 v0, p2

    array-length v14, v0

    const/4 v15, 0x2

    if-ne v14, v15, :cond_1a

    .line 604
    const/4 v14, 0x1

    aget-object v72, p2, v14

    .line 605
    .local v72, test_case_status:Ljava/lang/String;
    new-instance v3, Lcom/android/commands/monkey/MonkeyPowerEvent;

    move-object/from16 v0, v50

    move-object/from16 v1, v72

    invoke-direct {v3, v0, v1}, Lcom/android/commands/monkey/MonkeyPowerEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    .local v3, e:Lcom/android/commands/monkey/MonkeyPowerEvent;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v14, v3}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    goto/16 :goto_5

    .line 632
    .end local v3           #e:Lcom/android/commands/monkey/MonkeyPowerEvent;
    .end local v50           #power_log_type:Ljava/lang/String;
    .end local v72           #test_case_status:Ljava/lang/String;
    :cond_1e
    const-string v14, "StartCaptureFramerate"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    if-ltz v14, :cond_1f

    .line 633
    new-instance v3, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;

    const-string v14, "start"

    invoke-direct {v3, v14}, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;-><init>(Ljava/lang/String;)V

    .line 634
    .local v3, e:Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v14, v3}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    goto/16 :goto_0

    .line 638
    .end local v3           #e:Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;
    :cond_1f
    const-string v14, "EndCaptureFramerate"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    if-ltz v14, :cond_20

    move-object/from16 v0, p2

    array-length v14, v0

    const/4 v15, 0x1

    if-ne v14, v15, :cond_20

    .line 639
    const/4 v14, 0x0

    aget-object v42, p2, v14

    .line 640
    .restart local v42       #input:Ljava/lang/String;
    new-instance v3, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;

    const-string v14, "end"

    move-object/from16 v0, v42

    invoke-direct {v3, v14, v0}, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    .restart local v3       #e:Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v14, v3}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    goto/16 :goto_0

    .line 645
    .end local v3           #e:Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;
    .end local v42           #input:Ljava/lang/String;
    :cond_20
    const-string v14, "StartCaptureAppFramerate"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    if-ltz v14, :cond_21

    move-object/from16 v0, p2

    array-length v14, v0

    const/4 v15, 0x1

    if-ne v14, v15, :cond_21

    .line 646
    const/4 v14, 0x0

    aget-object v32, p2, v14

    .line 647
    .local v32, app:Ljava/lang/String;
    new-instance v3, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;

    const-string v14, "start"

    move-object/from16 v0, v32

    invoke-direct {v3, v14, v0}, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    .local v3, e:Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v14, v3}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    goto/16 :goto_0

    .line 652
    .end local v3           #e:Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;
    .end local v32           #app:Ljava/lang/String;
    :cond_21
    const-string v14, "EndCaptureAppFramerate"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    if-ltz v14, :cond_0

    move-object/from16 v0, p2

    array-length v14, v0

    const/4 v15, 0x2

    if-ne v14, v15, :cond_0

    .line 653
    const/4 v14, 0x0

    aget-object v32, p2, v14

    .line 654
    .restart local v32       #app:Ljava/lang/String;
    const/4 v14, 0x1

    aget-object v46, p2, v14

    .line 655
    .local v46, label:Ljava/lang/String;
    new-instance v3, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;

    const-string v14, "end"

    move-object/from16 v0, v32

    move-object/from16 v1, v46

    invoke-direct {v3, v14, v0, v1}, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    .restart local v3       #e:Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v14, v3}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    goto/16 :goto_0

    .line 267
    .end local v3           #e:Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;
    .end local v32           #app:Ljava/lang/String;
    .end local v46           #label:Ljava/lang/String;
    :catch_6
    move-exception v14

    goto/16 :goto_0
.end method

.method private needSleep(J)V
    .locals 2
    .parameter "time"

    .prologue
    .line 736
    const-wide/16 v0, 0x1

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 743
    :goto_0
    return-void

    .line 740
    :cond_0
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 741
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private processLine(Ljava/lang/String;)V
    .locals 6
    .parameter "line"

    .prologue
    .line 670
    const/16 v4, 0x28

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 671
    .local v2, index1:I
    const/16 v4, 0x29

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 673
    .local v3, index2:I
    if-ltz v2, :cond_0

    if-gez v3, :cond_1

    .line 684
    :cond_0
    :goto_0
    return-void

    .line 677
    :cond_1
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 679
    .local v0, args:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v4, v0

    if-ge v1, v4, :cond_2

    .line 680
    aget-object v4, v0, v1

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    .line 679
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 683
    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/android/commands/monkey/MonkeySourceScript;->handleEvent(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method private readHeader()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 183
    iput-boolean v4, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mFileOpened:Z

    .line 185
    new-instance v5, Ljava/io/FileInputStream;

    iget-object v6, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mScriptFileName:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mFStream:Ljava/io/FileInputStream;

    .line 186
    new-instance v5, Ljava/io/DataInputStream;

    iget-object v6, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mFStream:Ljava/io/FileInputStream;

    invoke-direct {v5, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v5, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mInputStream:Ljava/io/DataInputStream;

    .line 187
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    iget-object v7, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mInputStream:Ljava/io/DataInputStream;

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v5, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mBufferedReader:Ljava/io/BufferedReader;

    .line 191
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mBufferedReader:Ljava/io/BufferedReader;

    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, line:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 192
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 194
    const-string v5, "count="

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_2

    .line 196
    :try_start_0
    const-string v5, "count="

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 197
    .local v2, value:Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mEventCountInScript:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 198
    .end local v2           #value:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 199
    .local v0, e:Ljava/lang/NumberFormatException;
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v4, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 215
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_1
    :goto_1
    return v3

    .line 202
    :cond_2
    const-string v5, "speed="

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_3

    .line 204
    :try_start_1
    const-string v5, "count="

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 205
    .restart local v2       #value:Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mSpeed:D
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 206
    .end local v2           #value:Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 207
    .restart local v0       #e:Ljava/lang/NumberFormatException;
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v4, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_1

    .line 210
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_3
    const-string v5, "start data >>"

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_0

    move v3, v4

    .line 211
    goto :goto_1
.end method

.method private readLines()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x64

    .line 226
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 227
    iget-object v3, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mBufferedReader:Ljava/io/BufferedReader;

    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 228
    .local v1, line:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 234
    .end local v0           #i:I
    .end local v1           #line:Ljava/lang/String;
    :goto_1
    return v0

    .line 231
    .restart local v0       #i:I
    .restart local v1       #line:Ljava/lang/String;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 232
    invoke-direct {p0, v1}, Lcom/android/commands/monkey/MonkeySourceScript;->processLine(Ljava/lang/String;)V

    .line 226
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1           #line:Ljava/lang/String;
    :cond_1
    move v0, v2

    .line 234
    goto :goto_1
.end method

.method private readNextBatch()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 711
    const/4 v0, 0x0

    .line 717
    .local v0, linesRead:I
    iget-boolean v1, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mFileOpened:Z

    if-nez v1, :cond_0

    .line 718
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeySourceScript;->resetValue()V

    .line 719
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeySourceScript;->readHeader()Z

    .line 722
    :cond_0
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeySourceScript;->readLines()I

    move-result v0

    .line 724
    if-nez v0, :cond_1

    .line 725
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeySourceScript;->closeFile()V

    .line 727
    :cond_1
    return-void
.end method

.method private resetValue()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    const-wide/16 v0, 0x0

    .line 168
    iput-wide v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastRecordedDownTimeKey:J

    .line 169
    iput-wide v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastRecordedDownTimeMotion:J

    .line 170
    iput-wide v2, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastRecordedEventTime:J

    .line 171
    iput-wide v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastExportDownTimeKey:J

    .line 172
    iput-wide v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastExportDownTimeMotion:J

    .line 173
    iput-wide v2, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastExportEventTime:J

    .line 174
    return-void
.end method


# virtual methods
.method public getNextEvent()Lcom/android/commands/monkey/MonkeyEvent;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 843
    const-wide/16 v2, -0x1

    .line 846
    .local v2, recordedEventTime:J
    iget-object v5, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v5}, Lcom/android/commands/monkey/MonkeyEventQueue;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 848
    :try_start_0
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeySourceScript;->readNextBatch()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 855
    :cond_0
    :try_start_1
    iget-object v5, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v5}, Lcom/android/commands/monkey/MonkeyEventQueue;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/commands/monkey/MonkeyEvent;

    .line 856
    .local v1, ev:Lcom/android/commands/monkey/MonkeyEvent;
    iget-object v5, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v5}, Lcom/android/commands/monkey/MonkeyEventQueue;->removeFirst()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_1

    .line 861
    invoke-virtual {v1}, Lcom/android/commands/monkey/MonkeyEvent;->getEventType()I

    move-result v4

    if-nez v4, :cond_2

    move-object v4, v1

    .line 862
    check-cast v4, Lcom/android/commands/monkey/MonkeyKeyEvent;

    invoke-direct {p0, v4}, Lcom/android/commands/monkey/MonkeySourceScript;->adjustKeyEventTime(Lcom/android/commands/monkey/MonkeyKeyEvent;)V

    .line 867
    .end local v1           #ev:Lcom/android/commands/monkey/MonkeyEvent;
    :cond_1
    :goto_0
    return-object v1

    .line 849
    :catch_0
    move-exception v0

    .local v0, e:Ljava/io/IOException;
    move-object v1, v4

    .line 850
    goto :goto_0

    .line 857
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .local v0, e:Ljava/util/NoSuchElementException;
    move-object v1, v4

    .line 858
    goto :goto_0

    .line 863
    .end local v0           #e:Ljava/util/NoSuchElementException;
    .restart local v1       #ev:Lcom/android/commands/monkey/MonkeyEvent;
    :cond_2
    invoke-virtual {v1}, Lcom/android/commands/monkey/MonkeyEvent;->getEventType()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_3

    invoke-virtual {v1}, Lcom/android/commands/monkey/MonkeyEvent;->getEventType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    :cond_3
    move-object v4, v1

    .line 865
    check-cast v4, Lcom/android/commands/monkey/MonkeyMotionEvent;

    invoke-direct {p0, v4}, Lcom/android/commands/monkey/MonkeySourceScript;->adjustMotionEventTime(Lcom/android/commands/monkey/MonkeyMotionEvent;)V

    goto :goto_0
.end method

.method public setVerbose(I)V
    .locals 0
    .parameter "verbose"

    .prologue
    .line 768
    iput p1, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mVerbose:I

    .line 769
    return-void
.end method

.method public validate()Z
    .locals 6

    .prologue
    .line 754
    :try_start_0
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeySourceScript;->readHeader()Z

    move-result v1

    .line 755
    .local v1, validHeader:Z
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeySourceScript;->closeFile()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 760
    iget v2, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mVerbose:I

    if-lez v2, :cond_0

    .line 761
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Replaying "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mEventCountInScript:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " events with speed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mSpeed:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 763
    .end local v1           #validHeader:Z
    :cond_0
    :goto_0
    return v1

    .line 756
    :catch_0
    move-exception v0

    .line 757
    .local v0, e:Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_0
.end method
