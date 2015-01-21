.class Lcom/mediatek/contacts/ShareContactViaSDCard$SearchContactThread;
.super Ljava/lang/Thread;
.source "ShareContactViaSDCard.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/contacts/ShareContactViaSDCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchContactThread"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/contacts/ShareContactViaSDCard$SearchContactThread$CanceledException;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/contacts/ShareContactViaSDCard;


# direct methods
.method public constructor <init>(Lcom/mediatek/contacts/ShareContactViaSDCard;)V
    .locals 0
    .parameter

    .prologue
    .line 355
    iput-object p1, p0, Lcom/mediatek/contacts/ShareContactViaSDCard$SearchContactThread;->this$0:Lcom/mediatek/contacts/ShareContactViaSDCard;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 357
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 371
    iget-object v0, p0, Lcom/mediatek/contacts/ShareContactViaSDCard$SearchContactThread;->this$0:Lcom/mediatek/contacts/ShareContactViaSDCard;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 372
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 375
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/mediatek/contacts/ShareContactViaSDCard$SearchContactThread;->this$0:Lcom/mediatek/contacts/ShareContactViaSDCard;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 378
    :cond_0
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    .line 361
    iget-object v1, p0, Lcom/mediatek/contacts/ShareContactViaSDCard$SearchContactThread;->this$0:Lcom/mediatek/contacts/ShareContactViaSDCard;

    #getter for: Lcom/mediatek/contacts/ShareContactViaSDCard;->mIntent:Landroid/content/Intent;
    invoke-static {v1}, Lcom/mediatek/contacts/ShareContactViaSDCard;->access$100(Lcom/mediatek/contacts/ShareContactViaSDCard;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    .line 362
    .local v0, type:Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/contacts/ShareContactViaSDCard$SearchContactThread;->this$0:Lcom/mediatek/contacts/ShareContactViaSDCard;

    iget-object v1, p0, Lcom/mediatek/contacts/ShareContactViaSDCard$SearchContactThread;->this$0:Lcom/mediatek/contacts/ShareContactViaSDCard;

    #getter for: Lcom/mediatek/contacts/ShareContactViaSDCard;->mIntent:Landroid/content/Intent;
    invoke-static {v1}, Lcom/mediatek/contacts/ShareContactViaSDCard;->access$100(Lcom/mediatek/contacts/ShareContactViaSDCard;)Landroid/content/Intent;

    move-result-object v1

    const-string v3, "android.intent.extra.STREAM"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    #setter for: Lcom/mediatek/contacts/ShareContactViaSDCard;->mDataUri:Landroid/net/Uri;
    invoke-static {v2, v1}, Lcom/mediatek/contacts/ShareContactViaSDCard;->access$202(Lcom/mediatek/contacts/ShareContactViaSDCard;Landroid/net/Uri;)Landroid/net/Uri;

    .line 363
    const-string v1, "ShareContactViaSDCard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mDataUri is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/contacts/ShareContactViaSDCard$SearchContactThread;->this$0:Lcom/mediatek/contacts/ShareContactViaSDCard;

    #getter for: Lcom/mediatek/contacts/ShareContactViaSDCard;->mDataUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/mediatek/contacts/ShareContactViaSDCard;->access$200(Lcom/mediatek/contacts/ShareContactViaSDCard;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    const-string v1, "ShareContactViaSDCard"

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

    .line 365
    iget-object v1, p0, Lcom/mediatek/contacts/ShareContactViaSDCard$SearchContactThread;->this$0:Lcom/mediatek/contacts/ShareContactViaSDCard;

    #getter for: Lcom/mediatek/contacts/ShareContactViaSDCard;->mDataUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/mediatek/contacts/ShareContactViaSDCard;->access$200(Lcom/mediatek/contacts/ShareContactViaSDCard;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 366
    iget-object v1, p0, Lcom/mediatek/contacts/ShareContactViaSDCard$SearchContactThread;->this$0:Lcom/mediatek/contacts/ShareContactViaSDCard;

    iget-object v2, p0, Lcom/mediatek/contacts/ShareContactViaSDCard$SearchContactThread;->this$0:Lcom/mediatek/contacts/ShareContactViaSDCard;

    #getter for: Lcom/mediatek/contacts/ShareContactViaSDCard;->mLookUpUris:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/contacts/ShareContactViaSDCard;->access$300(Lcom/mediatek/contacts/ShareContactViaSDCard;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/contacts/ShareContactViaSDCard;->shareViaSDCard(Ljava/lang/String;)V

    .line 368
    :cond_0
    return-void
.end method
