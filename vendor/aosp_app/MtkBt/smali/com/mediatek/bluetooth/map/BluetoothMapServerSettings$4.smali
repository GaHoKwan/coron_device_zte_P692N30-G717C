.class Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings$4;
.super Ljava/lang/Object;
.source "BluetoothMapServerSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;


# direct methods
.method constructor <init>(Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 195
    iput-object p1, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings$4;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 197
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 198
    return-void
.end method
