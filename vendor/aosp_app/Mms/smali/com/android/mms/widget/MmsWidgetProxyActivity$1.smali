.class Lcom/android/mms/widget/MmsWidgetProxyActivity$1;
.super Ljava/lang/Object;
.source "MmsWidgetProxyActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/widget/MmsWidgetProxyActivity;->getUnreadInfo(Landroid/net/Uri;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/widget/MmsWidgetProxyActivity;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/mms/widget/MmsWidgetProxyActivity;Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/mms/widget/MmsWidgetProxyActivity$1;->this$0:Lcom/android/mms/widget/MmsWidgetProxyActivity;

    iput-object p2, p0, Lcom/android/mms/widget/MmsWidgetProxyActivity$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/mms/widget/MmsWidgetProxyActivity$1;->val$uri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v2, 0x0

    .line 142
    new-instance v8, Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/mms/widget/MmsWidgetProxyActivity$1;->val$context:Landroid/content/Context;

    const-class v1, Lcom/android/mms/ui/FolderViewList;

    invoke-direct {v8, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 143
    .local v8, ic:Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/mms/widget/MmsWidgetProxyActivity$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/widget/MmsWidgetProxyActivity$1;->val$uri:Landroid/net/Uri;

    const-string v3, " read=0 "

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 144
    .local v7, cursor:Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 145
    .local v6, boxType:I
    if-eqz v7, :cond_2

    .line 147
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 148
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    .line 149
    .local v9, msgBox:I
    if-ne v9, v10, :cond_3

    .line 150
    const/4 v6, 0x0

    .line 157
    .end local v9           #msgBox:I
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 160
    :cond_2
    const-string v0, "floderview_key"

    invoke-virtual {v8, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 161
    iget-object v0, p0, Lcom/android/mms/widget/MmsWidgetProxyActivity$1;->this$0:Lcom/android/mms/widget/MmsWidgetProxyActivity;

    iget-object v1, p0, Lcom/android/mms/widget/MmsWidgetProxyActivity$1;->val$context:Landroid/content/Context;

    #calls: Lcom/android/mms/widget/MmsWidgetProxyActivity;->startActivityInternal(Landroid/content/Context;Landroid/content/Intent;)V
    invoke-static {v0, v1, v8}, Lcom/android/mms/widget/MmsWidgetProxyActivity;->access$000(Lcom/android/mms/widget/MmsWidgetProxyActivity;Landroid/content/Context;Landroid/content/Intent;)V

    .line 162
    return-void

    .line 152
    .restart local v9       #msgBox:I
    :cond_3
    const/4 v0, 0x4

    if-lt v9, v0, :cond_0

    .line 153
    const/4 v6, 0x1

    goto :goto_0

    .line 157
    .end local v9           #msgBox:I
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method
