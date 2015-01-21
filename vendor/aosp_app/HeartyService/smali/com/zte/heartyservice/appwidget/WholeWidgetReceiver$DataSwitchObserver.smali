.class Lcom/zte/heartyservice/appwidget/WholeWidgetReceiver$DataSwitchObserver;
.super Landroid/database/ContentObserver;
.source "WholeWidgetReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/appwidget/WholeWidgetReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataSwitchObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/appwidget/WholeWidgetReceiver;


# direct methods
.method public constructor <init>(Lcom/zte/heartyservice/appwidget/WholeWidgetReceiver;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 345
    iput-object p1, p0, Lcom/zte/heartyservice/appwidget/WholeWidgetReceiver$DataSwitchObserver;->this$0:Lcom/zte/heartyservice/appwidget/WholeWidgetReceiver;

    .line 346
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 347
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 361
    iget-object v0, p0, Lcom/zte/heartyservice/appwidget/WholeWidgetReceiver$DataSwitchObserver;->this$0:Lcom/zte/heartyservice/appwidget/WholeWidgetReceiver;

    #calls: Lcom/zte/heartyservice/appwidget/WholeWidgetReceiver;->updateTrafficSwitch()V
    invoke-static {v0}, Lcom/zte/heartyservice/appwidget/WholeWidgetReceiver;->access$100(Lcom/zte/heartyservice/appwidget/WholeWidgetReceiver;)V

    .line 362
    return-void
.end method

.method public startObserving()V
    .locals 3

    .prologue
    .line 350
    iget-object v1, p0, Lcom/zte/heartyservice/appwidget/WholeWidgetReceiver$DataSwitchObserver;->this$0:Lcom/zte/heartyservice/appwidget/WholeWidgetReceiver;

    #getter for: Lcom/zte/heartyservice/appwidget/WholeWidgetReceiver;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/zte/heartyservice/appwidget/WholeWidgetReceiver;->access$000(Lcom/zte/heartyservice/appwidget/WholeWidgetReceiver;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 351
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "mobile_data"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 353
    return-void
.end method

.method public stopObserving()V
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/zte/heartyservice/appwidget/WholeWidgetReceiver$DataSwitchObserver;->this$0:Lcom/zte/heartyservice/appwidget/WholeWidgetReceiver;

    #getter for: Lcom/zte/heartyservice/appwidget/WholeWidgetReceiver;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/zte/heartyservice/appwidget/WholeWidgetReceiver;->access$000(Lcom/zte/heartyservice/appwidget/WholeWidgetReceiver;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 357
    return-void
.end method
