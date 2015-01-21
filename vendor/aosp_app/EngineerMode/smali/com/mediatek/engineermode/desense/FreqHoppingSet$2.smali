.class Lcom/mediatek/engineermode/desense/FreqHoppingSet$2;
.super Ljava/lang/Object;
.source "FreqHoppingSet.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/desense/FreqHoppingSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/desense/FreqHoppingSet;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/desense/FreqHoppingSet;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/mediatek/engineermode/desense/FreqHoppingSet$2;->this$0:Lcom/mediatek/engineermode/desense/FreqHoppingSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 75
    :pswitch_0
    iget-object v0, p0, Lcom/mediatek/engineermode/desense/FreqHoppingSet$2;->this$0:Lcom/mediatek/engineermode/desense/FreqHoppingSet;

    const/4 v1, 0x1

    #calls: Lcom/mediatek/engineermode/desense/FreqHoppingSet;->validateInput(Z)Z
    invoke-static {v0, v1}, Lcom/mediatek/engineermode/desense/FreqHoppingSet;->access$100(Lcom/mediatek/engineermode/desense/FreqHoppingSet;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/mediatek/engineermode/desense/FreqHoppingSet$2;->this$0:Lcom/mediatek/engineermode/desense/FreqHoppingSet;

    #calls: Lcom/mediatek/engineermode/desense/FreqHoppingSet;->enableFreqHopping()V
    invoke-static {v0}, Lcom/mediatek/engineermode/desense/FreqHoppingSet;->access$200(Lcom/mediatek/engineermode/desense/FreqHoppingSet;)V

    goto :goto_0

    .line 80
    :pswitch_1
    iget-object v0, p0, Lcom/mediatek/engineermode/desense/FreqHoppingSet$2;->this$0:Lcom/mediatek/engineermode/desense/FreqHoppingSet;

    #calls: Lcom/mediatek/engineermode/desense/FreqHoppingSet;->validateInput(Z)Z
    invoke-static {v0, v1}, Lcom/mediatek/engineermode/desense/FreqHoppingSet;->access$100(Lcom/mediatek/engineermode/desense/FreqHoppingSet;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/mediatek/engineermode/desense/FreqHoppingSet$2;->this$0:Lcom/mediatek/engineermode/desense/FreqHoppingSet;

    #calls: Lcom/mediatek/engineermode/desense/FreqHoppingSet;->disableFreqHopping()V
    invoke-static {v0}, Lcom/mediatek/engineermode/desense/FreqHoppingSet;->access$300(Lcom/mediatek/engineermode/desense/FreqHoppingSet;)V

    goto :goto_0

    .line 85
    :pswitch_2
    iget-object v0, p0, Lcom/mediatek/engineermode/desense/FreqHoppingSet$2;->this$0:Lcom/mediatek/engineermode/desense/FreqHoppingSet;

    #calls: Lcom/mediatek/engineermode/desense/FreqHoppingSet;->validateInput(Z)Z
    invoke-static {v0, v1}, Lcom/mediatek/engineermode/desense/FreqHoppingSet;->access$100(Lcom/mediatek/engineermode/desense/FreqHoppingSet;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/mediatek/engineermode/desense/FreqHoppingSet$2;->this$0:Lcom/mediatek/engineermode/desense/FreqHoppingSet;

    #calls: Lcom/mediatek/engineermode/desense/FreqHoppingSet;->readAllFreqHopping()V
    invoke-static {v0}, Lcom/mediatek/engineermode/desense/FreqHoppingSet;->access$400(Lcom/mediatek/engineermode/desense/FreqHoppingSet;)V

    goto :goto_0

    .line 73
    :pswitch_data_0
    .packed-switch 0x7f0b013f
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
