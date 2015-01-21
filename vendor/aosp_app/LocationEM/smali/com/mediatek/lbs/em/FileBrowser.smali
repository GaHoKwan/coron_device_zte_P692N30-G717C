.class public Lcom/mediatek/lbs/em/FileBrowser;
.super Landroid/app/ListActivity;
.source "FileBrowser.java"


# instance fields
.field private mButtonLocationEM:Landroid/widget/Button;

.field private mButtonSdCard:Landroid/widget/Button;

.field private mCurrentPath:Ljava/lang/String;

.field private mExit:Z

.field private mLocationEmPath:Ljava/lang/String;

.field private mRootPath:Ljava/lang/String;

.field private mSdcardPath:Ljava/lang/String;

.field private mTextView_FilePath:Landroid/widget/TextView;

.field private paths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/lbs/em/FileBrowser;->paths:Ljava/util/List;

    .line 22
    const-string v0, "/"

    iput-object v0, p0, Lcom/mediatek/lbs/em/FileBrowser;->mCurrentPath:Ljava/lang/String;

    .line 23
    const-string v0, "/"

    iput-object v0, p0, Lcom/mediatek/lbs/em/FileBrowser;->mRootPath:Ljava/lang/String;

    .line 24
    const-string v0, "/sdcard/nmea"

    iput-object v0, p0, Lcom/mediatek/lbs/em/FileBrowser;->mSdcardPath:Ljava/lang/String;

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/lbs/em/FileBrowser;->mExit:Z

    return-void
.end method

.method static synthetic access$002(Lcom/mediatek/lbs/em/FileBrowser;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/mediatek/lbs/em/FileBrowser;->mExit:Z

    return p1
.end method

.method static synthetic access$100(Lcom/mediatek/lbs/em/FileBrowser;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/mediatek/lbs/em/FileBrowser;->mSdcardPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/lbs/em/FileBrowser;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/mediatek/lbs/em/FileBrowser;->getFileDir(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/lbs/em/FileBrowser;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/mediatek/lbs/em/FileBrowser;->mLocationEmPath:Ljava/lang/String;

    return-object v0
.end method

.method private getFileDir(Ljava/lang/String;)V
    .locals 7
    .parameter "filePath"

    .prologue
    .line 96
    const/4 v4, 0x0

    .line 98
    .local v4, items:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/mediatek/lbs/em/FileBrowser;->mCurrentPath:Ljava/lang/String;

    .line 99
    iget-object v5, p0, Lcom/mediatek/lbs/em/FileBrowser;->mTextView_FilePath:Landroid/widget/TextView;

    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    new-instance v4, Ljava/util/ArrayList;

    .end local v4           #items:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .restart local v4       #items:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/mediatek/lbs/em/FileBrowser;->paths:Ljava/util/List;

    .line 102
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 104
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v5

    if-nez v5, :cond_0

    .line 105
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ERR: The folder "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " cannot open"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {p0, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 107
    invoke-virtual {p0}, Lcom/mediatek/lbs/em/FileBrowser;->finish()V

    .line 124
    :goto_0
    return-void

    .line 110
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 112
    .local v2, files:[Ljava/io/File;
    iget-object v5, p0, Lcom/mediatek/lbs/em/FileBrowser;->mRootPath:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 113
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Back to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/lbs/em/FileBrowser;->mRootPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    iget-object v5, p0, Lcom/mediatek/lbs/em/FileBrowser;->paths:Ljava/util/List;

    iget-object v6, p0, Lcom/mediatek/lbs/em/FileBrowser;->mRootPath:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    const-string v5, "Back to ../"

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    iget-object v5, p0, Lcom/mediatek/lbs/em/FileBrowser;->paths:Ljava/util/List;

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    :cond_1
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    array-length v5, v2

    if-ge v3, v5, :cond_2

    .line 119
    aget-object v1, v2, v3

    .line 120
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    iget-object v5, p0, Lcom/mediatek/lbs/em/FileBrowser;->paths:Ljava/util/List;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 123
    .end local v1           #file:Ljava/io/File;
    :cond_2
    new-instance v5, Lcom/mediatek/lbs/em/MyAdapter;

    iget-object v6, p0, Lcom/mediatek/lbs/em/FileBrowser;->paths:Ljava/util/List;

    invoke-direct {v5, p0, v4, v6}, Lcom/mediatek/lbs/em/MyAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {p0, v5}, Lcom/mediatek/lbs/em/FileBrowser;->setListAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method private initWidget()V
    .locals 2

    .prologue
    .line 48
    const v0, 0x7f05009a

    invoke-virtual {p0, v0}, Lcom/mediatek/lbs/em/FileBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/lbs/em/FileBrowser;->mButtonSdCard:Landroid/widget/Button;

    .line 49
    const v0, 0x7f05009b

    invoke-virtual {p0, v0}, Lcom/mediatek/lbs/em/FileBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/lbs/em/FileBrowser;->mButtonLocationEM:Landroid/widget/Button;

    .line 51
    iget-object v0, p0, Lcom/mediatek/lbs/em/FileBrowser;->mButtonSdCard:Landroid/widget/Button;

    new-instance v1, Lcom/mediatek/lbs/em/FileBrowser$1;

    invoke-direct {v1, p0}, Lcom/mediatek/lbs/em/FileBrowser$1;-><init>(Lcom/mediatek/lbs/em/FileBrowser;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    iget-object v0, p0, Lcom/mediatek/lbs/em/FileBrowser;->mButtonLocationEM:Landroid/widget/Button;

    new-instance v1, Lcom/mediatek/lbs/em/FileBrowser$2;

    invoke-direct {v1, p0}, Lcom/mediatek/lbs/em/FileBrowser$2;-><init>(Lcom/mediatek/lbs/em/FileBrowser;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 172
    const-string v0, "LocationEM"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 33
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    const v1, 0x7f030004

    invoke-virtual {p0, v1}, Lcom/mediatek/lbs/em/FileBrowser;->setContentView(I)V

    .line 35
    const v1, 0x7f05009d

    invoke-virtual {p0, v1}, Lcom/mediatek/lbs/em/FileBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mediatek/lbs/em/FileBrowser;->mTextView_FilePath:Landroid/widget/TextView;

    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/data/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mediatek/lbs/em/FileBrowser;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/nmea"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/lbs/em/FileBrowser;->mLocationEmPath:Ljava/lang/String;

    .line 38
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/mediatek/lbs/em/FileBrowser;->mLocationEmPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 39
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 40
    new-instance v0, Ljava/io/File;

    .end local v0           #file:Ljava/io/File;
    iget-object v1, p0, Lcom/mediatek/lbs/em/FileBrowser;->mSdcardPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 41
    .restart local v0       #file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 43
    iget-object v1, p0, Lcom/mediatek/lbs/em/FileBrowser;->mLocationEmPath:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/mediatek/lbs/em/FileBrowser;->getFileDir(Ljava/lang/String;)V

    .line 44
    invoke-direct {p0}, Lcom/mediatek/lbs/em/FileBrowser;->initWidget()V

    .line 45
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 167
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 168
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 129
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v3, 0x4

    if-ne v1, v3, :cond_1

    .line 130
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/mediatek/lbs/em/FileBrowser;->paths:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 131
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-ne v1, v2, :cond_0

    .line 132
    iget-object v1, p0, Lcom/mediatek/lbs/em/FileBrowser;->mCurrentPath:Ljava/lang/String;

    iget-object v3, p0, Lcom/mediatek/lbs/em/FileBrowser;->mRootPath:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/lbs/em/FileBrowser;->mCurrentPath:Ljava/lang/String;

    iget-object v3, p0, Lcom/mediatek/lbs/em/FileBrowser;->mSdcardPath:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/lbs/em/FileBrowser;->mCurrentPath:Ljava/lang/String;

    iget-object v3, p0, Lcom/mediatek/lbs/em/FileBrowser;->mLocationEmPath:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 135
    iget-object v1, p0, Lcom/mediatek/lbs/em/FileBrowser;->paths:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/mediatek/lbs/em/FileBrowser;->getFileDir(Ljava/lang/String;)V

    .line 136
    iput-boolean v4, p0, Lcom/mediatek/lbs/em/FileBrowser;->mExit:Z

    move v1, v2

    .line 148
    .end local v0           #file:Ljava/io/File;
    :goto_0
    return v1

    .line 141
    .restart local v0       #file:Ljava/io/File;
    :cond_0
    iget-boolean v1, p0, Lcom/mediatek/lbs/em/FileBrowser;->mExit:Z

    if-nez v1, :cond_1

    .line 142
    const-string v1, "click back key again to exit"

    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 144
    iput-boolean v2, p0, Lcom/mediatek/lbs/em/FileBrowser;->mExit:Z

    move v1, v2

    .line 145
    goto :goto_0

    .line 148
    .end local v0           #file:Ljava/io/File;
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    .line 66
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/mediatek/lbs/em/FileBrowser;->paths:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 67
    .local v0, file:Ljava/io/File;
    iput-boolean v3, p0, Lcom/mediatek/lbs/em/FileBrowser;->mExit:Z

    .line 68
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 69
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 70
    iget-object v1, p0, Lcom/mediatek/lbs/em/FileBrowser;->paths:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/mediatek/lbs/em/FileBrowser;->getFileDir(Ljava/lang/String;)V

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "Confirm"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Do you want to load "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "OK"

    new-instance v3, Lcom/mediatek/lbs/em/FileBrowser$4;

    invoke-direct {v3, p0, v0}, Lcom/mediatek/lbs/em/FileBrowser$4;-><init>(Lcom/mediatek/lbs/em/FileBrowser;Ljava/io/File;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Cancel"

    new-instance v3, Lcom/mediatek/lbs/em/FileBrowser$3;

    invoke-direct {v3, p0}, Lcom/mediatek/lbs/em/FileBrowser$3;-><init>(Lcom/mediatek/lbs/em/FileBrowser;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 91
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cannot be read"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 161
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 162
    return-void
.end method

.method protected onRestart()V
    .locals 0

    .prologue
    .line 155
    invoke-super {p0}, Landroid/app/ListActivity;->onRestart()V

    .line 156
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 158
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 159
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 152
    invoke-super {p0}, Landroid/app/ListActivity;->onStart()V

    .line 153
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 164
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 165
    return-void
.end method
