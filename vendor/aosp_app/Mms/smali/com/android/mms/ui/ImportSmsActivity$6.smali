.class Lcom/android/mms/ui/ImportSmsActivity$6;
.super Ljava/lang/Object;
.source "ImportSmsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ImportSmsActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ImportSmsActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ImportSmsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 243
    iput-object p1, p0, Lcom/android/mms/ui/ImportSmsActivity$6;->this$0:Lcom/android/mms/ui/ImportSmsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/mms/ui/ImportSmsActivity$6;->this$0:Lcom/android/mms/ui/ImportSmsActivity;

    const-string v1, ""

    #setter for: Lcom/android/mms/ui/ImportSmsActivity;->mImportFileName:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/mms/ui/ImportSmsActivity;->access$202(Lcom/android/mms/ui/ImportSmsActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 247
    return-void
.end method
