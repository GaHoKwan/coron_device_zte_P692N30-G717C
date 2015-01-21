.class public Lcn/com/zte/yp/config/ConfigHelper;
.super Ljava/lang/Object;
.source "ConfigHelper.java"


# instance fields
.field private context:Landroid/content/Context;

.field private dirPath:Ljava/lang/String;

.field private fileName:Ljava/lang/String;

.field private mPprops:Ljava/util/Properties;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "dirPath"
    .parameter "fileName"

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/com/zte/yp/config/ConfigHelper;->mPprops:Ljava/util/Properties;

    .line 28
    iput-object p1, p0, Lcn/com/zte/yp/config/ConfigHelper;->context:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Lcn/com/zte/yp/config/ConfigHelper;->dirPath:Ljava/lang/String;

    .line 30
    iput-object p3, p0, Lcn/com/zte/yp/config/ConfigHelper;->fileName:Ljava/lang/String;

    .line 31
    return-void
.end method

.method private static copyRawToFiles(Landroid/content/Context;Ljava/lang/String;IILjava/io/File;)V
    .locals 6
    .parameter "context"
    .parameter "DestName"
    .parameter "resID"
    .parameter "FileMode"
    .parameter "destFile"

    .prologue
    .line 126
    const/4 v1, 0x0

    .line 127
    .local v1, byteread:I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    .line 129
    .local v3, in:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0, p1, p3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v4

    .line 130
    .local v4, out:Ljava/io/FileOutputStream;
    const/16 v5, 0x800

    new-array v0, v5, [B

    .line 132
    .local v0, buffer:[B
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v5, -0x1

    if-eq v1, v5, :cond_1

    .line 133
    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 142
    .end local v0           #buffer:[B
    .end local v4           #out:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v2

    .line 143
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 145
    .end local v2           #e:Ljava/io/IOException;
    :cond_0
    :goto_1
    return-void

    .line 135
    .restart local v0       #buffer:[B
    .restart local v4       #out:Ljava/io/FileOutputStream;
    :cond_1
    if-eqz v4, :cond_2

    .line 136
    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 138
    :cond_2
    if-eqz v3, :cond_0

    .line 139
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private initConfigProperties(Ljava/lang/String;)Z
    .locals 3
    .parameter "path"

    .prologue
    .line 51
    iget-object v2, p0, Lcn/com/zte/yp/config/ConfigHelper;->context:Landroid/content/Context;

    invoke-virtual {p0, v2}, Lcn/com/zte/yp/config/ConfigHelper;->checkConfigFiles(Landroid/content/Context;)V

    .line 52
    iget-object v2, p0, Lcn/com/zte/yp/config/ConfigHelper;->mPprops:Ljava/util/Properties;

    if-nez v2, :cond_0

    .line 53
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    iput-object v2, p0, Lcn/com/zte/yp/config/ConfigHelper;->mPprops:Ljava/util/Properties;

    .line 58
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcn/com/zte/yp/config/ConfigHelper;->context:Landroid/content/Context;

    invoke-virtual {v2, p1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1

    .line 59
    .local v1, in:Ljava/io/InputStream;
    iget-object v2, p0, Lcn/com/zte/yp/config/ConfigHelper;->mPprops:Ljava/util/Properties;

    invoke-virtual {v2, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 60
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    const/4 v2, 0x1

    .end local v1           #in:Ljava/io/InputStream;
    :goto_1
    return v2

    .line 55
    :cond_0
    iget-object v2, p0, Lcn/com/zte/yp/config/ConfigHelper;->mPprops:Ljava/util/Properties;

    invoke-virtual {v2}, Ljava/util/Properties;->clear()V

    goto :goto_0

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 64
    const/4 v2, 0x0

    goto :goto_1
.end method


# virtual methods
.method public checkConfigFiles(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    .line 96
    const-string v5, "checkConfigFiles"

    invoke-static {v5}, Lcn/com/zte/yp/utils/Logging;->d(Ljava/lang/String;)V

    .line 97
    iget-object v4, p0, Lcn/com/zte/yp/config/ConfigHelper;->dirPath:Ljava/lang/String;

    .line 98
    .local v4, path:Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 99
    .local v3, dir:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 100
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 102
    :cond_0
    iget-object v1, p0, Lcn/com/zte/yp/config/ConfigHelper;->fileName:Ljava/lang/String;

    .line 103
    .local v1, configName:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcn/com/zte/yp/config/ConfigHelper;->fileName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 104
    .local v2, configPath:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 105
    .local v0, config:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 106
    const-string v5, "copyRawToFiles"

    invoke-static {v5}, Lcn/com/zte/yp/utils/Logging;->d(Ljava/lang/String;)V

    .line 107
    const/high16 v5, 0x7f05

    const/4 v6, 0x2

    invoke-static {p1, v1, v5, v6, v0}, Lcn/com/zte/yp/config/ConfigHelper;->copyRawToFiles(Landroid/content/Context;Ljava/lang/String;IILjava/io/File;)V

    .line 111
    :goto_0
    return-void

    .line 109
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "configPath="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " exist"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/com/zte/yp/utils/Logging;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getBoolProperty(Ljava/lang/String;)Z
    .locals 2
    .parameter "key"

    .prologue
    .line 92
    invoke-virtual {p0, p1}, Lcn/com/zte/yp/config/ConfigHelper;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getIntProperty(Ljava/lang/String;)I
    .locals 2
    .parameter "key"

    .prologue
    .line 186
    invoke-virtual {p0, p1}, Lcn/com/zte/yp/config/ConfigHelper;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, value:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 188
    :cond_0
    const/4 v1, 0x0

    .line 190
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0, p1}, Lcn/com/zte/yp/config/ConfigHelper;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "key"

    .prologue
    .line 77
    iget-object v1, p0, Lcn/com/zte/yp/config/ConfigHelper;->mPprops:Ljava/util/Properties;

    if-nez v1, :cond_1

    .line 78
    const-string v0, ""

    .line 82
    :cond_0
    :goto_0
    return-object v0

    .line 81
    :cond_1
    iget-object v1, p0, Lcn/com/zte/yp/config/ConfigHelper;->mPprops:Ljava/util/Properties;

    invoke-virtual {v1, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, value:Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0
.end method

.method public initAppConfigProperties()Z
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcn/com/zte/yp/config/ConfigHelper;->fileName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcn/com/zte/yp/config/ConfigHelper;->initConfigProperties(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public reset(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    .line 114
    iget-object v4, p0, Lcn/com/zte/yp/config/ConfigHelper;->dirPath:Ljava/lang/String;

    .line 115
    .local v4, path:Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 116
    .local v3, dir:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 117
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 119
    :cond_0
    iget-object v1, p0, Lcn/com/zte/yp/config/ConfigHelper;->fileName:Ljava/lang/String;

    .line 120
    .local v1, configName:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcn/com/zte/yp/config/ConfigHelper;->fileName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 121
    .local v2, configPath:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 122
    .local v0, config:Ljava/io/File;
    const/high16 v5, 0x7f05

    const/4 v6, 0x2

    invoke-static {p1, v1, v5, v6, v0}, Lcn/com/zte/yp/config/ConfigHelper;->copyRawToFiles(Landroid/content/Context;Ljava/lang/String;IILjava/io/File;)V

    .line 123
    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter "key"
    .parameter "value"

    .prologue
    const/4 v2, 0x0

    .line 155
    iget-object v3, p0, Lcn/com/zte/yp/config/ConfigHelper;->mPprops:Ljava/util/Properties;

    if-nez v3, :cond_0

    .line 175
    :goto_0
    return v2

    .line 159
    :cond_0
    iget-object v3, p0, Lcn/com/zte/yp/config/ConfigHelper;->mPprops:Ljava/util/Properties;

    invoke-virtual {v3, p1, p2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 161
    const/4 v1, 0x0

    .line 163
    .local v1, out:Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v3, p0, Lcn/com/zte/yp/config/ConfigHelper;->context:Landroid/content/Context;

    iget-object v4, p0, Lcn/com/zte/yp/config/ConfigHelper;->fileName:Ljava/lang/String;

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 164
    iget-object v3, p0, Lcn/com/zte/yp/config/ConfigHelper;->mPprops:Ljava/util/Properties;

    const-string v4, "value"

    invoke-virtual {v3, v1, v4}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 165
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 175
    const/4 v2, 0x1

    goto :goto_0

    .line 167
    :catch_0
    move-exception v0

    .line 168
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 171
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 172
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
