.class public Lcom/mediatek/engineermode/fastdormancy/ConfigFD$ButtonClickListener;
.super Ljava/lang/Object;
.source "ConfigFD.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/fastdormancy/ConfigFD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ButtonClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/fastdormancy/ConfigFD;


# direct methods
.method public constructor <init>(Lcom/mediatek/engineermode/fastdormancy/ConfigFD;)V
    .locals 0
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/mediatek/engineermode/fastdormancy/ConfigFD$ButtonClickListener;->this$0:Lcom/mediatek/engineermode/fastdormancy/ConfigFD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    const v7, 0x3fffff

    const/4 v4, -0x1

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 148
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f0b0187

    if-ne v2, v3, :cond_0

    .line 149
    iget-object v2, p0, Lcom/mediatek/engineermode/fastdormancy/ConfigFD$ButtonClickListener;->this$0:Lcom/mediatek/engineermode/fastdormancy/ConfigFD;

    #getter for: Lcom/mediatek/engineermode/fastdormancy/ConfigFD;->mRadioGroup:Landroid/widget/RadioGroup;
    invoke-static {v2}, Lcom/mediatek/engineermode/fastdormancy/ConfigFD;->access$000(Lcom/mediatek/engineermode/fastdormancy/ConfigFD;)Landroid/widget/RadioGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    .line 150
    .local v0, checkedId:I
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    .line 151
    .local v1, cmdStr:[Ljava/lang/String;
    const v2, 0x7f0b0184

    if-ne v0, v2, :cond_2

    .line 152
    iget-object v2, p0, Lcom/mediatek/engineermode/fastdormancy/ConfigFD$ButtonClickListener;->this$0:Lcom/mediatek/engineermode/fastdormancy/ConfigFD;

    #getter for: Lcom/mediatek/engineermode/fastdormancy/ConfigFD;->mReturnData:[Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/engineermode/fastdormancy/ConfigFD;->access$100(Lcom/mediatek/engineermode/fastdormancy/ConfigFD;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/mediatek/engineermode/fastdormancy/ConfigFD$ButtonClickListener;->this$0:Lcom/mediatek/engineermode/fastdormancy/ConfigFD;

    #getter for: Lcom/mediatek/engineermode/fastdormancy/ConfigFD;->mReturnData:[Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/engineermode/fastdormancy/ConfigFD;->access$100(Lcom/mediatek/engineermode/fastdormancy/ConfigFD;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v5

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/mediatek/engineermode/fastdormancy/ConfigFD$ButtonClickListener;->this$0:Lcom/mediatek/engineermode/fastdormancy/ConfigFD;

    #getter for: Lcom/mediatek/engineermode/fastdormancy/ConfigFD;->mFdValue:I
    invoke-static {v2}, Lcom/mediatek/engineermode/fastdormancy/ConfigFD;->access$200(Lcom/mediatek/engineermode/fastdormancy/ConfigFD;)I

    move-result v2

    if-eq v2, v4, :cond_1

    .line 153
    iget-object v2, p0, Lcom/mediatek/engineermode/fastdormancy/ConfigFD$ButtonClickListener;->this$0:Lcom/mediatek/engineermode/fastdormancy/ConfigFD;

    iget-object v3, p0, Lcom/mediatek/engineermode/fastdormancy/ConfigFD$ButtonClickListener;->this$0:Lcom/mediatek/engineermode/fastdormancy/ConfigFD;

    #getter for: Lcom/mediatek/engineermode/fastdormancy/ConfigFD;->mFdValue:I
    invoke-static {v3}, Lcom/mediatek/engineermode/fastdormancy/ConfigFD;->access$200(Lcom/mediatek/engineermode/fastdormancy/ConfigFD;)I

    move-result v3

    and-int/2addr v3, v7

    #setter for: Lcom/mediatek/engineermode/fastdormancy/ConfigFD;->mFdValue:I
    invoke-static {v2, v3}, Lcom/mediatek/engineermode/fastdormancy/ConfigFD;->access$202(Lcom/mediatek/engineermode/fastdormancy/ConfigFD;I)I

    .line 154
    const-string v2, "EM_FD"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "To Modem :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/engineermode/fastdormancy/ConfigFD$ButtonClickListener;->this$0:Lcom/mediatek/engineermode/fastdormancy/ConfigFD;

    #getter for: Lcom/mediatek/engineermode/fastdormancy/ConfigFD;->mFdValue:I
    invoke-static {v4}, Lcom/mediatek/engineermode/fastdormancy/ConfigFD;->access$200(Lcom/mediatek/engineermode/fastdormancy/ConfigFD;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AT+EPCT="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/engineermode/fastdormancy/ConfigFD$ButtonClickListener;->this$0:Lcom/mediatek/engineermode/fastdormancy/ConfigFD;

    #getter for: Lcom/mediatek/engineermode/fastdormancy/ConfigFD;->mReturnData:[Ljava/lang/String;
    invoke-static {v3}, Lcom/mediatek/engineermode/fastdormancy/ConfigFD;->access$100(Lcom/mediatek/engineermode/fastdormancy/ConfigFD;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/engineermode/fastdormancy/ConfigFD$ButtonClickListener;->this$0:Lcom/mediatek/engineermode/fastdormancy/ConfigFD;

    #getter for: Lcom/mediatek/engineermode/fastdormancy/ConfigFD;->mFdValue:I
    invoke-static {v3}, Lcom/mediatek/engineermode/fastdormancy/ConfigFD;->access$200(Lcom/mediatek/engineermode/fastdormancy/ConfigFD;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    .line 156
    const-string v2, ""

    aput-object v2, v1, v6

    .line 157
    iget-object v2, p0, Lcom/mediatek/engineermode/fastdormancy/ConfigFD$ButtonClickListener;->this$0:Lcom/mediatek/engineermode/fastdormancy/ConfigFD;

    #getter for: Lcom/mediatek/engineermode/fastdormancy/ConfigFD;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/mediatek/engineermode/fastdormancy/ConfigFD;->access$400(Lcom/mediatek/engineermode/fastdormancy/ConfigFD;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/engineermode/fastdormancy/ConfigFD$ButtonClickListener;->this$0:Lcom/mediatek/engineermode/fastdormancy/ConfigFD;

    #getter for: Lcom/mediatek/engineermode/fastdormancy/ConfigFD;->mResponseHander:Landroid/os/Handler;
    invoke-static {v3}, Lcom/mediatek/engineermode/fastdormancy/ConfigFD;->access$300(Lcom/mediatek/engineermode/fastdormancy/ConfigFD;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    .line 158
    const-string v2, "EM_FD"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invoke cmdStr :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v1, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    .end local v0           #checkedId:I
    .end local v1           #cmdStr:[Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 160
    .restart local v0       #checkedId:I
    .restart local v1       #cmdStr:[Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/mediatek/engineermode/fastdormancy/ConfigFD$ButtonClickListener;->this$0:Lcom/mediatek/engineermode/fastdormancy/ConfigFD;

    const-string v3, "Get FD data fail!"

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 161
    const-string v2, "EM_FD"

    const-string v3, "returnData is null"

    invoke-static {v2, v3}, Lcom/mediatek/engineermode/Elog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    iget-object v2, p0, Lcom/mediatek/engineermode/fastdormancy/ConfigFD$ButtonClickListener;->this$0:Lcom/mediatek/engineermode/fastdormancy/ConfigFD;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 164
    :cond_2
    const v2, 0x7f0b0185

    if-ne v0, v2, :cond_4

    .line 165
    iget-object v2, p0, Lcom/mediatek/engineermode/fastdormancy/ConfigFD$ButtonClickListener;->this$0:Lcom/mediatek/engineermode/fastdormancy/ConfigFD;

    #getter for: Lcom/mediatek/engineermode/fastdormancy/ConfigFD;->mReturnData:[Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/engineermode/fastdormancy/ConfigFD;->access$100(Lcom/mediatek/engineermode/fastdormancy/ConfigFD;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/mediatek/engineermode/fastdormancy/ConfigFD$ButtonClickListener;->this$0:Lcom/mediatek/engineermode/fastdormancy/ConfigFD;

    #getter for: Lcom/mediatek/engineermode/fastdormancy/ConfigFD;->mReturnData:[Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/engineermode/fastdormancy/ConfigFD;->access$100(Lcom/mediatek/engineermode/fastdormancy/ConfigFD;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v5

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/mediatek/engineermode/fastdormancy/ConfigFD$ButtonClickListener;->this$0:Lcom/mediatek/engineermode/fastdormancy/ConfigFD;

    #getter for: Lcom/mediatek/engineermode/fastdormancy/ConfigFD;->mFdValue:I
    invoke-static {v2}, Lcom/mediatek/engineermode/fastdormancy/ConfigFD;->access$200(Lcom/mediatek/engineermode/fastdormancy/ConfigFD;)I

    move-result v2

    if-eq v2, v4, :cond_3

    .line 166
    iget-object v2, p0, Lcom/mediatek/engineermode/fastdormancy/ConfigFD$ButtonClickListener;->this$0:Lcom/mediatek/engineermode/fastdormancy/ConfigFD;

    iget-object v3, p0, Lcom/mediatek/engineermode/fastdormancy/ConfigFD$ButtonClickListener;->this$0:Lcom/mediatek/engineermode/fastdormancy/ConfigFD;

    #getter for: Lcom/mediatek/engineermode/fastdormancy/ConfigFD;->mFdValue:I
    invoke-static {v3}, Lcom/mediatek/engineermode/fastdormancy/ConfigFD;->access$200(Lcom/mediatek/engineermode/fastdormancy/ConfigFD;)I

    move-result v3

    and-int/2addr v3, v7

    const/high16 v4, 0x80

    or-int/2addr v3, v4

    #setter for: Lcom/mediatek/engineermode/fastdormancy/ConfigFD;->mFdValue:I
    invoke-static {v2, v3}, Lcom/mediatek/engineermode/fastdormancy/ConfigFD;->access$202(Lcom/mediatek/engineermode/fastdormancy/ConfigFD;I)I

    .line 167
    const-string v2, "EM_FD"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "To Modem :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/engineermode/fastdormancy/ConfigFD$ButtonClickListener;->this$0:Lcom/mediatek/engineermode/fastdormancy/ConfigFD;

    #getter for: Lcom/mediatek/engineermode/fastdormancy/ConfigFD;->mFdValue:I
    invoke-static {v4}, Lcom/mediatek/engineermode/fastdormancy/ConfigFD;->access$200(Lcom/mediatek/engineermode/fastdormancy/ConfigFD;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AT+EPCT="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/engineermode/fastdormancy/ConfigFD$ButtonClickListener;->this$0:Lcom/mediatek/engineermode/fastdormancy/ConfigFD;

    #getter for: Lcom/mediatek/engineermode/fastdormancy/ConfigFD;->mReturnData:[Ljava/lang/String;
    invoke-static {v3}, Lcom/mediatek/engineermode/fastdormancy/ConfigFD;->access$100(Lcom/mediatek/engineermode/fastdormancy/ConfigFD;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/engineermode/fastdormancy/ConfigFD$ButtonClickListener;->this$0:Lcom/mediatek/engineermode/fastdormancy/ConfigFD;

    #getter for: Lcom/mediatek/engineermode/fastdormancy/ConfigFD;->mFdValue:I
    invoke-static {v3}, Lcom/mediatek/engineermode/fastdormancy/ConfigFD;->access$200(Lcom/mediatek/engineermode/fastdormancy/ConfigFD;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    .line 169
    const-string v2, ""

    aput-object v2, v1, v6

    .line 170
    iget-object v2, p0, Lcom/mediatek/engineermode/fastdormancy/ConfigFD$ButtonClickListener;->this$0:Lcom/mediatek/engineermode/fastdormancy/ConfigFD;

    #getter for: Lcom/mediatek/engineermode/fastdormancy/ConfigFD;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/mediatek/engineermode/fastdormancy/ConfigFD;->access$400(Lcom/mediatek/engineermode/fastdormancy/ConfigFD;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/engineermode/fastdormancy/ConfigFD$ButtonClickListener;->this$0:Lcom/mediatek/engineermode/fastdormancy/ConfigFD;

    #getter for: Lcom/mediatek/engineermode/fastdormancy/ConfigFD;->mResponseHander:Landroid/os/Handler;
    invoke-static {v3}, Lcom/mediatek/engineermode/fastdormancy/ConfigFD;->access$300(Lcom/mediatek/engineermode/fastdormancy/ConfigFD;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    .line 171
    const-string v2, "EM_FD"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invoke cmdStr :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v1, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 173
    :cond_3
    iget-object v2, p0, Lcom/mediatek/engineermode/fastdormancy/ConfigFD$ButtonClickListener;->this$0:Lcom/mediatek/engineermode/fastdormancy/ConfigFD;

    const-string v3, "Get FD data fail!"

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 174
    const-string v2, "EM_FD"

    const-string v3, "returnData is null"

    invoke-static {v2, v3}, Lcom/mediatek/engineermode/Elog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iget-object v2, p0, Lcom/mediatek/engineermode/fastdormancy/ConfigFD$ButtonClickListener;->this$0:Lcom/mediatek/engineermode/fastdormancy/ConfigFD;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 177
    :cond_4
    const v2, 0x7f0b0186

    if-ne v0, v2, :cond_0

    .line 178
    iget-object v2, p0, Lcom/mediatek/engineermode/fastdormancy/ConfigFD$ButtonClickListener;->this$0:Lcom/mediatek/engineermode/fastdormancy/ConfigFD;

    #getter for: Lcom/mediatek/engineermode/fastdormancy/ConfigFD;->mReturnData:[Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/engineermode/fastdormancy/ConfigFD;->access$100(Lcom/mediatek/engineermode/fastdormancy/ConfigFD;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/mediatek/engineermode/fastdormancy/ConfigFD$ButtonClickListener;->this$0:Lcom/mediatek/engineermode/fastdormancy/ConfigFD;

    #getter for: Lcom/mediatek/engineermode/fastdormancy/ConfigFD;->mReturnData:[Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/engineermode/fastdormancy/ConfigFD;->access$100(Lcom/mediatek/engineermode/fastdormancy/ConfigFD;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v5

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/mediatek/engineermode/fastdormancy/ConfigFD$ButtonClickListener;->this$0:Lcom/mediatek/engineermode/fastdormancy/ConfigFD;

    #getter for: Lcom/mediatek/engineermode/fastdormancy/ConfigFD;->mFdValue:I
    invoke-static {v2}, Lcom/mediatek/engineermode/fastdormancy/ConfigFD;->access$200(Lcom/mediatek/engineermode/fastdormancy/ConfigFD;)I

    move-result v2

    if-eq v2, v4, :cond_5

    .line 179
    iget-object v2, p0, Lcom/mediatek/engineermode/fastdormancy/ConfigFD$ButtonClickListener;->this$0:Lcom/mediatek/engineermode/fastdormancy/ConfigFD;

    iget-object v3, p0, Lcom/mediatek/engineermode/fastdormancy/ConfigFD$ButtonClickListener;->this$0:Lcom/mediatek/engineermode/fastdormancy/ConfigFD;

    #getter for: Lcom/mediatek/engineermode/fastdormancy/ConfigFD;->mFdValue:I
    invoke-static {v3}, Lcom/mediatek/engineermode/fastdormancy/ConfigFD;->access$200(Lcom/mediatek/engineermode/fastdormancy/ConfigFD;)I

    move-result v3

    and-int/2addr v3, v7

    const/high16 v4, 0x40

    or-int/2addr v3, v4

    #setter for: Lcom/mediatek/engineermode/fastdormancy/ConfigFD;->mFdValue:I
    invoke-static {v2, v3}, Lcom/mediatek/engineermode/fastdormancy/ConfigFD;->access$202(Lcom/mediatek/engineermode/fastdormancy/ConfigFD;I)I

    .line 180
    const-string v2, "EM_FD"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "To Modem :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/engineermode/fastdormancy/ConfigFD$ButtonClickListener;->this$0:Lcom/mediatek/engineermode/fastdormancy/ConfigFD;

    #getter for: Lcom/mediatek/engineermode/fastdormancy/ConfigFD;->mFdValue:I
    invoke-static {v4}, Lcom/mediatek/engineermode/fastdormancy/ConfigFD;->access$200(Lcom/mediatek/engineermode/fastdormancy/ConfigFD;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AT+EPCT="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/engineermode/fastdormancy/ConfigFD$ButtonClickListener;->this$0:Lcom/mediatek/engineermode/fastdormancy/ConfigFD;

    #getter for: Lcom/mediatek/engineermode/fastdormancy/ConfigFD;->mReturnData:[Ljava/lang/String;
    invoke-static {v3}, Lcom/mediatek/engineermode/fastdormancy/ConfigFD;->access$100(Lcom/mediatek/engineermode/fastdormancy/ConfigFD;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/engineermode/fastdormancy/ConfigFD$ButtonClickListener;->this$0:Lcom/mediatek/engineermode/fastdormancy/ConfigFD;

    #getter for: Lcom/mediatek/engineermode/fastdormancy/ConfigFD;->mFdValue:I
    invoke-static {v3}, Lcom/mediatek/engineermode/fastdormancy/ConfigFD;->access$200(Lcom/mediatek/engineermode/fastdormancy/ConfigFD;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    .line 182
    const-string v2, ""

    aput-object v2, v1, v6

    .line 183
    iget-object v2, p0, Lcom/mediatek/engineermode/fastdormancy/ConfigFD$ButtonClickListener;->this$0:Lcom/mediatek/engineermode/fastdormancy/ConfigFD;

    #getter for: Lcom/mediatek/engineermode/fastdormancy/ConfigFD;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/mediatek/engineermode/fastdormancy/ConfigFD;->access$400(Lcom/mediatek/engineermode/fastdormancy/ConfigFD;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/engineermode/fastdormancy/ConfigFD$ButtonClickListener;->this$0:Lcom/mediatek/engineermode/fastdormancy/ConfigFD;

    #getter for: Lcom/mediatek/engineermode/fastdormancy/ConfigFD;->mResponseHander:Landroid/os/Handler;
    invoke-static {v3}, Lcom/mediatek/engineermode/fastdormancy/ConfigFD;->access$300(Lcom/mediatek/engineermode/fastdormancy/ConfigFD;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    .line 184
    const-string v2, "EM_FD"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invoke cmdStr :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v1, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 186
    :cond_5
    iget-object v2, p0, Lcom/mediatek/engineermode/fastdormancy/ConfigFD$ButtonClickListener;->this$0:Lcom/mediatek/engineermode/fastdormancy/ConfigFD;

    const-string v3, "Get FD data fail!"

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 187
    const-string v2, "EM_FD"

    const-string v3, "returnData is null"

    invoke-static {v2, v3}, Lcom/mediatek/engineermode/Elog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    iget-object v2, p0, Lcom/mediatek/engineermode/fastdormancy/ConfigFD$ButtonClickListener;->this$0:Lcom/mediatek/engineermode/fastdormancy/ConfigFD;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0
.end method
