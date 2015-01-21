.class public Lcom/autonavi/xmgd/citydata/DownloadingAdapter;
.super Landroid/widget/BaseExpandableListAdapter;


# instance fields
.field private mBinder:Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;

.field private mContext:Landroid/content/Context;

.field private mDataList:[Lcom/autonavi/xmgd/citydata/DownloadItem;

.field private mRemoveClickListener:Landroid/view/View$OnClickListener;

.field private mZipExceptionId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;[Lcom/autonavi/xmgd/citydata/DownloadItem;Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;Landroid/view/View$OnClickListener;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    iput-object p1, p0, Lcom/autonavi/xmgd/citydata/DownloadingAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/autonavi/xmgd/citydata/DownloadingAdapter;->mDataList:[Lcom/autonavi/xmgd/citydata/DownloadItem;

    iput-object p4, p0, Lcom/autonavi/xmgd/citydata/DownloadingAdapter;->mRemoveClickListener:Landroid/view/View$OnClickListener;

    iput-object p3, p0, Lcom/autonavi/xmgd/citydata/DownloadingAdapter;->mBinder:Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;

    return-void
.end method


# virtual methods
.method public getChild(II)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getChildId(II)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getChildrenCount(I)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DownloadingAdapter;->mDataList:[Lcom/autonavi/xmgd/citydata/DownloadItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DownloadingAdapter;->mDataList:[Lcom/autonavi/xmgd/citydata/DownloadItem;

    array-length v0, v0

    if-gtz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DownloadingAdapter;->mDataList:[Lcom/autonavi/xmgd/citydata/DownloadItem;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public getGroupCount()I
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DownloadingAdapter;->mDataList:[Lcom/autonavi/xmgd/citydata/DownloadItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DownloadingAdapter;->mDataList:[Lcom/autonavi/xmgd/citydata/DownloadItem;

    array-length v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getGroupId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    const/4 v8, 0x0

    if-nez p3, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DownloadingAdapter;->mContext:Landroid/content/Context;

    const v1, 0x7f03000e

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DownloadingAdapter;->mDataList:[Lcom/autonavi/xmgd/citydata/DownloadItem;

    aget-object v1, v0, p1

    const v0, 0x7f0c0036

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-wide v2, v1, Lcom/autonavi/xmgd/citydata/DownloadItem;->downloadedSize:J

    iget-wide v4, v1, Lcom/autonavi/xmgd/citydata/DownloadItem;->totalSize:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_3

    iget v2, p0, Lcom/autonavi/xmgd/citydata/DownloadingAdapter;->mZipExceptionId:I

    iget v3, v1, Lcom/autonavi/xmgd/citydata/DownloadItem;->id:I

    if-ne v2, v3, :cond_2

    const v2, 0x7f07021d

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    const v0, 0x7f0c0037

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/autonavi/xmgd/citydata/DownloadingAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f070201

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-wide v5, v1, Lcom/autonavi/xmgd/citydata/DownloadItem;->downloadedSize:J

    invoke-static {v5, v6}, Lcom/autonavi/xmgd/citydata/GlobalCity;->formateFileSize(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    const/4 v5, 0x1

    iget-wide v6, v1, Lcom/autonavi/xmgd/citydata/DownloadItem;->totalSize:J

    invoke-static {v6, v7}, Lcom/autonavi/xmgd/citydata/GlobalCity;->formateFileSize(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0c0039

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/view/GDImageButton;

    iget-object v2, p0, Lcom/autonavi/xmgd/citydata/DownloadingAdapter;->mRemoveClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Lcom/autonavi/xmgd/view/GDImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/view/GDImageButton;->setTag(Ljava/lang/Object;)V

    iget v2, v1, Lcom/autonavi/xmgd/citydata/DownloadItem;->id:I

    const/4 v3, 0x7

    if-eq v2, v3, :cond_1

    iget v2, v1, Lcom/autonavi/xmgd/citydata/DownloadItem;->id:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_4

    :cond_1
    iget-object v2, p0, Lcom/autonavi/xmgd/citydata/DownloadingAdapter;->mBinder:Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;

    iget v3, v1, Lcom/autonavi/xmgd/citydata/DownloadItem;->id:I

    invoke-virtual {v2, v3}, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->isCityDataDownloaded(I)Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/autonavi/xmgd/view/GDImageButton;->setVisibility(I)V

    :goto_1
    const v0, 0x7f0c0038

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v3, v1, Lcom/autonavi/xmgd/citydata/DownloadItem;->downloadedSize:J

    const-wide/16 v5, 0x64

    mul-long/2addr v3, v5

    iget-wide v5, v1, Lcom/autonavi/xmgd/citydata/DownloadItem;->totalSize:J

    div-long/2addr v3, v5

    long-to-int v1, v3

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p3

    :cond_2
    const v2, 0x7f07021c

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    :cond_3
    iget-object v2, v1, Lcom/autonavi/xmgd/citydata/DownloadItem;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v0, v8}, Lcom/autonavi/xmgd/view/GDImageButton;->setVisibility(I)V

    goto :goto_1
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setData([Lcom/autonavi/xmgd/citydata/DownloadItem;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/citydata/DownloadingAdapter;->mDataList:[Lcom/autonavi/xmgd/citydata/DownloadItem;

    invoke-virtual {p0}, Lcom/autonavi/xmgd/citydata/DownloadingAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setZipExceptionId(I)V
    .locals 0

    iput p1, p0, Lcom/autonavi/xmgd/citydata/DownloadingAdapter;->mZipExceptionId:I

    return-void
.end method
