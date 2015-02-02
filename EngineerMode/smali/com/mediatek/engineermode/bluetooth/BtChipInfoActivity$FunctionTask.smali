.class public Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity$FunctionTask;
.super Landroid/os/AsyncTask;
.source "BtChipInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FunctionTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;


# direct methods
.method public constructor <init>(Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity$FunctionTask;->this$0:Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 9
    .parameter "params"

    .prologue
    .line 146
    iget-object v5, p0, Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity$FunctionTask;->this$0:Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;

    new-instance v6, Lcom/mediatek/engineermode/bluetooth/BtTest;

    invoke-direct {v6}, Lcom/mediatek/engineermode/bluetooth/BtTest;-><init>()V

    #setter for: Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;->mBtTest:Lcom/mediatek/engineermode/bluetooth/BtTest;
    invoke-static {v5, v6}, Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;->access$002(Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;Lcom/mediatek/engineermode/bluetooth/BtTest;)Lcom/mediatek/engineermode/bluetooth/BtTest;

    .line 149
    iget-object v5, p0, Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity$FunctionTask;->this$0:Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;

    #getter for: Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;->mBtTest:Lcom/mediatek/engineermode/bluetooth/BtTest;
    invoke-static {v5}, Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;->access$000(Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;)Lcom/mediatek/engineermode/bluetooth/BtTest;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 150
    iget-object v5, p0, Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity$FunctionTask;->this$0:Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;

    #getter for: Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;->mBtTest:Lcom/mediatek/engineermode/bluetooth/BtTest;
    invoke-static {v5}, Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;->access$000(Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;)Lcom/mediatek/engineermode/bluetooth/BtTest;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mediatek/engineermode/bluetooth/BtTest;->init()I

    move-result v5

    if-nez v5, :cond_3

    .line 153
    iget-object v5, p0, Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity$FunctionTask;->this$0:Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;

    const-string v6, ""

    #setter for: Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;->mChipId:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;->access$102(Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 154
    iget-object v5, p0, Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity$FunctionTask;->this$0:Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;

    invoke-virtual {v5}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v6, 0x7f06

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, chipList:[Ljava/lang/String;
    iget-object v5, p0, Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity$FunctionTask;->this$0:Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;

    #getter for: Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;->mBtTest:Lcom/mediatek/engineermode/bluetooth/BtTest;
    invoke-static {v5}, Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;->access$000(Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;)Lcom/mediatek/engineermode/bluetooth/BtTest;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mediatek/engineermode/bluetooth/BtTest;->getChipIdInt()I

    move-result v4

    .line 160
    .local v4, tmpId:I
    array-length v5, v0

    if-gt v4, v5, :cond_0

    .line 161
    iget-object v5, p0, Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity$FunctionTask;->this$0:Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;

    aget-object v6, v0, v4

    #setter for: Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;->mChipId:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;->access$102(Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 163
    :cond_0
    const-string v5, "EM/BT/ChipInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "chipId@___"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity$FunctionTask;->this$0:Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;

    #getter for: Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;->mChipId:Ljava/lang/String;
    invoke-static {v7}, Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;->access$100(Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v5, p0, Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity$FunctionTask;->this$0:Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;

    const-string v6, ""

    #setter for: Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;->mChipEco:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;->access$202(Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 166
    iget-object v5, p0, Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity$FunctionTask;->this$0:Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;

    invoke-virtual {v5}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060001

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 171
    .local v2, ecoList:[Ljava/lang/String;
    iget-object v5, p0, Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity$FunctionTask;->this$0:Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;

    #getter for: Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;->mBtTest:Lcom/mediatek/engineermode/bluetooth/BtTest;
    invoke-static {v5}, Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;->access$000(Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;)Lcom/mediatek/engineermode/bluetooth/BtTest;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mediatek/engineermode/bluetooth/BtTest;->getChipEcoNum()I

    move-result v1

    .line 172
    .local v1, ecoIndex:I
    array-length v5, v2

    if-gt v1, v5, :cond_1

    .line 173
    iget-object v5, p0, Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity$FunctionTask;->this$0:Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;

    aget-object v6, v2, v1

    #setter for: Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;->mChipEco:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;->access$202(Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 176
    :cond_1
    const-string v5, "EM/BT/ChipInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "chipEco = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity$FunctionTask;->this$0:Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;

    #getter for: Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;->mChipEco:Ljava/lang/String;
    invoke-static {v7}, Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;->access$200(Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v5, p0, Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity$FunctionTask;->this$0:Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;

    #getter for: Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;->mBtTest:Lcom/mediatek/engineermode/bluetooth/BtTest;
    invoke-static {v5}, Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;->access$000(Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;)Lcom/mediatek/engineermode/bluetooth/BtTest;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mediatek/engineermode/bluetooth/BtTest;->getPatchId()[C

    move-result-object v3

    .line 179
    .local v3, patchIdArray:[C
    iget-object v5, p0, Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity$FunctionTask;->this$0:Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v3}, Ljava/lang/String;-><init>([C)V

    #setter for: Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;->mChipPatchId:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;->access$302(Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 180
    const-string v5, "EM/BT/ChipInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "chipPatchId@"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity$FunctionTask;->this$0:Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;

    #getter for: Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;->mChipPatchId:Ljava/lang/String;
    invoke-static {v7}, Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;->access$300(Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "___"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity$FunctionTask;->this$0:Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;

    #getter for: Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;->mChipPatchId:Ljava/lang/String;
    invoke-static {v7}, Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;->access$300(Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v5, p0, Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity$FunctionTask;->this$0:Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity$FunctionTask;->this$0:Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;

    #getter for: Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;->mBtTest:Lcom/mediatek/engineermode/bluetooth/BtTest;
    invoke-static {v7}, Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;->access$000(Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;)Lcom/mediatek/engineermode/bluetooth/BtTest;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mediatek/engineermode/bluetooth/BtTest;->getPatchLen()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #setter for: Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;->mChipPatchLen:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;->access$402(Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 183
    const-string v5, "EM/BT/ChipInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "GetPatchLen="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity$FunctionTask;->this$0:Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;

    #getter for: Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;->mChipPatchLen:Ljava/lang/String;
    invoke-static {v7}, Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;->access$400(Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v5, p0, Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity$FunctionTask;->this$0:Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;

    #getter for: Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;->mBtTest:Lcom/mediatek/engineermode/bluetooth/BtTest;
    invoke-static {v5}, Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;->access$000(Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;)Lcom/mediatek/engineermode/bluetooth/BtTest;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mediatek/engineermode/bluetooth/BtTest;->unInit()I

    .line 193
    .end local v0           #chipList:[Ljava/lang/String;
    .end local v1           #ecoIndex:I
    .end local v2           #ecoList:[Ljava/lang/String;
    .end local v3           #patchIdArray:[C
    .end local v4           #tmpId:I
    :cond_2
    :goto_0
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    return-object v5

    .line 187
    :cond_3
    const-string v5, "EM/BT/ChipInfo"

    const-string v6, "new BtTest failed"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 142
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity$FunctionTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 202
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity$FunctionTask;->this$0:Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;

    #getter for: Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;->mChipIdTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;->access$500(Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity$FunctionTask;->this$0:Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;

    #getter for: Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;->mChipId:Ljava/lang/String;
    invoke-static {v1}, Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;->access$100(Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity$FunctionTask;->this$0:Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;

    #getter for: Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;->mEcoVerTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;->access$600(Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity$FunctionTask;->this$0:Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;

    #getter for: Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;->mChipEco:Ljava/lang/String;
    invoke-static {v1}, Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;->access$200(Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity$FunctionTask;->this$0:Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;

    #getter for: Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;->mPatchSizeView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;->access$700(Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity$FunctionTask;->this$0:Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;

    #getter for: Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;->mChipPatchLen:Ljava/lang/String;
    invoke-static {v1}, Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;->access$400(Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity$FunctionTask;->this$0:Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;

    #getter for: Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;->mPatchDateView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;->access$800(Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity$FunctionTask;->this$0:Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;

    #getter for: Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;->mChipPatchId:Ljava/lang/String;
    invoke-static {v1}, Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;->access$300(Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity$FunctionTask;->this$0:Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/Activity;->removeDialog(I)V

    .line 210
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 142
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity$FunctionTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
