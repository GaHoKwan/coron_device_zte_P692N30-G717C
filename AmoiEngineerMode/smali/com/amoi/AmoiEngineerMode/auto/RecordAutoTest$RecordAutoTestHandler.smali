.class public Lcom/amoi/AmoiEngineerMode/auto/RecordAutoTest$RecordAutoTestHandler;
.super Lcom/amoi/AmoiEngineerMode/base/RecordBase$RecordHandler;
.source "RecordAutoTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amoi/AmoiEngineerMode/auto/RecordAutoTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "RecordAutoTestHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amoi/AmoiEngineerMode/auto/RecordAutoTest;


# direct methods
.method protected constructor <init>(Lcom/amoi/AmoiEngineerMode/auto/RecordAutoTest;)V
    .locals 0
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/amoi/AmoiEngineerMode/auto/RecordAutoTest$RecordAutoTestHandler;->this$0:Lcom/amoi/AmoiEngineerMode/auto/RecordAutoTest;

    invoke-direct {p0, p1}, Lcom/amoi/AmoiEngineerMode/base/RecordBase$RecordHandler;-><init>(Lcom/amoi/AmoiEngineerMode/base/RecordBase;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 85
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 97
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/amoi/AmoiEngineerMode/base/RecordBase$RecordHandler;->handleMessage(Landroid/os/Message;)V

    .line 98
    return-void

    .line 87
    :pswitch_0
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/auto/RecordAutoTest$RecordAutoTestHandler;->this$0:Lcom/amoi/AmoiEngineerMode/auto/RecordAutoTest;

    #getter for: Lcom/amoi/AmoiEngineerMode/base/RecordBase;->seconds:I
    invoke-static {v0}, Lcom/amoi/AmoiEngineerMode/auto/RecordAutoTest;->access$000(Lcom/amoi/AmoiEngineerMode/auto/RecordAutoTest;)I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/auto/RecordAutoTest$RecordAutoTestHandler;->this$0:Lcom/amoi/AmoiEngineerMode/auto/RecordAutoTest;

    #getter for: Lcom/amoi/AmoiEngineerMode/base/RecordBase;->player:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/amoi/AmoiEngineerMode/auto/RecordAutoTest;->access$100(Lcom/amoi/AmoiEngineerMode/auto/RecordAutoTest;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 89
    const-string v0, "RecordAutoTest"

    const-string v1, "auto play record."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/auto/RecordAutoTest$RecordAutoTestHandler;->this$0:Lcom/amoi/AmoiEngineerMode/auto/RecordAutoTest;

    #calls: Lcom/amoi/AmoiEngineerMode/auto/RecordAutoTest;->playback()V
    invoke-static {v0}, Lcom/amoi/AmoiEngineerMode/auto/RecordAutoTest;->access$200(Lcom/amoi/AmoiEngineerMode/auto/RecordAutoTest;)V

    .line 92
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/auto/RecordAutoTest$RecordAutoTestHandler;->this$0:Lcom/amoi/AmoiEngineerMode/auto/RecordAutoTest;

    #getter for: Lcom/amoi/AmoiEngineerMode/auto/RecordAutoTest;->retestButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/amoi/AmoiEngineerMode/auto/RecordAutoTest;->access$300(Lcom/amoi/AmoiEngineerMode/auto/RecordAutoTest;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 85
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
