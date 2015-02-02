.class Lcom/mediatek/engineermode/io/MsdcDrivSet$1;
.super Ljava/lang/Object;
.source "MsdcDrivSet.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/io/MsdcDrivSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/io/MsdcDrivSet;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/io/MsdcDrivSet;)V
    .locals 0
    .parameter

    .prologue
    .line 257
    iput-object p1, p0, Lcom/mediatek/engineermode/io/MsdcDrivSet$1;->this$0:Lcom/mediatek/engineermode/io/MsdcDrivSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
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
    .line 261
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 286
    :goto_0
    :pswitch_0
    return-void

    .line 263
    :pswitch_1
    iget-object v0, p0, Lcom/mediatek/engineermode/io/MsdcDrivSet$1;->this$0:Lcom/mediatek/engineermode/io/MsdcDrivSet;

    #setter for: Lcom/mediatek/engineermode/io/MsdcDrivSet;->mHostIndex:I
    invoke-static {v0, p3}, Lcom/mediatek/engineermode/io/MsdcDrivSet;->access$002(Lcom/mediatek/engineermode/io/MsdcDrivSet;I)I

    goto :goto_0

    .line 266
    :pswitch_2
    iget-object v0, p0, Lcom/mediatek/engineermode/io/MsdcDrivSet$1;->this$0:Lcom/mediatek/engineermode/io/MsdcDrivSet;

    #setter for: Lcom/mediatek/engineermode/io/MsdcDrivSet;->mClkPuIndex:I
    invoke-static {v0, p3}, Lcom/mediatek/engineermode/io/MsdcDrivSet;->access$102(Lcom/mediatek/engineermode/io/MsdcDrivSet;I)I

    goto :goto_0

    .line 269
    :pswitch_3
    iget-object v0, p0, Lcom/mediatek/engineermode/io/MsdcDrivSet$1;->this$0:Lcom/mediatek/engineermode/io/MsdcDrivSet;

    #setter for: Lcom/mediatek/engineermode/io/MsdcDrivSet;->mClkPdIndex:I
    invoke-static {v0, p3}, Lcom/mediatek/engineermode/io/MsdcDrivSet;->access$202(Lcom/mediatek/engineermode/io/MsdcDrivSet;I)I

    goto :goto_0

    .line 272
    :pswitch_4
    iget-object v0, p0, Lcom/mediatek/engineermode/io/MsdcDrivSet$1;->this$0:Lcom/mediatek/engineermode/io/MsdcDrivSet;

    #setter for: Lcom/mediatek/engineermode/io/MsdcDrivSet;->mCmdPuIndex:I
    invoke-static {v0, p3}, Lcom/mediatek/engineermode/io/MsdcDrivSet;->access$302(Lcom/mediatek/engineermode/io/MsdcDrivSet;I)I

    goto :goto_0

    .line 275
    :pswitch_5
    iget-object v0, p0, Lcom/mediatek/engineermode/io/MsdcDrivSet$1;->this$0:Lcom/mediatek/engineermode/io/MsdcDrivSet;

    #setter for: Lcom/mediatek/engineermode/io/MsdcDrivSet;->mCmdPdIndex:I
    invoke-static {v0, p3}, Lcom/mediatek/engineermode/io/MsdcDrivSet;->access$402(Lcom/mediatek/engineermode/io/MsdcDrivSet;I)I

    goto :goto_0

    .line 278
    :pswitch_6
    iget-object v0, p0, Lcom/mediatek/engineermode/io/MsdcDrivSet$1;->this$0:Lcom/mediatek/engineermode/io/MsdcDrivSet;

    #setter for: Lcom/mediatek/engineermode/io/MsdcDrivSet;->mDataPuIndex:I
    invoke-static {v0, p3}, Lcom/mediatek/engineermode/io/MsdcDrivSet;->access$502(Lcom/mediatek/engineermode/io/MsdcDrivSet;I)I

    goto :goto_0

    .line 281
    :pswitch_7
    iget-object v0, p0, Lcom/mediatek/engineermode/io/MsdcDrivSet$1;->this$0:Lcom/mediatek/engineermode/io/MsdcDrivSet;

    #setter for: Lcom/mediatek/engineermode/io/MsdcDrivSet;->mDataPdndex:I
    invoke-static {v0, p3}, Lcom/mediatek/engineermode/io/MsdcDrivSet;->access$602(Lcom/mediatek/engineermode/io/MsdcDrivSet;I)I

    goto :goto_0

    .line 261
    :pswitch_data_0
    .packed-switch 0x7f0b0363
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_7
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
    .line 289
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const-string v0, "MSDC_IOCTL"

    const-string v1, "Spinner nothing selected"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    return-void
.end method
