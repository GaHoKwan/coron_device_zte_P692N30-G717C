.class Lcom/mediatek/bluetooth/bpp/BluetoothBppEntryActivity$1;
.super Ljava/lang/Object;
.source "BluetoothBppEntryActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/bluetooth/bpp/BluetoothBppEntryActivity;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/bluetooth/bpp/BluetoothBppEntryActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/bluetooth/bpp/BluetoothBppEntryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 279
    iput-object p1, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppEntryActivity$1;->this$0:Lcom/mediatek/bluetooth/bpp/BluetoothBppEntryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 281
    iget-object v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppEntryActivity$1;->this$0:Lcom/mediatek/bluetooth/bpp/BluetoothBppEntryActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 282
    return-void
.end method
