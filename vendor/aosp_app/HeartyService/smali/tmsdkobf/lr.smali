.class public Ltmsdkobf/lr;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltmsdkobf/lr$a;
    }
.end annotation


# static fields
.field public static TAG:Ljava/lang/String;


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-string v0, "BaseUserLogStrategry"

    sput-object v0, Ltmsdkobf/lr;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ltmsdkobf/lr$a;

    invoke-static {}, Ltmsdk/common/TMSDKContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Ltmsdkobf/lr$a;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Ltmsdkobf/lr;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method protected static gF()V
    .locals 10

    .prologue
    .line 63
    invoke-static {}, Ltmsdkobf/lu;->gJ()V

    .line 66
    new-instance v1, Ljava/io/File;

    sget-object v8, Ltmsdkobf/lu;->path:Ljava/lang/String;

    invoke-direct {v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 67
    .local v1, dir:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 68
    .local v3, files:[Ljava/io/File;
    if-eqz v3, :cond_1

    array-length v8, v3

    invoke-static {}, Ltmsdkobf/lv;->gL()I

    move-result v9

    if-le v8, v9, :cond_1

    .line 69
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .local v7, list:Ljava/util/List;,"Ljava/util/List<Ljava/io/File;>;"
    move-object v0, v3

    .local v0, arr$:[Ljava/io/File;
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v2, v0, v5

    .line 71
    .local v2, f:Ljava/io/File;
    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 73
    .end local v2           #f:Ljava/io/File;
    :cond_0
    new-instance v8, Ltmsdkobf/lr$1;

    invoke-direct {v8}, Ltmsdkobf/lr$1;-><init>()V

    invoke-static {v7, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 92
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {}, Ltmsdkobf/lv;->gL()I

    move-result v9

    sub-int/2addr v8, v9

    if-ge v4, v8, :cond_1

    .line 93
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 92
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 96
    .end local v0           #arr$:[Ljava/io/File;
    .end local v4           #i:I
    .end local v5           #i$:I
    .end local v6           #len$:I
    .end local v7           #list:Ljava/util/List;,"Ljava/util/List<Ljava/io/File;>;"
    :cond_1
    return-void
.end method


# virtual methods
.method public gD()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    return-object v0
.end method

.method public gE()Z
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    return v0
.end method
