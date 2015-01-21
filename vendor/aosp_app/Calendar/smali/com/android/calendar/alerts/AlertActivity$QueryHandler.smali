.class Lcom/android/calendar/alerts/AlertActivity$QueryHandler;
.super Lcom/android/calendar/AsyncQueryService;
.source "AlertActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/alerts/AlertActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/alerts/AlertActivity;


# direct methods
.method public constructor <init>(Lcom/android/calendar/alerts/AlertActivity;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/calendar/alerts/AlertActivity$QueryHandler;->this$0:Lcom/android/calendar/alerts/AlertActivity;

    .line 115
    invoke-direct {p0, p2}, Lcom/android/calendar/AsyncQueryService;-><init>(Landroid/content/Context;)V

    .line 116
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 2
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertActivity$QueryHandler;->this$0:Lcom/android/calendar/alerts/AlertActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertActivity$QueryHandler;->this$0:Lcom/android/calendar/alerts/AlertActivity;

    #setter for: Lcom/android/calendar/alerts/AlertActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v0, p3}, Lcom/android/calendar/alerts/AlertActivity;->access$002(Lcom/android/calendar/alerts/AlertActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 123
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertActivity$QueryHandler;->this$0:Lcom/android/calendar/alerts/AlertActivity;

    #getter for: Lcom/android/calendar/alerts/AlertActivity;->mAdapter:Lcom/android/calendar/alerts/AlertAdapter;
    invoke-static {v0}, Lcom/android/calendar/alerts/AlertActivity;->access$100(Lcom/android/calendar/alerts/AlertActivity;)Lcom/android/calendar/alerts/AlertAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 124
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertActivity$QueryHandler;->this$0:Lcom/android/calendar/alerts/AlertActivity;

    #getter for: Lcom/android/calendar/alerts/AlertActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/calendar/alerts/AlertActivity;->access$200(Lcom/android/calendar/alerts/AlertActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 127
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertActivity$QueryHandler;->this$0:Lcom/android/calendar/alerts/AlertActivity;

    #getter for: Lcom/android/calendar/alerts/AlertActivity;->mDismissAllButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/calendar/alerts/AlertActivity;->access$300(Lcom/android/calendar/alerts/AlertActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 131
    :goto_0
    return-void

    .line 129
    :cond_0
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method protected onUpdateComplete(ILjava/lang/Object;I)V
    .locals 0
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    .line 136
    return-void
.end method
