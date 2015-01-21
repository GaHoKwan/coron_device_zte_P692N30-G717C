.class public Lcom/mediatek/settings/plugin/TimeZoneActivity;
.super Landroid/app/Activity;
.source "TimeZoneActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TimeZoneActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 40
    const/high16 v2, 0x7f03

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setContentView(I)V

    .line 41
    const v2, 0x7f0b0015

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 42
    .local v1, title:Landroid/widget/TextView;
    const v2, 0x7f0b0016

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SearchView;

    .line 43
    .local v0, searchView:Landroid/widget/SearchView;
    new-instance v2, Lcom/mediatek/settings/plugin/TimeZoneActivity$1;

    invoke-direct {v2, p0, v1}, Lcom/mediatek/settings/plugin/TimeZoneActivity$1;-><init>(Lcom/mediatek/settings/plugin/TimeZoneActivity;Landroid/widget/TextView;)V

    invoke-virtual {v0, v2}, Landroid/widget/SearchView;->setOnSearchClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    new-instance v2, Lcom/mediatek/settings/plugin/TimeZoneActivity$2;

    invoke-direct {v2, p0, v1}, Lcom/mediatek/settings/plugin/TimeZoneActivity$2;-><init>(Lcom/mediatek/settings/plugin/TimeZoneActivity;Landroid/widget/TextView;)V

    invoke-virtual {v0, v2}, Landroid/widget/SearchView;->setOnCloseListener(Landroid/widget/SearchView$OnCloseListener;)V

    .line 57
    new-instance v2, Lcom/mediatek/settings/plugin/TimeZoneActivity$3;

    invoke-direct {v2, p0, v0}, Lcom/mediatek/settings/plugin/TimeZoneActivity$3;-><init>(Lcom/mediatek/settings/plugin/TimeZoneActivity;Landroid/widget/SearchView;)V

    invoke-virtual {v0, v2}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 72
    return-void
.end method
