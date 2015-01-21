.class public Lcn/com/zte/yp/config/PreConfig$Config;
.super Ljava/lang/Object;
.source "PreConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/zte/yp/config/PreConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Config"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private filePath:Ljava/lang/String;

.field private mPprops:Ljava/util/Properties;

.field final synthetic this$0:Lcn/com/zte/yp/config/PreConfig;


# direct methods
.method public constructor <init>(Lcn/com/zte/yp/config/PreConfig;Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "filePath"

    .prologue
    .line 97
    iput-object p1, p0, Lcn/com/zte/yp/config/PreConfig$Config;->this$0:Lcn/com/zte/yp/config/PreConfig;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/com/zte/yp/config/PreConfig$Config;->mPprops:Ljava/util/Properties;

    .line 99
    iput-object p2, p0, Lcn/com/zte/yp/config/PreConfig$Config;->context:Landroid/content/Context;

    .line 100
    iput-object p3, p0, Lcn/com/zte/yp/config/PreConfig$Config;->filePath:Ljava/lang/String;

    .line 101
    invoke-direct {p0, p3}, Lcn/com/zte/yp/config/PreConfig$Config;->initConfigProperties(Ljava/lang/String;)Z

    .line 102
    return-void
.end method

.method private initConfigProperties(Ljava/lang/String;)Z
    .locals 5
    .parameter "path"

    .prologue
    const/4 v2, 0x0

    .line 113
    iget-object v3, p0, Lcn/com/zte/yp/config/PreConfig$Config;->this$0:Lcn/com/zte/yp/config/PreConfig;

    iget-object v4, p0, Lcn/com/zte/yp/config/PreConfig$Config;->filePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcn/com/zte/yp/config/PreConfig;->checkConfigFiles(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 130
    :goto_0
    return v2

    .line 116
    :cond_0
    iget-object v3, p0, Lcn/com/zte/yp/config/PreConfig$Config;->mPprops:Ljava/util/Properties;

    if-nez v3, :cond_1

    .line 117
    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    iput-object v3, p0, Lcn/com/zte/yp/config/PreConfig$Config;->mPprops:Ljava/util/Properties;

    .line 122
    :goto_1
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcn/com/zte/yp/config/PreConfig$Config;->filePath:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 123
    .local v1, in:Ljava/io/InputStream;
    iget-object v3, p0, Lcn/com/zte/yp/config/PreConfig$Config;->mPprops:Ljava/util/Properties;

    invoke-virtual {v3, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 124
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    const/4 v2, 0x1

    goto :goto_0

    .line 119
    .end local v1           #in:Ljava/io/InputStream;
    :cond_1
    iget-object v3, p0, Lcn/com/zte/yp/config/PreConfig$Config;->mPprops:Ljava/util/Properties;

    invoke-virtual {v3}, Ljava/util/Properties;->clear()V

    goto :goto_1

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getBoolProperty(Ljava/lang/String;)Z
    .locals 2
    .parameter "key"

    .prologue
    .line 155
    invoke-virtual {p0, p1}, Lcn/com/zte/yp/config/PreConfig$Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

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
    .line 166
    invoke-virtual {p0, p1}, Lcn/com/zte/yp/config/PreConfig$Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, value:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 168
    :cond_0
    const/4 v1, 0x0

    .line 170
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0, p1}, Lcn/com/zte/yp/config/PreConfig$Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

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
    .line 141
    iget-object v1, p0, Lcn/com/zte/yp/config/PreConfig$Config;->mPprops:Ljava/util/Properties;

    if-nez v1, :cond_1

    .line 142
    const-string v0, ""

    .line 145
    :cond_0
    :goto_0
    return-object v0

    .line 144
    :cond_1
    iget-object v1, p0, Lcn/com/zte/yp/config/PreConfig$Config;->mPprops:Ljava/util/Properties;

    invoke-virtual {v1, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, value:Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0
.end method
