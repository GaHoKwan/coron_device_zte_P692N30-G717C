.class Lcom/android/mms/ui/WPMessageDialogActivity$3;
.super Ljava/lang/Object;
.source "WPMessageDialogActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/WPMessageDialogActivity;->markAsRead()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/WPMessageDialogActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/WPMessageDialogActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 227
    iput-object p1, p0, Lcom/android/mms/ui/WPMessageDialogActivity$3;->this$0:Lcom/android/mms/ui/WPMessageDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 229
    iget-object v1, p0, Lcom/android/mms/ui/WPMessageDialogActivity$3;->this$0:Lcom/android/mms/ui/WPMessageDialogActivity;

    #getter for: Lcom/android/mms/ui/WPMessageDialogActivity;->mUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/android/mms/ui/WPMessageDialogActivity;->access$100(Lcom/android/mms/ui/WPMessageDialogActivity;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 230
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 231
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "read"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 232
    const-string v1, "seen"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 233
    const-string v1, "WPMessageDialogActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "markAsRead uri:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/WPMessageDialogActivity$3;->this$0:Lcom/android/mms/ui/WPMessageDialogActivity;

    #getter for: Lcom/android/mms/ui/WPMessageDialogActivity;->mUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/android/mms/ui/WPMessageDialogActivity;->access$100(Lcom/android/mms/ui/WPMessageDialogActivity;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    iget-object v1, p0, Lcom/android/mms/ui/WPMessageDialogActivity$3;->this$0:Lcom/android/mms/ui/WPMessageDialogActivity;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/WPMessageDialogActivity$3;->this$0:Lcom/android/mms/ui/WPMessageDialogActivity;

    #getter for: Lcom/android/mms/ui/WPMessageDialogActivity;->mUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/android/mms/ui/WPMessageDialogActivity;->access$100(Lcom/android/mms/ui/WPMessageDialogActivity;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 235
    iget-object v1, p0, Lcom/android/mms/ui/WPMessageDialogActivity$3;->this$0:Lcom/android/mms/ui/WPMessageDialogActivity;

    const-wide/16 v2, -0x2

    invoke-static {v1, v2, v3}, Lcom/android/mms/transaction/WapPushMessagingNotification;->blockingUpdateNewMessageIndicator(Landroid/content/Context;J)V

    .line 238
    .end local v0           #values:Landroid/content/ContentValues;
    :cond_0
    return-void
.end method
