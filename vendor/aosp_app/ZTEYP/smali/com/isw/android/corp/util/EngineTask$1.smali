.class Lcom/isw/android/corp/util/EngineTask$1;
.super Ljava/util/TimerTask;
.source "EngineTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isw/android/corp/util/EngineTask;->initTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/isw/android/corp/util/WinksApplication;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/isw/android/corp/util/EngineTask;->engineScheduleTask(Landroid/content/Context;)V

    .line 89
    return-void
.end method
