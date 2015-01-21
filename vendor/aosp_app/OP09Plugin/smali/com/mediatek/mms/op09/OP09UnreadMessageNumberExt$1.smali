.class Lcom/mediatek/mms/op09/OP09UnreadMessageNumberExt$1;
.super Ljava/lang/Object;
.source "OP09UnreadMessageNumberExt.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/mms/op09/OP09UnreadMessageNumberExt;->updateUnreadMessageNumber(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/mms/op09/OP09UnreadMessageNumberExt;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/mediatek/mms/op09/OP09UnreadMessageNumberExt;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/mediatek/mms/op09/OP09UnreadMessageNumberExt$1;->this$0:Lcom/mediatek/mms/op09/OP09UnreadMessageNumberExt;

    iput-object p2, p0, Lcom/mediatek/mms/op09/OP09UnreadMessageNumberExt$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 59
    const-string v0, "content://mms-sms/conversations/unread"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 60
    .local v1, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/mediatek/mms/op09/OP09UnreadMessageNumberExt$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 61
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 62
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 64
    :cond_0
    return-void
.end method
