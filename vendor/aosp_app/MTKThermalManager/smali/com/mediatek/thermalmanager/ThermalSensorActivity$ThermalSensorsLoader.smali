.class Lcom/mediatek/thermalmanager/ThermalSensorActivity$ThermalSensorsLoader;
.super Landroid/os/AsyncTask;
.source "ThermalSensorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/thermalmanager/ThermalSensorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThermalSensorsLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/thermalmanager/ThermalSensorActivity;


# direct methods
.method private constructor <init>(Lcom/mediatek/thermalmanager/ThermalSensorActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/mediatek/thermalmanager/ThermalSensorActivity$ThermalSensorsLoader;->this$0:Lcom/mediatek/thermalmanager/ThermalSensorActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/thermalmanager/ThermalSensorActivity;Lcom/mediatek/thermalmanager/ThermalSensorActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/mediatek/thermalmanager/ThermalSensorActivity$ThermalSensorsLoader;-><init>(Lcom/mediatek/thermalmanager/ThermalSensorActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/mediatek/thermalmanager/ThermalSensorActivity$ThermalSensorsLoader;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 13
    .parameter "params"

    .prologue
    const/4 v12, 0x0

    .line 107
    iget-object v9, p0, Lcom/mediatek/thermalmanager/ThermalSensorActivity$ThermalSensorsLoader;->this$0:Lcom/mediatek/thermalmanager/ThermalSensorActivity;

    iget-object v9, v9, Lcom/mediatek/thermalmanager/ThermalSensorActivity;->items:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 109
    const-string v9, "ThermalSensorActivity"

    const-string v10, "doInBackground\n"

    invoke-static {v9, v10}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    new-instance v6, Ljava/io/File;

    const-string v9, "/sys/class/thermal"

    invoke-direct {v6, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 112
    .local v6, sys_class_thermal_dir:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_1

    .line 176
    :cond_0
    return-object v12

    .line 119
    :cond_1
    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v7

    .line 120
    .local v7, thermal_dev_file_list:[Ljava/io/File;
    if-eqz v7, :cond_0

    .line 125
    iget-object v9, p0, Lcom/mediatek/thermalmanager/ThermalSensorActivity$ThermalSensorsLoader;->this$0:Lcom/mediatek/thermalmanager/ThermalSensorActivity;

    array-length v10, v7

    new-array v10, v10, [Ljava/lang/String;

    #setter for: Lcom/mediatek/thermalmanager/ThermalSensorActivity;->fileNameList:[Ljava/lang/String;
    invoke-static {v9, v10}, Lcom/mediatek/thermalmanager/ThermalSensorActivity;->access$202(Lcom/mediatek/thermalmanager/ThermalSensorActivity;[Ljava/lang/String;)[Ljava/lang/String;

    .line 126
    const/4 v4, 0x0

    .local v4, i:I
    const/4 v5, 0x0

    .local v5, j:I
    :goto_0
    array-length v9, v7

    if-ge v4, v9, :cond_0

    .line 128
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v9

    if-nez v9, :cond_0

    .line 130
    aget-object v9, v7, v4

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "thermal_zone"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 135
    iget-object v9, p0, Lcom/mediatek/thermalmanager/ThermalSensorActivity$ThermalSensorsLoader;->this$0:Lcom/mediatek/thermalmanager/ThermalSensorActivity;

    #getter for: Lcom/mediatek/thermalmanager/ThermalSensorActivity;->fileNameList:[Ljava/lang/String;
    invoke-static {v9}, Lcom/mediatek/thermalmanager/ThermalSensorActivity;->access$200(Lcom/mediatek/thermalmanager/ThermalSensorActivity;)[Ljava/lang/String;

    move-result-object v9

    aget-object v10, v7, v4

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v5

    .line 136
    add-int/lit8 v5, v5, 0x1

    .line 137
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8}, Ljava/lang/String;-><init>()V

    .line 140
    .local v8, toshow:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v10, v7, v4

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/type"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 141
    .local v0, a:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 144
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 145
    .local v3, fs:Ljava/io/FileInputStream;
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 146
    .local v2, ds:Ljava/io/DataInputStream;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 147
    invoke-virtual {v2}, Ljava/io/FilterInputStream;->close()V

    .line 148
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 156
    .end local v2           #ds:Ljava/io/DataInputStream;
    .end local v3           #fs:Ljava/io/FileInputStream;
    :cond_2
    :goto_1
    new-instance v1, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v10, v7, v4

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/temp"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 157
    .local v1, b:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 160
    :try_start_1
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 161
    .restart local v3       #fs:Ljava/io/FileInputStream;
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 162
    .restart local v2       #ds:Ljava/io/DataInputStream;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " -- "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 163
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 164
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mdegree C"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 165
    invoke-virtual {v2}, Ljava/io/FilterInputStream;->close()V

    .line 166
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 172
    .end local v2           #ds:Ljava/io/DataInputStream;
    .end local v3           #fs:Ljava/io/FileInputStream;
    :cond_3
    :goto_2
    const-string v9, "ThermalSensorActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "doInBackground "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v9, p0, Lcom/mediatek/thermalmanager/ThermalSensorActivity$ThermalSensorsLoader;->this$0:Lcom/mediatek/thermalmanager/ThermalSensorActivity;

    iget-object v9, v9, Lcom/mediatek/thermalmanager/ThermalSensorActivity;->items:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    .end local v0           #a:Ljava/io/File;
    .end local v1           #b:Ljava/io/File;
    .end local v8           #toshow:Ljava/lang/String;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 168
    .restart local v0       #a:Ljava/io/File;
    .restart local v1       #b:Ljava/io/File;
    .restart local v8       #toshow:Ljava/lang/String;
    :catch_0
    move-exception v9

    goto :goto_2

    .line 150
    .end local v1           #b:Ljava/io/File;
    :catch_1
    move-exception v9

    goto/16 :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 91
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/mediatek/thermalmanager/ThermalSensorActivity$ThermalSensorsLoader;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 6
    .parameter "results"

    .prologue
    const/4 v5, 0x1

    .line 96
    const-string v0, "ThermalSensorActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPostExecute "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/thermalmanager/ThermalSensorActivity$ThermalSensorsLoader;->this$0:Lcom/mediatek/thermalmanager/ThermalSensorActivity;

    iget-object v2, v2, Lcom/mediatek/thermalmanager/ThermalSensorActivity;->items:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v0, p0, Lcom/mediatek/thermalmanager/ThermalSensorActivity$ThermalSensorsLoader;->this$0:Lcom/mediatek/thermalmanager/ThermalSensorActivity;

    iget-object v0, v0, Lcom/mediatek/thermalmanager/ThermalSensorActivity;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/mediatek/thermalmanager/ThermalSensorActivity$ThermalSensorsLoader;->this$0:Lcom/mediatek/thermalmanager/ThermalSensorActivity;

    const-string v1, "No thermal sensors found!"

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/mediatek/thermalmanager/ThermalSensorActivity$ThermalSensorsLoader;->this$0:Lcom/mediatek/thermalmanager/ThermalSensorActivity;

    #getter for: Lcom/mediatek/thermalmanager/ThermalSensorActivity;->thermal_sensors_lv:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/mediatek/thermalmanager/ThermalSensorActivity;->access$100(Lcom/mediatek/thermalmanager/ThermalSensorActivity;)Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/mediatek/thermalmanager/ThermalSensorActivity$ThermalSensorsLoader;->this$0:Lcom/mediatek/thermalmanager/ThermalSensorActivity;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x1090003

    iget-object v4, p0, Lcom/mediatek/thermalmanager/ThermalSensorActivity$ThermalSensorsLoader;->this$0:Lcom/mediatek/thermalmanager/ThermalSensorActivity;

    iget-object v4, v4, Lcom/mediatek/thermalmanager/ThermalSensorActivity;->items:Ljava/util/List;

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 102
    iget-object v0, p0, Lcom/mediatek/thermalmanager/ThermalSensorActivity$ThermalSensorsLoader;->this$0:Lcom/mediatek/thermalmanager/ThermalSensorActivity;

    #getter for: Lcom/mediatek/thermalmanager/ThermalSensorActivity;->thermal_sensors_lv:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/mediatek/thermalmanager/ThermalSensorActivity;->access$100(Lcom/mediatek/thermalmanager/ThermalSensorActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 103
    return-void
.end method
