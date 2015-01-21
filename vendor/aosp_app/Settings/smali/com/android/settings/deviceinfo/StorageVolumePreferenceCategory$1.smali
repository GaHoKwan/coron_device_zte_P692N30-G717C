.class Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$1;
.super Landroid/os/Handler;
.source "StorageVolumePreferenceCategory.java"


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
    .line 128
    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$1;->this$0:Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 29
    .parameter "msg"

    .prologue
    .line 131
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 167
    :goto_0
    return-void

    .line 133
    :pswitch_0
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, [J

    move-object/from16 v22, v4

    check-cast v22, [J

    .line 136
    .local v22, size:[J
    const/4 v4, 0x0

    aget-wide v23, v22, v4

    .line 137
    .local v23, totalSize:J
    const/4 v4, 0x1

    aget-wide v19, v22, v4

    .line 138
    .local v19, availSize:J
    const/4 v4, 0x2

    aget-wide v5, v22, v4

    .line 139
    .local v5, interTotalSize:J
    const/4 v4, 0x3

    aget-wide v7, v22, v4

    .line 140
    .local v7, firmwareTotalSize:J
    const/4 v4, 0x4

    aget-wide v9, v22, v4

    .line 141
    .local v9, firmwareAvailSize:J
    const/4 v4, 0x5

    aget-wide v11, v22, v4

    .line 142
    .local v11, userTotalSize:J
    const/4 v4, 0x6

    aget-wide v13, v22, v4

    .line 143
    .local v13, userAvailSize:J
    const/4 v4, 0x7

    aget-wide v15, v22, v4

    .line 144
    .local v15, virtualSdTotalSize:J
    const/16 v4, 0x8

    aget-wide v17, v22, v4

    .line 146
    .local v17, virtualSdAvailSize:J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$1;->this$0:Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;

    #getter for: Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mIsTotalMemory:Z
    invoke-static {v4}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->access$000(Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 147
    const-string v4, "StorageVolumePreferenceCategory"

    const-string v25, "Normal"

    move-object/from16 v0, v25

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$1;->this$0:Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;

    const/16 v25, 0x0

    aget-wide v25, v22, v25

    const/16 v27, 0x1

    aget-wide v27, v22, v27

    move-wide/from16 v0, v25

    move-wide/from16 v2, v27

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->updateApproximate(JJ)V

    goto :goto_0

    .line 150
    :cond_0
    const-string v4, "StorageVolumePreferenceCategory"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "TotalMemory Count- data "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    const-string v4, "StorageVolumePreferenceCategory"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "TotalMemory Count- firmware "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    const-string v4, "StorageVolumePreferenceCategory"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "TotalMemory Count-  user "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const-string v4, "StorageVolumePreferenceCategory"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "TotalMemory Count- visualsd "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    const-string v4, "StorageVolumePreferenceCategory"

    const-string v25, "InternalStorage"

    move-object/from16 v0, v25

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$1;->this$0:Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;

    invoke-virtual/range {v4 .. v18}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->updateInternalStorage(JJJJJJJ)V

    goto/16 :goto_0

    .line 163
    .end local v5           #interTotalSize:J
    .end local v7           #firmwareTotalSize:J
    .end local v9           #firmwareAvailSize:J
    .end local v11           #userTotalSize:J
    .end local v13           #userAvailSize:J
    .end local v15           #virtualSdTotalSize:J
    .end local v17           #virtualSdAvailSize:J
    .end local v19           #availSize:J
    .end local v22           #size:[J
    .end local v23           #totalSize:J
    :pswitch_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;

    .line 164
    .local v21, details:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$1;->this$0:Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->updateDetails(Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;)V

    goto/16 :goto_0

    .line 131
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
