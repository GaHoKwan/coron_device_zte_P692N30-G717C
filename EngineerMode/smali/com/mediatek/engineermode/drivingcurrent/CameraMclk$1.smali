.class Lcom/mediatek/engineermode/drivingcurrent/CameraMclk$1;
.super Ljava/lang/Object;
.source "CameraMclk.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/engineermode/drivingcurrent/CameraMclk;->initListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/drivingcurrent/CameraMclk;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/drivingcurrent/CameraMclk;)V
    .locals 0
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/mediatek/engineermode/drivingcurrent/CameraMclk$1;->this$0:Lcom/mediatek/engineermode/drivingcurrent/CameraMclk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
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
    .line 83
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const-string v0, "EM/CameraMCLK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Hopping bit Selected : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    packed-switch p3, :pswitch_data_0

    .line 98
    :goto_0
    return-void

    .line 89
    :pswitch_0
    iget-object v0, p0, Lcom/mediatek/engineermode/drivingcurrent/CameraMclk$1;->this$0:Lcom/mediatek/engineermode/drivingcurrent/CameraMclk;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/mediatek/engineermode/drivingcurrent/CameraMclk;->mCurrentMCLK:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/mediatek/engineermode/drivingcurrent/CameraMclk;->access$002(Lcom/mediatek/engineermode/drivingcurrent/CameraMclk;Ljava/lang/String;)Ljava/lang/String;

    .line 90
    iget-object v0, p0, Lcom/mediatek/engineermode/drivingcurrent/CameraMclk$1;->this$0:Lcom/mediatek/engineermode/drivingcurrent/CameraMclk;

    #calls: Lcom/mediatek/engineermode/drivingcurrent/CameraMclk;->writeFile()V
    invoke-static {v0}, Lcom/mediatek/engineermode/drivingcurrent/CameraMclk;->access$100(Lcom/mediatek/engineermode/drivingcurrent/CameraMclk;)V

    goto :goto_0

    .line 93
    :pswitch_1
    iget-object v0, p0, Lcom/mediatek/engineermode/drivingcurrent/CameraMclk$1;->this$0:Lcom/mediatek/engineermode/drivingcurrent/CameraMclk;

    #calls: Lcom/mediatek/engineermode/drivingcurrent/CameraMclk;->deleteFile()V
    invoke-static {v0}, Lcom/mediatek/engineermode/drivingcurrent/CameraMclk;->access$200(Lcom/mediatek/engineermode/drivingcurrent/CameraMclk;)V

    goto :goto_0

    .line 84
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
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
    .line 101
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const-string v0, "EM/CameraMCLK"

    const-string v1, "Hopping bit Selected nothing."

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    return-void
.end method
