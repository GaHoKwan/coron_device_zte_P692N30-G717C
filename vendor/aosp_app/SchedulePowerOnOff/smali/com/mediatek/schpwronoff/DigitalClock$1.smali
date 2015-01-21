.class Lcom/mediatek/schpwronoff/DigitalClock$1;
.super Landroid/content/BroadcastReceiver;
.source "DigitalClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/schpwronoff/DigitalClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/schpwronoff/DigitalClock;


# direct methods
.method constructor <init>(Lcom/mediatek/schpwronoff/DigitalClock;)V
    .locals 0
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/mediatek/schpwronoff/DigitalClock$1;->this$0:Lcom/mediatek/schpwronoff/DigitalClock;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/mediatek/schpwronoff/DigitalClock$1;->this$0:Lcom/mediatek/schpwronoff/DigitalClock;

    #getter for: Lcom/mediatek/schpwronoff/DigitalClock;->mLive:Z
    invoke-static {v0}, Lcom/mediatek/schpwronoff/DigitalClock;->access$000(Lcom/mediatek/schpwronoff/DigitalClock;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/mediatek/schpwronoff/DigitalClock$1;->this$0:Lcom/mediatek/schpwronoff/DigitalClock;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    #setter for: Lcom/mediatek/schpwronoff/DigitalClock;->mCalendar:Ljava/util/Calendar;
    invoke-static {v0, v1}, Lcom/mediatek/schpwronoff/DigitalClock;->access$102(Lcom/mediatek/schpwronoff/DigitalClock;Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/mediatek/schpwronoff/DigitalClock$1;->this$0:Lcom/mediatek/schpwronoff/DigitalClock;

    #calls: Lcom/mediatek/schpwronoff/DigitalClock;->updateTime()V
    invoke-static {v0}, Lcom/mediatek/schpwronoff/DigitalClock;->access$200(Lcom/mediatek/schpwronoff/DigitalClock;)V

    .line 83
    return-void
.end method
