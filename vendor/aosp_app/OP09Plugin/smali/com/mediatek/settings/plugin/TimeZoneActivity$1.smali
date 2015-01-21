.class Lcom/mediatek/settings/plugin/TimeZoneActivity$1;
.super Ljava/lang/Object;
.source "TimeZoneActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 43
    iput-object p1, p0, Lcom/mediatek/settings/plugin/TimeZoneActivity$1;->this$0:Lcom/mediatek/settings/plugin/TimeZoneActivity;

    iput-object p2, p0, Lcom/mediatek/settings/plugin/TimeZoneActivity$1;->val$title:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/mediatek/settings/plugin/TimeZoneActivity$1;->val$title:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 47
    const-string v0, "TimeZoneActivity"

    const-string v1, "setOnSearchClickListener!"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    return-void
.end method
