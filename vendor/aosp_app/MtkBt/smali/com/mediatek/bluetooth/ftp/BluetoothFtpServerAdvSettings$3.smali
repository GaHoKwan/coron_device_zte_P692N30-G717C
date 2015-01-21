.class Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings$3;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothFtpServerAdvSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;


# direct methods
.method constructor <init>(Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 159
    iput-object p1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings$3;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 161
    const-string v1, "android.bluetooth.adapter.extra.STATE"

    const/high16 v2, -0x8000

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 163
    .local v0, state:I
    packed-switch v0, :pswitch_data_0

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 165
    :pswitch_0
    iget-object v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings$3;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;->mFtpServer:Landroid/bluetooth/IBluetoothFtpServer;
    invoke-static {v1}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;->access$100(Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;)Landroid/bluetooth/IBluetoothFtpServer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 166
    iget-object v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings$3;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;->mFtpServerEnable:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;->access$300(Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 171
    :pswitch_1
    iget-object v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings$3;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;->mFtpServerEnable:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;->access$300(Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 163
    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
