.class public Lcom/zte/heartyservice/common/ui/FragmentTabs;
.super Landroid/app/Activity;
.source "FragmentTabs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/common/ui/FragmentTabs$TabListener;
    }
.end annotation


# static fields
.field public static final SELECT_TAB:Ljava/lang/String; = "select_tab"


# instance fields
.field protected mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 25
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 17
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    iput-object p0, p0, Lcom/zte/heartyservice/common/ui/FragmentTabs;->mContext:Landroid/content/Context;

    .line 20
    invoke-virtual {p0}, Lcom/zte/heartyservice/common/ui/FragmentTabs;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 21
    .local v0, bar:Landroid/app/ActionBar;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 22
    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 23
    return-void
.end method
