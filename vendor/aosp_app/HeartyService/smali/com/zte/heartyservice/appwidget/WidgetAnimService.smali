.class public Lcom/zte/heartyservice/appwidget/WidgetAnimService;
.super Landroid/app/Service;
.source "WidgetAnimService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/appwidget/WidgetAnimService$SpeedUpServiceConnection;
    }
.end annotation


# static fields
.field private static final MSG_ANIM:I = 0x5

.field private static final MSG_FINISH:I = 0x1

.field private static final MSG_REAL_FINISH:I = 0x4

.field private static final MSG_TOAST:I = 0x2

.field private static final PERCENT_UPDATE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "WidgetAnimService"


# instance fields
.field private cacheMemoryNew:J

.field private cacheMemoryOld:J

.field private closeProcessStep:I

.field private debugTime1:J

.field private debugTime2:J

.field private debugTime3:J

.field private finish2:Z

.field private finish3:Z

.field private firstId:I

.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private mHandler:Landroid/os/Handler;

.field public mISpeedUpCallBack:Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;

.field private mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;

.field private mSpeedUpServiceConnection:Lcom/zte/heartyservice/appwidget/WidgetAnimService$SpeedUpServiceConnection;

.field private memDecrease:J

.field private memOld:J

.field private percentDecrease:I

.field private percentNew:I

.field private percentOld:I

.field private step:I

.field private toastLock:I

.field private widgetId:I


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    .line 45
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->firstId:I

    .line 59
    iput-wide v1, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->memOld:J

    .line 60
    iput-wide v1, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->memDecrease:J

    .line 61
    iput-wide v1, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->cacheMemoryOld:J

    .line 62
    iput-wide v1, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->cacheMemoryNew:J

    .line 64
    iput v3, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->closeProcessStep:I

    .line 66
    const/4 v0, 0x2

    iput v0, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->toastLock:I

    .line 67
    iput v3, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->step:I

    .line 69
    iput-boolean v3, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->finish2:Z

    .line 70
    iput-boolean v3, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->finish3:Z

    .line 72
    iput-wide v1, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->debugTime1:J

    .line 73
    iput-wide v1, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->debugTime2:J

    .line 74
    iput-wide v1, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->debugTime3:J

    .line 82
    iput-object v4, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;

    .line 83
    new-instance v0, Lcom/zte/heartyservice/appwidget/WidgetAnimService$SpeedUpServiceConnection;

    invoke-direct {v0, p0, v4}, Lcom/zte/heartyservice/appwidget/WidgetAnimService$SpeedUpServiceConnection;-><init>(Lcom/zte/heartyservice/appwidget/WidgetAnimService;Lcom/zte/heartyservice/appwidget/WidgetAnimService$1;)V

    iput-object v0, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->mSpeedUpServiceConnection:Lcom/zte/heartyservice/appwidget/WidgetAnimService$SpeedUpServiceConnection;

    .line 85
    new-instance v0, Lcom/zte/heartyservice/appwidget/WidgetAnimService$1;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/appwidget/WidgetAnimService$1;-><init>(Lcom/zte/heartyservice/appwidget/WidgetAnimService;)V

    iput-object v0, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->mISpeedUpCallBack:Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;

    .line 184
    new-instance v0, Lcom/zte/heartyservice/appwidget/WidgetAnimService$2;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/appwidget/WidgetAnimService$2;-><init>(Lcom/zte/heartyservice/appwidget/WidgetAnimService;)V

    iput-object v0, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$100(Lcom/zte/heartyservice/appwidget/WidgetAnimService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget v0, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->closeProcessStep:I

    return v0
.end method

.method static synthetic access$1000(Lcom/zte/heartyservice/appwidget/WidgetAnimService;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 45
    iget-wide v0, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->debugTime1:J

    return-wide v0
.end method

.method static synthetic access$1002(Lcom/zte/heartyservice/appwidget/WidgetAnimService;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-wide p1, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->debugTime1:J

    return-wide p1
.end method

.method static synthetic access$108(Lcom/zte/heartyservice/appwidget/WidgetAnimService;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 45
    iget v0, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->closeProcessStep:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->closeProcessStep:I

    return v0
.end method

.method static synthetic access$1100(Lcom/zte/heartyservice/appwidget/WidgetAnimService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->finish2:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/zte/heartyservice/appwidget/WidgetAnimService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->finish3:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/zte/heartyservice/appwidget/WidgetAnimService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->finish3:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/zte/heartyservice/appwidget/WidgetAnimService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget v0, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->toastLock:I

    return v0
.end method

.method static synthetic access$1310(Lcom/zte/heartyservice/appwidget/WidgetAnimService;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 45
    iget v0, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->toastLock:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->toastLock:I

    return v0
.end method

.method static synthetic access$1400(Lcom/zte/heartyservice/appwidget/WidgetAnimService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->showToast()V

    return-void
.end method

.method static synthetic access$1500(Lcom/zte/heartyservice/appwidget/WidgetAnimService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget v0, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->percentOld:I

    return v0
.end method

.method static synthetic access$1512(Lcom/zte/heartyservice/appwidget/WidgetAnimService;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iget v0, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->percentOld:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->percentOld:I

    return v0
.end method

.method static synthetic access$1600(Lcom/zte/heartyservice/appwidget/WidgetAnimService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget v0, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->step:I

    return v0
.end method

.method static synthetic access$1602(Lcom/zte/heartyservice/appwidget/WidgetAnimService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput p1, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->step:I

    return p1
.end method

.method static synthetic access$1700(Lcom/zte/heartyservice/appwidget/WidgetAnimService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->setMemPercent(I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/zte/heartyservice/appwidget/WidgetAnimService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->showWidgetProgress(Z)V

    return-void
.end method

.method static synthetic access$1900(Lcom/zte/heartyservice/appwidget/WidgetAnimService;)Lcom/zte/heartyservice/appwidget/WidgetAnimService$SpeedUpServiceConnection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->mSpeedUpServiceConnection:Lcom/zte/heartyservice/appwidget/WidgetAnimService$SpeedUpServiceConnection;

    return-object v0
.end method

.method static synthetic access$200(Lcom/zte/heartyservice/appwidget/WidgetAnimService;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->currentTime()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$300(Lcom/zte/heartyservice/appwidget/WidgetAnimService;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 45
    iget-wide v0, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->debugTime2:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/zte/heartyservice/appwidget/WidgetAnimService;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-wide p1, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->debugTime2:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/zte/heartyservice/appwidget/WidgetAnimService;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 45
    iget-wide v0, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->debugTime3:J

    return-wide v0
.end method

.method static synthetic access$402(Lcom/zte/heartyservice/appwidget/WidgetAnimService;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-wide p1, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->debugTime3:J

    return-wide p1
.end method

.method static synthetic access$500(Lcom/zte/heartyservice/appwidget/WidgetAnimService;)Lcom/zte/heartyservice/speedup/ISpeedUpService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;

    return-object v0
.end method

.method static synthetic access$502(Lcom/zte/heartyservice/appwidget/WidgetAnimService;Lcom/zte/heartyservice/speedup/ISpeedUpService;)Lcom/zte/heartyservice/speedup/ISpeedUpService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;

    return-object p1
.end method

.method static synthetic access$602(Lcom/zte/heartyservice/appwidget/WidgetAnimService;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-wide p1, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->memDecrease:J

    return-wide p1
.end method

.method static synthetic access$700(Lcom/zte/heartyservice/appwidget/WidgetAnimService;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 45
    iget-wide v0, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->memOld:J

    return-wide v0
.end method

.method static synthetic access$800(Lcom/zte/heartyservice/appwidget/WidgetAnimService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/zte/heartyservice/appwidget/WidgetAnimService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget v0, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->percentNew:I

    return v0
.end method

.method static synthetic access$902(Lcom/zte/heartyservice/appwidget/WidgetAnimService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput p1, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->percentNew:I

    return p1
.end method

.method private currentTime()J
    .locals 2

    .prologue
    .line 297
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private getDataAvail()J
    .locals 7

    .prologue
    .line 282
    new-instance v4, Landroid/os/StatFs;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/data/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 284
    .local v4, statfs:Landroid/os/StatFs;
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v5

    int-to-long v2, v5

    .line 285
    .local v2, bsize:J
    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v5

    int-to-long v0, v5

    .line 286
    .local v0, avail:J
    mul-long v5, v0, v2

    return-wide v5
.end method

.method private setMemPercent(I)V
    .locals 5
    .parameter "percent"

    .prologue
    .line 302
    iget v2, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->widgetId:I

    if-gez v2, :cond_0

    .line 318
    :goto_0
    return-void

    .line 305
    :cond_0
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f03007e

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 307
    .local v1, views:Landroid/widget/RemoteViews;
    const v2, 0x7f0e019d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 310
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/zte/heartyservice/appwidget/WidgetAnimService;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 311
    .local v0, intent:Landroid/content/Intent;
    const/high16 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 312
    const-string v2, "widget_id_key"

    iget v3, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->widgetId:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 313
    if-lez p1, :cond_1

    .line 314
    const-string v2, "widget_mem_percent"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 316
    :cond_1
    const v2, 0x7f0e019c

    iget v3, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->widgetId:I

    const/high16 v4, 0x1000

    invoke-static {p0, v3, v0, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 317
    iget-object v2, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget v3, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->widgetId:I

    invoke-virtual {v2, v3, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    goto :goto_0
.end method

.method private setWidgetTitle(I)V
    .locals 3
    .parameter "titleId"

    .prologue
    .line 335
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.zte.heartyservice.appwidget.WidgetReceiver.updateMem"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 336
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "title"

    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 337
    const-string v1, "widget_id"

    iget v2, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->widgetId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 338
    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->sendBroadcast(Landroid/content/Intent;)V

    .line 339
    return-void
.end method

.method private showToast()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const-wide/16 v8, 0x0

    const/4 v7, 0x0

    .line 342
    const-wide/16 v0, 0x0

    .line 343
    .local v0, c:J
    const/4 v2, 0x0

    .line 345
    .local v2, stringM:Ljava/lang/String;
    iget-wide v3, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->memDecrease:J

    cmp-long v3, v3, v8

    if-lez v3, :cond_0

    .line 346
    iget-wide v3, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->memDecrease:J

    invoke-static {p0, v3, v4}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    .line 352
    :goto_0
    invoke-direct {p0}, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->getDataAvail()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->cacheMemoryNew:J

    .line 353
    iget-wide v3, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->cacheMemoryNew:J

    iget-wide v5, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->cacheMemoryOld:J

    sub-long v0, v3, v5

    .line 357
    iget-wide v3, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->memDecrease:J

    cmp-long v3, v3, v8

    if-gtz v3, :cond_1

    cmp-long v3, v0, v8

    if-gtz v3, :cond_1

    .line 358
    const v3, 0x7f0a00d0

    invoke-virtual {p0, v3}, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 365
    :goto_1
    iput-boolean v10, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->finish2:Z

    .line 366
    return-void

    .line 349
    :cond_0
    const-string v2, "0 MB"

    goto :goto_0

    .line 361
    :cond_1
    const v3, 0x7f0a00d1

    new-array v4, v10, [Ljava/lang/Object;

    aput-object v2, v4, v7

    invoke-virtual {p0, v3, v4}, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method private showWidgetProgress(Z)V
    .locals 5
    .parameter "show"

    .prologue
    const/4 v2, 0x0

    .line 321
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f03007e

    invoke-direct {v1, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 322
    .local v1, views:Landroid/widget/RemoteViews;
    const v3, 0x7f0e019f

    invoke-virtual {v1, v3, v2, v2, p1}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 324
    const v3, 0x7f0e019e

    if-eqz p1, :cond_0

    const/16 v2, 0x8

    :cond_0
    invoke-virtual {v1, v3, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 326
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/zte/heartyservice/appwidget/WidgetAnimService;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 327
    .local v0, intent:Landroid/content/Intent;
    const/high16 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 328
    const-string v2, "widget_id_key"

    iget v3, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->widgetId:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 330
    const v2, 0x7f0e019c

    iget v3, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->widgetId:I

    const/high16 v4, 0x1000

    invoke-static {p0, v3, v0, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 331
    iget-object v2, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget v3, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->widgetId:I

    invoke-virtual {v2, v3, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 332
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 240
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 9
    .parameter "intent"
    .parameter "startId"

    .prologue
    const/4 v8, 0x4

    const/4 v5, -0x1

    .line 244
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 246
    if-nez p1, :cond_1

    .line 247
    iget-object v4, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->mHandler:Landroid/os/Handler;

    const-wide/16 v5, 0xc8

    invoke-virtual {v4, v8, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 279
    :cond_0
    :goto_0
    return-void

    .line 251
    :cond_1
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v4

    iput-object v4, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 253
    iget v4, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->firstId:I

    if-ne v4, v5, :cond_0

    .line 254
    iput p2, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->firstId:I

    .line 258
    const-string v4, "widget_id_key"

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->widgetId:I

    .line 259
    const-string v4, "widget_mem_percent"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->percentOld:I

    .line 261
    iget v4, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->percentOld:I

    if-gtz v4, :cond_2

    .line 262
    invoke-static {}, Lcom/zte/heartyservice/common/utils/SysInfo;->getTotalMemory()J

    move-result-wide v2

    .line 263
    .local v2, total:J
    invoke-static {}, Lcom/zte/heartyservice/common/utils/SysInfo;->getAvailMemory()J

    move-result-wide v0

    .line 264
    .local v0, available:J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_2

    .line 265
    sub-long v4, v2, v0

    long-to-float v4, v4

    const/high16 v5, 0x42c8

    mul-float/2addr v4, v5

    long-to-float v5, v2

    div-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->percentOld:I

    .line 269
    .end local v0           #available:J
    .end local v2           #total:J
    :cond_2
    invoke-static {}, Lcom/zte/heartyservice/common/utils/SysInfo;->getAvailMemory()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->memOld:J

    .line 271
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->showWidgetProgress(Z)V

    .line 273
    iget-object v4, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x5

    const-wide/16 v6, 0x3e8

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 274
    iget-object v4, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->mHandler:Landroid/os/Handler;

    const-wide/16 v5, 0x2710

    invoke-virtual {v4, v8, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 276
    const v4, 0x7f0a00d3

    invoke-direct {p0, v4}, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->setWidgetTitle(I)V

    .line 278
    invoke-direct {p0}, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->getDataAvail()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->cacheMemoryOld:J

    goto :goto_0
.end method

.method public stopService()V
    .locals 1

    .prologue
    .line 369
    const v0, 0x7f0a00d2

    invoke-direct {p0, v0}, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->setWidgetTitle(I)V

    .line 370
    iget-object v0, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;

    if-eqz v0, :cond_0

    .line 372
    :try_start_0
    iget-object v0, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->mSpeedUpServiceConnection:Lcom/zte/heartyservice/appwidget/WidgetAnimService$SpeedUpServiceConnection;

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 376
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->stopSelf()V

    .line 377
    return-void

    .line 373
    :catch_0
    move-exception v0

    goto :goto_0
.end method
