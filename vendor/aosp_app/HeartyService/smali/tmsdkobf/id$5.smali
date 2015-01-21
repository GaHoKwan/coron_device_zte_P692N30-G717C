.class final Ltmsdkobf/id$5;
.super Ltmsdkobf/kt;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltmsdkobf/id;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;IZ)Landroid/content/pm/ApplicationInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ltmsdkobf/kt",
        "<",
        "Landroid/content/pm/ApplicationInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic qG:Landroid/content/pm/PackageManager;

.field final synthetic qH:I

.field final synthetic qI:Z

.field final synthetic qJ:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/pm/PackageManager;Ljava/lang/String;IZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 444
    iput-object p1, p0, Ltmsdkobf/id$5;->qG:Landroid/content/pm/PackageManager;

    iput-object p2, p0, Ltmsdkobf/id$5;->qJ:Ljava/lang/String;

    iput p3, p0, Ltmsdkobf/id$5;->qH:I

    iput-boolean p4, p0, Ltmsdkobf/id$5;->qI:Z

    invoke-direct {p0}, Ltmsdkobf/kt;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic cC()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 444
    invoke-virtual {p0}, Ltmsdkobf/id$5;->cF()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method

.method public synthetic cD()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 444
    invoke-virtual {p0}, Ltmsdkobf/id$5;->cE()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method

.method public cE()Landroid/content/pm/ApplicationInfo;
    .locals 6

    .prologue
    .line 448
    const/4 v2, 0x0

    .line 449
    .local v2, info:Landroid/content/pm/ApplicationInfo;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v3, 0x2

    if-ge v1, v3, :cond_0

    .line 453
    :try_start_0
    iget-object v3, p0, Ltmsdkobf/id$5;->qG:Landroid/content/pm/PackageManager;

    iget-object v4, p0, Ltmsdkobf/id$5;->qJ:Ljava/lang/String;

    iget v5, p0, Ltmsdkobf/id$5;->qH:I

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 474
    :cond_0
    :goto_1
    return-object v2

    .line 456
    :catch_0
    move-exception v0

    .line 458
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_1

    .line 459
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v0

    .line 460
    .local v0, e:Ljava/lang/RuntimeException;
    iget-boolean v3, p0, Ltmsdkobf/id$5;->qI:Z

    if-eqz v3, :cond_1

    .line 461
    invoke-static {v0}, Ltmsdkobf/id;->a(Ljava/lang/RuntimeException;)V

    goto :goto_1

    .line 464
    :cond_1
    invoke-static {v1, v0}, Ltmsdkobf/id;->b(ILjava/lang/RuntimeException;)V

    .line 466
    invoke-static {}, Ltmsdkobf/id;->cx()I

    .line 467
    invoke-static {}, Ltmsdkobf/id;->cy()V

    .line 469
    :try_start_1
    invoke-static {}, Ltmsdkobf/id;->cz()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    .line 449
    .end local v0           #e:Ljava/lang/RuntimeException;
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 470
    .restart local v0       #e:Ljava/lang/RuntimeException;
    :catch_2
    move-exception v0

    .line 471
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2
.end method

.method public cF()Landroid/content/pm/ApplicationInfo;
    .locals 1

    .prologue
    .line 479
    const/4 v0, 0x0

    return-object v0
.end method
