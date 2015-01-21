.class Lcom/mediatek/mms/op09/OP09MmsComposeExt$1;
.super Ljava/lang/Object;
.source "OP09MmsComposeExt.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/mms/op09/OP09MmsComposeExt;->lockMassTextMsg(Landroid/content/Context;JJZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/mms/op09/OP09MmsComposeExt;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$msgId:J

.field final synthetic val$timeStamp:J

.field final synthetic val$values:Landroid/content/ContentValues;


# direct methods
.method constructor <init>(Lcom/mediatek/mms/op09/OP09MmsComposeExt;JLandroid/content/Context;Landroid/content/ContentValues;J)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 149
    iput-object p1, p0, Lcom/mediatek/mms/op09/OP09MmsComposeExt$1;->this$0:Lcom/mediatek/mms/op09/OP09MmsComposeExt;

    iput-wide p2, p0, Lcom/mediatek/mms/op09/OP09MmsComposeExt$1;->val$timeStamp:J

    iput-object p4, p0, Lcom/mediatek/mms/op09/OP09MmsComposeExt$1;->val$context:Landroid/content/Context;

    iput-object p5, p0, Lcom/mediatek/mms/op09/OP09MmsComposeExt$1;->val$values:Landroid/content/ContentValues;

    iput-wide p6, p0, Lcom/mediatek/mms/op09/OP09MmsComposeExt$1;->val$msgId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 152
    iget-wide v0, p0, Lcom/mediatek/mms/op09/OP09MmsComposeExt$1;->val$timeStamp:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/mediatek/mms/op09/OP09MmsComposeExt$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/mediatek/mms/op09/OP09MmsComposeExt$1;->val$values:Landroid/content/ContentValues;

    const-string v3, "ipmsg_id = ?"

    new-array v4, v4, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v6, p0, Lcom/mediatek/mms/op09/OP09MmsComposeExt$1;->val$timeStamp:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 159
    :goto_0
    return-void

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/mediatek/mms/op09/OP09MmsComposeExt$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/mediatek/mms/op09/OP09MmsComposeExt$1;->val$values:Landroid/content/ContentValues;

    const-string v3, "_id = ?"

    new-array v4, v4, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v6, p0, Lcom/mediatek/mms/op09/OP09MmsComposeExt$1;->val$msgId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method
