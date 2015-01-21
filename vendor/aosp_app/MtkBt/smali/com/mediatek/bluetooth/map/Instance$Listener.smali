.class public interface abstract Lcom/mediatek/bluetooth/map/Instance$Listener;
.super Ljava/lang/Object;
.source "Instance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetooth/map/Instance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onInstanceChanged(Landroid/bluetooth/BluetoothDevice;Lcom/mediatek/bluetooth/map/cache/EventReport;)V
.end method

.method public abstract onInstanceReportDisabled(I)V
.end method
