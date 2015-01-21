.class public Lcom/zte/heartyservice/antivirus/Tencent/VirusScanResultAdapter;
.super Landroid/widget/BaseAdapter;
.source "VirusScanResultAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/antivirus/Tencent/VirusScanResultAdapter$BodyViewHolder;
    }
.end annotation


# instance fields
.field private mActivity:Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;

.field private mDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/antivirus/Tencent/QScanRecordEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;Ljava/util/List;)V
    .locals 1
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/antivirus/Tencent/QScanRecordEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p2, data:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/antivirus/Tencent/QScanRecordEntity;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/VirusScanResultAdapter;->mDataList:Ljava/util/List;

    .line 31
    iput-object p1, p0, Lcom/zte/heartyservice/antivirus/Tencent/VirusScanResultAdapter;->mActivity:Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;

    .line 32
    iput-object p2, p0, Lcom/zte/heartyservice/antivirus/Tencent/VirusScanResultAdapter;->mDataList:Ljava/util/List;

    .line 33
    iget-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/VirusScanResultAdapter;->mActivity:Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/VirusScanResultAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 35
    return-void
.end method

.method static synthetic access$100(Lcom/zte/heartyservice/antivirus/Tencent/VirusScanResultAdapter;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/VirusScanResultAdapter;->mDataList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/zte/heartyservice/antivirus/Tencent/VirusScanResultAdapter;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/antivirus/Tencent/VirusScanResultAdapter;->removeFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/zte/heartyservice/antivirus/Tencent/VirusScanResultAdapter;)Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/VirusScanResultAdapter;->mActivity:Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;

    return-object v0
.end method

.method private removeFile(Ljava/lang/String;)Z
    .locals 3
    .parameter "filepath"

    .prologue
    .line 110
    const/4 v1, 0x1

    .line 111
    .local v1, result:Z
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 112
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    .line 113
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    .line 115
    :cond_0
    return v1
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/VirusScanResultAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 46
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 52
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v4, 0x0

    .line 60
    if-nez p2, :cond_0

    .line 61
    iget-object v2, p0, Lcom/zte/heartyservice/antivirus/Tencent/VirusScanResultAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030071

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 62
    new-instance v0, Lcom/zte/heartyservice/antivirus/Tencent/VirusScanResultAdapter$BodyViewHolder;

    invoke-direct {v0, v4}, Lcom/zte/heartyservice/antivirus/Tencent/VirusScanResultAdapter$BodyViewHolder;-><init>(Lcom/zte/heartyservice/antivirus/Tencent/VirusScanResultAdapter$1;)V

    .line 63
    .local v0, holder:Lcom/zte/heartyservice/antivirus/Tencent/VirusScanResultAdapter$BodyViewHolder;
    const v2, 0x7f0e013e

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/zte/heartyservice/antivirus/Tencent/VirusScanResultAdapter$BodyViewHolder;->mName:Landroid/widget/TextView;

    .line 64
    const v2, 0x7f0e013f

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/zte/heartyservice/antivirus/Tencent/VirusScanResultAdapter$BodyViewHolder;->mNumber:Landroid/widget/TextView;

    .line 65
    const v2, 0x7f0e0141

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, v0, Lcom/zte/heartyservice/antivirus/Tencent/VirusScanResultAdapter$BodyViewHolder;->mDelBtn:Landroid/widget/Button;

    .line 66
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 71
    :goto_0
    iget-object v2, p0, Lcom/zte/heartyservice/antivirus/Tencent/VirusScanResultAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zte/heartyservice/antivirus/Tencent/QScanRecordEntity;

    iget-object v1, v2, Lcom/zte/heartyservice/antivirus/Tencent/QScanRecordEntity;->packageName:Ljava/lang/String;

    .line 72
    .local v1, pkgname:Ljava/lang/String;
    iget-object v2, v0, Lcom/zte/heartyservice/antivirus/Tencent/VirusScanResultAdapter$BodyViewHolder;->mName:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v3, v0, Lcom/zte/heartyservice/antivirus/Tencent/VirusScanResultAdapter$BodyViewHolder;->mNumber:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/zte/heartyservice/antivirus/Tencent/VirusScanResultAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zte/heartyservice/antivirus/Tencent/QScanRecordEntity;

    iget-object v2, v2, Lcom/zte/heartyservice/antivirus/Tencent/QScanRecordEntity;->discription:Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v2, v0, Lcom/zte/heartyservice/antivirus/Tencent/VirusScanResultAdapter$BodyViewHolder;->mDelBtn:Landroid/widget/Button;

    new-instance v3, Lcom/zte/heartyservice/antivirus/Tencent/VirusScanResultAdapter$1;

    invoke-direct {v3, p0, p1, v1}, Lcom/zte/heartyservice/antivirus/Tencent/VirusScanResultAdapter$1;-><init>(Lcom/zte/heartyservice/antivirus/Tencent/VirusScanResultAdapter;ILjava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    return-object p2

    .line 69
    .end local v0           #holder:Lcom/zte/heartyservice/antivirus/Tencent/VirusScanResultAdapter$BodyViewHolder;
    .end local v1           #pkgname:Ljava/lang/String;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/heartyservice/antivirus/Tencent/VirusScanResultAdapter$BodyViewHolder;

    .restart local v0       #holder:Lcom/zte/heartyservice/antivirus/Tencent/VirusScanResultAdapter$BodyViewHolder;
    goto :goto_0
.end method

.method public setDataList(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/antivirus/Tencent/QScanRecordEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 119
    .local p1, argDataList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/antivirus/Tencent/QScanRecordEntity;>;"
    iput-object p1, p0, Lcom/zte/heartyservice/antivirus/Tencent/VirusScanResultAdapter;->mDataList:Ljava/util/List;

    .line 120
    return-void
.end method
