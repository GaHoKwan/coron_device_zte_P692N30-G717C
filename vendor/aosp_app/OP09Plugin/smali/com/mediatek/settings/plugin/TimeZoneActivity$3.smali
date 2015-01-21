.class Lcom/mediatek/settings/plugin/TimeZoneActivity$3;
.super Ljava/lang/Object;
.source "TimeZoneActivity.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/settings/plugin/TimeZoneActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/plugin/TimeZoneActivity;

.field final synthetic val$searchView:Landroid/widget/SearchView;


# direct methods
.method constructor <init>(Lcom/mediatek/settings/plugin/TimeZoneActivity;Landroid/widget/SearchView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/mediatek/settings/plugin/TimeZoneActivity$3;->this$0:Lcom/mediatek/settings/plugin/TimeZoneActivity;

    iput-object p2, p0, Lcom/mediatek/settings/plugin/TimeZoneActivity$3;->val$searchView:Landroid/widget/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 4
    .parameter "newText"

    .prologue
    .line 64
    iget-object v2, p0, Lcom/mediatek/settings/plugin/TimeZoneActivity$3;->val$searchView:Landroid/widget/SearchView;

    invoke-virtual {v2}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v1

    .line 65
    .local v1, str:Ljava/lang/CharSequence;
    const-string v2, "TimeZoneActivity"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    new-instance v0, Landroid/content/Intent;

    const-string v2, "INPUT_ACTION"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 67
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "INPUT_CONTENT"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    iget-object v2, p0, Lcom/mediatek/settings/plugin/TimeZoneActivity$3;->this$0:Lcom/mediatek/settings/plugin/TimeZoneActivity;

    invoke-virtual {v2, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 69
    const/4 v2, 0x0

    return v2
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1
    .parameter "query"

    .prologue
    .line 60
    const/4 v0, 0x0

    return v0
.end method
