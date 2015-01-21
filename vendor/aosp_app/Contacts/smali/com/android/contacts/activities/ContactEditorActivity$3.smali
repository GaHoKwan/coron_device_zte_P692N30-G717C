.class Lcom/android/contacts/activities/ContactEditorActivity$3;
.super Ljava/lang/Object;
.source "ContactEditorActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/activities/ContactEditorActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/ContactEditorActivity;

.field final synthetic val$cancelMenuItem:Landroid/view/View;

.field final synthetic val$saveMenuItem:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/ContactEditorActivity;Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 191
    iput-object p1, p0, Lcom/android/contacts/activities/ContactEditorActivity$3;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    iput-object p2, p0, Lcom/android/contacts/activities/ContactEditorActivity$3;->val$saveMenuItem:Landroid/view/View;

    iput-object p3, p0, Lcom/android/contacts/activities/ContactEditorActivity$3;->val$cancelMenuItem:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 194
    new-instance v0, Lcom/mediatek/contacts/util/DisableViewsUtil$Builder;

    invoke-direct {v0}, Lcom/mediatek/contacts/util/DisableViewsUtil$Builder;-><init>()V

    iget-object v1, p0, Lcom/android/contacts/activities/ContactEditorActivity$3;->val$saveMenuItem:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/mediatek/contacts/util/DisableViewsUtil$Builder;->addView(Landroid/view/View;)Lcom/mediatek/contacts/util/DisableViewsUtil$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/activities/ContactEditorActivity$3;->val$cancelMenuItem:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/mediatek/contacts/util/DisableViewsUtil$Builder;->addView(Landroid/view/View;)Lcom/mediatek/contacts/util/DisableViewsUtil$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/contacts/util/DisableViewsUtil$Builder;->build()Lcom/mediatek/contacts/util/DisableViewsUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/contacts/util/DisableViewsUtil;->disableTemporarily()V

    .line 196
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity$3;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    #getter for: Lcom/android/contacts/activities/ContactEditorActivity;->mFragment:Lcom/android/contacts/editor/ContactEditorFragment;
    invoke-static {v0}, Lcom/android/contacts/activities/ContactEditorActivity;->access$000(Lcom/android/contacts/activities/ContactEditorActivity;)Lcom/android/contacts/editor/ContactEditorFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/editor/ContactEditorFragment;->doSaveAction()V

    .line 197
    return-void
.end method
