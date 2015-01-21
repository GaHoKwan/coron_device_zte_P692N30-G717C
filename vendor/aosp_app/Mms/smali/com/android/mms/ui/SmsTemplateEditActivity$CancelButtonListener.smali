.class Lcom/android/mms/ui/SmsTemplateEditActivity$CancelButtonListener;
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
    name = "CancelButtonListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SmsTemplateEditActivity;


# direct methods
.method private constructor <init>(Lcom/android/mms/ui/SmsTemplateEditActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 248
    iput-object p1, p0, Lcom/android/mms/ui/SmsTemplateEditActivity$CancelButtonListener;->this$0:Lcom/android/mms/ui/SmsTemplateEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/ui/SmsTemplateEditActivity;Lcom/android/mms/ui/SmsTemplateEditActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 248
    invoke-direct {p0, p1}, Lcom/android/mms/ui/SmsTemplateEditActivity$CancelButtonListener;-><init>(Lcom/android/mms/ui/SmsTemplateEditActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 250
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 251
    return-void
.end method
