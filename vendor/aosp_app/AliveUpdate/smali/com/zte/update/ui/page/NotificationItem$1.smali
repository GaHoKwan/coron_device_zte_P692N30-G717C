.class Lcom/zte/update/ui/page/NotificationItem$1;
.super Ljava/lang/Object;
.source "NotificationItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/update/ui/page/NotificationItem;->initStatus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/update/ui/page/NotificationItem;


# direct methods
.method constructor <init>(Lcom/zte/update/ui/page/NotificationItem;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/zte/update/ui/page/NotificationItem$1;->this$0:Lcom/zte/update/ui/page/NotificationItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 58
    iget-object v1, p0, Lcom/zte/update/ui/page/NotificationItem$1;->this$0:Lcom/zte/update/ui/page/NotificationItem;

    iget-object v1, v1, Lcom/zte/update/ui/page/NotificationItem;->requestInfo:Lcom/zte/update/data/RequestAppInfo;

    invoke-virtual {v1}, Lcom/zte/update/data/RequestAppInfo;->getNotificationType()I

    move-result v0

    .line 59
    .local v0, notify_type:I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 60
    iget-object v1, p0, Lcom/zte/update/ui/page/NotificationItem$1;->this$0:Lcom/zte/update/ui/page/NotificationItem;

    iget-object v1, v1, Lcom/zte/update/ui/page/NotificationItem;->requestInfo:Lcom/zte/update/data/RequestAppInfo;

    invoke-virtual {v1}, Lcom/zte/update/data/RequestAppInfo;->getMainKeyValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/zte/update/mgr/ServiceTasks;->pauseDownload(Ljava/lang/String;)V

    .line 61
    iget-object v1, p0, Lcom/zte/update/ui/page/NotificationItem$1;->this$0:Lcom/zte/update/ui/page/NotificationItem;

    iget-object v1, v1, Lcom/zte/update/ui/page/NotificationItem;->requestInfo:Lcom/zte/update/data/RequestAppInfo;

    invoke-virtual {v1}, Lcom/zte/update/data/RequestAppInfo;->closeNotification()V

    .line 66
    :goto_0
    invoke-static {}, Lcom/zte/update/data/DataManager;->getInstance()Lcom/zte/update/data/DataManager;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/update/ui/page/NotificationItem$1;->this$0:Lcom/zte/update/ui/page/NotificationItem;

    iget-object v2, v2, Lcom/zte/update/ui/page/NotificationItem;->requestInfo:Lcom/zte/update/data/RequestAppInfo;

    invoke-virtual {v1, v2}, Lcom/zte/update/data/DataManager;->saveRequestInfo(Lcom/zte/update/data/RequestAppInfo;)V

    .line 67
    invoke-static {}, Lcom/zte/update/app/ui/ObserverManager;->getInstance()Lcom/zte/update/app/ui/ObserverManager;

    move-result-object v1

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/zte/update/app/ui/ObserverManager;->update(Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 68
    return-void

    .line 63
    :cond_0
    iget-object v1, p0, Lcom/zte/update/ui/page/NotificationItem$1;->this$0:Lcom/zte/update/ui/page/NotificationItem;

    iget-object v1, v1, Lcom/zte/update/ui/page/NotificationItem;->requestInfo:Lcom/zte/update/data/RequestAppInfo;

    invoke-virtual {v1}, Lcom/zte/update/data/RequestAppInfo;->openNotification()V

    goto :goto_0
.end method
