.class Lcom/android/mms/ui/SmsTemplateEditActivity$EditButtonListener;
.super Ljava/lang/Object;
.source "SmsTemplateEditActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SmsTemplateEditActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EditButtonListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SmsTemplateEditActivity;


# direct methods
.method private constructor <init>(Lcom/android/mms/ui/SmsTemplateEditActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 207
    iput-object p1, p0, Lcom/android/mms/ui/SmsTemplateEditActivity$EditButtonListener;->this$0:Lcom/android/mms/ui/SmsTemplateEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/ui/SmsTemplateEditActivity;Lcom/android/mms/ui/SmsTemplateEditActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 207
    invoke-direct {p0, p1}, Lcom/android/mms/ui/SmsTemplateEditActivity$EditButtonListener;-><init>(Lcom/android/mms/ui/SmsTemplateEditActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 209
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 210
    iget-object v0, p0, Lcom/android/mms/ui/SmsTemplateEditActivity$EditButtonListener;->this$0:Lcom/android/mms/ui/SmsTemplateEditActivity;

    iget-object v1, p0, Lcom/android/mms/ui/SmsTemplateEditActivity$EditButtonListener;->this$0:Lcom/android/mms/ui/SmsTemplateEditActivity;

    #getter for: Lcom/android/mms/ui/SmsTemplateEditActivity;->mQuickText:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/mms/ui/SmsTemplateEditActivity;->access$300(Lcom/android/mms/ui/SmsTemplateEditActivity;)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/mms/ui/SmsTemplateEditActivity;->showEditDialog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/SmsTemplateEditActivity;->access$900(Lcom/android/mms/ui/SmsTemplateEditActivity;Ljava/lang/String;)V

    .line 211
    return-void
.end method
