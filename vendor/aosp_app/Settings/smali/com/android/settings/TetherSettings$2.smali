.class Lcom/android/settings/TetherSettings$2;
.super Ljava/lang/Object;
.source "TetherSettings.java"

# interfaces
.implements Landroid/bluetooth/BluetoothDun$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/TetherSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/TetherSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/TetherSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 269
    iput-object p1, p0, Lcom/android/settings/TetherSettings$2;->this$0:Lcom/android/settings/TetherSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/bluetooth/BluetoothDun;)V
    .locals 1
    .parameter "proxy"

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/settings/TetherSettings$2;->this$0:Lcom/android/settings/TetherSettings;

    #getter for: Lcom/android/settings/TetherSettings;->mBluetoothDun:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v0}, Lcom/android/settings/TetherSettings;->access$100(Lcom/android/settings/TetherSettings;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 272
    return-void
.end method

.method public onServiceDisconnected()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 274
    iget-object v0, p0, Lcom/android/settings/TetherSettings$2;->this$0:Lcom/android/settings/TetherSettings;

    #getter for: Lcom/android/settings/TetherSettings;->mBluetoothDun:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v0}, Lcom/android/settings/TetherSettings;->access$100(Lcom/android/settings/TetherSettings;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 275
    iget-object v0, p0, Lcom/android/settings/TetherSettings$2;->this$0:Lcom/android/settings/TetherSettings;

    #setter for: Lcom/android/settings/TetherSettings;->mBluetoothDunProxy:Landroid/bluetooth/BluetoothDun;
    invoke-static {v0, v1}, Lcom/android/settings/TetherSettings;->access$202(Lcom/android/settings/TetherSettings;Landroid/bluetooth/BluetoothDun;)Landroid/bluetooth/BluetoothDun;

    .line 276
    return-void
.end method
