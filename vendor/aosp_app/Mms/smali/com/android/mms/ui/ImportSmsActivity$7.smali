.class Lcom/android/mms/ui/ImportSmsActivity$7;
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
    .line 236
    iput-object p1, p0, Lcom/android/mms/ui/ImportSmsActivity$7;->this$0:Lcom/android/mms/ui/ImportSmsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/mms/ui/ImportSmsActivity$7;->this$0:Lcom/android/mms/ui/ImportSmsActivity;

    iget-object v1, p0, Lcom/android/mms/ui/ImportSmsActivity$7;->this$0:Lcom/android/mms/ui/ImportSmsActivity;

    #getter for: Lcom/android/mms/ui/ImportSmsActivity;->mImportFileName:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/mms/ui/ImportSmsActivity;->access$200(Lcom/android/mms/ui/ImportSmsActivity;)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/mms/ui/ImportSmsActivity;->importMessages(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/android/mms/ui/ImportSmsActivity;->access$300(Lcom/android/mms/ui/ImportSmsActivity;Ljava/lang/String;)Z

    .line 239
    return-void
.end method
