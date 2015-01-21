.class public Lcom/mediatek/thermalmanager/TzDeviceActivity;
.super Landroid/app/Activity;
.source "TzDeviceActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private adapter:Landroid/widget/SimpleAdapter;

.field private list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mFileContent:[Ljava/lang/String;

.field private mFileName:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 60
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/thermalmanager/TzDeviceActivity;->list:Ljava/util/ArrayList;

    .line 263
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Temperature: "

    aput-object v1, v0, v3

    const-string v1, "Mode: "

    aput-object v1, v0, v4

    const-string v1, "ZZZ mdegree C <type>"

    aput-object v1, v0, v5

    const-string v1, "YYY mdegree C <type>"

    aput-object v1, v0, v6

    const-string v1, "XXX mdegree C <type>"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "WWW mdegree C <type>"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "ZZZ mdegree C <type>"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "YYY mdegree C <type>"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "XXX mdegree C <type>"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "WWW mdegree C <type>"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "ZZZ mdegree C <type>"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "YYY mdegree C <type>"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "XXX mdegree C <type>"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "WWW mdegree C <type>"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/mediatek/thermalmanager/TzDeviceActivity;->mFileName:[Ljava/lang/String;

    .line 280
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "50 degree C"

    aput-object v1, v0, v3

    const-string v1, "kernel"

    aput-object v1, v0, v4

    const-string v1, "cooler 4"

    aput-object v1, v0, v5

    const-string v1, "cooler 3"

    aput-object v1, v0, v6

    const-string v1, "cooler 2"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "cooler 1"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "cooler 4"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "cooler 3"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "cooler 2"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "cooler 1"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "cooler 4"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "cooler 3"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "cooler 2"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "cooler 1"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/mediatek/thermalmanager/TzDeviceActivity;->mFileContent:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 27
    .parameter "savedInstanceState"

    .prologue
    .line 67
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    const v2, 0x7f030003

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setContentView(I)V

    .line 70
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v17

    .line 71
    .local v17, intent:Landroid/content/Intent;
    const-string v24, ""

    .line 74
    .local v24, type:Ljava/lang/String;
    const v2, 0x7f05000e

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    .line 76
    .local v20, textView_this:Landroid/widget/TextView;
    const-string v2, "tz_sysfs_path"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 78
    new-instance v26, Ljava/io/File;

    const-string v2, "tz_sysfs_path"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 79
    .local v26, tz_dir:Ljava/io/File;
    const-string v2, "TzDeviceActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sysfs_path: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "tz_sysfs_path"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    new-instance v8, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v8, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 92
    .local v8, a:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 95
    :try_start_0
    new-instance v15, Ljava/io/FileInputStream;

    invoke-direct {v15, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 96
    .local v15, fs:Ljava/io/FileInputStream;
    new-instance v13, Ljava/io/DataInputStream;

    invoke-direct {v13, v15}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 97
    .local v13, ds:Ljava/io/DataInputStream;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v13}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 98
    invoke-virtual {v13}, Ljava/io/FilterInputStream;->close()V

    .line 99
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    .line 111
    .end local v13           #ds:Ljava/io/DataInputStream;
    .end local v15           #fs:Ljava/io/FileInputStream;
    :goto_0
    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    const v2, 0x7f05000f

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/ListView;

    .line 116
    .local v25, tz_device_lv:Landroid/widget/ListView;
    new-instance v9, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/temp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v9, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 117
    .local v9, b:Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 120
    :try_start_1
    new-instance v15, Ljava/io/FileInputStream;

    invoke-direct {v15, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 121
    .restart local v15       #fs:Ljava/io/FileInputStream;
    new-instance v13, Ljava/io/DataInputStream;

    invoke-direct {v13, v15}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 122
    .restart local v13       #ds:Ljava/io/DataInputStream;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/thermalmanager/TzDeviceActivity;->mFileContent:[Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mdegree C"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 123
    invoke-virtual {v13}, Ljava/io/FilterInputStream;->close()V

    .line 124
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 137
    .end local v13           #ds:Ljava/io/DataInputStream;
    .end local v15           #fs:Ljava/io/FileInputStream;
    :goto_1
    new-instance v10, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/mode"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v10, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 138
    .local v10, c:Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 141
    :try_start_2
    new-instance v15, Ljava/io/FileInputStream;

    invoke-direct {v15, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 142
    .restart local v15       #fs:Ljava/io/FileInputStream;
    new-instance v13, Ljava/io/DataInputStream;

    invoke-direct {v13, v15}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 143
    .restart local v13       #ds:Ljava/io/DataInputStream;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/thermalmanager/TzDeviceActivity;->mFileContent:[Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v13}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 144
    invoke-virtual {v13}, Ljava/io/FilterInputStream;->close()V

    .line 145
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 157
    .end local v13           #ds:Ljava/io/DataInputStream;
    .end local v15           #fs:Ljava/io/FileInputStream;
    :goto_2
    const/16 v16, 0x0

    .line 159
    .local v16, i:I
    :goto_3
    const/16 v2, 0xc

    move/from16 v0, v16

    if-ge v0, v2, :cond_0

    .line 162
    new-instance v22, Ljava/io/File;

    new-instance v2, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/trip_point_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_temp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 163
    .local v22, trip_point_i_temp:Ljava/io/File;
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_6

    .line 208
    .end local v22           #trip_point_i_temp:Ljava/io/File;
    :cond_0
    const/16 v16, 0x0

    :goto_4
    const/16 v2, 0xc

    move/from16 v0, v16

    if-ge v0, v2, :cond_1

    .line 210
    new-instance v11, Ljava/io/File;

    new-instance v2, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/cdev"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_trip_point"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-direct {v11, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 211
    .local v11, cdev_i_trip_point:Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_7

    .line 243
    .end local v11           #cdev_i_trip_point:Ljava/io/File;
    :cond_1
    :goto_5
    const/16 v19, 0x0

    .local v19, j:I
    :goto_6
    add-int/lit8 v2, v16, 0x2

    move/from16 v0, v19

    if-ge v0, v2, :cond_8

    .line 244
    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    .line 245
    .local v18, item:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "fileName"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/thermalmanager/TzDeviceActivity;->mFileName:[Ljava/lang/String;

    aget-object v3, v3, v19

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    const-string v2, "fileContent"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/thermalmanager/TzDeviceActivity;->mFileContent:[Ljava/lang/String;

    aget-object v3, v3, v19

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/thermalmanager/TzDeviceActivity;->list:Ljava/util/ArrayList;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    add-int/lit8 v19, v19, 0x1

    goto :goto_6

    .line 83
    .end local v8           #a:Ljava/io/File;
    .end local v9           #b:Ljava/io/File;
    .end local v10           #c:Ljava/io/File;
    .end local v16           #i:I
    .end local v18           #item:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v19           #j:I
    .end local v25           #tz_device_lv:Landroid/widget/ListView;
    .end local v26           #tz_dir:Ljava/io/File;
    :cond_2
    const-string v2, "File temperarily unavailable!"

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 84
    const-string v2, "TzDeviceActivity"

    const-string v3, "sysfs_path: null!!!\n"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :goto_7
    return-void

    .line 107
    .restart local v8       #a:Ljava/io/File;
    .restart local v26       #tz_dir:Ljava/io/File;
    :cond_3
    const-string v2, "type unavailable!"

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 108
    const-string v2, "TzDeviceActivity"

    const-string v3, "type not exists\n"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 132
    .restart local v9       #b:Ljava/io/File;
    .restart local v25       #tz_device_lv:Landroid/widget/ListView;
    :cond_4
    const-string v2, "temp unavailable!"

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 133
    const-string v2, "TzDeviceActivity"

    const-string v3, "temp not exists\n"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 153
    .restart local v10       #c:Ljava/io/File;
    :cond_5
    const-string v2, "mode unavailable!"

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 154
    const-string v2, "TzDeviceActivity"

    const-string v3, "mode not exists\n"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 169
    .restart local v16       #i:I
    .restart local v22       #trip_point_i_temp:Ljava/io/File;
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/thermalmanager/TzDeviceActivity;->mFileName:[Ljava/lang/String;

    add-int/lit8 v3, v16, 0x2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 172
    :try_start_3
    new-instance v15, Ljava/io/FileInputStream;

    move-object/from16 v0, v22

    invoke-direct {v15, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 173
    .restart local v15       #fs:Ljava/io/FileInputStream;
    new-instance v13, Ljava/io/DataInputStream;

    invoke-direct {v13, v15}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 174
    .restart local v13       #ds:Ljava/io/DataInputStream;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/thermalmanager/TzDeviceActivity;->mFileName:[Ljava/lang/String;

    add-int/lit8 v4, v16, 0x2

    aget-object v5, v3, v4

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v13}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v4

    .line 175
    invoke-virtual {v13}, Ljava/io/FilterInputStream;->close()V

    .line 176
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 181
    .end local v13           #ds:Ljava/io/DataInputStream;
    .end local v15           #fs:Ljava/io/FileInputStream;
    :goto_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/thermalmanager/TzDeviceActivity;->mFileName:[Ljava/lang/String;

    add-int/lit8 v4, v16, 0x2

    aget-object v5, v3, v4

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " mdeg C -- "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v4

    .line 183
    new-instance v23, Ljava/io/File;

    new-instance v2, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/trip_point_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_type"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 185
    .local v23, trip_point_i_type:Ljava/io/File;
    :try_start_4
    new-instance v15, Ljava/io/FileInputStream;

    move-object/from16 v0, v23

    invoke-direct {v15, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 186
    .restart local v15       #fs:Ljava/io/FileInputStream;
    new-instance v13, Ljava/io/DataInputStream;

    invoke-direct {v13, v15}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 187
    .restart local v13       #ds:Ljava/io/DataInputStream;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/thermalmanager/TzDeviceActivity;->mFileName:[Ljava/lang/String;

    add-int/lit8 v4, v16, 0x2

    aget-object v5, v3, v4

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v13}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v4

    .line 188
    invoke-virtual {v13}, Ljava/io/FilterInputStream;->close()V

    .line 189
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 159
    .end local v13           #ds:Ljava/io/DataInputStream;
    .end local v15           #fs:Ljava/io/FileInputStream;
    :goto_9
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_3

    .line 219
    .end local v22           #trip_point_i_temp:Ljava/io/File;
    .end local v23           #trip_point_i_type:Ljava/io/File;
    .restart local v11       #cdev_i_trip_point:Ljava/io/File;
    :cond_7
    :try_start_5
    new-instance v15, Ljava/io/FileInputStream;

    invoke-direct {v15, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 220
    .restart local v15       #fs:Ljava/io/FileInputStream;
    new-instance v13, Ljava/io/DataInputStream;

    invoke-direct {v13, v15}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 221
    .restart local v13       #ds:Ljava/io/DataInputStream;
    invoke-virtual {v13}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v21

    .line 222
    .local v21, trip_point:I
    invoke-virtual {v13}, Ljava/io/FilterInputStream;->close()V

    .line 223
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 229
    new-instance v12, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/cdev"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v12, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 231
    .local v12, cdev_i_type:Ljava/io/File;
    :try_start_6
    new-instance v15, Ljava/io/FileInputStream;

    .end local v15           #fs:Ljava/io/FileInputStream;
    invoke-direct {v15, v12}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 232
    .restart local v15       #fs:Ljava/io/FileInputStream;
    new-instance v13, Ljava/io/DataInputStream;

    .end local v13           #ds:Ljava/io/DataInputStream;
    invoke-direct {v13, v15}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 233
    .restart local v13       #ds:Ljava/io/DataInputStream;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/thermalmanager/TzDeviceActivity;->mFileContent:[Ljava/lang/String;

    add-int/lit8 v3, v21, 0x2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cooler"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v13}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 234
    invoke-virtual {v13}, Ljava/io/FilterInputStream;->close()V

    .line 235
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 208
    .end local v13           #ds:Ljava/io/DataInputStream;
    .end local v15           #fs:Ljava/io/FileInputStream;
    :goto_a
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_4

    .line 225
    .end local v12           #cdev_i_type:Ljava/io/File;
    .end local v21           #trip_point:I
    :catch_0
    move-exception v14

    .line 226
    .local v14, ex:Ljava/lang/Exception;
    goto/16 :goto_5

    .line 251
    .end local v11           #cdev_i_trip_point:Ljava/io/File;
    .end local v14           #ex:Ljava/lang/Exception;
    .restart local v19       #j:I
    :cond_8
    new-instance v2, Landroid/widget/SimpleAdapter;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/thermalmanager/TzDeviceActivity;->list:Ljava/util/ArrayList;

    const v5, 0x1090004

    const/4 v3, 0x2

    new-array v6, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v7, "fileName"

    aput-object v7, v6, v3

    const/4 v3, 0x1

    const-string v7, "fileContent"

    aput-object v7, v6, v3

    const/4 v3, 0x2

    new-array v7, v3, [I

    fill-array-data v7, :array_0

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mediatek/thermalmanager/TzDeviceActivity;->adapter:Landroid/widget/SimpleAdapter;

    .line 259
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/thermalmanager/TzDeviceActivity;->adapter:Landroid/widget/SimpleAdapter;

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_7

    .line 237
    .end local v19           #j:I
    .restart local v11       #cdev_i_trip_point:Ljava/io/File;
    .restart local v12       #cdev_i_type:Ljava/io/File;
    .restart local v21       #trip_point:I
    :catch_1
    move-exception v2

    goto :goto_a

    .line 191
    .end local v11           #cdev_i_trip_point:Ljava/io/File;
    .end local v12           #cdev_i_type:Ljava/io/File;
    .end local v21           #trip_point:I
    .restart local v22       #trip_point_i_temp:Ljava/io/File;
    .restart local v23       #trip_point_i_type:Ljava/io/File;
    :catch_2
    move-exception v2

    goto/16 :goto_9

    .line 178
    .end local v23           #trip_point_i_type:Ljava/io/File;
    :catch_3
    move-exception v2

    goto/16 :goto_8

    .line 147
    .end local v16           #i:I
    .end local v22           #trip_point_i_temp:Ljava/io/File;
    :catch_4
    move-exception v2

    goto/16 :goto_2

    .line 126
    .end local v10           #c:Ljava/io/File;
    :catch_5
    move-exception v2

    goto/16 :goto_1

    .line 101
    .end local v9           #b:Ljava/io/File;
    .end local v25           #tz_device_lv:Landroid/widget/ListView;
    :catch_6
    move-exception v2

    goto/16 :goto_0

    .line 251
    nop

    :array_0
    .array-data 0x4
        0x14t 0x0t 0x2t 0x1t
        0x15t 0x0t 0x2t 0x1t
    .end array-data
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 298
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method
