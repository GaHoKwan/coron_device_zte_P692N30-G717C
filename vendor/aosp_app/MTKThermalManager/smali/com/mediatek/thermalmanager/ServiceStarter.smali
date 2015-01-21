.class public Lcom/mediatek/thermalmanager/ServiceStarter;
.super Landroid/content/BroadcastReceiver;
.source "ServiceStarter.java"


# static fields
.field static final BOOTUP:Ljava/lang/String; = "android.intent.action.BOOT_COMPLETED"

.field static final LOG_TAG:Ljava/lang/String; = "thermalmanager.ServiceStarter"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "contxt"
    .parameter "intent"

    .prologue
    .line 62
    const-string v4, "thermalmanager.ServiceStarter"

    const-string v5, "onReceiver()\n"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 67
    const-string v4, "thermalmanager.ServiceStarter"

    const-string v5, "onReceiver() android.intent.action.BOOT_COMPLETED\n"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    new-instance v0, Ljava/io/File;

    const-string v4, "/proc/driver/mtk_cl_sd_rst"

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 72
    .local v0, a:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 75
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 76
    .local v3, fs:Ljava/io/FileOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 77
    .local v1, ds:Ljava/io/DataOutputStream;
    new-instance v4, Ljava/lang/String;

    const-string v5, "1"

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/OutputStream;->write([B)V

    .line 78
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 79
    invoke-virtual {v1}, Ljava/io/FilterOutputStream;->close()V

    .line 80
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    .end local v0           #a:Ljava/io/File;
    .end local v1           #ds:Ljava/io/DataOutputStream;
    .end local v3           #fs:Ljava/io/FileOutputStream;
    :cond_0
    :goto_0
    return-void

    .line 82
    .restart local v0       #a:Ljava/io/File;
    :catch_0
    move-exception v2

    .line 83
    .local v2, ex:Ljava/lang/Exception;
    const-string v4, "thermalmanager.ServiceStarter"

    const-string v5, "onReceiver() write mtk_cl_sd_rst exception\n"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
