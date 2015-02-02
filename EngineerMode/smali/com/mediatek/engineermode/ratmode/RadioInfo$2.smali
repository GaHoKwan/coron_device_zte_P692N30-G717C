.class Lcom/mediatek/engineermode/ratmode/RadioInfo$2;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


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
    .line 168
    iput-object p1, p0, Lcom/mediatek/engineermode/ratmode/RadioInfo$2;->this$0:Lcom/mediatek/engineermode/ratmode/RadioInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
    .parameter "parent"
    .parameter "v"
    .parameter "pos"
    .parameter "id"

    .prologue
    const v8, 0x7f080469

    const/4 v7, -0x1

    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 170
    const-string v1, "EM/RATMode_RadioInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/engineermode/ratmode/RadioInfo$2;->this$0:Lcom/mediatek/engineermode/ratmode/RadioInfo;

    #getter for: Lcom/mediatek/engineermode/ratmode/RadioInfo;->mCurrentSelected:I
    invoke-static {v3}, Lcom/mediatek/engineermode/ratmode/RadioInfo;->access$000(Lcom/mediatek/engineermode/ratmode/RadioInfo;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", pos: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v1, p0, Lcom/mediatek/engineermode/ratmode/RadioInfo$2;->this$0:Lcom/mediatek/engineermode/ratmode/RadioInfo;

    #getter for: Lcom/mediatek/engineermode/ratmode/RadioInfo;->mCurrentSelected:I
    invoke-static {v1}, Lcom/mediatek/engineermode/ratmode/RadioInfo;->access$000(Lcom/mediatek/engineermode/ratmode/RadioInfo;)I

    move-result v1

    if-ne v1, p3, :cond_0

    .line 249
    :goto_0
    return-void

    .line 174
    :cond_0
    iget-object v1, p0, Lcom/mediatek/engineermode/ratmode/RadioInfo$2;->this$0:Lcom/mediatek/engineermode/ratmode/RadioInfo;

    #setter for: Lcom/mediatek/engineermode/ratmode/RadioInfo;->mCurrentSelected:I
    invoke-static {v1, p3}, Lcom/mediatek/engineermode/ratmode/RadioInfo;->access$002(Lcom/mediatek/engineermode/ratmode/RadioInfo;I)I

    .line 176
    iget-object v1, p0, Lcom/mediatek/engineermode/ratmode/RadioInfo$2;->this$0:Lcom/mediatek/engineermode/ratmode/RadioInfo;

    #getter for: Lcom/mediatek/engineermode/ratmode/RadioInfo;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/mediatek/engineermode/ratmode/RadioInfo;->access$300(Lcom/mediatek/engineermode/ratmode/RadioInfo;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x3e9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 178
    .local v0, msg:Landroid/os/Message;
    packed-switch p3, :pswitch_data_0

    goto :goto_0

    .line 180
    :pswitch_0
    iget-object v1, p0, Lcom/mediatek/engineermode/ratmode/RadioInfo$2;->this$0:Lcom/mediatek/engineermode/ratmode/RadioInfo;

    #getter for: Lcom/mediatek/engineermode/ratmode/RadioInfo;->mModeType:I
    invoke-static {v1}, Lcom/mediatek/engineermode/ratmode/RadioInfo;->access$400(Lcom/mediatek/engineermode/ratmode/RadioInfo;)I

    move-result v1

    if-ne v1, v7, :cond_1

    .line 181
    iget-object v1, p0, Lcom/mediatek/engineermode/ratmode/RadioInfo$2;->this$0:Lcom/mediatek/engineermode/ratmode/RadioInfo;

    #getter for: Lcom/mediatek/engineermode/ratmode/RadioInfo;->mPreferredNetworkType:Landroid/widget/Spinner;
    invoke-static {v1}, Lcom/mediatek/engineermode/ratmode/RadioInfo;->access$100(Lcom/mediatek/engineermode/ratmode/RadioInfo;)Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {v1, v6, v4}, Landroid/widget/AbsSpinner;->setSelection(IZ)V

    .line 182
    iget-object v1, p0, Lcom/mediatek/engineermode/ratmode/RadioInfo$2;->this$0:Lcom/mediatek/engineermode/ratmode/RadioInfo;

    invoke-static {v1, v8, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 184
    :cond_1
    const-string v1, "EM/RATMode_RadioInfo"

    const-string v2, "GSM/WCDMA(auto) 3"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v1, p0, Lcom/mediatek/engineermode/ratmode/RadioInfo$2;->this$0:Lcom/mediatek/engineermode/ratmode/RadioInfo;

    #calls: Lcom/mediatek/engineermode/ratmode/RadioInfo;->writePreferred(I)V
    invoke-static {v1, v6}, Lcom/mediatek/engineermode/ratmode/RadioInfo;->access$500(Lcom/mediatek/engineermode/ratmode/RadioInfo;I)V

    .line 187
    iget-object v1, p0, Lcom/mediatek/engineermode/ratmode/RadioInfo$2;->this$0:Lcom/mediatek/engineermode/ratmode/RadioInfo;

    #getter for: Lcom/mediatek/engineermode/ratmode/RadioInfo;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    invoke-static {v1}, Lcom/mediatek/engineermode/ratmode/RadioInfo;->access$200(Lcom/mediatek/engineermode/ratmode/RadioInfo;)Lcom/android/internal/telephony/gemini/GeminiPhone;

    move-result-object v1

    invoke-virtual {v1, v6, v0, v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setPreferredNetworkTypeGemini(ILandroid/os/Message;I)V

    goto :goto_0

    .line 194
    :pswitch_1
    const-string v1, "EM/RATMode_RadioInfo"

    const-string v2, "WCDMA Preferred 0"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-object v1, p0, Lcom/mediatek/engineermode/ratmode/RadioInfo$2;->this$0:Lcom/mediatek/engineermode/ratmode/RadioInfo;

    #getter for: Lcom/mediatek/engineermode/ratmode/RadioInfo;->mModeType:I
    invoke-static {v1}, Lcom/mediatek/engineermode/ratmode/RadioInfo;->access$400(Lcom/mediatek/engineermode/ratmode/RadioInfo;)I

    move-result v1

    if-ne v1, v7, :cond_2

    .line 197
    iget-object v1, p0, Lcom/mediatek/engineermode/ratmode/RadioInfo$2;->this$0:Lcom/mediatek/engineermode/ratmode/RadioInfo;

    #getter for: Lcom/mediatek/engineermode/ratmode/RadioInfo;->mPreferredNetworkType:Landroid/widget/Spinner;
    invoke-static {v1}, Lcom/mediatek/engineermode/ratmode/RadioInfo;->access$100(Lcom/mediatek/engineermode/ratmode/RadioInfo;)Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {v1, v6, v4}, Landroid/widget/AbsSpinner;->setSelection(IZ)V

    .line 199
    iget-object v1, p0, Lcom/mediatek/engineermode/ratmode/RadioInfo$2;->this$0:Lcom/mediatek/engineermode/ratmode/RadioInfo;

    invoke-static {v1, v8, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 203
    :cond_2
    iget-object v1, p0, Lcom/mediatek/engineermode/ratmode/RadioInfo$2;->this$0:Lcom/mediatek/engineermode/ratmode/RadioInfo;

    #calls: Lcom/mediatek/engineermode/ratmode/RadioInfo;->writePreferred(I)V
    invoke-static {v1, v5}, Lcom/mediatek/engineermode/ratmode/RadioInfo;->access$500(Lcom/mediatek/engineermode/ratmode/RadioInfo;I)V

    .line 205
    iget-object v1, p0, Lcom/mediatek/engineermode/ratmode/RadioInfo$2;->this$0:Lcom/mediatek/engineermode/ratmode/RadioInfo;

    #getter for: Lcom/mediatek/engineermode/ratmode/RadioInfo;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    invoke-static {v1}, Lcom/mediatek/engineermode/ratmode/RadioInfo;->access$200(Lcom/mediatek/engineermode/ratmode/RadioInfo;)Lcom/android/internal/telephony/gemini/GeminiPhone;

    move-result-object v1

    invoke-virtual {v1, v5, v0, v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setPreferredNetworkTypeGemini(ILandroid/os/Message;I)V

    goto :goto_0

    .line 222
    :pswitch_2
    iget-object v1, p0, Lcom/mediatek/engineermode/ratmode/RadioInfo$2;->this$0:Lcom/mediatek/engineermode/ratmode/RadioInfo;

    #getter for: Lcom/mediatek/engineermode/ratmode/RadioInfo;->mModeType:I
    invoke-static {v1}, Lcom/mediatek/engineermode/ratmode/RadioInfo;->access$400(Lcom/mediatek/engineermode/ratmode/RadioInfo;)I

    move-result v1

    if-ne v1, v7, :cond_3

    .line 223
    iget-object v1, p0, Lcom/mediatek/engineermode/ratmode/RadioInfo$2;->this$0:Lcom/mediatek/engineermode/ratmode/RadioInfo;

    #getter for: Lcom/mediatek/engineermode/ratmode/RadioInfo;->mPreferredNetworkType:Landroid/widget/Spinner;
    invoke-static {v1}, Lcom/mediatek/engineermode/ratmode/RadioInfo;->access$100(Lcom/mediatek/engineermode/ratmode/RadioInfo;)Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {v1, v6, v4}, Landroid/widget/AbsSpinner;->setSelection(IZ)V

    .line 224
    iget-object v1, p0, Lcom/mediatek/engineermode/ratmode/RadioInfo$2;->this$0:Lcom/mediatek/engineermode/ratmode/RadioInfo;

    invoke-static {v1, v8, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 226
    :cond_3
    const-string v1, "EM/RATMode_RadioInfo"

    const-string v2, "WCDMA only 2"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object v1, p0, Lcom/mediatek/engineermode/ratmode/RadioInfo$2;->this$0:Lcom/mediatek/engineermode/ratmode/RadioInfo;

    const/4 v2, 0x2

    #calls: Lcom/mediatek/engineermode/ratmode/RadioInfo;->writePreferred(I)V
    invoke-static {v1, v2}, Lcom/mediatek/engineermode/ratmode/RadioInfo;->access$500(Lcom/mediatek/engineermode/ratmode/RadioInfo;I)V

    .line 229
    iget-object v1, p0, Lcom/mediatek/engineermode/ratmode/RadioInfo$2;->this$0:Lcom/mediatek/engineermode/ratmode/RadioInfo;

    #getter for: Lcom/mediatek/engineermode/ratmode/RadioInfo;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    invoke-static {v1}, Lcom/mediatek/engineermode/ratmode/RadioInfo;->access$200(Lcom/mediatek/engineermode/ratmode/RadioInfo;)Lcom/android/internal/telephony/gemini/GeminiPhone;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0, v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setPreferredNetworkTypeGemini(ILandroid/os/Message;I)V

    goto/16 :goto_0

    .line 236
    :pswitch_3
    iget-object v1, p0, Lcom/mediatek/engineermode/ratmode/RadioInfo$2;->this$0:Lcom/mediatek/engineermode/ratmode/RadioInfo;

    #calls: Lcom/mediatek/engineermode/ratmode/RadioInfo;->writePreferred(I)V
    invoke-static {v1, v4}, Lcom/mediatek/engineermode/ratmode/RadioInfo;->access$500(Lcom/mediatek/engineermode/ratmode/RadioInfo;I)V

    .line 238
    iget-object v1, p0, Lcom/mediatek/engineermode/ratmode/RadioInfo$2;->this$0:Lcom/mediatek/engineermode/ratmode/RadioInfo;

    #getter for: Lcom/mediatek/engineermode/ratmode/RadioInfo;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    invoke-static {v1}, Lcom/mediatek/engineermode/ratmode/RadioInfo;->access$200(Lcom/mediatek/engineermode/ratmode/RadioInfo;)Lcom/android/internal/telephony/gemini/GeminiPhone;

    move-result-object v1

    invoke-virtual {v1, v4, v0, v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setPreferredNetworkTypeGemini(ILandroid/os/Message;I)V

    goto/16 :goto_0

    .line 244
    :pswitch_4
    iget-object v1, p0, Lcom/mediatek/engineermode/ratmode/RadioInfo$2;->this$0:Lcom/mediatek/engineermode/ratmode/RadioInfo;

    const/4 v2, 0x4

    #calls: Lcom/mediatek/engineermode/ratmode/RadioInfo;->writePreferred(I)V
    invoke-static {v1, v2}, Lcom/mediatek/engineermode/ratmode/RadioInfo;->access$500(Lcom/mediatek/engineermode/ratmode/RadioInfo;I)V

    goto/16 :goto_0

    .line 178
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 253
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const-string v0, "EM/RATMode_RadioInfo"

    const-string v1, "onNothingSelected"

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    return-void
.end method
