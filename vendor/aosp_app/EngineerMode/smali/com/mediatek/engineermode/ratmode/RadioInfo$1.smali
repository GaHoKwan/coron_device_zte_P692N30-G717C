.class Lcom/mediatek/engineermode/ratmode/RadioInfo$1;
.super Landroid/os/Handler;
.source "RadioInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/ratmode/RadioInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/ratmode/RadioInfo;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/ratmode/RadioInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, Lcom/mediatek/engineermode/ratmode/RadioInfo$1;->this$0:Lcom/mediatek/engineermode/ratmode/RadioInfo;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    .line 119
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 121
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 122
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_1

    .line 123
    const/4 v1, 0x4

    .line 124
    .local v1, pos:I
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    check-cast v3, [I

    aget v2, v3, v5

    .line 125
    .local v2, type:I
    const-string v3, "EM/RATMode_RadioInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Get Preferred Type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    packed-switch v2, :pswitch_data_1

    goto :goto_0

    .line 128
    :pswitch_1
    const/4 v1, 0x1

    .line 142
    :goto_1
    iget-object v3, p0, Lcom/mediatek/engineermode/ratmode/RadioInfo$1;->this$0:Lcom/mediatek/engineermode/ratmode/RadioInfo;

    #setter for: Lcom/mediatek/engineermode/ratmode/RadioInfo;->mCurrentSelected:I
    invoke-static {v3, v1}, Lcom/mediatek/engineermode/ratmode/RadioInfo;->access$002(Lcom/mediatek/engineermode/ratmode/RadioInfo;I)I

    .line 143
    iget-object v3, p0, Lcom/mediatek/engineermode/ratmode/RadioInfo$1;->this$0:Lcom/mediatek/engineermode/ratmode/RadioInfo;

    #getter for: Lcom/mediatek/engineermode/ratmode/RadioInfo;->mPreferredNetworkType:Landroid/widget/Spinner;
    invoke-static {v3}, Lcom/mediatek/engineermode/ratmode/RadioInfo;->access$100(Lcom/mediatek/engineermode/ratmode/RadioInfo;)Landroid/widget/Spinner;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v1, v4}, Landroid/widget/AbsSpinner;->setSelection(IZ)V

    goto :goto_0

    .line 131
    :pswitch_2
    const/4 v1, 0x3

    .line 132
    goto :goto_1

    .line 134
    :pswitch_3
    const/4 v1, 0x2

    .line 135
    goto :goto_1

    .line 137
    :pswitch_4
    const/4 v1, 0x0

    .line 138
    goto :goto_1

    .line 145
    .end local v1           #pos:I
    .end local v2           #type:I
    :cond_1
    iget-object v3, p0, Lcom/mediatek/engineermode/ratmode/RadioInfo$1;->this$0:Lcom/mediatek/engineermode/ratmode/RadioInfo;

    const v4, 0x7f080468

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 150
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 151
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_0

    .line 153
    iget-object v3, p0, Lcom/mediatek/engineermode/ratmode/RadioInfo$1;->this$0:Lcom/mediatek/engineermode/ratmode/RadioInfo;

    #getter for: Lcom/mediatek/engineermode/ratmode/RadioInfo;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    invoke-static {v3}, Lcom/mediatek/engineermode/ratmode/RadioInfo;->access$200(Lcom/mediatek/engineermode/ratmode/RadioInfo;)Lcom/android/internal/telephony/gemini/GeminiPhone;

    move-result-object v3

    const/16 v4, 0x3e8

    invoke-virtual {p0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPreferredNetworkTypeGemini(Landroid/os/Message;I)V

    goto :goto_0

    .line 119
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_5
    .end packed-switch

    .line 126
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
