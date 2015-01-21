.class Lcom/mediatek/contacts/activities/ContactImportExportActivity$2;
.super Ljava/lang/Object;
.source "ContactImportExportActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/contacts/activities/ContactImportExportActivity;->handleImportExportAction()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/contacts/activities/ContactImportExportActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/contacts/activities/ContactImportExportActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 562
    iput-object p1, p0, Lcom/mediatek/contacts/activities/ContactImportExportActivity$2;->this$0:Lcom/mediatek/contacts/activities/ContactImportExportActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 564
    iget-object v0, p0, Lcom/mediatek/contacts/activities/ContactImportExportActivity$2;->this$0:Lcom/mediatek/contacts/activities/ContactImportExportActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 565
    return-void
.end method
