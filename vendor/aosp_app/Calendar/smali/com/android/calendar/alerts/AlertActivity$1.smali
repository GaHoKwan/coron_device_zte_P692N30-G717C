.class Lcom/android/calendar/alerts/AlertActivity$1;
.super Ljava/lang/Object;
.source "AlertActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/alerts/AlertActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/alerts/AlertActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/alerts/AlertActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/calendar/alerts/AlertActivity$1;->this$0:Lcom/android/calendar/alerts/AlertActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 12
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "i"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 144
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v7, p0, Lcom/android/calendar/alerts/AlertActivity$1;->this$0:Lcom/android/calendar/alerts/AlertActivity;

    .line 145
    .local v7, alertActivity:Lcom/android/calendar/alerts/AlertActivity;
    invoke-virtual {v7, p2}, Lcom/android/calendar/alerts/AlertActivity;->getItemForView(Landroid/view/View;)Landroid/database/Cursor;

    move-result-object v8

    .line 148
    .local v8, cursor:Landroid/database/Cursor;
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertActivity$1;->this$0:Lcom/android/calendar/alerts/AlertActivity;

    const/4 v10, 0x0

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    #calls: Lcom/android/calendar/alerts/AlertActivity;->dismissAlarm(J)V
    invoke-static {v0, v10, v11}, Lcom/android/calendar/alerts/AlertActivity;->access$400(Lcom/android/calendar/alerts/AlertActivity;J)V

    .line 152
    const/4 v0, 0x6

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v1, v0

    .line 153
    .local v1, id:J
    const/4 v0, 0x4

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 154
    .local v3, startMillis:J
    const/4 v0, 0x5

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 155
    .local v5, endMillis:J
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertActivity$1;->this$0:Lcom/android/calendar/alerts/AlertActivity;

    invoke-static/range {v0 .. v6}, Lcom/android/calendar/alerts/AlertUtils;->buildEventViewIntent(Landroid/content/Context;JJJ)Landroid/content/Intent;

    move-result-object v9

    .line 158
    .local v9, eventIntent:Landroid/content/Intent;
    invoke-static {}, Lcom/android/calendar/Utils;->isJellybeanOrLater()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertActivity$1;->this$0:Lcom/android/calendar/alerts/AlertActivity;

    invoke-static {v0}, Landroid/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/app/TaskStackBuilder;

    move-result-object v0

    const-class v10, Lcom/android/calendar/EventInfoActivity;

    invoke-virtual {v0, v10}, Landroid/app/TaskStackBuilder;->addParentStack(Ljava/lang/Class;)Landroid/app/TaskStackBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/TaskStackBuilder;->startActivities()V

    .line 169
    :goto_0
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertActivity$1;->this$0:Lcom/android/calendar/alerts/AlertActivity;

    const/4 v10, 0x1

    #setter for: Lcom/android/calendar/alerts/AlertActivity;->mDoUpdate:Z
    invoke-static {v0, v10}, Lcom/android/calendar/alerts/AlertActivity;->access$502(Lcom/android/calendar/alerts/AlertActivity;Z)Z

    .line 171
    invoke-virtual {v7}, Landroid/app/Activity;->finish()V

    .line 172
    return-void

    .line 162
    :cond_0
    invoke-virtual {v7, v9}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
