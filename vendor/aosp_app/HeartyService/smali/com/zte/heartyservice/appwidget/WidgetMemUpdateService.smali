.class public Lcom/zte/heartyservice/appwidget/WidgetMemUpdateService;
.super Landroid/app/Service;
.source "WidgetMemUpdateService.java"


# static fields
.field private static final MSG_UPDATE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "WidgetMemUpdateService"

.field private static final UPDATE_PERIOD:I = 0x7530

.field private static availableMemory:J = 0x0L

.field private static final debug:Z = true

.field private static memoryPercent:I

.field private static totalMemory:J


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 43
    sput-wide v0, Lcom/zte/heartyservice/appwidget/WidgetMemUpdateService;->availableMemory:J

    .line 44
    sput-wide v0, Lcom/zte/heartyservice/appwidget/WidgetMemUpdateService;->totalMemory:J

    .line 45
    const/4 v0, 0x0

    sput v0, Lcom/zte/heartyservice/appwidget/WidgetMemUpdateService;->memoryPercent:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 50
    new-instance v0, Lcom/zte/heartyservice/appwidget/WidgetMemUpdateService$1;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/appwidget/WidgetMemUpdateService$1;-><init>(Lcom/zte/heartyservice/appwidget/WidgetMemUpdateService;)V

    iput-object v0, p0, Lcom/zte/heartyservice/appwidget/WidgetMemUpdateService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/zte/heartyservice/appwidget/WidgetMemUpdateService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/zte/heartyservice/appwidget/WidgetMemUpdateService;->doUpdate()V

    return-void
.end method

.method private doUpdate()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 63
    invoke-direct {p0}, Lcom/zte/heartyservice/appwidget/WidgetMemUpdateService;->updateWidget()V

    .line 64
    iget-object v0, p0, Lcom/zte/heartyservice/appwidget/WidgetMemUpdateService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 65
    iget-object v0, p0, Lcom/zte/heartyservice/appwidget/WidgetMemUpdateService;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x7530

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 66
    return-void
.end method

.method private updateWidget()V
    .locals 5

    .prologue
    .line 79
    invoke-static {}, Lcom/zte/heartyservice/common/utils/SysInfo;->getTotalMemory()J

    move-result-wide v1

    sput-wide v1, Lcom/zte/heartyservice/appwidget/WidgetMemUpdateService;->totalMemory:J

    .line 80
    invoke-static {}, Lcom/zte/heartyservice/common/utils/SysInfo;->getAvailMemory()J

    move-result-wide v1

    sput-wide v1, Lcom/zte/heartyservice/appwidget/WidgetMemUpdateService;->availableMemory:J

    .line 81
    sget-wide v1, Lcom/zte/heartyservice/appwidget/WidgetMemUpdateService;->totalMemory:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 82
    sget-wide v1, Lcom/zte/heartyservice/appwidget/WidgetMemUpdateService;->totalMemory:J

    sget-wide v3, Lcom/zte/heartyservice/appwidget/WidgetMemUpdateService;->availableMemory:J

    sub-long/2addr v1, v3

    long-to-float v1, v1

    const/high16 v2, 0x42c8

    mul-float/2addr v1, v2

    sget-wide v2, Lcom/zte/heartyservice/appwidget/WidgetMemUpdateService;->totalMemory:J

    long-to-float v2, v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/zte/heartyservice/appwidget/WidgetMemUpdateService;->memoryPercent:I

    .line 84
    :cond_0
    const-string v1, "WidgetMemUpdateService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "liuji debug updateWidget:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/zte/heartyservice/appwidget/WidgetMemUpdateService;->memoryPercent:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.zte.heartyservice.appwidget.WidgetReceiver.memPercent"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 86
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "widget_percent"

    sget v2, Lcom/zte/heartyservice/appwidget/WidgetMemUpdateService;->memoryPercent:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 87
    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/appwidget/WidgetMemUpdateService;->sendBroadcast(Landroid/content/Intent;)V

    .line 88
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 71
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 0
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/zte/heartyservice/appwidget/WidgetMemUpdateService;->doUpdate()V

    .line 76
    return-void
.end method
