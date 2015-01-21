.class Lcom/mediatek/settings/plugin/TimeZoneActivity$2;
.super Ljava/lang/Object;
.source "TimeZoneActivity.java"

# interfaces
.implements Landroid/widget/SearchView$OnCloseListener;


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

.field final synthetic val$title:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/mediatek/settings/plugin/TimeZoneActivity;Landroid/widget/TextView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/mediatek/settings/plugin/TimeZoneActivity$2;->this$0:Lcom/mediatek/settings/plugin/TimeZoneActivity;

    iput-object p2, p0, Lcom/mediatek/settings/plugin/TimeZoneActivity$2;->val$title:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    iget-object v0, p0, Lcom/mediatek/settings/plugin/TimeZoneActivity$2;->val$title:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 54
    return v1
.end method
