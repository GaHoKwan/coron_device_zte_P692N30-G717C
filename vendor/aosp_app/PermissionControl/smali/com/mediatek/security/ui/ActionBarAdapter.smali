.class public Lcom/mediatek/security/ui/ActionBarAdapter;
.super Ljava/lang/Object;
.source "ActionBarAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/security/ui/ActionBarAdapter$1;,
        Lcom/mediatek/security/ui/ActionBarAdapter$MyTabListener;,
        Lcom/mediatek/security/ui/ActionBarAdapter$TabState;,
        Lcom/mediatek/security/ui/ActionBarAdapter$Listener;
    }
.end annotation


# static fields
.field private static final DEFAULT_TAB:Lcom/mediatek/security/ui/ActionBarAdapter$TabState;


# instance fields
.field private final mActionBar:Landroid/app/ActionBar;

.field private final mContext:Landroid/content/Context;

.field private mCurrentTab:Lcom/mediatek/security/ui/ActionBarAdapter$TabState;

.field private mListener:Lcom/mediatek/security/ui/ActionBarAdapter$Listener;

.field private final mTabListener:Lcom/mediatek/security/ui/ActionBarAdapter$MyTabListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/mediatek/security/ui/ActionBarAdapter$TabState;->PERMISSIONS_INFO:Lcom/mediatek/security/ui/ActionBarAdapter$TabState;

    sput-object v0, Lcom/mediatek/security/ui/ActionBarAdapter;->DEFAULT_TAB:Lcom/mediatek/security/ui/ActionBarAdapter$TabState;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mediatek/security/ui/ActionBarAdapter$Listener;Landroid/app/ActionBar;)V
    .locals 2
    .parameter "context"
    .parameter "listener"
    .parameter "actionBar"

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    sget-object v0, Lcom/mediatek/security/ui/ActionBarAdapter;->DEFAULT_TAB:Lcom/mediatek/security/ui/ActionBarAdapter$TabState;

    iput-object v0, p0, Lcom/mediatek/security/ui/ActionBarAdapter;->mCurrentTab:Lcom/mediatek/security/ui/ActionBarAdapter$TabState;

    .line 79
    new-instance v0, Lcom/mediatek/security/ui/ActionBarAdapter$MyTabListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mediatek/security/ui/ActionBarAdapter$MyTabListener;-><init>(Lcom/mediatek/security/ui/ActionBarAdapter;Lcom/mediatek/security/ui/ActionBarAdapter$1;)V

    iput-object v0, p0, Lcom/mediatek/security/ui/ActionBarAdapter;->mTabListener:Lcom/mediatek/security/ui/ActionBarAdapter$MyTabListener;

    .line 102
    iput-object p1, p0, Lcom/mediatek/security/ui/ActionBarAdapter;->mContext:Landroid/content/Context;

    .line 103
    iput-object p2, p0, Lcom/mediatek/security/ui/ActionBarAdapter;->mListener:Lcom/mediatek/security/ui/ActionBarAdapter$Listener;

    .line 104
    iput-object p3, p0, Lcom/mediatek/security/ui/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    .line 105
    return-void
.end method

.method private addTab(Lcom/mediatek/security/ui/ActionBarAdapter$TabState;I)V
    .locals 2
    .parameter "tabState"
    .parameter "description"

    .prologue
    .line 125
    iget-object v1, p0, Lcom/mediatek/security/ui/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    .line 126
    .local v0, tab:Landroid/app/ActionBar$Tab;
    invoke-virtual {v0, p1}, Landroid/app/ActionBar$Tab;->setTag(Ljava/lang/Object;)Landroid/app/ActionBar$Tab;

    .line 127
    iget-object v1, p0, Lcom/mediatek/security/ui/ActionBarAdapter;->mTabListener:Lcom/mediatek/security/ui/ActionBarAdapter$MyTabListener;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    .line 128
    invoke-virtual {v0, p2}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    .line 129
    iget-object v1, p0, Lcom/mediatek/security/ui/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 130
    return-void
.end method

.method private update()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 203
    iget-object v0, p0, Lcom/mediatek/security/ui/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getNavigationMode()I

    move-result v0

    if-eq v0, v3, :cond_0

    .line 204
    const-string v0, "PermControl/ActionBarAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/security/ui/ActionBarAdapter;->mCurrentTab:Lcom/mediatek/security/ui/ActionBarAdapter$TabState;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/security/ui/ActionBarAdapter;->mCurrentTab:Lcom/mediatek/security/ui/ActionBarAdapter$TabState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object v0, p0, Lcom/mediatek/security/ui/ActionBarAdapter;->mTabListener:Lcom/mediatek/security/ui/ActionBarAdapter$MyTabListener;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/mediatek/security/ui/ActionBarAdapter$MyTabListener;->mIgnoreTabSelected:Z

    .line 218
    iget-object v0, p0, Lcom/mediatek/security/ui/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 219
    iget-object v0, p0, Lcom/mediatek/security/ui/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/mediatek/security/ui/ActionBarAdapter;->mCurrentTab:Lcom/mediatek/security/ui/ActionBarAdapter$TabState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 220
    iget-object v0, p0, Lcom/mediatek/security/ui/ActionBarAdapter;->mTabListener:Lcom/mediatek/security/ui/ActionBarAdapter$MyTabListener;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/mediatek/security/ui/ActionBarAdapter$MyTabListener;->mIgnoreTabSelected:Z

    .line 223
    :cond_0
    return-void
.end method


# virtual methods
.method public addUpdateTab(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedState"

    .prologue
    .line 109
    sget-object v0, Lcom/mediatek/security/ui/ActionBarAdapter$TabState;->PERMISSIONS_INFO:Lcom/mediatek/security/ui/ActionBarAdapter$TabState;

    const v1, 0x7f07000c

    invoke-direct {p0, v0, v1}, Lcom/mediatek/security/ui/ActionBarAdapter;->addTab(Lcom/mediatek/security/ui/ActionBarAdapter$TabState;I)V

    .line 110
    sget-object v0, Lcom/mediatek/security/ui/ActionBarAdapter$TabState;->APPS_INFO:Lcom/mediatek/security/ui/ActionBarAdapter$TabState;

    const v1, 0x7f07000d

    invoke-direct {p0, v0, v1}, Lcom/mediatek/security/ui/ActionBarAdapter;->addTab(Lcom/mediatek/security/ui/ActionBarAdapter$TabState;I)V

    .line 111
    const-string v0, "PermControl/ActionBarAdapter"

    const-string v1, "initialize() ....."

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    if-eqz p1, :cond_0

    .line 113
    const-string v0, "navBar.selectedTab"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/mediatek/security/ui/ActionBarAdapter$TabState;->fromInt(I)Lcom/mediatek/security/ui/ActionBarAdapter$TabState;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/security/ui/ActionBarAdapter;->mCurrentTab:Lcom/mediatek/security/ui/ActionBarAdapter$TabState;

    .line 115
    const-string v0, "PermControl/ActionBarAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get saved tab  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/security/ui/ActionBarAdapter;->mCurrentTab:Lcom/mediatek/security/ui/ActionBarAdapter$TabState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/security/ui/ActionBarAdapter;->update()V

    .line 118
    return-void
.end method

.method public getCurrentTab()Lcom/mediatek/security/ui/ActionBarAdapter$TabState;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/mediatek/security/ui/ActionBarAdapter;->mCurrentTab:Lcom/mediatek/security/ui/ActionBarAdapter$TabState;

    return-object v0
.end method

.method public removeAllTab()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 133
    iget-object v0, p0, Lcom/mediatek/security/ui/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->removeAllTabs()V

    .line 136
    iget-object v0, p0, Lcom/mediatek/security/ui/ActionBarAdapter;->mTabListener:Lcom/mediatek/security/ui/ActionBarAdapter$MyTabListener;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/mediatek/security/ui/ActionBarAdapter$MyTabListener;->mIgnoreTabSelected:Z

    .line 137
    iget-object v0, p0, Lcom/mediatek/security/ui/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 138
    iget-object v0, p0, Lcom/mediatek/security/ui/ActionBarAdapter;->mTabListener:Lcom/mediatek/security/ui/ActionBarAdapter$MyTabListener;

    iput-boolean v2, v0, Lcom/mediatek/security/ui/ActionBarAdapter$MyTabListener;->mIgnoreTabSelected:Z

    .line 139
    return-void
.end method

.method public setCurrentTab(Lcom/mediatek/security/ui/ActionBarAdapter$TabState;Z)V
    .locals 4
    .parameter "tab"
    .parameter "notifyListener"

    .prologue
    .line 177
    if-nez p1, :cond_0

    .line 178
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 180
    :cond_0
    iget-object v1, p0, Lcom/mediatek/security/ui/ActionBarAdapter;->mCurrentTab:Lcom/mediatek/security/ui/ActionBarAdapter$TabState;

    if-ne p1, v1, :cond_2

    .line 181
    const-string v1, "PermControl/ActionBarAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tab == mCurrentTab ,directly return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_1
    :goto_0
    return-void

    .line 184
    :cond_2
    iput-object p1, p0, Lcom/mediatek/security/ui/ActionBarAdapter;->mCurrentTab:Lcom/mediatek/security/ui/ActionBarAdapter$TabState;

    .line 185
    const-string v1, "PermControl/ActionBarAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCurrentTab = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/security/ui/ActionBarAdapter;->mCurrentTab:Lcom/mediatek/security/ui/ActionBarAdapter$TabState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " notifyListner "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object v1, p0, Lcom/mediatek/security/ui/ActionBarAdapter;->mCurrentTab:Lcom/mediatek/security/ui/ActionBarAdapter$TabState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    .line 188
    .local v0, index:I
    iget-object v1, p0, Lcom/mediatek/security/ui/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getNavigationMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/mediatek/security/ui/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v1

    if-eq v0, v1, :cond_3

    .line 190
    iget-object v1, p0, Lcom/mediatek/security/ui/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 193
    :cond_3
    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/mediatek/security/ui/ActionBarAdapter;->mListener:Lcom/mediatek/security/ui/ActionBarAdapter$Listener;

    if-eqz v1, :cond_1

    .line 194
    iget-object v1, p0, Lcom/mediatek/security/ui/ActionBarAdapter;->mListener:Lcom/mediatek/security/ui/ActionBarAdapter$Listener;

    invoke-interface {v1}, Lcom/mediatek/security/ui/ActionBarAdapter$Listener;->onSelectedTabChanged()V

    goto :goto_0
.end method

.method public setListener(Lcom/mediatek/security/ui/ActionBarAdapter$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 121
    iput-object p1, p0, Lcom/mediatek/security/ui/ActionBarAdapter;->mListener:Lcom/mediatek/security/ui/ActionBarAdapter$Listener;

    .line 122
    return-void
.end method
