.class public Lcom/zte/heartyservice/interceptad/AdFilterTask;
.super Landroid/os/AsyncTask;
.source "AdFilterTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/interceptad/AdFilterTask$AdFilterCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        "Ljava/util/List",
        "<",
        "Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mCallback:Lcom/zte/heartyservice/interceptad/AdFilterTask$AdFilterCallback;

.field private mContext:Landroid/content/Context;

.field private mPackageName:Ljava/lang/String;

.field private mParser:Lcom/zte/heartyservice/interceptad/FeatureParser;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/zte/heartyservice/interceptad/AdFilterTask$AdFilterCallback;)V
    .locals 1
    .parameter "context"
    .parameter "packagename"
    .parameter "callback"

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/zte/heartyservice/interceptad/AdFilterTask;->mContext:Landroid/content/Context;

    .line 27
    invoke-static {p1}, Lcom/zte/heartyservice/interceptad/FeatureParser;->getInstance(Landroid/content/Context;)Lcom/zte/heartyservice/interceptad/FeatureParser;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/interceptad/AdFilterTask;->mParser:Lcom/zte/heartyservice/interceptad/FeatureParser;

    .line 28
    iput-object p2, p0, Lcom/zte/heartyservice/interceptad/AdFilterTask;->mPackageName:Ljava/lang/String;

    .line 29
    iput-object p3, p0, Lcom/zte/heartyservice/interceptad/AdFilterTask;->mCallback:Lcom/zte/heartyservice/interceptad/AdFilterTask$AdFilterCallback;

    .line 30
    return-void
.end method

.method private getPackageLabel(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageManager;)Ljava/lang/String;
    .locals 1
    .parameter "info"
    .parameter "pm"

    .prologue
    .line 34
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, p2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/interceptad/AdFilterTask;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 10
    .parameter "arg0"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 64
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 65
    .local v1, appList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;>;"
    invoke-static {}, Lcom/zte/heartyservice/common/utils/XmlParseUtils;->isForeignVersion()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 96
    :cond_0
    return-object v1

    .line 69
    :cond_1
    iget-object v7, p0, Lcom/zte/heartyservice/interceptad/AdFilterTask;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 70
    .local v6, pm:Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    .line 72
    .local v4, packageList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    iget-object v7, p0, Lcom/zte/heartyservice/interceptad/AdFilterTask;->mPackageName:Ljava/lang/String;

    if-eqz v7, :cond_2

    .line 74
    :try_start_0
    iget-object v7, p0, Lcom/zte/heartyservice/interceptad/AdFilterTask;->mPackageName:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 75
    .local v3, info:Landroid/content/pm/PackageInfo;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .end local v4           #packageList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .local v5, packageList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :try_start_1
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v4, v5

    .line 82
    .end local v3           #info:Landroid/content/pm/PackageInfo;
    .end local v5           #packageList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v4       #packageList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :cond_2
    :goto_0
    if-nez v4, :cond_3

    .line 83
    invoke-virtual {v6, v9}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v4

    .line 86
    :cond_3
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 87
    .restart local v3       #info:Landroid/content/pm/PackageInfo;
    if-eqz v3, :cond_5

    iget-object v7, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v7, v7, 0x1

    if-nez v7, :cond_4

    .line 90
    :cond_5
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    invoke-direct {p0, v3, v6}, Lcom/zte/heartyservice/interceptad/AdFilterTask;->getPackageLabel(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {p0, v7}, Lcom/zte/heartyservice/interceptad/AdFilterTask;->publishProgress([Ljava/lang/Object;)V

    .line 91
    iget-object v7, p0, Lcom/zte/heartyservice/interceptad/AdFilterTask;->mParser:Lcom/zte/heartyservice/interceptad/FeatureParser;

    invoke-virtual {v7, v3}, Lcom/zte/heartyservice/interceptad/FeatureParser;->parsePackage(Landroid/content/pm/PackageInfo;)Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;

    move-result-object v0

    .line 92
    .local v0, app:Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;
    if-eqz v0, :cond_4

    .line 93
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 77
    .end local v0           #app:Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #info:Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v7

    goto :goto_0

    .end local v4           #packageList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v3       #info:Landroid/content/pm/PackageInfo;
    .restart local v5       #packageList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :catch_1
    move-exception v7

    move-object v4, v5

    .end local v5           #packageList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v4       #packageList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 19
    check-cast p1, Ljava/util/List;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/interceptad/AdFilterTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 106
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;>;"
    iget-object v0, p0, Lcom/zte/heartyservice/interceptad/AdFilterTask;->mCallback:Lcom/zte/heartyservice/interceptad/AdFilterTask$AdFilterCallback;

    invoke-interface {v0, p1}, Lcom/zte/heartyservice/interceptad/AdFilterTask$AdFilterCallback;->onFilterCompleted(Ljava/util/List;)V

    .line 107
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 19
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/interceptad/AdFilterTask;->onProgressUpdate([Ljava/lang/String;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/String;)V
    .locals 2
    .parameter "values"

    .prologue
    .line 101
    const/4 v1, 0x0

    aget-object v0, p1, v1

    .line 102
    .local v0, progress:Ljava/lang/String;
    iget-object v1, p0, Lcom/zte/heartyservice/interceptad/AdFilterTask;->mCallback:Lcom/zte/heartyservice/interceptad/AdFilterTask$AdFilterCallback;

    invoke-interface {v1, v0}, Lcom/zte/heartyservice/interceptad/AdFilterTask$AdFilterCallback;->updateDialog(Ljava/lang/String;)V

    .line 103
    return-void
.end method
