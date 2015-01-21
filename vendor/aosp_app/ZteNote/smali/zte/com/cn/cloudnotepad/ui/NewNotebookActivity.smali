.class public Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;
.super Landroid/app/Activity;
.source "NewNotebookActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity$CoverAdapter;,
        Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity$MyOnPageChangeListener;
    }
.end annotation


# static fields
.field private static final MAX_NOTEBOOK_NUMBER:I = 0x64

.field private static final NAME_CHAR_COUNT:I = 0xc

.field private static final PAGE_ITEMS_NUMBER:I = 0x4

.field private static final STATE_EDIT:I = 0x1

.field private static final STATE_NEW:I

.field public static mCoverIds:[Ljava/lang/Integer;


# instance fields
.field private mCoverAdapter:Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity$CoverAdapter;

.field private mEditText:Landroid/widget/EditText;

.field private mIndicater0:Landroid/widget/ImageView;

.field private mIndicater1:Landroid/widget/ImageView;

.field private mListViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mNameLimit:Lzte/com/cn/cloudnotepad/ui/EditTextLimit;

.field private mNoteBookData:Lzte/com/cn/cloudnotepad/data/NotebookData;

.field private mNotebookBigCover:Landroid/widget/ImageView;

.field private mPosition:I

.field private mSelectedPage:I

.field private mSelectedPosition:I

.field private mState:I

.field private mViewPager:Landroid/support/v4/view/ViewPager;

.field private oriTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 54
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    .line 55
    const v2, 0x7f0200a7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const v2, 0x7f0200a8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const v2, 0x7f0200a9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 56
    const v2, 0x7f0200aa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const v2, 0x7f0200ab

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const v2, 0x7f0200ac

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 57
    const v2, 0x7f0200ad

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const v2, 0x7f0200ae

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 53
    sput-object v0, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;->mCoverIds:[Ljava/lang/Integer;

    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 33
    iput v0, p0, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;->mState:I

    .line 35
    iput v0, p0, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;->mSelectedPosition:I

    .line 36
    iput v0, p0, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;->mSelectedPage:I

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;->mListViews:Ljava/util/ArrayList;

    .line 29
    return-void
.end method

.method private InitalActionBar()V
    .locals 7

    .prologue
    .line 116
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    const/16 v4, 0x10

    .line 117
    const/16 v5, 0x1e

    .line 116
    invoke-virtual {v3, v4, v5}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 120
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030006

    .line 121
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x0

    .line 120
    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 122
    .local v0, actionBarButtons:Landroid/view/View;
    const v3, 0x7f060025

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 123
    .local v1, cancelActionView:Landroid/view/View;
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    const v3, 0x7f060026

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 125
    .local v2, saveActionView:Landroid/view/View;
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 127
    return-void
.end method

.method static synthetic access$0(Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;->mListViews:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1(Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 313
    invoke-direct {p0, p1, p2}, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;->doCoverListClick(II)V

    return-void
.end method

.method private doCoverListClick(II)V
    .locals 10
    .parameter "curPage"
    .parameter "position"

    .prologue
    .line 315
    iget v6, p0, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;->mSelectedPosition:I

    mul-int/lit8 v7, p1, 0x4

    add-int/2addr v7, p2

    if-ne v6, v7, :cond_0

    .line 338
    :goto_0
    return-void

    .line 318
    :cond_0
    iget-object v6, p0, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;->mListViews:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 319
    .local v0, curView:Landroid/view/View;
    iget-object v6, p0, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;->mListViews:Ljava/util/ArrayList;

    iget v7, p0, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;->mSelectedPage:I

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 324
    .local v5, preView:Landroid/view/View;
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "selected_"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "id"

    const-string v9, "zte.com.cn.cloudnotepad"

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 325
    .local v2, iconId:I
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 326
    .local v1, icon:Landroid/widget/ImageView;
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 331
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "selected_"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, p0, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;->mSelectedPosition:I

    iget v9, p0, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;->mSelectedPage:I

    mul-int/lit8 v9, v9, 0x4

    sub-int/2addr v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "id"

    const-string v9, "zte.com.cn.cloudnotepad"

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 332
    .local v4, preIconId:I
    invoke-virtual {v5, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 333
    .local v3, preIcon:Landroid/widget/ImageView;
    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 334
    mul-int/lit8 v6, p1, 0x4

    add-int/2addr v6, p2

    iput v6, p0, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;->mSelectedPosition:I

    .line 335
    iput p1, p0, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;->mSelectedPage:I

    .line 336
    invoke-direct {p0, p1}, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;->updateIndicater(I)V

    .line 337
    iget-object v6, p0, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;->mNotebookBigCover:Landroid/widget/ImageView;

    sget-object v7, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;->mCoverIds:[Ljava/lang/Integer;

    iget v8, p0, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;->mSelectedPosition:I

    aget-object v7, v7, v8

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private getNewData()Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;
    .locals 2

    .prologue
    .line 245
    new-instance v0, Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;

    invoke-direct {v0}, Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;-><init>()V

    .line 246
    .local v0, data:Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;
    iget v1, p0, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;->mSelectedPosition:I

    iput v1, v0, Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;->cover:I

    .line 247
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;->title:Ljava/lang/String;

    .line 248
    const/4 v1, 0x2

    iput v1, v0, Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;->sequence:I

    .line 249
    return-object v0
.end method

.method private getNewNotebookName()Ljava/lang/String;
    .locals 8

    .prologue
    const v7, 0x7f09001a

    const/16 v6, 0x64

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 358
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    if-lt v0, v6, :cond_1

    .line 364
    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v7, v2}, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1

    .line 359
    :cond_1
    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v7, v2}, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 360
    .local v1, title:Ljava/lang/String;
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;->mNoteBookData:Lzte/com/cn/cloudnotepad/data/NotebookData;

    invoke-virtual {v2, v1}, Lzte/com/cn/cloudnotepad/data/NotebookData;->getNameDuplicate(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 358
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getRandomPosition()I
    .locals 2

    .prologue
    .line 352
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 353
    .local v0, random:Ljava/util/Random;
    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v1

    rem-int/lit8 v1, v1, 0x8

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    return v1
.end method

.method private getUpdateData()Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;
    .locals 3

    .prologue
    .line 238
    sget-object v1, Lzte/com/cn/cloudnotepad/data/NotebookData;->mNotebookList:Ljava/util/ArrayList;

    iget v2, p0, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;->mPosition:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;

    .line 239
    .local v0, data:Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;
    iget v1, p0, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;->mSelectedPosition:I

    iput v1, v0, Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;->cover:I

    .line 240
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;->title:Ljava/lang/String;

    .line 241
    return-object v0
.end method

.method private saveNotebookData()V
    .locals 8

    .prologue
    const v7, 0x7f090025

    const/4 v5, 0x2

    const/4 v6, 0x1

    .line 185
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    .line 186
    .local v3, title:Ljava/lang/String;
    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 187
    const v4, 0x7f09001c

    invoke-virtual {p0, v4}, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 188
    .local v2, msg:Ljava/lang/String;
    invoke-static {p0, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 235
    .end local v2           #msg:Ljava/lang/String;
    :goto_0
    return-void

    .line 192
    :cond_0
    iget v4, p0, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;->mState:I

    if-nez v4, :cond_4

    .line 193
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;->mNoteBookData:Lzte/com/cn/cloudnotepad/data/NotebookData;

    invoke-virtual {v4, v3}, Lzte/com/cn/cloudnotepad/data/NotebookData;->getNameDuplicate(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 194
    invoke-virtual {p0, v7}, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 195
    .restart local v2       #msg:Ljava/lang/String;
    invoke-static {p0, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 198
    .end local v2           #msg:Ljava/lang/String;
    :cond_1
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;->getNewData()Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;

    move-result-object v0

    .line 199
    .local v0, data:Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;
    sget-object v4, Lzte/com/cn/cloudnotepad/data/NotebookData;->mNotebookList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v4, v5, :cond_2

    .line 200
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;->mNoteBookData:Lzte/com/cn/cloudnotepad/data/NotebookData;

    invoke-virtual {v4}, Lzte/com/cn/cloudnotepad/data/NotebookData;->getNotebookList()V

    .line 203
    :cond_2
    :try_start_0
    sget-object v4, Lzte/com/cn/cloudnotepad/data/NotebookData;->mNotebookList:Ljava/util/ArrayList;

    const/4 v5, 0x2

    invoke-virtual {v4, v5, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;->mNoteBookData:Lzte/com/cn/cloudnotepad/data/NotebookData;

    invoke-virtual {v4, v0}, Lzte/com/cn/cloudnotepad/data/NotebookData;->insertNoteBookData(Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;)V

    .line 210
    iget-object v4, v0, Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;->title:Ljava/lang/String;

    sput-object v4, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mNotebook:Ljava/lang/String;

    .line 232
    :cond_3
    :goto_1
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;->mNoteBookData:Lzte/com/cn/cloudnotepad/data/NotebookData;

    invoke-virtual {v4}, Lzte/com/cn/cloudnotepad/data/NotebookData;->updateNotebookData()V

    .line 233
    const/4 v4, -0x1

    invoke-virtual {p0, v4}, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;->setResult(I)V

    .line 234
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;->finish()V

    goto :goto_0

    .line 204
    :catch_0
    move-exception v1

    .line 205
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    const v4, 0x7f090106

    invoke-virtual {p0, v4}, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 213
    .end local v0           #data:Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;
    .end local v1           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_4
    sget-object v4, Lzte/com/cn/cloudnotepad/data/NotebookData;->mNotebookList:Ljava/util/ArrayList;

    iget v5, p0, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;->mPosition:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;

    iget-object v4, v4, Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;->title:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 214
    sget-object v4, Lzte/com/cn/cloudnotepad/data/NotebookData;->mNotebookList:Ljava/util/ArrayList;

    iget v5, p0, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;->mPosition:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;

    iget v4, v4, Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;->cover:I

    iget v5, p0, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;->mSelectedPosition:I

    if-ne v4, v5, :cond_5

    .line 215
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;->finish()V

    goto :goto_0

    .line 218
    :cond_5
    sget-object v4, Lzte/com/cn/cloudnotepad/data/NotebookData;->mNotebookList:Ljava/util/ArrayList;

    iget v5, p0, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;->mPosition:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;

    iget-object v4, v4, Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;->title:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 219
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;->mNoteBookData:Lzte/com/cn/cloudnotepad/data/NotebookData;

    invoke-virtual {v4, v3}, Lzte/com/cn/cloudnotepad/data/NotebookData;->getNameDuplicate(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 220
    invoke-virtual {p0, v7}, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 221
    .restart local v2       #msg:Ljava/lang/String;
    invoke-static {p0, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 224
    .end local v2           #msg:Ljava/lang/String;
    :cond_6
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;->getUpdateData()Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;

    move-result-object v0

    .line 225
    .restart local v0       #data:Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;
    sget-object v4, Lzte/com/cn/cloudnotepad/data/NotebookData;->mNotebookList:Ljava/util/ArrayList;

    iget v5, p0, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;->mPosition:I

    invoke-virtual {v4, v5, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 226
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;->oriTitle:Ljava/lang/String;

    sget-object v5, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mNotebook:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 227
    iget-object v4, v0, Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;->title:Ljava/lang/String;

    sput-object v4, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mNotebook:Ljava/lang/String;

    goto/16 :goto_1
.end method

.method private setViewPager(II)V
    .locals 12
    .parameter "curPage"
    .parameter "position"

    .prologue
    const/4 v11, 0x0

    .line 286
    iget-object v7, p0, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;->mListViews:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 287
    .local v1, curView:Landroid/view/View;
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "notebook_selector_"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "id"

    const-string v10, "zte.com.cn.cloudnotepad"

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 288
    .local v6, selectedId:I
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 289
    .local v5, selected:Landroid/view/View;
    invoke-virtual {v5, v11}, Landroid/view/View;->setVisibility(I)V

    .line 290
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "notebook_"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "id"

    const-string v10, "zte.com.cn.cloudnotepad"

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 291
    .local v4, id:I
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 293
    .local v0, cover:Landroid/widget/ImageView;
    sget-object v7, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;->mCoverIds:[Ljava/lang/Integer;

    mul-int/lit8 v8, p1, 0x4

    add-int/2addr v8, p2

    aget-object v7, v7, v8

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 294
    invoke-direct {p0, p1}, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;->updateIndicater(I)V

    .line 295
    iget v7, p0, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;->mSelectedPosition:I

    mul-int/lit8 v8, p1, 0x4

    add-int/2addr v8, p2

    if-ne v7, v8, :cond_0

    .line 297
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "selected_"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "id"

    const-string v10, "zte.com.cn.cloudnotepad"

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 298
    .local v3, iconId:I
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 299
    .local v2, icon:Landroid/widget/ImageView;
    invoke-virtual {v2, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 301
    iget-object v7, p0, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;->mNotebookBigCover:Landroid/widget/ImageView;

    sget-object v8, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;->mCoverIds:[Ljava/lang/Integer;

    iget v9, p0, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;->mSelectedPosition:I

    aget-object v8, v8, v9

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 304
    .end local v2           #icon:Landroid/widget/ImageView;
    .end local v3           #iconId:I
    :cond_0
    new-instance v7, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity$1;

    invoke-direct {v7, p0, p1, p2}, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity$1;-><init>(Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;II)V

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 311
    return-void
.end method

.method private updateIndicater(I)V
    .locals 3
    .parameter "curPage"

    .prologue
    const v2, 0x7f0200cf

    const v1, 0x7f0200ce

    .line 342
    if-nez p1, :cond_1

    .line 343
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;->mIndicater0:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 344
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;->mIndicater1:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 349
    :cond_0
    :goto_0
    return-void

    .line 345
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 346
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;->mIndicater0:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 347
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;->mIndicater1:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public initViewPager(I)V
    .locals 3
    .parameter "curPage"

    .prologue
    .line 277
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 282
    return-void

    .line 278
    :cond_0
    mul-int/lit8 v1, p1, 0x4

    add-int/2addr v1, v0

    sget-object v2, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;->mCoverIds:[Ljava/lang/Integer;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 279
    invoke-direct {p0, p1, v0}, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;->setViewPager(II)V

    .line 277
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 172
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 181
    :goto_0
    return-void

    .line 174
    :pswitch_0
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;->saveNotebookData()V

    goto :goto_0

    .line 178
    :pswitch_1
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;->finish()V

    goto :goto_0

    .line 172
    :pswitch_data_0
    .packed-switch 0x7f060025
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x1

    .line 72
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    const v5, 0x7f03001d

    invoke-virtual {p0, v5}, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;->setContentView(I)V

    .line 74
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;->InitalActionBar()V

    .line 75
    const v5, 0x7f060091

    invoke-virtual {p0, v5}, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/support/v4/view/ViewPager;

    iput-object v5, p0, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 76
    const v5, 0x7f060092

    invoke-virtual {p0, v5}, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;->mIndicater0:Landroid/widget/ImageView;

    .line 77
    const v5, 0x7f060093

    invoke-virtual {p0, v5}, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;->mIndicater1:Landroid/widget/ImageView;

    .line 78
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    .line 79
    .local v3, mInflater:Landroid/view/LayoutInflater;
    iget-object v5, p0, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;->mListViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 80
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v5, 0x2

    if-lt v1, v5, :cond_0

    .line 84
    new-instance v5, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity$CoverAdapter;

    invoke-direct {v5, p0, p0}, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity$CoverAdapter;-><init>(Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;Landroid/content/Context;)V

    iput-object v5, p0, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;->mCoverAdapter:Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity$CoverAdapter;

    .line 85
    iget-object v5, p0, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v6, p0, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;->mCoverAdapter:Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity$CoverAdapter;

    invoke-virtual {v5, v6}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 86
    iget-object v5, p0, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v6, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity$MyOnPageChangeListener;

    invoke-direct {v6, p0}, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity$MyOnPageChangeListener;-><init>(Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;)V

    invoke-virtual {v5, v6}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 87
    const v5, 0x7f060095

    invoke-virtual {p0, v5}, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;->mEditText:Landroid/widget/EditText;

    .line 89
    new-instance v5, Lzte/com/cn/cloudnotepad/ui/EditTextLimit;

    const/16 v6, 0xc

    iget-object v7, p0, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;->mEditText:Landroid/widget/EditText;

    invoke-direct {v5, v6, v7}, Lzte/com/cn/cloudnotepad/ui/EditTextLimit;-><init>(ILandroid/widget/EditText;)V

    iput-object v5, p0, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;->mNameLimit:Lzte/com/cn/cloudnotepad/ui/EditTextLimit;

    .line 90
    new-instance v5, Lzte/com/cn/cloudnotepad/data/NotebookData;

    invoke-direct {v5, p0}, Lzte/com/cn/cloudnotepad/data/NotebookData;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;->mNoteBookData:Lzte/com/cn/cloudnotepad/data/NotebookData;

    .line 92
    const v5, 0x7f060094

    invoke-virtual {p0, v5}, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;->mNotebookBigCover:Landroid/widget/ImageView;

    .line 93
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 94
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 95
    .local v0, bundle:Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 96
    const-string v5, "position"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;->mPosition:I

    .line 97
    iput v8, p0, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;->mState:I

    .line 98
    sget-object v5, Lzte/com/cn/cloudnotepad/data/NotebookData;->mNotebookList:Ljava/util/ArrayList;

    iget v6, p0, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;->mPosition:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;

    iget-object v5, v5, Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;->title:Ljava/lang/String;

    iput-object v5, p0, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;->oriTitle:Ljava/lang/String;

    .line 99
    iget-object v5, p0, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;->mEditText:Landroid/widget/EditText;

    iget-object v6, p0, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;->oriTitle:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v5, p0, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v5, v8}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 102
    sget-object v5, Lzte/com/cn/cloudnotepad/data/NotebookData;->mNotebookList:Ljava/util/ArrayList;

    iget v6, p0, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;->mPosition:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;

    iget v5, v5, Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;->cover:I

    iput v5, p0, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;->mSelectedPosition:I

    .line 108
    :goto_1
    iget v5, p0, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;->mSelectedPosition:I

    div-int/lit8 v5, v5, 0x4

    iput v5, p0, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;->mSelectedPage:I

    .line 109
    iget-object v5, p0, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget v6, p0, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;->mSelectedPage:I

    invoke-virtual {v5, v6}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 110
    iget v5, p0, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;->mSelectedPage:I

    invoke-virtual {p0, v5}, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;->initViewPager(I)V

    .line 111
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    .line 112
    const/4 v6, 0x3

    .line 111
    invoke-virtual {v5, v6}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 113
    return-void

    .line 81
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v2           #intent:Landroid/content/Intent;
    :cond_0
    const v5, 0x7f03001f

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 82
    .local v4, pager:Landroid/view/View;
    iget-object v5, p0, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;->mListViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 104
    .end local v4           #pager:Landroid/view/View;
    .restart local v0       #bundle:Landroid/os/Bundle;
    .restart local v2       #intent:Landroid/content/Intent;
    :cond_1
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;->getRandomPosition()I

    move-result v5

    iput v5, p0, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;->mSelectedPosition:I

    .line 105
    iget-object v5, p0, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;->mEditText:Landroid/widget/EditText;

    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;->getNewNotebookName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v5, p0, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v5, v8}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    goto :goto_1
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 386
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 387
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;->mEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;->mNameLimit:Lzte/com/cn/cloudnotepad/ui/EditTextLimit;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 388
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 370
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 371
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;->mEditText:Landroid/widget/EditText;

    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;->mNameLimit:Lzte/com/cn/cloudnotepad/ui/EditTextLimit;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 373
    sput-boolean v4, Lzte/com/cn/cloudnotepad/NoteApp;->isLowSpace:Z

    .line 374
    invoke-static {}, Lzte/com/cn/cloudnotepad/NoteApp;->getInstance()Lzte/com/cn/cloudnotepad/NoteApp;

    move-result-object v2

    invoke-virtual {v2}, Lzte/com/cn/cloudnotepad/NoteApp;->getAvailableInternalMemorySize()J

    move-result-wide v0

    .line 375
    .local v0, lAvailableFlash:J
    const-wide/32 v2, 0x300000

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 376
    const/4 v2, 0x1

    sput-boolean v2, Lzte/com/cn/cloudnotepad/NoteApp;->isLowSpace:Z

    .line 377
    const v2, 0x7f09009e

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 378
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;->finish()V

    .line 381
    :cond_0
    return-void
.end method
