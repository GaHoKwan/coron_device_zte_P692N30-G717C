.class Lcom/mediatek/contacts/activities/EditSimContactActivity$2;
.super Ljava/lang/Object;
.source "EditSimContactActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/contacts/activities/EditSimContactActivity;->setSaveFailToastText2(Landroid/net/Uri;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/contacts/activities/EditSimContactActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1356
    iput-object p1, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity$2;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1358
    iget-object v1, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity$2;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mSaveFailToastStrId:I
    invoke-static {v1}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$3800(Lcom/mediatek/contacts/activities/EditSimContactActivity;)I

    move-result v1

    const v2, 0x7f0c00f9

    if-ne v1, v2, :cond_0

    .line 1359
    iget-object v1, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity$2;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity$2;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mSaveFailToastStrId:I
    invoke-static {v2}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$3800(Lcom/mediatek/contacts/activities/EditSimContactActivity;)I

    move-result v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity$2;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mSimType:Ljava/lang/String;
    invoke-static {v4}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$400(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1360
    .local v0, specialErrorText:Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity$2;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    invoke-static {v1, v0}, Lcom/mediatek/contacts/util/MtkToast;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 1364
    .end local v0           #specialErrorText:Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity$2;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    invoke-virtual {v1}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->backToFragment()V

    .line 1365
    return-void

    .line 1362
    :cond_0
    iget-object v1, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity$2;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    iget-object v2, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity$2;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mSaveFailToastStrId:I
    invoke-static {v2}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$3800(Lcom/mediatek/contacts/activities/EditSimContactActivity;)I

    move-result v2

    invoke-static {v1, v2, v5}, Lcom/mediatek/contacts/util/MtkToast;->toast(Landroid/content/Context;II)V

    goto :goto_0
.end method
