.class Lcom/mediatek/contacts/activities/SpeedDialManageActivity$SimReceiver$1;
.super Landroid/os/Handler;
.source "SpeedDialManageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/contacts/activities/SpeedDialManageActivity$SimReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/contacts/activities/SpeedDialManageActivity$SimReceiver;


# direct methods
.method constructor <init>(Lcom/mediatek/contacts/activities/SpeedDialManageActivity$SimReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 1376
    iput-object p1, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity$SimReceiver$1;->this$1:Lcom/mediatek/contacts/activities/SpeedDialManageActivity$SimReceiver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 1379
    invoke-static {}, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->access$1000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1380
    const-string v0, "SpeedDialManageActivity"

    const-string v1, "[SimReceiver.handleMessage] query in process, discard this query"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1385
    :goto_0
    return-void

    .line 1382
    :cond_0
    const-string v0, "SpeedDialManageActivity"

    const-string v1, "[SimReceiver.handleMessage] update UI due to SIMService finished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1383
    iget-object v0, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity$SimReceiver$1;->this$1:Lcom/mediatek/contacts/activities/SpeedDialManageActivity$SimReceiver;

    iget-object v0, v0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity$SimReceiver;->this$0:Lcom/mediatek/contacts/activities/SpeedDialManageActivity;

    #calls: Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->startQuery()V
    invoke-static {v0}, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->access$1600(Lcom/mediatek/contacts/activities/SpeedDialManageActivity;)V

    goto :goto_0
.end method
