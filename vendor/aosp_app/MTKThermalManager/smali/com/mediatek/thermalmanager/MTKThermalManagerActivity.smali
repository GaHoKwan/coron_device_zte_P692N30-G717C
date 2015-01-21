.class public Lcom/mediatek/thermalmanager/MTKThermalManagerActivity;
.super Landroid/app/Activity;
.source "MTKThermalManagerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private count:I

.field private mtc_file_adapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mtc_file_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private selected_file_name:Ljava/lang/String;

.field private thermal_logger_switch:Landroid/widget/Switch;

.field private thermal_main_tv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/mediatek/thermalmanager/MTKThermalManagerActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/mediatek/thermalmanager/MTKThermalManagerActivity;->selected_file_name:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/mediatek/thermalmanager/MTKThermalManagerActivity;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/mediatek/thermalmanager/MTKThermalManagerActivity;->mtc_file_list:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/thermalmanager/MTKThermalManagerActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget v0, p0, Lcom/mediatek/thermalmanager/MTKThermalManagerActivity;->count:I

    return v0
.end method

.method static synthetic access$208(Lcom/mediatek/thermalmanager/MTKThermalManagerActivity;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 77
    iget v0, p0, Lcom/mediatek/thermalmanager/MTKThermalManagerActivity;->count:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/mediatek/thermalmanager/MTKThermalManagerActivity;->count:I

    return v0
.end method

.method static synthetic access$300(Lcom/mediatek/thermalmanager/MTKThermalManagerActivity;)Landroid/widget/ArrayAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/mediatek/thermalmanager/MTKThermalManagerActivity;->mtc_file_adapter:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method private appendFile(Ljava/io/File;Ljava/io/File;)V
    .locals 5
    .parameter "src"
    .parameter "dst"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 575
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 576
    .local v1, in:Ljava/io/FileInputStream;
    new-instance v3, Ljava/io/FileOutputStream;

    const/4 v4, 0x1

    invoke-direct {v3, p2, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 577
    .local v3, out:Ljava/io/FileOutputStream;
    const/16 v4, 0x400

    new-array v0, v4, [B

    .line 579
    .local v0, buf:[B
    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, len:I
    if-lez v2, :cond_0

    .line 581
    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v2}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 583
    :cond_0
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 584
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 585
    return-void
.end method

.method private executeShellCommand(Ljava/lang/String;)V
    .locals 9
    .parameter "shellCommand"

    .prologue
    .line 398
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    .line 399
    .local v5, runtime:Ljava/lang/Runtime;
    const/4 v4, 0x0

    .line 400
    .local v4, proc:Ljava/lang/Process;
    const/4 v2, 0x0

    .line 401
    .local v2, osw:Ljava/io/OutputStreamWriter;
    const-string v0, ""

    .line 405
    .local v0, command:Ljava/lang/String;
    :try_start_0
    invoke-virtual {v5, p1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    .line 406
    new-instance v3, Ljava/io/OutputStreamWriter;

    invoke-virtual {v4}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 407
    .end local v2           #osw:Ljava/io/OutputStreamWriter;
    .local v3, osw:Ljava/io/OutputStreamWriter;
    if-eqz v3, :cond_0

    .line 409
    :try_start_1
    invoke-virtual {v3, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 410
    const-string v6, "\n"

    invoke-virtual {v3, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 411
    const-string v6, "exit\n"

    invoke-virtual {v3, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 412
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->flush()V

    .line 413
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 424
    :cond_0
    if-eqz v3, :cond_1

    .line 428
    :try_start_2
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 436
    :cond_1
    :goto_0
    :try_start_3
    invoke-virtual {v4}, Ljava/lang/Process;->waitFor()I
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_4

    .line 440
    :goto_1
    invoke-virtual {v4}, Ljava/lang/Process;->exitValue()I

    move-result v6

    if-eqz v6, :cond_2

    .line 443
    const-string v6, "MTKThermalManagerActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "execCommandLine() Err exit code: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/Process;->exitValue()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move-object v2, v3

    .line 445
    .end local v3           #osw:Ljava/io/OutputStreamWriter;
    .restart local v2       #osw:Ljava/io/OutputStreamWriter;
    :cond_3
    :goto_2
    return-void

    .line 416
    :catch_0
    move-exception v1

    .line 419
    .local v1, ex:Ljava/io/IOException;
    :goto_3
    :try_start_4
    const-string v6, "MTKThermalManagerActivity"

    const-string v7, "execCommandLine() IO Exception: "

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 424
    if-eqz v2, :cond_3

    .line 428
    :try_start_5
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 430
    :catch_1
    move-exception v6

    goto :goto_2

    .line 424
    .end local v1           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_4
    if-eqz v2, :cond_4

    .line 428
    :try_start_6
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 430
    :cond_4
    :goto_5
    throw v6

    .end local v2           #osw:Ljava/io/OutputStreamWriter;
    .restart local v3       #osw:Ljava/io/OutputStreamWriter;
    :catch_2
    move-exception v6

    goto :goto_0

    .end local v3           #osw:Ljava/io/OutputStreamWriter;
    .restart local v2       #osw:Ljava/io/OutputStreamWriter;
    :catch_3
    move-exception v7

    goto :goto_5

    .line 438
    .end local v2           #osw:Ljava/io/OutputStreamWriter;
    .restart local v3       #osw:Ljava/io/OutputStreamWriter;
    :catch_4
    move-exception v6

    goto :goto_1

    .line 424
    :catchall_1
    move-exception v6

    move-object v2, v3

    .end local v3           #osw:Ljava/io/OutputStreamWriter;
    .restart local v2       #osw:Ljava/io/OutputStreamWriter;
    goto :goto_4

    .line 416
    .end local v2           #osw:Ljava/io/OutputStreamWriter;
    .restart local v3       #osw:Ljava/io/OutputStreamWriter;
    :catch_5
    move-exception v1

    move-object v2, v3

    .end local v3           #osw:Ljava/io/OutputStreamWriter;
    .restart local v2       #osw:Ljava/io/OutputStreamWriter;
    goto :goto_3
.end method

.method private isThermalLoggerEnabled()Z
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 590
    new-instance v5, Ljava/io/File;

    const-string v8, "/proc/driver/thermal_logger_config"

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 591
    .local v5, thermal_logger_config:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 593
    const/4 v4, 0x0

    .line 595
    .local v4, result:Z
    :try_start_0
    new-instance v2, Ljava/io/FileReader;

    const-string v8, "/proc/driver/thermal_logger_config"

    invoke-direct {v2, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 596
    .local v2, fr:Ljava/io/FileReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 597
    .local v0, br:Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 598
    .local v3, line:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 600
    const-string v8, "Enable logger"

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 602
    const-string v8, "= 0"

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 604
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 605
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V

    .line 640
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #fr:Ljava/io/FileReader;
    .end local v3           #line:Ljava/lang/String;
    .end local v4           #result:Z
    :cond_1
    :goto_1
    return v6

    .line 610
    .restart local v0       #br:Ljava/io/BufferedReader;
    .restart local v2       #fr:Ljava/io/FileReader;
    .restart local v3       #line:Ljava/lang/String;
    .restart local v4       #result:Z
    :cond_2
    const/4 v4, 0x1

    .line 611
    goto :goto_0

    .line 615
    :cond_3
    const-string v8, "(Bit3)= 0"

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 617
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 618
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 631
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #fr:Ljava/io/FileReader;
    .end local v3           #line:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 633
    .local v1, e:Ljava/lang/Exception;
    const-string v7, "MTKThermalManagerActivity"

    const-string v8, "isThermalLoggerEnabled() IOException"

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 621
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #br:Ljava/io/BufferedReader;
    .restart local v2       #fr:Ljava/io/FileReader;
    .restart local v3       #line:Ljava/lang/String;
    :cond_4
    :try_start_1
    const-string v8, "(Bit3)= 1"

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    if-ne v7, v4, :cond_0

    .line 623
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 624
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V

    move v6, v7

    .line 625
    goto :goto_1

    .line 628
    :cond_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 629
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private turnOffThermalLoggerAndDumpLog()V
    .locals 10

    .prologue
    .line 459
    const-string v6, "MTKThermalManagerActivity"

    const-string v7, "turnOffThermalLoggerAndDumpLog() stop logging"

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    const-string v6, "Stopping Thermal Logger!"

    const/4 v7, 0x0

    invoke-static {p0, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 463
    const-string v6, "/proc/driver/mtk_thermal_monitor"

    const-string v7, "0"

    invoke-direct {p0, v6, v7}, Lcom/mediatek/thermalmanager/MTKThermalManagerActivity;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    const-string v6, "/proc/driver/storage_logger"

    const-string v7, "ENABLE 0"

    invoke-direct {p0, v6, v7}, Lcom/mediatek/thermalmanager/MTKThermalManagerActivity;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    const-string v6, "MTKThermalManagerActivity"

    const-string v7, "turnOffThermalLoggerAndDumpLog() disable storage logger"

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 473
    .local v4, timems:J
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 474
    .local v1, curtime:Ljava/util/Date;
    invoke-virtual {v1, v4, v5}, Ljava/util/Date;->setTime(J)V

    .line 475
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyyMMdd-kkmmssZ"

    invoke-direct {v3, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 476
    .local v3, sdf:Ljava/text/SimpleDateFormat;
    invoke-virtual {v3, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 477
    .local v0, ctstr:Ljava/lang/String;
    const-string v6, " "

    const-string v7, ""

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 479
    const-string v6, "MTKThermalManagerActivity"

    const-string v7, "onCheckedChanged() test write to /data"

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/data/storage_logger_dump_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-direct {p0, v6, v7}, Lcom/mediatek/thermalmanager/MTKThermalManagerActivity;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    :try_start_0
    new-instance v6, Ljava/io/File;

    const-string v7, "/proc/driver/storage_logger_display"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/data/storage_logger_dump_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v6, v7}, Lcom/mediatek/thermalmanager/MTKThermalManagerActivity;->appendFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 489
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Thermal Log storage_logger_dump_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " dumped to /data!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {p0, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 493
    const-string v6, "/proc/driver/storage_logger_bufsize_malloc"

    const-string v7, "2097152"

    invoke-direct {p0, v6, v7}, Lcom/mediatek/thermalmanager/MTKThermalManagerActivity;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    return-void

    .line 484
    :catch_0
    move-exception v2

    .line 486
    .local v2, e:Ljava/io/IOException;
    const-string v6, "MTKThermalManagerActivity"

    const-string v7, "onCheckedChanged() append file exception!"

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private turnOffThermalProtection()V
    .locals 1

    .prologue
    .line 449
    const-string v0, "/system/bin/thermal_manager /etc/.tp/thermal.off.conf"

    invoke-direct {p0, v0}, Lcom/mediatek/thermalmanager/MTKThermalManagerActivity;->executeShellCommand(Ljava/lang/String;)V

    .line 450
    return-void
.end method

.method private turnOnThermalLogger()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 505
    const-string v5, "Starting Thermal Logger!"

    invoke-static {p0, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 507
    const-string v5, "/proc/driver/storage_logger_config"

    const-string v6, "0 0 0 0"

    invoke-direct {p0, v5, v6}, Lcom/mediatek/thermalmanager/MTKThermalManagerActivity;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    const-string v5, "/proc/driver/storage_logger_config"

    const-string v6, "0 0 1"

    invoke-direct {p0, v5, v6}, Lcom/mediatek/thermalmanager/MTKThermalManagerActivity;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    const-string v5, "/proc/driver/thermal_logger_config"

    const-string v6, "5"

    invoke-direct {p0, v5, v6}, Lcom/mediatek/thermalmanager/MTKThermalManagerActivity;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    const-string v5, "/proc/driver/storage_logger_bufsize_malloc"

    const-string v6, "10485760"

    invoke-direct {p0, v5, v6}, Lcom/mediatek/thermalmanager/MTKThermalManagerActivity;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    const-string v5, "/proc/driver/storage_logger"

    const-string v6, "ENABLE 1"

    invoke-direct {p0, v5, v6}, Lcom/mediatek/thermalmanager/MTKThermalManagerActivity;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 517
    .local v3, timems:J
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 518
    .local v1, curtime:Ljava/util/Date;
    invoke-virtual {v1, v3, v4}, Ljava/util/Date;->setTime(J)V

    .line 519
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v5, "kkmmss"

    invoke-direct {v2, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 520
    .local v2, sdf:Ljava/text/SimpleDateFormat;
    invoke-virtual {v2, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 521
    .local v0, ctstr:Ljava/lang/String;
    const-string v5, "/proc/driver/mtk_thermal_monitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "1 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/mediatek/thermalmanager/MTKThermalManagerActivity;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    const-string v5, "Thermal Logger started!"

    invoke-static {p0, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 523
    return-void
.end method

.method private turnOnThermalProtection(Ljava/lang/String;)V
    .locals 2
    .parameter "confFile"

    .prologue
    .line 454
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/system/bin/thermal_manager "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/thermalmanager/MTKThermalManagerActivity;->executeShellCommand(Ljava/lang/String;)V

    .line 455
    return-void
.end method

.method private writeFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "filePath"
    .parameter "line"

    .prologue
    .line 527
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 528
    .local v0, a:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 531
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 532
    .local v4, fs:Ljava/io/FileOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 533
    .local v1, ds:Ljava/io/DataOutputStream;
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/OutputStream;->write([B)V

    .line 534
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 535
    invoke-virtual {v1}, Ljava/io/FilterOutputStream;->close()V

    .line 536
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 571
    .end local v1           #ds:Ljava/io/DataOutputStream;
    .end local v4           #fs:Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 538
    :catch_0
    move-exception v3

    .line 539
    .local v3, ex:Ljava/lang/Exception;
    const-string v5, "MTKThermalManagerActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "writeFile() Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 544
    .end local v3           #ex:Ljava/lang/Exception;
    :cond_0
    const-string v5, "MTKThermalManagerActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "writeFile() File not exist: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 548
    const-string v5, "MTKThermalManagerActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "writeFile() File created: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 550
    :try_start_2
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 551
    .restart local v4       #fs:Ljava/io/FileOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 552
    .restart local v1       #ds:Ljava/io/DataOutputStream;
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/OutputStream;->write([B)V

    .line 553
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 554
    invoke-virtual {v1}, Ljava/io/FilterOutputStream;->close()V

    .line 555
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 557
    .end local v1           #ds:Ljava/io/DataOutputStream;
    .end local v4           #fs:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v3

    .line 558
    .restart local v3       #ex:Ljava/lang/Exception;
    :try_start_3
    const-string v5, "MTKThermalManagerActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "writeFile() Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 566
    .end local v3           #ex:Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 568
    .local v2, e:Ljava/io/IOException;
    const-string v5, "MTKThermalManagerActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "writeFile() creatFile Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 563
    .end local v2           #e:Ljava/io/IOException;
    :cond_1
    :try_start_4
    const-string v5, "MTKThermalManagerActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "writeFile() Create file fail: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 11
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 244
    invoke-virtual {p1, v9}, Landroid/view/View;->setFocusable(Z)V

    .line 245
    invoke-virtual {p1, v9}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 246
    invoke-virtual {p1, v9}, Landroid/view/View;->setClickable(Z)V

    .line 247
    iget-object v6, p0, Lcom/mediatek/thermalmanager/MTKThermalManagerActivity;->thermal_logger_switch:Landroid/widget/Switch;

    invoke-virtual {v6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 249
    if-eqz p2, :cond_2

    .line 251
    invoke-direct {p0}, Lcom/mediatek/thermalmanager/MTKThermalManagerActivity;->isThermalLoggerEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 253
    const-string v6, "MTKThermalManagerActivity"

    const-string v7, "onCheckedChanged() 1 logger already started"

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :cond_0
    :goto_0
    invoke-virtual {p1, v10}, Landroid/view/View;->setClickable(Z)V

    .line 336
    invoke-virtual {p1, v10}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 337
    invoke-virtual {p1, v10}, Landroid/view/View;->setFocusable(Z)V

    .line 338
    return-void

    .line 259
    :cond_1
    const-string v6, "MTKThermalManagerActivity"

    const-string v7, "onCheckedChanged() start logging"

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    const-string v6, "Starting Thermal Logger!"

    invoke-static {p0, v6, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 262
    const-string v6, "/proc/driver/storage_logger_config"

    const-string v7, "0 0 0 0"

    invoke-direct {p0, v6, v7}, Lcom/mediatek/thermalmanager/MTKThermalManagerActivity;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    const-string v6, "/proc/driver/storage_logger_config"

    const-string v7, "0 0 1"

    invoke-direct {p0, v6, v7}, Lcom/mediatek/thermalmanager/MTKThermalManagerActivity;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    const-string v6, "/proc/driver/thermal_logger_config"

    const-string v7, "5"

    invoke-direct {p0, v6, v7}, Lcom/mediatek/thermalmanager/MTKThermalManagerActivity;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    const-string v6, "/proc/driver/storage_logger_bufsize_malloc"

    const-string v7, "10485760"

    invoke-direct {p0, v6, v7}, Lcom/mediatek/thermalmanager/MTKThermalManagerActivity;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    const-string v6, "/proc/driver/storage_logger"

    const-string v7, "ENABLE 1"

    invoke-direct {p0, v6, v7}, Lcom/mediatek/thermalmanager/MTKThermalManagerActivity;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 273
    .local v4, timems:J
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 274
    .local v1, curtime:Ljava/util/Date;
    invoke-virtual {v1, v4, v5}, Ljava/util/Date;->setTime(J)V

    .line 275
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v6, "kkmmss"

    invoke-direct {v3, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 276
    .local v3, sdf:Ljava/text/SimpleDateFormat;
    invoke-virtual {v3, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 277
    .local v0, ctstr:Ljava/lang/String;
    const-string v6, "/proc/driver/mtk_thermal_monitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "1 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/mediatek/thermalmanager/MTKThermalManagerActivity;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    const-string v6, "Thermal Logger started!"

    invoke-static {p0, v6, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 279
    const-string v6, "MTKThermalManagerActivity"

    const-string v7, "onCheckedChanged() logging started"

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 284
    .end local v0           #ctstr:Ljava/lang/String;
    .end local v1           #curtime:Ljava/util/Date;
    .end local v3           #sdf:Ljava/text/SimpleDateFormat;
    .end local v4           #timems:J
    :cond_2
    invoke-direct {p0}, Lcom/mediatek/thermalmanager/MTKThermalManagerActivity;->isThermalLoggerEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 286
    const-string v6, "MTKThermalManagerActivity"

    const-string v7, "onCheckedChanged() stop logging"

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    const-string v6, "Stopping Thermal Logger!"

    invoke-static {p0, v6, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 290
    const-string v6, "/proc/driver/mtk_thermal_monitor"

    const-string v7, "0"

    invoke-direct {p0, v6, v7}, Lcom/mediatek/thermalmanager/MTKThermalManagerActivity;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    const-string v6, "/proc/driver/storage_logger"

    const-string v7, "ENABLE 0"

    invoke-direct {p0, v6, v7}, Lcom/mediatek/thermalmanager/MTKThermalManagerActivity;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    const-string v6, "MTKThermalManagerActivity"

    const-string v7, "onCheckedChanged() disable storage logger"

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    new-instance v6, Ljava/io/File;

    const-string v7, "/data"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 299
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 300
    .restart local v4       #timems:J
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 301
    .restart local v1       #curtime:Ljava/util/Date;
    invoke-virtual {v1, v4, v5}, Ljava/util/Date;->setTime(J)V

    .line 302
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyyMMdd-kkmmssZ"

    invoke-direct {v3, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 303
    .restart local v3       #sdf:Ljava/text/SimpleDateFormat;
    invoke-virtual {v3, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 304
    .restart local v0       #ctstr:Ljava/lang/String;
    const-string v6, " "

    const-string v7, ""

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 306
    const-string v6, "MTKThermalManagerActivity"

    const-string v7, "onCheckedChanged() test write to /data"

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/data/storage_logger_dump_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-direct {p0, v6, v7}, Lcom/mediatek/thermalmanager/MTKThermalManagerActivity;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    :try_start_0
    new-instance v6, Ljava/io/File;

    const-string v7, "/proc/driver/storage_logger_display"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/data/storage_logger_dump_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v6, v7}, Lcom/mediatek/thermalmanager/MTKThermalManagerActivity;->appendFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Thermal Log storage_logger_dump_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " dumped to /data!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 325
    .end local v0           #ctstr:Ljava/lang/String;
    .end local v1           #curtime:Ljava/util/Date;
    .end local v3           #sdf:Ljava/text/SimpleDateFormat;
    .end local v4           #timems:J
    :goto_2
    const-string v6, "/proc/driver/storage_logger_bufsize_malloc"

    const-string v7, "2097152"

    invoke-direct {p0, v6, v7}, Lcom/mediatek/thermalmanager/MTKThermalManagerActivity;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 311
    .restart local v0       #ctstr:Ljava/lang/String;
    .restart local v1       #curtime:Ljava/util/Date;
    .restart local v3       #sdf:Ljava/text/SimpleDateFormat;
    .restart local v4       #timems:J
    :catch_0
    move-exception v2

    .line 313
    .local v2, e:Ljava/io/IOException;
    const-string v6, "MTKThermalManagerActivity"

    const-string v7, "onCheckedChanged() append file exception!"

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 320
    .end local v0           #ctstr:Ljava/lang/String;
    .end local v1           #curtime:Ljava/util/Date;
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #sdf:Ljava/text/SimpleDateFormat;
    .end local v4           #timems:J
    :cond_3
    const-string v6, "MTKThermalManagerActivity"

    const-string v7, "onCheckedChanged() data does not exist!"

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    const-string v6, "No storage to dump thermal Log!\n Please use adb command: \n @adb pull /proc/driver/storage_logger_display storage_logger_dump  "

    invoke-static {p0, v6, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 332
    :cond_4
    const-string v6, "MTKThermalManagerActivity"

    const-string v7, "onCheckedChanged() buttonView not found!"

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x1

    .line 344
    iget-object v0, p0, Lcom/mediatek/thermalmanager/MTKThermalManagerActivity;->selected_file_name:Ljava/lang/String;

    .line 346
    .local v0, newPolicyFilePath:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 393
    :cond_0
    :goto_0
    return-void

    .line 349
    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 351
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 353
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not applied.\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Please do not use space characters in file names."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 361
    :cond_2
    invoke-direct {p0}, Lcom/mediatek/thermalmanager/MTKThermalManagerActivity;->isThermalLoggerEnabled()Z

    move-result v1

    .line 362
    .local v1, thermal_log_on:Z
    if-ne v4, v1, :cond_3

    .line 364
    iget-object v2, p0, Lcom/mediatek/thermalmanager/MTKThermalManagerActivity;->thermal_logger_switch:Landroid/widget/Switch;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 367
    :cond_3
    invoke-direct {p0, v0}, Lcom/mediatek/thermalmanager/MTKThermalManagerActivity;->turnOnThermalProtection(Ljava/lang/String;)V

    .line 369
    const-string v2, "/etc/.tp/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 371
    const-string v0, "Applied..."

    .line 374
    :cond_4
    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 380
    if-ne v4, v1, :cond_0

    .line 382
    iget-object v2, p0, Lcom/mediatek/thermalmanager/MTKThermalManagerActivity;->thermal_logger_switch:Landroid/widget/Switch;

    invoke-virtual {v2, v4}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    .line 387
    .end local v1           #thermal_log_on:Z
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mediatek/thermalmanager/MTKThermalManagerActivity;->selected_file_name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not found!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    .line 90
    sget-object v4, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v5, "eng"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 92
    const-string v4, "Only supported in eng build."

    const/4 v5, 0x1

    invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 93
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 96
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 97
    const v4, 0x7f030001

    invoke-virtual {p0, v4}, Landroid/app/Activity;->setContentView(I)V

    .line 99
    const v4, 0x7f050008

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 100
    .local v0, button:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    const v4, 0x7f050006

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/mediatek/thermalmanager/MTKThermalManagerActivity;->thermal_main_tv:Landroid/widget/TextView;

    .line 107
    const v4, 0x7f050003

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Switch;

    iput-object v4, p0, Lcom/mediatek/thermalmanager/MTKThermalManagerActivity;->thermal_logger_switch:Landroid/widget/Switch;

    .line 108
    iget-object v4, p0, Lcom/mediatek/thermalmanager/MTKThermalManagerActivity;->thermal_logger_switch:Landroid/widget/Switch;

    if-eqz v4, :cond_1

    .line 109
    iget-object v4, p0, Lcom/mediatek/thermalmanager/MTKThermalManagerActivity;->thermal_logger_switch:Landroid/widget/Switch;

    invoke-virtual {v4, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 111
    :cond_1
    iget-object v4, p0, Lcom/mediatek/thermalmanager/MTKThermalManagerActivity;->thermal_logger_switch:Landroid/widget/Switch;

    invoke-direct {p0}, Lcom/mediatek/thermalmanager/MTKThermalManagerActivity;->isThermalLoggerEnabled()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/Switch;->setChecked(Z)V

    .line 116
    const v4, 0x7f050009

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    .line 117
    .local v3, thermal_main_lv:Landroid/widget/ListView;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 118
    .local v1, items:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const v4, 0x7f040002

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    const v4, 0x7f040001

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    new-instance v4, Landroid/widget/ArrayAdapter;

    const v5, 0x1090003

    invoke-direct {v4, p0, v5, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 121
    invoke-virtual {v3, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 127
    const v4, 0x7f050007

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    .line 128
    .local v2, s1:Landroid/widget/Spinner;
    iget-object v4, p0, Lcom/mediatek/thermalmanager/MTKThermalManagerActivity;->mtc_file_list:Ljava/util/List;

    if-nez v4, :cond_2

    .line 130
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/mediatek/thermalmanager/MTKThermalManagerActivity;->mtc_file_list:Ljava/util/List;

    .line 132
    :cond_2
    iget-object v4, p0, Lcom/mediatek/thermalmanager/MTKThermalManagerActivity;->mtc_file_adapter:Landroid/widget/ArrayAdapter;

    if-nez v4, :cond_3

    .line 134
    new-instance v4, Landroid/widget/ArrayAdapter;

    const v5, 0x1090008

    iget-object v6, p0, Lcom/mediatek/thermalmanager/MTKThermalManagerActivity;->mtc_file_list:Ljava/util/List;

    invoke-direct {v4, p0, v5, v6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v4, p0, Lcom/mediatek/thermalmanager/MTKThermalManagerActivity;->mtc_file_adapter:Landroid/widget/ArrayAdapter;

    .line 138
    :cond_3
    iget-object v4, p0, Lcom/mediatek/thermalmanager/MTKThermalManagerActivity;->mtc_file_adapter:Landroid/widget/ArrayAdapter;

    const v5, 0x1090009

    invoke-virtual {v4, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 139
    iget-object v4, p0, Lcom/mediatek/thermalmanager/MTKThermalManagerActivity;->mtc_file_adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 140
    new-instance v4, Lcom/mediatek/thermalmanager/MTKThermalManagerActivity$1;

    invoke-direct {v4, p0}, Lcom/mediatek/thermalmanager/MTKThermalManagerActivity$1;-><init>(Lcom/mediatek/thermalmanager/MTKThermalManagerActivity;)V

    invoke-virtual {v2, v4}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 171
    new-instance v4, Lcom/mediatek/thermalmanager/MTKThermalManagerActivity$2;

    invoke-direct {v4, p0}, Lcom/mediatek/thermalmanager/MTKThermalManagerActivity$2;-><init>(Lcom/mediatek/thermalmanager/MTKThermalManagerActivity;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 214
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    .line 217
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 219
    .local v0, intent:Landroid/content/Intent;
    packed-switch p3, :pswitch_data_0

    .line 240
    :goto_0
    return-void

    .line 222
    :pswitch_0
    const-string v1, "MTKThermalManagerActivity"

    const-string v2, "onItemClick() ThermalSensorActivity"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    invoke-direct {p0}, Lcom/mediatek/thermalmanager/MTKThermalManagerActivity;->isThermalLoggerEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 225
    const-string v1, "Thermal Logger started! Cannot enter!"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 229
    :cond_0
    const-class v1, Lcom/mediatek/thermalmanager/ThermalSensorActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 230
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 234
    :pswitch_1
    const-string v1, "MTKThermalManagerActivity"

    const-string v2, "onItemClick() CoolersActivity"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    const-class v1, Lcom/mediatek/thermalmanager/CoolersActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 236
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 219
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
