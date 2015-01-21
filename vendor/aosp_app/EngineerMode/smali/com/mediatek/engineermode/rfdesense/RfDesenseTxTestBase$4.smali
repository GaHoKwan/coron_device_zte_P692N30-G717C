.class Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$4;
.super Ljava/lang/Object;
.source "RfDesenseTxTestBase.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;)V
    .locals 0
    .parameter

    .prologue
    .line 321
    iput-object p1, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$4;->this$0:Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x3

    .line 324
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$4;->this$0:Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;

    const-string v1, "AT+CFUN=1,1"

    const-string v2, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;->sendAtCommand(Ljava/lang/String;Ljava/lang/String;I)V

    .line 326
    iget-object v0, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$4;->this$0:Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;

    invoke-virtual {v0}, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;->disableAllButtons()V

    .line 327
    iget-object v0, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$4;->this$0:Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;

    iput v3, v0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;->mState:I

    .line 328
    iget-object v0, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$4;->this$0:Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 330
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 331
    return-void
.end method
