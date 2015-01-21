.class Lcom/android/mms/transaction/CBMessageReceiverService$1;
.super Landroid/os/Handler;
.source "CBMessageReceiverService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/CBMessageReceiverService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/transaction/CBMessageReceiverService;


# direct methods
.method constructor <init>(Lcom/android/mms/transaction/CBMessageReceiverService;)V
    .locals 0
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/mms/transaction/CBMessageReceiverService$1;->this$0:Lcom/android/mms/transaction/CBMessageReceiverService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/mms/transaction/CBMessageReceiverService$1;->this$0:Lcom/android/mms/transaction/CBMessageReceiverService;

    iget-object v1, p0, Lcom/android/mms/transaction/CBMessageReceiverService$1;->this$0:Lcom/android/mms/transaction/CBMessageReceiverService;

    const v2, 0x7f0b02ff

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 110
    return-void
.end method
