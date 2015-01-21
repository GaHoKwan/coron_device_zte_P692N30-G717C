.class Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$2;
.super Ljava/lang/Object;
.source "StorageVolumePreferenceCategory.java"

# interfaces
.implements Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;)V
    .locals 0
    .parameter

    .prologue
    .line 792
    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$2;->this$0:Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateApproximate(Lcom/android/settings/deviceinfo/StorageMeasurement;JJJJJJJJJ)V
    .locals 4
    .parameter "meas"
    .parameter "totalSize"
    .parameter "availSize"
    .parameter "InterTotalSize"
    .parameter "FirmwareTotalSize"
    .parameter "FirmwareAvailSize"
    .parameter "UserTotalSize"
    .parameter "UserAvailSize"
    .parameter "VirtualSdTotalSize"
    .parameter "VirtualSdAvailSize"

    .prologue
    .line 799
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$2;->this$0:Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;

    #getter for: Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUpdateHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->access$100(Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    const/16 v2, 0x9

    new-array v2, v2, [J

    const/4 v3, 0x0

    aput-wide p2, v2, v3

    const/4 v3, 0x1

    aput-wide p4, v2, v3

    const/4 v3, 0x2

    aput-wide p6, v2, v3

    const/4 v3, 0x3

    aput-wide p8, v2, v3

    const/4 v3, 0x4

    aput-wide p10, v2, v3

    const/4 v3, 0x5

    aput-wide p12, v2, v3

    const/4 v3, 0x6

    aput-wide p14, v2, v3

    const/4 v3, 0x7

    aput-wide p16, v2, v3

    const/16 v3, 0x8

    aput-wide p18, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 804
    return-void
.end method

.method public updateDetails(Lcom/android/settings/deviceinfo/StorageMeasurement;Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;)V
    .locals 2
    .parameter "meas"
    .parameter "details"

    .prologue
    .line 809
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$2;->this$0:Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;

    #getter for: Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUpdateHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->access$100(Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 810
    return-void
.end method
