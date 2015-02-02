.class Lcom/mediatek/engineermode/io/MsdcSd3Test$1;
.super Ljava/lang/Object;
.source "MsdcSd3Test.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/io/MsdcSd3Test;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/io/MsdcSd3Test;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/io/MsdcSd3Test;)V
    .locals 0
    .parameter

    .prologue
    .line 154
    iput-object p1, p0, Lcom/mediatek/engineermode/io/MsdcSd3Test$1;->this$0:Lcom/mediatek/engineermode/io/MsdcSd3Test;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 158
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 160
    :pswitch_0
    iget-object v0, p0, Lcom/mediatek/engineermode/io/MsdcSd3Test$1;->this$0:Lcom/mediatek/engineermode/io/MsdcSd3Test;

    #setter for: Lcom/mediatek/engineermode/io/MsdcSd3Test;->mIndexHost:I
    invoke-static {v0, p3}, Lcom/mediatek/engineermode/io/MsdcSd3Test;->access$002(Lcom/mediatek/engineermode/io/MsdcSd3Test;I)I

    .line 161
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/mediatek/engineermode/io/MsdcSd3Test$1;->this$0:Lcom/mediatek/engineermode/io/MsdcSd3Test;

    #getter for: Lcom/mediatek/engineermode/io/MsdcSd3Test;->mIndexHost:I
    invoke-static {v1}, Lcom/mediatek/engineermode/io/MsdcSd3Test;->access$000(Lcom/mediatek/engineermode/io/MsdcSd3Test;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 162
    iget-object v0, p0, Lcom/mediatek/engineermode/io/MsdcSd3Test$1;->this$0:Lcom/mediatek/engineermode/io/MsdcSd3Test;

    invoke-static {v0}, Lcom/mediatek/engineermode/io/MsdcSd3Test;->access$008(Lcom/mediatek/engineermode/io/MsdcSd3Test;)I

    goto :goto_0

    .line 166
    :pswitch_1
    iget-object v0, p0, Lcom/mediatek/engineermode/io/MsdcSd3Test$1;->this$0:Lcom/mediatek/engineermode/io/MsdcSd3Test;

    #setter for: Lcom/mediatek/engineermode/io/MsdcSd3Test;->mIndexMode:I
    invoke-static {v0, p3}, Lcom/mediatek/engineermode/io/MsdcSd3Test;->access$102(Lcom/mediatek/engineermode/io/MsdcSd3Test;I)I

    goto :goto_0

    .line 169
    :pswitch_2
    iget-object v0, p0, Lcom/mediatek/engineermode/io/MsdcSd3Test$1;->this$0:Lcom/mediatek/engineermode/io/MsdcSd3Test;

    #setter for: Lcom/mediatek/engineermode/io/MsdcSd3Test;->mIndexMaxCurrent:I
    invoke-static {v0, p3}, Lcom/mediatek/engineermode/io/MsdcSd3Test;->access$202(Lcom/mediatek/engineermode/io/MsdcSd3Test;I)I

    goto :goto_0

    .line 172
    :pswitch_3
    iget-object v0, p0, Lcom/mediatek/engineermode/io/MsdcSd3Test$1;->this$0:Lcom/mediatek/engineermode/io/MsdcSd3Test;

    #setter for: Lcom/mediatek/engineermode/io/MsdcSd3Test;->mIndexDrive:I
    invoke-static {v0, p3}, Lcom/mediatek/engineermode/io/MsdcSd3Test;->access$302(Lcom/mediatek/engineermode/io/MsdcSd3Test;I)I

    goto :goto_0

    .line 175
    :pswitch_4
    iget-object v0, p0, Lcom/mediatek/engineermode/io/MsdcSd3Test$1;->this$0:Lcom/mediatek/engineermode/io/MsdcSd3Test;

    #setter for: Lcom/mediatek/engineermode/io/MsdcSd3Test;->mIndexPowerControl:I
    invoke-static {v0, p3}, Lcom/mediatek/engineermode/io/MsdcSd3Test;->access$402(Lcom/mediatek/engineermode/io/MsdcSd3Test;I)I

    goto :goto_0

    .line 158
    :pswitch_data_0
    .packed-switch 0x7f0b02fc
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
    .line 183
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const-string v0, "EM/MSDC_SD30_TEST"

    const-string v1, "Spinner nothing selected"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    return-void
.end method
