.class Lcom/mediatek/engineermode/GPRS$4;
.super Ljava/lang/Object;
.source "GPRS.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/engineermode/GPRS;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/GPRS;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/GPRS;)V
    .locals 0
    .parameter

    .prologue
    .line 335
    iput-object p1, p0, Lcom/mediatek/engineermode/GPRS$4;->this$0:Lcom/mediatek/engineermode/GPRS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 4
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 337
    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    const v1, 0x7f0b01a3

    if-ne v0, v1, :cond_0

    .line 338
    iget-object v0, p0, Lcom/mediatek/engineermode/GPRS$4;->this$0:Lcom/mediatek/engineermode/GPRS;

    #setter for: Lcom/mediatek/engineermode/GPRS;->mPDPSelect:I
    invoke-static {v0, v2}, Lcom/mediatek/engineermode/GPRS;->access$302(Lcom/mediatek/engineermode/GPRS;I)I

    .line 339
    iget-object v0, p0, Lcom/mediatek/engineermode/GPRS$4;->this$0:Lcom/mediatek/engineermode/GPRS;

    #getter for: Lcom/mediatek/engineermode/GPRS;->mRaGpUsageSelect:Landroid/widget/RadioGroup;
    invoke-static {v0}, Lcom/mediatek/engineermode/GPRS;->access$400(Lcom/mediatek/engineermode/GPRS;)Landroid/widget/RadioGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->clearCheck()V

    .line 340
    iget-object v0, p0, Lcom/mediatek/engineermode/GPRS$4;->this$0:Lcom/mediatek/engineermode/GPRS;

    #getter for: Lcom/mediatek/engineermode/GPRS;->mRaGpUsageSelect:Landroid/widget/RadioGroup;
    invoke-static {v0}, Lcom/mediatek/engineermode/GPRS;->access$400(Lcom/mediatek/engineermode/GPRS;)Landroid/widget/RadioGroup;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 341
    iget-object v0, p0, Lcom/mediatek/engineermode/GPRS$4;->this$0:Lcom/mediatek/engineermode/GPRS;

    #getter for: Lcom/mediatek/engineermode/GPRS;->mRaGpUsageSelect:Landroid/widget/RadioGroup;
    invoke-static {v0}, Lcom/mediatek/engineermode/GPRS;->access$400(Lcom/mediatek/engineermode/GPRS;)Landroid/widget/RadioGroup;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 343
    :cond_0
    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    const v1, 0x7f0b01a4

    if-ne v0, v1, :cond_1

    .line 344
    iget-object v0, p0, Lcom/mediatek/engineermode/GPRS$4;->this$0:Lcom/mediatek/engineermode/GPRS;

    #setter for: Lcom/mediatek/engineermode/GPRS;->mPDPSelect:I
    invoke-static {v0, v3}, Lcom/mediatek/engineermode/GPRS;->access$302(Lcom/mediatek/engineermode/GPRS;I)I

    .line 345
    iget-object v0, p0, Lcom/mediatek/engineermode/GPRS$4;->this$0:Lcom/mediatek/engineermode/GPRS;

    #getter for: Lcom/mediatek/engineermode/GPRS;->mRaGpUsageSelect:Landroid/widget/RadioGroup;
    invoke-static {v0}, Lcom/mediatek/engineermode/GPRS;->access$400(Lcom/mediatek/engineermode/GPRS;)Landroid/widget/RadioGroup;

    move-result-object v0

    const v1, 0x7f0b01a7

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 346
    iget-object v0, p0, Lcom/mediatek/engineermode/GPRS$4;->this$0:Lcom/mediatek/engineermode/GPRS;

    #getter for: Lcom/mediatek/engineermode/GPRS;->mRaGpUsageSelect:Landroid/widget/RadioGroup;
    invoke-static {v0}, Lcom/mediatek/engineermode/GPRS;->access$400(Lcom/mediatek/engineermode/GPRS;)Landroid/widget/RadioGroup;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 347
    iget-object v0, p0, Lcom/mediatek/engineermode/GPRS$4;->this$0:Lcom/mediatek/engineermode/GPRS;

    #getter for: Lcom/mediatek/engineermode/GPRS;->mRaGpUsageSelect:Landroid/widget/RadioGroup;
    invoke-static {v0}, Lcom/mediatek/engineermode/GPRS;->access$400(Lcom/mediatek/engineermode/GPRS;)Landroid/widget/RadioGroup;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 349
    :cond_1
    return-void
.end method
