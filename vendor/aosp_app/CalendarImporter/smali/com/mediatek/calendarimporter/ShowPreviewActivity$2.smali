.class Lcom/mediatek/calendarimporter/ShowPreviewActivity$2;
.super Ljava/lang/Object;
.source "ShowPreviewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/calendarimporter/ShowPreviewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/calendarimporter/ShowPreviewActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/calendarimporter/ShowPreviewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/mediatek/calendarimporter/ShowPreviewActivity$2;->this$0:Lcom/mediatek/calendarimporter/ShowPreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "arg0"

    .prologue
    .line 109
    iget-object v1, p0, Lcom/mediatek/calendarimporter/ShowPreviewActivity$2;->this$0:Lcom/mediatek/calendarimporter/ShowPreviewActivity;

    invoke-static {v1}, Lcom/mediatek/calendarimporter/utils/Utils;->hasExchangeOrGoogleAccount(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    const-string v1, "ShowPreviewActivity"

    const-string v2, "onResume,show SelectActivity... "

    invoke-static {v1, v2}, Lcom/mediatek/calendarimporter/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-object v1, p0, Lcom/mediatek/calendarimporter/ShowPreviewActivity$2;->this$0:Lcom/mediatek/calendarimporter/ShowPreviewActivity;

    #calls: Lcom/mediatek/calendarimporter/ShowPreviewActivity;->showSelectActivity()V
    invoke-static {v1}, Lcom/mediatek/calendarimporter/ShowPreviewActivity;->access$000(Lcom/mediatek/calendarimporter/ShowPreviewActivity;)V

    .line 112
    iget-object v1, p0, Lcom/mediatek/calendarimporter/ShowPreviewActivity$2;->this$0:Lcom/mediatek/calendarimporter/ShowPreviewActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 121
    :goto_0
    return-void

    .line 114
    :cond_0
    iget-object v1, p0, Lcom/mediatek/calendarimporter/ShowPreviewActivity$2;->this$0:Lcom/mediatek/calendarimporter/ShowPreviewActivity;

    const v2, 0x7f040003

    const/16 v3, 0x1388

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 115
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ADD_ACCOUNT_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 116
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "authorities"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "com.android.calendar"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 118
    const-string v1, "ShowPreviewActivity"

    const-string v2, "onResume,Show Settings... "

    invoke-static {v1, v2}, Lcom/mediatek/calendarimporter/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object v1, p0, Lcom/mediatek/calendarimporter/ShowPreviewActivity$2;->this$0:Lcom/mediatek/calendarimporter/ShowPreviewActivity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
