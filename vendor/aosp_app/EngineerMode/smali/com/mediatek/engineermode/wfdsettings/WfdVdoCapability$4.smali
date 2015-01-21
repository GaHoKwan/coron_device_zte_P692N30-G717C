.class Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability$4;
.super Ljava/lang/Object;
.source "WfdVdoCapability.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;)V
    .locals 0
    .parameter

    .prologue
    .line 194
    iput-object p1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability$4;->this$0:Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const v5, 0x7f0b0499

    .line 196
    iget-object v2, p0, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability$4;->this$0:Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;

    #getter for: Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->mCb1080pSettingMenu:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->access$400(Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    .line 197
    .local v1, newState:Z
    const-string v2, "EM/WFD_VDO_CAP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Enable1080pSettingMenu : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability$4;->this$0:Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;

    #getter for: Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->mRg1080pDefinition:Landroid/widget/RadioGroup;
    invoke-static {v2}, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->access$100(Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;)Landroid/widget/RadioGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 199
    iget-object v2, p0, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability$4;->this$0:Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;

    #getter for: Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->mRg1080pDefinition:Landroid/widget/RadioGroup;
    invoke-static {v2}, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->access$100(Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;)Landroid/widget/RadioGroup;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 198
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 202
    :cond_0
    iget-object v2, p0, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability$4;->this$0:Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;

    #getter for: Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->mRg1080pDefinition:Landroid/widget/RadioGroup;
    invoke-static {v2}, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->access$100(Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;)Landroid/widget/RadioGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v2

    const v3, 0x7f0b049a

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability$4;->this$0:Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;

    #getter for: Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->mRg1080pDefinition:Landroid/widget/RadioGroup;
    invoke-static {v2}, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->access$100(Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;)Landroid/widget/RadioGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v2

    const v3, 0x7f0b049b

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability$4;->this$0:Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;

    #getter for: Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->mRg1080pDefinition:Landroid/widget/RadioGroup;
    invoke-static {v2}, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->access$100(Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;)Landroid/widget/RadioGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v2

    if-eq v2, v5, :cond_1

    .line 205
    iget-object v2, p0, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability$4;->this$0:Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;

    #getter for: Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->mRg1080pDefinition:Landroid/widget/RadioGroup;
    invoke-static {v2}, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->access$100(Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;)Landroid/widget/RadioGroup;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/RadioGroup;->check(I)V

    .line 207
    :cond_1
    return-void
.end method
