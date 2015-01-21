.class Lcom/mediatek/thermalmanager/CoolersActivity$CoolerLoader;
.super Landroid/os/AsyncTask;
.source "CoolersActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/thermalmanager/CoolersActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CoolerLoader"
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
.field final synthetic this$0:Lcom/mediatek/thermalmanager/CoolersActivity;


# direct methods
.method private constructor <init>(Lcom/mediatek/thermalmanager/CoolersActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/mediatek/thermalmanager/CoolersActivity$CoolerLoader;->this$0:Lcom/mediatek/thermalmanager/CoolersActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/thermalmanager/CoolersActivity;Lcom/mediatek/thermalmanager/CoolersActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/mediatek/thermalmanager/CoolersActivity$CoolerLoader;-><init>(Lcom/mediatek/thermalmanager/CoolersActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/mediatek/thermalmanager/CoolersActivity$CoolerLoader;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 12
    .parameter "params"

    .prologue
    const/4 v11, 0x0

    .line 74
    iget-object v9, p0, Lcom/mediatek/thermalmanager/CoolersActivity$CoolerLoader;->this$0:Lcom/mediatek/thermalmanager/CoolersActivity;

    #getter for: Lcom/mediatek/thermalmanager/CoolersActivity;->items:Ljava/util/List;
    invoke-static {v9}, Lcom/mediatek/thermalmanager/CoolersActivity;->access$000(Lcom/mediatek/thermalmanager/CoolersActivity;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 77
    new-instance v6, Ljava/io/File;

    const-string v9, "/sys/class/thermal"

    invoke-direct {v6, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 78
    .local v6, sys_class_thermal_dir:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_1

    .line 155
    :cond_0
    return-object v11

    .line 84
    :cond_1
    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v7

    .line 85
    .local v7, thermal_dev_file_list:[Ljava/io/File;
    if-eqz v7, :cond_0

    .line 91
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    array-length v9, v7

    if-ge v5, v9, :cond_0

    .line 93
    aget-object v9, v7, v5

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "cooling_device"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 99
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8}, Ljava/lang/String;-><init>()V

    .line 102
    .local v8, toshow:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v10, v7, v5

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

    .line 103
    .local v0, a:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 106
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 107
    .local v4, fs:Ljava/io/FileInputStream;
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 108
    .local v3, ds:Ljava/io/DataInputStream;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 109
    invoke-virtual {v3}, Ljava/io/FilterInputStream;->close()V

    .line 110
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 118
    .end local v3           #ds:Ljava/io/DataInputStream;
    .end local v4           #fs:Ljava/io/FileInputStream;
    :cond_2
    :goto_1
    new-instance v1, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v10, v7, v5

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/cur_state"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 119
    .local v1, b:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 122
    :try_start_1
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 123
    .restart local v4       #fs:Ljava/io/FileInputStream;
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 124
    .restart local v3       #ds:Ljava/io/DataInputStream;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " -- "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 125
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 126
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " / "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 127
    invoke-virtual {v3}, Ljava/io/FilterInputStream;->close()V

    .line 128
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 136
    .end local v3           #ds:Ljava/io/DataInputStream;
    .end local v4           #fs:Ljava/io/FileInputStream;
    :cond_3
    :goto_2
    new-instance v2, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v10, v7, v5

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/max_state"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 137
    .local v2, c:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 140
    :try_start_2
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 141
    .restart local v4       #fs:Ljava/io/FileInputStream;
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 142
    .restart local v3       #ds:Ljava/io/DataInputStream;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 143
    invoke-virtual {v3}, Ljava/io/FilterInputStream;->close()V

    .line 144
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 151
    .end local v3           #ds:Ljava/io/DataInputStream;
    .end local v4           #fs:Ljava/io/FileInputStream;
    :cond_4
    :goto_3
    iget-object v9, p0, Lcom/mediatek/thermalmanager/CoolersActivity$CoolerLoader;->this$0:Lcom/mediatek/thermalmanager/CoolersActivity;

    #getter for: Lcom/mediatek/thermalmanager/CoolersActivity;->items:Ljava/util/List;
    invoke-static {v9}, Lcom/mediatek/thermalmanager/CoolersActivity;->access$000(Lcom/mediatek/thermalmanager/CoolersActivity;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    .end local v0           #a:Ljava/io/File;
    .end local v1           #b:Ljava/io/File;
    .end local v2           #c:Ljava/io/File;
    .end local v8           #toshow:Ljava/lang/String;
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 146
    .restart local v0       #a:Ljava/io/File;
    .restart local v1       #b:Ljava/io/File;
    .restart local v2       #c:Ljava/io/File;
    .restart local v8       #toshow:Ljava/lang/String;
    :catch_0
    move-exception v9

    goto :goto_3

    .line 130
    .end local v2           #c:Ljava/io/File;
    :catch_1
    move-exception v9

    goto :goto_2

    .line 112
    .end local v1           #b:Ljava/io/File;
    :catch_2
    move-exception v9

    goto/16 :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/mediatek/thermalmanager/CoolersActivity$CoolerLoader;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 5
    .parameter "result"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/mediatek/thermalmanager/CoolersActivity$CoolerLoader;->this$0:Lcom/mediatek/thermalmanager/CoolersActivity;

    #getter for: Lcom/mediatek/thermalmanager/CoolersActivity;->items:Ljava/util/List;
    invoke-static {v0}, Lcom/mediatek/thermalmanager/CoolersActivity;->access$000(Lcom/mediatek/thermalmanager/CoolersActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/mediatek/thermalmanager/CoolersActivity$CoolerLoader;->this$0:Lcom/mediatek/thermalmanager/CoolersActivity;

    const-string v1, "No coolers found!"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/mediatek/thermalmanager/CoolersActivity$CoolerLoader;->this$0:Lcom/mediatek/thermalmanager/CoolersActivity;

    #getter for: Lcom/mediatek/thermalmanager/CoolersActivity;->coolers_lv:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/mediatek/thermalmanager/CoolersActivity;->access$100(Lcom/mediatek/thermalmanager/CoolersActivity;)Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/mediatek/thermalmanager/CoolersActivity$CoolerLoader;->this$0:Lcom/mediatek/thermalmanager/CoolersActivity;

    const v3, 0x1090003

    iget-object v4, p0, Lcom/mediatek/thermalmanager/CoolersActivity$CoolerLoader;->this$0:Lcom/mediatek/thermalmanager/CoolersActivity;

    #getter for: Lcom/mediatek/thermalmanager/CoolersActivity;->items:Ljava/util/List;
    invoke-static {v4}, Lcom/mediatek/thermalmanager/CoolersActivity;->access$000(Lcom/mediatek/thermalmanager/CoolersActivity;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 69
    return-void
.end method
