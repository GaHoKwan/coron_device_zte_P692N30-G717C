.class Lcom/android/mms/ui/SearchActivity$3;
.super Landroid/content/AsyncQueryHandler;
.source "SearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SearchActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SearchActivity;

.field final synthetic val$listView:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SearchActivity;Landroid/content/ContentResolver;Landroid/widget/ListView;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 381
    iput-object p1, p0, Lcom/android/mms/ui/SearchActivity$3;->this$0:Lcom/android/mms/ui/SearchActivity;

    iput-object p3, p0, Lcom/android/mms/ui/SearchActivity$3;->val$listView:Landroid/widget/ListView;

    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 12
    .parameter "token"
    .parameter "cookie"
    .parameter "c"

    .prologue
    const v11, 0x7f0c0004

    const v10, 0x7f0c0003

    const/4 v7, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 387
    :try_start_0
    iget-object v3, p0, Lcom/android/mms/ui/SearchActivity$3;->this$0:Lcom/android/mms/ui/SearchActivity;

    #getter for: Lcom/android/mms/ui/SearchActivity;->searchProgressDialog:Lcom/android/mms/ui/NewProgressDialog;
    invoke-static {v3}, Lcom/android/mms/ui/SearchActivity;->access$200(Lcom/android/mms/ui/SearchActivity;)Lcom/android/mms/ui/NewProgressDialog;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/mms/ui/SearchActivity$3;->this$0:Lcom/android/mms/ui/SearchActivity;

    #getter for: Lcom/android/mms/ui/SearchActivity;->searchProgressDialog:Lcom/android/mms/ui/NewProgressDialog;
    invoke-static {v3}, Lcom/android/mms/ui/SearchActivity;->access$200(Lcom/android/mms/ui/SearchActivity;)Lcom/android/mms/ui/NewProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 388
    iget-object v3, p0, Lcom/android/mms/ui/SearchActivity$3;->this$0:Lcom/android/mms/ui/SearchActivity;

    #getter for: Lcom/android/mms/ui/SearchActivity;->searchProgressDialog:Lcom/android/mms/ui/NewProgressDialog;
    invoke-static {v3}, Lcom/android/mms/ui/SearchActivity;->access$200(Lcom/android/mms/ui/SearchActivity;)Lcom/android/mms/ui/NewProgressDialog;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/NewProgressDialog;->setDismiss(Z)V

    .line 389
    iget-object v3, p0, Lcom/android/mms/ui/SearchActivity$3;->this$0:Lcom/android/mms/ui/SearchActivity;

    #getter for: Lcom/android/mms/ui/SearchActivity;->searchProgressDialog:Lcom/android/mms/ui/NewProgressDialog;
    invoke-static {v3}, Lcom/android/mms/ui/SearchActivity;->access$200(Lcom/android/mms/ui/SearchActivity;)Lcom/android/mms/ui/NewProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/NewProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 395
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/mms/ui/SearchActivity$3;->this$0:Lcom/android/mms/ui/SearchActivity;

    #setter for: Lcom/android/mms/ui/SearchActivity;->mIsQueryComplete:Z
    invoke-static {v3, v9}, Lcom/android/mms/ui/SearchActivity;->access$302(Lcom/android/mms/ui/SearchActivity;Z)Z

    .line 398
    if-nez p3, :cond_3

    .line 400
    iget-object v3, p0, Lcom/android/mms/ui/SearchActivity$3;->this$0:Lcom/android/mms/ui/SearchActivity;

    #getter for: Lcom/android/mms/ui/SearchActivity;->mIsAdvancedQuery:Z
    invoke-static {v3}, Lcom/android/mms/ui/SearchActivity;->access$400(Lcom/android/mms/ui/SearchActivity;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 401
    iget-object v3, p0, Lcom/android/mms/ui/SearchActivity$3;->this$0:Lcom/android/mms/ui/SearchActivity;

    iget-object v4, p0, Lcom/android/mms/ui/SearchActivity$3;->this$0:Lcom/android/mms/ui/SearchActivity;

    invoke-virtual {v4}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v4, v10, v8, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 462
    :cond_1
    :goto_1
    return-void

    .line 391
    :catch_0
    move-exception v1

    .line 392
    .local v1, ex:Ljava/lang/IllegalArgumentException;
    const-string v3, "Mms/SearchActivity"

    const-string v4, "Dialog.dismiss() IllegalArgumentException"

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 409
    .end local v1           #ex:Ljava/lang/IllegalArgumentException;
    :cond_2
    iget-object v3, p0, Lcom/android/mms/ui/SearchActivity$3;->this$0:Lcom/android/mms/ui/SearchActivity;

    iget-object v4, p0, Lcom/android/mms/ui/SearchActivity$3;->this$0:Lcom/android/mms/ui/SearchActivity;

    invoke-virtual {v4}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    iget-object v6, p0, Lcom/android/mms/ui/SearchActivity$3;->this$0:Lcom/android/mms/ui/SearchActivity;

    #getter for: Lcom/android/mms/ui/SearchActivity;->searchString:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/mms/ui/SearchActivity;->access$500(Lcom/android/mms/ui/SearchActivity;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-virtual {v4, v11, v8, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 417
    :cond_3
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 418
    .local v0, cursorCount:I
    const-string v3, "Mms/SearchActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cursorCount =: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    iget-object v3, p0, Lcom/android/mms/ui/SearchActivity$3;->this$0:Lcom/android/mms/ui/SearchActivity;

    #getter for: Lcom/android/mms/ui/SearchActivity;->mIsAdvancedQuery:Z
    invoke-static {v3}, Lcom/android/mms/ui/SearchActivity;->access$400(Lcom/android/mms/ui/SearchActivity;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 421
    iget-object v3, p0, Lcom/android/mms/ui/SearchActivity$3;->this$0:Lcom/android/mms/ui/SearchActivity;

    iget-object v4, p0, Lcom/android/mms/ui/SearchActivity$3;->this$0:Lcom/android/mms/ui/SearchActivity;

    invoke-virtual {v4}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v4, v10, v0, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 433
    :goto_2
    if-nez v0, :cond_4

    .line 434
    iget-object v3, p0, Lcom/android/mms/ui/SearchActivity$3;->this$0:Lcom/android/mms/ui/SearchActivity;

    #getter for: Lcom/android/mms/ui/SearchActivity;->mTvEmpty:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/mms/ui/SearchActivity;->access$600(Lcom/android/mms/ui/SearchActivity;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/SearchActivity$3;->this$0:Lcom/android/mms/ui/SearchActivity;

    const v5, 0x7f0b031f

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 440
    :cond_4
    iget-object v3, p0, Lcom/android/mms/ui/SearchActivity$3;->this$0:Lcom/android/mms/ui/SearchActivity;

    #getter for: Lcom/android/mms/ui/SearchActivity;->mAdapter:Lcom/android/mms/ui/SearchActivity$SearchResultCursorAdapter;
    invoke-static {v3}, Lcom/android/mms/ui/SearchActivity;->access$700(Lcom/android/mms/ui/SearchActivity;)Lcom/android/mms/ui/SearchActivity$SearchResultCursorAdapter;

    move-result-object v3

    if-nez v3, :cond_6

    .line 441
    iget-object v3, p0, Lcom/android/mms/ui/SearchActivity$3;->this$0:Lcom/android/mms/ui/SearchActivity;

    new-instance v4, Lcom/android/mms/ui/SearchActivity$SearchResultCursorAdapter;

    iget-object v5, p0, Lcom/android/mms/ui/SearchActivity$3;->this$0:Lcom/android/mms/ui/SearchActivity;

    iget-object v6, p0, Lcom/android/mms/ui/SearchActivity$3;->this$0:Lcom/android/mms/ui/SearchActivity;

    invoke-direct {v4, v5, v6, p3, v8}, Lcom/android/mms/ui/SearchActivity$SearchResultCursorAdapter;-><init>(Lcom/android/mms/ui/SearchActivity;Landroid/content/Context;Landroid/database/Cursor;Z)V

    #setter for: Lcom/android/mms/ui/SearchActivity;->mAdapter:Lcom/android/mms/ui/SearchActivity$SearchResultCursorAdapter;
    invoke-static {v3, v4}, Lcom/android/mms/ui/SearchActivity;->access$702(Lcom/android/mms/ui/SearchActivity;Lcom/android/mms/ui/SearchActivity$SearchResultCursorAdapter;)Lcom/android/mms/ui/SearchActivity$SearchResultCursorAdapter;

    .line 442
    iget-object v3, p0, Lcom/android/mms/ui/SearchActivity$3;->this$0:Lcom/android/mms/ui/SearchActivity;

    iget-object v4, p0, Lcom/android/mms/ui/SearchActivity$3;->this$0:Lcom/android/mms/ui/SearchActivity;

    #getter for: Lcom/android/mms/ui/SearchActivity;->mAdapter:Lcom/android/mms/ui/SearchActivity$SearchResultCursorAdapter;
    invoke-static {v4}, Lcom/android/mms/ui/SearchActivity;->access$700(Lcom/android/mms/ui/SearchActivity;)Lcom/android/mms/ui/SearchActivity$SearchResultCursorAdapter;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/ListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 451
    :goto_3
    iget-object v3, p0, Lcom/android/mms/ui/SearchActivity$3;->val$listView:Landroid/widget/ListView;

    invoke-virtual {v3, v9}, Landroid/widget/AdapterView;->setFocusable(Z)V

    .line 452
    iget-object v3, p0, Lcom/android/mms/ui/SearchActivity$3;->val$listView:Landroid/widget/ListView;

    invoke-virtual {v3, v9}, Landroid/widget/AdapterView;->setFocusableInTouchMode(Z)V

    .line 453
    iget-object v3, p0, Lcom/android/mms/ui/SearchActivity$3;->val$listView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    .line 456
    if-lez v0, :cond_1

    .line 457
    iget-object v3, p0, Lcom/android/mms/ui/SearchActivity$3;->this$0:Lcom/android/mms/ui/SearchActivity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v3

    check-cast v3, Lcom/android/mms/MmsApp;

    invoke-virtual {v3}, Lcom/android/mms/MmsApp;->getRecentSuggestions()Landroid/provider/SearchRecentSuggestions;

    move-result-object v2

    .line 458
    .local v2, recent:Landroid/provider/SearchRecentSuggestions;
    if-eqz v2, :cond_1

    .line 459
    iget-object v3, p0, Lcom/android/mms/ui/SearchActivity$3;->this$0:Lcom/android/mms/ui/SearchActivity;

    #getter for: Lcom/android/mms/ui/SearchActivity;->searchString:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/mms/ui/SearchActivity;->access$500(Lcom/android/mms/ui/SearchActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/SearchActivity$3;->this$0:Lcom/android/mms/ui/SearchActivity;

    const v5, 0x7f0b0320

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    iget-object v7, p0, Lcom/android/mms/ui/SearchActivity$3;->this$0:Lcom/android/mms/ui/SearchActivity;

    #getter for: Lcom/android/mms/ui/SearchActivity;->searchString:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/mms/ui/SearchActivity;->access$500(Lcom/android/mms/ui/SearchActivity;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/provider/SearchRecentSuggestions;->saveRecentQuery(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 427
    .end local v2           #recent:Landroid/provider/SearchRecentSuggestions;
    :cond_5
    iget-object v3, p0, Lcom/android/mms/ui/SearchActivity$3;->this$0:Lcom/android/mms/ui/SearchActivity;

    iget-object v4, p0, Lcom/android/mms/ui/SearchActivity$3;->this$0:Lcom/android/mms/ui/SearchActivity;

    invoke-virtual {v4}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    iget-object v6, p0, Lcom/android/mms/ui/SearchActivity$3;->this$0:Lcom/android/mms/ui/SearchActivity;

    #getter for: Lcom/android/mms/ui/SearchActivity;->searchString:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/mms/ui/SearchActivity;->access$500(Lcom/android/mms/ui/SearchActivity;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-virtual {v4, v11, v0, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 444
    :cond_6
    iget-object v3, p0, Lcom/android/mms/ui/SearchActivity$3;->this$0:Lcom/android/mms/ui/SearchActivity;

    #getter for: Lcom/android/mms/ui/SearchActivity;->mAdapter:Lcom/android/mms/ui/SearchActivity$SearchResultCursorAdapter;
    invoke-static {v3}, Lcom/android/mms/ui/SearchActivity;->access$700(Lcom/android/mms/ui/SearchActivity;)Lcom/android/mms/ui/SearchActivity$SearchResultCursorAdapter;

    move-result-object v3

    invoke-virtual {v3, p3}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_3
.end method
