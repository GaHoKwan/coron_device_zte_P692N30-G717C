.class Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings$4;
.super Landroid/os/Handler;
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
    .line 181
    iput-object p1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings$4;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x1

    .line 184
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 200
    :goto_0
    return-void

    .line 188
    :sswitch_0
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings$4;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;->mFtpServerEnable:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;->access$300(Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 189
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings$4;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;->mFtpServerEnable:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;->access$300(Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 194
    :sswitch_1
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings$4;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;->mFtpServerEnable:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;->access$300(Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 195
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings$4;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;->mFtpServerEnable:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;->access$300(Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 184
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x19 -> :sswitch_1
    .end sparse-switch
.end method
