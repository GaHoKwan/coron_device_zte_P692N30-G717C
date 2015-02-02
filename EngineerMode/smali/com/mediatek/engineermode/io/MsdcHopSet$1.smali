.class Lcom/mediatek/engineermode/io/MsdcHopSet$1;
.super Ljava/lang/Object;
.source "MsdcHopSet.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/io/MsdcHopSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/io/MsdcHopSet;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/io/MsdcHopSet;)V
    .locals 0
    .parameter

    .prologue
    .line 153
    iput-object p1, p0, Lcom/mediatek/engineermode/io/MsdcHopSet$1;->this$0:Lcom/mediatek/engineermode/io/MsdcHopSet;

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
    .line 157
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 170
    :goto_0
    return-void

    .line 159
    :pswitch_0
    iget-object v0, p0, Lcom/mediatek/engineermode/io/MsdcHopSet$1;->this$0:Lcom/mediatek/engineermode/io/MsdcHopSet;

    #setter for: Lcom/mediatek/engineermode/io/MsdcHopSet;->mHostIndex:I
    invoke-static {v0, p3}, Lcom/mediatek/engineermode/io/MsdcHopSet;->access$002(Lcom/mediatek/engineermode/io/MsdcHopSet;I)I

    goto :goto_0

    .line 162
    :pswitch_1
    iget-object v0, p0, Lcom/mediatek/engineermode/io/MsdcHopSet$1;->this$0:Lcom/mediatek/engineermode/io/MsdcHopSet;

    #setter for: Lcom/mediatek/engineermode/io/MsdcHopSet;->mHoppingBitIndex:I
    invoke-static {v0, p3}, Lcom/mediatek/engineermode/io/MsdcHopSet;->access$102(Lcom/mediatek/engineermode/io/MsdcHopSet;I)I

    goto :goto_0

    .line 165
    :pswitch_2
    iget-object v0, p0, Lcom/mediatek/engineermode/io/MsdcHopSet$1;->this$0:Lcom/mediatek/engineermode/io/MsdcHopSet;

    #setter for: Lcom/mediatek/engineermode/io/MsdcHopSet;->mHoppingTimeIndex:I
    invoke-static {v0, p3}, Lcom/mediatek/engineermode/io/MsdcHopSet;->access$202(Lcom/mediatek/engineermode/io/MsdcHopSet;I)I

    goto :goto_0

    .line 157
    :pswitch_data_0
    .packed-switch 0x7f0b02f7
        :pswitch_0
        :pswitch_1
        :pswitch_2
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
    .line 173
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const-string v0, "MSDC_HOPSET_IOCTL"

    const-string v1, "Spinner nothing selected"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    return-void
.end method
