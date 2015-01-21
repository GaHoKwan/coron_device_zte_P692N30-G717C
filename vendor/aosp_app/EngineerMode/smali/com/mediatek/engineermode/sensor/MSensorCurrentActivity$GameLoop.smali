.class Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity$GameLoop;
.super Ljava/lang/Thread;
.source "MSensorCurrentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GameLoop"
.end annotation


# instance fields
.field private volatile running:Z

.field final synthetic this$0:Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;


# direct methods
.method private constructor <init>(Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 265
    iput-object p1, p0, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity$GameLoop;->this$0:Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 266
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity$GameLoop;->running:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 265
    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity$GameLoop;-><init>(Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 270
    :goto_0
    iget-boolean v1, p0, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity$GameLoop;->running:Z

    if-eqz v1, :cond_0

    .line 272
    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->sleep(J)V

    .line 273
    iget-object v1, p0, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity$GameLoop;->this$0:Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;

    #calls: Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;->draw()V
    invoke-static {v1}, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;->access$100(Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 274
    :catch_0
    move-exception v0

    .line 275
    .local v0, ie:Ljava/lang/InterruptedException;
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity$GameLoop;->running:Z

    goto :goto_0

    .line 278
    .end local v0           #ie:Ljava/lang/InterruptedException;
    :cond_0
    return-void
.end method

.method public safeStop()V
    .locals 1

    .prologue
    .line 281
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity$GameLoop;->running:Z

    .line 282
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    .line 283
    return-void
.end method
