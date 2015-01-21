.class Lcom/android/mms/ui/VCardViewerActivity$1;
.super Ljava/lang/Object;
.source "VCardViewerActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/VCardViewerActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/VCardViewerActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/VCardViewerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 164
    iput-object p1, p0, Lcom/android/mms/ui/VCardViewerActivity$1;->this$0:Lcom/android/mms/ui/VCardViewerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/mms/ui/VCardViewerActivity$1;->this$0:Lcom/android/mms/ui/VCardViewerActivity;

    #getter for: Lcom/android/mms/ui/VCardViewerActivity;->mVCardModel:Lcom/android/mms/model/VCardModel;
    invoke-static {v0}, Lcom/android/mms/ui/VCardViewerActivity;->access$000(Lcom/android/mms/ui/VCardViewerActivity;)Lcom/android/mms/model/VCardModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/android/mms/ui/VCardViewerActivity$1;->this$0:Lcom/android/mms/ui/VCardViewerActivity;

    iget-object v1, p0, Lcom/android/mms/ui/VCardViewerActivity$1;->this$0:Lcom/android/mms/ui/VCardViewerActivity;

    #getter for: Lcom/android/mms/ui/VCardViewerActivity;->mVCardModel:Lcom/android/mms/model/VCardModel;
    invoke-static {v1}, Lcom/android/mms/ui/VCardViewerActivity;->access$000(Lcom/android/mms/ui/VCardViewerActivity;)Lcom/android/mms/model/VCardModel;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/util/VCardUtils;->importVCard(Landroid/content/Context;Lcom/android/mms/model/FileAttachmentModel;)V

    .line 170
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
