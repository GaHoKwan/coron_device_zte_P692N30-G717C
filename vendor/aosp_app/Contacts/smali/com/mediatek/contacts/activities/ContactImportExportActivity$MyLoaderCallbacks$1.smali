.class Lcom/mediatek/contacts/activities/ContactImportExportActivity$MyLoaderCallbacks$1;
.super Ljava/lang/Object;
.source "ContactImportExportActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/contacts/activities/ContactImportExportActivity$MyLoaderCallbacks;->onLoadFinished(Landroid/content/Loader;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/contacts/activities/ContactImportExportActivity$MyLoaderCallbacks;


# direct methods
.method constructor <init>(Lcom/mediatek/contacts/activities/ContactImportExportActivity$MyLoaderCallbacks;)V
    .locals 0
    .parameter

    .prologue
    .line 359
    iput-object p1, p0, Lcom/mediatek/contacts/activities/ContactImportExportActivity$MyLoaderCallbacks$1;->this$1:Lcom/mediatek/contacts/activities/ContactImportExportActivity$MyLoaderCallbacks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 363
    const v0, 0x7f0c0075

    .line 364
    .local v0, xportErrorOneAccount:I
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/contacts/ExtensionManager;->getContactDetailEnhancementExtension()Lcom/android/contacts/ext/ContactDetailEnhancementExtension;

    move-result-object v1

    const-string v2, "ExtensionForOP09"

    invoke-virtual {v1, v2}, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;->isUseOperation(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 367
    const v0, 0x7f0c00d7

    .line 370
    :cond_0
    iget-object v1, p0, Lcom/mediatek/contacts/activities/ContactImportExportActivity$MyLoaderCallbacks$1;->this$1:Lcom/mediatek/contacts/activities/ContactImportExportActivity$MyLoaderCallbacks;

    iget-object v1, v1, Lcom/mediatek/contacts/activities/ContactImportExportActivity$MyLoaderCallbacks;->this$0:Lcom/mediatek/contacts/activities/ContactImportExportActivity;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 372
    return-void
.end method
