.class Lcom/mediatek/mtklogger/LogFileListActivity$LogFileAdapter;
.super Landroid/widget/BaseAdapter;
.source "LogFileListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/mtklogger/LogFileListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LogFileAdapter"
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/mediatek/mtklogger/LogFileListActivity;


# direct methods
.method public constructor <init>(Lcom/mediatek/mtklogger/LogFileListActivity;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 364
    iput-object p1, p0, Lcom/mediatek/mtklogger/LogFileListActivity$LogFileAdapter;->this$0:Lcom/mediatek/mtklogger/LogFileListActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 365
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/mtklogger/LogFileListActivity$LogFileAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 366
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/mediatek/mtklogger/LogFileListActivity$LogFileAdapter;->this$0:Lcom/mediatek/mtklogger/LogFileListActivity;

    #getter for: Lcom/mediatek/mtklogger/LogFileListActivity;->mLogItemList:Ljava/util/List;
    invoke-static {v0}, Lcom/mediatek/mtklogger/LogFileListActivity;->access$700(Lcom/mediatek/mtklogger/LogFileListActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "i"

    .prologue
    .line 375
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "i"

    .prologue
    .line 380
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 14
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 385
    move-object/from16 v7, p2

    .line 386
    .local v7, view:Landroid/view/View;
    if-nez v7, :cond_0

    .line 387
    iget-object v8, p0, Lcom/mediatek/mtklogger/LogFileListActivity$LogFileAdapter;->mInflater:Landroid/view/LayoutInflater;

    const/high16 v9, 0x7f04

    const/4 v10, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v8, v9, v0, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 390
    :cond_0
    const v8, 0x7f090040

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 391
    .local v2, fileNameTextView:Landroid/widget/TextView;
    const v8, 0x7f090041

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 392
    .local v5, fileSizeTextView:Landroid/widget/TextView;
    const v8, 0x7f09003f

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 394
    .local v1, checkBox:Landroid/widget/CheckBox;
    iget-object v8, p0, Lcom/mediatek/mtklogger/LogFileListActivity$LogFileAdapter;->this$0:Lcom/mediatek/mtklogger/LogFileListActivity;

    #getter for: Lcom/mediatek/mtklogger/LogFileListActivity;->mLogItemList:Ljava/util/List;
    invoke-static {v8}, Lcom/mediatek/mtklogger/LogFileListActivity;->access$700(Lcom/mediatek/mtklogger/LogFileListActivity;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mediatek/mtklogger/LogFileListActivity$LogFileItem;

    .line 395
    .local v6, logFileItem:Lcom/mediatek/mtklogger/LogFileListActivity$LogFileItem;
    invoke-virtual {v6}, Lcom/mediatek/mtklogger/LogFileListActivity$LogFileItem;->getFileName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 396
    invoke-virtual {v6}, Lcom/mediatek/mtklogger/LogFileListActivity$LogFileItem;->getFileSize()J

    move-result-wide v8

    long-to-double v3, v8

    .line 397
    .local v3, fileSize:D
    const-wide/high16 v8, 0x4090

    cmpg-double v8, v3, v8

    if-gez v8, :cond_1

    .line 398
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Size "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Lcom/mediatek/mtklogger/LogFileListActivity$LogFileItem;->getFileSize()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " B"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 404
    :goto_0
    invoke-virtual {v6}, Lcom/mediatek/mtklogger/LogFileListActivity$LogFileItem;->isChecked()Z

    move-result v8

    invoke-virtual {v1, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 406
    return-object v7

    .line 399
    :cond_1
    const-wide/high16 v8, 0x4090

    div-double v8, v3, v8

    const-wide/high16 v10, 0x4090

    cmpg-double v8, v8, v10

    if-gez v8, :cond_2

    .line 400
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Size "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    new-instance v9, Ljava/text/DecimalFormat;

    const-string v10, ".00"

    invoke-direct {v9, v10}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const-wide/high16 v10, 0x4090

    div-double v10, v3, v10

    invoke-virtual {v9, v10, v11}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " KB"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 402
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Size "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    new-instance v9, Ljava/text/DecimalFormat;

    const-string v10, ".00"

    invoke-direct {v9, v10}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const-wide/high16 v10, 0x4090

    div-double v10, v3, v10

    const-wide/high16 v12, 0x4090

    div-double/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " MB"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
