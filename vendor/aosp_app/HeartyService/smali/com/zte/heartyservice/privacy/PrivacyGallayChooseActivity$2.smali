.class Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$2;
.super Ljava/lang/Object;
.source "PrivacyGallayChooseActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 151
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$2;->this$0:Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$2;->this$0:Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;

    #getter for: Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->mEncryTask:Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$encryTask;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->access$800(Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;)Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$encryTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$2;->this$0:Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;

    #getter for: Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->mEncryTask:Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$encryTask;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->access$800(Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;)Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$encryTask;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$encryTask;->cancel(Z)Z

    .line 157
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$2;->this$0:Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;

    const/4 v1, 0x0

    #setter for: Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->mEncryTask:Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$encryTask;
    invoke-static {v0, v1}, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->access$802(Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$encryTask;)Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$encryTask;

    .line 159
    :cond_0
    return-void
.end method
