.class public Lcom/zte/heartyservice/power/ActionBarAdapter;
.super Ljava/lang/Object;
.source "ActionBarAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/power/ActionBarAdapter$1;,
        Lcom/zte/heartyservice/power/ActionBarAdapter$MyTabListener;,
        Lcom/zte/heartyservice/power/ActionBarAdapter$TabState;,
        Lcom/zte/heartyservice/power/ActionBarAdapter$Listener;
    }
.end annotation


# static fields
.field private static final DEFAULT_TAB:Lcom/zte/heartyservice/power/ActionBarAdapter$TabState; = null

.field public static final EXTRA_KEY_SELECTED_TAB:Ljava/lang/String; = "navBar.selectedTab"


# instance fields
.field private final mActionBar:Landroid/app/ActionBar;

.field private mCurrentTab:Lcom/zte/heartyservice/power/ActionBarAdapter$TabState;

.field private mListener:Lcom/zte/heartyservice/power/ActionBarAdapter$Listener;

.field private final mTabListener:Lcom/zte/heartyservice/power/ActionBarAdapter$MyTabListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/zte/heartyservice/power/ActionBarAdapter$TabState;->BATTERY_INFOMATION:Lcom/zte/heartyservice/power/ActionBarAdapter$TabState;

    sput-object v0, Lcom/zte/heartyservice/power/ActionBarAdapter;->DEFAULT_TAB:Lcom/zte/heartyservice/power/ActionBarAdapter$TabState;

    return-void
.end method

.method public constructor <init>(Landroid/app/ActionBar;)V
    .locals 4
    .parameter "actionBar"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lcom/zte/heartyservice/power/ActionBarAdapter$MyTabListener;

    invoke-direct {v0, p0, v3}, Lcom/zte/heartyservice/power/ActionBarAdapter$MyTabListener;-><init>(Lcom/zte/heartyservice/power/ActionBarAdapter;Lcom/zte/heartyservice/power/ActionBarAdapter$1;)V

    iput-object v0, p0, Lcom/zte/heartyservice/power/ActionBarAdapter;->mTabListener:Lcom/zte/heartyservice/power/ActionBarAdapter$MyTabListener;

    .line 42
    sget-object v0, Lcom/zte/heartyservice/power/ActionBarAdapter;->DEFAULT_TAB:Lcom/zte/heartyservice/power/ActionBarAdapter$TabState;

    iput-object v0, p0, Lcom/zte/heartyservice/power/ActionBarAdapter;->mCurrentTab:Lcom/zte/heartyservice/power/ActionBarAdapter$TabState;

    .line 45
    iput-object p1, p0, Lcom/zte/heartyservice/power/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    .line 48
    iget-object v0, p0, Lcom/zte/heartyservice/power/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 49
    iget-object v0, p0, Lcom/zte/heartyservice/power/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v2, v1}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 50
    iget-object v0, p0, Lcom/zte/heartyservice/power/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setSplitBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 52
    sget-object v0, Lcom/zte/heartyservice/power/ActionBarAdapter$TabState;->BATTERY_INFOMATION:Lcom/zte/heartyservice/power/ActionBarAdapter$TabState;

    const v1, 0x7f0a014c

    invoke-direct {p0, v0, v2, v1}, Lcom/zte/heartyservice/power/ActionBarAdapter;->addTab(Lcom/zte/heartyservice/power/ActionBarAdapter$TabState;II)V

    .line 53
    sget-object v0, Lcom/zte/heartyservice/power/ActionBarAdapter$TabState;->USAGE_STATICS:Lcom/zte/heartyservice/power/ActionBarAdapter$TabState;

    const v1, 0x7f0a014d

    invoke-direct {p0, v0, v2, v1}, Lcom/zte/heartyservice/power/ActionBarAdapter;->addTab(Lcom/zte/heartyservice/power/ActionBarAdapter$TabState;II)V

    .line 54
    sget-object v0, Lcom/zte/heartyservice/power/ActionBarAdapter$TabState;->MODE_SETTINGS:Lcom/zte/heartyservice/power/ActionBarAdapter$TabState;

    const v1, 0x7f0a014e

    invoke-direct {p0, v0, v2, v1}, Lcom/zte/heartyservice/power/ActionBarAdapter;->addTab(Lcom/zte/heartyservice/power/ActionBarAdapter$TabState;II)V

    .line 55
    return-void
.end method

.method private addTab(Lcom/zte/heartyservice/power/ActionBarAdapter$TabState;II)V
    .locals 2
    .parameter "tabState"
    .parameter "icon"
    .parameter "description"

    .prologue
    .line 58
    iget-object v1, p0, Lcom/zte/heartyservice/power/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    .line 60
    .local v0, tab:Landroid/app/ActionBar$Tab;
    invoke-virtual {v0, p1}, Landroid/app/ActionBar$Tab;->setTag(Ljava/lang/Object;)Landroid/app/ActionBar$Tab;

    .line 61
    iget-object v1, p0, Lcom/zte/heartyservice/power/ActionBarAdapter;->mTabListener:Lcom/zte/heartyservice/power/ActionBarAdapter$MyTabListener;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    .line 62
    invoke-virtual {v0, p3}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    .line 64
    iget-object v1, p0, Lcom/zte/heartyservice/power/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 65
    return-void
.end method

.method private update()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 135
    iget-object v0, p0, Lcom/zte/heartyservice/power/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getNavigationMode()I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 136
    iget-object v0, p0, Lcom/zte/heartyservice/power/ActionBarAdapter;->mTabListener:Lcom/zte/heartyservice/power/ActionBarAdapter$MyTabListener;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/zte/heartyservice/power/ActionBarAdapter$MyTabListener;->mIgnoreTabSelected:Z

    .line 137
    iget-object v0, p0, Lcom/zte/heartyservice/power/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 138
    iget-object v0, p0, Lcom/zte/heartyservice/power/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/zte/heartyservice/power/ActionBarAdapter;->mCurrentTab:Lcom/zte/heartyservice/power/ActionBarAdapter$TabState;

    invoke-virtual {v1}, Lcom/zte/heartyservice/power/ActionBarAdapter$TabState;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 139
    iget-object v0, p0, Lcom/zte/heartyservice/power/ActionBarAdapter;->mTabListener:Lcom/zte/heartyservice/power/ActionBarAdapter$MyTabListener;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/zte/heartyservice/power/ActionBarAdapter$MyTabListener;->mIgnoreTabSelected:Z

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/zte/heartyservice/power/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v0, p0, Lcom/zte/heartyservice/power/ActionBarAdapter;->mListener:Lcom/zte/heartyservice/power/ActionBarAdapter$Listener;

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p0, Lcom/zte/heartyservice/power/ActionBarAdapter;->mListener:Lcom/zte/heartyservice/power/ActionBarAdapter$Listener;

    invoke-interface {v0}, Lcom/zte/heartyservice/power/ActionBarAdapter$Listener;->onSelectedTabChanged()V

    .line 145
    :cond_1
    return-void
.end method


# virtual methods
.method public getCurrentTab()Lcom/zte/heartyservice/power/ActionBarAdapter$TabState;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/zte/heartyservice/power/ActionBarAdapter;->mCurrentTab:Lcom/zte/heartyservice/power/ActionBarAdapter$TabState;

    return-object v0
.end method

.method public initialize(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedState"

    .prologue
    .line 123
    if-nez p1, :cond_0

    .line 124
    sget-object v0, Lcom/zte/heartyservice/power/ActionBarAdapter$TabState;->BATTERY_INFOMATION:Lcom/zte/heartyservice/power/ActionBarAdapter$TabState;

    iput-object v0, p0, Lcom/zte/heartyservice/power/ActionBarAdapter;->mCurrentTab:Lcom/zte/heartyservice/power/ActionBarAdapter$TabState;

    .line 131
    :goto_0
    invoke-direct {p0}, Lcom/zte/heartyservice/power/ActionBarAdapter;->update()V

    .line 132
    return-void

    .line 126
    :cond_0
    const-string v0, "navBar.selectedTab"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/zte/heartyservice/power/ActionBarAdapter$TabState;->fromInt(I)Lcom/zte/heartyservice/power/ActionBarAdapter$TabState;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/power/ActionBarAdapter;->mCurrentTab:Lcom/zte/heartyservice/power/ActionBarAdapter$TabState;

    .line 127
    iget-object v0, p0, Lcom/zte/heartyservice/power/ActionBarAdapter;->mTabListener:Lcom/zte/heartyservice/power/ActionBarAdapter$MyTabListener;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/zte/heartyservice/power/ActionBarAdapter$MyTabListener;->mIgnoreTabSelected:Z

    .line 128
    iget-object v0, p0, Lcom/zte/heartyservice/power/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/zte/heartyservice/power/ActionBarAdapter;->mCurrentTab:Lcom/zte/heartyservice/power/ActionBarAdapter$TabState;

    invoke-virtual {v1}, Lcom/zte/heartyservice/power/ActionBarAdapter$TabState;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 129
    iget-object v0, p0, Lcom/zte/heartyservice/power/ActionBarAdapter;->mTabListener:Lcom/zte/heartyservice/power/ActionBarAdapter$MyTabListener;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/zte/heartyservice/power/ActionBarAdapter$MyTabListener;->mIgnoreTabSelected:Z

    goto :goto_0
.end method

.method public setCurrentTab(Lcom/zte/heartyservice/power/ActionBarAdapter$TabState;)V
    .locals 1
    .parameter "tab"

    .prologue
    .line 92
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/zte/heartyservice/power/ActionBarAdapter;->setCurrentTab(Lcom/zte/heartyservice/power/ActionBarAdapter$TabState;Z)V

    .line 93
    return-void
.end method

.method public setCurrentTab(Lcom/zte/heartyservice/power/ActionBarAdapter$TabState;Z)V
    .locals 3
    .parameter "tab"
    .parameter "notifyListener"

    .prologue
    .line 99
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 100
    :cond_0
    iget-object v1, p0, Lcom/zte/heartyservice/power/ActionBarAdapter;->mCurrentTab:Lcom/zte/heartyservice/power/ActionBarAdapter$TabState;

    if-ne p1, v1, :cond_2

    .line 112
    :cond_1
    :goto_0
    return-void

    .line 104
    :cond_2
    iput-object p1, p0, Lcom/zte/heartyservice/power/ActionBarAdapter;->mCurrentTab:Lcom/zte/heartyservice/power/ActionBarAdapter$TabState;

    .line 105
    iget-object v1, p0, Lcom/zte/heartyservice/power/ActionBarAdapter;->mCurrentTab:Lcom/zte/heartyservice/power/ActionBarAdapter$TabState;

    invoke-virtual {v1}, Lcom/zte/heartyservice/power/ActionBarAdapter$TabState;->ordinal()I

    move-result v0

    .line 106
    .local v0, index:I
    iget-object v1, p0, Lcom/zte/heartyservice/power/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getNavigationMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/zte/heartyservice/power/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v1

    if-eq v0, v1, :cond_3

    .line 107
    iget-object v1, p0, Lcom/zte/heartyservice/power/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 109
    :cond_3
    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/zte/heartyservice/power/ActionBarAdapter;->mListener:Lcom/zte/heartyservice/power/ActionBarAdapter$Listener;

    if-eqz v1, :cond_1

    .line 110
    iget-object v1, p0, Lcom/zte/heartyservice/power/ActionBarAdapter;->mListener:Lcom/zte/heartyservice/power/ActionBarAdapter$Listener;

    invoke-interface {v1}, Lcom/zte/heartyservice/power/ActionBarAdapter$Listener;->onSelectedTabChanged()V

    goto :goto_0
.end method

.method public setListener(Lcom/zte/heartyservice/power/ActionBarAdapter$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 119
    iput-object p1, p0, Lcom/zte/heartyservice/power/ActionBarAdapter;->mListener:Lcom/zte/heartyservice/power/ActionBarAdapter$Listener;

    .line 120
    return-void
.end method
