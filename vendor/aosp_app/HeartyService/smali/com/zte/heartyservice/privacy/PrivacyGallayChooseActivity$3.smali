.class Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$3;
.super Ljava/lang/Object;
.source "PrivacyGallayChooseActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 467
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$3;->this$0:Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 471
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$3;->this$0:Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;

    #getter for: Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->mGallayChooseItem:Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$GallayChooseItem;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->access$1400(Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;)Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$GallayChooseItem;

    move-result-object v0

    iget v0, v0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$GallayChooseItem;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 473
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$3;->this$0:Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$3;->this$0:Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;

    #getter for: Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->mGallayChooseItem:Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$GallayChooseItem;
    invoke-static {v1}, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->access$1400(Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;)Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$GallayChooseItem;

    move-result-object v1

    iget-object v1, v1, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$GallayChooseItem;->path:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->showImage(Landroid/content/Context;Ljava/lang/String;)V

    .line 479
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 480
    return-void

    .line 476
    :cond_0
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$3;->this$0:Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$3;->this$0:Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;

    #getter for: Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->mGallayChooseItem:Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$GallayChooseItem;
    invoke-static {v1}, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->access$1400(Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;)Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$GallayChooseItem;

    move-result-object v1

    iget-object v1, v1, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$GallayChooseItem;->path:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->showVideo(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
