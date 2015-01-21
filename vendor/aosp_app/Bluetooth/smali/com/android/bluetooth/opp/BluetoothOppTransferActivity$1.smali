.class Lcom/android/bluetooth/opp/BluetoothOppTransferActivity$1;
.super Ljava/lang/Object;
.source "BluetoothOppTransferActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 411
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 415
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;
    invoke-static {v1}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->access$200(Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;)Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->retryTransfer(Landroid/content/Context;Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;)V

    .line 416
    return-void
.end method
