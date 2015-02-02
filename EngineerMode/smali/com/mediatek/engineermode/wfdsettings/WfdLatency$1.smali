.class Lcom/mediatek/engineermode/wfdsettings/WfdLatency$1;
.super Ljava/lang/Object;
.source "WfdLatency.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/engineermode/wfdsettings/WfdLatency;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/wfdsettings/WfdLatency;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/wfdsettings/WfdLatency;)V
    .locals 0
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdLatency$1;->this$0:Lcom/mediatek/engineermode/wfdsettings/WfdLatency;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 119
    iget-object v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdLatency$1;->this$0:Lcom/mediatek/engineermode/wfdsettings/WfdLatency;

    #getter for: Lcom/mediatek/engineermode/wfdsettings/WfdLatency;->mCbProfiling:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/mediatek/engineermode/wfdsettings/WfdLatency;->access$000(Lcom/mediatek/engineermode/wfdsettings/WfdLatency;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    .line 120
    .local v0, newState:Z
    const-string v1, "EM/WFD_LATENCY"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EnableSettingMenu : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object v2, p0, Lcom/mediatek/engineermode/wfdsettings/WfdLatency$1;->this$0:Lcom/mediatek/engineermode/wfdsettings/WfdLatency;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    #setter for: Lcom/mediatek/engineermode/wfdsettings/WfdLatency;->mProfilingInfo:I
    invoke-static {v2, v1}, Lcom/mediatek/engineermode/wfdsettings/WfdLatency;->access$102(Lcom/mediatek/engineermode/wfdsettings/WfdLatency;I)I

    .line 122
    iget-object v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdLatency$1;->this$0:Lcom/mediatek/engineermode/wfdsettings/WfdLatency;

    iget-object v2, p0, Lcom/mediatek/engineermode/wfdsettings/WfdLatency$1;->this$0:Lcom/mediatek/engineermode/wfdsettings/WfdLatency;

    #getter for: Lcom/mediatek/engineermode/wfdsettings/WfdLatency;->mProfilingInfo:I
    invoke-static {v2}, Lcom/mediatek/engineermode/wfdsettings/WfdLatency;->access$100(Lcom/mediatek/engineermode/wfdsettings/WfdLatency;)I

    move-result v2

    #calls: Lcom/mediatek/engineermode/wfdsettings/WfdLatency;->setProfilingInfo(I)V
    invoke-static {v1, v2}, Lcom/mediatek/engineermode/wfdsettings/WfdLatency;->access$200(Lcom/mediatek/engineermode/wfdsettings/WfdLatency;I)V

    .line 123
    return-void

    .line 121
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
