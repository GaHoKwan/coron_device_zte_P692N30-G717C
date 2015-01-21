.class public Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;
.super Landroid/app/Service;
.source "LargeWidgetAnimService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService$SpeedUpServiceConnection;
    }
.end annotation


# static fields
.field private static final MSG_ANIM:I = 0x5

.field private static final MSG_FINISH:I = 0x1

.field private static final MSG_REAL_FINISH:I = 0x4

.field private static final MSG_TOAST:I = 0x2

.field private static final PERCENT_UPDATE:I = 0x3


# instance fields
.field private cacheMemoryNew:J

.field private cacheMemoryOld:J

.field private cleanCacheStep:I

.field private closeProcessStep:I

.field private finish2:Z

.field private finish3:Z

.field private firstId:I

.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private mHandler:Landroid/os/Handler;

.field public mISpeedUpCallBack:Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;

.field private mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;

.field private mSpeedUpServiceConnection:Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService$SpeedUpServiceConnection;

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

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->firstId:I

    .line 53
    iput-wide v2, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->memOld:J

    .line 54
    iput-wide v2, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->memDecrease:J

    .line 55
    iput-wide v2, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->cacheMemoryOld:J

    .line 56
    iput-wide v2, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->cacheMemoryNew:J

    .line 58
    iput v1, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->closeProcessStep:I

    .line 59
    iput v1, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->cleanCacheStep:I

    .line 60
    const/4 v0, 0x2

    iput v0, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->toastLock:I

    .line 61
    iput v1, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->step:I

    .line 63
    iput-boolean v1, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->finish2:Z

    .line 64
    iput-boolean v1, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->finish3:Z

    .line 72
    iput-object v4, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;

    .line 73
    new-instance v0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService$SpeedUpServiceConnection;

    invoke-direct {v0, p0, v4}, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService$SpeedUpServiceConnection;-><init>(Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService$1;)V

    iput-object v0, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->mSpeedUpServiceConnection:Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService$SpeedUpServiceConnection;

    .line 75
    new-instance v0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService$1;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService$1;-><init>(Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;)V

    iput-object v0, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->mISpeedUpCallBack:Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;

    .line 164
    new-instance v0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService$2;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService$2;-><init>(Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;)V

    iput-object v0, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$100(Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->closeProcessStep:I

    return v0
.end method

.method static synthetic access$1000(Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->finish2:Z

    return v0
.end method

.method static synthetic access$108(Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->closeProcessStep:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->closeProcessStep:I

    return v0
.end method

.method static synthetic access$1100(Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->finish3:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->finish3:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->toastLock:I

    return v0
.end method

.method static synthetic access$1210(Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->toastLock:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->toastLock:I

    return v0
.end method

.method static synthetic access$1300(Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->showToast()V

    return-void
.end method

.method static synthetic access$1400(Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->percentOld:I

    return v0
.end method

.method static synthetic access$1412(Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iget v0, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->percentOld:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->percentOld:I

    return v0
.end method

.method static synthetic access$1500(Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->step:I

    return v0
.end method

.method static synthetic access$1502(Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput p1, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->step:I

    return p1
.end method

.method static synthetic access$1600(Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->setMemPercent(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->showWidgetProgress(Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;)Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService$SpeedUpServiceConnection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->mSpeedUpServiceConnection:Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService$SpeedUpServiceConnection;

    return-object v0
.end method

.method static synthetic access$200(Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;)Lcom/zte/heartyservice/speedup/ISpeedUpService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;

    return-object v0
.end method

.method static synthetic access$202(Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;Lcom/zte/heartyservice/speedup/ISpeedUpService;)Lcom/zte/heartyservice/speedup/ISpeedUpService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;

    return-object p1
.end method

.method static synthetic access$302(Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-wide p1, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->memDecrease:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 42
    iget-wide v0, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->memOld:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->percentNew:I

    return v0
.end method

.method static synthetic access$602(Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput p1, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->percentNew:I

    return p1
.end method

.method static synthetic access$700(Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->cleanCacheStep:I

    return v0
.end method

.method static synthetic access$708(Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->cleanCacheStep:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->cleanCacheStep:I

    return v0
.end method

.method static synthetic access$814(Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;J)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iget-wide v0, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->cacheMemoryOld:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->cacheMemoryOld:J

    return-wide v0
.end method

.method static synthetic access$914(Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;J)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iget-wide v0, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->cacheMemoryNew:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->cacheMemoryNew:J

    return-wide v0
.end method

.method private setMemPercent(I)V
    .locals 5
    .parameter "percent"

    .prologue
    .line 254
    const-string v2, ""

    const-string v3, "liuji debug setMemPercent"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget v2, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->widgetId:I

    if-gez v2, :cond_0

    .line 256
    const-string v2, ""

    const-string v3, "liuji debug setMemPercent return"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :goto_0
    return-void

    .line 259
    :cond_0
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f03012f

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 261
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

    .line 263
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 264
    .local v0, intent:Landroid/content/Intent;
    const/high16 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 265
    const-string v2, "widget_id_key"

    iget v3, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->widgetId:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 266
    if-lez p1, :cond_1

    .line 267
    const-string v2, "widget_mem_percent"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 269
    :cond_1
    const v2, 0x7f0e019c

    iget v3, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->widgetId:I

    const/high16 v4, 0x1000

    invoke-static {p0, v3, v0, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 270
    iget-object v2, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget v3, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->widgetId:I

    invoke-virtual {v2, v3, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    goto :goto_0
.end method

.method private setWidgetTitle(I)V
    .locals 3
    .parameter "titleId"

    .prologue
    .line 288
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.zte.heartyservice.appwidget.WidgetReceiver.updateMem"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 289
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "title"

    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 290
    const-string v1, "widget_id"

    iget v2, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->widgetId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 291
    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->sendBroadcast(Landroid/content/Intent;)V

    .line 292
    return-void
.end method

.method private showToast()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const-wide/16 v8, 0x0

    .line 295
    const-wide/16 v0, 0x0

    .line 296
    .local v0, c:J
    const/4 v3, 0x0

    .line 297
    .local v3, stringM:Ljava/lang/String;
    const/4 v2, 0x0

    .line 298
    .local v2, stringC:Ljava/lang/String;
    iget-wide v4, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->memDecrease:J

    cmp-long v4, v4, v8

    if-lez v4, :cond_0

    .line 299
    iget-wide v4, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->memDecrease:J

    invoke-static {p0, v4, v5}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    .line 305
    :goto_0
    iget-wide v4, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->cacheMemoryOld:J

    iget-wide v6, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->cacheMemoryNew:J

    sub-long v0, v4, v6

    .line 306
    cmp-long v4, v0, v8

    if-lez v4, :cond_1

    .line 307
    invoke-static {p0, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    .line 313
    :goto_1
    iget-wide v4, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->memDecrease:J

    cmp-long v4, v4, v8

    if-gtz v4, :cond_2

    cmp-long v4, v0, v8

    if-gtz v4, :cond_2

    .line 314
    const v4, 0x7f0a00d0

    invoke-virtual {p0, v4}, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 321
    :goto_2
    iput-boolean v11, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->finish2:Z

    .line 322
    return-void

    .line 302
    :cond_0
    const-string v3, "0 MB"

    goto :goto_0

    .line 310
    :cond_1
    const-string v2, "0 MB"

    goto :goto_1

    .line 317
    :cond_2
    const v4, 0x7f0a00d1

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v10

    aput-object v2, v5, v11

    invoke-virtual {p0, v4, v5}, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_2
.end method

.method private showWidgetProgress(Z)V
    .locals 5
    .parameter "show"

    .prologue
    const/4 v2, 0x0

    .line 274
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f03012f

    invoke-direct {v1, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 275
    .local v1, views:Landroid/widget/RemoteViews;
    const v3, 0x7f0e019f

    invoke-virtual {v1, v3, v2, v2, p1}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 277
    const v3, 0x7f0e019e

    if-eqz p1, :cond_0

    const/16 v2, 0x8

    :cond_0
    invoke-virtual {v1, v3, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 279
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 280
    .local v0, intent:Landroid/content/Intent;
    const/high16 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 281
    const-string v2, "widget_id_key"

    iget v3, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->widgetId:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 283
    const v2, 0x7f0e019c

    iget v3, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->widgetId:I

    const/high16 v4, 0x1000

    invoke-static {p0, v3, v0, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 284
    iget-object v2, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget v3, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->widgetId:I

    invoke-virtual {v2, v3, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 285
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 220
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 8
    .parameter "intent"
    .parameter "startId"

    .prologue
    const/4 v5, -0x1

    .line 224
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 226
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v4

    iput-object v4, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 228
    iget v4, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->firstId:I

    if-ne v4, v5, :cond_1

    .line 229
    iput p2, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->firstId:I

    .line 234
    const-string v4, "widget_id_key"

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->widgetId:I

    .line 235
    const-string v4, "widget_mem_percent"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->percentOld:I

    .line 237
    iget v4, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->percentOld:I

    if-gtz v4, :cond_0

    .line 238
    invoke-static {}, Lcom/zte/heartyservice/common/utils/SysInfo;->getTotalMemory()J

    move-result-wide v2

    .line 239
    .local v2, total:J
    invoke-static {}, Lcom/zte/heartyservice/common/utils/SysInfo;->getAvailMemory()J

    move-result-wide v0

    .line 240
    .local v0, available:J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    .line 241
    sub-long v4, v2, v0

    long-to-float v4, v4

    const/high16 v5, 0x42c8

    mul-float/2addr v4, v5

    long-to-float v5, v2

    div-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->percentOld:I

    .line 245
    .end local v0           #available:J
    .end local v2           #total:J
    :cond_0
    invoke-static {}, Lcom/zte/heartyservice/common/utils/SysInfo;->getAvailMemory()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->memOld:J

    .line 247
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->showWidgetProgress(Z)V

    .line 249
    iget-object v4, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x5

    const-wide/16 v6, 0x3e8

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 250
    iget-object v4, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x4

    const-wide/16 v6, 0x2710

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 251
    :cond_1
    return-void
.end method

.method public stopService()V
    .locals 1

    .prologue
    .line 325
    const v0, 0x7f0a00d2

    invoke-direct {p0, v0}, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->setWidgetTitle(I)V

    .line 326
    iget-object v0, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->mSpeedUpServiceConnection:Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService$SpeedUpServiceConnection;

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->unbindService(Landroid/content/ServiceConnection;)V

    .line 329
    :cond_0
    invoke-virtual {p0}, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->stopSelf()V

    .line 330
    return-void
.end method
