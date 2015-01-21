.class Lcom/mediatek/calendarimporter/ShowHandleResultActivity$1;
.super Ljava/lang/Object;
.source "ShowHandleResultActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/calendarimporter/ShowHandleResultActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/calendarimporter/ShowHandleResultActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/calendarimporter/ShowHandleResultActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/mediatek/calendarimporter/ShowHandleResultActivity$1;->this$0:Lcom/mediatek/calendarimporter/ShowHandleResultActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    .line 92
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 93
    .local v2, intent:Landroid/content/Intent;
    sget-object v3, Landroid/provider/CalendarContract;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "time/epoch"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    const/high16 v3, 0x1000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 95
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 96
    .local v1, extras:Landroid/os/Bundle;
    const-string v3, "VIEW"

    const-string v4, "MONTH"

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v3, "beginTime"

    iget-object v4, p0, Lcom/mediatek/calendarimporter/ShowHandleResultActivity$1;->this$0:Lcom/mediatek/calendarimporter/ShowHandleResultActivity;

    #getter for: Lcom/mediatek/calendarimporter/ShowHandleResultActivity;->mEventDtStart:J
    invoke-static {v4}, Lcom/mediatek/calendarimporter/ShowHandleResultActivity;->access$000(Lcom/mediatek/calendarimporter/ShowHandleResultActivity;)J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 98
    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 100
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/calendarimporter/ShowHandleResultActivity$1;->this$0:Lcom/mediatek/calendarimporter/ShowHandleResultActivity;

    invoke-virtual {v3, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :goto_0
    iget-object v3, p0, Lcom/mediatek/calendarimporter/ShowHandleResultActivity$1;->this$0:Lcom/mediatek/calendarimporter/ShowHandleResultActivity;

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    .line 107
    return-void

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, e:Landroid/content/ActivityNotFoundException;
    iget-object v3, p0, Lcom/mediatek/calendarimporter/ShowHandleResultActivity$1;->this$0:Lcom/mediatek/calendarimporter/ShowHandleResultActivity;

    const v4, 0x7f040015

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 104
    const-string v3, "ShowHandleResultActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Start Activity failed! Maybe the Calendar App is closed.Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/calendarimporter/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
