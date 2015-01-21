.class Lcom/android/mms/widget/MmsWidgetProxyActivity$2;
.super Ljava/lang/Object;
.source "MmsWidgetProxyActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/widget/MmsWidgetProxyActivity;->getThreadInfo(Landroid/net/Uri;Landroid/content/Context;)V
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
    .line 168
    iput-object p1, p0, Lcom/android/mms/widget/MmsWidgetProxyActivity$2;->this$0:Lcom/android/mms/widget/MmsWidgetProxyActivity;

    iput-object p2, p0, Lcom/android/mms/widget/MmsWidgetProxyActivity$2;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/mms/widget/MmsWidgetProxyActivity$2;->val$uri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 171
    new-instance v8, Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/mms/widget/MmsWidgetProxyActivity$2;->val$context:Landroid/content/Context;

    const-class v1, Lcom/android/mms/ui/FolderViewList;

    invoke-direct {v8, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 172
    .local v8, it:Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/mms/widget/MmsWidgetProxyActivity$2;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/widget/MmsWidgetProxyActivity$2;->val$uri:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 173
    .local v7, cursor:Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 174
    .local v9, msgBox:I
    const/4 v6, 0x0

    .line 175
    .local v6, boxType:I
    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 176
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 177
    const-string v0, "MmsWidgetProxyActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getThreadInfo, thread msgBox = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const/4 v0, 0x2

    if-ne v0, v9, :cond_2

    .line 179
    const/4 v6, 0x3

    .line 188
    :cond_0
    :goto_0
    if-eqz v7, :cond_1

    .line 189
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 191
    :cond_1
    const-string v0, "floderview_key"

    invoke-virtual {v8, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 192
    iget-object v0, p0, Lcom/android/mms/widget/MmsWidgetProxyActivity$2;->this$0:Lcom/android/mms/widget/MmsWidgetProxyActivity;

    iget-object v1, p0, Lcom/android/mms/widget/MmsWidgetProxyActivity$2;->val$context:Landroid/content/Context;

    #calls: Lcom/android/mms/widget/MmsWidgetProxyActivity;->startActivityInternal(Landroid/content/Context;Landroid/content/Intent;)V
    invoke-static {v0, v1, v8}, Lcom/android/mms/widget/MmsWidgetProxyActivity;->access$000(Lcom/android/mms/widget/MmsWidgetProxyActivity;Landroid/content/Context;Landroid/content/Intent;)V

    .line 193
    return-void

    .line 180
    :cond_2
    const/4 v0, 0x3

    if-ne v0, v9, :cond_3

    .line 181
    const/4 v6, 0x2

    goto :goto_0

    .line 182
    :cond_3
    const/4 v0, 0x4

    if-gt v0, v9, :cond_0

    .line 183
    const/4 v6, 0x1

    goto :goto_0

    .line 186
    :cond_4
    const-string v0, "MmsWidgetProxyActivity"

    const-string v1, "getThreadInfo, cursor is null or cursor count is 0"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
