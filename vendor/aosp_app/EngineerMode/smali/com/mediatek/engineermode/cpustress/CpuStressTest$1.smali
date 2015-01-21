.class Lcom/mediatek/engineermode/cpustress/CpuStressTest$1;
.super Landroid/os/Handler;
.source "CpuStressTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/engineermode/cpustress/CpuStressTest;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/cpustress/CpuStressTest;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/cpustress/CpuStressTest;)V
    .locals 0
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTest$1;->this$0:Lcom/mediatek/engineermode/cpustress/CpuStressTest;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v5, 0x8

    .line 111
    const-string v2, "EM/CpuStress"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mHandler receive message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    new-instance v2, Ljava/io/File;

    const-string v3, "/etc/.tp/.ht120.mtc"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    sput-boolean v2, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->sIsThermalSupport:Z

    .line 114
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 146
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 149
    :goto_0
    return-void

    .line 116
    :pswitch_0
    sget v2, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->sCoreNumber:I

    sparse-switch v2, :sswitch_data_0

    .line 131
    iget-object v2, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTest$1;->this$0:Lcom/mediatek/engineermode/cpustress/CpuStressTest;

    #getter for: Lcom/mediatek/engineermode/cpustress/CpuStressTest;->mRbDual:Landroid/widget/RadioButton;
    invoke-static {v2}, Lcom/mediatek/engineermode/cpustress/CpuStressTest;->access$400(Lcom/mediatek/engineermode/cpustress/CpuStressTest;)Landroid/widget/RadioButton;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 132
    iget-object v2, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTest$1;->this$0:Lcom/mediatek/engineermode/cpustress/CpuStressTest;

    #getter for: Lcom/mediatek/engineermode/cpustress/CpuStressTest;->mRbSingle:Landroid/widget/RadioButton;
    invoke-static {v2}, Lcom/mediatek/engineermode/cpustress/CpuStressTest;->access$500(Lcom/mediatek/engineermode/cpustress/CpuStressTest;)Landroid/widget/RadioButton;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 133
    iget-object v2, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTest$1;->this$0:Lcom/mediatek/engineermode/cpustress/CpuStressTest;

    #getter for: Lcom/mediatek/engineermode/cpustress/CpuStressTest;->mRbTriple:Landroid/widget/RadioButton;
    invoke-static {v2}, Lcom/mediatek/engineermode/cpustress/CpuStressTest;->access$200(Lcom/mediatek/engineermode/cpustress/CpuStressTest;)Landroid/widget/RadioButton;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 134
    iget-object v2, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTest$1;->this$0:Lcom/mediatek/engineermode/cpustress/CpuStressTest;

    #getter for: Lcom/mediatek/engineermode/cpustress/CpuStressTest;->mRbQuad:Landroid/widget/RadioButton;
    invoke-static {v2}, Lcom/mediatek/engineermode/cpustress/CpuStressTest;->access$300(Lcom/mediatek/engineermode/cpustress/CpuStressTest;)Landroid/widget/RadioButton;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 135
    iget-object v2, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTest$1;->this$0:Lcom/mediatek/engineermode/cpustress/CpuStressTest;

    #getter for: Lcom/mediatek/engineermode/cpustress/CpuStressTest;->mRbOcta:Landroid/widget/RadioButton;
    invoke-static {v2}, Lcom/mediatek/engineermode/cpustress/CpuStressTest;->access$100(Lcom/mediatek/engineermode/cpustress/CpuStressTest;)Landroid/widget/RadioButton;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 136
    iget-object v2, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTest$1;->this$0:Lcom/mediatek/engineermode/cpustress/CpuStressTest;

    #getter for: Lcom/mediatek/engineermode/cpustress/CpuStressTest;->mCbThermal:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/mediatek/engineermode/cpustress/CpuStressTest;->access$600(Lcom/mediatek/engineermode/cpustress/CpuStressTest;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 139
    :goto_1
    iget-object v2, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTest$1;->this$0:Lcom/mediatek/engineermode/cpustress/CpuStressTest;

    sget v3, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->sIndexMode:I

    #calls: Lcom/mediatek/engineermode/cpustress/CpuStressTest;->checkRdoBtn(I)V
    invoke-static {v2, v3}, Lcom/mediatek/engineermode/cpustress/CpuStressTest;->access$700(Lcom/mediatek/engineermode/cpustress/CpuStressTest;I)V

    .line 140
    iget-object v2, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTest$1;->this$0:Lcom/mediatek/engineermode/cpustress/CpuStressTest;

    iget-object v3, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTest$1;->this$0:Lcom/mediatek/engineermode/cpustress/CpuStressTest;

    iget-object v3, v3, Lcom/mediatek/engineermode/cpustress/CpuStressCommon;->mBoundService:Lcom/mediatek/engineermode/cpustress/CpuStressTestService;

    invoke-virtual {v3}, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->isTestRun()Z

    move-result v3

    if-nez v3, :cond_0

    :goto_2
    invoke-virtual {v2, v0}, Lcom/mediatek/engineermode/cpustress/CpuStressTest;->updateRadioGroup(Z)V

    goto :goto_0

    .line 118
    :sswitch_0
    iget-object v2, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTest$1;->this$0:Lcom/mediatek/engineermode/cpustress/CpuStressTest;

    #calls: Lcom/mediatek/engineermode/cpustress/CpuStressTest;->updateCbThermal()V
    invoke-static {v2}, Lcom/mediatek/engineermode/cpustress/CpuStressTest;->access$000(Lcom/mediatek/engineermode/cpustress/CpuStressTest;)V

    goto :goto_1

    .line 121
    :sswitch_1
    iget-object v2, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTest$1;->this$0:Lcom/mediatek/engineermode/cpustress/CpuStressTest;

    #calls: Lcom/mediatek/engineermode/cpustress/CpuStressTest;->updateCbThermal()V
    invoke-static {v2}, Lcom/mediatek/engineermode/cpustress/CpuStressTest;->access$000(Lcom/mediatek/engineermode/cpustress/CpuStressTest;)V

    .line 122
    iget-object v2, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTest$1;->this$0:Lcom/mediatek/engineermode/cpustress/CpuStressTest;

    #getter for: Lcom/mediatek/engineermode/cpustress/CpuStressTest;->mRbOcta:Landroid/widget/RadioButton;
    invoke-static {v2}, Lcom/mediatek/engineermode/cpustress/CpuStressTest;->access$100(Lcom/mediatek/engineermode/cpustress/CpuStressTest;)Landroid/widget/RadioButton;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 125
    :sswitch_2
    iget-object v2, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTest$1;->this$0:Lcom/mediatek/engineermode/cpustress/CpuStressTest;

    #calls: Lcom/mediatek/engineermode/cpustress/CpuStressTest;->updateCbThermal()V
    invoke-static {v2}, Lcom/mediatek/engineermode/cpustress/CpuStressTest;->access$000(Lcom/mediatek/engineermode/cpustress/CpuStressTest;)V

    .line 126
    iget-object v2, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTest$1;->this$0:Lcom/mediatek/engineermode/cpustress/CpuStressTest;

    #getter for: Lcom/mediatek/engineermode/cpustress/CpuStressTest;->mRbTriple:Landroid/widget/RadioButton;
    invoke-static {v2}, Lcom/mediatek/engineermode/cpustress/CpuStressTest;->access$200(Lcom/mediatek/engineermode/cpustress/CpuStressTest;)Landroid/widget/RadioButton;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 127
    iget-object v2, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTest$1;->this$0:Lcom/mediatek/engineermode/cpustress/CpuStressTest;

    #getter for: Lcom/mediatek/engineermode/cpustress/CpuStressTest;->mRbQuad:Landroid/widget/RadioButton;
    invoke-static {v2}, Lcom/mediatek/engineermode/cpustress/CpuStressTest;->access$300(Lcom/mediatek/engineermode/cpustress/CpuStressTest;)Landroid/widget/RadioButton;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 128
    iget-object v2, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTest$1;->this$0:Lcom/mediatek/engineermode/cpustress/CpuStressTest;

    #getter for: Lcom/mediatek/engineermode/cpustress/CpuStressTest;->mRbOcta:Landroid/widget/RadioButton;
    invoke-static {v2}, Lcom/mediatek/engineermode/cpustress/CpuStressTest;->access$100(Lcom/mediatek/engineermode/cpustress/CpuStressTest;)Landroid/widget/RadioButton;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_0
    move v0, v1

    .line 140
    goto :goto_2

    .line 143
    :pswitch_1
    iget-object v2, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTest$1;->this$0:Lcom/mediatek/engineermode/cpustress/CpuStressTest;

    iget-object v3, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTest$1;->this$0:Lcom/mediatek/engineermode/cpustress/CpuStressTest;

    iget-object v3, v3, Lcom/mediatek/engineermode/cpustress/CpuStressCommon;->mBoundService:Lcom/mediatek/engineermode/cpustress/CpuStressTestService;

    invoke-virtual {v3}, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->isTestRun()Z

    move-result v3

    if-nez v3, :cond_1

    :goto_3
    invoke-virtual {v2, v0}, Lcom/mediatek/engineermode/cpustress/CpuStressTest;->updateRadioGroup(Z)V

    goto/16 :goto_0

    :cond_1
    move v0, v1

    goto :goto_3

    .line 114
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 116
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_2
        0x4 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method
