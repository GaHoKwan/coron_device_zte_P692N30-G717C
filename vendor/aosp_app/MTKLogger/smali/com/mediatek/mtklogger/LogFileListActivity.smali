.class public Lcom/mediatek/mtklogger/LogFileListActivity;
.super Landroid/app/Activity;
.source "LogFileListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/mtklogger/LogFileListActivity$LogFileAdapter;,
        Lcom/mediatek/mtklogger/LogFileListActivity$LogFileItem;
    }
.end annotation


# static fields
.field private static final CALCULATE_FILE_SIZE_DONE:I = 0x2

.field private static final FINISH_CLEAR_LOG:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MTKLogger/LogFileListActivity"


# instance fields
.field private mActionBar:Lcom/mediatek/mtklogger/settings/OptionalActionBarSwitch;

.field private mAdapter:Lcom/mediatek/mtklogger/LogFileListActivity$LogFileAdapter;

.field private mCancelButton:Landroid/widget/Button;

.field private mClearButton:Landroid/widget/Button;

.field private mClearLogConfirmDialog:Landroid/app/Dialog;

.field private mHandler:Landroid/os/Handler;

.field private mListView:Landroid/widget/ListView;

.field private mLogItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/mtklogger/LogFileListActivity$LogFileItem;",
            ">;"
        }
    .end annotation
.end field

.field private mNumSelected:I

.field private mRootPath:Ljava/lang/String;

.field private mSelectAllButton:Landroid/widget/CheckBox;

.field private mSelectAllTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/mtklogger/LogFileListActivity;->mLogItemList:Ljava/util/List;

    .line 60
    new-instance v0, Lcom/mediatek/mtklogger/LogFileListActivity$1;

    invoke-direct {v0, p0}, Lcom/mediatek/mtklogger/LogFileListActivity$1;-><init>(Lcom/mediatek/mtklogger/LogFileListActivity;)V

    iput-object v0, p0, Lcom/mediatek/mtklogger/LogFileListActivity;->mHandler:Landroid/os/Handler;

    .line 360
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/mtklogger/LogFileListActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/mediatek/mtklogger/LogFileListActivity;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/mtklogger/LogFileListActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/mediatek/mtklogger/LogFileListActivity;->mNumSelected:I

    return v0
.end method

.method static synthetic access$1000(Lcom/mediatek/mtklogger/LogFileListActivity;Ljava/io/File;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/mediatek/mtklogger/LogFileListActivity;->clearLogs(Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$102(Lcom/mediatek/mtklogger/LogFileListActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput p1, p0, Lcom/mediatek/mtklogger/LogFileListActivity;->mNumSelected:I

    return p1
.end method

.method static synthetic access$200(Lcom/mediatek/mtklogger/LogFileListActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/mediatek/mtklogger/LogFileListActivity;->updateTitle(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/mtklogger/LogFileListActivity;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/mediatek/mtklogger/LogFileListActivity;->mSelectAllButton:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/mtklogger/LogFileListActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/mediatek/mtklogger/LogFileListActivity;->mSelectAllTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/mtklogger/LogFileListActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/mediatek/mtklogger/LogFileListActivity;->setAllFileSelected(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/mediatek/mtklogger/LogFileListActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/mediatek/mtklogger/LogFileListActivity;->clearFileSelected()V

    return-void
.end method

.method static synthetic access$700(Lcom/mediatek/mtklogger/LogFileListActivity;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/mediatek/mtklogger/LogFileListActivity;->mLogItemList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$800(Lcom/mediatek/mtklogger/LogFileListActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/mediatek/mtklogger/LogFileListActivity;->mRootPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/mediatek/mtklogger/LogFileListActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/mediatek/mtklogger/LogFileListActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private clearFileSelected()V
    .locals 3

    .prologue
    .line 276
    iget v0, p0, Lcom/mediatek/mtklogger/LogFileListActivity;->mNumSelected:I

    if-nez v0, :cond_0

    .line 277
    const v0, 0x7f070060

    invoke-virtual {p0, v0}, Lcom/mediatek/mtklogger/LogFileListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 312
    :goto_0
    return-void

    .line 280
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f070061

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070062

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/mediatek/mtklogger/LogFileListActivity$8;

    invoke-direct {v2, p0}, Lcom/mediatek/mtklogger/LogFileListActivity$8;-><init>(Lcom/mediatek/mtklogger/LogFileListActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    new-instance v2, Lcom/mediatek/mtklogger/LogFileListActivity$7;

    invoke-direct {v2, p0}, Lcom/mediatek/mtklogger/LogFileListActivity$7;-><init>(Lcom/mediatek/mtklogger/LogFileListActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/mtklogger/LogFileListActivity;->mClearLogConfirmDialog:Landroid/app/Dialog;

    .line 311
    iget-object v0, p0, Lcom/mediatek/mtklogger/LogFileListActivity;->mClearLogConfirmDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method

.method private clearLogs(Ljava/io/File;)V
    .locals 6
    .parameter "dir"

    .prologue
    .line 315
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 325
    :goto_0
    return-void

    .line 318
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 319
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 320
    .local v2, files:[Ljava/io/File;
    move-object v0, v2

    .local v0, arr$:[Ljava/io/File;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 321
    .local v1, file:Ljava/io/File;
    invoke-direct {p0, v1}, Lcom/mediatek/mtklogger/LogFileListActivity;->clearLogs(Ljava/io/File;)V

    .line 320
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 324
    .end local v0           #arr$:[Ljava/io/File;
    .end local v1           #file:Ljava/io/File;
    .end local v2           #files:[Ljava/io/File;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method private findViews()V
    .locals 1

    .prologue
    .line 168
    const v0, 0x7f090015

    invoke-virtual {p0, v0}, Lcom/mediatek/mtklogger/LogFileListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/mediatek/mtklogger/LogFileListActivity;->mListView:Landroid/widget/ListView;

    .line 170
    const v0, 0x7f090013

    invoke-virtual {p0, v0}, Lcom/mediatek/mtklogger/LogFileListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/mtklogger/LogFileListActivity;->mSelectAllTextView:Landroid/widget/TextView;

    .line 171
    const v0, 0x7f090014

    invoke-virtual {p0, v0}, Lcom/mediatek/mtklogger/LogFileListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/mediatek/mtklogger/LogFileListActivity;->mSelectAllButton:Landroid/widget/CheckBox;

    .line 172
    const v0, 0x7f090017

    invoke-virtual {p0, v0}, Lcom/mediatek/mtklogger/LogFileListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/mtklogger/LogFileListActivity;->mClearButton:Landroid/widget/Button;

    .line 173
    const v0, 0x7f090018

    invoke-virtual {p0, v0}, Lcom/mediatek/mtklogger/LogFileListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/mtklogger/LogFileListActivity;->mCancelButton:Landroid/widget/Button;

    .line 174
    return-void
.end method

.method private initLogItemList(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .parameter "rootPath"
    .parameter "filterPath"

    .prologue
    .line 231
    if-eqz p1, :cond_0

    const-string v7, ""

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 232
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/mediatek/mtklogger/utils/Utils;->getCurrentLogPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/mtklog/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 234
    :cond_1
    const-string v7, "MTKLogger/LogFileListActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "initLogItemList() rootPath = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "; filterPath = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_3

    .line 273
    :cond_2
    :goto_0
    return-void

    .line 238
    :cond_3
    iput-object p1, p0, Lcom/mediatek/mtklogger/LogFileListActivity;->mRootPath:Ljava/lang/String;

    .line 239
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    .line 240
    .local v3, files:[Ljava/lang/String;
    array-length v7, v3

    if-eqz v7, :cond_2

    .line 243
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 244
    .local v4, filterFile:Ljava/io/File;
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_5

    const/4 v1, 0x1

    .line 245
    .local v1, doFilter:Z
    :goto_1
    move-object v0, v3

    .local v0, arr$:[Ljava/lang/String;
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_2
    if-ge v5, v6, :cond_7

    aget-object v2, v0, v5

    .line 246
    .local v2, fileName:Ljava/lang/String;
    if-eqz v1, :cond_6

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 245
    :cond_4
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 244
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #doFilter:Z
    .end local v2           #fileName:Ljava/lang/String;
    .end local v5           #i$:I
    .end local v6           #len$:I
    :cond_5
    const/4 v1, 0x0

    goto :goto_1

    .line 249
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #doFilter:Z
    .restart local v2       #fileName:Ljava/lang/String;
    .restart local v5       #i$:I
    .restart local v6       #len$:I
    :cond_6
    const-string v7, "file_tree.txt"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 252
    iget-object v7, p0, Lcom/mediatek/mtklogger/LogFileListActivity;->mLogItemList:Ljava/util/List;

    new-instance v8, Lcom/mediatek/mtklogger/LogFileListActivity$LogFileItem;

    const-wide/16 v9, 0x0

    invoke-direct {v8, p0, v2, v9, v10}, Lcom/mediatek/mtklogger/LogFileListActivity$LogFileItem;-><init>(Lcom/mediatek/mtklogger/LogFileListActivity;Ljava/lang/String;J)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 255
    .end local v2           #fileName:Ljava/lang/String;
    :cond_7
    iget-object v7, p0, Lcom/mediatek/mtklogger/LogFileListActivity;->mLogItemList:Ljava/util/List;

    new-instance v8, Lcom/mediatek/mtklogger/LogFileListActivity$5;

    invoke-direct {v8, p0}, Lcom/mediatek/mtklogger/LogFileListActivity$5;-><init>(Lcom/mediatek/mtklogger/LogFileListActivity;)V

    invoke-static {v7, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 263
    new-instance v7, Lcom/mediatek/mtklogger/LogFileListActivity$6;

    invoke-direct {v7, p0}, Lcom/mediatek/mtklogger/LogFileListActivity$6;-><init>(Lcom/mediatek/mtklogger/LogFileListActivity;)V

    invoke-virtual {v7}, Lcom/mediatek/mtklogger/LogFileListActivity$6;->start()V

    goto :goto_0
.end method

.method private initViews()V
    .locals 3

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/mediatek/mtklogger/LogFileListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "rootpath"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mediatek/mtklogger/LogFileListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "filterFilePath"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/mediatek/mtklogger/LogFileListActivity;->initLogItemList(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    new-instance v0, Lcom/mediatek/mtklogger/LogFileListActivity$LogFileAdapter;

    invoke-direct {v0, p0, p0}, Lcom/mediatek/mtklogger/LogFileListActivity$LogFileAdapter;-><init>(Lcom/mediatek/mtklogger/LogFileListActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/mtklogger/LogFileListActivity;->mAdapter:Lcom/mediatek/mtklogger/LogFileListActivity$LogFileAdapter;

    .line 180
    iget-object v0, p0, Lcom/mediatek/mtklogger/LogFileListActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/mediatek/mtklogger/LogFileListActivity;->mAdapter:Lcom/mediatek/mtklogger/LogFileListActivity$LogFileAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 182
    new-instance v0, Lcom/mediatek/mtklogger/settings/OptionalActionBarSwitch;

    iget v1, p0, Lcom/mediatek/mtklogger/LogFileListActivity;->mNumSelected:I

    invoke-direct {v0, p0, v1}, Lcom/mediatek/mtklogger/settings/OptionalActionBarSwitch;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/mediatek/mtklogger/LogFileListActivity;->mActionBar:Lcom/mediatek/mtklogger/settings/OptionalActionBarSwitch;

    .line 183
    return-void
.end method

.method private removeManualButton()V
    .locals 2

    .prologue
    .line 162
    const v1, 0x7f090011

    invoke-virtual {p0, v1}, Lcom/mediatek/mtklogger/LogFileListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 163
    .local v0, mainLinearLayout:Landroid/widget/LinearLayout;
    const v1, 0x7f090012

    invoke-virtual {p0, v1}, Lcom/mediatek/mtklogger/LogFileListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 164
    const v1, 0x7f090016

    invoke-virtual {p0, v1}, Lcom/mediatek/mtklogger/LogFileListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 165
    return-void
.end method

.method private setAllFileSelected(Z)V
    .locals 3
    .parameter "checked"

    .prologue
    .line 133
    iget-object v2, p0, Lcom/mediatek/mtklogger/LogFileListActivity;->mListView:Landroid/widget/ListView;

    if-eqz v2, :cond_1

    .line 134
    iget-object v2, p0, Lcom/mediatek/mtklogger/LogFileListActivity;->mLogItemList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/mtklogger/LogFileListActivity$LogFileItem;

    .line 135
    .local v1, logFileItem:Lcom/mediatek/mtklogger/LogFileListActivity$LogFileItem;
    invoke-virtual {v1, p1}, Lcom/mediatek/mtklogger/LogFileListActivity$LogFileItem;->setChecked(Z)V

    goto :goto_0

    .line 137
    .end local v1           #logFileItem:Lcom/mediatek/mtklogger/LogFileListActivity$LogFileItem;
    :cond_0
    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/mediatek/mtklogger/LogFileListActivity;->mLogItemList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_1
    iput v2, p0, Lcom/mediatek/mtklogger/LogFileListActivity;->mNumSelected:I

    .line 138
    iget-object v2, p0, Lcom/mediatek/mtklogger/LogFileListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->invalidateViews()V

    .line 140
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_1
    iget v2, p0, Lcom/mediatek/mtklogger/LogFileListActivity;->mNumSelected:I

    invoke-direct {p0, v2}, Lcom/mediatek/mtklogger/LogFileListActivity;->updateTitle(I)V

    .line 141
    return-void

    .line 137
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private setListeners()V
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/mediatek/mtklogger/LogFileListActivity;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/mediatek/mtklogger/LogFileListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/mediatek/mtklogger/LogFileListActivity;->mSelectAllButton:Landroid/widget/CheckBox;

    if-eqz v0, :cond_1

    .line 195
    iget-object v0, p0, Lcom/mediatek/mtklogger/LogFileListActivity;->mSelectAllButton:Landroid/widget/CheckBox;

    new-instance v1, Lcom/mediatek/mtklogger/LogFileListActivity$2;

    invoke-direct {v1, p0}, Lcom/mediatek/mtklogger/LogFileListActivity$2;-><init>(Lcom/mediatek/mtklogger/LogFileListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    :cond_1
    iget-object v0, p0, Lcom/mediatek/mtklogger/LogFileListActivity;->mClearButton:Landroid/widget/Button;

    if-eqz v0, :cond_2

    .line 210
    iget-object v0, p0, Lcom/mediatek/mtklogger/LogFileListActivity;->mClearButton:Landroid/widget/Button;

    new-instance v1, Lcom/mediatek/mtklogger/LogFileListActivity$3;

    invoke-direct {v1, p0}, Lcom/mediatek/mtklogger/LogFileListActivity$3;-><init>(Lcom/mediatek/mtklogger/LogFileListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    :cond_2
    iget-object v0, p0, Lcom/mediatek/mtklogger/LogFileListActivity;->mCancelButton:Landroid/widget/Button;

    if-eqz v0, :cond_3

    .line 220
    iget-object v0, p0, Lcom/mediatek/mtklogger/LogFileListActivity;->mCancelButton:Landroid/widget/Button;

    new-instance v1, Lcom/mediatek/mtklogger/LogFileListActivity$4;

    invoke-direct {v1, p0}, Lcom/mediatek/mtklogger/LogFileListActivity$4;-><init>(Lcom/mediatek/mtklogger/LogFileListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    :cond_3
    return-void
.end method

.method private updateTitle(I)V
    .locals 1
    .parameter "num"

    .prologue
    .line 186
    iget-object v0, p0, Lcom/mediatek/mtklogger/LogFileListActivity;->mActionBar:Lcom/mediatek/mtklogger/settings/OptionalActionBarSwitch;

    invoke-virtual {v0, p1}, Lcom/mediatek/mtklogger/settings/OptionalActionBarSwitch;->updateTitle(I)V

    .line 187
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 75
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 76
    const v0, 0x7f030006

    invoke-virtual {p0, v0}, Lcom/mediatek/mtklogger/LogFileListActivity;->setContentView(I)V

    .line 78
    sget v0, Lcom/mediatek/mtklogger/utils/Utils;->ANDROID_VERSION_NUMBER:F

    float-to-double v0, v0

    const-wide v2, 0x400ffdf3b645a1cbL

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 79
    invoke-direct {p0}, Lcom/mediatek/mtklogger/LogFileListActivity;->removeManualButton()V

    .line 82
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/mtklogger/LogFileListActivity;->findViews()V

    .line 83
    invoke-direct {p0}, Lcom/mediatek/mtklogger/LogFileListActivity;->initViews()V

    .line 84
    invoke-direct {p0}, Lcom/mediatek/mtklogger/LogFileListActivity;->setListeners()V

    .line 85
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .parameter "menu"

    .prologue
    const/4 v5, 0x1

    .line 97
    sget v1, Lcom/mediatek/mtklogger/utils/Utils;->ANDROID_VERSION_NUMBER:F

    float-to-double v1, v1

    const-wide v3, 0x400ffdf3b645a1cbL

    cmpg-double v1, v1, v3

    if-gez v1, :cond_0

    .line 102
    :goto_0
    return v5

    .line 100
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/mtklogger/LogFileListActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 101
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f080002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/mediatek/mtklogger/LogFileListActivity;->mClearLogConfirmDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/mediatek/mtklogger/LogFileListActivity;->mClearLogConfirmDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 92
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 93
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 146
    const v2, 0x7f09003f

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 147
    .local v0, checkBox:Landroid/widget/CheckBox;
    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    .line 149
    .local v1, isChecked:Z
    if-nez v1, :cond_1

    move v2, v3

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 150
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 151
    iget v2, p0, Lcom/mediatek/mtklogger/LogFileListActivity;->mNumSelected:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/mediatek/mtklogger/LogFileListActivity;->mNumSelected:I

    .line 152
    iget-object v2, p0, Lcom/mediatek/mtklogger/LogFileListActivity;->mLogItemList:Ljava/util/List;

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/mtklogger/LogFileListActivity$LogFileItem;

    invoke-virtual {v2, v3}, Lcom/mediatek/mtklogger/LogFileListActivity$LogFileItem;->setChecked(Z)V

    .line 157
    :goto_1
    iget v2, p0, Lcom/mediatek/mtklogger/LogFileListActivity;->mNumSelected:I

    invoke-direct {p0, v2}, Lcom/mediatek/mtklogger/LogFileListActivity;->updateTitle(I)V

    .line 159
    .end local v1           #isChecked:Z
    :cond_0
    return-void

    .restart local v1       #isChecked:Z
    :cond_1
    move v2, v4

    .line 149
    goto :goto_0

    .line 154
    :cond_2
    iget v2, p0, Lcom/mediatek/mtklogger/LogFileListActivity;->mNumSelected:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/mediatek/mtklogger/LogFileListActivity;->mNumSelected:I

    .line 155
    iget-object v2, p0, Lcom/mediatek/mtklogger/LogFileListActivity;->mLogItemList:Ljava/util/List;

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/mtklogger/LogFileListActivity$LogFileItem;

    invoke-virtual {v2, v4}, Lcom/mediatek/mtklogger/LogFileListActivity$LogFileItem;->setChecked(Z)V

    goto :goto_1
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 4
    .parameter "featureId"
    .parameter "item"

    .prologue
    .line 107
    sget v0, Lcom/mediatek/mtklogger/utils/Utils;->ANDROID_VERSION_NUMBER:F

    float-to-double v0, v0

    const-wide v2, 0x400ffdf3b645a1cbL

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 108
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    .line 123
    :goto_0
    return v0

    .line 110
    :cond_0
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 123
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    .line 112
    :pswitch_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mediatek/mtklogger/LogFileListActivity;->setAllFileSelected(Z)V

    goto :goto_1

    .line 115
    :pswitch_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mediatek/mtklogger/LogFileListActivity;->setAllFileSelected(Z)V

    goto :goto_1

    .line 118
    :pswitch_2
    invoke-direct {p0}, Lcom/mediatek/mtklogger/LogFileListActivity;->clearFileSelected()V

    goto :goto_1

    .line 110
    nop

    :pswitch_data_0
    .packed-switch 0x7f090048
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
