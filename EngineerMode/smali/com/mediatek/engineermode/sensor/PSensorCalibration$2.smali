.class Lcom/mediatek/engineermode/sensor/PSensorCalibration$2;
.super Landroid/os/Handler;
.source "PSensorCalibration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/engineermode/sensor/PSensorCalibration;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/sensor/PSensorCalibration;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/sensor/PSensorCalibration;)V
    .locals 0
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lcom/mediatek/engineermode/sensor/PSensorCalibration$2;->this$0:Lcom/mediatek/engineermode/sensor/PSensorCalibration;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v6, 0x1

    .line 141
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 193
    :goto_0
    return-void

    .line 143
    :pswitch_0
    const-string v0, "PSensorCalibration"

    const-string v1, "set success"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/PSensorCalibration$2;->this$0:Lcom/mediatek/engineermode/sensor/PSensorCalibration;

    #calls: Lcom/mediatek/engineermode/sensor/PSensorCalibration;->enableButtons(Z)V
    invoke-static {v0, v6}, Lcom/mediatek/engineermode/sensor/PSensorCalibration;->access$000(Lcom/mediatek/engineermode/sensor/PSensorCalibration;Z)V

    .line 145
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/PSensorCalibration$2;->this$0:Lcom/mediatek/engineermode/sensor/PSensorCalibration;

    #getter for: Lcom/mediatek/engineermode/sensor/PSensorCalibration;->mMinValue:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/mediatek/engineermode/sensor/PSensorCalibration;->access$200(Lcom/mediatek/engineermode/sensor/PSensorCalibration;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/engineermode/sensor/PSensorCalibration$2;->this$0:Lcom/mediatek/engineermode/sensor/PSensorCalibration;

    #getter for: Lcom/mediatek/engineermode/sensor/PSensorCalibration;->mMin:I
    invoke-static {v1}, Lcom/mediatek/engineermode/sensor/PSensorCalibration;->access$100(Lcom/mediatek/engineermode/sensor/PSensorCalibration;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/PSensorCalibration$2;->this$0:Lcom/mediatek/engineermode/sensor/PSensorCalibration;

    #getter for: Lcom/mediatek/engineermode/sensor/PSensorCalibration;->mMaxValue:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/mediatek/engineermode/sensor/PSensorCalibration;->access$400(Lcom/mediatek/engineermode/sensor/PSensorCalibration;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/engineermode/sensor/PSensorCalibration$2;->this$0:Lcom/mediatek/engineermode/sensor/PSensorCalibration;

    #getter for: Lcom/mediatek/engineermode/sensor/PSensorCalibration;->mMax:I
    invoke-static {v1}, Lcom/mediatek/engineermode/sensor/PSensorCalibration;->access$300(Lcom/mediatek/engineermode/sensor/PSensorCalibration;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/PSensorCalibration$2;->this$0:Lcom/mediatek/engineermode/sensor/PSensorCalibration;

    const-string v1, "Calculate succeed"

    #calls: Lcom/mediatek/engineermode/sensor/PSensorCalibration;->showToast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/engineermode/sensor/PSensorCalibration;->access$500(Lcom/mediatek/engineermode/sensor/PSensorCalibration;Ljava/lang/String;)V

    goto :goto_0

    .line 150
    :pswitch_1
    const-string v0, "PSensorCalibration"

    const-string v1, "set fail"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/PSensorCalibration$2;->this$0:Lcom/mediatek/engineermode/sensor/PSensorCalibration;

    #calls: Lcom/mediatek/engineermode/sensor/PSensorCalibration;->enableButtons(Z)V
    invoke-static {v0, v6}, Lcom/mediatek/engineermode/sensor/PSensorCalibration;->access$000(Lcom/mediatek/engineermode/sensor/PSensorCalibration;Z)V

    .line 152
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/PSensorCalibration$2;->this$0:Lcom/mediatek/engineermode/sensor/PSensorCalibration;

    const-string v1, "Calculate failed"

    #calls: Lcom/mediatek/engineermode/sensor/PSensorCalibration;->showToast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/engineermode/sensor/PSensorCalibration;->access$500(Lcom/mediatek/engineermode/sensor/PSensorCalibration;Ljava/lang/String;)V

    goto :goto_0

    .line 155
    :pswitch_2
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/PSensorCalibration$2;->this$0:Lcom/mediatek/engineermode/sensor/PSensorCalibration;

    #calls: Lcom/mediatek/engineermode/sensor/PSensorCalibration;->enableButtons(Z)V
    invoke-static {v0, v6}, Lcom/mediatek/engineermode/sensor/PSensorCalibration;->access$000(Lcom/mediatek/engineermode/sensor/PSensorCalibration;Z)V

    .line 156
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/PSensorCalibration$2;->this$0:Lcom/mediatek/engineermode/sensor/PSensorCalibration;

    #getter for: Lcom/mediatek/engineermode/sensor/PSensorCalibration;->mCurrentData:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/mediatek/engineermode/sensor/PSensorCalibration;->access$900(Lcom/mediatek/engineermode/sensor/PSensorCalibration;)Landroid/widget/TextView;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-object v2, p0, Lcom/mediatek/engineermode/sensor/PSensorCalibration$2;->this$0:Lcom/mediatek/engineermode/sensor/PSensorCalibration;

    const v3, 0x7f080604

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/mediatek/engineermode/sensor/PSensorCalibration$2;->this$0:Lcom/mediatek/engineermode/sensor/PSensorCalibration;

    #getter for: Lcom/mediatek/engineermode/sensor/PSensorCalibration;->mData:I
    invoke-static {v5}, Lcom/mediatek/engineermode/sensor/PSensorCalibration;->access$600(Lcom/mediatek/engineermode/sensor/PSensorCalibration;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    iget-object v4, p0, Lcom/mediatek/engineermode/sensor/PSensorCalibration$2;->this$0:Lcom/mediatek/engineermode/sensor/PSensorCalibration;

    #getter for: Lcom/mediatek/engineermode/sensor/PSensorCalibration;->mHigh:I
    invoke-static {v4}, Lcom/mediatek/engineermode/sensor/PSensorCalibration;->access$700(Lcom/mediatek/engineermode/sensor/PSensorCalibration;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/mediatek/engineermode/sensor/PSensorCalibration$2;->this$0:Lcom/mediatek/engineermode/sensor/PSensorCalibration;

    #getter for: Lcom/mediatek/engineermode/sensor/PSensorCalibration;->mLow:I
    invoke-static {v5}, Lcom/mediatek/engineermode/sensor/PSensorCalibration;->access$800(Lcom/mediatek/engineermode/sensor/PSensorCalibration;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/PSensorCalibration$2;->this$0:Lcom/mediatek/engineermode/sensor/PSensorCalibration;

    #getter for: Lcom/mediatek/engineermode/sensor/PSensorCalibration;->mMinValue:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/mediatek/engineermode/sensor/PSensorCalibration;->access$200(Lcom/mediatek/engineermode/sensor/PSensorCalibration;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/engineermode/sensor/PSensorCalibration$2;->this$0:Lcom/mediatek/engineermode/sensor/PSensorCalibration;

    #getter for: Lcom/mediatek/engineermode/sensor/PSensorCalibration;->mMin:I
    invoke-static {v1}, Lcom/mediatek/engineermode/sensor/PSensorCalibration;->access$100(Lcom/mediatek/engineermode/sensor/PSensorCalibration;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/PSensorCalibration$2;->this$0:Lcom/mediatek/engineermode/sensor/PSensorCalibration;

    #getter for: Lcom/mediatek/engineermode/sensor/PSensorCalibration;->mMaxValue:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/mediatek/engineermode/sensor/PSensorCalibration;->access$400(Lcom/mediatek/engineermode/sensor/PSensorCalibration;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/engineermode/sensor/PSensorCalibration$2;->this$0:Lcom/mediatek/engineermode/sensor/PSensorCalibration;

    #getter for: Lcom/mediatek/engineermode/sensor/PSensorCalibration;->mMax:I
    invoke-static {v1}, Lcom/mediatek/engineermode/sensor/PSensorCalibration;->access$300(Lcom/mediatek/engineermode/sensor/PSensorCalibration;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 163
    :pswitch_3
    const-string v0, "PSensorCalibration"

    const-string v1, "get fail"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/PSensorCalibration$2;->this$0:Lcom/mediatek/engineermode/sensor/PSensorCalibration;

    #calls: Lcom/mediatek/engineermode/sensor/PSensorCalibration;->enableButtons(Z)V
    invoke-static {v0, v6}, Lcom/mediatek/engineermode/sensor/PSensorCalibration;->access$000(Lcom/mediatek/engineermode/sensor/PSensorCalibration;Z)V

    .line 165
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/PSensorCalibration$2;->this$0:Lcom/mediatek/engineermode/sensor/PSensorCalibration;

    const-string v1, "Get PS data failed"

    #calls: Lcom/mediatek/engineermode/sensor/PSensorCalibration;->showToast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/engineermode/sensor/PSensorCalibration;->access$500(Lcom/mediatek/engineermode/sensor/PSensorCalibration;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 168
    :pswitch_4
    const-string v0, "PSensorCalibration"

    const-string v1, "cali fail"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/PSensorCalibration$2;->this$0:Lcom/mediatek/engineermode/sensor/PSensorCalibration;

    #calls: Lcom/mediatek/engineermode/sensor/PSensorCalibration;->enableButtons(Z)V
    invoke-static {v0, v6}, Lcom/mediatek/engineermode/sensor/PSensorCalibration;->access$000(Lcom/mediatek/engineermode/sensor/PSensorCalibration;Z)V

    .line 170
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/PSensorCalibration$2;->this$0:Lcom/mediatek/engineermode/sensor/PSensorCalibration;

    const-string v1, "Calibration failed"

    #calls: Lcom/mediatek/engineermode/sensor/PSensorCalibration;->showToast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/engineermode/sensor/PSensorCalibration;->access$500(Lcom/mediatek/engineermode/sensor/PSensorCalibration;Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/PSensorCalibration$2;->this$0:Lcom/mediatek/engineermode/sensor/PSensorCalibration;

    #getter for: Lcom/mediatek/engineermode/sensor/PSensorCalibration;->mResult:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/mediatek/engineermode/sensor/PSensorCalibration;->access$1000(Lcom/mediatek/engineermode/sensor/PSensorCalibration;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "FAIL"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 174
    :pswitch_5
    const-string v0, "PSensorCalibration"

    const-string v1, "cali success"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/PSensorCalibration$2;->this$0:Lcom/mediatek/engineermode/sensor/PSensorCalibration;

    #calls: Lcom/mediatek/engineermode/sensor/PSensorCalibration;->enableButtons(Z)V
    invoke-static {v0, v6}, Lcom/mediatek/engineermode/sensor/PSensorCalibration;->access$000(Lcom/mediatek/engineermode/sensor/PSensorCalibration;Z)V

    .line 176
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/PSensorCalibration$2;->this$0:Lcom/mediatek/engineermode/sensor/PSensorCalibration;

    const-string v1, "Calibration succeed"

    #calls: Lcom/mediatek/engineermode/sensor/PSensorCalibration;->showToast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/engineermode/sensor/PSensorCalibration;->access$500(Lcom/mediatek/engineermode/sensor/PSensorCalibration;Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/PSensorCalibration$2;->this$0:Lcom/mediatek/engineermode/sensor/PSensorCalibration;

    #getter for: Lcom/mediatek/engineermode/sensor/PSensorCalibration;->mResult:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/mediatek/engineermode/sensor/PSensorCalibration;->access$1000(Lcom/mediatek/engineermode/sensor/PSensorCalibration;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "PASS"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 180
    :pswitch_6
    const-string v0, "PSensorCalibration"

    const-string v1, "clear fail"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/PSensorCalibration$2;->this$0:Lcom/mediatek/engineermode/sensor/PSensorCalibration;

    #calls: Lcom/mediatek/engineermode/sensor/PSensorCalibration;->enableButtons(Z)V
    invoke-static {v0, v6}, Lcom/mediatek/engineermode/sensor/PSensorCalibration;->access$000(Lcom/mediatek/engineermode/sensor/PSensorCalibration;Z)V

    .line 182
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/PSensorCalibration$2;->this$0:Lcom/mediatek/engineermode/sensor/PSensorCalibration;

    const-string v1, "Clear failed"

    #calls: Lcom/mediatek/engineermode/sensor/PSensorCalibration;->showToast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/engineermode/sensor/PSensorCalibration;->access$500(Lcom/mediatek/engineermode/sensor/PSensorCalibration;Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/PSensorCalibration$2;->this$0:Lcom/mediatek/engineermode/sensor/PSensorCalibration;

    #getter for: Lcom/mediatek/engineermode/sensor/PSensorCalibration;->mResult:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/mediatek/engineermode/sensor/PSensorCalibration;->access$1000(Lcom/mediatek/engineermode/sensor/PSensorCalibration;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 186
    :pswitch_7
    const-string v0, "PSensorCalibration"

    const-string v1, "clear success"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/PSensorCalibration$2;->this$0:Lcom/mediatek/engineermode/sensor/PSensorCalibration;

    #calls: Lcom/mediatek/engineermode/sensor/PSensorCalibration;->enableButtons(Z)V
    invoke-static {v0, v6}, Lcom/mediatek/engineermode/sensor/PSensorCalibration;->access$000(Lcom/mediatek/engineermode/sensor/PSensorCalibration;Z)V

    .line 188
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/PSensorCalibration$2;->this$0:Lcom/mediatek/engineermode/sensor/PSensorCalibration;

    const-string v1, "Clear succeed"

    #calls: Lcom/mediatek/engineermode/sensor/PSensorCalibration;->showToast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/engineermode/sensor/PSensorCalibration;->access$500(Lcom/mediatek/engineermode/sensor/PSensorCalibration;Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/PSensorCalibration$2;->this$0:Lcom/mediatek/engineermode/sensor/PSensorCalibration;

    #getter for: Lcom/mediatek/engineermode/sensor/PSensorCalibration;->mResult:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/mediatek/engineermode/sensor/PSensorCalibration;->access$1000(Lcom/mediatek/engineermode/sensor/PSensorCalibration;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 141
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method
