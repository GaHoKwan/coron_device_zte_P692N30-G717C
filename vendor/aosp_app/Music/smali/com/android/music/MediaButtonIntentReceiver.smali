.class public Lcom/android/music/MediaButtonIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MediaButtonIntentReceiver.java"


# static fields
.field private static final ACTION_TIME:I = 0x1f4

.field private static final LONG_PRESS_DELAY:I = 0x3e8

.field private static final MSG_LONGPRESS_TIMEOUT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MediaButtonIntentReceiver"

.field private static mDown:Z

.field private static mLastClickTime:J

.field private static mLaunched:Z

.field private static sHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 74
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/music/MediaButtonIntentReceiver;->mLastClickTime:J

    .line 75
    sput-boolean v2, Lcom/android/music/MediaButtonIntentReceiver;->mDown:Z

    .line 76
    sput-boolean v2, Lcom/android/music/MediaButtonIntentReceiver;->mLaunched:Z

    .line 85
    new-instance v0, Lcom/android/music/MediaButtonIntentReceiver$1;

    invoke-direct {v0}, Lcom/android/music/MediaButtonIntentReceiver$1;-><init>()V

    sput-object v0, Lcom/android/music/MediaButtonIntentReceiver;->sHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 69
    sget-boolean v0, Lcom/android/music/MediaButtonIntentReceiver;->mLaunched:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    sput-boolean p0, Lcom/android/music/MediaButtonIntentReceiver;->mLaunched:Z

    return p0
.end method

.method private isMusicServiceRunning(Landroid/content/Context;)Z
    .locals 9
    .parameter "context"

    .prologue
    .line 255
    const/4 v3, 0x0

    .line 256
    .local v3, isServiceRuning:Z
    const-string v6, "activity"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 257
    .local v0, am:Landroid/app/ActivityManager;
    const/16 v5, 0x64

    .line 258
    .local v5, maxServciesNum:I
    const/16 v6, 0x64

    invoke-virtual {v0, v6}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v4

    .line 259
    .local v4, list:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 260
    .local v2, info:Landroid/app/ActivityManager$RunningServiceInfo;
    const-class v6, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 261
    const/4 v3, 0x1

    .line 265
    .end local v2           #info:Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_1
    const-string v6, "MediaButtonIntentReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isMusicServiceRunning "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", Runing service num is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    return v3
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 15
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 106
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    .line 107
    .local v9, intentAction:Ljava/lang/String;
    const-string v11, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 109
    invoke-direct/range {p0 .. p1}, Lcom/android/music/MediaButtonIntentReceiver;->isMusicServiceRunning(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 110
    new-instance v8, Landroid/content/Intent;

    const-class v11, Lcom/android/music/MediaPlaybackService;

    move-object/from16 v0, p1

    invoke-direct {v8, v0, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 111
    .local v8, i:Landroid/content/Intent;
    const-string v11, "com.android.music.musicservicecommand"

    invoke-virtual {v8, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    const-string v11, "command"

    const-string v12, "pause"

    invoke-virtual {v8, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 232
    .end local v8           #i:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    const-string v11, "android.intent.action.MEDIA_BUTTON"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 117
    const-string v11, "android.intent.extra.KEY_EVENT"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/view/KeyEvent;

    .line 120
    .local v5, event:Landroid/view/KeyEvent;
    if-eqz v5, :cond_0

    .line 124
    invoke-virtual {v5}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v10

    .line 125
    .local v10, keycode:I
    invoke-virtual {v5}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    .line 126
    .local v1, action:I
    invoke-virtual {v5}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    .line 129
    .local v6, eventtime:J
    sget-wide v11, Lcom/android/music/MediaButtonIntentReceiver;->mLastClickTime:J

    sub-long v3, v6, v11

    .line 135
    .local v3, deltaTime:J
    const/4 v2, 0x0

    .line 136
    .local v2, command:Ljava/lang/String;
    sparse-switch v10, :sswitch_data_0

    .line 168
    :goto_1
    if-eqz v2, :cond_0

    .line 169
    if-nez v1, :cond_a

    .line 170
    sget-boolean v11, Lcom/android/music/MediaButtonIntentReceiver;->mDown:Z

    if-eqz v11, :cond_6

    .line 171
    const-string v11, "togglepause"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    const-string v11, "play"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    :cond_2
    sget-wide v11, Lcom/android/music/MediaButtonIntentReceiver;->mLastClickTime:J

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-eqz v11, :cond_3

    sget-wide v11, Lcom/android/music/MediaButtonIntentReceiver;->mLastClickTime:J

    sub-long v11, v6, v11

    const-wide/16 v13, 0x3e8

    cmp-long v11, v11, v13

    if-lez v11, :cond_3

    .line 175
    sget-object v11, Lcom/android/music/MediaButtonIntentReceiver;->sHandler:Landroid/os/Handler;

    sget-object v12, Lcom/android/music/MediaButtonIntentReceiver;->sHandler:Landroid/os/Handler;

    const/4 v13, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v12, v13, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 179
    :cond_3
    const-string v11, "forward"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    const-string v11, "rewind"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    :cond_4
    sget-wide v11, Lcom/android/music/MediaButtonIntentReceiver;->mLastClickTime:J

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-eqz v11, :cond_5

    const-wide/16 v11, 0x1f4

    cmp-long v11, v3, v11

    if-lez v11, :cond_5

    .line 183
    move-object/from16 v0, p1

    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/android/music/MediaButtonIntentReceiver;->sendToStartService(Landroid/content/Context;Ljava/lang/String;J)V

    .line 184
    sput-wide v6, Lcom/android/music/MediaButtonIntentReceiver;->mLastClickTime:J

    .line 227
    :cond_5
    :goto_2
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->isOrderedBroadcast()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 228
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->abortBroadcast()V

    goto/16 :goto_0

    .line 138
    :sswitch_0
    const-string v2, "stop"

    .line 139
    goto :goto_1

    .line 142
    :sswitch_1
    const-string v2, "togglepause"

    .line 143
    goto :goto_1

    .line 145
    :sswitch_2
    const-string v2, "next"

    .line 146
    goto :goto_1

    .line 148
    :sswitch_3
    const-string v2, "previous"

    .line 149
    goto :goto_1

    .line 151
    :sswitch_4
    const-string v2, "pause"

    .line 152
    goto :goto_1

    .line 154
    :sswitch_5
    const-string v2, "play"

    .line 155
    goto :goto_1

    .line 158
    :sswitch_6
    const-string v2, "forward"

    .line 159
    goto :goto_1

    .line 161
    :sswitch_7
    const-string v2, "rewind"

    .line 162
    goto :goto_1

    .line 187
    :cond_6
    invoke-virtual {v5}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v11

    if-nez v11, :cond_5

    .line 195
    new-instance v8, Landroid/content/Intent;

    const-class v11, Lcom/android/music/MediaPlaybackService;

    move-object/from16 v0, p1

    invoke-direct {v8, v0, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 196
    .restart local v8       #i:Landroid/content/Intent;
    const-string v11, "com.android.music.musicservicecommand"

    invoke-virtual {v8, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 197
    const/16 v11, 0x4f

    if-ne v10, v11, :cond_7

    sget-wide v11, Lcom/android/music/MediaButtonIntentReceiver;->mLastClickTime:J

    sub-long v11, v6, v11

    const-wide/16 v13, 0x12c

    cmp-long v11, v11, v13

    if-gez v11, :cond_7

    .line 199
    const-string v11, "command"

    const-string v12, "next"

    invoke-virtual {v8, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 200
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 201
    const-wide/16 v11, 0x0

    sput-wide v11, Lcom/android/music/MediaButtonIntentReceiver;->mLastClickTime:J

    .line 213
    :goto_3
    const/4 v11, 0x0

    sput-boolean v11, Lcom/android/music/MediaButtonIntentReceiver;->mLaunched:Z

    .line 214
    const/4 v11, 0x1

    sput-boolean v11, Lcom/android/music/MediaButtonIntentReceiver;->mDown:Z

    goto :goto_2

    .line 203
    :cond_7
    const-string v11, "forward"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_8

    const-string v11, "rewind"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 205
    :cond_8
    sput-wide v6, Lcom/android/music/MediaButtonIntentReceiver;->mLastClickTime:J

    goto :goto_3

    .line 208
    :cond_9
    const-string v11, "command"

    invoke-virtual {v8, v11, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 209
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 210
    sput-wide v6, Lcom/android/music/MediaButtonIntentReceiver;->mLastClickTime:J

    goto :goto_3

    .line 218
    .end local v8           #i:Landroid/content/Intent;
    :cond_a
    const-string v11, "forward"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_b

    const-string v11, "rewind"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 220
    :cond_b
    move-object/from16 v0, p1

    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/android/music/MediaButtonIntentReceiver;->sendToStartService(Landroid/content/Context;Ljava/lang/String;J)V

    .line 221
    const-wide/16 v11, 0x0

    sput-wide v11, Lcom/android/music/MediaButtonIntentReceiver;->mLastClickTime:J

    .line 224
    :cond_c
    sget-object v11, Lcom/android/music/MediaButtonIntentReceiver;->sHandler:Landroid/os/Handler;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/os/Handler;->removeMessages(I)V

    .line 225
    const/4 v11, 0x0

    sput-boolean v11, Lcom/android/music/MediaButtonIntentReceiver;->mDown:Z

    goto/16 :goto_2

    .line 136
    :sswitch_data_0
    .sparse-switch
        0x4f -> :sswitch_1
        0x55 -> :sswitch_1
        0x56 -> :sswitch_0
        0x57 -> :sswitch_2
        0x58 -> :sswitch_3
        0x59 -> :sswitch_7
        0x5a -> :sswitch_6
        0x7e -> :sswitch_5
        0x7f -> :sswitch_4
    .end sparse-switch
.end method

.method public sendToStartService(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 2
    .parameter "context"
    .parameter "command"
    .parameter "deltaTime"

    .prologue
    .line 241
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/music/MediaPlaybackService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 242
    .local v0, i:Landroid/content/Intent;
    const-string v1, "com.android.music.musicservicecommand"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 243
    const-string v1, "command"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 244
    const-string v1, "deltatime"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 245
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 246
    return-void
.end method
