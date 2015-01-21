.class Lcom/mediatek/settings/plugin/DataConnectionSettings$2;
.super Landroid/os/Handler;
.source "DataConnectionSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/settings/plugin/DataConnectionSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/plugin/DataConnectionSettings;


# direct methods
.method constructor <init>(Lcom/mediatek/settings/plugin/DataConnectionSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/mediatek/settings/plugin/DataConnectionSettings$2;->this$0:Lcom/mediatek/settings/plugin/DataConnectionSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 81
    const/16 v0, 0x3e8

    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_0

    .line 82
    const-string v0, "DataConnectionSettings"

    const-string v1, "reveive time out msg..."

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v0, p0, Lcom/mediatek/settings/plugin/DataConnectionSettings$2;->this$0:Lcom/mediatek/settings/plugin/DataConnectionSettings;

    const/4 v1, 0x0

    #setter for: Lcom/mediatek/settings/plugin/DataConnectionSettings;->mIsDataConnectActing:Z
    invoke-static {v0, v1}, Lcom/mediatek/settings/plugin/DataConnectionSettings;->access$002(Lcom/mediatek/settings/plugin/DataConnectionSettings;Z)Z

    .line 84
    iget-object v0, p0, Lcom/mediatek/settings/plugin/DataConnectionSettings$2;->this$0:Lcom/mediatek/settings/plugin/DataConnectionSettings;

    #calls: Lcom/mediatek/settings/plugin/DataConnectionSettings;->hideProgressDlg()V
    invoke-static {v0}, Lcom/mediatek/settings/plugin/DataConnectionSettings;->access$200(Lcom/mediatek/settings/plugin/DataConnectionSettings;)V

    .line 85
    iget-object v0, p0, Lcom/mediatek/settings/plugin/DataConnectionSettings$2;->this$0:Lcom/mediatek/settings/plugin/DataConnectionSettings;

    #calls: Lcom/mediatek/settings/plugin/DataConnectionSettings;->updateScreen()V
    invoke-static {v0}, Lcom/mediatek/settings/plugin/DataConnectionSettings;->access$300(Lcom/mediatek/settings/plugin/DataConnectionSettings;)V

    .line 87
    :cond_0
    return-void
.end method
