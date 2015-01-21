.class Lcom/mediatek/bluetooth/bpp/BluetoothBppEntryActivity$FileOperThread;
.super Ljava/lang/Thread;
.source "BluetoothBppEntryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetooth/bpp/BluetoothBppEntryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FileOperThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/bluetooth/bpp/BluetoothBppEntryActivity;


# direct methods
.method public constructor <init>(Lcom/mediatek/bluetooth/bpp/BluetoothBppEntryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppEntryActivity$FileOperThread;->this$0:Lcom/mediatek/bluetooth/bpp/BluetoothBppEntryActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 105
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppEntryActivity$FileOperThread;->this$0:Lcom/mediatek/bluetooth/bpp/BluetoothBppEntryActivity;

    #calls: Lcom/mediatek/bluetooth/bpp/BluetoothBppEntryActivity;->getFileInfo()I
    invoke-static {v0}, Lcom/mediatek/bluetooth/bpp/BluetoothBppEntryActivity;->access$100(Lcom/mediatek/bluetooth/bpp/BluetoothBppEntryActivity;)I

    move-result v0

    invoke-static {v0}, Lcom/mediatek/bluetooth/bpp/BluetoothBppEntryActivity;->access$002(I)I

    .line 110
    return-void
.end method
