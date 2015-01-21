.class public Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;
.super Landroid/app/Activity;
.source "ViewNotePagerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity$MyOnPageChangeListener;
    }
.end annotation


# static fields
.field private static final FILE_SAVE_DONE_SETTING:Ljava/lang/String; = "zte.com.cn.filer.download.donesettings"


# instance fields
.field private actionBarHeight:I

.field private bitmap:Landroid/graphics/Bitmap;

.field private bitmapHeight:I

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field public mChildPosition:I

.field public mCurNotesPosition:I

.field private mIntentFilter:Landroid/content/IntentFilter;

.field public mListViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mNextButton:Landroid/widget/ImageButton;

.field private mNotesData:Lzte/com/cn/cloudnotepad/data/NotesData;

.field private mPagerAdapter:Lzte/com/cn/cloudnotepad/ui/ViewNotePagerAdapter;

.field private mPreButton:Landroid/widget/ImageButton;

.field public mSoundRecordView:Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;

.field private mTitle:Landroid/widget/TextView;

.field public mViewNote:Lzte/com/cn/cloudnotepad/ui/ViewNote;

.field private mViewPager:Landroid/support/v4/view/ViewPager;

.field private wallpaper:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->mListViews:Ljava/util/ArrayList;

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->mCurNotesPosition:I

    .line 475
    new-instance v0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity$1;

    invoke-direct {v0, p0}, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity$1;-><init>(Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;)V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 46
    return-void
.end method

.method private InitActionBar()V
    .locals 10

    .prologue
    const/16 v9, 0x10

    const/4 v5, 0x0

    const/4 v8, -0x2

    .line 94
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 95
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 96
    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 97
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020001

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 98
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v6, 0x7f02

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setSplitBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 100
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f030030

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 101
    .local v4, switching:Landroid/view/ViewGroup;
    const v5, 0x7f0600cf

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->mTitle:Landroid/widget/TextView;

    .line 102
    const v5, 0x7f0600cd

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->mPreButton:Landroid/widget/ImageButton;

    .line 103
    iget-object v5, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->mPreButton:Landroid/widget/ImageButton;

    invoke-virtual {v5, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    const v5, 0x7f0600ce

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->mNextButton:Landroid/widget/ImageButton;

    .line 105
    iget-object v5, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {v5, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    invoke-virtual {v0, v9, v9}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 109
    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    .line 111
    const/16 v6, 0x15

    .line 109
    invoke-direct {v5, v8, v8, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    .line 108
    invoke-virtual {v0, v4, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 112
    const v5, 0x7f0600d0

    invoke-virtual {p0, v5}, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 113
    .local v2, footerEdit:Landroid/view/View;
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    const v5, 0x7f0600d1

    invoke-virtual {p0, v5}, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 115
    .local v1, footerDelete:Landroid/view/View;
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    const v5, 0x7f0600d2

    invoke-virtual {p0, v5}, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 117
    .local v3, footerShare:Landroid/view/View;
    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    return-void
.end method

.method private InitViewPager()V
    .locals 9

    .prologue
    const/4 v7, -0x1

    .line 177
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 178
    .local v2, intent:Landroid/content/Intent;
    const-string v6, "groupPosition"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 179
    .local v0, groupPosition:I
    const-string v6, "childPosition"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->mChildPosition:I

    .line 180
    const-string v6, "searchString"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 182
    .local v4, mSearchString:Ljava/lang/String;
    new-instance v6, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;

    invoke-direct {v6, p0}, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;-><init>(Landroid/app/Activity;)V

    iput-object v6, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->mSoundRecordView:Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;

    .line 183
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080021

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->actionBarHeight:I

    .line 185
    new-instance v6, Lzte/com/cn/cloudnotepad/ui/ViewNote;

    invoke-direct {v6, p0}, Lzte/com/cn/cloudnotepad/ui/ViewNote;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->mViewNote:Lzte/com/cn/cloudnotepad/ui/ViewNote;

    .line 186
    new-instance v6, Lzte/com/cn/cloudnotepad/data/NotesData;

    invoke-direct {v6, p0}, Lzte/com/cn/cloudnotepad/data/NotesData;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->mNotesData:Lzte/com/cn/cloudnotepad/data/NotesData;

    .line 187
    if-nez v4, :cond_0

    .line 188
    iget-object v6, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->mNotesData:Lzte/com/cn/cloudnotepad/data/NotesData;

    sget-object v7, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mNotebook:Ljava/lang/String;

    sget v8, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mSortOrder:I

    invoke-virtual {v6, v7, v8}, Lzte/com/cn/cloudnotepad/data/NotesData;->getNotebookGroupList(Ljava/lang/String;I)V

    .line 194
    :goto_0
    iget-object v6, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->mNotesData:Lzte/com/cn/cloudnotepad/data/NotesData;

    iget v7, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->mChildPosition:I

    invoke-static {v6, v0, v7}, Lzte/com/cn/cloudnotepad/ui/ViewNote;->getNotesSortList(Lzte/com/cn/cloudnotepad/data/NotesData;II)V

    .line 195
    const v6, 0x7f0600cb

    invoke-virtual {p0, v6}, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/support/v4/view/ViewPager;

    iput-object v6, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 196
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    .line 197
    .local v3, mInflater:Landroid/view/LayoutInflater;
    iget-object v6, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->mListViews:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 198
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    sget v6, Lzte/com/cn/cloudnotepad/ui/ViewNote;->mNotesNumber:I

    if-lt v1, v6, :cond_1

    .line 202
    sget v6, Lzte/com/cn/cloudnotepad/ui/ViewNote;->mCurPosition:I

    iput v6, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->mCurNotesPosition:I

    .line 203
    const-string v6, "wangna"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "mCurNotesPosition"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->mCurNotesPosition:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    new-instance v6, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerAdapter;

    invoke-direct {v6, p0}, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerAdapter;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->mPagerAdapter:Lzte/com/cn/cloudnotepad/ui/ViewNotePagerAdapter;

    .line 205
    iget-object v6, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v7, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->mPagerAdapter:Lzte/com/cn/cloudnotepad/ui/ViewNotePagerAdapter;

    invoke-virtual {v6, v7}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 207
    iget-object v6, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    sget v7, Lzte/com/cn/cloudnotepad/ui/ViewNote;->mCurPosition:I

    invoke-virtual {v6, v7}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 208
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->updateSwitchView()V

    .line 209
    iget-object v6, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v7, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity$MyOnPageChangeListener;

    invoke-direct {v7, p0}, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity$MyOnPageChangeListener;-><init>(Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;)V

    invoke-virtual {v6, v7}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 210
    return-void

    .line 191
    .end local v1           #i:I
    .end local v3           #mInflater:Landroid/view/LayoutInflater;
    :cond_0
    iget-object v6, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->mNotesData:Lzte/com/cn/cloudnotepad/data/NotesData;

    sget-object v7, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mNotebook:Ljava/lang/String;

    sget v8, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mSortOrder:I

    invoke-virtual {v6, v7, v8, v4}, Lzte/com/cn/cloudnotepad/data/NotesData;->getSearchNoteDateGroupList(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 199
    .restart local v1       #i:I
    .restart local v3       #mInflater:Landroid/view/LayoutInflater;
    :cond_1
    const v6, 0x7f03002b

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 200
    .local v5, pager:Landroid/view/View;
    iget-object v6, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->mListViews:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method static synthetic access$0(Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 455
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->doDelete()V

    return-void
.end method

.method private doDelete()V
    .locals 4

    .prologue
    .line 457
    iget v0, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->mCurNotesPosition:I

    .line 458
    .local v0, prePosition:I
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->mListViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 459
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->finish()V

    .line 473
    :goto_0
    return-void

    .line 462
    :cond_0
    iget v1, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->mCurNotesPosition:I

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->mListViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 463
    iget v1, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->mCurNotesPosition:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->mCurNotesPosition:I

    .line 466
    :cond_1
    sget v1, Lzte/com/cn/cloudnotepad/ui/ViewNote;->mNotesNumber:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lzte/com/cn/cloudnotepad/ui/ViewNote;->mNotesNumber:I

    .line 467
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->mPagerAdapter:Lzte/com/cn/cloudnotepad/ui/ViewNotePagerAdapter;

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->mListViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 468
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->mListViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 469
    sget-object v1, Lzte/com/cn/cloudnotepad/ui/ViewNote;->mNotesSortList:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 470
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->mPagerAdapter:Lzte/com/cn/cloudnotepad/ui/ViewNotePagerAdapter;

    invoke-virtual {v1}, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerAdapter;->notifyDataSetChanged()V

    .line 471
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->mViewNote:Lzte/com/cn/cloudnotepad/ui/ViewNote;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->mListViews:Ljava/util/ArrayList;

    iget v3, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->mCurNotesPosition:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget v3, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->mCurNotesPosition:I

    invoke-virtual {v2, v1, v3}, Lzte/com/cn/cloudnotepad/ui/ViewNote;->initNote(Landroid/view/View;I)V

    .line 472
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->updateSwitchView()V

    goto :goto_0
.end method

.method private setOptionMenuItem(Landroid/view/MenuItem;)V
    .locals 2
    .parameter "menuItem"

    .prologue
    .line 121
    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    .line 122
    .local v0, view:Landroid/view/View;
    invoke-static {}, Lzte/com/cn/cloudnotepad/NoteApp;->getInstance()Lzte/com/cn/cloudnotepad/NoteApp;

    move-result-object v1

    invoke-virtual {v1}, Lzte/com/cn/cloudnotepad/NoteApp;->getScreenWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumWidth(I)V

    .line 123
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    return-void
.end method

.method private setWallpaper()V
    .locals 11

    .prologue
    const/4 v10, -0x1

    .line 361
    iget v7, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->mCurNotesPosition:I

    sget-object v8, Lzte/com/cn/cloudnotepad/ui/ViewNote;->mNotesSortList:Ljava/util/LinkedList;

    invoke-virtual {v8}, Ljava/util/LinkedList;->size()I

    move-result v8

    if-lt v7, v8, :cond_1

    .line 398
    :cond_0
    :goto_0
    return-void

    .line 364
    :cond_1
    sget-object v7, Lzte/com/cn/cloudnotepad/ui/ViewNote;->mNotesSortList:Ljava/util/LinkedList;

    iget v8, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->mCurNotesPosition:I

    invoke-virtual {v7, v8}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;

    iget-object v7, v7, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->wallpaper:Ljava/lang/String;

    iput-object v7, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->wallpaper:Ljava/lang/String;

    .line 365
    iget-object v7, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->wallpaper:Ljava/lang/String;

    if-eqz v7, :cond_2

    .line 366
    invoke-static {}, Lzte/com/cn/cloudnotepad/NoteApp;->getInstance()Lzte/com/cn/cloudnotepad/NoteApp;

    move-result-object v7

    invoke-virtual {v7}, Lzte/com/cn/cloudnotepad/NoteApp;->getStatusBarHeight()I

    move-result v5

    .line 367
    .local v5, statusBarHeight:I
    invoke-static {}, Lzte/com/cn/cloudnotepad/NoteApp;->getInstance()Lzte/com/cn/cloudnotepad/NoteApp;

    move-result-object v7

    invoke-virtual {v7}, Lzte/com/cn/cloudnotepad/NoteApp;->getScreenHeight()I

    move-result v7

    sub-int/2addr v7, v5

    iget v8, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->actionBarHeight:I

    mul-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    iput v7, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->bitmapHeight:I

    .line 368
    const-string v7, "zhangxue"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "if bitmapHeight="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->bitmapHeight:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    iget-object v7, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->wallpaper:Ljava/lang/String;

    invoke-static {p0, v7}, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->setWallpaper(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 371
    .local v4, src:Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_0

    .line 374
    invoke-static {}, Lzte/com/cn/cloudnotepad/NoteApp;->getInstance()Lzte/com/cn/cloudnotepad/NoteApp;

    move-result-object v7

    invoke-virtual {v7}, Lzte/com/cn/cloudnotepad/NoteApp;->getScreenWidth()I

    move-result v0

    .line 376
    .local v0, bitmapWidth:I
    :try_start_0
    iget v7, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->bitmapHeight:I

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->bitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 387
    iget-object v7, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7, v10}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 389
    new-instance v2, Landroid/graphics/Canvas;

    iget-object v7, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v2, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 390
    .local v2, canvas:Landroid/graphics/Canvas;
    new-instance v1, Landroid/graphics/Rect;

    const/4 v7, 0x0

    iget v8, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->actionBarHeight:I

    neg-int v8, v8

    sub-int/2addr v8, v5

    add-int/lit8 v8, v8, -0xc

    .line 391
    invoke-static {}, Lzte/com/cn/cloudnotepad/NoteApp;->getInstance()Lzte/com/cn/cloudnotepad/NoteApp;

    move-result-object v9

    invoke-virtual {v9}, Lzte/com/cn/cloudnotepad/NoteApp;->getScreenHeight()I

    move-result v9

    iget v10, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->actionBarHeight:I

    sub-int/2addr v9, v10

    .line 390
    invoke-direct {v1, v7, v8, v0, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 392
    .local v1, bounds:Landroid/graphics/Rect;
    invoke-virtual {v4, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 393
    invoke-virtual {v4, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 394
    iget-object v7, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v9, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v8, v9}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v7, v8}, Landroid/support/v4/view/ViewPager;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 377
    .end local v1           #bounds:Landroid/graphics/Rect;
    .end local v2           #canvas:Landroid/graphics/Canvas;
    :catch_0
    move-exception v3

    .line 378
    .local v3, localOutOfMemoryError:Ljava/lang/OutOfMemoryError;
    new-instance v7, Ljava/lang/StringBuilder;

    const v8, 0x7f09003c

    invoke-virtual {p0, v8}, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v8, 0x7f0900a2

    invoke-virtual {p0, v8}, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 379
    .local v6, toastText:Ljava/lang/String;
    const/4 v7, 0x1

    invoke-static {p0, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 380
    iget-object v7, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v7, v10}, Landroid/support/v4/view/ViewPager;->setBackgroundColor(I)V

    .line 381
    iget-object v7, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_0

    .line 382
    iget-object v7, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 383
    const/4 v7, 0x0

    iput-object v7, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->bitmap:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    .line 396
    .end local v0           #bitmapWidth:I
    .end local v3           #localOutOfMemoryError:Ljava/lang/OutOfMemoryError;
    .end local v4           #src:Landroid/graphics/drawable/Drawable;
    .end local v5           #statusBarHeight:I
    .end local v6           #toastText:Ljava/lang/String;
    :cond_2
    iget-object v7, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v7, v10}, Landroid/support/v4/view/ViewPager;->setBackgroundColor(I)V

    goto/16 :goto_0
.end method


# virtual methods
.method public deleteNote()V
    .locals 3

    .prologue
    .line 407
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 408
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09001e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 409
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090012

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 410
    const v1, 0x104000a

    new-instance v2, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity$2;

    invoke-direct {v2, p0}, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity$2;-><init>(Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 448
    const/high16 v1, 0x104

    new-instance v2, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity$3;

    invoke-direct {v2, p0}, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity$3;-><init>(Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 452
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 453
    return-void
.end method

.method public getNotesData()Lzte/com/cn/cloudnotepad/data/NotesData;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->mNotesData:Lzte/com/cn/cloudnotepad/data/NotesData;

    return-object v0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->mSoundRecordView:Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->mSoundRecordView:Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->getPlayState()I

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->mSoundRecordView:Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->stopPlay()V

    .line 266
    :goto_0
    return-void

    .line 265
    :cond_0
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->finish()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    const/4 v5, 0x0

    .line 271
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->mSoundRecordView:Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->mSoundRecordView:Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;

    invoke-virtual {v3}, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->getPlayState()I

    move-result v3

    if-eqz v3, :cond_0

    .line 272
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->mSoundRecordView:Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;

    invoke-virtual {v3}, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->stopPlay()V

    .line 274
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f0600d0

    if-ne v3, v4, :cond_2

    .line 275
    invoke-static {}, Lzte/com/cn/cloudnotepad/NoteApp;->getInstance()Lzte/com/cn/cloudnotepad/NoteApp;

    move-result-object v3

    invoke-virtual {v3}, Lzte/com/cn/cloudnotepad/NoteApp;->hasEnoughInternalStorage()Z

    move-result v3

    if-nez v3, :cond_2

    .line 276
    const v3, 0x7f0900ad

    invoke-virtual {p0, v3}, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 325
    :cond_1
    :goto_0
    return-void

    .line 280
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f0600d2

    if-ne v3, v4, :cond_3

    .line 281
    invoke-static {}, Lzte/com/cn/cloudnotepad/NoteApp;->getInstance()Lzte/com/cn/cloudnotepad/NoteApp;

    move-result-object v3

    invoke-virtual {v3}, Lzte/com/cn/cloudnotepad/NoteApp;->hasEnoughExtStorage()Z

    move-result v3

    if-nez v3, :cond_3

    .line 282
    const v3, 0x7f0900ac

    invoke-virtual {p0, v3}, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 286
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 288
    :pswitch_1
    iget v3, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->mCurNotesPosition:I

    if-lez v3, :cond_1

    .line 289
    iget v3, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->mCurNotesPosition:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->mCurNotesPosition:I

    .line 290
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget v4, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->mCurNotesPosition:I

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 294
    :pswitch_2
    iget v3, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->mCurNotesPosition:I

    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->mListViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_1

    .line 295
    iget v3, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->mCurNotesPosition:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->mCurNotesPosition:I

    .line 296
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget v4, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->mCurNotesPosition:I

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 301
    :pswitch_3
    :try_start_0
    sget-object v3, Lzte/com/cn/cloudnotepad/ui/ViewNote;->mNotesSortList:Ljava/util/LinkedList;

    iget v4, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->mCurNotesPosition:I

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;

    iget v2, v3, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->id:I

    .line 302
    .local v2, noteId:I
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 303
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "id"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 304
    invoke-virtual {p0, v1}, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->startActivity(Landroid/content/Intent;)V

    .line 305
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 306
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #noteId:I
    :catch_0
    move-exception v3

    goto :goto_0

    .line 312
    :pswitch_4
    :try_start_1
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->mViewNote:Lzte/com/cn/cloudnotepad/ui/ViewNote;

    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->mListViews:Ljava/util/ArrayList;

    iget v5, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->mCurNotesPosition:I

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    iget v5, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->mCurNotesPosition:I

    invoke-virtual {v4, v3, v5}, Lzte/com/cn/cloudnotepad/ui/ViewNote;->initNote(Landroid/view/View;I)V

    .line 313
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->deleteNote()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 314
    :catch_1
    move-exception v0

    .line 316
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->finish()V

    goto/16 :goto_0

    .line 320
    .end local v0           #e:Ljava/lang/Exception;
    :pswitch_5
    iget v3, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->mCurNotesPosition:I

    sget-object v4, Lzte/com/cn/cloudnotepad/ui/ViewNote;->mNotesSortList:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 321
    sget-object v3, Lzte/com/cn/cloudnotepad/ui/ViewNote;->mNotesSortList:Ljava/util/LinkedList;

    iget v4, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->mCurNotesPosition:I

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;

    invoke-static {p0, v3}, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog;->CreateShareDlg(Landroid/app/Activity;Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;)V

    goto/16 :goto_0

    .line 286
    :pswitch_data_0
    .packed-switch 0x7f0600cd
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 77
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    const v1, 0x7f03002f

    :try_start_0
    invoke-virtual {p0, v1}, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->setContentView(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :goto_0
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->InitActionBar()V

    .line 84
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->InitViewPager()V

    .line 86
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "zte.com.cn.filer.download.donesettings"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->mIntentFilter:Landroid/content/IntentFilter;

    .line 87
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 88
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 89
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v1, v2}, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 90
    return-void

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->finish()V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 129
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0b0004

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 139
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 247
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 248
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 249
    iput-object v1, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->mSoundRecordView:Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;

    .line 251
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 253
    iput-object v1, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->bitmap:Landroid/graphics/Bitmap;

    .line 255
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter "item"

    .prologue
    const/4 v4, 0x0

    .line 145
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->mSoundRecordView:Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->mSoundRecordView:Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;

    invoke-virtual {v3}, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->getPlayState()I

    move-result v3

    if-eqz v3, :cond_0

    .line 146
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->mSoundRecordView:Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;

    invoke-virtual {v3}, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->stopPlay()V

    .line 148
    :cond_0
    const/4 v1, 0x0

    .line 150
    .local v1, data:Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;
    :try_start_0
    sget-object v3, Lzte/com/cn/cloudnotepad/ui/ViewNote;->mNotesSortList:Ljava/util/LinkedList;

    iget v5, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->mCurNotesPosition:I

    invoke-virtual {v3, v5}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 172
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    :goto_1
    return v3

    .line 151
    :catch_0
    move-exception v2

    .local v2, e:Ljava/lang/Exception;
    move v3, v4

    .line 153
    goto :goto_1

    .line 157
    .end local v2           #e:Ljava/lang/Exception;
    :pswitch_0
    invoke-static {}, Lzte/com/cn/cloudnotepad/NoteApp;->getInstance()Lzte/com/cn/cloudnotepad/NoteApp;

    move-result-object v3

    invoke-virtual {v3}, Lzte/com/cn/cloudnotepad/NoteApp;->hasEnoughExtStorage()Z

    move-result v3

    if-nez v3, :cond_1

    .line 158
    const v3, 0x7f0900ac

    invoke-virtual {p0, v3}, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 161
    :cond_1
    invoke-static {p0, v1}, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog;->CreateExportDlg(Landroid/app/Activity;Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;)V

    goto :goto_0

    .line 164
    :pswitch_1
    const/4 v3, 0x0

    invoke-static {p0, v1, v3}, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog;->CreateMoveAlertDlg(Landroid/app/Activity;Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;Ljava/lang/String;)V

    goto :goto_0

    .line 167
    :pswitch_2
    invoke-static {p0, v1}, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog;->CreateInfoAlertDlg(Landroid/content/Context;Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;)V

    goto :goto_0

    .line 155
    :pswitch_data_0
    .packed-switch 0x7f0600e7
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 237
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 238
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->mSoundRecordView:Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->mSoundRecordView:Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->getPlayState()I

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->mSoundRecordView:Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->stopPlay()V

    .line 241
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 509
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 510
    sput-boolean v4, Lzte/com/cn/cloudnotepad/NoteApp;->isLowSpace:Z

    .line 511
    invoke-static {}, Lzte/com/cn/cloudnotepad/NoteApp;->getInstance()Lzte/com/cn/cloudnotepad/NoteApp;

    move-result-object v2

    invoke-virtual {v2}, Lzte/com/cn/cloudnotepad/NoteApp;->getAvailableInternalMemorySize()J

    move-result-wide v0

    .line 512
    .local v0, lAvailableFlash:J
    const-wide/32 v2, 0x300000

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 513
    const/4 v2, 0x1

    sput-boolean v2, Lzte/com/cn/cloudnotepad/NoteApp;->isLowSpace:Z

    .line 514
    const v2, 0x7f09009e

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 515
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->finish()V

    .line 518
    :cond_0
    return-void
.end method

.method public updateSwitchView()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 328
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->mSoundRecordView:Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->mSoundRecordView:Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->getPlayState()I

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->mSoundRecordView:Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->stopPlay()V

    .line 332
    :cond_0
    iget v0, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->mCurNotesPosition:I

    if-nez v0, :cond_3

    .line 333
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->mPreButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 334
    sget v0, Lzte/com/cn/cloudnotepad/ui/ViewNote;->mNotesNumber:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 335
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 348
    :goto_0
    iget v0, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->mCurNotesPosition:I

    sget-object v1, Lzte/com/cn/cloudnotepad/ui/ViewNote;->mNotesSortList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 349
    sget-object v0, Lzte/com/cn/cloudnotepad/ui/ViewNote;->mNotesSortList:Ljava/util/LinkedList;

    iget v1, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->mCurNotesPosition:I

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 350
    sget-object v0, Lzte/com/cn/cloudnotepad/ui/ViewNote;->mNotesSortList:Ljava/util/LinkedList;

    iget v1, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->mCurNotesPosition:I

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;

    iget-object v0, v0, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->title:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 351
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f090015

    invoke-virtual {p0, v1}, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 357
    :cond_1
    :goto_1
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->setWallpaper()V

    .line 358
    return-void

    .line 337
    :cond_2
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 340
    :cond_3
    iget v0, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->mCurNotesPosition:I

    sget v1, Lzte/com/cn/cloudnotepad/ui/ViewNote;->mNotesNumber:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_4

    .line 341
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->mPreButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 342
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 344
    :cond_4
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->mPreButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 345
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 353
    :cond_5
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->mTitle:Landroid/widget/TextView;

    sget-object v0, Lzte/com/cn/cloudnotepad/ui/ViewNote;->mNotesSortList:Ljava/util/LinkedList;

    iget v2, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->mCurNotesPosition:I

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;

    iget-object v0, v0, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->title:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
