.class Lcom/mediatek/engineermode/modemtest/ModemTestActivity$14;
.super Ljava/lang/Object;
.source "ModemTestActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/modemtest/ModemTestActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/modemtest/ModemTestActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 637
    iput-object p1, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$14;->this$0:Lcom/mediatek/engineermode/modemtest/ModemTestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 4
    .parameter "dialog"
    .parameter "whichButton"
    .parameter "isChecked"

    .prologue
    const/4 v3, 0x1

    .line 642
    const-string v0, "ModemTest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "whichButton = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    const-string v0, "ModemTest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isChecked = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    if-eqz p3, :cond_0

    .line 645
    iget-object v0, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$14;->this$0:Lcom/mediatek/engineermode/modemtest/ModemTestActivity;

    iget-object v1, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$14;->this$0:Lcom/mediatek/engineermode/modemtest/ModemTestActivity;

    #getter for: Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mOperatorOption:I
    invoke-static {v1}, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->access$1300(Lcom/mediatek/engineermode/modemtest/ModemTestActivity;)I

    move-result v1

    shl-int v2, v3, p2

    add-int/2addr v1, v2

    #setter for: Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mOperatorOption:I
    invoke-static {v0, v1}, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->access$1302(Lcom/mediatek/engineermode/modemtest/ModemTestActivity;I)I

    .line 651
    :goto_0
    const-string v0, "ModemTest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOperatorOption = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$14;->this$0:Lcom/mediatek/engineermode/modemtest/ModemTestActivity;

    #getter for: Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mOperatorOption:I
    invoke-static {v2}, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->access$1300(Lcom/mediatek/engineermode/modemtest/ModemTestActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    return-void

    .line 648
    :cond_0
    iget-object v0, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$14;->this$0:Lcom/mediatek/engineermode/modemtest/ModemTestActivity;

    iget-object v1, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$14;->this$0:Lcom/mediatek/engineermode/modemtest/ModemTestActivity;

    #getter for: Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mOperatorOption:I
    invoke-static {v1}, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->access$1300(Lcom/mediatek/engineermode/modemtest/ModemTestActivity;)I

    move-result v1

    shl-int v2, v3, p2

    sub-int/2addr v1, v2

    #setter for: Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mOperatorOption:I
    invoke-static {v0, v1}, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->access$1302(Lcom/mediatek/engineermode/modemtest/ModemTestActivity;I)I

    goto :goto_0
.end method
