.class public Lcom/android/protips/ProtipWidget;
.super Landroid/appwidget/AppWidgetProvider;
.source "ProtipWidget.java"


# static fields
.field public static final ACTION_NEXT_TIP:Ljava/lang/String; = "com.android.misterwidget.NEXT_TIP"

.field public static final ACTION_POKE:Ljava/lang/String; = "com.android.misterwidget.HEE_HEE"

.field public static final EXTRA_TIMES:Ljava/lang/String; = "times"

.field public static final PREFS_NAME:Ljava/lang/String; = "Protips"

.field public static final PREFS_TIP_NUMBER:Ljava/lang/String; = "widget_tip"

.field public static final PREFS_TIP_SET:Ljava/lang/String; = "widget_tip_set"

.field private static mAsyncHandler:Landroid/os/Handler;

.field private static final sDrawableRegex:Ljava/util/regex/Pattern;

.field private static final sNewlineRegex:Ljava/util/regex/Pattern;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIconRes:I

.field private mMessage:I

.field private mTipSet:I

.field private mTips:[Ljava/lang/CharSequence;

.field private mWidgetIds:[I

.field private mWidgetManager:Landroid/appwidget/AppWidgetManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 47
    const-string v1, " *\\n *"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lcom/android/protips/ProtipWidget;->sNewlineRegex:Ljava/util/regex/Pattern;

    .line 48
    const-string v1, " *@(drawable/[a-z0-9_]+) *"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lcom/android/protips/ProtipWidget;->sDrawableRegex:Ljava/util/regex/Pattern;

    .line 52
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ProtipWidget async"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 53
    .local v0, thr:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 54
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/android/protips/ProtipWidget;->mAsyncHandler:Landroid/os/Handler;

    .line 55
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    .line 58
    const v0, 0x7f020008

    iput v0, p0, Lcom/android/protips/ProtipWidget;->mIconRes:I

    .line 59
    iput v1, p0, Lcom/android/protips/ProtipWidget;->mMessage:I

    .line 60
    iput v1, p0, Lcom/android/protips/ProtipWidget;->mTipSet:I

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/protips/ProtipWidget;->mWidgetManager:Landroid/appwidget/AppWidgetManager;

    return-void
.end method

.method private blink(I)V
    .locals 3
    .parameter "blinks"

    .prologue
    const v2, 0x7f020008

    const v1, 0x7f020005

    .line 176
    iget v0, p0, Lcom/android/protips/ProtipWidget;->mMessage:I

    if-gez v0, :cond_0

    .line 189
    :goto_0
    return-void

    .line 178
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/protips/ProtipWidget;->setIcon(I)V

    .line 180
    const-wide/16 v0, 0x64

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 181
    :goto_1
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_1

    .line 182
    const v0, 0x7f020008

    invoke-direct {p0, v0}, Lcom/android/protips/ProtipWidget;->setIcon(I)V

    .line 183
    const-wide/16 v0, 0xc8

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 184
    const v0, 0x7f020005

    invoke-direct {p0, v0}, Lcom/android/protips/ProtipWidget;->setIcon(I)V

    .line 185
    const-wide/16 v0, 0x64

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 187
    :catch_0
    move-exception v0

    .line 188
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/protips/ProtipWidget;->setIcon(I)V

    goto :goto_0
.end method

.method private getNextMessageIndex()I
    .locals 2

    .prologue
    .line 171
    iget v0, p0, Lcom/android/protips/ProtipWidget;->mMessage:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/android/protips/ProtipWidget;->mTips:[Ljava/lang/CharSequence;

    array-length v1, v1

    rem-int/2addr v0, v1

    return v0
.end method

.method private refresh()V
    .locals 6

    .prologue
    .line 159
    iget-object v5, p0, Lcom/android/protips/ProtipWidget;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v5}, Lcom/android/protips/ProtipWidget;->buildUpdate(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v4

    .line 160
    .local v4, rv:Landroid/widget/RemoteViews;
    iget-object v0, p0, Lcom/android/protips/ProtipWidget;->mWidgetIds:[I

    .local v0, arr$:[I
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget v1, v0, v2

    .line 161
    .local v1, i:I
    iget-object v5, p0, Lcom/android/protips/ProtipWidget;->mWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v5, v1, v4}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 160
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 163
    .end local v1           #i:I
    :cond_0
    return-void
.end method

.method private setIcon(I)V
    .locals 0
    .parameter "resId"

    .prologue
    .line 166
    iput p1, p0, Lcom/android/protips/ProtipWidget;->mIconRes:I

    .line 167
    invoke-direct {p0}, Lcom/android/protips/ProtipWidget;->refresh()V

    .line 168
    return-void
.end method

.method private setup(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 69
    iput-object p1, p0, Lcom/android/protips/ProtipWidget;->mContext:Landroid/content/Context;

    .line 70
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/protips/ProtipWidget;->mWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 71
    iget-object v1, p0, Lcom/android/protips/ProtipWidget;->mWidgetManager:Landroid/appwidget/AppWidgetManager;

    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lcom/android/protips/ProtipWidget;

    invoke-direct {v2, p1, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/protips/ProtipWidget;->mWidgetIds:[I

    .line 73
    const-string v1, "Protips"

    invoke-virtual {p1, v1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 74
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v1, "widget_tip"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/protips/ProtipWidget;->mMessage:I

    .line 75
    const-string v1, "widget_tip_set"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/protips/ProtipWidget;->mTipSet:I

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v1, p0, Lcom/android/protips/ProtipWidget;->mTipSet:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    const v1, 0x7f050001

    :goto_0
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/protips/ProtipWidget;->mTips:[Ljava/lang/CharSequence;

    .line 79
    iget-object v1, p0, Lcom/android/protips/ProtipWidget;->mTips:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    .line 80
    iget v1, p0, Lcom/android/protips/ProtipWidget;->mMessage:I

    iget-object v2, p0, Lcom/android/protips/ProtipWidget;->mTips:[Ljava/lang/CharSequence;

    array-length v2, v2

    if-lt v1, v2, :cond_0

    iput v4, p0, Lcom/android/protips/ProtipWidget;->mMessage:I

    .line 84
    :cond_0
    :goto_1
    return-void

    .line 77
    :cond_1
    const/high16 v1, 0x7f05

    goto :goto_0

    .line 82
    :cond_2
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/protips/ProtipWidget;->mMessage:I

    goto :goto_1
.end method


# virtual methods
.method public buildUpdate(Landroid/content/Context;)Landroid/widget/RemoteViews;
    .locals 16
    .parameter "context"

    .prologue
    .line 192
    new-instance v9, Landroid/widget/RemoteViews;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const v11, 0x7f030002

    invoke-direct {v9, v10, v11}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 196
    .local v9, updateViews:Landroid/widget/RemoteViews;
    new-instance v1, Landroid/content/Intent;

    const-class v10, Lcom/android/protips/ProtipWidget;

    move-object/from16 v0, p1

    invoke-direct {v1, v0, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 197
    .local v1, bcast:Landroid/content/Intent;
    const-string v10, "com.android.misterwidget.NEXT_TIP"

    invoke-virtual {v1, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 198
    const/4 v10, 0x0

    const/high16 v11, 0x800

    move-object/from16 v0, p1

    invoke-static {v0, v10, v1, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 200
    .local v5, pending:Landroid/app/PendingIntent;
    const/high16 v10, 0x7f08

    invoke-virtual {v9, v10, v5}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 203
    new-instance v1, Landroid/content/Intent;

    .end local v1           #bcast:Landroid/content/Intent;
    const-class v10, Lcom/android/protips/ProtipWidget;

    move-object/from16 v0, p1

    invoke-direct {v1, v0, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 204
    .restart local v1       #bcast:Landroid/content/Intent;
    const-string v10, "com.android.misterwidget.HEE_HEE"

    invoke-virtual {v1, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 205
    const-string v10, "times"

    const/4 v11, 0x1

    invoke-virtual {v1, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 206
    const/4 v10, 0x0

    const/high16 v11, 0x800

    move-object/from16 v0, p1

    invoke-static {v0, v10, v1, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 208
    const v10, 0x7f080001

    invoke-virtual {v9, v10, v5}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 211
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/protips/ProtipWidget;->mMessage:I

    if-ltz v10, :cond_2

    .line 212
    sget-object v10, Lcom/android/protips/ProtipWidget;->sNewlineRegex:Ljava/util/regex/Pattern;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/protips/ProtipWidget;->mTips:[Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/protips/ProtipWidget;->mMessage:I

    aget-object v11, v11, v12

    const/4 v12, 0x2

    invoke-virtual {v10, v11, v12}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;I)[Ljava/lang/String;

    move-result-object v4

    .line 213
    .local v4, parts:[Ljava/lang/String;
    const/4 v10, 0x0

    aget-object v8, v4, v10

    .line 214
    .local v8, title:Ljava/lang/String;
    array-length v10, v4

    const/4 v11, 0x1

    if-le v10, v11, :cond_0

    const/4 v10, 0x1

    aget-object v7, v4, v10

    .line 217
    .local v7, text:Ljava/lang/String;
    :goto_0
    sget-object v10, Lcom/android/protips/ProtipWidget;->sDrawableRegex:Ljava/util/regex/Pattern;

    invoke-virtual {v10, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 218
    .local v3, m:Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 219
    const/4 v10, 0x1

    invoke-virtual {v3, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 220
    .local v2, imageName:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v2, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 223
    .local v6, resId:I
    const v10, 0x7f080003

    invoke-virtual {v9, v10, v6}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 224
    const v10, 0x7f080003

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 225
    const-string v10, ""

    invoke-virtual {v3, v10}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 231
    .end local v2           #imageName:Ljava/lang/String;
    .end local v6           #resId:I
    :goto_1
    const v10, 0x7f080005

    invoke-virtual {v9, v10, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 233
    const v10, 0x7f080004

    invoke-virtual {v9, v10, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 235
    const v10, 0x7f080002

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f060001

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/protips/ProtipWidget;->mMessage:I

    add-int/lit8 v15, v15, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/protips/ProtipWidget;->mTips:[Ljava/lang/CharSequence;

    array-length v15, v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v11, v12, v13}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 239
    const/high16 v10, 0x7f08

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 244
    .end local v3           #m:Ljava/util/regex/Matcher;
    .end local v4           #parts:[Ljava/lang/String;
    .end local v7           #text:Ljava/lang/String;
    .end local v8           #title:Ljava/lang/String;
    :goto_2
    const v10, 0x7f080001

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/protips/ProtipWidget;->mIconRes:I

    invoke-virtual {v9, v10, v11}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 246
    return-object v9

    .line 214
    .restart local v4       #parts:[Ljava/lang/String;
    .restart local v8       #title:Ljava/lang/String;
    :cond_0
    const-string v7, ""

    goto :goto_0

    .line 227
    .restart local v3       #m:Ljava/util/regex/Matcher;
    .restart local v7       #text:Ljava/lang/String;
    :cond_1
    const v10, 0x7f080003

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 228
    const v10, 0x7f080003

    const/16 v11, 0x8

    invoke-virtual {v9, v10, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_1

    .line 241
    .end local v3           #m:Ljava/util/regex/Matcher;
    .end local v4           #parts:[Ljava/lang/String;
    .end local v7           #text:Ljava/lang/String;
    .end local v8           #title:Ljava/lang/String;
    :cond_2
    const/high16 v10, 0x7f08

    const/4 v11, 0x4

    invoke-virtual {v9, v10, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_2
.end method

.method public goodmorning()V
    .locals 2

    .prologue
    .line 87
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/protips/ProtipWidget;->mMessage:I

    .line 89
    const v0, 0x7f020006

    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/protips/ProtipWidget;->setIcon(I)V

    .line 90
    const-wide/16 v0, 0x1f4

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 91
    const v0, 0x7f020007

    invoke-direct {p0, v0}, Lcom/android/protips/ProtipWidget;->setIcon(I)V

    .line 92
    const-wide/16 v0, 0xc8

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 93
    const v0, 0x7f020006

    invoke-direct {p0, v0}, Lcom/android/protips/ProtipWidget;->setIcon(I)V

    .line 94
    const-wide/16 v0, 0x64

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 95
    const v0, 0x7f020007

    invoke-direct {p0, v0}, Lcom/android/protips/ProtipWidget;->setIcon(I)V

    .line 96
    const-wide/16 v0, 0x258

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/protips/ProtipWidget;->mMessage:I

    .line 100
    const v0, 0x7f020008

    iput v0, p0, Lcom/android/protips/ProtipWidget;->mIconRes:I

    .line 101
    invoke-direct {p0}, Lcom/android/protips/ProtipWidget;->refresh()V

    .line 102
    return-void

    .line 97
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 106
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object v0

    .line 107
    .local v0, result:Landroid/content/BroadcastReceiver$PendingResult;
    new-instance v1, Lcom/android/protips/ProtipWidget$1;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/android/protips/ProtipWidget$1;-><init>(Lcom/android/protips/ProtipWidget;Landroid/content/Context;Landroid/content/Intent;Landroid/content/BroadcastReceiver$PendingResult;)V

    .line 114
    .local v1, worker:Ljava/lang/Runnable;
    sget-object v2, Lcom/android/protips/ProtipWidget;->mAsyncHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 115
    return-void
.end method

.method onReceiveAsync(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 118
    invoke-direct {p0, p1}, Lcom/android/protips/ProtipWidget;->setup(Landroid/content/Context;)V

    .line 120
    iget-object v3, p0, Lcom/android/protips/ProtipWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 121
    .local v2, res:Landroid/content/res/Resources;
    iget v3, p0, Lcom/android/protips/ProtipWidget;->mTipSet:I

    if-ne v3, v6, :cond_0

    const v3, 0x7f050001

    :goto_0
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/android/protips/ProtipWidget;->mTips:[Ljava/lang/CharSequence;

    .line 123
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.android.misterwidget.NEXT_TIP"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 124
    invoke-direct {p0}, Lcom/android/protips/ProtipWidget;->getNextMessageIndex()I

    move-result v3

    iput v3, p0, Lcom/android/protips/ProtipWidget;->mMessage:I

    .line 125
    const-string v3, "Protips"

    invoke-virtual {p1, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 126
    .local v1, pref:Landroid/content/SharedPreferences$Editor;
    const-string v3, "widget_tip"

    iget v4, p0, Lcom/android/protips/ProtipWidget;->mMessage:I

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 127
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 128
    invoke-direct {p0}, Lcom/android/protips/ProtipWidget;->refresh()V

    .line 156
    .end local v1           #pref:Landroid/content/SharedPreferences$Editor;
    :goto_1
    return-void

    .line 121
    :cond_0
    const/high16 v3, 0x7f05

    goto :goto_0

    .line 129
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.android.misterwidget.HEE_HEE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 130
    const-string v3, "times"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/protips/ProtipWidget;->blink(I)V

    goto :goto_1

    .line 131
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.appwidget.action.APPWIDGET_ENABLED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 132
    invoke-virtual {p0}, Lcom/android/protips/ProtipWidget;->goodmorning()V

    goto :goto_1

    .line 133
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.provider.Telephony.SECRET_CODE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 134
    const-string v3, "Protips"

    const-string v4, "ACHIEVEMENT UNLOCKED"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget v3, p0, Lcom/android/protips/ProtipWidget;->mTipSet:I

    rsub-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/protips/ProtipWidget;->mTipSet:I

    .line 136
    iput v5, p0, Lcom/android/protips/ProtipWidget;->mMessage:I

    .line 138
    const-string v3, "Protips"

    invoke-virtual {p1, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 139
    .restart local v1       #pref:Landroid/content/SharedPreferences$Editor;
    const-string v3, "widget_tip"

    iget v4, p0, Lcom/android/protips/ProtipWidget;->mMessage:I

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 140
    const-string v3, "widget_tip_set"

    iget v4, p0, Lcom/android/protips/ProtipWidget;->mTipSet:I

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 141
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 143
    iget-object v3, p0, Lcom/android/protips/ProtipWidget;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v5, 0x1400

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "android.intent.category.HOME"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 148
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/android/protips/ProtipWidget;

    invoke-direct {v0, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 149
    .local v0, bcast:Landroid/content/Intent;
    const-string v3, "com.android.misterwidget.HEE_HEE"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    const-string v3, "times"

    const/4 v4, 0x3

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 151
    iget-object v3, p0, Lcom/android/protips/ProtipWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 153
    .end local v0           #bcast:Landroid/content/Intent;
    .end local v1           #pref:Landroid/content/SharedPreferences$Editor;
    :cond_4
    const v3, 0x7f020008

    iput v3, p0, Lcom/android/protips/ProtipWidget;->mIconRes:I

    .line 154
    invoke-direct {p0}, Lcom/android/protips/ProtipWidget;->refresh()V

    goto/16 :goto_1
.end method
