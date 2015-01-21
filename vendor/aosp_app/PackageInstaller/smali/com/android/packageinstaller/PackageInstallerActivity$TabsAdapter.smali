.class public Lcom/android/packageinstaller/PackageInstallerActivity$TabsAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "PackageInstallerActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/packageinstaller/PackageInstallerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TabsAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/packageinstaller/PackageInstallerActivity$TabsAdapter$DummyTabFactory;,
        Lcom/android/packageinstaller/PackageInstallerActivity$TabsAdapter$TabInfo;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mTabHost:Landroid/widget/TabHost;

.field private final mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/packageinstaller/PackageInstallerActivity$TabsAdapter$TabInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempRect:Landroid/graphics/Rect;

.field private final mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/widget/TabHost;Landroid/support/v4/view/ViewPager;)V
    .locals 1
    .parameter "activity"
    .parameter "tabHost"
    .parameter "pager"

    .prologue
    .line 146
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity$TabsAdapter;->mTabs:Ljava/util/ArrayList;

    .line 118
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity$TabsAdapter;->mTempRect:Landroid/graphics/Rect;

    .line 147
    iput-object p1, p0, Lcom/android/packageinstaller/PackageInstallerActivity$TabsAdapter;->mContext:Landroid/content/Context;

    .line 148
    iput-object p2, p0, Lcom/android/packageinstaller/PackageInstallerActivity$TabsAdapter;->mTabHost:Landroid/widget/TabHost;

    .line 149
    iput-object p3, p0, Lcom/android/packageinstaller/PackageInstallerActivity$TabsAdapter;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 150
    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity$TabsAdapter;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 151
    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity$TabsAdapter;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 152
    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity$TabsAdapter;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 153
    return-void
.end method


# virtual methods
.method public addTab(Landroid/widget/TabHost$TabSpec;Landroid/view/View;)V
    .locals 4
    .parameter "tabSpec"
    .parameter "view"

    .prologue
    .line 156
    new-instance v2, Lcom/android/packageinstaller/PackageInstallerActivity$TabsAdapter$DummyTabFactory;

    iget-object v3, p0, Lcom/android/packageinstaller/PackageInstallerActivity$TabsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/packageinstaller/PackageInstallerActivity$TabsAdapter$DummyTabFactory;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v2}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    .line 157
    invoke-virtual {p1}, Landroid/widget/TabHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v1

    .line 159
    .local v1, tag:Ljava/lang/String;
    new-instance v0, Lcom/android/packageinstaller/PackageInstallerActivity$TabsAdapter$TabInfo;

    invoke-direct {v0, v1, p2}, Lcom/android/packageinstaller/PackageInstallerActivity$TabsAdapter$TabInfo;-><init>(Ljava/lang/String;Landroid/view/View;)V

    .line 160
    .local v0, info:Lcom/android/packageinstaller/PackageInstallerActivity$TabsAdapter$TabInfo;
    iget-object v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity$TabsAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    iget-object v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity$TabsAdapter;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v2, p1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 162
    invoke-virtual {p0}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    .line 163
    return-void
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .parameter "container"
    .parameter "position"
    .parameter "object"

    .prologue
    .line 179
    check-cast p3, Landroid/view/View;

    .end local p3
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 180
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity$TabsAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 2
    .parameter "container"
    .parameter "position"

    .prologue
    .line 172
    iget-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity$TabsAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/packageinstaller/PackageInstallerActivity$TabsAdapter$TabInfo;

    #getter for: Lcom/android/packageinstaller/PackageInstallerActivity$TabsAdapter$TabInfo;->view:Landroid/view/View;
    invoke-static {v1}, Lcom/android/packageinstaller/PackageInstallerActivity$TabsAdapter$TabInfo;->access$000(Lcom/android/packageinstaller/PackageInstallerActivity$TabsAdapter$TabInfo;)Landroid/view/View;

    move-result-object v0

    .line 173
    .local v0, view:Landroid/view/View;
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 174
    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .parameter "view"
    .parameter "object"

    .prologue
    .line 184
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 224
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .parameter "position"
    .parameter "positionOffset"
    .parameter "positionOffsetPixels"

    .prologue
    .line 195
    return-void
.end method

.method public onPageSelected(I)V
    .locals 9
    .parameter "position"

    .prologue
    .line 204
    iget-object v4, p0, Lcom/android/packageinstaller/PackageInstallerActivity$TabsAdapter;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v4}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v3

    .line 205
    .local v3, widget:Landroid/widget/TabWidget;
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v1

    .line 206
    .local v1, oldFocusability:I
    const/high16 v4, 0x6

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 207
    iget-object v4, p0, Lcom/android/packageinstaller/PackageInstallerActivity$TabsAdapter;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v4, p1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 208
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 211
    invoke-virtual {v3, p1}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v2

    .line 212
    .local v2, tab:Landroid/view/View;
    iget-object v4, p0, Lcom/android/packageinstaller/PackageInstallerActivity$TabsAdapter;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v7

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 213
    iget-object v4, p0, Lcom/android/packageinstaller/PackageInstallerActivity$TabsAdapter;->mTempRect:Landroid/graphics/Rect;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/View;->requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z

    .line 216
    iget-object v4, p0, Lcom/android/packageinstaller/PackageInstallerActivity$TabsAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/packageinstaller/PackageInstallerActivity$TabsAdapter$TabInfo;

    #getter for: Lcom/android/packageinstaller/PackageInstallerActivity$TabsAdapter$TabInfo;->view:Landroid/view/View;
    invoke-static {v4}, Lcom/android/packageinstaller/PackageInstallerActivity$TabsAdapter$TabInfo;->access$000(Lcom/android/packageinstaller/PackageInstallerActivity$TabsAdapter$TabInfo;)Landroid/view/View;

    move-result-object v0

    .line 217
    .local v0, contentView:Landroid/view/View;
    instance-of v4, v0, Lcom/android/packageinstaller/CaffeinatedScrollView;

    if-eqz v4, :cond_0

    .line 218
    check-cast v0, Lcom/android/packageinstaller/CaffeinatedScrollView;

    .end local v0           #contentView:Landroid/view/View;
    invoke-virtual {v0}, Lcom/android/packageinstaller/CaffeinatedScrollView;->awakenScrollBars()Z

    .line 220
    :cond_0
    return-void
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 2
    .parameter "tabId"

    .prologue
    .line 189
    iget-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity$TabsAdapter;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v0

    .line 190
    .local v0, position:I
    iget-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity$TabsAdapter;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 191
    return-void
.end method
