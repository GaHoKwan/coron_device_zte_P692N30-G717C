.class Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTest$1;
.super Landroid/os/Handler;
.source "RfDesenseTxTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTest;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTest;)V
    .locals 0
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTest$1;->this$0:Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTest;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 89
    iget v2, p1, Landroid/os/Message;->what:I

    if-nez v2, :cond_1

    .line 90
    iget-object v2, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTest$1;->this$0:Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTest;

    iget-object v2, v2, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTest;->mIndicator:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_0

    .line 91
    iget-object v2, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTest$1;->this$0:Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTest;

    iget-object v2, v2, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTest;->mIndicator:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 94
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 96
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2

    .line 97
    iget-object v2, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTest$1;->this$0:Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTest;

    #calls: Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTest;->start()V
    invoke-static {v2}, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTest;->access$000(Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTest;)V

    .line 98
    const-string v1, "Enter flight mode."

    .line 103
    .local v1, text:Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTest$1;->this$0:Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTest;

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 105
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v1           #text:Ljava/lang/String;
    :cond_1
    return-void

    .line 100
    .restart local v0       #ar:Landroid/os/AsyncResult;
    :cond_2
    const-string v1, "Failed to enter flight mode."

    .restart local v1       #text:Ljava/lang/String;
    goto :goto_0
.end method
