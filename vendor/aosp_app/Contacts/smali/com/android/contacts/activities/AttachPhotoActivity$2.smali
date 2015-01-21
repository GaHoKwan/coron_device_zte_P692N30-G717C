.class Lcom/android/contacts/activities/AttachPhotoActivity$2;
.super Ljava/lang/Object;
.source "AttachPhotoActivity.java"

# interfaces
.implements Landroid/content/Loader$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/activities/AttachPhotoActivity;->loadContact(Landroid/net/Uri;Lcom/android/contacts/activities/AttachPhotoActivity$Listener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/content/Loader$OnLoadCompleteListener",
        "<",
        "Lcom/android/contacts/model/Contact;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/AttachPhotoActivity;

.field final synthetic val$listener:Lcom/android/contacts/activities/AttachPhotoActivity$Listener;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/AttachPhotoActivity;Lcom/android/contacts/activities/AttachPhotoActivity$Listener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/contacts/activities/AttachPhotoActivity$2;->this$0:Lcom/android/contacts/activities/AttachPhotoActivity;

    iput-object p2, p0, Lcom/android/contacts/activities/AttachPhotoActivity$2;->val$listener:Lcom/android/contacts/activities/AttachPhotoActivity$Listener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadComplete(Landroid/content/Loader;Lcom/android/contacts/model/Contact;)V
    .locals 3
    .parameter
    .parameter "contact"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/contacts/model/Contact;",
            ">;",
            "Lcom/android/contacts/model/Contact;",
            ")V"
        }
    .end annotation

    .prologue
    .line 155
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Lcom/android/contacts/model/Contact;>;"
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Loader;->reset()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    :goto_0
    iget-object v1, p0, Lcom/android/contacts/activities/AttachPhotoActivity$2;->val$listener:Lcom/android/contacts/activities/AttachPhotoActivity$Listener;

    invoke-interface {v1, p2}, Lcom/android/contacts/activities/AttachPhotoActivity$Listener;->onContactLoaded(Lcom/android/contacts/model/Contact;)V

    .line 161
    return-void

    .line 157
    :catch_0
    move-exception v0

    .line 158
    .local v0, e:Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/android/contacts/activities/AttachPhotoActivity;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error resetting loader"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public bridge synthetic onLoadComplete(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    check-cast p2, Lcom/android/contacts/model/Contact;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/activities/AttachPhotoActivity$2;->onLoadComplete(Landroid/content/Loader;Lcom/android/contacts/model/Contact;)V

    return-void
.end method
