.class final Ltmsdkobf/id$2;
.super Ltmsdkobf/kt;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltmsdkobf/id;->b(Landroid/content/pm/PackageManager;IZ)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ltmsdkobf/kt",
        "<",
        "Ljava/util/List",
        "<",
        "Landroid/content/pm/ApplicationInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic qG:Landroid/content/pm/PackageManager;

.field final synthetic qH:I

.field final synthetic qI:Z


# direct methods
.method constructor <init>(Landroid/content/pm/PackageManager;IZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 203
    iput-object p1, p0, Ltmsdkobf/id$2;->qG:Landroid/content/pm/PackageManager;

    iput p2, p0, Ltmsdkobf/id$2;->qH:I

    iput-boolean p3, p0, Ltmsdkobf/id$2;->qI:Z

    invoke-direct {p0}, Ltmsdkobf/kt;-><init>()V

    return-void
.end method


# virtual methods
.method public cA()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 208
    const/4 v2, 0x0

    .line 210
    .local v2, infoList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v3, 0x2

    if-ge v1, v3, :cond_0

    .line 212
    :try_start_0
    iget-object v3, p0, Ltmsdkobf/id$2;->qG:Landroid/content/pm/PackageManager;

    iget v4, p0, Ltmsdkobf/id$2;->qH:I

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 230
    :cond_0
    :goto_1
    return-object v2

    .line 215
    :catch_0
    move-exception v0

    .line 216
    .local v0, e:Ljava/lang/RuntimeException;
    iget-boolean v3, p0, Ltmsdkobf/id$2;->qI:Z

    if-eqz v3, :cond_1

    .line 217
    invoke-static {v0}, Ltmsdkobf/id;->a(Ljava/lang/RuntimeException;)V

    goto :goto_1

    .line 220
    :cond_1
    invoke-static {v1, v0}, Ltmsdkobf/id;->b(ILjava/lang/RuntimeException;)V

    .line 222
    invoke-static {}, Ltmsdkobf/id;->cx()I

    .line 223
    invoke-static {}, Ltmsdkobf/id;->cy()V

    .line 225
    :try_start_1
    invoke-static {}, Ltmsdkobf/id;->cz()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 210
    .end local v0           #e:Ljava/lang/RuntimeException;
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 226
    .restart local v0       #e:Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 227
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2
.end method

.method public cB()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 235
    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic cC()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 203
    invoke-virtual {p0}, Ltmsdkobf/id$2;->cB()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public synthetic cD()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 203
    invoke-virtual {p0}, Ltmsdkobf/id$2;->cA()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
