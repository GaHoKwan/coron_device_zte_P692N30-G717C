.class Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability$1;
.super Ljava/lang/Object;
.source "WfdVdoCapability.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;
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
    .line 80
    iput-object p1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability$1;->this$0:Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2
    .parameter "group"
    .parameter "checkedId"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability$1;->this$0:Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;

    #getter for: Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->mRg720pDefinition:Landroid/widget/RadioGroup;
    invoke-static {v0}, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->access$000(Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;)Landroid/widget/RadioGroup;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    const v0, 0x7f0b0494

    if-ne p2, v0, :cond_2

    .line 84
    const-string v0, "EM/WFD_VDO_CAP"

    const-string v1, "check 720-720p(60p)"

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability$1;->this$0:Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;

    #getter for: Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->mRg1080pDefinition:Landroid/widget/RadioGroup;
    invoke-static {v0}, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->access$100(Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;)Landroid/widget/RadioGroup;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    const v0, 0x7f0b0499

    if-ne p2, v0, :cond_3

    .line 92
    const-string v0, "EM/WFD_VDO_CAP"

    const-string v1, "check 1080-full"

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    :cond_1
    :goto_1
    return-void

    .line 85
    :cond_2
    const v0, 0x7f0b0495

    if-ne p2, v0, :cond_0

    .line 86
    const-string v0, "EM/WFD_VDO_CAP"

    const-string v1, "check 720-720p(30p)"

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 93
    :cond_3
    const v0, 0x7f0b049a

    if-ne p2, v0, :cond_4

    .line 94
    const-string v0, "EM/WFD_VDO_CAP"

    const-string v1, "check 1080-720p(60p)"

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 95
    :cond_4
    const v0, 0x7f0b049b

    if-ne p2, v0, :cond_1

    .line 96
    const-string v0, "EM/WFD_VDO_CAP"

    const-string v1, "check 1080-720p(30p)"

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
