.class Lcom/mediatek/mms/op09/OP09MmsMultiDeleteExt$1;
.super Ljava/lang/Object;
.source "OP09MmsMultiDeleteExt.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/mms/op09/OP09MmsMultiDeleteExt;->lockMassTextMsgs(Landroid/content/Context;[JZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/mms/op09/OP09MmsMultiDeleteExt;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$ids:Ljava/lang/String;

.field final synthetic val$values:Landroid/content/ContentValues;


# direct methods
.method constructor <init>(Lcom/mediatek/mms/op09/OP09MmsMultiDeleteExt;Landroid/content/Context;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/mediatek/mms/op09/OP09MmsMultiDeleteExt$1;->this$0:Lcom/mediatek/mms/op09/OP09MmsMultiDeleteExt;

    iput-object p2, p0, Lcom/mediatek/mms/op09/OP09MmsMultiDeleteExt$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/mediatek/mms/op09/OP09MmsMultiDeleteExt$1;->val$values:Landroid/content/ContentValues;

    iput-object p4, p0, Lcom/mediatek/mms/op09/OP09MmsMultiDeleteExt$1;->val$ids:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 72
    iget-object v0, p0, Lcom/mediatek/mms/op09/OP09MmsMultiDeleteExt$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/mediatek/mms/op09/OP09MmsMultiDeleteExt$1;->val$values:Landroid/content/ContentValues;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(ipmsg_id in ( select distinct ipmsg_id from sms where ipmsg_id < 0 and _id in ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/mms/op09/OP09MmsMultiDeleteExt$1;->val$ids:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ))) or ( _id in ( "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/mms/op09/OP09MmsMultiDeleteExt$1;->val$ids:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ) and ipmsg_id >= 0 )"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 77
    return-void
.end method
