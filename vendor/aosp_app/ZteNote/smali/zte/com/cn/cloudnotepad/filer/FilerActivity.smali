.class public Lzte/com/cn/cloudnotepad/filer/FilerActivity;
.super Landroid/app/ListActivity;
.source "FilerActivity.java"


# static fields
.field private static final STATE_ATTACH:Ljava/lang/String; = "cloudnotepad.getattach"

.field private static final STATE_SAVEAS:Ljava/lang/String; = "cloudnotepad.saveas"

.field public static mCurDir:Ljava/io/File;

.field public static mCurFiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActionBar:Landroid/app/ActionBar;

.field private mFileComparatorByName:Ljava/util/Comparator;

.field private mFilerListAdapter:Lzte/com/cn/cloudnotepad/filer/FilerListAdapter;

.field mIsScrolling:Z

.field private mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private mPathArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private mPathMenuButton:Landroid/widget/Button;

.field private mPathPopupWindow:Landroid/widget/ListPopupWindow;

.field private mState:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lzte/com/cn/cloudnotepad/filer/FilerActivity;->mCurFiles:Ljava/util/ArrayList;

    .line 33
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/filer/FilerActivity;->mPathArray:Ljava/util/ArrayList;

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lzte/com/cn/cloudnotepad/filer/FilerActivity;->mIsScrolling:Z

    .line 246
    new-instance v0, Lzte/com/cn/cloudnotepad/filer/FilerActivity$1;

    invoke-direct {v0, p0}, Lzte/com/cn/cloudnotepad/filer/FilerActivity$1;-><init>(Lzte/com/cn/cloudnotepad/filer/FilerActivity;)V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/filer/FilerActivity;->mFileComparatorByName:Ljava/util/Comparator;

    .line 270
    new-instance v0, Lzte/com/cn/cloudnotepad/filer/FilerActivity$2;

    invoke-direct {v0, p0}, Lzte/com/cn/cloudnotepad/filer/FilerActivity$2;-><init>(Lzte/com/cn/cloudnotepad/filer/FilerActivity;)V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/filer/FilerActivity;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 33
    return-void
.end method

.method private doBackPressed()V
    .locals 1

    .prologue
    .line 230
    sget-object v0, Lzte/com/cn/cloudnotepad/filer/FilerActivity;->mCurDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lzte/com/cn/cloudnotepad/filer/FilerActivity;->fillData(Ljava/lang/String;)V

    .line 231
    return-void
.end method

.method private fillData(Ljava/lang/String;)V
    .locals 2
    .parameter "filePath"

    .prologue
    .line 143
    sget-object v0, Lzte/com/cn/cloudnotepad/filer/FilerActivity;->mCurFiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 144
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lzte/com/cn/cloudnotepad/filer/FilerActivity;->mCurDir:Ljava/io/File;

    .line 145
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/filer/FilerActivity;->getCurFiles()V

    .line 146
    sget-object v0, Lzte/com/cn/cloudnotepad/filer/FilerActivity;->mCurFiles:Ljava/util/ArrayList;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/filer/FilerActivity;->mFileComparatorByName:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 147
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/filer/FilerActivity;->mPathMenuButton:Landroid/widget/Button;

    sget-object v1, Lzte/com/cn/cloudnotepad/filer/FilerActivity;->mCurDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 148
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/filer/FilerActivity;->mFilerListAdapter:Lzte/com/cn/cloudnotepad/filer/FilerListAdapter;

    invoke-virtual {p0, v0}, Lzte/com/cn/cloudnotepad/filer/FilerActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 150
    return-void
.end method

.method private getCurFiles()V
    .locals 7

    .prologue
    .line 154
    sget-object v3, Lzte/com/cn/cloudnotepad/filer/FilerActivity;->mCurDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, files:[Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 156
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v0

    if-lt v1, v3, :cond_1

    .line 169
    .end local v1           #i:I
    :cond_0
    return-void

    .line 157
    .restart local v1       #i:I
    :cond_1
    aget-object v3, v0, v1

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 156
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 159
    :cond_3
    const/4 v2, 0x0

    .line 160
    .local v2, newfile:Ljava/io/File;
    new-instance v2, Ljava/io/File;

    .end local v2           #newfile:Ljava/io/File;
    sget-object v3, Lzte/com/cn/cloudnotepad/filer/FilerActivity;->mCurDir:Ljava/io/File;

    aget-object v4, v0, v1

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 161
    .restart local v2       #newfile:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_4

    .line 162
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2

    .line 166
    :cond_4
    sget-object v3, Lzte/com/cn/cloudnotepad/filer/FilerActivity;->mCurFiles:Ljava/util/ArrayList;

    aget-object v4, v0, v1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private getPathArray(Ljava/io/File;)V
    .locals 5
    .parameter "file"

    .prologue
    const/4 v4, 0x0

    .line 122
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lzte/com/cn/cloudnotepad/filer/FilerUtils;->mRootSdcardPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 123
    sget-object v1, Lzte/com/cn/cloudnotepad/filer/FilerUtils;->mRootPhonePath:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 124
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/filer/FilerActivity;->mPathArray:Ljava/util/ArrayList;

    new-instance v2, Ljava/io/File;

    sget-object v3, Lzte/com/cn/cloudnotepad/filer/FilerUtils;->mRootPhonePath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 126
    :cond_0
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/filer/FilerActivity;->mPathArray:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 140
    :goto_0
    return-void

    .line 128
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lzte/com/cn/cloudnotepad/filer/FilerUtils;->mRootPhonePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 129
    sget-object v1, Lzte/com/cn/cloudnotepad/filer/FilerUtils;->mRootSdcardPath:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 130
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/filer/FilerActivity;->mPathArray:Ljava/util/ArrayList;

    new-instance v2, Ljava/io/File;

    sget-object v3, Lzte/com/cn/cloudnotepad/filer/FilerUtils;->mRootSdcardPath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    :cond_2
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/filer/FilerActivity;->mPathArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v4, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 134
    :cond_3
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 135
    .local v0, tempFile:Ljava/io/File;
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/filer/FilerActivity;->mPathArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v4, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 136
    invoke-direct {p0, v0}, Lzte/com/cn/cloudnotepad/filer/FilerActivity;->getPathArray(Ljava/io/File;)V

    goto :goto_0
.end method

.method private initActionBar()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 65
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/filer/FilerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    iput-object v2, p0, Lzte/com/cn/cloudnotepad/filer/FilerActivity;->mActionBar:Landroid/app/ActionBar;

    .line 66
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/filer/FilerActivity;->mActionBar:Landroid/app/ActionBar;

    const/16 v3, 0x10

    .line 67
    const/16 v4, 0x14

    .line 66
    invoke-virtual {v2, v3, v4}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 68
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/filer/FilerActivity;->mActionBar:Landroid/app/ActionBar;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 71
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030010

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 72
    .local v1, mPathActionBar:Landroid/view/View;
    new-instance v0, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    .line 74
    .local v0, layoutParams:Landroid/app/ActionBar$LayoutParams;
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/filer/FilerActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v2, v1, v0}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 75
    const v2, 0x7f060046

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lzte/com/cn/cloudnotepad/filer/FilerActivity;->mPathMenuButton:Landroid/widget/Button;

    .line 76
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/filer/FilerActivity;->mPathMenuButton:Landroid/widget/Button;

    new-instance v3, Lzte/com/cn/cloudnotepad/filer/FilerActivity$3;

    invoke-direct {v3, p0}, Lzte/com/cn/cloudnotepad/filer/FilerActivity$3;-><init>(Lzte/com/cn/cloudnotepad/filer/FilerActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    return-void
.end method

.method private setAttachFile(Ljava/io/File;)V
    .locals 4
    .parameter "file"

    .prologue
    .line 207
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 208
    .local v0, in:Landroid/content/Intent;
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 209
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 210
    const-string v2, "currentDir"

    sget-object v3, Lzte/com/cn/cloudnotepad/filer/FilerActivity;->mCurDir:Ljava/io/File;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 211
    const-string v2, "fileName"

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0}, Lzte/com/cn/cloudnotepad/filer/FilerActivity;->setResult(ILandroid/content/Intent;)V

    .line 213
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/filer/FilerActivity;->finish()V

    .line 214
    return-void
.end method


# virtual methods
.method protected createPathPopupWindow()V
    .locals 4

    .prologue
    .line 90
    new-instance v1, Landroid/widget/ListPopupWindow;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lzte/com/cn/cloudnotepad/filer/FilerActivity;->mPathPopupWindow:Landroid/widget/ListPopupWindow;

    .line 91
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/filer/FilerActivity;->mPathPopupWindow:Landroid/widget/ListPopupWindow;

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/filer/FilerActivity;->mPathMenuButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 92
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/filer/FilerActivity;->mPathArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 93
    sget-object v1, Lzte/com/cn/cloudnotepad/filer/FilerActivity;->mCurDir:Ljava/io/File;

    invoke-direct {p0, v1}, Lzte/com/cn/cloudnotepad/filer/FilerActivity;->getPathArray(Ljava/io/File;)V

    .line 94
    new-instance v0, Lzte/com/cn/cloudnotepad/filer/FilerPathAdapter;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/filer/FilerActivity;->mPathArray:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lzte/com/cn/cloudnotepad/filer/FilerPathAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 95
    .local v0, filePathAdapter:Lzte/com/cn/cloudnotepad/filer/FilerPathAdapter;
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/filer/FilerActivity;->mPathPopupWindow:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 96
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/filer/FilerActivity;->mPathPopupWindow:Landroid/widget/ListPopupWindow;

    new-instance v2, Lzte/com/cn/cloudnotepad/filer/FilerActivity$4;

    invoke-direct {v2, p0}, Lzte/com/cn/cloudnotepad/filer/FilerActivity$4;-><init>(Lzte/com/cn/cloudnotepad/filer/FilerActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 106
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/filer/FilerActivity;->mPathPopupWindow:Landroid/widget/ListPopupWindow;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    .line 107
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/filer/FilerActivity;->mPathPopupWindow:Landroid/widget/ListPopupWindow;

    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/filer/FilerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080024

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    .line 108
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/filer/FilerActivity;->mPathPopupWindow:Landroid/widget/ListPopupWindow;

    const/16 v2, -0x64

    invoke-virtual {v1, v2}, Landroid/widget/ListPopupWindow;->setHorizontalOffset(I)V

    .line 109
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/filer/FilerActivity;->mPathPopupWindow:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->show()V

    .line 110
    return-void
.end method

.method protected doPathPopupWindowClick(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 115
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/filer/FilerActivity;->mPathArray:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 116
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lzte/com/cn/cloudnotepad/filer/FilerActivity;->fillData(Ljava/lang/String;)V

    .line 117
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/filer/FilerActivity;->mPathPopupWindow:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 118
    return-void
.end method

.method public getScrollingState()Z
    .locals 1

    .prologue
    .line 301
    iget-boolean v0, p0, Lzte/com/cn/cloudnotepad/filer/FilerActivity;->mIsScrolling:Z

    return v0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 219
    sget-object v0, Lzte/com/cn/cloudnotepad/filer/FilerActivity;->mCurDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lzte/com/cn/cloudnotepad/filer/FilerUtils;->mRootSdcardPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 220
    sget-object v0, Lzte/com/cn/cloudnotepad/filer/FilerActivity;->mCurDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lzte/com/cn/cloudnotepad/filer/FilerUtils;->mRootPhonePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 221
    :cond_0
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/filer/FilerActivity;->finish()V

    .line 226
    :goto_0
    return-void

    .line 223
    :cond_1
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/filer/FilerActivity;->doBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 49
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    const v4, 0x7f03000f

    invoke-virtual {p0, v4}, Lzte/com/cn/cloudnotepad/filer/FilerActivity;->setContentView(I)V

    .line 51
    const v4, 0x102000a

    invoke-virtual {p0, v4}, Lzte/com/cn/cloudnotepad/filer/FilerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    .line 52
    .local v3, listView:Landroid/widget/ListView;
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/filer/FilerActivity;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 53
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/filer/FilerActivity;->initActionBar()V

    .line 54
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/filer/FilerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 55
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, action:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 57
    iput-object v0, p0, Lzte/com/cn/cloudnotepad/filer/FilerActivity;->mState:Ljava/lang/String;

    .line 59
    :cond_0
    invoke-static {}, Lzte/com/cn/cloudnotepad/filer/FilerUtils;->getInitPath()Ljava/lang/String;

    move-result-object v1

    .line 60
    .local v1, initPath:Ljava/lang/String;
    new-instance v4, Lzte/com/cn/cloudnotepad/filer/FilerListAdapter;

    invoke-direct {v4, p0}, Lzte/com/cn/cloudnotepad/filer/FilerListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lzte/com/cn/cloudnotepad/filer/FilerActivity;->mFilerListAdapter:Lzte/com/cn/cloudnotepad/filer/FilerListAdapter;

    .line 61
    invoke-direct {p0, v1}, Lzte/com/cn/cloudnotepad/filer/FilerActivity;->fillData(Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    .line 236
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/filer/FilerActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const/high16 v2, 0x7f0b

    invoke-virtual {v1, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 237
    const v1, 0x7f0600d7

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 239
    .local v0, menuOk:Landroid/view/MenuItem;
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/filer/FilerActivity;->mState:Ljava/lang/String;

    const-string v2, "cloudnotepad.getattach"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 240
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 243
    :cond_0
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 333
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 334
    sget-object v0, Lzte/com/cn/cloudnotepad/filer/ThumbnailLoader;->INSTANCE:Lzte/com/cn/cloudnotepad/filer/ThumbnailLoader;

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/filer/ThumbnailLoader;->clearCache()V

    .line 335
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 3
    .parameter "l"
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 192
    new-instance v0, Ljava/io/File;

    sget-object v2, Lzte/com/cn/cloudnotepad/filer/FilerActivity;->mCurDir:Ljava/io/File;

    sget-object v1, Lzte/com/cn/cloudnotepad/filer/FilerActivity;->mCurFiles:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 193
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 194
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lzte/com/cn/cloudnotepad/filer/FilerActivity;->fillData(Ljava/lang/String;)V

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 197
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/filer/FilerActivity;->mState:Ljava/lang/String;

    const-string v2, "cloudnotepad.getattach"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 198
    invoke-direct {p0, v0}, Lzte/com/cn/cloudnotepad/filer/FilerActivity;->setAttachFile(Ljava/io/File;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 174
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 186
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 176
    :sswitch_0
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/filer/FilerActivity;->finish()V

    goto :goto_0

    .line 179
    :sswitch_1
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/filer/FilerActivity;->finish()V

    goto :goto_0

    .line 182
    :sswitch_2
    sget-object v1, Lzte/com/cn/cloudnotepad/filer/FilerActivity;->mCurDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lzte/com/cn/cloudnotepad/filer/FilerSaveAsAlert;->saveAsFilepath:Ljava/lang/String;

    .line 183
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/filer/FilerActivity;->finish()V

    goto :goto_0

    .line 174
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0600d7 -> :sswitch_2
        0x7f0600d8 -> :sswitch_1
    .end sparse-switch
.end method

.method protected updateListIcon(Landroid/widget/AbsListView;)V
    .locals 10
    .parameter "view"

    .prologue
    .line 306
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v3

    .line 307
    .local v3, first:I
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 308
    .local v1, end:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-lt v5, v1, :cond_1

    .line 328
    :cond_0
    return-void

    .line 309
    :cond_1
    add-int v7, v3, v5

    sget-object v8, Lzte/com/cn/cloudnotepad/filer/FilerActivity;->mCurFiles:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_0

    .line 312
    invoke-virtual {p1, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 313
    .local v6, v:Landroid/view/View;
    new-instance v2, Ljava/io/File;

    sget-object v8, Lzte/com/cn/cloudnotepad/filer/FilerActivity;->mCurDir:Ljava/io/File;

    sget-object v7, Lzte/com/cn/cloudnotepad/filer/FilerActivity;->mCurFiles:Ljava/util/ArrayList;

    add-int v9, v3, v5

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {v2, v8, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 314
    .local v2, file:Ljava/io/File;
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lzte/com/cn/cloudnotepad/filer/FilerListAdapter$FileListViewHolder;

    .line 315
    .local v4, holder:Lzte/com/cn/cloudnotepad/filer/FilerListAdapter$FileListViewHolder;
    if-eqz v4, :cond_2

    .line 316
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 317
    iget-object v7, v4, Lzte/com/cn/cloudnotepad/filer/FilerListAdapter$FileListViewHolder;->icon:Landroid/widget/ImageView;

    const v8, 0x7f020072

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 308
    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 319
    :cond_3
    sget-object v7, Lzte/com/cn/cloudnotepad/filer/ThumbnailLoader;->INSTANCE:Lzte/com/cn/cloudnotepad/filer/ThumbnailLoader;

    iget-boolean v8, p0, Lzte/com/cn/cloudnotepad/filer/FilerActivity;->mIsScrolling:Z

    iget-object v9, v4, Lzte/com/cn/cloudnotepad/filer/FilerListAdapter$FileListViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v7, v8, v2, v9, p0}, Lzte/com/cn/cloudnotepad/filer/ThumbnailLoader;->loadDrawable(ZLjava/io/File;Landroid/widget/ImageView;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 320
    .local v0, cache:Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_4

    .line 321
    iget-object v7, v4, Lzte/com/cn/cloudnotepad/filer/FilerListAdapter$FileListViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lzte/com/cn/cloudnotepad/filer/FilerUtils;->getFilerListIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 323
    :cond_4
    iget-object v7, v4, Lzte/com/cn/cloudnotepad/filer/FilerListAdapter$FileListViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method
