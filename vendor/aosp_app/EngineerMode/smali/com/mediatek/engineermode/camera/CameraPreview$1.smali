.class Lcom/mediatek/engineermode/camera/CameraPreview$1;
.super Landroid/os/Handler;
.source "CameraPreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/camera/CameraPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/camera/CameraPreview;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/camera/CameraPreview;)V
    .locals 0
    .parameter

    .prologue
    .line 171
    iput-object p1, p0, Lcom/mediatek/engineermode/camera/CameraPreview$1;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 174
    iget-object v1, p0, Lcom/mediatek/engineermode/camera/CameraPreview$1;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #calls: Lcom/mediatek/engineermode/camera/CameraPreview;->judgeSdcard()Z
    invoke-static {v1}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$400(Lcom/mediatek/engineermode/camera/CameraPreview;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 204
    :goto_0
    return-void

    .line 177
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 179
    :pswitch_1
    new-instance v0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode1Thread;

    iget-object v1, p0, Lcom/mediatek/engineermode/camera/CameraPreview$1;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    invoke-direct {v0, v1}, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode1Thread;-><init>(Lcom/mediatek/engineermode/camera/CameraPreview;)V

    .line 180
    .local v0, mode1Thread:Lcom/mediatek/engineermode/camera/CameraPreview$AFMode1Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 183
    .end local v0           #mode1Thread:Lcom/mediatek/engineermode/camera/CameraPreview$AFMode1Thread;
    :pswitch_2
    iget-object v1, p0, Lcom/mediatek/engineermode/camera/CameraPreview$1;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    new-instance v2, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode3Thread;

    iget-object v3, p0, Lcom/mediatek/engineermode/camera/CameraPreview$1;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    invoke-direct {v2, v3}, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode3Thread;-><init>(Lcom/mediatek/engineermode/camera/CameraPreview;)V

    #setter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mMode3Thread:Lcom/mediatek/engineermode/camera/CameraPreview$AFMode3Thread;
    invoke-static {v1, v2}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$502(Lcom/mediatek/engineermode/camera/CameraPreview;Lcom/mediatek/engineermode/camera/CameraPreview$AFMode3Thread;)Lcom/mediatek/engineermode/camera/CameraPreview$AFMode3Thread;

    .line 184
    iget-object v1, p0, Lcom/mediatek/engineermode/camera/CameraPreview$1;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #getter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mMode3Thread:Lcom/mediatek/engineermode/camera/CameraPreview$AFMode3Thread;
    invoke-static {v1}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$500(Lcom/mediatek/engineermode/camera/CameraPreview;)Lcom/mediatek/engineermode/camera/CameraPreview$AFMode3Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 187
    :pswitch_3
    iget-object v1, p0, Lcom/mediatek/engineermode/camera/CameraPreview$1;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    new-instance v2, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode4Thread;

    iget-object v3, p0, Lcom/mediatek/engineermode/camera/CameraPreview$1;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    invoke-direct {v2, v3}, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode4Thread;-><init>(Lcom/mediatek/engineermode/camera/CameraPreview;)V

    #setter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mMode4Thread:Lcom/mediatek/engineermode/camera/CameraPreview$AFMode4Thread;
    invoke-static {v1, v2}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$602(Lcom/mediatek/engineermode/camera/CameraPreview;Lcom/mediatek/engineermode/camera/CameraPreview$AFMode4Thread;)Lcom/mediatek/engineermode/camera/CameraPreview$AFMode4Thread;

    .line 188
    iget-object v1, p0, Lcom/mediatek/engineermode/camera/CameraPreview$1;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #getter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mMode4Thread:Lcom/mediatek/engineermode/camera/CameraPreview$AFMode4Thread;
    invoke-static {v1}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$600(Lcom/mediatek/engineermode/camera/CameraPreview;)Lcom/mediatek/engineermode/camera/CameraPreview$AFMode4Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 191
    :pswitch_4
    iget-object v1, p0, Lcom/mediatek/engineermode/camera/CameraPreview$1;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    new-instance v2, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode5Thread;

    iget-object v3, p0, Lcom/mediatek/engineermode/camera/CameraPreview$1;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    invoke-direct {v2, v3}, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode5Thread;-><init>(Lcom/mediatek/engineermode/camera/CameraPreview;)V

    #setter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mMode5Thread:Lcom/mediatek/engineermode/camera/CameraPreview$AFMode5Thread;
    invoke-static {v1, v2}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$702(Lcom/mediatek/engineermode/camera/CameraPreview;Lcom/mediatek/engineermode/camera/CameraPreview$AFMode5Thread;)Lcom/mediatek/engineermode/camera/CameraPreview$AFMode5Thread;

    .line 192
    iget-object v1, p0, Lcom/mediatek/engineermode/camera/CameraPreview$1;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #getter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mMode5Thread:Lcom/mediatek/engineermode/camera/CameraPreview$AFMode5Thread;
    invoke-static {v1}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$700(Lcom/mediatek/engineermode/camera/CameraPreview;)Lcom/mediatek/engineermode/camera/CameraPreview$AFMode5Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 195
    :pswitch_5
    iget-object v1, p0, Lcom/mediatek/engineermode/camera/CameraPreview$1;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #calls: Lcom/mediatek/engineermode/camera/CameraPreview;->onHandleShotNum()V
    invoke-static {v1}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$800(Lcom/mediatek/engineermode/camera/CameraPreview;)V

    goto :goto_0

    .line 198
    :pswitch_6
    iget-object v1, p0, Lcom/mediatek/engineermode/camera/CameraPreview$1;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #getter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mShotNum:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$900(Lcom/mediatek/engineermode/camera/CameraPreview;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    iget-object v1, p0, Lcom/mediatek/engineermode/camera/CameraPreview$1;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #getter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mShotNum:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$900(Lcom/mediatek/engineermode/camera/CameraPreview;)Landroid/widget/TextView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 177
    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
