.class Lcom/mediatek/calendarimporter/HandleProgressActivity$3;
.super Ljava/lang/Object;
.source "HandleProgressActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/calendarimporter/HandleProgressActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/calendarimporter/HandleProgressActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/calendarimporter/HandleProgressActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 232
    iput-object p1, p0, Lcom/mediatek/calendarimporter/HandleProgressActivity$3;->this$0:Lcom/mediatek/calendarimporter/HandleProgressActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 235
    iget-object v0, p0, Lcom/mediatek/calendarimporter/HandleProgressActivity$3;->this$0:Lcom/mediatek/calendarimporter/HandleProgressActivity;

    #getter for: Lcom/mediatek/calendarimporter/HandleProgressActivity;->mService:Lcom/mediatek/calendarimporter/service/VCalService;
    invoke-static {v0}, Lcom/mediatek/calendarimporter/HandleProgressActivity;->access$100(Lcom/mediatek/calendarimporter/HandleProgressActivity;)Lcom/mediatek/calendarimporter/service/VCalService;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/calendarimporter/HandleProgressActivity$3;->this$0:Lcom/mediatek/calendarimporter/HandleProgressActivity;

    #getter for: Lcom/mediatek/calendarimporter/HandleProgressActivity;->mProcessor:Lcom/mediatek/calendarimporter/service/ImportProcessor;
    invoke-static {v0}, Lcom/mediatek/calendarimporter/HandleProgressActivity;->access$200(Lcom/mediatek/calendarimporter/HandleProgressActivity;)Lcom/mediatek/calendarimporter/service/ImportProcessor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/mediatek/calendarimporter/HandleProgressActivity$3;->this$0:Lcom/mediatek/calendarimporter/HandleProgressActivity;

    #getter for: Lcom/mediatek/calendarimporter/HandleProgressActivity;->mService:Lcom/mediatek/calendarimporter/service/VCalService;
    invoke-static {v0}, Lcom/mediatek/calendarimporter/HandleProgressActivity;->access$100(Lcom/mediatek/calendarimporter/HandleProgressActivity;)Lcom/mediatek/calendarimporter/service/VCalService;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/calendarimporter/HandleProgressActivity$3;->this$0:Lcom/mediatek/calendarimporter/HandleProgressActivity;

    #getter for: Lcom/mediatek/calendarimporter/HandleProgressActivity;->mProcessor:Lcom/mediatek/calendarimporter/service/ImportProcessor;
    invoke-static {v1}, Lcom/mediatek/calendarimporter/HandleProgressActivity;->access$200(Lcom/mediatek/calendarimporter/HandleProgressActivity;)Lcom/mediatek/calendarimporter/service/ImportProcessor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/calendarimporter/service/VCalService;->tryCancelProcessor(Lcom/mediatek/calendarimporter/service/BaseProcessor;)V

    .line 237
    iget-object v0, p0, Lcom/mediatek/calendarimporter/HandleProgressActivity$3;->this$0:Lcom/mediatek/calendarimporter/HandleProgressActivity;

    #getter for: Lcom/mediatek/calendarimporter/HandleProgressActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/mediatek/calendarimporter/HandleProgressActivity;->access$500(Lcom/mediatek/calendarimporter/HandleProgressActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 239
    :cond_0
    return-void
.end method
