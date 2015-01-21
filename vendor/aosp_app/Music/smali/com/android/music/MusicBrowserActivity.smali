.class public Lcom/android/music/MusicBrowserActivity;
.super Landroid/app/TabActivity;
.source "MusicBrowserActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;
.implements Landroid/widget/TabHost$OnTabChangeListener;
.implements Lcom/android/music/MusicUtils$Defs;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/music/MusicBrowserActivity$MusicPagerAdapter;
    }
.end annotation


# static fields
.field private static final ALBUM:Ljava/lang/String; = "Album"

.field static final ALBUM_INDEX:I = 0x1

.field private static final ARTIST:Ljava/lang/String; = "Artist"

.field static final ARTIST_INDEX:I = 0x0

.field private static final PLAYBACK:Ljava/lang/String; = "Playback"

.field static final PLAYBACK_INDEX:I = 0x4

.field private static final PLAYLIST:Ljava/lang/String; = "Playlist"

.field static final PLAYLIST_INDEX:I = 0x3

.field private static final PLAY_ALL:I = 0x13

.field private static final SAVE_TAB:Ljava/lang/String; = "activetab"

.field private static final SONG:Ljava/lang/String; = "Song"

.field static final SONG_INDEX:I = 0x2

.field private static final TAB_MAP:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "MusicBrowser"


# instance fields
.field private mActivityManager:Landroid/app/LocalActivityManager;

.field private mCurrentTab:I

.field private mHasMenukey:Z

.field private mIsSdcardMounted:Z

.field private mOrientaiton:I

.field private mOverflowMenuButton:Landroid/view/View;

.field private mOverflowMenuButtonId:I

.field private mPagers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mPopupMenu:Landroid/widget/PopupMenu;

.field private mPopupMenuShowing:Z

.field mQueryTextListener:Landroid/widget/SearchView$OnQueryTextListener;

.field private mSdcardstatustListener:Landroid/content/BroadcastReceiver;

.field mSearchButton:Landroid/widget/ImageButton;

.field mSearchItem:Landroid/view/MenuItem;

.field private mService:Lcom/android/music/IMediaPlaybackService;

.field private mTabCount:I

.field private mTabHost:Landroid/widget/TabHost;

.field private mToken:Lcom/android/music/MusicUtils$ServiceToken;

.field private mTrackListListener:Landroid/content/BroadcastReceiver;

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 113
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/android/music/MusicBrowserActivity;->TAB_MAP:Ljava/util/HashMap;

    .line 140
    sget-object v0, Lcom/android/music/MusicBrowserActivity;->TAB_MAP:Ljava/util/HashMap;

    const-string v1, "Artist"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v0, Lcom/android/music/MusicBrowserActivity;->TAB_MAP:Ljava/util/HashMap;

    const-string v1, "Album"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v0, Lcom/android/music/MusicBrowserActivity;->TAB_MAP:Ljava/util/HashMap;

    const-string v1, "Song"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v0, Lcom/android/music/MusicBrowserActivity;->TAB_MAP:Ljava/util/HashMap;

    const-string v1, "Playlist"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v0, Lcom/android/music/MusicBrowserActivity;->TAB_MAP:Ljava/util/HashMap;

    const-string v1, "Playback"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 96
    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/music/MusicBrowserActivity;->mPagers:Ljava/util/ArrayList;

    .line 121
    iput-object v3, p0, Lcom/android/music/MusicBrowserActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    .line 126
    iput-object v3, p0, Lcom/android/music/MusicBrowserActivity;->mPopupMenu:Landroid/widget/PopupMenu;

    .line 127
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/music/MusicBrowserActivity;->mPopupMenuShowing:Z

    .line 128
    iput-boolean v2, p0, Lcom/android/music/MusicBrowserActivity;->mHasMenukey:Z

    .line 132
    iput-boolean v2, p0, Lcom/android/music/MusicBrowserActivity;->mIsSdcardMounted:Z

    .line 382
    new-instance v0, Lcom/android/music/MusicBrowserActivity$2;

    invoke-direct {v0, p0}, Lcom/android/music/MusicBrowserActivity$2;-><init>(Lcom/android/music/MusicBrowserActivity;)V

    iput-object v0, p0, Lcom/android/music/MusicBrowserActivity;->mQueryTextListener:Landroid/widget/SearchView$OnQueryTextListener;

    .line 500
    new-instance v0, Lcom/android/music/MusicBrowserActivity$3;

    invoke-direct {v0, p0}, Lcom/android/music/MusicBrowserActivity$3;-><init>(Lcom/android/music/MusicBrowserActivity;)V

    iput-object v0, p0, Lcom/android/music/MusicBrowserActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    .line 514
    new-instance v0, Lcom/android/music/MusicBrowserActivity$4;

    invoke-direct {v0, p0}, Lcom/android/music/MusicBrowserActivity$4;-><init>(Lcom/android/music/MusicBrowserActivity;)V

    iput-object v0, p0, Lcom/android/music/MusicBrowserActivity;->mSdcardstatustListener:Landroid/content/BroadcastReceiver;

    .line 788
    return-void
.end method

.method static synthetic access$100(Lcom/android/music/MusicBrowserActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget v0, p0, Lcom/android/music/MusicBrowserActivity;->mOverflowMenuButtonId:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/music/MusicBrowserActivity;I)Landroid/view/View;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/android/music/MusicBrowserActivity;->getView(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/music/MusicBrowserActivity;)Landroid/app/LocalActivityManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/music/MusicBrowserActivity;->mActivityManager:Landroid/app/LocalActivityManager;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/music/MusicBrowserActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/android/music/MusicBrowserActivity;->mHasMenukey:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/music/MusicBrowserActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/music/MusicBrowserActivity;->mOverflowMenuButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/music/MusicBrowserActivity;Landroid/widget/PopupMenu;)Landroid/widget/PopupMenu;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/music/MusicBrowserActivity;->mPopupMenu:Landroid/widget/PopupMenu;

    return-object p1
.end method

.method static synthetic access$402(Lcom/android/music/MusicBrowserActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/android/music/MusicBrowserActivity;->mPopupMenuShowing:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/music/MusicBrowserActivity;)Lcom/android/music/IMediaPlaybackService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/music/MusicBrowserActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/music/MusicBrowserActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget v0, p0, Lcom/android/music/MusicBrowserActivity;->mOrientaiton:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/music/MusicBrowserActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/music/MusicBrowserActivity;->updatePlaybackTab()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/music/MusicBrowserActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/android/music/MusicBrowserActivity;->mIsSdcardMounted:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/music/MusicBrowserActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/android/music/MusicBrowserActivity;->mIsSdcardMounted:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/music/MusicBrowserActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/music/MusicBrowserActivity;->mPagers:Ljava/util/ArrayList;

    return-object v0
.end method

.method private createFakeMenu()V
    .locals 6

    .prologue
    const v5, 0x7f0c003b

    const v4, 0x7f0c0020

    const/4 v3, 0x0

    .line 314
    iget-boolean v1, p0, Lcom/android/music/MusicBrowserActivity;->mHasMenukey:Z

    if-eqz v1, :cond_0

    .line 315
    const-string v1, "MusicBrowser"

    const-string v2, "createFakeMenu Quit when there has Menu Key"

    invoke-static {v1, v2}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    :goto_0
    return-void

    .line 318
    :cond_0
    iget v1, p0, Lcom/android/music/MusicBrowserActivity;->mOrientaiton:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 319
    iput v4, p0, Lcom/android/music/MusicBrowserActivity;->mOverflowMenuButtonId:I

    .line 320
    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/music/MusicBrowserActivity;->mOverflowMenuButton:Landroid/view/View;

    .line 329
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/music/MusicBrowserActivity;->mOverflowMenuButton:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 330
    iget-object v1, p0, Lcom/android/music/MusicBrowserActivity;->mOverflowMenuButton:Landroid/view/View;

    new-instance v2, Lcom/android/music/MusicBrowserActivity$1;

    invoke-direct {v2, p0}, Lcom/android/music/MusicBrowserActivity$1;-><init>(Lcom/android/music/MusicBrowserActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 322
    :cond_2
    iput v5, p0, Lcom/android/music/MusicBrowserActivity;->mOverflowMenuButtonId:I

    .line 323
    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/music/MusicBrowserActivity;->mOverflowMenuButton:Landroid/view/View;

    .line 324
    iget-object v1, p0, Lcom/android/music/MusicBrowserActivity;->mOverflowMenuButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 325
    .local v0, parent:Landroid/view/View;
    if-eqz v0, :cond_1

    .line 326
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private getStringId(I)Ljava/lang/String;
    .locals 3
    .parameter "index"

    .prologue
    .line 573
    const-string v0, "Artist"

    .line 574
    .local v0, tabStr:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 589
    const-string v1, "MusicBrowser"

    const-string v2, "ARTIST_INDEX or default"

    invoke-static {v1, v2}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    :goto_0
    return-object v0

    .line 576
    :pswitch_0
    const-string v0, "Album"

    .line 577
    goto :goto_0

    .line 579
    :pswitch_1
    const-string v0, "Song"

    .line 580
    goto :goto_0

    .line 582
    :pswitch_2
    const-string v0, "Playlist"

    .line 583
    goto :goto_0

    .line 585
    :pswitch_3
    const-string v0, "Playback"

    .line 586
    goto :goto_0

    .line 574
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getView(I)Landroid/view/View;
    .locals 5
    .parameter "index"

    .prologue
    .line 636
    const-string v2, "MusicBrowser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getView>>>index = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    const/4 v1, 0x0

    .line 638
    .local v1, view:Landroid/view/View;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.PICK"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 639
    .local v0, intent:Landroid/content/Intent;
    packed-switch p1, :pswitch_data_0

    .line 653
    const-string v2, "MusicBrowser"

    const-string v3, "default"

    invoke-static {v2, v3}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    const/4 v2, 0x0

    .line 660
    :goto_0
    return-object v2

    .line 641
    :pswitch_0
    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v3, "vnd.android.cursor.dir/artistalbum"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 656
    :goto_1
    const-string v2, "withtabs"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 657
    const/high16 v2, 0x400

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 658
    iget-object v2, p0, Lcom/android/music/MusicBrowserActivity;->mActivityManager:Landroid/app/LocalActivityManager;

    invoke-direct {p0, p1}, Lcom/android/music/MusicBrowserActivity;->getStringId(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/app/LocalActivityManager;->startActivity(Ljava/lang/String;Landroid/content/Intent;)Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 659
    const-string v2, "MusicBrowser"

    const-string v3, "getView<<<"

    invoke-static {v2, v3}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v1

    .line 660
    goto :goto_0

    .line 644
    :pswitch_1
    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v3, "vnd.android.cursor.dir/album"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 647
    :pswitch_2
    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v3, "vnd.android.cursor.dir/track"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 650
    :pswitch_3
    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v3, "vnd.android.cursor.dir/playlist"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 639
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private initPager()V
    .locals 3

    .prologue
    .line 667
    iget-object v2, p0, Lcom/android/music/MusicBrowserActivity;->mPagers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 668
    const/4 v1, 0x0

    .line 669
    .local v1, view:Landroid/view/View;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v2, 0x3

    if-gt v0, v2, :cond_1

    .line 670
    iget v2, p0, Lcom/android/music/MusicBrowserActivity;->mCurrentTab:I

    if-ne v0, v2, :cond_0

    invoke-direct {p0, v0}, Lcom/android/music/MusicBrowserActivity;->getView(I)Landroid/view/View;

    move-result-object v1

    .line 671
    :goto_1
    iget-object v2, p0, Lcom/android/music/MusicBrowserActivity;->mPagers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 669
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 670
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 673
    :cond_1
    return-void
.end method

.method private initSearchButton()V
    .locals 5

    .prologue
    .line 826
    const v3, 0x7f0c0039

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/android/music/MusicBrowserActivity;->mSearchButton:Landroid/widget/ImageButton;

    .line 827
    const v3, 0x7f0c003a

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 828
    .local v0, blankView:Landroid/view/View;
    const v3, 0x7f0c0038

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 829
    .local v1, nowPlayingView:Landroid/view/View;
    iget-object v3, p0, Lcom/android/music/MusicBrowserActivity;->mSearchButton:Landroid/widget/ImageButton;

    if-eqz v3, :cond_0

    .line 830
    iget-object v3, p0, Lcom/android/music/MusicBrowserActivity;->mSearchButton:Landroid/widget/ImageButton;

    new-instance v4, Lcom/android/music/MusicBrowserActivity$5;

    invoke-direct {v4, p0, v0}, Lcom/android/music/MusicBrowserActivity$5;-><init>(Lcom/android/music/MusicBrowserActivity;Landroid/view/View;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 843
    const-string v3, "search"

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/SearchManager;

    .line 845
    .local v2, searchManager:Landroid/app/SearchManager;
    new-instance v3, Lcom/android/music/MusicBrowserActivity$6;

    invoke-direct {v3, p0, v1, v0}, Lcom/android/music/MusicBrowserActivity$6;-><init>(Lcom/android/music/MusicBrowserActivity;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/app/SearchManager;->setOnDismissListener(Landroid/app/SearchManager$OnDismissListener;)V

    .line 859
    .end local v2           #searchManager:Landroid/app/SearchManager;
    :cond_0
    return-void
.end method

.method private initTab()V
    .locals 7

    .prologue
    .line 599
    const-string v4, "MusicBrowser"

    const-string v5, "initTab>>"

    invoke-static {v4, v5}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f030004

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TabWidget;

    .line 601
    .local v2, tabWidget:Landroid/widget/TabWidget;
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    iput v4, p0, Lcom/android/music/MusicBrowserActivity;->mOrientaiton:I

    .line 602
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    iput v4, p0, Lcom/android/music/MusicBrowserActivity;->mTabCount:I

    .line 605
    iget-boolean v4, p0, Lcom/android/music/MusicBrowserActivity;->mHasMenukey:Z

    if-eqz v4, :cond_0

    .line 606
    iget v4, p0, Lcom/android/music/MusicBrowserActivity;->mTabCount:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/android/music/MusicBrowserActivity;->mTabCount:I

    .line 608
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v4, p0, Lcom/android/music/MusicBrowserActivity;->mTabCount:I

    if-ge v0, v4, :cond_2

    .line 609
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 610
    .local v1, tabView:Landroid/view/View;
    if-eqz v1, :cond_1

    .line 611
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 613
    :cond_1
    const-string v4, "MusicBrowser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addTab:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    iget-object v4, p0, Lcom/android/music/MusicBrowserActivity;->mTabHost:Landroid/widget/TabHost;

    iget-object v5, p0, Lcom/android/music/MusicBrowserActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-direct {p0, v0}, Lcom/android/music/MusicBrowserActivity;->getStringId(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v5

    const v6, 0x1020011

    invoke-virtual {v5, v6}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 608
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 616
    .end local v1           #tabView:Landroid/view/View;
    :cond_2
    iget v4, p0, Lcom/android/music/MusicBrowserActivity;->mOrientaiton:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    .line 617
    iget-object v4, p0, Lcom/android/music/MusicBrowserActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v4}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v3

    .line 618
    .local v3, tabWidgetTemp:Landroid/widget/TabWidget;
    const/4 v0, 0x4

    :goto_1
    iget v4, p0, Lcom/android/music/MusicBrowserActivity;->mTabCount:I

    if-ge v0, v4, :cond_4

    .line 619
    invoke-virtual {v3, v0}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v1

    .line 620
    .restart local v1       #tabView:Landroid/view/View;
    if-eqz v1, :cond_3

    .line 621
    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 623
    :cond_3
    const-string v4, "MusicBrowser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "set tab gone:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 626
    .end local v1           #tabView:Landroid/view/View;
    .end local v3           #tabWidgetTemp:Landroid/widget/TabWidget;
    :cond_4
    const-string v4, "MusicBrowser"

    const-string v5, "initTab<<"

    invoke-static {v4, v5}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    return-void
.end method

.method private updatePlaybackTab()V
    .locals 15

    .prologue
    .line 679
    const/4 v3, 0x1

    .line 680
    .local v3, drawalbeTopPostion:I
    const/16 v8, 0xff

    .line 681
    .local v8, opaqueFull:I
    const/16 v9, 0x80

    .line 682
    .local v9, opaqueHalf:I
    iget-object v12, p0, Lcom/android/music/MusicBrowserActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v12}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v11

    .line 683
    .local v11, tabWidgetTemp:Landroid/widget/TabWidget;
    const/4 v12, 0x4

    invoke-virtual {v11, v12}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 684
    .local v10, tabView:Landroid/widget/TextView;
    const/4 v4, 0x1

    .line 685
    .local v4, enable:Z
    const-wide/16 v6, -0x1

    .line 687
    .local v6, id:J
    const/4 v0, 0x0

    .line 688
    .local v0, drawableTop:Landroid/graphics/drawable/Drawable;
    const/16 v1, 0xff

    .line 690
    .local v1, drawableTopAlpha:I
    if-nez v10, :cond_0

    .line 712
    :goto_0
    return-void

    .line 694
    :cond_0
    :try_start_0
    iget-object v12, p0, Lcom/android/music/MusicBrowserActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    if-eqz v12, :cond_1

    .line 695
    iget-object v12, p0, Lcom/android/music/MusicBrowserActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v12}, Lcom/android/music/IMediaPlaybackService;->getAudioId()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    .line 701
    :cond_1
    :goto_1
    const-wide/16 v12, -0x1

    cmp-long v12, v6, v12

    if-nez v12, :cond_2

    .line 702
    const/4 v4, 0x0

    .line 703
    const/16 v1, 0x80

    .line 705
    :cond_2
    invoke-virtual {v10, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 706
    invoke-virtual {v10}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 707
    .local v2, drawables:[Landroid/graphics/drawable/Drawable;
    const/4 v12, 0x1

    aget-object v0, v2, v12

    .line 708
    if-eqz v0, :cond_3

    .line 709
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 711
    :cond_3
    const-string v12, "MusicBrowser"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "updatePlaybackTab:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 698
    .end local v2           #drawables:[Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v5

    .line 699
    .local v5, ex:Landroid/os/RemoteException;
    const-string v12, "MusicBrowser"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "updatePlaybackTab getAudioId remote excption:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/music/MusicLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 229
    iget v1, p0, Lcom/android/music/MusicBrowserActivity;->mCurrentTab:I

    .line 230
    .local v1, startActivityTab:I
    if-eqz p3, :cond_0

    .line 231
    const-string v2, "start_activity_tab_id"

    iget v3, p0, Lcom/android/music/MusicBrowserActivity;->mCurrentTab:I

    invoke-virtual {p3, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 233
    :cond_0
    const-string v2, "MusicBrowser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onActivityResult: startActivityTab = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-object v2, p0, Lcom/android/music/MusicBrowserActivity;->mActivityManager:Landroid/app/LocalActivityManager;

    invoke-direct {p0, v1}, Lcom/android/music/MusicBrowserActivity;->getStringId(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/LocalActivityManager;->getActivity(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v0

    .line 235
    .local v0, startActivity:Landroid/app/Activity;
    if-nez v0, :cond_1

    .line 259
    .end local v0           #startActivity:Landroid/app/Activity;
    :goto_0
    return-void

    .line 238
    .restart local v0       #startActivity:Landroid/app/Activity;
    :cond_1
    packed-switch v1, :pswitch_data_0

    .line 256
    const-string v2, "MusicBrowser"

    const-string v3, "default"

    invoke-static {v2, v3}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 240
    :pswitch_0
    check-cast v0, Lcom/android/music/ArtistAlbumBrowserActivity;

    .end local v0           #startActivity:Landroid/app/Activity;
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/music/ArtistAlbumBrowserActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 244
    .restart local v0       #startActivity:Landroid/app/Activity;
    :pswitch_1
    check-cast v0, Lcom/android/music/AlbumBrowserActivity;

    .end local v0           #startActivity:Landroid/app/Activity;
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/music/AlbumBrowserActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 248
    .restart local v0       #startActivity:Landroid/app/Activity;
    :pswitch_2
    check-cast v0, Lcom/android/music/TrackBrowserActivity;

    .end local v0           #startActivity:Landroid/app/Activity;
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/music/TrackBrowserActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 252
    .restart local v0       #startActivity:Landroid/app/Activity;
    :pswitch_3
    check-cast v0, Lcom/android/music/PlaylistBrowserActivity;

    .end local v0           #startActivity:Landroid/app/Activity;
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/music/PlaylistBrowserActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 238
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 9
    .parameter "newConfig"

    .prologue
    .line 263
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 264
    const-string v6, "MusicBrowser"

    const-string v7, "onConfigurationChanged>>"

    invoke-static {v6, v7}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget-object v6, p0, Lcom/android/music/MusicBrowserActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v6}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v4

    .line 268
    .local v4, tabWidgetTemp:Landroid/widget/TabWidget;
    const/16 v5, 0x8

    .line 270
    .local v5, viewStatusForTab:I
    iget v6, p1, Landroid/content/res/Configuration;->orientation:I

    iput v6, p0, Lcom/android/music/MusicBrowserActivity;->mOrientaiton:I

    .line 271
    iget v6, p0, Lcom/android/music/MusicBrowserActivity;->mOrientaiton:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    .line 272
    const-string v6, "MusicBrowser"

    const-string v7, "onConfigurationChanged--LandScape"

    invoke-static {v6, v7}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    const/4 v5, 0x0

    .line 275
    :cond_0
    iget-object v6, p0, Lcom/android/music/MusicBrowserActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    if-eqz v6, :cond_1

    .line 276
    iget v6, p0, Lcom/android/music/MusicBrowserActivity;->mOrientaiton:I

    invoke-static {p0, v6}, Lcom/android/music/MusicUtils;->updateNowPlaying(Landroid/app/Activity;I)V

    .line 277
    invoke-direct {p0}, Lcom/android/music/MusicBrowserActivity;->updatePlaybackTab()V

    .line 280
    :cond_1
    const/4 v1, 0x4

    .local v1, i:I
    :goto_0
    iget v6, p0, Lcom/android/music/MusicBrowserActivity;->mTabCount:I

    if-ge v1, v6, :cond_3

    .line 281
    invoke-virtual {v4, v1}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v3

    .line 282
    .local v3, tabView:Landroid/view/View;
    if-eqz v3, :cond_2

    .line 283
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 280
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 287
    .end local v3           #tabView:Landroid/view/View;
    :cond_3
    const/4 v1, 0x0

    :goto_1
    const/4 v6, 0x4

    if-ge v1, v6, :cond_5

    .line 288
    iget-object v6, p0, Lcom/android/music/MusicBrowserActivity;->mActivityManager:Landroid/app/LocalActivityManager;

    invoke-direct {p0, v1}, Lcom/android/music/MusicBrowserActivity;->getStringId(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/LocalActivityManager;->getActivity(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v0

    .line 289
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_4

    .line 290
    invoke-virtual {v0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 287
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 294
    .end local v0           #activity:Landroid/app/Activity;
    :cond_5
    iget-boolean v6, p0, Lcom/android/music/MusicBrowserActivity;->mHasMenukey:Z

    if-nez v6, :cond_7

    .line 295
    iget-boolean v2, p0, Lcom/android/music/MusicBrowserActivity;->mPopupMenuShowing:Z

    .line 296
    .local v2, popupMenuShowing:Z
    if-eqz v2, :cond_6

    iget-object v6, p0, Lcom/android/music/MusicBrowserActivity;->mPopupMenu:Landroid/widget/PopupMenu;

    if-eqz v6, :cond_6

    .line 297
    iget-object v6, p0, Lcom/android/music/MusicBrowserActivity;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v6}, Landroid/widget/PopupMenu;->dismiss()V

    .line 298
    const-string v6, "MusicBrowser"

    const-string v7, "changeFakeMenu:mPopupMenu.dismiss()"

    invoke-static {v6, v7}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :cond_6
    const-string v6, "MusicBrowser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "changeFakeMenu:popupMenuShowing="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    invoke-direct {p0}, Lcom/android/music/MusicBrowserActivity;->createFakeMenu()V

    .line 302
    if-eqz v2, :cond_7

    iget-object v6, p0, Lcom/android/music/MusicBrowserActivity;->mOverflowMenuButton:Landroid/view/View;

    if-eqz v6, :cond_7

    .line 303
    iget-object v6, p0, Lcom/android/music/MusicBrowserActivity;->mOverflowMenuButton:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->performClick()Z

    .line 304
    const-string v6, "MusicBrowser"

    const-string v7, "changeFakeMenu:performClick()"

    invoke-static {v6, v7}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    .end local v2           #popupMenuShowing:Z
    :cond_7
    const-string v6, "MusicBrowser"

    const-string v7, "onConfigurationChanged<<"

    invoke-static {v6, v7}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    .line 149
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onCreate(Landroid/os/Bundle;)V

    .line 150
    const-string v1, "MusicBrowser"

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    const v1, 0x7f030008

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 152
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 153
    invoke-static {p0, p0}, Lcom/android/music/MusicUtils;->bindToService(Landroid/app/Activity;Landroid/content/ServiceConnection;)Lcom/android/music/MusicUtils$ServiceToken;

    move-result-object v1

    iput-object v1, p0, Lcom/android/music/MusicBrowserActivity;->mToken:Lcom/android/music/MusicUtils$ServiceToken;

    .line 154
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/music/MusicBrowserActivity;->mHasMenukey:Z

    .line 155
    new-instance v1, Landroid/app/LocalActivityManager;

    invoke-direct {v1, p0, v4}, Landroid/app/LocalActivityManager;-><init>(Landroid/app/Activity;Z)V

    iput-object v1, p0, Lcom/android/music/MusicBrowserActivity;->mActivityManager:Landroid/app/LocalActivityManager;

    .line 156
    iget-object v1, p0, Lcom/android/music/MusicBrowserActivity;->mActivityManager:Landroid/app/LocalActivityManager;

    invoke-virtual {v1, p1}, Landroid/app/LocalActivityManager;->dispatchCreate(Landroid/os/Bundle;)V

    .line 158
    invoke-virtual {p0}, Landroid/app/TabActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v1

    iput-object v1, p0, Lcom/android/music/MusicBrowserActivity;->mTabHost:Landroid/widget/TabHost;

    .line 159
    invoke-direct {p0}, Lcom/android/music/MusicBrowserActivity;->initTab()V

    .line 160
    const-string v1, "activetab"

    invoke-static {p0, v1, v4}, Lcom/android/music/MusicUtils;->getIntPref(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/music/MusicBrowserActivity;->mCurrentTab:I

    .line 161
    const-string v1, "MusicBrowser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate mCurrentTab: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/music/MusicBrowserActivity;->mCurrentTab:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget v1, p0, Lcom/android/music/MusicBrowserActivity;->mCurrentTab:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/android/music/MusicBrowserActivity;->mCurrentTab:I

    iget v2, p0, Lcom/android/music/MusicBrowserActivity;->mTabCount:I

    if-lt v1, v2, :cond_1

    .line 163
    :cond_0
    iput v4, p0, Lcom/android/music/MusicBrowserActivity;->mCurrentTab:I

    .line 166
    :cond_1
    iget v1, p0, Lcom/android/music/MusicBrowserActivity;->mCurrentTab:I

    if-nez v1, :cond_2

    .line 167
    iget-object v1, p0, Lcom/android/music/MusicBrowserActivity;->mTabHost:Landroid/widget/TabHost;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 169
    :cond_2
    iget-object v1, p0, Lcom/android/music/MusicBrowserActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 171
    invoke-direct {p0}, Lcom/android/music/MusicBrowserActivity;->initPager()V

    .line 172
    const v1, 0x7f0c002b

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    iput-object v1, p0, Lcom/android/music/MusicBrowserActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 173
    iget-object v1, p0, Lcom/android/music/MusicBrowserActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v2, Lcom/android/music/MusicBrowserActivity$MusicPagerAdapter;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/music/MusicBrowserActivity$MusicPagerAdapter;-><init>(Lcom/android/music/MusicBrowserActivity;Lcom/android/music/MusicBrowserActivity$1;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 174
    iget-object v1, p0, Lcom/android/music/MusicBrowserActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 176
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 177
    .local v0, f:Landroid/content/IntentFilter;
    const-string v1, "com.android.music.sdcardstatusupdate"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 178
    iget-object v1, p0, Lcom/android/music/MusicBrowserActivity;->mSdcardstatustListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 180
    invoke-direct {p0}, Lcom/android/music/MusicBrowserActivity;->createFakeMenu()V

    .line 183
    invoke-direct {p0}, Lcom/android/music/MusicBrowserActivity;->initSearchButton()V

    .line 184
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 363
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 364
    const/16 v0, 0x13

    const v1, 0x7f07001f

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 365
    const/16 v0, 0x8

    const v1, 0x7f07001b

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 366
    const/16 v0, 0x9

    const v1, 0x7f07001e

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 367
    const/16 v0, 0xd

    const v1, 0x7f070007

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 369
    iget-object v0, p0, Lcom/android/music/MusicBrowserActivity;->mQueryTextListener:Landroid/widget/SearchView$OnQueryTextListener;

    invoke-static {p0, p1, v0}, Lcom/android/music/MusicUtils;->addSearchView(Landroid/app/Activity;Landroid/view/Menu;Landroid/widget/SearchView$OnQueryTextListener;)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/MusicBrowserActivity;->mSearchItem:Landroid/view/MenuItem;

    .line 371
    const/16 v0, 0x18

    const v1, 0x7f070010

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 373
    const/16 v0, 0x15

    const v1, 0x7f070011

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 375
    const/16 v0, 0x19

    const v1, 0x7f070012

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 376
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 215
    const-string v0, "MusicBrowser"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v0, p0, Lcom/android/music/MusicBrowserActivity;->mToken:Lcom/android/music/MusicUtils$ServiceToken;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/android/music/MusicBrowserActivity;->mToken:Lcom/android/music/MusicUtils$ServiceToken;

    invoke-static {v0}, Lcom/android/music/MusicUtils;->unbindFromService(Lcom/android/music/MusicUtils$ServiceToken;)V

    .line 218
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/music/MusicBrowserActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/android/music/MusicBrowserActivity;->mSdcardstatustListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 221
    iget-object v0, p0, Lcom/android/music/MusicBrowserActivity;->mActivityManager:Landroid/app/LocalActivityManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/LocalActivityManager;->dispatchDestroy(Z)V

    .line 222
    invoke-super {p0}, Landroid/app/ActivityGroup;->onDestroy()V

    .line 223
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 9
    .parameter "item"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v8, 0x1

    .line 433
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 494
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 435
    :sswitch_0
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v8, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v3

    const-string v3, "is_music=1"

    const-string v5, "title_pinyin_key"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 442
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 443
    invoke-static {p0, v6}, Lcom/android/music/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 444
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    move v0, v8

    .line 446
    goto :goto_0

    .line 449
    .end local v6           #cursor:Landroid/database/Cursor;
    :sswitch_1
    invoke-static {}, Lcom/android/music/MusicUtils;->togglePartyShuffle()V

    move v0, v8

    .line 450
    goto :goto_0

    .line 453
    :sswitch_2
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v8, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v3

    const-string v3, "is_music=1"

    const-string v5, "title_pinyin_key"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 460
    .restart local v6       #cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 461
    invoke-static {p0, v6}, Lcom/android/music/MusicUtils;->shuffleAll(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 462
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    move v0, v8

    .line 464
    goto :goto_0

    .line 467
    .end local v6           #cursor:Landroid/database/Cursor;
    :sswitch_3
    invoke-static {p0}, Lcom/android/music/MusicUtils;->startEffectPanel(Landroid/app/Activity;)Z

    move-result v0

    goto :goto_0

    .line 470
    :sswitch_4
    invoke-virtual {p0}, Landroid/app/Activity;->onSearchRequested()Z

    move v0, v8

    .line 471
    goto :goto_0

    .line 474
    :sswitch_5
    new-instance v7, Landroid/content/Intent;

    const-string v0, "com.mediatek.filemanager.DOWNLOAD_LOCATION"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 475
    .local v7, intent:Landroid/content/Intent;
    const-string v0, "android.intent.category.DEFAULT"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 476
    const/16 v0, 0x18

    invoke-virtual {p0, v7, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    move v0, v8

    .line 477
    goto :goto_0

    .line 480
    .end local v7           #intent:Landroid/content/Intent;
    :sswitch_6
    new-instance v7, Landroid/content/Intent;

    const-string v0, "com.mediatek.filemanager.DOWNLOAD_LOCATION"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 481
    .restart local v7       #intent:Landroid/content/Intent;
    const-string v0, "android.intent.category.DEFAULT"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 482
    const/16 v0, 0x15

    invoke-virtual {p0, v7, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    move v0, v8

    .line 483
    goto :goto_0

    .line 486
    .end local v7           #intent:Landroid/content/Intent;
    :sswitch_7
    new-instance v7, Landroid/content/Intent;

    const-string v0, "com.mediatek.filemanager.ADD_FILE"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 487
    .restart local v7       #intent:Landroid/content/Intent;
    const-string v0, "android.intent.category.DEFAULT"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 488
    const/16 v0, 0x19

    invoke-virtual {p0, v7, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    move v0, v8

    .line 489
    goto :goto_0

    .line 433
    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_1
        0x9 -> :sswitch_2
        0xd -> :sswitch_3
        0x13 -> :sswitch_0
        0x15 -> :sswitch_6
        0x18 -> :sswitch_5
        0x19 -> :sswitch_7
        0x7f0c0044 -> :sswitch_4
    .end sparse-switch
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 783
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .parameter "position"
    .parameter "positionOffset"
    .parameter "positionOffsetPixels"

    .prologue
    .line 775
    return-void
.end method

.method public onPageSelected(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 763
    const-string v0, "MusicBrowser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPageSelected-position:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    iget-object v0, p0, Lcom/android/music/MusicBrowserActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 765
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 200
    const-string v0, "MusicBrowser"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v0, p0, Lcom/android/music/MusicBrowserActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 202
    iget-object v0, p0, Lcom/android/music/MusicBrowserActivity;->mActivityManager:Landroid/app/LocalActivityManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/LocalActivityManager;->dispatchPause(Z)V

    .line 203
    const-string v0, "activetab"

    iget v1, p0, Lcom/android/music/MusicBrowserActivity;->mCurrentTab:I

    invoke-static {p0, v0, v1}, Lcom/android/music/MusicUtils;->setIntPref(Landroid/content/Context;Ljava/lang/String;I)V

    .line 204
    invoke-super {p0}, Landroid/app/ActivityGroup;->onPause()V

    .line 205
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 7
    .parameter "menu"

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 398
    invoke-static {p1}, Lcom/android/music/MusicUtils;->setPartyShuffleMenuIcon(Landroid/view/Menu;)V

    .line 399
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 400
    iget-boolean v1, p0, Lcom/android/music/MusicBrowserActivity;->mIsSdcardMounted:Z

    if-nez v1, :cond_0

    .line 401
    const-string v1, "MusicBrowser"

    const-string v2, "Sdcard is not mounted, don\'t show option menu!"

    invoke-static {v1, v2}, Lcom/android/music/MusicLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    :goto_0
    return v3

    .line 405
    :cond_0
    const/16 v1, 0x13

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget v1, p0, Lcom/android/music/MusicBrowserActivity;->mCurrentTab:I

    if-ne v1, v5, :cond_2

    move v1, v2

    :goto_1
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 407
    const/16 v1, 0x9

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget v1, p0, Lcom/android/music/MusicBrowserActivity;->mCurrentTab:I

    if-eq v1, v6, :cond_3

    move v1, v2

    :goto_2
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 409
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/music/MusicUtils;->setEffectPanelMenu(Landroid/content/Context;Landroid/view/Menu;)V

    .line 413
    iget-object v4, p0, Lcom/android/music/MusicBrowserActivity;->mSearchItem:Landroid/view/MenuItem;

    iget v1, p0, Lcom/android/music/MusicBrowserActivity;->mOrientaiton:I

    if-ne v1, v5, :cond_4

    move v1, v2

    :goto_3
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 415
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/music/ext/Extensions;->getPluginObject(Landroid/content/Context;)Lcom/mediatek/music/ext/IMusicTrackBrowser;

    move-result-object v0

    .line 417
    .local v0, musicPlugin:Lcom/mediatek/music/ext/IMusicTrackBrowser;
    const/16 v1, 0x18

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget v1, p0, Lcom/android/music/MusicBrowserActivity;->mCurrentTab:I

    if-ne v1, v5, :cond_5

    invoke-interface {v0}, Lcom/mediatek/music/ext/IMusicTrackBrowser;->enableAddFolderToPlayMenu()Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, v2

    :goto_4
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 420
    const/16 v1, 0x15

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget v1, p0, Lcom/android/music/MusicBrowserActivity;->mCurrentTab:I

    if-ne v1, v6, :cond_6

    invoke-interface {v0}, Lcom/mediatek/music/ext/IMusicTrackBrowser;->enableAddFolderAsPlaylistMenu()Z

    move-result v1

    if-eqz v1, :cond_6

    move v1, v2

    :goto_5
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 423
    const/16 v1, 0x19

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget v4, p0, Lcom/android/music/MusicBrowserActivity;->mCurrentTab:I

    if-ne v4, v5, :cond_1

    invoke-interface {v0}, Lcom/mediatek/music/ext/IMusicTrackBrowser;->enableAddSongToPlayMenu()Z

    move-result v4

    if-eqz v4, :cond_1

    move v3, v2

    :cond_1
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move v3, v2

    .line 426
    goto :goto_0

    .end local v0           #musicPlugin:Lcom/mediatek/music/ext/IMusicTrackBrowser;
    :cond_2
    move v1, v3

    .line 405
    goto :goto_1

    :cond_3
    move v1, v3

    .line 407
    goto :goto_2

    :cond_4
    move v1, v3

    .line 413
    goto :goto_3

    .restart local v0       #musicPlugin:Lcom/mediatek/music/ext/IMusicTrackBrowser;
    :cond_5
    move v1, v3

    .line 417
    goto :goto_4

    :cond_6
    move v1, v3

    .line 420
    goto :goto_5
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 188
    invoke-super {p0}, Landroid/app/ActivityGroup;->onResume()V

    .line 189
    const-string v1, "MusicBrowser"

    const-string v2, "onResume>>>"

    invoke-static {v1, v2}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 191
    .local v0, f:Landroid/content/IntentFilter;
    const-string v1, "com.android.music.metachanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 192
    iget-object v1, p0, Lcom/android/music/MusicBrowserActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 193
    iget-object v1, p0, Lcom/android/music/MusicBrowserActivity;->mTabHost:Landroid/widget/TabHost;

    iget v2, p0, Lcom/android/music/MusicBrowserActivity;->mCurrentTab:I

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 194
    iget-object v1, p0, Lcom/android/music/MusicBrowserActivity;->mActivityManager:Landroid/app/LocalActivityManager;

    invoke-virtual {v1}, Landroid/app/LocalActivityManager;->dispatchResume()V

    .line 195
    const-string v1, "MusicBrowser"

    const-string v2, "onResume<<<"

    invoke-static {v1, v2}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .parameter "className"
    .parameter "service"

    .prologue
    .line 718
    invoke-static {p2}, Lcom/android/music/IMediaPlaybackService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/music/IMediaPlaybackService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/music/MusicBrowserActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    .line 719
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "autoshuffle"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 720
    .local v1, shuf:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/music/MusicBrowserActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    if-eqz v2, :cond_1

    .line 721
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 723
    :try_start_0
    iget-object v2, p0, Lcom/android/music/MusicBrowserActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Lcom/android/music/IMediaPlaybackService;->setShuffleMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 729
    :cond_0
    :goto_0
    iget v2, p0, Lcom/android/music/MusicBrowserActivity;->mOrientaiton:I

    invoke-static {p0, v2}, Lcom/android/music/MusicUtils;->updateNowPlaying(Landroid/app/Activity;I)V

    .line 730
    invoke-direct {p0}, Lcom/android/music/MusicBrowserActivity;->updatePlaybackTab()V

    .line 732
    :cond_1
    return-void

    .line 725
    :catch_0
    move-exception v0

    .line 726
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "MusicBrowser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onServiceConnected setShuffleMode remote excption:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/music/MusicLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .parameter "className"

    .prologue
    .line 735
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/music/MusicBrowserActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    .line 736
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 737
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/music/MusicBrowserActivity;->mActivityManager:Landroid/app/LocalActivityManager;

    invoke-virtual {v0}, Landroid/app/LocalActivityManager;->dispatchStop()V

    .line 210
    invoke-super {p0}, Landroid/app/ActivityGroup;->onStop()V

    .line 211
    return-void
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 5
    .parameter "tabId"

    .prologue
    .line 745
    sget-object v2, Lcom/android/music/MusicBrowserActivity;->TAB_MAP:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 746
    .local v1, tabIndex:I
    const-string v2, "MusicBrowser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onTabChanged-tabId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    if-ltz v1, :cond_1

    const/4 v2, 0x3

    if-gt v1, v2, :cond_1

    .line 749
    iget-object v2, p0, Lcom/android/music/MusicBrowserActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 750
    iput v1, p0, Lcom/android/music/MusicBrowserActivity;->mCurrentTab:I

    .line 755
    :cond_0
    :goto_0
    return-void

    .line 751
    :cond_1
    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 752
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/music/MediaPlaybackActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 753
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
