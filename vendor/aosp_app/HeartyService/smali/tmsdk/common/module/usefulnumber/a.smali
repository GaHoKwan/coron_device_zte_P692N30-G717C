.class final Ltmsdk/common/module/usefulnumber/a;
.super Ltmsdk/common/creator/BaseManagerC;
.source "SourceFile"


# instance fields
.field private Ca:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdk/common/module/usefulnumber/UsefulNumberEntity;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ltmsdk/common/creator/BaseManagerC;-><init>()V

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ltmsdk/common/module/usefulnumber/a;->mData:Ljava/util/HashMap;

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ltmsdk/common/module/usefulnumber/a;->Ca:Ljava/util/HashMap;

    return-void
.end method

.method private fY()V
    .locals 15

    .prologue
    .line 27
    invoke-direct {p0}, Ltmsdk/common/module/usefulnumber/a;->fZ()Ljava/lang/String;

    move-result-object v10

    .line 28
    .local v10, rawString:Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    const-string v13, "\\n"

    invoke-virtual {v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 29
    .local v6, lines:[Ljava/lang/String;
    const/4 v7, 0x0

    .line 31
    .local v7, mChildData:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdk/common/module/usefulnumber/UsefulNumberEntity;>;"
    move-object v0, v6

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v5, v0, v2

    .line 32
    .local v5, line:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 33
    const-string v12, "@"

    invoke-virtual {v5, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 34
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .local v11, tempList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdk/common/module/usefulnumber/UsefulNumberEntity;>;"
    iget-object v12, p0, Ltmsdk/common/module/usefulnumber/a;->mData:Ljava/util/HashMap;

    const-string v13, "@"

    const-string v14, ""

    invoke-virtual {v5, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    move-object v7, v11

    .line 31
    .end local v11           #tempList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdk/common/module/usefulnumber/UsefulNumberEntity;>;"
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 38
    :cond_1
    if-eqz v7, :cond_0

    .line 39
    const/16 v12, 0x24

    invoke-virtual {v5, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 40
    .local v3, index:I
    const/4 v12, 0x0

    invoke-virtual {v5, v12, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 41
    .local v9, phonenum:Ljava/lang/String;
    add-int/lit8 v12, v3, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v5, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 43
    .local v8, name:Ljava/lang/String;
    new-instance v1, Ltmsdk/common/module/usefulnumber/UsefulNumberEntity;

    invoke-direct {v1}, Ltmsdk/common/module/usefulnumber/UsefulNumberEntity;-><init>()V

    .line 44
    .local v1, entity:Ltmsdk/common/module/usefulnumber/UsefulNumberEntity;
    invoke-virtual {v1, v9}, Ltmsdk/common/module/usefulnumber/UsefulNumberEntity;->setNumber(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v1, v8}, Ltmsdk/common/module/usefulnumber/UsefulNumberEntity;->setName(Ljava/lang/String;)V

    .line 46
    iget-object v12, p0, Ltmsdk/common/module/usefulnumber/a;->Ca:Ljava/util/HashMap;

    invoke-virtual {v12, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 50
    .end local v1           #entity:Ltmsdk/common/module/usefulnumber/UsefulNumberEntity;
    .end local v3           #index:I
    .end local v5           #line:Ljava/lang/String;
    .end local v8           #name:Ljava/lang/String;
    .end local v9           #phonenum:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private fZ()Ljava/lang/String;
    .locals 7

    .prologue
    .line 73
    const-string v4, ""

    .line 75
    .local v4, result:Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Ltmsdk/common/module/usefulnumber/a;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    const-string v6, "yellowpage.db"

    invoke-virtual {v5, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 77
    .local v2, in:Ljava/io/InputStream;
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v3

    .line 79
    .local v3, lenght:I
    new-array v0, v3, [B

    .line 81
    .local v0, buffer:[B
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    .line 83
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 84
    const-string v5, "utf-8"

    invoke-static {v0, v5}, Lorg/apache/http/util/EncodingUtils;->getString([BLjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 88
    .end local v0           #buffer:[B
    .end local v2           #in:Ljava/io/InputStream;
    .end local v3           #lenght:I
    :goto_0
    return-object v4

    .line 85
    :catch_0
    move-exception v1

    .line 86
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getAllYellowNumbers()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Ltmsdk/common/module/usefulnumber/a;->Ca:Ljava/util/HashMap;

    return-object v0
.end method

.method public getAllYellowNumbersWithGroup()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdk/common/module/usefulnumber/UsefulNumberEntity;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Ltmsdk/common/module/usefulnumber/a;->mData:Ljava/util/HashMap;

    return-object v0
.end method

.method public getSingletonType()I
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 98
    iput-object p1, p0, Ltmsdk/common/module/usefulnumber/a;->mContext:Landroid/content/Context;

    .line 99
    invoke-direct {p0}, Ltmsdk/common/module/usefulnumber/a;->fY()V

    .line 100
    return-void
.end method
