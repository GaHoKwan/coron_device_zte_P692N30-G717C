.class Lcom/mediatek/engineermode/modemtest/ModemTestActivity$13;
.super Ljava/lang/Object;
.source "ModemTestActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 654
    iput-object p1, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$13;->this$0:Lcom/mediatek/engineermode/modemtest/ModemTestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 659
    iget-object v0, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$13;->this$0:Lcom/mediatek/engineermode/modemtest/ModemTestActivity;

    #calls: Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->attachOrDetachGprs()V
    invoke-static {v0}, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->access$1400(Lcom/mediatek/engineermode/modemtest/ModemTestActivity;)V

    .line 660
    iget-object v0, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$13;->this$0:Lcom/mediatek/engineermode/modemtest/ModemTestActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "4,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$13;->this$0:Lcom/mediatek/engineermode/modemtest/ModemTestActivity;

    #getter for: Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mOperatorOption:I
    invoke-static {v2}, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->access$1300(Lcom/mediatek/engineermode/modemtest/ModemTestActivity;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    #calls: Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->sendATCommad(Ljava/lang/String;I)V
    invoke-static {v0, v1, v2}, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->access$300(Lcom/mediatek/engineermode/modemtest/ModemTestActivity;Ljava/lang/String;I)V

    .line 663
    iget-object v0, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$13;->this$0:Lcom/mediatek/engineermode/modemtest/ModemTestActivity;

    #getter for: Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mCurrentMode:I
    invoke-static {v0}, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->access$400(Lcom/mediatek/engineermode/modemtest/ModemTestActivity;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 664
    iget-object v0, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$13;->this$0:Lcom/mediatek/engineermode/modemtest/ModemTestActivity;

    const/4 v1, 0x1

    #calls: Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->setGprsTransferType(I)V
    invoke-static {v0, v1}, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->access$500(Lcom/mediatek/engineermode/modemtest/ModemTestActivity;I)V

    .line 666
    :cond_0
    return-void
.end method
