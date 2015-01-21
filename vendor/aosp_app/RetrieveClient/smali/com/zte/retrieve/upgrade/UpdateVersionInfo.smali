.class public Lcom/zte/retrieve/upgrade/UpdateVersionInfo;
.super Ljava/lang/Object;
.source "UpdateVersionInfo.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private updateButton:Landroid/widget/Button;

.field private updateInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private versionInfo:Ljava/lang/String;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)V
    .locals 5
    .parameter "context"
    .parameter "verPro"
    .parameter "verProLayout"

    .prologue
    const/4 v4, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string v3, ""

    iput-object v3, p0, Lcom/zte/retrieve/upgrade/UpdateVersionInfo;->versionInfo:Ljava/lang/String;

    .line 26
    iput-object v4, p0, Lcom/zte/retrieve/upgrade/UpdateVersionInfo;->updateInfo:Ljava/util/List;

    .line 27
    iput-object v4, p0, Lcom/zte/retrieve/upgrade/UpdateVersionInfo;->updateButton:Landroid/widget/Button;

    .line 28
    iput-object v4, p0, Lcom/zte/retrieve/upgrade/UpdateVersionInfo;->mContext:Landroid/content/Context;

    .line 32
    iput-object p1, p0, Lcom/zte/retrieve/upgrade/UpdateVersionInfo;->mContext:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/zte/retrieve/upgrade/UpdateVersionInfo;->versionInfo:Ljava/lang/String;

    .line 35
    iput-object p3, p0, Lcom/zte/retrieve/upgrade/UpdateVersionInfo;->view:Landroid/view/View;

    .line 37
    const-string v3, "name:"

    invoke-direct {p0, v3}, Lcom/zte/retrieve/upgrade/UpdateVersionInfo;->createVersionInfoString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 38
    .local v1, versionName:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/zte/retrieve/upgrade/UpdateVersionInfo;->setVersionName(Ljava/lang/String;)V

    .line 40
    const-string v3, "size:"

    invoke-direct {p0, v3}, Lcom/zte/retrieve/upgrade/UpdateVersionInfo;->createVersionInfoString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 41
    .local v2, versionSize:Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/zte/retrieve/upgrade/UpdateVersionInfo;->setVersionSize(Ljava/lang/String;)V

    .line 43
    const-string v3, "feature:"

    invoke-direct {p0, v3}, Lcom/zte/retrieve/upgrade/UpdateVersionInfo;->createVersionInfoString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, updateInfoStr:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/zte/retrieve/upgrade/UpdateVersionInfo;->setVersionDescription(Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method private createVersionInfoString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "feature"

    .prologue
    .line 79
    iget-object v3, p0, Lcom/zte/retrieve/upgrade/UpdateVersionInfo;->versionInfo:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 80
    .local v0, featureIndex:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v0, v3

    .line 81
    iget-object v3, p0, Lcom/zte/retrieve/upgrade/UpdateVersionInfo;->versionInfo:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 82
    .local v2, name:Ljava/lang/String;
    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 83
    .local v1, indexEnd:I
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private setVersionDescription(Ljava/lang/String;)V
    .locals 3
    .parameter "descrip"

    .prologue
    .line 74
    iget-object v1, p0, Lcom/zte/retrieve/upgrade/UpdateVersionInfo;->view:Landroid/view/View;

    const v2, 0x7f09001c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 75
    .local v0, text:Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    return-void
.end method

.method private setVersionName(Ljava/lang/String;)V
    .locals 4
    .parameter "versionName"

    .prologue
    .line 64
    iget-object v2, p0, Lcom/zte/retrieve/upgrade/UpdateVersionInfo;->mContext:Landroid/content/Context;

    const v3, 0x7f0600bc

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, buffer:Ljava/lang/String;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 66
    iget-object v2, p0, Lcom/zte/retrieve/upgrade/UpdateVersionInfo;->view:Landroid/view/View;

    const v3, 0x7f09001a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 67
    .local v1, text:Landroid/widget/TextView;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    return-void
.end method

.method private setVersionSize(Ljava/lang/String;)V
    .locals 9
    .parameter "size"

    .prologue
    .line 51
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 52
    .local v0, apkSize:I
    int-to-float v4, v0

    const/high16 v5, 0x4980

    div-float v1, v4, v5

    .line 54
    .local v1, apkSizeMB:F
    iget-object v4, p0, Lcom/zte/retrieve/upgrade/UpdateVersionInfo;->mContext:Landroid/content/Context;

    const v5, 0x7f0600c0

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 55
    .local v2, buffer:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "%.2f"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "MB"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 56
    iget-object v4, p0, Lcom/zte/retrieve/upgrade/UpdateVersionInfo;->view:Landroid/view/View;

    const v5, 0x7f09001b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 57
    .local v3, text:Landroid/widget/TextView;
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    return-void
.end method
