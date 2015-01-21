.class Lcom/mediatek/calloption/SimSelectionCallOptionHandler$4;
.super Ljava/lang/Object;
.source "SimSelectionCallOptionHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/calloption/SimSelectionCallOptionHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/calloption/SimSelectionCallOptionHandler;


# direct methods
.method constructor <init>(Lcom/mediatek/calloption/SimSelectionCallOptionHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 577
    iput-object p1, p0, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$4;->this$0:Lcom/mediatek/calloption/SimSelectionCallOptionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 579
    const/4 v3, -0x1

    if-ne v3, p2, :cond_2

    move-object v0, p1

    .line 580
    check-cast v0, Landroid/app/AlertDialog;

    .line 581
    .local v0, alert:Landroid/app/AlertDialog;
    iget-object v3, p0, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$4;->this$0:Lcom/mediatek/calloption/SimSelectionCallOptionHandler;

    #getter for: Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->mAssociateSimMissingArgs:Lcom/mediatek/calloption/SimSelectionCallOptionHandler$AssociateSimMissingArgs;
    invoke-static {v3}, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->access$300(Lcom/mediatek/calloption/SimSelectionCallOptionHandler;)Lcom/mediatek/calloption/SimSelectionCallOptionHandler$AssociateSimMissingArgs;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 582
    iget-object v3, p0, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$4;->this$0:Lcom/mediatek/calloption/SimSelectionCallOptionHandler;

    #getter for: Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->mAssociateSimMissingArgs:Lcom/mediatek/calloption/SimSelectionCallOptionHandler$AssociateSimMissingArgs;
    invoke-static {v3}, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->access$300(Lcom/mediatek/calloption/SimSelectionCallOptionHandler;)Lcom/mediatek/calloption/SimSelectionCallOptionHandler$AssociateSimMissingArgs;

    move-result-object v3

    iget-object v3, v3, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$AssociateSimMissingArgs;->mViaSimInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    if-eqz v3, :cond_1

    .line 584
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 585
    iget-object v3, p0, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$4;->this$0:Lcom/mediatek/calloption/SimSelectionCallOptionHandler;

    #getter for: Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->mAssociateSimMissingArgs:Lcom/mediatek/calloption/SimSelectionCallOptionHandler$AssociateSimMissingArgs;
    invoke-static {v3}, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->access$300(Lcom/mediatek/calloption/SimSelectionCallOptionHandler;)Lcom/mediatek/calloption/SimSelectionCallOptionHandler$AssociateSimMissingArgs;

    move-result-object v3

    iget-object v3, v3, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$AssociateSimMissingArgs;->mViaSimInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    iget v2, v3, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    .line 586
    .local v2, slot:I
    iget-object v3, p0, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$4;->this$0:Lcom/mediatek/calloption/SimSelectionCallOptionHandler;

    #getter for: Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->mRequest:Lcom/mediatek/calloption/Request;
    invoke-static {v3}, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->access$200(Lcom/mediatek/calloption/SimSelectionCallOptionHandler;)Lcom/mediatek/calloption/Request;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/calloption/Request;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "com.android.phone.extra.slot"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 587
    iget-object v3, p0, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$4;->this$0:Lcom/mediatek/calloption/SimSelectionCallOptionHandler;

    iget-object v3, v3, Lcom/mediatek/calloption/CallOptionBaseHandler;->mSuccessor:Lcom/mediatek/calloption/CallOptionBaseHandler;

    if-eqz v3, :cond_0

    .line 588
    iget-object v3, p0, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$4;->this$0:Lcom/mediatek/calloption/SimSelectionCallOptionHandler;

    iget-object v3, v3, Lcom/mediatek/calloption/CallOptionBaseHandler;->mSuccessor:Lcom/mediatek/calloption/CallOptionBaseHandler;

    iget-object v4, p0, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$4;->this$0:Lcom/mediatek/calloption/SimSelectionCallOptionHandler;

    #getter for: Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->mRequest:Lcom/mediatek/calloption/Request;
    invoke-static {v4}, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->access$200(Lcom/mediatek/calloption/SimSelectionCallOptionHandler;)Lcom/mediatek/calloption/Request;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mediatek/calloption/CallOptionBaseHandler;->handleRequest(Lcom/mediatek/calloption/Request;)V

    .line 608
    .end local v0           #alert:Landroid/app/AlertDialog;
    .end local v2           #slot:I
    :cond_0
    :goto_0
    return-void

    .line 591
    .restart local v0       #alert:Landroid/app/AlertDialog;
    :cond_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 593
    iget-object v3, p0, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$4;->this$0:Lcom/mediatek/calloption/SimSelectionCallOptionHandler;

    #calls: Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->doSipCallOptionHandle()V
    invoke-static {v3}, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->access$100(Lcom/mediatek/calloption/SimSelectionCallOptionHandler;)V

    goto :goto_0

    .line 596
    .end local v0           #alert:Landroid/app/AlertDialog;
    :cond_2
    const/4 v3, -0x2

    if-ne v3, p2, :cond_0

    .line 597
    iget-object v3, p0, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$4;->this$0:Lcom/mediatek/calloption/SimSelectionCallOptionHandler;

    #getter for: Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->mAssociateSimMissingArgs:Lcom/mediatek/calloption/SimSelectionCallOptionHandler$AssociateSimMissingArgs;
    invoke-static {v3}, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->access$300(Lcom/mediatek/calloption/SimSelectionCallOptionHandler;)Lcom/mediatek/calloption/SimSelectionCallOptionHandler$AssociateSimMissingArgs;

    move-result-object v3

    iget v3, v3, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$AssociateSimMissingArgs;->type:I

    if-nez v3, :cond_3

    .line 598
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    goto :goto_0

    .line 599
    :cond_3
    const/4 v3, 0x1

    iget-object v4, p0, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$4;->this$0:Lcom/mediatek/calloption/SimSelectionCallOptionHandler;

    #getter for: Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->mAssociateSimMissingArgs:Lcom/mediatek/calloption/SimSelectionCallOptionHandler$AssociateSimMissingArgs;
    invoke-static {v4}, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->access$300(Lcom/mediatek/calloption/SimSelectionCallOptionHandler;)Lcom/mediatek/calloption/SimSelectionCallOptionHandler$AssociateSimMissingArgs;

    move-result-object v4

    iget v4, v4, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$AssociateSimMissingArgs;->type:I

    if-ne v3, v4, :cond_0

    .line 602
    new-instance v1, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;

    iget-object v3, p0, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$4;->this$0:Lcom/mediatek/calloption/SimSelectionCallOptionHandler;

    invoke-direct {v1, v3}, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;-><init>(Lcom/mediatek/calloption/SimSelectionCallOptionHandler;)V

    .line 603
    .local v1, callbackArgs:Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;
    iget-object v3, p0, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$4;->this$0:Lcom/mediatek/calloption/SimSelectionCallOptionHandler;

    #getter for: Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->mAssociateSimMissingArgs:Lcom/mediatek/calloption/SimSelectionCallOptionHandler$AssociateSimMissingArgs;
    invoke-static {v3}, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->access$300(Lcom/mediatek/calloption/SimSelectionCallOptionHandler;)Lcom/mediatek/calloption/SimSelectionCallOptionHandler$AssociateSimMissingArgs;

    move-result-object v3

    iget-wide v3, v3, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$AssociateSimMissingArgs;->suggested:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v1, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;->args:Ljava/lang/Object;

    .line 604
    const/4 v3, 0x5

    iput v3, v1, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;->reason:I

    .line 605
    iget-object v3, p0, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$4;->this$0:Lcom/mediatek/calloption/SimSelectionCallOptionHandler;

    invoke-virtual {v3, v1}, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->onMakeCall(Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;)V

    goto :goto_0
.end method
