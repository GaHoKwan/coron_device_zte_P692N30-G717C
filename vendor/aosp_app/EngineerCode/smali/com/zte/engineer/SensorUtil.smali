.class public Lcom/zte/engineer/SensorUtil;
.super Ljava/lang/Object;
.source "SensorUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Emode.SensorUtil"

.field private static final mEmodeSvr:Lcom/zte/engineer/EmodeSvrManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    invoke-static {}, Lcom/zte/engineer/EmodeSvrManager;->getInstance()Lcom/zte/engineer/EmodeSvrManager;

    move-result-object v0

    sput-object v0, Lcom/zte/engineer/SensorUtil;->mEmodeSvr:Lcom/zte/engineer/EmodeSvrManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final checkSensorExist()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 17
    new-instance v0, Ljava/io/File;

    const-string v2, "/data/emode/sensormode.conf"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 19
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 20
    const/4 v1, 0x1

    .line 24
    :goto_0
    return v1

    .line 23
    :cond_0
    sget-object v2, Lcom/zte/engineer/SensorUtil;->mEmodeSvr:Lcom/zte/engineer/EmodeSvrManager;

    const/4 v3, 0x5

    invoke-virtual {v2, v3, v1}, Lcom/zte/engineer/EmodeSvrManager;->doEmodeCmd(II)I

    goto :goto_0
.end method

.method public static final getConfigInputStream()Ljava/io/FileInputStream;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zte/engineer/EmodeException;
        }
    .end annotation

    .prologue
    .line 47
    const/4 v1, 0x0

    .line 49
    .local v1, in:Ljava/io/FileInputStream;
    invoke-static {}, Lcom/zte/engineer/SensorUtil;->checkSensorExist()Z

    move-result v3

    if-nez v3, :cond_0

    .line 50
    new-instance v3, Lcom/zte/engineer/EmodeException;

    const-string v4, "Emode.SensorUtil"

    const-string v5, "getConfigInputStream: checkSensorExist is false"

    invoke-direct {v3, v4, v5}, Lcom/zte/engineer/EmodeException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v3

    .line 55
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    const-string v3, "/data/emode/sensormode.conf"

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #in:Ljava/io/FileInputStream;
    .local v2, in:Ljava/io/FileInputStream;
    move-object v1, v2

    .line 59
    .end local v2           #in:Ljava/io/FileInputStream;
    .restart local v1       #in:Ljava/io/FileInputStream;
    :goto_0
    return-object v1

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v3, "Emode.SensorUtil"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static final getConfigOutStream()Ljava/io/FileOutputStream;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zte/engineer/EmodeException;
        }
    .end annotation

    .prologue
    .line 29
    const/4 v1, 0x0

    .line 31
    .local v1, out:Ljava/io/FileOutputStream;
    invoke-static {}, Lcom/zte/engineer/SensorUtil;->checkSensorExist()Z

    move-result v3

    if-nez v3, :cond_0

    .line 32
    new-instance v3, Lcom/zte/engineer/EmodeException;

    const-string v4, "Emode.SensorUtil"

    const-string v5, "getConfigOutStream: checkSensorExist is false"

    invoke-direct {v3, v4, v5}, Lcom/zte/engineer/EmodeException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v3

    .line 37
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    const-string v3, "/data/emode/sensormode.conf"

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #out:Ljava/io/FileOutputStream;
    .local v2, out:Ljava/io/FileOutputStream;
    move-object v1, v2

    .line 42
    .end local v2           #out:Ljava/io/FileOutputStream;
    .restart local v1       #out:Ljava/io/FileOutputStream;
    :goto_0
    return-object v1

    .line 38
    :catch_0
    move-exception v0

    .line 39
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v3, "Emode.SensorUtil"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getSensorProp()Ljava/util/Properties;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/zte/engineer/EmodeException;
        }
    .end annotation

    .prologue
    .line 64
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    .line 65
    .local v2, prop:Ljava/util/Properties;
    const/4 v1, 0x0

    .line 68
    .local v1, in:Ljava/io/FileInputStream;
    :try_start_0
    invoke-static {}, Lcom/zte/engineer/SensorUtil;->getConfigInputStream()Ljava/io/FileInputStream;

    move-result-object v1

    .line 70
    if-nez v1, :cond_0

    .line 71
    const/4 v2, 0x0

    .line 80
    .end local v2           #prop:Ljava/util/Properties;
    :goto_0
    return-object v2

    .line 73
    .restart local v2       #prop:Ljava/util/Properties;
    :cond_0
    invoke-virtual {v2, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 74
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, e:Ljava/io/IOException;
    const-string v3, "Emode.SensorUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSensorProp:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    throw v0
.end method
