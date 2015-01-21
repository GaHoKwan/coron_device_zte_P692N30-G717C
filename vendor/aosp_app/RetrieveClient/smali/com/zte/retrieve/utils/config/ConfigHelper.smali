.class public Lcom/zte/retrieve/utils/config/ConfigHelper;
.super Ljava/lang/Object;
.source "ConfigHelper.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPprops:Ljava/util/Properties;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/retrieve/utils/config/ConfigHelper;->mPprops:Ljava/util/Properties;

    .line 16
    return-void
.end method

.method private initConfigProperties(I)Z
    .locals 5
    .parameter "resourceID"

    .prologue
    .line 36
    iget-object v4, p0, Lcom/zte/retrieve/utils/config/ConfigHelper;->mPprops:Ljava/util/Properties;

    if-nez v4, :cond_1

    .line 37
    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    iput-object v4, p0, Lcom/zte/retrieve/utils/config/ConfigHelper;->mPprops:Ljava/util/Properties;

    .line 41
    :goto_0
    const/4 v2, 0x0

    .line 43
    .local v2, myConfig:Ljava/io/InputStream;
    :try_start_0
    iget-object v4, p0, Lcom/zte/retrieve/utils/config/ConfigHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 44
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 45
    .local v3, res:Landroid/content/res/Resources;
    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    .line 46
    iget-object v4, p0, Lcom/zte/retrieve/utils/config/ConfigHelper;->mPprops:Ljava/util/Properties;

    invoke-virtual {v4, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    if-eqz v2, :cond_0

    .line 55
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 61
    :cond_0
    :goto_1
    const/4 v4, 0x1

    .end local v0           #context:Landroid/content/Context;
    .end local v3           #res:Landroid/content/res/Resources;
    :goto_2
    return v4

    .line 39
    .end local v2           #myConfig:Ljava/io/InputStream;
    :cond_1
    iget-object v4, p0, Lcom/zte/retrieve/utils/config/ConfigHelper;->mPprops:Ljava/util/Properties;

    invoke-virtual {v4}, Ljava/util/Properties;->clear()V

    goto :goto_0

    .line 48
    .restart local v2       #myConfig:Ljava/io/InputStream;
    :catch_0
    move-exception v1

    .line 49
    .local v1, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 54
    if-eqz v2, :cond_2

    .line 55
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 50
    .end local v1           #e:Ljava/lang/Exception;
    :cond_2
    :goto_3
    const/4 v4, 0x0

    goto :goto_2

    .line 57
    .restart local v1       #e:Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 58
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 52
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 54
    if-eqz v2, :cond_3

    .line 55
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 60
    :cond_3
    :goto_4
    throw v4

    .line 57
    :catch_2
    move-exception v1

    .line 58
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 57
    .end local v1           #e:Ljava/io/IOException;
    .restart local v0       #context:Landroid/content/Context;
    .restart local v3       #res:Landroid/content/res/Resources;
    :catch_3
    move-exception v1

    .line 58
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public getBoolProperty(Ljava/lang/String;)Z
    .locals 2
    .parameter "key"

    .prologue
    .line 102
    invoke-virtual {p0, p1}, Lcom/zte/retrieve/utils/config/ConfigHelper;->getProperty(Ljava/lang/String;)Ljava/lang/String;

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
    .line 72
    invoke-virtual {p0, p1}, Lcom/zte/retrieve/utils/config/ConfigHelper;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, value:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 74
    :cond_0
    const/4 v1, 0x0

    .line 76
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/zte/retrieve/utils/config/ConfigHelper;->getProperty(Ljava/lang/String;)Ljava/lang/String;

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
    .line 87
    iget-object v1, p0, Lcom/zte/retrieve/utils/config/ConfigHelper;->mPprops:Ljava/util/Properties;

    if-nez v1, :cond_1

    .line 88
    const-string v0, ""

    .line 92
    :cond_0
    :goto_0
    return-object v0

    .line 91
    :cond_1
    iget-object v1, p0, Lcom/zte/retrieve/utils/config/ConfigHelper;->mPprops:Ljava/util/Properties;

    invoke-virtual {v1, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, value:Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0
.end method

.method public initAppConfigProperties(I)Z
    .locals 1
    .parameter "resourceID"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/zte/retrieve/utils/config/ConfigHelper;->initConfigProperties(I)Z

    move-result v0

    return v0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .parameter "appContext"

    .prologue
    .line 106
    iput-object p1, p0, Lcom/zte/retrieve/utils/config/ConfigHelper;->mContext:Landroid/content/Context;

    .line 107
    return-void
.end method
