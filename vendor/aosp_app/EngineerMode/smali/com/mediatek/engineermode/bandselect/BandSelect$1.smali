.class Lcom/mediatek/engineermode/bandselect/BandSelect$1;
.super Landroid/os/Handler;
.source "BandSelect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/bandselect/BandSelect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/bandselect/BandSelect;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/bandselect/BandSelect;)V
    .locals 0
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/mediatek/engineermode/bandselect/BandSelect$1;->this$0:Lcom/mediatek/engineermode/bandselect/BandSelect;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/16 v4, 0x65

    const/16 v3, 0x64

    const/4 v2, 0x0

    .line 88
    iget-object v1, p0, Lcom/mediatek/engineermode/bandselect/BandSelect$1;->this$0:Lcom/mediatek/engineermode/bandselect/BandSelect;

    #getter for: Lcom/mediatek/engineermode/bandselect/BandSelect;->mIsThisAlive:Z
    invoke-static {v1}, Lcom/mediatek/engineermode/bandselect/BandSelect;->access$000(Lcom/mediatek/engineermode/bandselect/BandSelect;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 129
    :goto_0
    return-void

    .line 92
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 94
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 95
    .local v0, asyncResult:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_1

    .line 97
    iget-object v1, p0, Lcom/mediatek/engineermode/bandselect/BandSelect$1;->this$0:Lcom/mediatek/engineermode/bandselect/BandSelect;

    #calls: Lcom/mediatek/engineermode/bandselect/BandSelect;->setMode(Landroid/os/AsyncResult;I)V
    invoke-static {v1, v0, v3}, Lcom/mediatek/engineermode/bandselect/BandSelect;->access$100(Lcom/mediatek/engineermode/bandselect/BandSelect;Landroid/os/AsyncResult;I)V

    goto :goto_0

    .line 99
    :cond_1
    iget-object v1, p0, Lcom/mediatek/engineermode/bandselect/BandSelect$1;->this$0:Lcom/mediatek/engineermode/bandselect/BandSelect;

    invoke-virtual {v1, v3}, Landroid/app/Activity;->showDialog(I)V

    .line 100
    iget-object v1, p0, Lcom/mediatek/engineermode/bandselect/BandSelect$1;->this$0:Lcom/mediatek/engineermode/bandselect/BandSelect;

    #calls: Lcom/mediatek/engineermode/bandselect/BandSelect;->setSupportedMode(II)V
    invoke-static {v1, v2, v2}, Lcom/mediatek/engineermode/bandselect/BandSelect;->access$200(Lcom/mediatek/engineermode/bandselect/BandSelect;II)V

    goto :goto_0

    .line 105
    .end local v0           #asyncResult:Landroid/os/AsyncResult;
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 106
    .restart local v0       #asyncResult:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_2

    .line 107
    iget-object v1, p0, Lcom/mediatek/engineermode/bandselect/BandSelect$1;->this$0:Lcom/mediatek/engineermode/bandselect/BandSelect;

    #calls: Lcom/mediatek/engineermode/bandselect/BandSelect;->setMode(Landroid/os/AsyncResult;I)V
    invoke-static {v1, v0, v4}, Lcom/mediatek/engineermode/bandselect/BandSelect;->access$100(Lcom/mediatek/engineermode/bandselect/BandSelect;Landroid/os/AsyncResult;I)V

    goto :goto_0

    .line 111
    :cond_2
    iget-object v1, p0, Lcom/mediatek/engineermode/bandselect/BandSelect$1;->this$0:Lcom/mediatek/engineermode/bandselect/BandSelect;

    invoke-virtual {v1, v3}, Landroid/app/Activity;->removeDialog(I)V

    .line 112
    iget-object v1, p0, Lcom/mediatek/engineermode/bandselect/BandSelect$1;->this$0:Lcom/mediatek/engineermode/bandselect/BandSelect;

    invoke-virtual {v1, v4}, Landroid/app/Activity;->showDialog(I)V

    .line 113
    iget-object v1, p0, Lcom/mediatek/engineermode/bandselect/BandSelect$1;->this$0:Lcom/mediatek/engineermode/bandselect/BandSelect;

    #calls: Lcom/mediatek/engineermode/bandselect/BandSelect;->setCurrentMode(II)V
    invoke-static {v1, v2, v2}, Lcom/mediatek/engineermode/bandselect/BandSelect;->access$300(Lcom/mediatek/engineermode/bandselect/BandSelect;II)V

    goto :goto_0

    .line 117
    .end local v0           #asyncResult:Landroid/os/AsyncResult;
    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 118
    .restart local v0       #asyncResult:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_3

    .line 120
    iget-object v1, p0, Lcom/mediatek/engineermode/bandselect/BandSelect$1;->this$0:Lcom/mediatek/engineermode/bandselect/BandSelect;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 122
    :cond_3
    iget-object v1, p0, Lcom/mediatek/engineermode/bandselect/BandSelect$1;->this$0:Lcom/mediatek/engineermode/bandselect/BandSelect;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 92
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x65 -> :sswitch_1
        0x6e -> :sswitch_2
    .end sparse-switch
.end method
