.class Lcom/mediatek/engineermode/cfu/CfuActivity$2;
.super Ljava/lang/Object;
.source "CfuActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/engineermode/cfu/CfuActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/cfu/CfuActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/cfu/CfuActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 183
    iput-object p1, p0, Lcom/mediatek/engineermode/cfu/CfuActivity$2;->this$0:Lcom/mediatek/engineermode/cfu/CfuActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 186
    iget-object v0, p0, Lcom/mediatek/engineermode/cfu/CfuActivity$2;->this$0:Lcom/mediatek/engineermode/cfu/CfuActivity;

    #getter for: Lcom/mediatek/engineermode/cfu/CfuActivity;->mRadioBtnDe:Landroid/widget/RadioButton;
    invoke-static {v0}, Lcom/mediatek/engineermode/cfu/CfuActivity;->access$000(Lcom/mediatek/engineermode/cfu/CfuActivity;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/mediatek/engineermode/cfu/CfuActivity$2;->this$0:Lcom/mediatek/engineermode/cfu/CfuActivity;

    const/4 v1, 0x2

    #calls: Lcom/mediatek/engineermode/cfu/CfuActivity;->sendAtCommand(I)V
    invoke-static {v0, v1}, Lcom/mediatek/engineermode/cfu/CfuActivity;->access$400(Lcom/mediatek/engineermode/cfu/CfuActivity;I)V

    .line 188
    const-string v0, "CFU"

    const-string v1, "Set Query CFU Status : default"

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    :goto_0
    return-void

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/mediatek/engineermode/cfu/CfuActivity$2;->this$0:Lcom/mediatek/engineermode/cfu/CfuActivity;

    #getter for: Lcom/mediatek/engineermode/cfu/CfuActivity;->mRadioBtnOn:Landroid/widget/RadioButton;
    invoke-static {v0}, Lcom/mediatek/engineermode/cfu/CfuActivity;->access$200(Lcom/mediatek/engineermode/cfu/CfuActivity;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 190
    iget-object v0, p0, Lcom/mediatek/engineermode/cfu/CfuActivity$2;->this$0:Lcom/mediatek/engineermode/cfu/CfuActivity;

    const/4 v1, 0x3

    #calls: Lcom/mediatek/engineermode/cfu/CfuActivity;->sendAtCommand(I)V
    invoke-static {v0, v1}, Lcom/mediatek/engineermode/cfu/CfuActivity;->access$400(Lcom/mediatek/engineermode/cfu/CfuActivity;I)V

    .line 191
    const-string v0, "CFU"

    const-string v1, "Set Query CFU Status : on"

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 192
    :cond_1
    iget-object v0, p0, Lcom/mediatek/engineermode/cfu/CfuActivity$2;->this$0:Lcom/mediatek/engineermode/cfu/CfuActivity;

    #getter for: Lcom/mediatek/engineermode/cfu/CfuActivity;->mRadioBtnOff:Landroid/widget/RadioButton;
    invoke-static {v0}, Lcom/mediatek/engineermode/cfu/CfuActivity;->access$100(Lcom/mediatek/engineermode/cfu/CfuActivity;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 193
    iget-object v0, p0, Lcom/mediatek/engineermode/cfu/CfuActivity$2;->this$0:Lcom/mediatek/engineermode/cfu/CfuActivity;

    const/4 v1, 0x4

    #calls: Lcom/mediatek/engineermode/cfu/CfuActivity;->sendAtCommand(I)V
    invoke-static {v0, v1}, Lcom/mediatek/engineermode/cfu/CfuActivity;->access$400(Lcom/mediatek/engineermode/cfu/CfuActivity;I)V

    .line 194
    const-string v0, "CFU"

    const-string v1, "Set Query CFU Status : off"

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 196
    :cond_2
    iget-object v0, p0, Lcom/mediatek/engineermode/cfu/CfuActivity$2;->this$0:Lcom/mediatek/engineermode/cfu/CfuActivity;

    const/16 v1, 0xa

    #calls: Lcom/mediatek/engineermode/cfu/CfuActivity;->createDialog(I)V
    invoke-static {v0, v1}, Lcom/mediatek/engineermode/cfu/CfuActivity;->access$300(Lcom/mediatek/engineermode/cfu/CfuActivity;I)V

    .line 197
    const-string v0, "CFU"

    const-string v1, "Set Query CFU Status : off"

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
