.class Lcom/mediatek/contacts/activities/EditSimContactActivity$6;
.super Ljava/lang/Object;
.source "EditSimContactActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/contacts/activities/EditSimContactActivity;->showSaveFailToast()V
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
    .line 1555
    iput-object p1, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity$6;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1557
    iget-object v0, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity$6;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    const v1, 0x7f0c00be

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1559
    iget-object v0, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity$6;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    invoke-virtual {v0}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->backToFragment()V

    .line 1560
    return-void
.end method
