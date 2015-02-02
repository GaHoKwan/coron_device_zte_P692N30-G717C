.class Lcom/amoi/amoitools/install/AmoiInstall$2;
.super Landroid/content/BroadcastReceiver;
.source "AmoiInstall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amoi/amoitools/install/AmoiInstall;->registerExternalStorageListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amoi/amoitools/install/AmoiInstall;


# direct methods
.method constructor <init>(Lcom/amoi/amoitools/install/AmoiInstall;)V
    .locals 0
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/amoi/amoitools/install/AmoiInstall$2;->this$0:Lcom/amoi/amoitools/install/AmoiInstall;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 112
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 115
    :cond_0
    iget-object v1, p0, Lcom/amoi/amoitools/install/AmoiInstall$2;->this$0:Lcom/amoi/amoitools/install/AmoiInstall;

    const/4 v2, 0x1

    #setter for: Lcom/amoi/amoitools/install/AmoiInstall;->mIsUnmountMedia:Z
    invoke-static {v1, v2}, Lcom/amoi/amoitools/install/AmoiInstall;->access$402(Lcom/amoi/amoitools/install/AmoiInstall;Z)Z

    .line 116
    iget-object v1, p0, Lcom/amoi/amoitools/install/AmoiInstall$2;->this$0:Lcom/amoi/amoitools/install/AmoiInstall;

    #getter for: Lcom/amoi/amoitools/install/AmoiInstall;->mAdapter:Lcom/amoi/amoitools/install/ApkListViewAdapter;
    invoke-static {v1}, Lcom/amoi/amoitools/install/AmoiInstall;->access$500(Lcom/amoi/amoitools/install/AmoiInstall;)Lcom/amoi/amoitools/install/ApkListViewAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amoi/amoitools/install/ApkListViewAdapter;->clearItem()V

    .line 117
    iget-object v1, p0, Lcom/amoi/amoitools/install/AmoiInstall$2;->this$0:Lcom/amoi/amoitools/install/AmoiInstall;

    #calls: Lcom/amoi/amoitools/install/AmoiInstall;->refreshView(Z)V
    invoke-static {v1, v3}, Lcom/amoi/amoitools/install/AmoiInstall;->access$100(Lcom/amoi/amoitools/install/AmoiInstall;Z)V

    .line 122
    :cond_1
    :goto_0
    return-void

    .line 118
    :cond_2
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 119
    iget-object v1, p0, Lcom/amoi/amoitools/install/AmoiInstall$2;->this$0:Lcom/amoi/amoitools/install/AmoiInstall;

    #setter for: Lcom/amoi/amoitools/install/AmoiInstall;->mIsUnmountMedia:Z
    invoke-static {v1, v3}, Lcom/amoi/amoitools/install/AmoiInstall;->access$402(Lcom/amoi/amoitools/install/AmoiInstall;Z)Z

    .line 120
    iget-object v1, p0, Lcom/amoi/amoitools/install/AmoiInstall$2;->this$0:Lcom/amoi/amoitools/install/AmoiInstall;

    #calls: Lcom/amoi/amoitools/install/AmoiInstall;->setListData()V
    invoke-static {v1}, Lcom/amoi/amoitools/install/AmoiInstall;->access$600(Lcom/amoi/amoitools/install/AmoiInstall;)V

    goto :goto_0
.end method
