.class Lcom/mediatek/contacts/ShareContactViaSMS$SearchContactThread;
.super Ljava/lang/Thread;
.source "ShareContactViaSMS.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/contacts/ShareContactViaSMS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchContactThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/contacts/ShareContactViaSMS;


# direct methods
.method public constructor <init>(Lcom/mediatek/contacts/ShareContactViaSMS;)V
    .locals 0
    .parameter

    .prologue
    .line 397
    iput-object p1, p0, Lcom/mediatek/contacts/ShareContactViaSMS$SearchContactThread;->this$0:Lcom/mediatek/contacts/ShareContactViaSMS;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 398
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 415
    iget-object v0, p0, Lcom/mediatek/contacts/ShareContactViaSMS$SearchContactThread;->this$0:Lcom/mediatek/contacts/ShareContactViaSMS;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 416
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 419
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/mediatek/contacts/ShareContactViaSMS$SearchContactThread;->this$0:Lcom/mediatek/contacts/ShareContactViaSMS;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 422
    :cond_0
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    .line 402
    iget-object v1, p0, Lcom/mediatek/contacts/ShareContactViaSMS$SearchContactThread;->this$0:Lcom/mediatek/contacts/ShareContactViaSMS;

    iget-object v1, v1, Lcom/mediatek/contacts/ShareContactViaSMS;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    .line 403
    .local v0, type:Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/contacts/ShareContactViaSMS$SearchContactThread;->this$0:Lcom/mediatek/contacts/ShareContactViaSMS;

    iget-object v1, p0, Lcom/mediatek/contacts/ShareContactViaSMS$SearchContactThread;->this$0:Lcom/mediatek/contacts/ShareContactViaSMS;

    iget-object v1, v1, Lcom/mediatek/contacts/ShareContactViaSMS;->mIntent:Landroid/content/Intent;

    const-string v3, "android.intent.extra.STREAM"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    #setter for: Lcom/mediatek/contacts/ShareContactViaSMS;->mDataUri:Landroid/net/Uri;
    invoke-static {v2, v1}, Lcom/mediatek/contacts/ShareContactViaSMS;->access$102(Lcom/mediatek/contacts/ShareContactViaSMS;Landroid/net/Uri;)Landroid/net/Uri;

    .line 406
    const-string v1, "ShareContactViaSMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dataUri is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/contacts/ShareContactViaSMS$SearchContactThread;->this$0:Lcom/mediatek/contacts/ShareContactViaSMS;

    #getter for: Lcom/mediatek/contacts/ShareContactViaSMS;->mDataUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/mediatek/contacts/ShareContactViaSMS;->access$100(Lcom/mediatek/contacts/ShareContactViaSMS;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    const-string v1, "ShareContactViaSMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "type is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    iget-object v1, p0, Lcom/mediatek/contacts/ShareContactViaSMS$SearchContactThread;->this$0:Lcom/mediatek/contacts/ShareContactViaSMS;

    #getter for: Lcom/mediatek/contacts/ShareContactViaSMS;->mDataUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/mediatek/contacts/ShareContactViaSMS;->access$100(Lcom/mediatek/contacts/ShareContactViaSMS;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 409
    iget-object v1, p0, Lcom/mediatek/contacts/ShareContactViaSMS$SearchContactThread;->this$0:Lcom/mediatek/contacts/ShareContactViaSMS;

    iget-object v2, p0, Lcom/mediatek/contacts/ShareContactViaSMS$SearchContactThread;->this$0:Lcom/mediatek/contacts/ShareContactViaSMS;

    iget-object v2, v2, Lcom/mediatek/contacts/ShareContactViaSMS;->mLookUpUris:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mediatek/contacts/ShareContactViaSMS;->shareViaSMS(Ljava/lang/String;)V

    .line 411
    :cond_0
    return-void
.end method
