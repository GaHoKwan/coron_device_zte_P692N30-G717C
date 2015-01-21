.class Lcom/mediatek/mms/op09/OP09MmsComposeExt$2;
.super Ljava/lang/Object;
.source "OP09MmsComposeExt.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/mms/op09/OP09MmsComposeExt;->showMassTextMsgDetail(Landroid/content/Context;J)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/mms/op09/OP09MmsComposeExt;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$msgIDS:[[J


# direct methods
.method constructor <init>(Lcom/mediatek/mms/op09/OP09MmsComposeExt;Landroid/content/Context;[[J)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 229
    iput-object p1, p0, Lcom/mediatek/mms/op09/OP09MmsComposeExt$2;->this$0:Lcom/mediatek/mms/op09/OP09MmsComposeExt;

    iput-object p2, p0, Lcom/mediatek/mms/op09/OP09MmsComposeExt$2;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/mediatek/mms/op09/OP09MmsComposeExt$2;->val$msgIDS:[[J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 232
    new-instance v1, Lcom/mediatek/mms/op09/ResendSmsExt;

    iget-object v3, p0, Lcom/mediatek/mms/op09/OP09MmsComposeExt$2;->val$context:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/mediatek/mms/op09/ResendSmsExt;-><init>(Landroid/content/Context;)V

    .line 233
    .local v1, mcde:Lcom/mediatek/mms/op09/ResendSmsExt;
    iget-object v3, p0, Lcom/mediatek/mms/op09/OP09MmsComposeExt$2;->val$msgIDS:[[J

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/mediatek/mms/op09/OP09MmsComposeExt$2;->val$msgIDS:[[J

    array-length v3, v3

    if-lez v3, :cond_1

    .line 234
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    iget-object v3, p0, Lcom/mediatek/mms/op09/OP09MmsComposeExt$2;->val$msgIDS:[[J

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 235
    const-string v3, "Mms/Op09MmsComposeExt"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "msgIDS:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/mms/op09/OP09MmsComposeExt$2;->val$msgIDS:[[J

    aget-object v5, v5, v0

    aget-wide v5, v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    iget-object v3, p0, Lcom/mediatek/mms/op09/OP09MmsComposeExt$2;->val$msgIDS:[[J

    aget-object v3, v3, v0

    aget-wide v3, v3, v7

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 237
    sget-object v3, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/mediatek/mms/op09/OP09MmsComposeExt$2;->val$msgIDS:[[J

    aget-object v4, v4, v0

    aget-wide v4, v4, v7

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 239
    .local v2, resendUri:Landroid/net/Uri;
    const-string v3, "Mms/Op09MmsComposeExt"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Resend SMS Uri:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " SMs MsgID:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/mms/op09/OP09MmsComposeExt$2;->val$msgIDS:[[J

    aget-object v5, v5, v0

    aget-wide v5, v5, v8

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    iget-object v3, p0, Lcom/mediatek/mms/op09/OP09MmsComposeExt$2;->val$context:Landroid/content/Context;

    iget-object v4, p0, Lcom/mediatek/mms/op09/OP09MmsComposeExt$2;->val$msgIDS:[[J

    aget-object v4, v4, v0

    aget-wide v4, v4, v8

    long-to-int v4, v4

    invoke-virtual {v1, v3, v2, v4}, Lcom/mediatek/mms/op09/ResendSmsExt;->resendMessage(Landroid/content/Context;Landroid/net/Uri;I)V

    .line 234
    .end local v2           #resendUri:Landroid/net/Uri;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 245
    .end local v0           #index:I
    :cond_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 246
    return-void
.end method
