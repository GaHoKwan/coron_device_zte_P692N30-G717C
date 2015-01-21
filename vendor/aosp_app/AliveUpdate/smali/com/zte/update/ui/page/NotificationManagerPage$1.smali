.class Lcom/zte/update/ui/page/NotificationManagerPage$1;
.super Landroid/os/Handler;
.source "NotificationManagerPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/update/ui/page/NotificationManagerPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/update/ui/page/NotificationManagerPage;


# direct methods
.method constructor <init>(Lcom/zte/update/ui/page/NotificationManagerPage;)V
    .locals 0
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/zte/update/ui/page/NotificationManagerPage$1;->this$0:Lcom/zte/update/ui/page/NotificationManagerPage;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/zte/update/ui/page/NotificationManagerPage$1;->this$0:Lcom/zte/update/ui/page/NotificationManagerPage;

    #calls: Lcom/zte/update/ui/page/NotificationManagerPage;->intiNotificationListView()V
    invoke-static {v0}, Lcom/zte/update/ui/page/NotificationManagerPage;->access$000(Lcom/zte/update/ui/page/NotificationManagerPage;)V

    .line 107
    iget-object v0, p0, Lcom/zte/update/ui/page/NotificationManagerPage$1;->this$0:Lcom/zte/update/ui/page/NotificationManagerPage;

    #calls: Lcom/zte/update/ui/page/NotificationManagerPage;->intiUnNotificationListView()V
    invoke-static {v0}, Lcom/zte/update/ui/page/NotificationManagerPage;->access$100(Lcom/zte/update/ui/page/NotificationManagerPage;)V

    .line 108
    return-void
.end method
