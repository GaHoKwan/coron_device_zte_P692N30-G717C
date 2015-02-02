.class Lcom/mediatek/engineermode/hspainfo/HspaInfo$1;
.super Landroid/os/Handler;
.source "HspaInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/hspainfo/HspaInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/hspainfo/HspaInfo;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/hspainfo/HspaInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/mediatek/engineermode/hspainfo/HspaInfo$1;->this$0:Lcom/mediatek/engineermode/hspainfo/HspaInfo;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    .line 73
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v3, :cond_0

    .line 74
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 75
    .local v0, ar:Landroid/os/AsyncResult;
    if-eqz v0, :cond_1

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_1

    .line 76
    iget-object v2, p0, Lcom/mediatek/engineermode/hspainfo/HspaInfo$1;->this$0:Lcom/mediatek/engineermode/hspainfo/HspaInfo;

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/String;

    check-cast v1, [Ljava/lang/String;

    #calls: Lcom/mediatek/engineermode/hspainfo/HspaInfo;->handleQuery([Ljava/lang/String;)V
    invoke-static {v2, v1}, Lcom/mediatek/engineermode/hspainfo/HspaInfo;->access$000(Lcom/mediatek/engineermode/hspainfo/HspaInfo;[Ljava/lang/String;)V

    .line 81
    .end local v0           #ar:Landroid/os/AsyncResult;
    :cond_0
    :goto_0
    return-void

    .line 78
    .restart local v0       #ar:Landroid/os/AsyncResult;
    :cond_1
    iget-object v1, p0, Lcom/mediatek/engineermode/hspainfo/HspaInfo$1;->this$0:Lcom/mediatek/engineermode/hspainfo/HspaInfo;

    const-string v2, "Send AT command failed"

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    goto :goto_0
.end method
