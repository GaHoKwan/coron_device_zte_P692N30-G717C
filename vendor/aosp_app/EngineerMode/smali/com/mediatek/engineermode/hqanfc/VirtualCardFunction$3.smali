.class Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction$3;
.super Ljava/lang/Object;
.source "VirtualCardFunction.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;)V
    .locals 0
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction$3;->this$0:Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "checked"

    .prologue
    .line 121
    const-string v0, "EM/HQA/NFC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[VirtualCardFunction]onCheckedChanged view is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " value is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction$3;->this$0:Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;

    #getter for: Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;->mSettingsCkBoxs:[Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;->access$500(Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;)[Landroid/widget/CheckBox;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction$3;->this$0:Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;

    #getter for: Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;->mSettingsCkBoxs:[Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;->access$500(Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;)[Landroid/widget/CheckBox;

    move-result-object v0

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 137
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction$3;->this$0:Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;

    #getter for: Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;->mSettingsCkBoxs:[Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;->access$500(Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;)[Landroid/widget/CheckBox;

    move-result-object v0

    const/4 v1, 0x4

    aget-object v0, v0, v1

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 139
    :cond_0
    return-void
.end method
