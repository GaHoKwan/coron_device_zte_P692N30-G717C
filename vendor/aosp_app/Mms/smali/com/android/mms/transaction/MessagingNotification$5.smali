.class final Lcom/android/mms/transaction/MessagingNotification$5;
.super Ljava/lang/Object;
.source "MessagingNotification.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/transaction/MessagingNotification;->isBluetoothHandsetOn(Landroid/content/Context;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2028
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 1
    .parameter "profile"
    .parameter "proxy"

    .prologue
    .line 2030
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2031
    check-cast p2, Landroid/bluetooth/BluetoothHeadset;

    .end local p2
    invoke-static {p2}, Lcom/android/mms/transaction/MessagingNotification;->access$402(Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    .line 2033
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 1
    .parameter "profile"

    .prologue
    .line 2035
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2036
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/mms/transaction/MessagingNotification;->access$402(Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    .line 2038
    :cond_0
    return-void
.end method
