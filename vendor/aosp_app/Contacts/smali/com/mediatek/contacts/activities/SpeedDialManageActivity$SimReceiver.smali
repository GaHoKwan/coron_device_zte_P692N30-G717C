.class Lcom/mediatek/contacts/activities/SpeedDialManageActivity$SimReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SpeedDialManageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/contacts/activities/SpeedDialManageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimReceiver"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mRefreshHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/mediatek/contacts/activities/SpeedDialManageActivity;


# direct methods
.method public constructor <init>(Lcom/mediatek/contacts/activities/SpeedDialManageActivity;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 1371
    iput-object p1, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity$SimReceiver;->this$0:Lcom/mediatek/contacts/activities/SpeedDialManageActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1376
    new-instance v0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity$SimReceiver$1;

    invoke-direct {v0, p0}, Lcom/mediatek/contacts/activities/SpeedDialManageActivity$SimReceiver$1;-><init>(Lcom/mediatek/contacts/activities/SpeedDialManageActivity$SimReceiver;)V

    iput-object v0, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity$SimReceiver;->mRefreshHandler:Landroid/os/Handler;

    .line 1372
    iput-object p2, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity$SimReceiver;->mContext:Landroid/content/Context;

    .line 1373
    return-void
.end method

.method private refreshUi()V
    .locals 2

    .prologue
    .line 1351
    iget-object v0, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity$SimReceiver;->mRefreshHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1352
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1345
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1346
    .local v0, action:Ljava/lang/String;
    const-string v1, "SpeedDialManageActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SimReceiver.onReceive]action is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1347
    invoke-direct {p0}, Lcom/mediatek/contacts/activities/SpeedDialManageActivity$SimReceiver;->refreshUi()V

    .line 1348
    return-void
.end method

.method public register()V
    .locals 2

    .prologue
    .line 1358
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1360
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.android.contacts.ACTION_PHB_LOAD_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1361
    iget-object v1, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity$SimReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1362
    return-void
.end method

.method public unregister()V
    .locals 1

    .prologue
    .line 1368
    iget-object v0, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity$SimReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1369
    return-void
.end method
