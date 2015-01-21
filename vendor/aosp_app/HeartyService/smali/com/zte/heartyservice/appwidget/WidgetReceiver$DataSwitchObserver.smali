.class Lcom/zte/heartyservice/appwidget/WidgetReceiver$DataSwitchObserver;
.super Landroid/database/ContentObserver;
.source "WidgetReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/appwidget/WidgetReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataSwitchObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/appwidget/WidgetReceiver;


# direct methods
.method public constructor <init>(Lcom/zte/heartyservice/appwidget/WidgetReceiver;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 330
    iput-object p1, p0, Lcom/zte/heartyservice/appwidget/WidgetReceiver$DataSwitchObserver;->this$0:Lcom/zte/heartyservice/appwidget/WidgetReceiver;

    .line 331
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 332
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .parameter "selfChange"

    .prologue
    .line 346
    const-string v0, "WidgetReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "liuji debug DataSwitchObserver onChange:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    iget-object v0, p0, Lcom/zte/heartyservice/appwidget/WidgetReceiver$DataSwitchObserver;->this$0:Lcom/zte/heartyservice/appwidget/WidgetReceiver;

    #calls: Lcom/zte/heartyservice/appwidget/WidgetReceiver;->updateTrafficSwitch()V
    invoke-static {v0}, Lcom/zte/heartyservice/appwidget/WidgetReceiver;->access$100(Lcom/zte/heartyservice/appwidget/WidgetReceiver;)V

    .line 348
    return-void
.end method

.method public startObserving()V
    .locals 3

    .prologue
    .line 335
    iget-object v1, p0, Lcom/zte/heartyservice/appwidget/WidgetReceiver$DataSwitchObserver;->this$0:Lcom/zte/heartyservice/appwidget/WidgetReceiver;

    #getter for: Lcom/zte/heartyservice/appwidget/WidgetReceiver;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/zte/heartyservice/appwidget/WidgetReceiver;->access$000(Lcom/zte/heartyservice/appwidget/WidgetReceiver;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 336
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "mobile_data"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 338
    return-void
.end method

.method public stopObserving()V
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/zte/heartyservice/appwidget/WidgetReceiver$DataSwitchObserver;->this$0:Lcom/zte/heartyservice/appwidget/WidgetReceiver;

    #getter for: Lcom/zte/heartyservice/appwidget/WidgetReceiver;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/zte/heartyservice/appwidget/WidgetReceiver;->access$000(Lcom/zte/heartyservice/appwidget/WidgetReceiver;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 342
    return-void
.end method
