.class Lcom/mediatek/settings/plugin/DataConnectionEnabler$3;
.super Landroid/os/Handler;
.source "DataConnectionEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/settings/plugin/DataConnectionEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/plugin/DataConnectionEnabler;


# direct methods
.method constructor <init>(Lcom/mediatek/settings/plugin/DataConnectionEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/mediatek/settings/plugin/DataConnectionEnabler$3;->this$0:Lcom/mediatek/settings/plugin/DataConnectionEnabler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 94
    const/16 v0, 0x3e8

    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_0

    .line 95
    const-string v0, "DataConnectionEnabler"

    const-string v1, "reveive time out msg..."

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v0, p0, Lcom/mediatek/settings/plugin/DataConnectionEnabler$3;->this$0:Lcom/mediatek/settings/plugin/DataConnectionEnabler;

    const/4 v1, 0x0

    #setter for: Lcom/mediatek/settings/plugin/DataConnectionEnabler;->mIsDataConnectActing:Z
    invoke-static {v0, v1}, Lcom/mediatek/settings/plugin/DataConnectionEnabler;->access$002(Lcom/mediatek/settings/plugin/DataConnectionEnabler;Z)Z

    .line 97
    iget-object v0, p0, Lcom/mediatek/settings/plugin/DataConnectionEnabler$3;->this$0:Lcom/mediatek/settings/plugin/DataConnectionEnabler;

    #calls: Lcom/mediatek/settings/plugin/DataConnectionEnabler;->updateSwitcherState()V
    invoke-static {v0}, Lcom/mediatek/settings/plugin/DataConnectionEnabler;->access$200(Lcom/mediatek/settings/plugin/DataConnectionEnabler;)V

    .line 99
    :cond_0
    return-void
.end method
