.class Lcom/android/bluetooth/btservice/AdapterService$2$1;
.super Ljava/lang/Object;
.source "AdapterService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/bluetooth/btservice/AdapterService$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/bluetooth/btservice/AdapterService$2;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/btservice/AdapterService$2;)V
    .locals 0
    .parameter

    .prologue
    .line 522
    iput-object p1, p0, Lcom/android/bluetooth/btservice/AdapterService$2$1;->this$1:Lcom/android/bluetooth/btservice/AdapterService$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 525
    const-string v0, "BluetoothAdapterService"

    const-string v1, "WFD Concurrency: onDismiss()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService$2$1;->this$1:Lcom/android/bluetooth/btservice/AdapterService$2;

    iget-object v0, v0, Lcom/android/bluetooth/btservice/AdapterService$2;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    #getter for: Lcom/android/bluetooth/btservice/AdapterService;->mWfdHandlerThread:Landroid/os/HandlerThread;
    invoke-static {v0}, Lcom/android/bluetooth/btservice/AdapterService;->access$500(Lcom/android/bluetooth/btservice/AdapterService;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 527
    return-void
.end method
